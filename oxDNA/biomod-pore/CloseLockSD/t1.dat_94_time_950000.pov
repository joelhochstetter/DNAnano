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
	sky <0, 0.179814, -0.983701>
	up <0, 0.179814, -0.983701>
	right 1.6 * <1, 0, 0>
	location <25.469, 94.9851, 44.8844>
	look_at <25.469, 29.3977, 32.8955>
	direction <0, -65.5874, -11.9889>
	angle 67.0682
}


# declare cpy_camera_pos = <25.469, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 28
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16351, -0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16351, 0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<4.263379, 15.197168, 15.397858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.159696, 15.164483, 15.012914>,  <4.097486, 15.144872, 14.781947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.159696, 15.164483, 15.012914>,  <4.263379, 15.197168, 15.397858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.159696, 15.164483, 15.012914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879378, 0.392066, -0.270146,
		0.399383, -0.916301, -0.029768,
		-0.259206, -0.081714, -0.962359,
		4.081933, 15.139969, 14.724206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.797906, 14.766657, 14.990738>,  <4.263379, 15.197168, 15.397858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.797906, 14.766657, 14.990738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.621101, 15.071117, 14.800885>,  <4.515019, 15.253794, 14.686974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.621101, 15.071117, 14.800885>,  <4.797906, 14.766657, 14.990738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.621101, 15.071117, 14.800885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896887, 0.366275, -0.247863,
		-0.014816, -0.535249, -0.844564,
		-0.442011, 0.761151, -0.474631,
		4.488498, 15.299463, 14.658496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.184559, 14.810576, 14.296564>,  <4.797906, 14.766657, 14.990738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.184559, 14.810576, 14.296564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.030858, 15.164566, 14.401765>,  <4.938637, 15.376960, 14.464885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.030858, 15.164566, 14.401765>,  <5.184559, 14.810576, 14.296564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.030858, 15.164566, 14.401765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848830, 0.450687, -0.276350,
		-0.363094, 0.117055, -0.924371,
		-0.384254, 0.884974, 0.263001,
		4.915581, 15.430058, 14.480665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.862009, 14.601893, 14.027479>,  <5.184559, 14.810576, 14.296564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.862009, 14.601893, 14.027479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.165045, 14.358336, 14.121549>,  <6.346867, 14.212202, 14.177991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.165045, 14.358336, 14.121549>,  <5.862009, 14.601893, 14.027479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.165045, 14.358336, 14.121549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254334, 0.607184, 0.752756,
		-0.601142, -0.510468, 0.614859,
		0.757590, -0.608893, 0.235174,
		6.392323, 14.175669, 14.192101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.702566, 14.340376, 14.706958>,  <5.862009, 14.601893, 14.027479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.702566, 14.340376, 14.706958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.093283, 14.356209, 14.622758>,  <6.327713, 14.365708, 14.572238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.093283, 14.356209, 14.622758>,  <5.702566, 14.340376, 14.706958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.093283, 14.356209, 14.622758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152157, 0.563452, 0.812016,
		0.150748, -0.825200, 0.544353,
		0.976792, 0.039582, -0.210499,
		6.386321, 14.368084, 14.559608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.028925, 14.318215, 15.370734>,  <5.702566, 14.340376, 14.706958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.028925, 14.318215, 15.370734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.329280, 14.466458, 15.152079>,  <6.509494, 14.555405, 15.020885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.329280, 14.466458, 15.152079>,  <6.028925, 14.318215, 15.370734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.329280, 14.466458, 15.152079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128699, 0.729723, 0.671522,
		0.647765, -0.574591, 0.500245,
		0.750891, 0.370607, -0.546638,
		6.554547, 14.577641, 14.988087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.494480, 14.512572, 15.821978>,  <6.028925, 14.318215, 15.370734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.494480, 14.512572, 15.821978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.629263, 14.717952, 15.506300>,  <6.710133, 14.841180, 15.316893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.629263, 14.717952, 15.506300>,  <6.494480, 14.512572, 15.821978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.629263, 14.717952, 15.506300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271009, 0.749846, 0.603560,
		0.901673, -0.417253, 0.113517,
		0.336958, 0.513450, -0.789196,
		6.730351, 14.871986, 15.269542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.216194, 14.675449, 15.969210>,  <6.494480, 14.512572, 15.821978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.216194, 14.675449, 15.969210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.019828, 14.922373, 15.723304>,  <6.902009, 15.070527, 15.575761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.019828, 14.922373, 15.723304>,  <7.216194, 14.675449, 15.969210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.019828, 14.922373, 15.723304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209564, 0.768598, 0.604434,
		0.845628, 0.167893, -0.506681,
		-0.490914, 0.617308, -0.614763,
		6.872554, 15.107565, 15.538875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.648746, 15.186864, 15.820453>,  <7.216194, 14.675449, 15.969210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.648746, 15.186864, 15.820453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.287836, 15.352804, 15.773470>,  <7.071290, 15.452368, 15.745280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.287836, 15.352804, 15.773470>,  <7.648746, 15.186864, 15.820453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.287836, 15.352804, 15.773470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264160, 0.747200, 0.609845,
		0.340759, 0.519222, -0.783768,
		-0.902277, 0.414850, -0.117457,
		7.017153, 15.477260, 15.738233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.833342, 15.850024, 15.947379>,  <7.648746, 15.186864, 15.820453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.833342, 15.850024, 15.947379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.433813, 15.868063, 15.940200>,  <7.194096, 15.878886, 15.935892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.433813, 15.868063, 15.940200>,  <7.833342, 15.850024, 15.947379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.433813, 15.868063, 15.940200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028014, 0.837576, 0.545602,
		0.039638, 0.544456, -0.837852,
		-0.998821, 0.045098, -0.017948,
		7.134167, 15.881593, 15.934815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.604969, 16.572994, 15.679299>,  <7.833342, 15.850024, 15.947379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.604969, 16.572994, 15.679299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.329595, 16.393246, 15.907027>,  <7.164371, 16.285397, 16.043665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.329595, 16.393246, 15.907027>,  <7.604969, 16.572994, 15.679299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.329595, 16.393246, 15.907027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051610, 0.752606, 0.656446,
		-0.723461, 0.481302, -0.494927,
		-0.688433, -0.449370, 0.569321,
		7.123065, 16.258434, 16.077824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.248075, 17.086796, 15.947054>,  <7.604969, 16.572994, 15.679299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.248075, 17.086796, 15.947054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.178741, 16.798771, 16.215818>,  <7.137140, 16.625956, 16.377077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.178741, 16.798771, 16.215818>,  <7.248075, 17.086796, 15.947054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.178741, 16.798771, 16.215818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097193, 0.666400, 0.739232,
		-0.980055, 0.193440, -0.045525,
		-0.173335, -0.720063, 0.671910,
		7.126740, 16.582752, 16.417391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.325050, 17.453039, 16.408457>,  <7.248075, 17.086796, 15.947054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.325050, 17.453039, 16.408457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.251976, 17.104490, 16.590593>,  <7.208132, 16.895361, 16.699875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.251976, 17.104490, 16.590593>,  <7.325050, 17.453039, 16.408457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.251976, 17.104490, 16.590593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040890, 0.455999, 0.889040,
		-0.982321, 0.181033, -0.047674,
		-0.182685, -0.871373, 0.455340,
		7.197171, 16.843079, 16.727196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.703033, 17.624802, 16.906219>,  <7.325050, 17.453039, 16.408457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.703033, 17.624802, 16.906219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.974417, 17.343275, 16.990442>,  <7.137247, 17.174358, 17.040976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.974417, 17.343275, 16.990442>,  <6.703033, 17.624802, 16.906219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.974417, 17.343275, 16.990442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263269, 0.500514, 0.824727,
		-0.685844, -0.504111, 0.524872,
		0.678460, -0.703817, 0.210558,
		7.177955, 17.132130, 17.053610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.729806, 17.626244, 17.660828>,  <6.703033, 17.624802, 16.906219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.729806, 17.626244, 17.660828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.067441, 17.447119, 17.542860>,  <7.270023, 17.339643, 17.472080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.067441, 17.447119, 17.542860>,  <6.729806, 17.626244, 17.660828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.067441, 17.447119, 17.542860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505226, 0.479983, 0.717191,
		-0.179611, -0.754374, 0.631395,
		0.844089, -0.447813, -0.294919,
		7.320668, 17.312775, 17.454384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.050848, 17.427578, 18.224478>,  <6.729806, 17.626244, 17.660828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.050848, 17.427578, 18.224478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.346231, 17.439457, 17.955021>,  <7.523462, 17.446585, 17.793346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.346231, 17.439457, 17.955021>,  <7.050848, 17.427578, 18.224478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.346231, 17.439457, 17.955021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640640, 0.280788, 0.714660,
		0.210374, -0.959310, 0.188325,
		0.738460, 0.029697, -0.673643,
		7.567770, 17.448366, 17.752928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.576253, 17.112429, 18.597012>,  <7.050848, 17.427578, 18.224478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.576253, 17.112429, 18.597012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.734793, 17.311245, 18.288244>,  <7.829917, 17.430534, 18.102983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.734793, 17.311245, 18.288244>,  <7.576253, 17.112429, 18.597012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.734793, 17.311245, 18.288244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684167, 0.400764, 0.609347,
		0.612227, -0.769635, -0.181216,
		0.396350, 0.497040, -0.771918,
		7.853698, 17.460358, 18.056669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.236429, 17.011436, 18.664368>,  <7.576253, 17.112429, 18.597012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.236429, 17.011436, 18.664368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.210938, 17.347919, 18.449591>,  <8.195642, 17.549809, 18.320724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.210938, 17.347919, 18.449591>,  <8.236429, 17.011436, 18.664368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.210938, 17.347919, 18.449591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650579, 0.443015, 0.616835,
		0.756760, -0.310013, -0.575505,
		-0.063730, 0.841208, -0.536944,
		8.191818, 17.600281, 18.288507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.840010, 17.326075, 18.813992>,  <8.236429, 17.011436, 18.664368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.840010, 17.326075, 18.813992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.613173, 17.608400, 18.644175>,  <8.477072, 17.777796, 18.542284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.613173, 17.608400, 18.644175>,  <8.840010, 17.326075, 18.813992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.613173, 17.608400, 18.644175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592606, 0.707613, 0.384840,
		0.572037, -0.033347, -0.819550,
		-0.567091, 0.705813, -0.424542,
		8.443046, 17.820145, 18.516811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.276196, 17.858791, 18.454821>,  <8.840010, 17.326075, 18.813992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.276196, 17.858791, 18.454821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.923799, 18.028299, 18.538980>,  <8.712359, 18.130003, 18.589476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.923799, 18.028299, 18.538980>,  <9.276196, 17.858791, 18.454821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.923799, 18.028299, 18.538980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472584, 0.809448, 0.348509,
		-0.022620, 0.406466, -0.913386,
		-0.880995, 0.423768, 0.210399,
		8.659500, 18.155430, 18.602100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.388722, 18.549374, 18.215933>,  <9.276196, 17.858791, 18.454821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.388722, 18.549374, 18.215933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.056105, 18.547167, 18.438105>,  <8.856534, 18.545843, 18.571407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.056105, 18.547167, 18.438105>,  <9.388722, 18.549374, 18.215933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.056105, 18.547167, 18.438105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264708, 0.875166, 0.404988,
		-0.488328, 0.483792, -0.726279,
		-0.831544, -0.005515, 0.555432,
		8.806642, 18.545513, 18.604734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.137242, 19.233023, 18.086315>,  <9.388722, 18.549374, 18.215933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.137242, 19.233023, 18.086315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.992132, 19.108681, 18.437716>,  <8.905066, 19.034075, 18.648556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.992132, 19.108681, 18.437716>,  <9.137242, 19.233023, 18.086315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.992132, 19.108681, 18.437716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354143, 0.826003, 0.438523,
		-0.861961, 0.470200, -0.189567,
		-0.362776, -0.310856, 0.878500,
		8.883299, 19.015425, 18.701265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.035527, 19.859865, 18.398872>,  <9.137242, 19.233023, 18.086315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.035527, 19.859865, 18.398872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.025995, 19.596275, 18.699587>,  <9.020276, 19.438122, 18.880016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.025995, 19.596275, 18.699587>,  <9.035527, 19.859865, 18.398872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.025995, 19.596275, 18.699587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460268, 0.660329, 0.593396,
		-0.887460, 0.360165, 0.287569,
		-0.023830, -0.658974, 0.751788,
		9.018847, 19.398582, 18.925123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.807335, 20.341436, 18.910484>,  <9.035527, 19.859865, 18.398872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.807335, 20.341436, 18.910484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.990550, 20.024265, 19.071215>,  <9.100479, 19.833961, 19.167652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.990550, 20.024265, 19.071215>,  <8.807335, 20.341436, 18.910484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.990550, 20.024265, 19.071215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368288, 0.580684, 0.726064,
		-0.809052, -0.184577, 0.558002,
		0.458037, -0.792930, 0.401826,
		9.127961, 19.786386, 19.191763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.531241, 20.322805, 19.538820>,  <8.807335, 20.341436, 18.910484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.531241, 20.322805, 19.538820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.889855, 20.155926, 19.479263>,  <9.105023, 20.055798, 19.443529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.889855, 20.155926, 19.479263>,  <8.531241, 20.322805, 19.538820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.889855, 20.155926, 19.479263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401105, 0.621922, 0.672554,
		-0.187988, -0.662690, 0.724916,
		0.896535, -0.417200, -0.148895,
		9.158816, 20.030766, 19.434595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.788011, 20.102463, 20.279371>,  <8.531241, 20.322805, 19.538820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.788011, 20.102463, 20.279371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.091334, 20.151169, 20.023203>,  <9.273329, 20.180393, 19.869501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.091334, 20.151169, 20.023203>,  <8.788011, 20.102463, 20.279371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.091334, 20.151169, 20.023203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496632, 0.528470, 0.688532,
		0.422280, -0.840175, 0.340274,
		0.758311, 0.121762, -0.640420,
		9.318828, 20.187698, 19.831076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.283420, 19.851854, 20.618986>,  <8.788011, 20.102463, 20.279371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.283420, 19.851854, 20.618986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.384561, 20.137615, 20.358006>,  <9.445245, 20.309072, 20.201416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.384561, 20.137615, 20.358006>,  <9.283420, 19.851854, 20.618986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.384561, 20.137615, 20.358006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420421, 0.526237, 0.739134,
		0.871385, -0.461197, -0.167290,
		0.252853, 0.714403, -0.652452,
		9.460417, 20.351936, 20.162270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.725206, 19.874666, 21.256140>,  <9.283420, 19.851854, 20.618986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.725206, 19.874666, 21.256140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.122410, 19.847900, 21.217239>,  <10.360732, 19.831841, 21.193899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.122410, 19.847900, 21.217239>,  <9.725206, 19.874666, 21.256140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.122410, 19.847900, 21.217239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114117, 0.333361, 0.935867,
		-0.030205, -0.940421, 0.338666,
		0.993008, -0.066916, -0.097249,
		10.420312, 19.827826, 21.188065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.007776, 19.475025, 21.776354>,  <9.725206, 19.874666, 21.256140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.007776, 19.475025, 21.776354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.283057, 19.753061, 21.693186>,  <10.448226, 19.919882, 21.643286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.283057, 19.753061, 21.693186>,  <10.007776, 19.475025, 21.776354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.283057, 19.753061, 21.693186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053270, 0.237395, 0.969951,
		0.723562, -0.678597, 0.126349,
		0.688201, 0.695089, -0.207919,
		10.489517, 19.961588, 21.630810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.584564, 19.362413, 22.366245>,  <10.007776, 19.475025, 21.776354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.584564, 19.362413, 22.366245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.559260, 19.613306, 22.055742>,  <9.544078, 19.763842, 21.869440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.559260, 19.613306, 22.055742>,  <9.584564, 19.362413, 22.366245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.559260, 19.613306, 22.055742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326287, -0.748070, -0.577866,
		-0.943152, 0.216727, 0.251980,
		-0.063260, 0.627233, -0.776259,
		9.540282, 19.801476, 21.822865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.411921, 18.779682, 21.924038>,  <9.584564, 19.362413, 22.366245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.411921, 18.779682, 21.924038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.469221, 19.116879, 21.716637>,  <9.503601, 19.319197, 21.592196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.469221, 19.116879, 21.716637>,  <9.411921, 18.779682, 21.924038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.469221, 19.116879, 21.716637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036148, -0.519100, -0.853949,
		-0.989026, 0.141072, -0.043889,
		0.143251, 0.842991, -0.518502,
		9.512197, 19.369776, 21.561087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.823277, 18.144470, 22.117058>,  <9.411921, 18.779682, 21.924038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.823277, 18.144470, 22.117058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.883113, 18.356243, 22.451080>,  <9.919014, 18.483307, 22.651495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.883113, 18.356243, 22.451080>,  <9.823277, 18.144470, 22.117058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.883113, 18.356243, 22.451080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843437, -0.372409, 0.387200,
		0.515981, -0.762240, 0.390837,
		0.149588, 0.529435, 0.835058,
		9.927990, 18.515074, 22.701597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.760098, 17.714445, 22.788570>,  <9.823277, 18.144470, 22.117058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.760098, 17.714445, 22.788570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.676053, 18.095856, 22.874956>,  <9.625626, 18.324701, 22.926788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.676053, 18.095856, 22.874956>,  <9.760098, 17.714445, 22.788570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.676053, 18.095856, 22.874956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806780, -0.293874, 0.512585,
		0.552230, -0.066534, 0.831033,
		-0.210114, 0.953526, 0.215964,
		9.613019, 18.381914, 22.939745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.312521, 17.023659, 22.850437>,  <9.760098, 17.714445, 22.788570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.312521, 17.023659, 22.850437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.585588, 16.731382, 22.853476>,  <9.749429, 16.556017, 22.855299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.585588, 16.731382, 22.853476>,  <9.312521, 17.023659, 22.850437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.585588, 16.731382, 22.853476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052644, -0.059545, -0.996837,
		0.728830, 0.680109, -0.079116,
		0.682668, -0.730689, 0.007594,
		9.790389, 16.512177, 22.855753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.720264, 17.128162, 22.280540>,  <9.312521, 17.023659, 22.850437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.720264, 17.128162, 22.280540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.784810, 16.740808, 22.356640>,  <9.823537, 16.508396, 22.402300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.784810, 16.740808, 22.356640>,  <9.720264, 17.128162, 22.280540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.784810, 16.740808, 22.356640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044682, -0.199745, -0.978828,
		0.985883, 0.149446, -0.075501,
		0.161363, -0.968384, 0.190248,
		9.833219, 16.450293, 22.413713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.342436, 16.758734, 21.906216>,  <9.720264, 17.128162, 22.280540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.342436, 16.758734, 21.906216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.040267, 16.510761, 21.991091>,  <9.858966, 16.361979, 22.042017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.040267, 16.510761, 21.991091>,  <10.342436, 16.758734, 21.906216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.040267, 16.510761, 21.991091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008351, -0.332917, -0.942919,
		0.655186, -0.710529, 0.256669,
		-0.755421, -0.619931, 0.212189,
		9.813641, 16.324781, 22.054747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.548382, 16.011730, 21.818636>,  <10.342436, 16.758734, 21.906216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.548382, 16.011730, 21.818636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.149506, 16.036568, 21.801878>,  <9.910180, 16.051470, 21.791824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.149506, 16.036568, 21.801878>,  <10.548382, 16.011730, 21.818636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.149506, 16.036568, 21.801878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026100, -0.236202, -0.971353,
		-0.070209, -0.969718, 0.233918,
		-0.997191, 0.062093, -0.041893,
		9.850348, 16.055195, 21.789310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.288039, 15.296972, 21.574490>,  <10.548382, 16.011730, 21.818636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.288039, 15.296972, 21.574490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.993146, 15.560028, 21.512526>,  <9.816210, 15.717861, 21.475348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.993146, 15.560028, 21.512526>,  <10.288039, 15.296972, 21.574490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.993146, 15.560028, 21.512526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121067, -0.354156, -0.927316,
		-0.664702, -0.664894, 0.340715,
		-0.737234, 0.657639, -0.154911,
		9.771976, 15.757319, 21.466053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.918118, 14.922281, 21.045921>,  <10.288039, 15.296972, 21.574490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.918118, 14.922281, 21.045921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.801923, 15.304638, 21.028528>,  <9.732206, 15.534052, 21.018093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.801923, 15.304638, 21.028528>,  <9.918118, 14.922281, 21.045921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.801923, 15.304638, 21.028528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053928, -0.061723, -0.996636,
		-0.955359, -0.287164, 0.069479,
		-0.290486, 0.955891, -0.043482,
		9.714777, 15.591405, 21.015484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.326685, 14.957279, 20.657030>,  <9.918118, 14.922281, 21.045921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.326685, 14.957279, 20.657030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.476145, 15.327738, 20.636475>,  <9.565821, 15.550013, 20.624142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.476145, 15.327738, 20.636475>,  <9.326685, 14.957279, 20.657030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.476145, 15.327738, 20.636475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085623, -0.020724, -0.996112,
		-0.923610, 0.376597, 0.071556,
		0.373650, 0.926146, -0.051387,
		9.588240, 15.605581, 20.621059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.927842, 15.186943, 20.114567>,  <9.326685, 14.957279, 20.657030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.927842, 15.186943, 20.114567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.197302, 15.481848, 20.135132>,  <9.358977, 15.658791, 20.147470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.197302, 15.481848, 20.135132>,  <8.927842, 15.186943, 20.114567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.197302, 15.481848, 20.135132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039109, 0.105033, -0.993700,
		-0.738017, 0.667393, 0.099589,
		0.673648, 0.737262, 0.051415,
		9.399396, 15.703026, 20.150557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.682347, 15.788120, 19.700613>,  <8.927842, 15.186943, 20.114567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.682347, 15.788120, 19.700613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.081754, 15.807100, 19.711298>,  <9.321398, 15.818488, 19.717709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.081754, 15.807100, 19.711298>,  <8.682347, 15.788120, 19.700613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.081754, 15.807100, 19.711298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016279, 0.208018, -0.977990,
		-0.051964, 0.976973, 0.206937,
		0.998516, 0.047451, 0.026713,
		9.381309, 15.821336, 19.719313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.823578, 16.300613, 19.197168>,  <8.682347, 15.788120, 19.700613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.823578, 16.300613, 19.197168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.153409, 16.080030, 19.247711>,  <9.351308, 15.947680, 19.278036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.153409, 16.080030, 19.247711>,  <8.823578, 16.300613, 19.197168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.153409, 16.080030, 19.247711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229891, 0.122532, -0.965472,
		0.516934, 0.825155, 0.227812,
		0.824578, -0.551458, 0.126355,
		9.400783, 15.914593, 19.285618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.252067, 16.663774, 18.795452>,  <8.823578, 16.300613, 19.197168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.252067, 16.663774, 18.795452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.389668, 16.293673, 18.859413>,  <9.472228, 16.071611, 18.897789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.389668, 16.293673, 18.859413>,  <9.252067, 16.663774, 18.795452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.389668, 16.293673, 18.859413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144902, -0.115945, -0.982629,
		0.927721, 0.361196, 0.094186,
		0.344001, -0.925254, 0.159903,
		9.492867, 16.016096, 18.907385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.861822, 16.652765, 18.410963>,  <9.252067, 16.663774, 18.795452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.861822, 16.652765, 18.410963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.755536, 16.273600, 18.481224>,  <9.691765, 16.046101, 18.523380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.755536, 16.273600, 18.481224>,  <9.861822, 16.652765, 18.410963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.755536, 16.273600, 18.481224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236780, -0.240793, -0.941252,
		0.934522, -0.208512, 0.288429,
		-0.265714, -0.947914, 0.175654,
		9.675821, 15.989225, 18.533920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.460744, 16.124851, 18.199556>,  <9.861822, 16.652765, 18.410963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.460744, 16.124851, 18.199556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.114693, 15.924361, 18.206776>,  <9.907062, 15.804067, 18.211107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.114693, 15.924361, 18.206776>,  <10.460744, 16.124851, 18.199556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.114693, 15.924361, 18.206776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167217, -0.322175, -0.931795,
		0.472855, -0.803104, 0.362536,
		-0.865129, -0.501226, 0.018049,
		9.855154, 15.773993, 18.212191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.654014, 15.693457, 17.785957>,  <10.460744, 16.124851, 18.199556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.654014, 15.693457, 17.785957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.258460, 15.636836, 17.804173>,  <10.021128, 15.602864, 17.815102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.258460, 15.636836, 17.804173>,  <10.654014, 15.693457, 17.785957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.258460, 15.636836, 17.804173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020375, -0.174375, -0.984469,
		0.147294, -0.974452, 0.169552,
		-0.988883, -0.141551, 0.045539,
		9.961795, 15.594371, 17.817835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.472629, 14.940059, 17.509579>,  <10.654014, 15.693457, 17.785957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.472629, 14.940059, 17.509579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.149819, 15.173236, 17.471865>,  <9.956134, 15.313143, 17.449236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.149819, 15.173236, 17.471865>,  <10.472629, 14.940059, 17.509579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.149819, 15.173236, 17.471865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106261, -0.300415, -0.947871,
		-0.580881, -0.754935, 0.304386,
		-0.807023, 0.582944, -0.094285,
		9.907712, 15.348119, 17.443579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.945202, 14.455630, 17.242064>,  <10.472629, 14.940059, 17.509579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.945202, 14.455630, 17.242064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.828909, 14.830686, 17.165842>,  <9.759133, 15.055718, 17.120110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.828909, 14.830686, 17.165842>,  <9.945202, 14.455630, 17.242064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.828909, 14.830686, 17.165842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318636, -0.282669, -0.904748,
		-0.902189, -0.202322, 0.380946,
		-0.290732, 0.937637, -0.190553,
		9.741689, 15.111977, 17.108677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.290049, 14.390422, 16.860708>,  <9.945202, 14.455630, 17.242064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.290049, 14.390422, 16.860708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.396933, 14.769937, 16.793297>,  <9.461062, 14.997645, 16.752850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.396933, 14.769937, 16.793297>,  <9.290049, 14.390422, 16.860708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.396933, 14.769937, 16.793297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392037, -0.052729, -0.918437,
		-0.880287, 0.311485, 0.357870,
		0.267209, 0.948787, -0.168530,
		9.477096, 15.054573, 16.742739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.694980, 14.670883, 16.515278>,  <9.290049, 14.390422, 16.860708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.694980, 14.670883, 16.515278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.008226, 14.907515, 16.438583>,  <9.196175, 15.049494, 16.392567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.008226, 14.907515, 16.438583>,  <8.694980, 14.670883, 16.515278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.008226, 14.907515, 16.438583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259965, 0.031331, -0.965110,
		-0.564931, 0.805639, 0.178325,
		0.783117, 0.591578, -0.191738,
		9.243161, 15.084988, 16.381062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.435782, 15.077854, 16.020927>,  <8.694980, 14.670883, 16.515278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.435782, 15.077854, 16.020927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.830120, 15.138970, 15.993316>,  <9.066723, 15.175640, 15.976749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.830120, 15.138970, 15.993316>,  <8.435782, 15.077854, 16.020927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.830120, 15.138970, 15.993316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087769, 0.119525, -0.988944,
		-0.142850, 0.981004, 0.131243,
		0.985845, 0.152790, -0.069028,
		9.125874, 15.184807, 15.972608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.492444, 15.631951, 15.611460>,  <8.435782, 15.077854, 16.020927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.492444, 15.631951, 15.611460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.824318, 15.408659, 15.611299>,  <9.023442, 15.274684, 15.611202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.824318, 15.408659, 15.611299>,  <8.492444, 15.631951, 15.611460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.824318, 15.408659, 15.611299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076783, 0.114837, -0.990412,
		0.552925, 0.821700, 0.138141,
		0.829686, -0.558231, -0.000403,
		9.073224, 15.241190, 15.611177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.943327, 15.979264, 15.136405>,  <8.492444, 15.631951, 15.611460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.943327, 15.979264, 15.136405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.093124, 15.610061, 15.171753>,  <9.183002, 15.388538, 15.192962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.093124, 15.610061, 15.171753>,  <8.943327, 15.979264, 15.136405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.093124, 15.610061, 15.171753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183133, -0.019800, -0.982889,
		0.908965, 0.384268, 0.161618,
		0.374492, -0.923009, 0.088370,
		9.205472, 15.333158, 15.198264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.565364, 16.041367, 14.676928>,  <8.943327, 15.979264, 15.136405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.565364, 16.041367, 14.676928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.478709, 15.657094, 14.746396>,  <9.426717, 15.426531, 14.788077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.478709, 15.657094, 14.746396>,  <9.565364, 16.041367, 14.676928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.478709, 15.657094, 14.746396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189078, -0.215815, -0.957953,
		0.957767, -0.174690, 0.228397,
		-0.216637, -0.960681, 0.173671,
		9.413718, 15.368890, 14.798497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.066731, 15.650769, 14.305076>,  <9.565364, 16.041367, 14.676928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.066731, 15.650769, 14.305076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.776063, 15.378253, 14.340388>,  <9.601662, 15.214744, 14.361576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.776063, 15.378253, 14.340388>,  <10.066731, 15.650769, 14.305076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.776063, 15.378253, 14.340388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132334, -0.264918, -0.955147,
		0.674120, -0.682395, 0.282667,
		-0.726671, -0.681290, 0.088282,
		9.558062, 15.173866, 14.366873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.345283, 14.960093, 14.175319>,  <10.066731, 15.650769, 14.305076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.345283, 14.960093, 14.175319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.960500, 15.021908, 14.085199>,  <9.729630, 15.058996, 14.031128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.960500, 15.021908, 14.085199>,  <10.345283, 14.960093, 14.175319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.960500, 15.021908, 14.085199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189708, -0.215599, -0.957877,
		-0.196590, -0.964178, 0.178083,
		-0.961958, 0.154525, -0.225297,
		9.671913, 15.068269, 14.017610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.709578, 14.695784, 13.531765>,  <10.345283, 14.960093, 14.175319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.709578, 14.695784, 13.531765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.315610, 14.683605, 13.463639>,  <10.079229, 14.676298, 13.422764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.315610, 14.683605, 13.463639>,  <10.709578, 14.695784, 13.531765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.315610, 14.683605, 13.463639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155322, 0.589265, 0.792870,
		0.076220, 0.807366, -0.585107,
		-0.984919, -0.030447, -0.170315,
		10.020134, 14.674471, 13.412544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.392774, 15.389095, 13.418708>,  <10.709578, 14.695784, 13.531765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.392774, 15.389095, 13.418708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.117447, 15.173738, 13.613173>,  <9.952251, 15.044524, 13.729853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.117447, 15.173738, 13.613173>,  <10.392774, 15.389095, 13.418708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.117447, 15.173738, 13.613173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227344, 0.796531, 0.560226,
		-0.688865, 0.275086, -0.670665,
		-0.688316, -0.538392, 0.486163,
		9.910952, 15.012220, 13.759023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.881655, 15.637045, 13.820093>,  <10.392774, 15.389095, 13.418708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.881655, 15.637045, 13.820093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.946766, 15.531927, 14.200502>,  <10.985832, 15.468857, 14.428748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.946766, 15.531927, 14.200502>,  <10.881655, 15.637045, 13.820093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.946766, 15.531927, 14.200502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697971, 0.711945, 0.077265,
		-0.697381, 0.651209, 0.299311,
		0.162777, -0.262793, 0.951022,
		10.995599, 15.453089, 14.485809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.003025, 16.316999, 14.141131>,  <10.881655, 15.637045, 13.820093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.003025, 16.316999, 14.141131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.124236, 16.045448, 14.408653>,  <11.196963, 15.882518, 14.569166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.124236, 16.045448, 14.408653>,  <11.003025, 16.316999, 14.141131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.124236, 16.045448, 14.408653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794076, 0.567893, 0.216659,
		-0.526894, 0.465427, 0.711168,
		0.303029, -0.678878, 0.668804,
		11.215145, 15.841785, 14.609295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.154864, 16.647476, 14.810723>,  <11.003025, 16.316999, 14.141131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.154864, 16.647476, 14.810723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.376490, 16.314493, 14.808582>,  <11.509465, 16.114704, 14.807298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.376490, 16.314493, 14.808582>,  <11.154864, 16.647476, 14.810723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.376490, 16.314493, 14.808582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823238, 0.546950, 0.152069,
		-0.123663, -0.088662, 0.988355,
		0.554064, -0.832457, -0.005353,
		11.542708, 16.064756, 14.806976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.575664, 16.813662, 15.351413>,  <11.154864, 16.647476, 14.810723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.575664, 16.813662, 15.351413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.719172, 16.518612, 15.122609>,  <11.805277, 16.341581, 14.985327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.719172, 16.518612, 15.122609>,  <11.575664, 16.813662, 15.351413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.719172, 16.518612, 15.122609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843005, 0.519167, -0.140741,
		0.400782, -0.431713, 0.808083,
		0.358770, -0.737624, -0.572009,
		11.826802, 16.297325, 14.951006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.130774, 16.564478, 15.653823>,  <11.575664, 16.813662, 15.351413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.130774, 16.564478, 15.653823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.162660, 16.507261, 15.259222>,  <12.181790, 16.472931, 15.022462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.162660, 16.507261, 15.259222>,  <12.130774, 16.564478, 15.653823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.162660, 16.507261, 15.259222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850762, 0.525499, -0.007453,
		0.519471, -0.838683, 0.163586,
		0.079713, -0.143044, -0.986501,
		12.186574, 16.464348, 14.963272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.292546, 16.066374, 16.222443>,  <12.130774, 16.564478, 15.653823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.292546, 16.066374, 16.222443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.493870, 15.721189, 16.240231>,  <12.614664, 15.514077, 16.250904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.493870, 15.721189, 16.240231>,  <12.292546, 16.066374, 16.222443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.493870, 15.721189, 16.240231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099586, -0.006807, 0.995006,
		-0.858350, -0.505223, -0.089365,
		0.503308, -0.862962, 0.044470,
		12.644862, 15.462300, 16.253572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.908404, 15.589640, 16.604570>,  <12.292546, 16.066374, 16.222443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.908404, 15.589640, 16.604570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.276289, 15.436094, 16.637506>,  <12.497020, 15.343966, 16.657269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.276289, 15.436094, 16.637506>,  <11.908404, 15.589640, 16.604570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.276289, 15.436094, 16.637506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163221, -0.183111, 0.969448,
		-0.357058, -0.905052, -0.231064,
		0.919711, -0.383864, 0.082342,
		12.552202, 15.320935, 16.662209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.859204, 14.827474, 16.850117>,  <11.908404, 15.589640, 16.604570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.859204, 14.827474, 16.850117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.205968, 15.002054, 16.946432>,  <12.414026, 15.106803, 17.004221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.205968, 15.002054, 16.946432>,  <11.859204, 14.827474, 16.850117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.205968, 15.002054, 16.946432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184253, -0.168268, 0.968368,
		0.463163, -0.883852, -0.065456,
		0.866909, 0.436452, 0.240788,
		12.466041, 15.132990, 17.018669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.048170, 14.484805, 17.470669>,  <11.859204, 14.827474, 16.850117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.048170, 14.484805, 17.470669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.302523, 14.793396, 17.479397>,  <12.455134, 14.978551, 17.484634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.302523, 14.793396, 17.479397>,  <12.048170, 14.484805, 17.470669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.302523, 14.793396, 17.479397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046489, -0.066508, 0.996702,
		0.770385, -0.632770, -0.078156,
		0.635882, 0.771478, 0.021820,
		12.493287, 15.024839, 17.485943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.571857, 14.310185, 17.959196>,  <12.048170, 14.484805, 17.470669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.571857, 14.310185, 17.959196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.583270, 14.708479, 17.924091>,  <12.590117, 14.947454, 17.903028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.583270, 14.708479, 17.924091>,  <12.571857, 14.310185, 17.959196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.583270, 14.708479, 17.924091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049082, 0.086294, 0.995060,
		0.998387, -0.032697, -0.046410,
		0.028530, 0.995733, -0.087760,
		12.591829, 15.007199, 17.897764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.080983, 14.437772, 18.482639>,  <12.571857, 14.310185, 17.959196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.080983, 14.437772, 18.482639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.902620, 14.788583, 18.411098>,  <12.795603, 14.999069, 18.368174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.902620, 14.788583, 18.411098>,  <13.080983, 14.437772, 18.482639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.902620, 14.788583, 18.411098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039932, 0.219111, 0.974882,
		0.894188, 0.427565, -0.132725,
		-0.445907, 0.877028, -0.178853,
		12.768848, 15.051691, 18.357443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.527129, 15.006008, 18.769899>,  <13.080983, 14.437772, 18.482639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.527129, 15.006008, 18.769899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.154602, 15.148155, 18.737995>,  <12.931086, 15.233443, 18.718853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.154602, 15.148155, 18.737995>,  <13.527129, 15.006008, 18.769899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.154602, 15.148155, 18.737995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042600, 0.111212, 0.992883,
		0.361708, 0.928087, -0.088435,
		-0.931318, 0.355366, -0.079763,
		12.875207, 15.254766, 18.714066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.485518, 15.488400, 19.269058>,  <13.527129, 15.006008, 18.769899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.485518, 15.488400, 19.269058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.099749, 15.403992, 19.205360>,  <12.868287, 15.353347, 19.167143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.099749, 15.403992, 19.205360>,  <13.485518, 15.488400, 19.269058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.099749, 15.403992, 19.205360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177928, 0.072611, 0.981361,
		-0.195524, 0.974781, -0.107574,
		-0.964423, -0.211020, -0.159243,
		12.810422, 15.340686, 19.157587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.033997, 16.149994, 19.477123>,  <13.485518, 15.488400, 19.269058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.033997, 16.149994, 19.477123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.800738, 15.825382, 19.462387>,  <12.660783, 15.630614, 19.453547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.800738, 15.825382, 19.462387>,  <13.033997, 16.149994, 19.477123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.800738, 15.825382, 19.462387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306485, 0.177783, 0.935126,
		-0.752335, 0.556606, -0.352396,
		-0.583146, -0.811531, -0.036839,
		12.625794, 15.581923, 19.451336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.457233, 16.340685, 19.806639>,  <13.033997, 16.149994, 19.477123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.457233, 16.340685, 19.806639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.435896, 15.942828, 19.842058>,  <12.423094, 15.704114, 19.863310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.435896, 15.942828, 19.842058>,  <12.457233, 16.340685, 19.806639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.435896, 15.942828, 19.842058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403379, 0.102582, 0.909265,
		-0.913477, 0.012784, -0.406690,
		-0.053343, -0.994642, 0.088549,
		12.419893, 15.644436, 19.868624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.006073, 16.171474, 20.404894>,  <12.457233, 16.340685, 19.806639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.006073, 16.171474, 20.404894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.194780, 15.826170, 20.333096>,  <12.308004, 15.618988, 20.290016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.194780, 15.826170, 20.333096>,  <12.006073, 16.171474, 20.404894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.194780, 15.826170, 20.333096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164236, -0.286047, 0.944036,
		-0.866292, -0.415885, -0.276726,
		0.471767, -0.863259, -0.179497,
		12.336310, 15.567192, 20.279247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.554149, 15.581607, 20.667881>,  <12.006073, 16.171474, 20.404894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.554149, 15.581607, 20.667881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.938828, 15.472003, 20.664867>,  <12.169635, 15.406240, 20.663059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.938828, 15.472003, 20.664867>,  <11.554149, 15.581607, 20.667881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.938828, 15.472003, 20.664867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070758, -0.274713, 0.958919,
		-0.264814, -0.921660, -0.283579,
		0.961700, -0.274001, -0.007533,
		12.227337, 15.389800, 20.662607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.511228, 15.136261, 21.104752>,  <11.554149, 15.581607, 20.667881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.511228, 15.136261, 21.104752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.907795, 15.182667, 21.080658>,  <12.145736, 15.210510, 21.066202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.907795, 15.182667, 21.080658>,  <11.511228, 15.136261, 21.104752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.907795, 15.182667, 21.080658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104222, -0.423409, 0.899924,
		0.078901, -0.898480, -0.431867,
		0.991419, 0.116015, -0.060234,
		12.205221, 15.217471, 21.062588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.746352, 14.599883, 21.365309>,  <11.511228, 15.136261, 21.104752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.746352, 14.599883, 21.365309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.037767, 14.869020, 21.416712>,  <12.212616, 15.030503, 21.447554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.037767, 14.869020, 21.416712>,  <11.746352, 14.599883, 21.365309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.037767, 14.869020, 21.416712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061659, -0.251250, 0.965956,
		0.682225, -0.695812, -0.224532,
		0.728537, 0.672844, 0.128506,
		12.256329, 15.070874, 21.455263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.135293, 14.345168, 21.925106>,  <11.746352, 14.599883, 21.365309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.135293, 14.345168, 21.925106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.334296, 14.691896, 21.938412>,  <12.453698, 14.899934, 21.946396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.334296, 14.691896, 21.938412>,  <12.135293, 14.345168, 21.925106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.334296, 14.691896, 21.938412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163420, -0.131317, 0.977778,
		0.851927, -0.481016, -0.206987,
		0.497508, 0.866822, 0.033265,
		12.483549, 14.951942, 21.948391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.685446, 14.191952, 22.278746>,  <12.135293, 14.345168, 21.925106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.685446, 14.191952, 22.278746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.632352, 14.587480, 22.305933>,  <12.600495, 14.824796, 22.322245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.632352, 14.587480, 22.305933>,  <12.685446, 14.191952, 22.278746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.632352, 14.587480, 22.305933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256409, -0.031981, 0.966039,
		0.957411, 0.145655, -0.249297,
		-0.132736, 0.988818, 0.067966,
		12.592531, 14.884125, 22.326323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.272654, 14.555052, 22.592325>,  <12.685446, 14.191952, 22.278746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.272654, 14.555052, 22.592325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.946317, 14.777869, 22.654430>,  <12.750515, 14.911559, 22.691694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.946317, 14.777869, 22.654430>,  <13.272654, 14.555052, 22.592325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.946317, 14.777869, 22.654430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060649, -0.184588, 0.980943,
		0.575087, 0.809710, 0.116810,
		-0.815841, 0.557043, 0.155263,
		12.701565, 14.944983, 22.701010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.358873, 14.628480, 23.241966>,  <13.272654, 14.555052, 22.592325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.358873, 14.628480, 23.241966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.980720, 14.753244, 23.204105>,  <12.753827, 14.828103, 23.181389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.980720, 14.753244, 23.204105>,  <13.358873, 14.628480, 23.241966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.980720, 14.753244, 23.204105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165886, -0.210422, 0.963434,
		0.280588, 0.926517, 0.250671,
		-0.945385, 0.311911, -0.094654,
		12.697104, 14.846818, 23.175709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.128851, 15.014388, 23.848614>,  <13.358873, 14.628480, 23.241966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.128851, 15.014388, 23.848614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.781285, 14.904613, 23.683847>,  <12.572746, 14.838749, 23.584988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.781285, 14.904613, 23.683847>,  <13.128851, 15.014388, 23.848614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.781285, 14.904613, 23.683847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364069, -0.209431, 0.907520,
		-0.335324, 0.938522, 0.082064,
		-0.868914, -0.274437, -0.411914,
		12.520611, 14.822283, 23.560274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.568913, 15.309856, 24.287533>,  <13.128851, 15.014388, 23.848614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.568913, 15.309856, 24.287533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.374289, 15.031034, 24.076868>,  <12.257513, 14.863741, 23.950470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.374289, 15.031034, 24.076868>,  <12.568913, 15.309856, 24.287533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.374289, 15.031034, 24.076868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423918, -0.338735, 0.839972,
		-0.763904, 0.631960, -0.130678,
		-0.486563, -0.697054, -0.526660,
		12.228319, 14.821918, 23.918869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.797290, 15.282049, 24.480402>,  <12.568913, 15.309856, 24.287533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.797290, 15.282049, 24.480402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.915873, 14.924589, 24.345642>,  <11.987022, 14.710113, 24.264786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.915873, 14.924589, 24.345642>,  <11.797290, 15.282049, 24.480402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.915873, 14.924589, 24.345642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375475, -0.433412, 0.819252,
		-0.878142, -0.116374, -0.464031,
		0.296456, -0.893650, -0.336901,
		12.004809, 14.656494, 24.244572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.225704, 14.816025, 24.620487>,  <11.797290, 15.282049, 24.480402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.225704, 14.816025, 24.620487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.547553, 14.580976, 24.586349>,  <11.740663, 14.439946, 24.565866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.547553, 14.580976, 24.586349>,  <11.225704, 14.816025, 24.620487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.547553, 14.580976, 24.586349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364330, -0.602060, 0.710484,
		-0.468878, -0.540578, -0.698519,
		0.804622, -0.587622, -0.085344,
		11.788939, 14.404689, 24.560745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.871716, 14.283451, 24.657415>,  <11.225704, 14.816025, 24.620487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.871716, 14.283451, 24.657415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.256061, 14.181736, 24.701389>,  <11.486667, 14.120707, 24.727774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.256061, 14.181736, 24.701389>,  <10.871716, 14.283451, 24.657415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.256061, 14.181736, 24.701389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269788, -0.768744, 0.579869,
		-0.062943, -0.586832, -0.807259,
		0.960860, -0.254288, 0.109933,
		11.544319, 14.105450, 24.734369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.893806, 13.560199, 24.713068>,  <10.871716, 14.283451, 24.657415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.893806, 13.560199, 24.713068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.227730, 13.667495, 24.905375>,  <11.428084, 13.731873, 25.020760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.227730, 13.667495, 24.905375>,  <10.893806, 13.560199, 24.713068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.227730, 13.667495, 24.905375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192678, -0.675688, 0.711562,
		0.515720, -0.686653, -0.512387,
		0.834810, 0.268241, 0.480769,
		11.478173, 13.747967, 25.049604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.135385, 12.970608, 24.978619>,  <10.893806, 13.560199, 24.713068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.135385, 12.970608, 24.978619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.333152, 13.245632, 25.191339>,  <11.451812, 13.410646, 25.318972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.333152, 13.245632, 25.191339>,  <11.135385, 12.970608, 24.978619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.333152, 13.245632, 25.191339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013505, -0.605660, 0.795609,
		0.869120, -0.400545, -0.290163,
		0.494418, 0.687561, 0.531800,
		11.481477, 13.451900, 25.350880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.670636, 12.551815, 25.297281>,  <11.135385, 12.970608, 24.978619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.670636, 12.551815, 25.297281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.633241, 12.889678, 25.508114>,  <11.610804, 13.092396, 25.634613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.633241, 12.889678, 25.508114>,  <11.670636, 12.551815, 25.297281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.633241, 12.889678, 25.508114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092283, -0.519770, 0.849308,
		0.991334, 0.128041, -0.029355,
		-0.093489, 0.844657, 0.527081,
		11.605194, 13.143075, 25.666239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.228174, 12.537232, 25.733486>,  <11.670636, 12.551815, 25.297281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.228174, 12.537232, 25.733486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.949202, 12.766929, 25.904991>,  <11.781818, 12.904746, 26.007895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.949202, 12.766929, 25.904991>,  <12.228174, 12.537232, 25.733486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.949202, 12.766929, 25.904991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160317, -0.458111, 0.874318,
		0.698490, 0.678515, 0.227441,
		-0.697432, 0.574240, 0.428763,
		11.739972, 12.939200, 26.033621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.599092, 12.959233, 26.142660>,  <12.228174, 12.537232, 25.733486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.599092, 12.959233, 26.142660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.220443, 12.941696, 26.270397>,  <11.993253, 12.931173, 26.347040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.220443, 12.941696, 26.270397>,  <12.599092, 12.959233, 26.142660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.220443, 12.941696, 26.270397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315650, -0.326877, 0.890795,
		0.065331, 0.944049, 0.323269,
		-0.946624, -0.043844, 0.319345,
		11.936456, 12.928543, 26.366201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.644083, 13.367517, 26.723944>,  <12.599092, 12.959233, 26.142660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.644083, 13.367517, 26.723944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.327132, 13.126637, 26.762918>,  <12.136962, 12.982110, 26.786304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.327132, 13.126637, 26.762918>,  <12.644083, 13.367517, 26.723944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.327132, 13.126637, 26.762918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314885, -0.266953, 0.910815,
		-0.522479, 0.752392, 0.401151,
		-0.792378, -0.602198, 0.097439,
		12.089418, 12.945978, 26.792150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.437948, 13.360839, 27.450193>,  <12.644083, 13.367517, 26.723944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.437948, 13.360839, 27.450193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.254055, 13.029977, 27.320911>,  <12.143720, 12.831460, 27.243341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.254055, 13.029977, 27.320911>,  <12.437948, 13.360839, 27.450193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.254055, 13.029977, 27.320911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318722, -0.493379, 0.809316,
		-0.828892, 0.269057, 0.490455,
		-0.459732, -0.827155, -0.323204,
		12.116136, 12.781831, 27.223949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.021996, 13.084315, 28.083231>,  <12.437948, 13.360839, 27.450193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.021996, 13.084315, 28.083231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.092497, 12.778881, 27.834755>,  <12.134797, 12.595621, 27.685669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.092497, 12.778881, 27.834755>,  <12.021996, 13.084315, 28.083231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.092497, 12.778881, 27.834755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263582, -0.571411, 0.777183,
		-0.948399, -0.300712, 0.100555,
		0.176250, -0.763585, -0.621188,
		12.145371, 12.549806, 27.648399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.685429, 12.537810, 28.431068>,  <12.021996, 13.084315, 28.083231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.685429, 12.537810, 28.431068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.935676, 12.368860, 28.168711>,  <12.085824, 12.267490, 28.011295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.935676, 12.368860, 28.168711>,  <11.685429, 12.537810, 28.431068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.935676, 12.368860, 28.168711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408762, -0.538624, 0.736748,
		-0.664466, -0.729029, -0.164322,
		0.625619, -0.422376, -0.655897,
		12.123362, 12.242147, 27.971941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.504035, 11.800879, 28.564695>,  <11.685429, 12.537810, 28.431068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.504035, 11.800879, 28.564695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.871748, 11.806732, 28.407366>,  <12.092376, 11.810244, 28.312967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.871748, 11.806732, 28.407366>,  <11.504035, 11.800879, 28.564695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.871748, 11.806732, 28.407366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293570, -0.691127, 0.660425,
		-0.262173, -0.722586, -0.639637,
		0.919283, 0.014632, -0.393324,
		12.147533, 11.811122, 28.289368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.732280, 11.198695, 28.750185>,  <11.504035, 11.800879, 28.564695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.732280, 11.198695, 28.750185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.073629, 11.341154, 28.597916>,  <12.278439, 11.426630, 28.506554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.073629, 11.341154, 28.597916>,  <11.732280, 11.198695, 28.750185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.073629, 11.341154, 28.597916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521077, -0.604110, 0.602934,
		-0.015235, -0.712888, -0.701113,
		0.853373, 0.356148, -0.380673,
		12.329641, 11.447998, 28.483713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.140668, 10.681167, 28.440325>,  <11.732280, 11.198695, 28.750185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.140668, 10.681167, 28.440325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.401922, 10.965992, 28.543383>,  <12.558675, 11.136888, 28.605217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.401922, 10.965992, 28.543383>,  <12.140668, 10.681167, 28.440325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.401922, 10.965992, 28.543383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609816, -0.696308, 0.378521,
		0.448931, -0.090110, -0.889011,
		0.653135, 0.712064, 0.257644,
		12.597862, 11.179611, 28.620676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.826566, 10.413362, 28.161978>,  <12.140668, 10.681167, 28.440325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.826566, 10.413362, 28.161978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.901361, 10.686152, 28.444805>,  <12.946239, 10.849826, 28.614502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.901361, 10.686152, 28.444805>,  <12.826566, 10.413362, 28.161978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.901361, 10.686152, 28.444805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614047, -0.642965, 0.457758,
		0.766799, 0.348577, -0.538993,
		0.186990, 0.681976, 0.707067,
		12.957458, 10.890744, 28.656925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.468545, 10.550976, 28.145330>,  <12.826566, 10.413362, 28.161978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.468545, 10.550976, 28.145330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.365112, 10.645452, 28.519999>,  <13.303053, 10.702139, 28.744799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.365112, 10.645452, 28.519999>,  <13.468545, 10.550976, 28.145330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.365112, 10.645452, 28.519999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621251, -0.701858, 0.348488,
		0.739718, 0.672019, 0.034753,
		-0.258582, 0.236192, 0.936669,
		13.287538, 10.716311, 28.800999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.110710, 10.540570, 28.506685>,  <13.468545, 10.550976, 28.145330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.110710, 10.540570, 28.506685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.840693, 10.524338, 28.801350>,  <13.678683, 10.514598, 28.978149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.840693, 10.524338, 28.801350>,  <14.110710, 10.540570, 28.506685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.840693, 10.524338, 28.801350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656143, -0.489559, 0.574290,
		0.337334, 0.871026, 0.357100,
		-0.675042, -0.040581, 0.736662,
		13.638181, 10.512163, 29.022348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.478910, 10.712633, 29.116552>,  <14.110710, 10.540570, 28.506685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.478910, 10.712633, 29.116552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.149240, 10.514345, 29.226093>,  <13.951437, 10.395372, 29.291819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.149240, 10.514345, 29.226093>,  <14.478910, 10.712633, 29.116552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.149240, 10.514345, 29.226093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520006, -0.470852, 0.712666,
		-0.224338, 0.729768, 0.645842,
		-0.824177, -0.495719, 0.273854,
		13.901986, 10.365629, 29.308249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.198545, 10.881625, 29.782364>,  <14.478910, 10.712633, 29.116552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.198545, 10.881625, 29.782364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.095070, 10.502072, 29.710030>,  <14.032985, 10.274341, 29.666630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.095070, 10.502072, 29.710030>,  <14.198545, 10.881625, 29.782364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.095070, 10.502072, 29.710030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474038, -0.287820, 0.832135,
		-0.841646, 0.129541, 0.524262,
		-0.258689, -0.948883, -0.180836,
		14.017464, 10.217407, 29.655779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.034671, 10.509401, 30.505459>,  <14.198545, 10.881625, 29.782364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.034671, 10.509401, 30.505459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.124317, 10.236567, 30.227026>,  <14.178105, 10.072867, 30.059965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.124317, 10.236567, 30.227026>,  <14.034671, 10.509401, 30.505459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.124317, 10.236567, 30.227026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626349, -0.446392, 0.639078,
		-0.746632, -0.579219, 0.327179,
		0.224116, -0.682084, -0.696084,
		14.191552, 10.031942, 30.018200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.780040, 9.825862, 30.809061>,  <14.034671, 10.509401, 30.505459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.780040, 9.825862, 30.809061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.091954, 9.820832, 30.558693>,  <14.279103, 9.817815, 30.408472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.091954, 9.820832, 30.558693>,  <13.780040, 9.825862, 30.809061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.091954, 9.820832, 30.558693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566524, -0.411313, 0.714054,
		-0.266427, -0.911408, -0.313612,
		0.779787, -0.012574, -0.625919,
		14.325891, 9.817060, 30.370916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.109214, 9.143092, 30.643167>,  <13.780040, 9.825862, 30.809061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.109214, 9.143092, 30.643167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.326569, 9.475722, 30.689144>,  <14.456982, 9.675301, 30.716730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.326569, 9.475722, 30.689144>,  <14.109214, 9.143092, 30.643167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.326569, 9.475722, 30.689144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438860, -0.398116, 0.805547,
		0.715634, -0.387280, -0.581276,
		0.543388, 0.831576, 0.114944,
		14.489585, 9.725195, 30.723627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.782486, 8.978727, 30.833519>,  <14.109214, 9.143092, 30.643167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.782486, 8.978727, 30.833519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.703702, 9.342058, 30.981112>,  <14.656431, 9.560057, 31.069668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.703702, 9.342058, 30.981112>,  <14.782486, 8.978727, 30.833519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.703702, 9.342058, 30.981112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407291, -0.266533, 0.873541,
		0.891807, 0.322336, -0.317457,
		-0.196961, 0.908328, 0.368981,
		14.644613, 9.614556, 31.091806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.401933, 9.305563, 30.639513>,  <14.782486, 8.978727, 30.833519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.401933, 9.305563, 30.639513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.273625, 8.926711, 30.642376>,  <15.196641, 8.699400, 30.644094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.273625, 8.926711, 30.642376>,  <15.401933, 9.305563, 30.639513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.273625, 8.926711, 30.642376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473151, 0.153689, -0.867472,
		0.820509, -0.281645, -0.497435,
		-0.320769, -0.947130, 0.007158,
		15.177395, 8.642572, 30.644524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.098563, 9.214797, 29.967825>,  <15.401933, 9.305563, 30.639513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.098563, 9.214797, 29.967825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.096588, 8.845990, 30.122671>,  <15.095404, 8.624706, 30.215580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.096588, 8.845990, 30.122671>,  <15.098563, 9.214797, 29.967825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.096588, 8.845990, 30.122671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647024, -0.292221, -0.704249,
		0.762453, -0.253951, -0.595125,
		-0.004937, -0.922017, 0.387117,
		15.095107, 8.569385, 30.238806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.094442, 8.711004, 29.446396>,  <15.098563, 9.214797, 29.967825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.094442, 8.711004, 29.446396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.940308, 8.517591, 29.760775>,  <14.847827, 8.401544, 29.949402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.940308, 8.517591, 29.760775>,  <15.094442, 8.711004, 29.446396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.940308, 8.517591, 29.760775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712011, -0.385993, -0.586558,
		0.586989, -0.785625, -0.195542,
		-0.385336, -0.483531, 0.785947,
		14.824707, 8.372532, 29.996559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.147388, 7.945523, 29.382223>,  <15.094442, 8.711004, 29.446396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.147388, 7.945523, 29.382223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.822971, 8.073957, 29.577822>,  <14.628322, 8.151018, 29.695181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.822971, 8.073957, 29.577822>,  <15.147388, 7.945523, 29.382223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.822971, 8.073957, 29.577822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584238, -0.486972, -0.649249,
		0.029662, -0.812257, 0.582544,
		-0.811040, 0.321086, 0.488996,
		14.579659, 8.170283, 29.724520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.561954, 7.412289, 29.383337>,  <15.147388, 7.945523, 29.382223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.561954, 7.412289, 29.383337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.400160, 7.767859, 29.469316>,  <14.303083, 7.981201, 29.520905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.400160, 7.767859, 29.469316>,  <14.561954, 7.412289, 29.383337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.400160, 7.767859, 29.469316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837092, -0.265198, -0.478484,
		-0.368334, -0.373469, 0.851382,
		-0.404484, 0.888927, 0.214946,
		14.278814, 8.034537, 29.533800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.121138, 7.431015, 28.802296>,  <14.561954, 7.412289, 29.383337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.121138, 7.431015, 28.802296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.725228, 7.431582, 28.859356>,  <13.487683, 7.431922, 28.893591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.725228, 7.431582, 28.859356>,  <14.121138, 7.431015, 28.802296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.725228, 7.431582, 28.859356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142615, -0.033609, -0.989207,
		0.003397, -0.999434, 0.033466,
		-0.989773, 0.001412, 0.142649,
		13.428297, 7.432007, 28.902151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.864585, 6.911728, 28.333788>,  <14.121138, 7.431015, 28.802296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.864585, 6.911728, 28.333788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.592762, 7.187559, 28.433937>,  <13.429668, 7.353057, 28.494026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.592762, 7.187559, 28.433937>,  <13.864585, 6.911728, 28.333788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.592762, 7.187559, 28.433937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284780, 0.066565, -0.956279,
		-0.676094, -0.721147, 0.151143,
		-0.679557, 0.689576, 0.250372,
		13.388895, 7.394432, 28.509048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.208447, 6.786472, 27.989525>,  <13.864585, 6.911728, 28.333788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.208447, 6.786472, 27.989525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.209743, 7.177096, 28.075613>,  <13.210522, 7.411471, 28.127266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.209743, 7.177096, 28.075613>,  <13.208447, 6.786472, 27.989525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.209743, 7.177096, 28.075613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121380, 0.214013, -0.969260,
		-0.992601, -0.022979, 0.119229,
		0.003244, 0.976560, 0.215219,
		13.210716, 7.470065, 28.140179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.629750, 7.084555, 27.640583>,  <13.208447, 6.786472, 27.989525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.629750, 7.084555, 27.640583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.913028, 7.358181, 27.710459>,  <13.082994, 7.522357, 27.752384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.913028, 7.358181, 27.710459>,  <12.629750, 7.084555, 27.640583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.913028, 7.358181, 27.710459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028768, 0.275181, -0.960962,
		-0.705431, 0.675523, 0.214561,
		0.708195, 0.684065, 0.174688,
		13.125486, 7.563400, 27.762865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.392108, 7.626071, 27.331638>,  <12.629750, 7.084555, 27.640583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.392108, 7.626071, 27.331638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.784634, 7.692421, 27.370647>,  <13.020149, 7.732231, 27.394053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.784634, 7.692421, 27.370647>,  <12.392108, 7.626071, 27.331638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.784634, 7.692421, 27.370647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032393, 0.357171, -0.933477,
		-0.189672, 0.919192, 0.345123,
		0.981313, 0.165875, 0.097520,
		13.079027, 7.742184, 27.399904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.463292, 8.278399, 26.971983>,  <12.392108, 7.626071, 27.331638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.463292, 8.278399, 26.971983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.819747, 8.100412, 27.007492>,  <13.033620, 7.993621, 27.028797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.819747, 8.100412, 27.007492>,  <12.463292, 8.278399, 26.971983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.819747, 8.100412, 27.007492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226072, 0.265792, -0.937148,
		0.393403, 0.855197, 0.337451,
		0.891138, -0.444964, 0.088773,
		13.087089, 7.966923, 27.034124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.972339, 8.732016, 26.918381>,  <12.463292, 8.278399, 26.971983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.972339, 8.732016, 26.918381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.159497, 8.390051, 26.828760>,  <13.271792, 8.184873, 26.774988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.159497, 8.390051, 26.828760>,  <12.972339, 8.732016, 26.918381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.159497, 8.390051, 26.828760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253810, 0.372820, -0.892517,
		0.846554, 0.360738, 0.391426,
		0.467897, -0.854911, -0.224053,
		13.299867, 8.133577, 26.761543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.495049, 8.936418, 26.608749>,  <12.972339, 8.732016, 26.918381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.495049, 8.936418, 26.608749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.477062, 8.566701, 26.457138>,  <13.466270, 8.344872, 26.366171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.477062, 8.566701, 26.457138>,  <13.495049, 8.936418, 26.608749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.477062, 8.566701, 26.457138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211552, 0.361999, -0.907856,
		0.976332, -0.121006, 0.179258,
		-0.044965, -0.924291, -0.379031,
		13.463573, 8.289413, 26.343430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.866985, 8.989481, 26.020058>,  <13.495049, 8.936418, 26.608749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.866985, 8.989481, 26.020058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.706222, 8.628397, 25.958628>,  <13.609763, 8.411747, 25.921770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.706222, 8.628397, 25.958628>,  <13.866985, 8.989481, 26.020058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.706222, 8.628397, 25.958628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141824, 0.104324, -0.984379,
		0.904629, -0.417412, 0.086097,
		-0.401910, -0.902709, -0.153574,
		13.585649, 8.357584, 25.912556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.381250, 8.615551, 25.661636>,  <13.866985, 8.989481, 26.020058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.381250, 8.615551, 25.661636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.022786, 8.458359, 25.579212>,  <13.807708, 8.364043, 25.529758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.022786, 8.458359, 25.579212>,  <14.381250, 8.615551, 25.661636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.022786, 8.458359, 25.579212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159602, 0.147836, -0.976049,
		0.414033, -0.907585, -0.069764,
		-0.896161, -0.392982, -0.206061,
		13.753938, 8.340465, 25.517393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.522062, 8.320620, 25.077185>,  <14.381250, 8.615551, 25.661636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.522062, 8.320620, 25.077185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.123700, 8.293094, 25.100637>,  <13.884683, 8.276578, 25.114710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.123700, 8.293094, 25.100637>,  <14.522062, 8.320620, 25.077185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.123700, 8.293094, 25.100637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065374, 0.100187, -0.992819,
		0.062443, -0.992586, -0.104275,
		-0.995905, -0.068812, 0.058634,
		13.824928, 8.272449, 25.118227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.345160, 7.817519, 24.615051>,  <14.522062, 8.320620, 25.077185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.345160, 7.817519, 24.615051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.028023, 8.052246, 24.680834>,  <13.837741, 8.193082, 24.720303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.028023, 8.052246, 24.680834>,  <14.345160, 7.817519, 24.615051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.028023, 8.052246, 24.680834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074284, 0.174784, -0.981801,
		-0.604882, -0.790630, -0.094985,
		-0.792843, 0.586818, 0.164455,
		13.790170, 8.228292, 24.730169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.782454, 7.623528, 24.114918>,  <14.345160, 7.817519, 24.615051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.782454, 7.623528, 24.114918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.705828, 7.997505, 24.234371>,  <13.659852, 8.221891, 24.306044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.705828, 7.997505, 24.234371>,  <13.782454, 7.623528, 24.114918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.705828, 7.997505, 24.234371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138145, 0.326925, -0.934899,
		-0.971709, -0.137839, -0.191785,
		-0.191565, 0.934944, 0.298634,
		13.648358, 8.277988, 24.323961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.324546, 7.926927, 23.596498>,  <13.782454, 7.623528, 24.114918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.324546, 7.926927, 23.596498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.439491, 8.255317, 23.793850>,  <13.508459, 8.452351, 23.912262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.439491, 8.255317, 23.793850>,  <13.324546, 7.926927, 23.596498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.439491, 8.255317, 23.793850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107454, 0.484223, -0.868321,
		-0.951775, 0.302540, 0.050931,
		0.287364, 0.820974, 0.493380,
		13.525701, 8.501609, 23.941864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.948039, 8.536765, 23.299166>,  <13.324546, 7.926927, 23.596498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.948039, 8.536765, 23.299166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.273932, 8.705326, 23.458479>,  <13.469468, 8.806462, 23.554068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.273932, 8.705326, 23.458479>,  <12.948039, 8.536765, 23.299166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.273932, 8.705326, 23.458479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119488, 0.550130, -0.826487,
		-0.567391, 0.720956, 0.397857,
		0.814733, 0.421402, 0.398284,
		13.518353, 8.831746, 23.577965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.932416, 9.217106, 23.074015>,  <12.948039, 8.536765, 23.299166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.932416, 9.217106, 23.074015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.303483, 9.179477, 23.218559>,  <13.526123, 9.156899, 23.305286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.303483, 9.179477, 23.218559>,  <12.932416, 9.217106, 23.074015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.303483, 9.179477, 23.218559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345061, 0.585828, -0.733307,
		-0.142712, 0.804957, 0.575915,
		0.927667, -0.094074, 0.361364,
		13.581783, 9.151255, 23.326969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.202076, 9.837908, 22.926304>,  <12.932416, 9.217106, 23.074015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.202076, 9.837908, 22.926304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.524529, 9.606931, 22.978012>,  <13.718001, 9.468345, 23.009037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.524529, 9.606931, 22.978012>,  <13.202076, 9.837908, 22.926304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.524529, 9.606931, 22.978012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474014, 0.499398, -0.725198,
		0.354203, 0.645882, 0.676297,
		0.806133, -0.577441, 0.129269,
		13.766370, 9.433699, 23.016792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.725664, 10.396845, 22.939291>,  <13.202076, 9.837908, 22.926304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.725664, 10.396845, 22.939291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.867122, 10.036243, 22.839512>,  <13.951996, 9.819882, 22.779644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.867122, 10.036243, 22.839512>,  <13.725664, 10.396845, 22.939291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.867122, 10.036243, 22.839512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338081, 0.371846, -0.864542,
		0.872145, 0.221406, 0.436283,
		0.353644, -0.901505, -0.249450,
		13.973215, 9.765792, 22.764677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.358767, 10.499705, 22.631651>,  <13.725664, 10.396845, 22.939291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.358767, 10.499705, 22.631651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.259249, 10.129822, 22.516401>,  <14.199538, 9.907891, 22.447252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.259249, 10.129822, 22.516401>,  <14.358767, 10.499705, 22.631651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.259249, 10.129822, 22.516401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369346, 0.184419, -0.910809,
		0.895369, -0.333020, 0.295655,
		-0.248793, -0.924709, -0.288123,
		14.184610, 9.852409, 22.429964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.024790, 10.194054, 22.339186>,  <14.358767, 10.499705, 22.631651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.024790, 10.194054, 22.339186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.715306, 9.985661, 22.194990>,  <14.529616, 9.860624, 22.108473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.715306, 9.985661, 22.194990>,  <15.024790, 10.194054, 22.339186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.715306, 9.985661, 22.194990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322743, 0.165513, -0.931902,
		0.545171, -0.837366, 0.040085,
		-0.773709, -0.520983, -0.360487,
		14.483193, 9.829366, 22.086843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.302826, 9.769303, 21.842119>,  <15.024790, 10.194054, 22.339186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.302826, 9.769303, 21.842119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.915950, 9.775092, 21.740664>,  <14.683825, 9.778565, 21.679790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.915950, 9.775092, 21.740664>,  <15.302826, 9.769303, 21.842119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.915950, 9.775092, 21.740664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253437, 0.124495, -0.959307,
		0.017694, -0.992115, -0.124078,
		-0.967190, 0.014472, -0.253641,
		14.625793, 9.779433, 21.664572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.138249, 9.171852, 21.330921>,  <15.302826, 9.769303, 21.842119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.138249, 9.171852, 21.330921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.837955, 9.425574, 21.257109>,  <14.657779, 9.577807, 21.212820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.837955, 9.425574, 21.257109>,  <15.138249, 9.171852, 21.330921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.837955, 9.425574, 21.257109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196512, -0.052260, -0.979108,
		-0.630698, -0.771314, -0.085416,
		-0.750736, 0.634306, -0.184533,
		14.612735, 9.615866, 21.201750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.689606, 8.870295, 20.812887>,  <15.138249, 9.171852, 21.330921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.689606, 8.870295, 20.812887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.645468, 9.267824, 20.808186>,  <14.618985, 9.506342, 20.805365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.645468, 9.267824, 20.808186>,  <14.689606, 8.870295, 20.812887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.645468, 9.267824, 20.808186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242853, 0.015491, -0.969940,
		-0.963767, -0.109883, -0.243063,
		-0.110345, 0.993824, -0.011756,
		14.612364, 9.565971, 20.804659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.295170, 9.045041, 20.291458>,  <14.689606, 8.870295, 20.812887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.295170, 9.045041, 20.291458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.444229, 9.409716, 20.360693>,  <14.533665, 9.628521, 20.402235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.444229, 9.409716, 20.360693>,  <14.295170, 9.045041, 20.291458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.444229, 9.409716, 20.360693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065088, 0.160386, -0.984906,
		-0.925687, 0.378289, 0.000428,
		0.372648, 0.911687, 0.173089,
		14.556024, 9.683222, 20.412621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.917039, 9.531313, 19.831656>,  <14.295170, 9.045041, 20.291458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.917039, 9.531313, 19.831656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.263789, 9.706149, 19.927555>,  <14.471839, 9.811050, 19.985096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.263789, 9.706149, 19.927555>,  <13.917039, 9.531313, 19.831656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.263789, 9.706149, 19.927555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119204, 0.285232, -0.951017,
		-0.484064, 0.852992, 0.195157,
		0.866875, 0.437090, 0.239751,
		14.523851, 9.837276, 19.999481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.757073, 10.207094, 19.654341>,  <13.917039, 9.531313, 19.831656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.757073, 10.207094, 19.654341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.154579, 10.193024, 19.696663>,  <14.393083, 10.184582, 19.722055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.154579, 10.193024, 19.696663>,  <13.757073, 10.207094, 19.654341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.154579, 10.193024, 19.696663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109916, 0.468432, -0.876636,
		-0.018726, 0.882799, 0.469377,
		0.993764, -0.035176, 0.105805,
		14.452708, 10.182470, 19.728405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.929756, 10.897228, 19.543697>,  <13.757073, 10.207094, 19.654341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.929756, 10.897228, 19.543697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.267241, 10.687858, 19.496077>,  <14.469731, 10.562235, 19.467505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.267241, 10.687858, 19.496077>,  <13.929756, 10.897228, 19.543697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.267241, 10.687858, 19.496077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226553, 0.548280, -0.805024,
		0.486645, 0.652237, 0.581174,
		0.843712, -0.523428, -0.119052,
		14.520354, 10.530829, 19.460361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.536987, 11.409389, 19.553169>,  <13.929756, 10.897228, 19.543697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.536987, 11.409389, 19.553169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.648632, 11.070139, 19.373045>,  <14.715619, 10.866589, 19.264971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.648632, 11.070139, 19.373045>,  <14.536987, 11.409389, 19.553169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.648632, 11.070139, 19.373045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300783, 0.522565, -0.797781,
		0.911935, 0.087225, 0.400957,
		0.279113, -0.848126, -0.450310,
		14.732366, 10.815701, 19.237951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.103285, 11.538739, 19.162117>,  <14.536987, 11.409389, 19.553169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.103285, 11.538739, 19.162117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.961156, 11.209966, 18.984051>,  <14.875878, 11.012702, 18.877211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.961156, 11.209966, 18.984051>,  <15.103285, 11.538739, 19.162117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.961156, 11.209966, 18.984051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252697, 0.374046, -0.892319,
		0.899939, -0.429552, 0.074793,
		-0.355322, -0.821933, -0.445165,
		14.854559, 10.963386, 18.850502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.520947, 11.426848, 18.547356>,  <15.103285, 11.538739, 19.162117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.520947, 11.426848, 18.547356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.176346, 11.240410, 18.466791>,  <14.969585, 11.128547, 18.418451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.176346, 11.240410, 18.466791>,  <15.520947, 11.426848, 18.547356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.176346, 11.240410, 18.466791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022362, 0.361461, -0.932119,
		0.507262, -0.807526, -0.300977,
		-0.861502, -0.466098, -0.201413,
		14.917895, 11.100581, 18.406366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.519171, 11.026638, 17.893515>,  <15.520947, 11.426848, 18.547356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.519171, 11.026638, 17.893515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.122707, 11.065127, 17.930056>,  <14.884830, 11.088222, 17.951981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.122707, 11.065127, 17.930056>,  <15.519171, 11.026638, 17.893515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.122707, 11.065127, 17.930056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040777, 0.434285, -0.899852,
		-0.126261, -0.895621, -0.426522,
		-0.991159, 0.096224, 0.091354,
		14.825359, 11.093994, 17.957462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.238943, 10.810255, 17.295639>,  <15.519171, 11.026638, 17.893515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.238943, 10.810255, 17.295639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.973032, 11.065168, 17.451557>,  <14.813485, 11.218116, 17.545109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.973032, 11.065168, 17.451557>,  <15.238943, 10.810255, 17.295639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.973032, 11.065168, 17.451557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175358, 0.374087, -0.910663,
		-0.726168, -0.673743, -0.136932,
		-0.664777, 0.637283, 0.389797,
		14.773599, 11.256353, 17.568497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.814060, 10.892120, 16.728970>,  <15.238943, 10.810255, 17.295639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.814060, 10.892120, 16.728970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.720354, 11.180650, 16.989679>,  <14.664130, 11.353767, 17.146105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.720354, 11.180650, 16.989679>,  <14.814060, 10.892120, 16.728970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.720354, 11.180650, 16.989679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225825, 0.611718, -0.758158,
		-0.945580, -0.324799, 0.019588,
		-0.234267, 0.721323, 0.651777,
		14.650074, 11.397046, 17.185213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.472136, 11.319454, 16.317106>,  <14.814060, 10.892120, 16.728970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.472136, 11.319454, 16.317106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.495571, 11.571941, 16.626463>,  <14.509632, 11.723433, 16.812077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.495571, 11.571941, 16.626463>,  <14.472136, 11.319454, 16.317106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.495571, 11.571941, 16.626463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188384, 0.767792, -0.612378,
		-0.980346, -0.109815, 0.163896,
		0.058589, 0.631218, 0.773389,
		14.513148, 11.761307, 16.858480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.841105, 11.782343, 16.339983>,  <14.472136, 11.319454, 16.317106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.841105, 11.782343, 16.339983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.144840, 11.969073, 16.521301>,  <14.327082, 12.081112, 16.630093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.144840, 11.969073, 16.521301>,  <13.841105, 11.782343, 16.339983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.144840, 11.969073, 16.521301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246292, 0.851002, -0.463829,
		-0.602282, 0.240561, 0.761175,
		0.759340, 0.466826, 0.453295,
		14.372643, 12.109121, 16.657290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.511538, 12.365825, 16.554369>,  <13.841105, 11.782343, 16.339983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.511538, 12.365825, 16.554369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.900792, 12.457299, 16.565022>,  <14.134345, 12.512184, 16.571413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.900792, 12.457299, 16.565022>,  <13.511538, 12.365825, 16.554369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.900792, 12.457299, 16.565022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205344, 0.914424, -0.348802,
		-0.104120, 0.333963, 0.936818,
		0.973135, 0.228687, 0.026633,
		14.192733, 12.525906, 16.573011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.504239, 12.933008, 17.036003>,  <13.511538, 12.365825, 16.554369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.504239, 12.933008, 17.036003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.823701, 12.933155, 16.795286>,  <14.015378, 12.933243, 16.650856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.823701, 12.933155, 16.795286>,  <13.504239, 12.933008, 17.036003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.823701, 12.933155, 16.795286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340860, 0.824400, -0.451862,
		0.495950, 0.566008, 0.658535,
		0.798653, 0.000367, -0.601791,
		14.063297, 12.933266, 16.614748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.696790, 13.601631, 16.912884>,  <13.504239, 12.933008, 17.036003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.696790, 13.601631, 16.912884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.898342, 13.445896, 16.604464>,  <14.019274, 13.352455, 16.419411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.898342, 13.445896, 16.604464>,  <13.696790, 13.601631, 16.912884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.898342, 13.445896, 16.604464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115314, 0.854345, -0.506752,
		0.856042, 0.344255, 0.385591,
		0.503880, -0.389337, -0.771052,
		14.049506, 13.329095, 16.373148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.201979, 14.215616, 16.727320>,  <13.696790, 13.601631, 16.912884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.201979, 14.215616, 16.727320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.156027, 13.964195, 16.419624>,  <14.128456, 13.813343, 16.235008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.156027, 13.964195, 16.419624>,  <14.201979, 14.215616, 16.727320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.156027, 13.964195, 16.419624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043029, 0.770487, -0.636001,
		0.992447, -0.106162, -0.061466,
		-0.114878, -0.628553, -0.769236,
		14.121563, 13.775629, 16.188854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.630913, 14.442400, 16.266415>,  <14.201979, 14.215616, 16.727320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.630913, 14.442400, 16.266415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.379947, 14.209933, 16.059111>,  <14.229367, 14.070453, 15.934728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.379947, 14.209933, 16.059111>,  <14.630913, 14.442400, 16.266415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.379947, 14.209933, 16.059111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044929, 0.691469, -0.721007,
		0.777389, -0.429085, -0.459949,
		-0.627414, -0.581168, -0.518262,
		14.191722, 14.035583, 15.903632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.866680, 14.492667, 15.506342>,  <14.630913, 14.442400, 16.266415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.866680, 14.492667, 15.506342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.486953, 14.367427, 15.495287>,  <14.259116, 14.292283, 15.488654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.486953, 14.367427, 15.495287>,  <14.866680, 14.492667, 15.506342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.486953, 14.367427, 15.495287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168799, 0.582014, -0.795466,
		0.265146, -0.750485, -0.605367,
		-0.949318, -0.313101, -0.027637,
		14.202157, 14.273497, 15.486996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.463499, 14.232766, 15.252958>,  <14.866680, 14.492667, 15.506342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.463499, 14.232766, 15.252958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.830536, 14.098253, 15.168161>,  <16.050758, 14.017546, 15.117284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.830536, 14.098253, 15.168161>,  <15.463499, 14.232766, 15.252958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.830536, 14.098253, 15.168161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032402, -0.594774, 0.803240,
		-0.396201, -0.730177, -0.556656,
		0.917592, -0.336281, -0.211991,
		16.105814, 13.997369, 15.104564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.495090, 13.435752, 15.153815>,  <15.463499, 14.232766, 15.252958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.495090, 13.435752, 15.153815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.829402, 13.614244, 15.281783>,  <16.029989, 13.721338, 15.358563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.829402, 13.614244, 15.281783>,  <15.495090, 13.435752, 15.153815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.829402, 13.614244, 15.281783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015802, -0.601973, 0.798360,
		0.548834, -0.662200, -0.510169,
		0.835782, 0.446229, 0.319919,
		16.080137, 13.748112, 15.377759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.899714, 12.903591, 15.458527>,  <15.495090, 13.435752, 15.153815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.899714, 12.903591, 15.458527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.089703, 13.218583, 15.615641>,  <16.203695, 13.407578, 15.709909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.089703, 13.218583, 15.615641>,  <15.899714, 12.903591, 15.458527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.089703, 13.218583, 15.615641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242012, -0.546024, 0.802052,
		0.846070, -0.285893, -0.449924,
		0.474970, 0.787479, 0.392785,
		16.232193, 13.454826, 15.733476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.499706, 12.665468, 15.794467>,  <15.899714, 12.903591, 15.458527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.499706, 12.665468, 15.794467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.462309, 13.021266, 15.973378>,  <16.439871, 13.234745, 16.080725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.462309, 13.021266, 15.973378>,  <16.499706, 12.665468, 15.794467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.462309, 13.021266, 15.973378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389377, -0.380798, 0.838676,
		0.916321, 0.252569, -0.310748,
		-0.093492, 0.889495, 0.447278,
		16.434261, 13.288115, 16.107561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.180763, 12.776974, 15.979199>,  <16.499706, 12.665468, 15.794467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.180763, 12.776974, 15.979199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.935539, 13.004802, 16.198196>,  <16.788404, 13.141499, 16.329594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.935539, 13.004802, 16.198196>,  <17.180763, 12.776974, 15.979199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.935539, 13.004802, 16.198196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448020, -0.320149, 0.834735,
		0.650720, 0.757029, -0.058909,
		-0.613059, 0.569571, 0.547492,
		16.751621, 13.175673, 16.362444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.630033, 13.095711, 16.585684>,  <17.180763, 12.776974, 15.979199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.630033, 13.095711, 16.585684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.257351, 13.112514, 16.729996>,  <17.033741, 13.122597, 16.816582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.257351, 13.112514, 16.729996>,  <17.630033, 13.095711, 16.585684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.257351, 13.112514, 16.729996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334165, -0.290109, 0.896756,
		0.142336, 0.956071, 0.256258,
		-0.931705, 0.042009, 0.360778,
		16.977839, 13.125117, 16.838230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.788116, 13.293721, 17.234293>,  <17.630033, 13.095711, 16.585684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.788116, 13.293721, 17.234293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.423372, 13.130465, 17.251865>,  <17.204525, 13.032511, 17.262409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.423372, 13.130465, 17.251865>,  <17.788116, 13.293721, 17.234293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.423372, 13.130465, 17.251865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251907, -0.471859, 0.844921,
		-0.324117, 0.781518, 0.533084,
		-0.911861, -0.408141, 0.043933,
		17.149815, 13.008022, 17.265045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.525652, 13.528676, 17.811209>,  <17.788116, 13.293721, 17.234293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.525652, 13.528676, 17.811209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.317495, 13.197404, 17.727962>,  <17.192602, 12.998641, 17.678015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.317495, 13.197404, 17.727962>,  <17.525652, 13.528676, 17.811209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.317495, 13.197404, 17.727962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052535, -0.274303, 0.960207,
		-0.852311, 0.488748, 0.186253,
		-0.520389, -0.828180, -0.208115,
		17.161379, 12.948950, 17.665527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.993135, 13.467766, 18.219534>,  <17.525652, 13.528676, 17.811209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.993135, 13.467766, 18.219534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.034737, 13.080855, 18.126963>,  <17.059698, 12.848709, 18.071421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.034737, 13.080855, 18.126963>,  <16.993135, 13.467766, 18.219534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.034737, 13.080855, 18.126963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091835, -0.222357, 0.970631,
		-0.990328, -0.122202, 0.065704,
		0.104003, -0.967277, -0.231429,
		17.065937, 12.790672, 18.057533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.722477, 13.118435, 18.752718>,  <16.993135, 13.467766, 18.219534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.722477, 13.118435, 18.752718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.908470, 12.816912, 18.567003>,  <17.020067, 12.635998, 18.455574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.908470, 12.816912, 18.567003>,  <16.722477, 13.118435, 18.752718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.908470, 12.816912, 18.567003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176767, -0.434818, 0.882999,
		-0.867493, -0.492651, -0.068935,
		0.464984, -0.753809, -0.464286,
		17.047966, 12.590769, 18.427717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.542274, 12.518484, 19.141329>,  <16.722477, 13.118435, 18.752718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.542274, 12.518484, 19.141329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.873140, 12.405920, 18.946760>,  <17.071659, 12.338382, 18.830019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.873140, 12.405920, 18.946760>,  <16.542274, 12.518484, 19.141329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.873140, 12.405920, 18.946760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288112, -0.530802, 0.797020,
		-0.482482, -0.799411, -0.357984,
		0.827166, -0.281408, -0.486422,
		17.121290, 12.321497, 18.800833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.537327, 11.893785, 19.319733>,  <16.542274, 12.518484, 19.141329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.537327, 11.893785, 19.319733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.911501, 11.979116, 19.206985>,  <17.136005, 12.030315, 19.139338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.911501, 11.979116, 19.206985>,  <16.537327, 11.893785, 19.319733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.911501, 11.979116, 19.206985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349198, -0.433708, 0.830637,
		0.054953, -0.875435, -0.480201,
		0.935436, 0.213331, -0.281866,
		17.192131, 12.043116, 19.122425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.834873, 11.267163, 19.546675>,  <16.537327, 11.893785, 19.319733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.834873, 11.267163, 19.546675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.120518, 11.542568, 19.496086>,  <17.291904, 11.707811, 19.465733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.120518, 11.542568, 19.496086>,  <16.834873, 11.267163, 19.546675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.120518, 11.542568, 19.496086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364758, -0.211771, 0.906700,
		0.597492, -0.693616, -0.402369,
		0.714112, 0.688513, -0.126471,
		17.334751, 11.749122, 19.458145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.553026, 10.945369, 19.490984>,  <16.834873, 11.267163, 19.546675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.553026, 10.945369, 19.490984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.553541, 11.306471, 19.663046>,  <17.553850, 11.523132, 19.766283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.553541, 11.306471, 19.663046>,  <17.553026, 10.945369, 19.490984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.553541, 11.306471, 19.663046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349824, -0.403381, 0.845522,
		0.936815, 0.149389, -0.316325,
		0.001288, 0.902755, 0.430154,
		17.553928, 11.577297, 19.792091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.003571, 10.798964, 20.081324>,  <17.553026, 10.945369, 19.490984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.003571, 10.798964, 20.081324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.819498, 11.148011, 20.146767>,  <17.709055, 11.357440, 20.186033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.819498, 11.148011, 20.146767>,  <18.003571, 10.798964, 20.081324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.819498, 11.148011, 20.146767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003248, -0.185933, 0.982557,
		0.887819, 0.451623, 0.088398,
		-0.460181, 0.872620, 0.163608,
		17.681444, 11.409798, 20.195848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.449877, 11.167682, 20.607515>,  <18.003571, 10.798964, 20.081324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.449877, 11.167682, 20.607515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.081131, 11.322192, 20.619879>,  <17.859884, 11.414899, 20.627296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.081131, 11.322192, 20.619879>,  <18.449877, 11.167682, 20.607515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.081131, 11.322192, 20.619879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115028, -0.348939, 0.930059,
		0.370045, 0.853834, 0.366108,
		-0.921865, 0.386276, 0.030908,
		17.804571, 11.438075, 20.629150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.397987, 11.354963, 21.264057>,  <18.449877, 11.167682, 20.607515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.397987, 11.354963, 21.264057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.014688, 11.359360, 21.149763>,  <17.784710, 11.361998, 21.081186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.014688, 11.359360, 21.149763>,  <18.397987, 11.354963, 21.264057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.014688, 11.359360, 21.149763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273556, -0.326209, 0.904851,
		-0.083263, 0.945234, 0.315595,
		-0.958245, 0.010992, -0.285736,
		17.727215, 11.362658, 21.064043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.142944, 11.608877, 21.803480>,  <18.397987, 11.354963, 21.264057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.142944, 11.608877, 21.803480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.829342, 11.430957, 21.630280>,  <17.641180, 11.324204, 21.526360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.829342, 11.430957, 21.630280>,  <18.142944, 11.608877, 21.803480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.829342, 11.430957, 21.630280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302972, -0.334629, 0.892318,
		-0.541798, 0.830768, 0.127589,
		-0.784004, -0.444801, -0.433001,
		17.594141, 11.297517, 21.500380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.567955, 11.840830, 22.195314>,  <18.142944, 11.608877, 21.803480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.567955, 11.840830, 22.195314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.463911, 11.506053, 22.002703>,  <17.401485, 11.305187, 21.887136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.463911, 11.506053, 22.002703>,  <17.567955, 11.840830, 22.195314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.463911, 11.506053, 22.002703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422904, -0.349574, 0.836032,
		-0.868041, 0.421100, -0.263019,
		-0.260108, -0.836942, -0.481530,
		17.385880, 11.254971, 21.858244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.872295, 11.734048, 22.358988>,  <17.567955, 11.840830, 22.195314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.872295, 11.734048, 22.358988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.988131, 11.374166, 22.228346>,  <17.057632, 11.158237, 22.149961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.988131, 11.374166, 22.228346>,  <16.872295, 11.734048, 22.358988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.988131, 11.374166, 22.228346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597607, -0.436500, 0.672557,
		-0.747665, 0.000415, -0.664076,
		0.289590, -0.899704, -0.326604,
		17.075008, 11.104256, 22.130365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.218277, 11.229707, 22.415133>,  <16.872295, 11.734048, 22.358988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.218277, 11.229707, 22.415133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.529327, 10.979920, 22.385906>,  <16.715958, 10.830049, 22.368370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.529327, 10.979920, 22.385906>,  <16.218277, 11.229707, 22.415133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.529327, 10.979920, 22.385906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374381, -0.553270, 0.744131,
		-0.505110, -0.551302, -0.664026,
		0.777627, -0.624466, -0.073065,
		16.762615, 10.792581, 22.363987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.936126, 10.667736, 22.242191>,  <16.218277, 11.229707, 22.415133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.936126, 10.667736, 22.242191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.290478, 10.582709, 22.407131>,  <16.503088, 10.531693, 22.506096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.290478, 10.582709, 22.407131>,  <15.936126, 10.667736, 22.242191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.290478, 10.582709, 22.407131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447935, -0.623212, 0.641062,
		0.120715, -0.752611, -0.647306,
		0.885879, -0.212566, 0.412352,
		16.556242, 10.518939, 22.530836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.959528, 9.889603, 22.387653>,  <15.936126, 10.667736, 22.242191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.959528, 9.889603, 22.387653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.223232, 10.070388, 22.628021>,  <16.381454, 10.178859, 22.772242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.223232, 10.070388, 22.628021>,  <15.959528, 9.889603, 22.387653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.223232, 10.070388, 22.628021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226146, -0.643002, 0.731715,
		0.717102, -0.618286, -0.321696,
		0.659259, 0.451964, 0.600920,
		16.421011, 10.205976, 22.808298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.283905, 9.305761, 22.755785>,  <15.959528, 9.889603, 22.387653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.283905, 9.305761, 22.755785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.373812, 9.640983, 22.954639>,  <16.427755, 9.842115, 23.073952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.373812, 9.640983, 22.954639>,  <16.283905, 9.305761, 22.755785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.373812, 9.640983, 22.954639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057594, -0.497873, 0.865336,
		0.972709, -0.223131, -0.063639,
		0.224767, 0.838054, 0.497136,
		16.441242, 9.892399, 23.103781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.694012, 9.049176, 23.248945>,  <16.283905, 9.305761, 22.755785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.694012, 9.049176, 23.248945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.555565, 9.404650, 23.369242>,  <16.472496, 9.617933, 23.441420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.555565, 9.404650, 23.369242>,  <16.694012, 9.049176, 23.248945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.555565, 9.404650, 23.369242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001953, -0.321235, 0.946998,
		0.938189, 0.327187, 0.112921,
		-0.346119, 0.888683, 0.300740,
		16.451729, 9.671254, 23.459463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.051506, 9.221561, 23.856907>,  <16.694012, 9.049176, 23.248945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.051506, 9.221561, 23.856907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.736969, 9.468300, 23.870552>,  <16.548246, 9.616343, 23.878738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.736969, 9.468300, 23.870552>,  <17.051506, 9.221561, 23.856907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.736969, 9.468300, 23.870552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150672, -0.245037, 0.957734,
		0.599133, 0.747970, 0.285625,
		-0.786345, 0.616846, 0.034112,
		16.501066, 9.653354, 23.880785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.162846, 9.588923, 24.441107>,  <17.051506, 9.221561, 23.856907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.162846, 9.588923, 24.441107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.765369, 9.615889, 24.405251>,  <16.526884, 9.632068, 24.383738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.765369, 9.615889, 24.405251>,  <17.162846, 9.588923, 24.441107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.765369, 9.615889, 24.405251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109107, -0.395863, 0.911805,
		0.025983, 0.915832, 0.400720,
		-0.993690, 0.067413, -0.089638,
		16.467262, 9.636112, 24.378359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.933662, 9.890396, 25.011587>,  <17.162846, 9.588923, 24.441107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.933662, 9.890396, 25.011587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.619703, 9.681412, 24.878338>,  <16.431328, 9.556021, 24.798388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.619703, 9.681412, 24.878338>,  <16.933662, 9.890396, 25.011587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.619703, 9.681412, 24.878338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251908, -0.222125, 0.941914,
		-0.566109, 0.823221, 0.042733,
		-0.784896, -0.522462, -0.333124,
		16.384233, 9.524673, 24.778400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.410583, 10.211530, 25.346087>,  <16.933662, 9.890396, 25.011587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.410583, 10.211530, 25.346087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.316469, 9.840621, 25.229601>,  <16.260000, 9.618075, 25.159710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.316469, 9.840621, 25.229601>,  <16.410583, 10.211530, 25.346087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.316469, 9.840621, 25.229601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298313, -0.216265, 0.929645,
		-0.925013, 0.305606, -0.225733,
		-0.235286, -0.927273, -0.291214,
		16.245884, 9.562439, 25.142237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.901011, 9.970813, 25.892534>,  <16.410583, 10.211530, 25.346087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.901011, 9.970813, 25.892534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.024208, 9.633003, 25.717300>,  <16.098127, 9.430318, 25.612160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.024208, 9.633003, 25.717300>,  <15.901011, 9.970813, 25.892534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.024208, 9.633003, 25.717300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070235, -0.479397, 0.874783,
		-0.948792, -0.238658, -0.206966,
		0.307993, -0.844523, -0.438086,
		16.116606, 9.379646, 25.585875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.452621, 9.485087, 26.152025>,  <15.901011, 9.970813, 25.892534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.452621, 9.485087, 26.152025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.764313, 9.276758, 26.012573>,  <15.951328, 9.151760, 25.928902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.764313, 9.276758, 26.012573>,  <15.452621, 9.485087, 26.152025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.764313, 9.276758, 26.012573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033141, -0.521239, 0.852767,
		-0.625861, -0.676056, -0.388904,
		0.779230, -0.520825, -0.348628,
		15.998082, 9.120511, 25.907986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.282554, 8.808321, 26.354321>,  <15.452621, 9.485087, 26.152025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.282554, 8.808321, 26.354321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.677465, 8.801356, 26.291105>,  <15.914412, 8.797177, 26.253176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.677465, 8.801356, 26.291105>,  <15.282554, 8.808321, 26.354321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.677465, 8.801356, 26.291105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119616, -0.573503, 0.810424,
		-0.104747, -0.819018, -0.564125,
		0.987279, -0.017411, -0.158040,
		15.973649, 8.796133, 26.243692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.558106, 8.132732, 26.551767>,  <15.282554, 8.808321, 26.354321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.558106, 8.132732, 26.551767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.886044, 8.360829, 26.572489>,  <16.082806, 8.497687, 26.584923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.886044, 8.360829, 26.572489>,  <15.558106, 8.132732, 26.551767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.886044, 8.360829, 26.572489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261813, -0.453793, 0.851778,
		0.509228, -0.684760, -0.521336,
		0.819842, 0.570241, 0.051805,
		16.131996, 8.531901, 26.588030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.113201, 7.714886, 26.529079>,  <15.558106, 8.132732, 26.551767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.113201, 7.714886, 26.529079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.242332, 8.049521, 26.706121>,  <16.319811, 8.250303, 26.812347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.242332, 8.049521, 26.706121>,  <16.113201, 7.714886, 26.529079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.242332, 8.049521, 26.706121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269633, -0.529560, 0.804279,
		0.907238, -0.140302, -0.396529,
		0.322828, 0.836590, 0.442607,
		16.339180, 8.300498, 26.838903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.758728, 7.489973, 26.874956>,  <16.113201, 7.714886, 26.529079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.758728, 7.489973, 26.874956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.641634, 7.836710, 27.036396>,  <16.571377, 8.044752, 27.133259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.641634, 7.836710, 27.036396>,  <16.758728, 7.489973, 26.874956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.641634, 7.836710, 27.036396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305989, -0.314969, 0.898424,
		0.905912, 0.386497, -0.173041,
		-0.292735, 0.866842, 0.403598,
		16.553814, 8.096763, 27.157476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.295086, 7.724258, 27.437862>,  <16.758728, 7.489973, 26.874956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.295086, 7.724258, 27.437862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.954039, 7.921834, 27.506054>,  <16.749411, 8.040380, 27.546968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.954039, 7.921834, 27.506054>,  <17.295086, 7.724258, 27.437862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.954039, 7.921834, 27.506054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131393, -0.113110, 0.984856,
		0.505743, 0.862108, 0.031540,
		-0.852620, 0.493940, 0.170479,
		16.698254, 8.070017, 27.557198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.476585, 8.211679, 27.950985>,  <17.295086, 7.724258, 27.437862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.476585, 8.211679, 27.950985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.078863, 8.177518, 27.976471>,  <16.840229, 8.157022, 27.991762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.078863, 8.177518, 27.976471>,  <17.476585, 8.211679, 27.950985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.078863, 8.177518, 27.976471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063892, 0.000641, 0.997957,
		-0.085268, 0.996347, 0.004819,
		-0.994307, -0.085402, 0.063714,
		16.780571, 8.151897, 27.995584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.206648, 8.715542, 28.488800>,  <17.476585, 8.211679, 27.950985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.206648, 8.715542, 28.488800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.959373, 8.401789, 28.468458>,  <16.811008, 8.213536, 28.456253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.959373, 8.401789, 28.468458>,  <17.206648, 8.715542, 28.488800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.959373, 8.401789, 28.468458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029125, -0.087510, 0.995738,
		-0.785491, 0.614072, 0.076943,
		-0.618188, -0.784384, -0.050853,
		16.773916, 8.166473, 28.453201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.066107, 9.381672, 28.769299>,  <17.206648, 8.715542, 28.488800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.066107, 9.381672, 28.769299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.868179, 9.621911, 29.020515>,  <16.749422, 9.766054, 29.171246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.868179, 9.621911, 29.020515>,  <17.066107, 9.381672, 28.769299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.868179, 9.621911, 29.020515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094017, 0.681478, -0.725774,
		-0.863894, -0.418175, -0.280743,
		-0.494821, 0.600598, 0.628041,
		16.719732, 9.802091, 29.208927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.424919, 9.495553, 28.412712>,  <17.066107, 9.381672, 28.769299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.424919, 9.495553, 28.412712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.561680, 9.790802, 28.645359>,  <16.643736, 9.967952, 28.784946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.561680, 9.790802, 28.645359>,  <16.424919, 9.495553, 28.412712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.561680, 9.790802, 28.645359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074100, 0.638163, -0.766327,
		-0.936810, 0.218911, 0.272884,
		0.341902, 0.738123, 0.581616,
		16.664251, 10.012239, 28.819843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.880242, 10.000502, 28.505743>,  <16.424919, 9.495553, 28.412712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.880242, 10.000502, 28.505743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.244173, 10.163400, 28.537657>,  <16.462532, 10.261139, 28.556805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.244173, 10.163400, 28.537657>,  <15.880242, 10.000502, 28.505743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.244173, 10.163400, 28.537657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263646, 0.715713, -0.646719,
		-0.320478, 0.567367, 0.758544,
		0.909827, 0.407246, 0.079786,
		16.517120, 10.285573, 28.561592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.759829, 10.636501, 28.541161>,  <15.880242, 10.000502, 28.505743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.759829, 10.636501, 28.541161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.150780, 10.646295, 28.457127>,  <16.385349, 10.652170, 28.406706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.150780, 10.646295, 28.457127>,  <15.759829, 10.636501, 28.541161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.150780, 10.646295, 28.457127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132930, 0.843690, -0.520112,
		0.164511, 0.536271, 0.827858,
		0.977377, 0.024483, -0.210083,
		16.443993, 10.653640, 28.394102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.016701, 11.355976, 28.666077>,  <15.759829, 10.636501, 28.541161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.016701, 11.355976, 28.666077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.292316, 11.200142, 28.421635>,  <16.457685, 11.106642, 28.274969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.292316, 11.200142, 28.421635>,  <16.016701, 11.355976, 28.666077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.292316, 11.200142, 28.421635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100387, 0.783786, -0.612863,
		0.717737, 0.483634, 0.500951,
		0.689040, -0.389586, -0.611103,
		16.499029, 11.083266, 28.238304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.324286, 11.918018, 28.346062>,  <16.016701, 11.355976, 28.666077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.324286, 11.918018, 28.346062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.469324, 11.630170, 28.109192>,  <16.556347, 11.457460, 27.967070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.469324, 11.630170, 28.109192>,  <16.324286, 11.918018, 28.346062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.469324, 11.630170, 28.109192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050512, 0.649657, -0.758547,
		0.930577, 0.245133, 0.271912,
		0.362595, -0.719622, -0.592174,
		16.578102, 11.414284, 27.931540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.986473, 12.104002, 28.000511>,  <16.324286, 11.918018, 28.346062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.986473, 12.104002, 28.000511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.822632, 11.833337, 27.755774>,  <16.724327, 11.670938, 27.608931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.822632, 11.833337, 27.755774>,  <16.986473, 12.104002, 28.000511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.822632, 11.833337, 27.755774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091259, 0.636931, -0.765500,
		0.907689, -0.369386, -0.199136,
		-0.409601, -0.676663, -0.611844,
		16.699751, 11.630338, 27.572220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.349594, 12.190390, 27.400192>,  <16.986473, 12.104002, 28.000511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.349594, 12.190390, 27.400192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.019905, 11.984244, 27.306335>,  <16.822092, 11.860557, 27.250021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.019905, 11.984244, 27.306335>,  <17.349594, 12.190390, 27.400192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.019905, 11.984244, 27.306335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107058, 0.548710, -0.829130,
		0.556091, -0.658244, -0.507422,
		-0.824197, -0.515395, -0.234663,
		16.772638, 11.829636, 27.235943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.466175, 12.170881, 26.711121>,  <17.349594, 12.190390, 27.400192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.466175, 12.170881, 26.711121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.080866, 12.096604, 26.788708>,  <16.849680, 12.052038, 26.835260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.080866, 12.096604, 26.788708>,  <17.466175, 12.170881, 26.711121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.080866, 12.096604, 26.788708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241752, 0.285323, -0.927441,
		0.116875, -0.940271, -0.319735,
		-0.963273, -0.185691, 0.193966,
		16.791883, 12.040896, 26.846897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.307573, 11.595267, 26.233278>,  <17.466175, 12.170881, 26.711121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.307573, 11.595267, 26.233278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.967047, 11.790601, 26.309999>,  <16.762730, 11.907801, 26.356031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.967047, 11.790601, 26.309999>,  <17.307573, 11.595267, 26.233278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.967047, 11.790601, 26.309999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093282, 0.218871, -0.971285,
		-0.516290, -0.844764, -0.140776,
		-0.851318, 0.488333, 0.191803,
		16.711651, 11.937100, 26.367540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.824892, 11.472841, 25.746874>,  <17.307573, 11.595267, 26.233278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.824892, 11.472841, 25.746874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.674894, 11.814096, 25.891947>,  <16.584896, 12.018849, 25.978991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.674894, 11.814096, 25.891947>,  <16.824892, 11.472841, 25.746874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.674894, 11.814096, 25.891947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195687, 0.309566, -0.930524,
		-0.906139, -0.419911, 0.050863,
		-0.374993, 0.853137, 0.362680,
		16.562397, 12.070038, 26.000751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.279749, 11.583466, 25.283785>,  <16.824892, 11.472841, 25.746874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.279749, 11.583466, 25.283785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.338840, 11.933217, 25.468670>,  <16.374296, 12.143067, 25.579601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.338840, 11.933217, 25.468670>,  <16.279749, 11.583466, 25.283785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.338840, 11.933217, 25.468670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338207, 0.483827, -0.807172,
		-0.929404, -0.037080, 0.367196,
		0.147730, 0.874378, 0.462212,
		16.383160, 12.195530, 25.607334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.680399, 12.035916, 25.216564>,  <16.279749, 11.583466, 25.283785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.680399, 12.035916, 25.216564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.987521, 12.283077, 25.284294>,  <16.171795, 12.431374, 25.324932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.987521, 12.283077, 25.284294>,  <15.680399, 12.035916, 25.216564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.987521, 12.283077, 25.284294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256536, 0.538683, -0.802502,
		-0.587080, 0.572728, 0.572118,
		0.767806, 0.617902, 0.169325,
		16.217863, 12.468448, 25.335093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.364684, 12.545938, 24.965878>,  <15.680399, 12.035916, 25.216564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.364684, 12.545938, 24.965878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.750214, 12.652211, 24.957327>,  <15.981531, 12.715975, 24.952196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.750214, 12.652211, 24.957327>,  <15.364684, 12.545938, 24.965878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.750214, 12.652211, 24.957327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205314, 0.688884, -0.695187,
		-0.169973, 0.674427, 0.718511,
		0.963823, 0.265683, -0.021378,
		16.039360, 12.731916, 24.950914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.314115, 13.136421, 24.680019>,  <15.364684, 12.545938, 24.965878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.314115, 13.136421, 24.680019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.710174, 13.085614, 24.656443>,  <15.947809, 13.055130, 24.642296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.710174, 13.085614, 24.656443>,  <15.314115, 13.136421, 24.680019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.710174, 13.085614, 24.656443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022478, 0.559661, -0.828417,
		0.138211, 0.818930, 0.557002,
		0.990148, -0.127017, -0.058944,
		16.007217, 13.047509, 24.638760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.556797, 13.783725, 24.647770>,  <15.314115, 13.136421, 24.680019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.556797, 13.783725, 24.647770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.854760, 13.576087, 24.480125>,  <16.033539, 13.451505, 24.379539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.854760, 13.576087, 24.480125>,  <15.556797, 13.783725, 24.647770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.854760, 13.576087, 24.480125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020844, 0.645995, -0.763057,
		0.666842, 0.559671, 0.492027,
		0.744908, -0.519094, -0.419111,
		16.078232, 13.420359, 24.354393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.091476, 14.268239, 24.293993>,  <15.556797, 13.783725, 24.647770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.091476, 14.268239, 24.293993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.145779, 13.903651, 24.138664>,  <16.178360, 13.684898, 24.045467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.145779, 13.903651, 24.138664>,  <16.091476, 14.268239, 24.293993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.145779, 13.903651, 24.138664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208835, 0.409470, -0.888100,
		0.968483, 0.039467, 0.245933,
		0.135753, -0.911469, -0.388323,
		16.186504, 13.630211, 24.022167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.606354, 14.356599, 23.939846>,  <16.091476, 14.268239, 24.293993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.606354, 14.356599, 23.939846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.470396, 14.029081, 23.754784>,  <16.388821, 13.832571, 23.643745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.470396, 14.029081, 23.754784>,  <16.606354, 14.356599, 23.939846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.470396, 14.029081, 23.754784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294152, 0.374705, -0.879244,
		0.893278, -0.434942, 0.113490,
		-0.339895, -0.818793, -0.462655,
		16.368427, 13.783443, 23.615988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.156261, 14.061622, 23.565523>,  <16.606354, 14.356599, 23.939846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.156261, 14.061622, 23.565523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.827469, 13.914123, 23.391914>,  <16.630194, 13.825624, 23.287748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.827469, 13.914123, 23.391914>,  <17.156261, 14.061622, 23.565523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.827469, 13.914123, 23.391914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410288, 0.145130, -0.900334,
		0.394986, -0.918130, 0.031999,
		-0.821979, -0.368748, -0.434022,
		16.580875, 13.803498, 23.261707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.374046, 13.579649, 23.155933>,  <17.156261, 14.061622, 23.565523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.374046, 13.579649, 23.155933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.008848, 13.643256, 23.005651>,  <16.789730, 13.681420, 22.915482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.008848, 13.643256, 23.005651>,  <17.374046, 13.579649, 23.155933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.008848, 13.643256, 23.005651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386311, 0.040882, -0.921462,
		-0.131172, -0.986429, -0.098757,
		-0.912994, 0.159020, -0.375705,
		16.734949, 13.690962, 22.892941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.268120, 13.012051, 22.592295>,  <17.374046, 13.579649, 23.155933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.268120, 13.012051, 22.592295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.001270, 13.299809, 22.514921>,  <16.841160, 13.472463, 22.468496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.001270, 13.299809, 22.514921>,  <17.268120, 13.012051, 22.592295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.001270, 13.299809, 22.514921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260650, -0.017837, -0.965269,
		-0.697859, -0.694373, -0.175610,
		-0.667124, 0.719394, -0.193436,
		16.801132, 13.515627, 22.456890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.068426, 12.891695, 22.009703>,  <17.268120, 13.012051, 22.592295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.068426, 12.891695, 22.009703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.912243, 13.259934, 22.007132>,  <16.818533, 13.480878, 22.005589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.912243, 13.259934, 22.007132>,  <17.068426, 12.891695, 22.009703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.912243, 13.259934, 22.007132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338974, 0.137273, -0.930727,
		-0.855943, -0.365589, -0.365658,
		-0.390459, 0.920598, -0.006428,
		16.795105, 13.536114, 22.005203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.672121, 12.971697, 21.311504>,  <17.068426, 12.891695, 22.009703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.672121, 12.971697, 21.311504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.771032, 13.331689, 21.455109>,  <16.830379, 13.547684, 21.541271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.771032, 13.331689, 21.455109>,  <16.672121, 12.971697, 21.311504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.771032, 13.331689, 21.455109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198313, 0.315667, -0.927915,
		-0.948433, 0.300650, -0.100420,
		0.247278, 0.899980, 0.359012,
		16.845215, 13.601683, 21.562813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.508183, 13.428237, 20.696381>,  <16.672121, 12.971697, 21.311504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.508183, 13.428237, 20.696381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.744263, 13.629160, 20.949158>,  <16.885912, 13.749714, 21.100824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.744263, 13.629160, 20.949158>,  <16.508183, 13.428237, 20.696381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.744263, 13.629160, 20.949158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461454, 0.432386, -0.774663,
		-0.662361, 0.748820, 0.023404,
		0.590202, 0.502307, 0.631941,
		16.921324, 13.779852, 21.138741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.606390, 13.988579, 20.391008>,  <16.508183, 13.428237, 20.696381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.606390, 13.988579, 20.391008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.908781, 13.973777, 20.652430>,  <17.090216, 13.964896, 20.809282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.908781, 13.973777, 20.652430>,  <16.606390, 13.988579, 20.391008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.908781, 13.973777, 20.652430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632714, 0.297306, -0.715040,
		-0.167845, 0.954065, 0.248170,
		0.755977, -0.037004, 0.653551,
		17.135574, 13.962675, 20.848495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.913128, 14.669001, 20.398689>,  <16.606390, 13.988579, 20.391008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.913128, 14.669001, 20.398689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.200497, 14.437154, 20.552528>,  <17.372917, 14.298045, 20.644833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.200497, 14.437154, 20.552528>,  <16.913128, 14.669001, 20.398689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.200497, 14.437154, 20.552528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671029, 0.431795, -0.602722,
		0.183281, 0.691084, 0.699150,
		0.718421, -0.579618, 0.384597,
		17.416023, 14.263268, 20.667908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.451677, 15.046082, 20.446501>,  <16.913128, 14.669001, 20.398689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.451677, 15.046082, 20.446501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.598394, 14.673993, 20.441643>,  <17.686424, 14.450740, 20.438728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.598394, 14.673993, 20.441643>,  <17.451677, 15.046082, 20.446501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.598394, 14.673993, 20.441643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784114, 0.316155, -0.534051,
		0.500627, 0.186362, 0.845365,
		0.366793, -0.930223, -0.012147,
		17.708433, 14.394926, 20.437998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.146032, 15.140715, 20.454706>,  <17.451677, 15.046082, 20.446501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.146032, 15.140715, 20.454706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.106781, 14.779807, 20.286762>,  <18.083229, 14.563263, 20.185995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.106781, 14.779807, 20.286762>,  <18.146032, 15.140715, 20.454706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.106781, 14.779807, 20.286762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750606, 0.209910, -0.626521,
		0.653422, -0.376631, 0.656650,
		-0.098130, -0.902268, -0.419861,
		18.077341, 14.509127, 20.160805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.816822, 14.849003, 20.478182>,  <18.146032, 15.140715, 20.454706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.816822, 14.849003, 20.478182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.612375, 14.672280, 20.183275>,  <18.489708, 14.566247, 20.006330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.612375, 14.672280, 20.183275>,  <18.816822, 14.849003, 20.478182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.612375, 14.672280, 20.183275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743046, 0.204022, -0.637383,
		0.432020, -0.873602, 0.224004,
		-0.511117, -0.441808, -0.737269,
		18.459040, 14.539738, 19.962095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.371531, 14.446352, 20.135292>,  <18.816822, 14.849003, 20.478182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.371531, 14.446352, 20.135292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.067698, 14.488014, 19.878485>,  <18.885399, 14.513011, 19.724400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.067698, 14.488014, 19.878485>,  <19.371531, 14.446352, 20.135292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.067698, 14.488014, 19.878485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649553, 0.172232, -0.740552,
		0.033444, -0.979534, -0.198478,
		-0.759581, 0.104155, -0.642019,
		18.839823, 14.519260, 19.685879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.639088, 14.118447, 19.525745>,  <19.371531, 14.446352, 20.135292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.639088, 14.118447, 19.525745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.327995, 14.330578, 19.390755>,  <19.141340, 14.457856, 19.309759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.327995, 14.330578, 19.390755>,  <19.639088, 14.118447, 19.525745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.327995, 14.330578, 19.390755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603226, 0.478662, -0.637966,
		-0.176791, -0.699741, -0.692176,
		-0.777729, 0.530325, -0.337479,
		19.094677, 14.489676, 19.289511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.656158, 14.070257, 18.794197>,  <19.639088, 14.118447, 19.525745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.656158, 14.070257, 18.794197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.430712, 14.391851, 18.870033>,  <19.295443, 14.584807, 18.915535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.430712, 14.391851, 18.870033>,  <19.656158, 14.070257, 18.794197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.430712, 14.391851, 18.870033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536370, 0.530752, -0.656209,
		-0.628206, -0.268161, -0.730374,
		-0.563617, 0.803985, 0.189588,
		19.261627, 14.633047, 18.926910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.396471, 14.207465, 18.124615>,  <19.656158, 14.070257, 18.794197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.396471, 14.207465, 18.124615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.384645, 14.519452, 18.374664>,  <19.377550, 14.706644, 18.524694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.384645, 14.519452, 18.374664>,  <19.396471, 14.207465, 18.124615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.384645, 14.519452, 18.374664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315020, 0.600796, -0.734715,
		-0.948624, 0.175206, -0.263467,
		-0.029564, 0.779966, 0.625123,
		19.375776, 14.753442, 18.562201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.184908, 14.798744, 17.638887>,  <19.396471, 14.207465, 18.124615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.184908, 14.798744, 17.638887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.317142, 14.990885, 17.963842>,  <19.396482, 15.106169, 18.158815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.317142, 14.990885, 17.963842>,  <19.184908, 14.798744, 17.638887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.317142, 14.990885, 17.963842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244093, 0.787981, -0.565248,
		-0.911664, 0.385161, 0.143244,
		0.330585, 0.480351, 0.812389,
		19.416319, 15.134990, 18.207560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.993988, 15.463827, 17.561453>,  <19.184908, 14.798744, 17.638887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.993988, 15.463827, 17.561453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.301405, 15.489043, 17.816126>,  <19.485855, 15.504172, 17.968929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.301405, 15.489043, 17.816126>,  <18.993988, 15.463827, 17.561453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.301405, 15.489043, 17.816126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330180, 0.813299, -0.479089,
		-0.548015, 0.578421, 0.604242,
		0.768545, 0.063040, 0.636683,
		19.531969, 15.507956, 18.007132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.983498, 16.139492, 17.851730>,  <18.993988, 15.463827, 17.561453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.983498, 16.139492, 17.851730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.362099, 16.012913, 17.877010>,  <19.589258, 15.936965, 17.892179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.362099, 16.012913, 17.877010>,  <18.983498, 16.139492, 17.851730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.362099, 16.012913, 17.877010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301078, 0.795503, -0.525859,
		0.116130, 0.516755, 0.848221,
		0.946502, -0.316449, 0.063202,
		19.646049, 15.917978, 17.895971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.347591, 16.784109, 18.071865>,  <18.983498, 16.139492, 17.851730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.347591, 16.784109, 18.071865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.599304, 16.524681, 17.900585>,  <19.750332, 16.369024, 17.797817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.599304, 16.524681, 17.900585>,  <19.347591, 16.784109, 18.071865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.599304, 16.524681, 17.900585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462531, 0.755312, -0.464294,
		0.624553, 0.094117, 0.775290,
		0.629284, -0.648572, -0.428201,
		19.788090, 16.330109, 17.772125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.979225, 17.145931, 17.988176>,  <19.347591, 16.784109, 18.071865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.979225, 17.145931, 17.988176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.047800, 16.837236, 17.743217>,  <20.088945, 16.652020, 17.596243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.047800, 16.837236, 17.743217>,  <19.979225, 17.145931, 17.988176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.047800, 16.837236, 17.743217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542884, 0.592711, -0.594955,
		0.822123, -0.230464, 0.520576,
		0.171435, -0.771738, -0.612397,
		20.099230, 16.605715, 17.559498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.661480, 17.290390, 17.767998>,  <19.979225, 17.145931, 17.988176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.661480, 17.290390, 17.767998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.513819, 17.029974, 17.502705>,  <20.425222, 16.873726, 17.343529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.513819, 17.029974, 17.502705>,  <20.661480, 17.290390, 17.767998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.513819, 17.029974, 17.502705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331008, 0.574736, -0.748407,
		0.868424, -0.495811, 0.003334,
		-0.369153, -0.651038, -0.663232,
		20.403072, 16.834663, 17.303736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.240456, 17.111559, 17.306936>,  <20.661480, 17.290390, 17.767998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.240456, 17.111559, 17.306936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.889137, 17.066568, 17.121058>,  <20.678347, 17.039574, 17.009531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.889137, 17.066568, 17.121058>,  <21.240456, 17.111559, 17.306936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.889137, 17.066568, 17.121058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380091, 0.425349, -0.821346,
		0.290039, -0.898013, -0.330832,
		-0.878299, -0.112476, -0.464695,
		20.625648, 17.032825, 16.981649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.446638, 17.470032, 16.755215>,  <21.240456, 17.111559, 17.306936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.446638, 17.470032, 16.755215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.097792, 17.323664, 16.625278>,  <20.888485, 17.235844, 16.547318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.097792, 17.323664, 16.625278>,  <21.446638, 17.470032, 16.755215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.097792, 17.323664, 16.625278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142314, 0.445489, -0.883904,
		0.468157, -0.817091, -0.336440,
		-0.872110, -0.365925, -0.324842,
		20.836157, 17.213888, 16.527826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.515539, 17.113832, 16.194221>,  <21.446638, 17.470032, 16.755215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.515539, 17.113832, 16.194221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.135235, 17.236164, 16.174131>,  <20.907053, 17.309563, 16.162077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.135235, 17.236164, 16.174131>,  <21.515539, 17.113832, 16.194221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.135235, 17.236164, 16.174131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174941, 0.395810, -0.901515,
		-0.255831, -0.865912, -0.429823,
		-0.950761, 0.305829, -0.050223,
		20.850006, 17.327913, 16.159065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.251644, 16.785130, 15.614317>,  <21.515539, 17.113832, 16.194221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.251644, 16.785130, 15.614317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.041258, 17.117376, 15.687460>,  <20.915026, 17.316725, 15.731346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.041258, 17.117376, 15.687460>,  <21.251644, 16.785130, 15.614317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.041258, 17.117376, 15.687460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100325, 0.274089, -0.956457,
		-0.844569, -0.484717, -0.227493,
		-0.525965, 0.830617, 0.182858,
		20.883469, 17.366562, 15.742317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.582628, 17.440802, 15.489830>,  <21.251644, 16.785130, 15.614317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.582628, 17.440802, 15.489830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.436476, 17.783136, 15.343383>,  <21.348785, 17.988537, 15.255515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.436476, 17.783136, 15.343383>,  <21.582628, 17.440802, 15.489830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.436476, 17.783136, 15.343383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877800, 0.185892, -0.441489,
		-0.309784, -0.482688, -0.819174,
		-0.365379, 0.855837, -0.366117,
		21.326862, 18.039886, 15.233548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.521532, 17.523375, 14.764638>,  <21.582628, 17.440802, 15.489830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.521532, 17.523375, 14.764638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.596876, 17.877554, 14.934579>,  <21.642082, 18.090061, 15.036544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.596876, 17.877554, 14.934579>,  <21.521532, 17.523375, 14.764638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.596876, 17.877554, 14.934579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829986, 0.087740, -0.550841,
		-0.525018, 0.456380, -0.718383,
		0.188362, 0.885449, 0.424854,
		21.653385, 18.143188, 15.062035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.559650, 18.017881, 14.308897>,  <21.521532, 17.523375, 14.764638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.559650, 18.017881, 14.308897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.800440, 18.082684, 14.621661>,  <21.944914, 18.121565, 14.809319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.800440, 18.082684, 14.621661>,  <21.559650, 18.017881, 14.308897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.800440, 18.082684, 14.621661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789703, 0.024299, -0.613008,
		-0.118311, 0.986490, -0.113311,
		0.601973, 0.162007, 0.781910,
		21.981031, 18.131287, 14.856234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.770386, 18.631189, 14.297027>,  <21.559650, 18.017881, 14.308897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.770386, 18.631189, 14.297027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.070784, 18.430872, 14.469171>,  <22.251022, 18.310680, 14.572456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.070784, 18.430872, 14.469171>,  <21.770386, 18.631189, 14.297027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.070784, 18.430872, 14.469171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646514, 0.425162, -0.633449,
		0.134256, 0.753950, 0.643066,
		0.750996, -0.500795, 0.430359,
		22.296082, 18.280634, 14.598278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.241980, 18.985800, 14.722657>,  <21.770386, 18.631189, 14.297027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.241980, 18.985800, 14.722657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.410011, 18.678375, 14.529638>,  <22.510830, 18.493921, 14.413827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.410011, 18.678375, 14.529638>,  <22.241980, 18.985800, 14.722657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.410011, 18.678375, 14.529638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665891, 0.622312, -0.411481,
		0.616542, -0.148470, 0.773196,
		0.420077, -0.768560, -0.482546,
		22.536034, 18.447807, 14.384874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.871857, 19.005354, 14.918883>,  <22.241980, 18.985800, 14.722657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.871857, 19.005354, 14.918883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.855825, 18.838421, 14.555736>,  <22.846207, 18.738262, 14.337847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.855825, 18.838421, 14.555736>,  <22.871857, 19.005354, 14.918883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.855825, 18.838421, 14.555736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565220, 0.739789, -0.365019,
		0.823966, -0.527775, 0.206235,
		-0.040078, -0.417332, -0.907870,
		22.843801, 18.713221, 14.283375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.473984, 19.027063, 14.665652>,  <22.871857, 19.005354, 14.918883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.473984, 19.027063, 14.665652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.297016, 18.931286, 14.319951>,  <23.190836, 18.873819, 14.112531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.297016, 18.931286, 14.319951>,  <23.473984, 19.027063, 14.665652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.297016, 18.931286, 14.319951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644019, 0.585826, -0.491984,
		0.624104, -0.774258, -0.104973,
		-0.442418, -0.239444, -0.864253,
		23.164291, 18.859453, 14.060676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.035635, 19.172674, 14.308372>,  <23.473984, 19.027063, 14.665652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.035635, 19.172674, 14.308372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.742733, 19.131872, 14.039033>,  <23.566992, 19.107391, 13.877429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.742733, 19.131872, 14.039033>,  <24.035635, 19.172674, 14.308372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.742733, 19.131872, 14.039033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497075, 0.595805, -0.630819,
		0.465532, -0.796625, -0.385576,
		-0.732254, -0.102006, -0.673349,
		23.523056, 19.101271, 13.837029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.369366, 18.997957, 13.729077>,  <24.035635, 19.172674, 14.308372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.369366, 18.997957, 13.729077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.025911, 19.182699, 13.640144>,  <23.819838, 19.293545, 13.586784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.025911, 19.182699, 13.640144>,  <24.369366, 18.997957, 13.729077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.025911, 19.182699, 13.640144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486533, 0.597829, -0.637092,
		-0.161327, -0.655203, -0.738026,
		-0.858638, 0.461854, -0.222332,
		23.768320, 19.321255, 13.573444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.296425, 18.947870, 13.015687>,  <24.369366, 18.997957, 13.729077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.296425, 18.947870, 13.015687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.077415, 19.251421, 13.156724>,  <23.946009, 19.433552, 13.241346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.077415, 19.251421, 13.156724>,  <24.296425, 18.947870, 13.015687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.077415, 19.251421, 13.156724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599627, 0.649717, -0.467242,
		-0.583664, -0.044403, -0.810780,
		-0.547525, 0.758878, 0.352591,
		23.913158, 19.479084, 13.262502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.146385, 19.378742, 12.479856>,  <24.296425, 18.947870, 13.015687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.146385, 19.378742, 12.479856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.086355, 19.608963, 12.801408>,  <24.050337, 19.747095, 12.994339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.086355, 19.608963, 12.801408>,  <24.146385, 19.378742, 12.479856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.086355, 19.608963, 12.801408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494928, 0.747608, -0.442865,
		-0.855876, 0.331399, -0.397053,
		-0.150075, 0.575550, 0.803878,
		24.041332, 19.781628, 13.042571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.007786, 20.129616, 12.199697>,  <24.146385, 19.378742, 12.479856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.007786, 20.129616, 12.199697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.071774, 20.201439, 12.587958>,  <24.110167, 20.244532, 12.820915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.071774, 20.201439, 12.587958>,  <24.007786, 20.129616, 12.199697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.071774, 20.201439, 12.587958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380442, 0.896139, -0.228471,
		-0.910865, 0.405826, 0.075042,
		0.159967, 0.179557, 0.970655,
		24.119764, 20.255306, 12.879154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.863159, 20.846964, 12.270537>,  <24.007786, 20.129616, 12.199697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.863159, 20.846964, 12.270537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.109957, 20.776167, 12.577260>,  <24.258036, 20.733688, 12.761293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.109957, 20.776167, 12.577260>,  <23.863159, 20.846964, 12.270537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.109957, 20.776167, 12.577260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461354, 0.870731, -0.170236,
		-0.637552, 0.458803, 0.618892,
		0.616993, -0.176994, 0.766807,
		24.295055, 20.723068, 12.807302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.950836, 21.514908, 12.650029>,  <23.863159, 20.846964, 12.270537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.950836, 21.514908, 12.650029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.251245, 21.271658, 12.752905>,  <24.431492, 21.125708, 12.814631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.251245, 21.271658, 12.752905>,  <23.950836, 21.514908, 12.650029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.251245, 21.271658, 12.752905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659241, 0.668824, -0.343622,
		0.036952, 0.427617, 0.903205,
		0.751023, -0.608127, 0.257188,
		24.476553, 21.089220, 12.830062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.438591, 21.898058, 13.013761>,  <23.950836, 21.514908, 12.650029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.438591, 21.898058, 13.013761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.671400, 21.590940, 12.906621>,  <24.811085, 21.406670, 12.842338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.671400, 21.590940, 12.906621>,  <24.438591, 21.898058, 13.013761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.671400, 21.590940, 12.906621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735354, 0.637566, -0.229703,
		0.347136, -0.063271, 0.935678,
		0.582023, -0.767793, -0.267848,
		24.846006, 21.360603, 12.826266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.103773, 22.203878, 13.128734>,  <24.438591, 21.898058, 13.013761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.103773, 22.203878, 13.128734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.169310, 21.880491, 12.902623>,  <25.208632, 21.686459, 12.766957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.169310, 21.880491, 12.902623>,  <25.103773, 22.203878, 13.128734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.169310, 21.880491, 12.902623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772722, 0.461387, -0.435916,
		0.613235, -0.365380, 0.700314,
		0.163841, -0.808467, -0.565276,
		25.218462, 21.637951, 12.733041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.786839, 22.186478, 13.207186>,  <25.103773, 22.203878, 13.128734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.786839, 22.186478, 13.207186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.695650, 21.957479, 12.892155>,  <25.640938, 21.820082, 12.703135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.695650, 21.957479, 12.892155>,  <25.786839, 22.186478, 13.207186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.695650, 21.957479, 12.892155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680168, 0.485155, -0.549541,
		0.696707, -0.660964, 0.278792,
		-0.227970, -0.572495, -0.787578,
		25.627258, 21.785730, 12.655881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.343630, 22.008650, 12.908777>,  <25.786839, 22.186478, 13.207186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.343630, 22.008650, 12.908777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.114544, 21.955290, 12.585246>,  <25.977093, 21.923273, 12.391128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.114544, 21.955290, 12.585246>,  <26.343630, 22.008650, 12.908777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.114544, 21.955290, 12.585246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744182, 0.329181, -0.581234,
		0.343790, -0.934795, -0.089249,
		-0.572715, -0.133405, -0.808827,
		25.942730, 21.915270, 12.342598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.686214, 21.558041, 12.382381>,  <26.343630, 22.008650, 12.908777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.686214, 21.558041, 12.382381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.419424, 21.768438, 12.171300>,  <26.259350, 21.894676, 12.044651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.419424, 21.768438, 12.171300>,  <26.686214, 21.558041, 12.382381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.419424, 21.768438, 12.171300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667953, 0.108316, -0.736278,
		-0.330120, -0.843562, -0.423584,
		-0.666978, 0.525995, -0.527703,
		26.219332, 21.926237, 12.012989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.873363, 21.321779, 11.665023>,  <26.686214, 21.558041, 12.382381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.873363, 21.321779, 11.665023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.690971, 21.676468, 11.634529>,  <26.581537, 21.889280, 11.616233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.690971, 21.676468, 11.634529>,  <26.873363, 21.321779, 11.665023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.690971, 21.676468, 11.634529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581480, 0.231975, -0.779787,
		-0.673769, -0.399895, -0.621385,
		-0.455979, 0.886720, -0.076234,
		26.554178, 21.942484, 11.611659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.655987, 21.485228, 10.885687>,  <26.873363, 21.321779, 11.665023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.655987, 21.485228, 10.885687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.652098, 21.845057, 11.060350>,  <26.649765, 22.060955, 11.165149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.652098, 21.845057, 11.060350>,  <26.655987, 21.485228, 10.885687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.652098, 21.845057, 11.060350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273088, 0.422469, -0.864259,
		-0.961940, 0.110843, -0.249770,
		-0.009723, 0.899575, 0.436659,
		26.649181, 22.114929, 11.191348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.284760, 21.908424, 10.502045>,  <26.655987, 21.485228, 10.885687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.284760, 21.908424, 10.502045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.472610, 22.188826, 10.716723>,  <26.585321, 22.357067, 10.845531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.472610, 22.188826, 10.716723>,  <26.284760, 21.908424, 10.502045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.472610, 22.188826, 10.716723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308601, 0.439217, -0.843714,
		-0.827174, 0.561856, -0.010062,
		0.469627, 0.701004, 0.536698,
		26.613499, 22.399126, 10.877733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.101181, 22.600084, 10.164083>,  <26.284760, 21.908424, 10.502045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.101181, 22.600084, 10.164083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.446249, 22.594744, 10.366319>,  <26.653290, 22.591539, 10.487660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.446249, 22.594744, 10.366319>,  <26.101181, 22.600084, 10.164083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.446249, 22.594744, 10.366319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460285, 0.435019, -0.773884,
		-0.209610, 0.900322, 0.381423,
		0.862671, -0.013350, 0.505589,
		26.705050, 22.590738, 10.517996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.368607, 23.197823, 9.899735>,  <26.101181, 22.600084, 10.164083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.368607, 23.197823, 9.899735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.671612, 23.013363, 10.084568>,  <26.853415, 22.902687, 10.195468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.671612, 23.013363, 10.084568>,  <26.368607, 23.197823, 9.899735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.671612, 23.013363, 10.084568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642199, 0.399218, -0.654374,
		0.117292, 0.792444, 0.598561,
		0.757511, -0.461149, 0.462082,
		26.898865, 22.875019, 10.223192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.841171, 23.725454, 9.945567>,  <26.368607, 23.197823, 9.899735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.841171, 23.725454, 9.945567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.030626, 23.373558, 9.962181>,  <27.144299, 23.162420, 9.972150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.030626, 23.373558, 9.962181>,  <26.841171, 23.725454, 9.945567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.030626, 23.373558, 9.962181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706420, 0.351313, -0.614450,
		0.525965, 0.320368, 0.787861,
		0.473636, -0.879741, 0.041536,
		27.172718, 23.109636, 9.974642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.474817, 23.831781, 9.761465>,  <26.841171, 23.725454, 9.945567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.474817, 23.831781, 9.761465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.496778, 23.436508, 9.704215>,  <27.509954, 23.199345, 9.669865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.496778, 23.436508, 9.704215>,  <27.474817, 23.831781, 9.761465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.496778, 23.436508, 9.704215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718826, 0.138604, -0.681233,
		0.693019, -0.065481, 0.717939,
		0.054902, -0.988181, -0.143125,
		27.513248, 23.140055, 9.661278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.156118, 23.632835, 9.909258>,  <27.474817, 23.831781, 9.761465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.156118, 23.632835, 9.909258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.000078, 23.372210, 9.649016>,  <27.906454, 23.215834, 9.492871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.000078, 23.372210, 9.649016>,  <28.156118, 23.632835, 9.909258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.000078, 23.372210, 9.649016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840026, 0.037516, -0.541248,
		0.377067, -0.757663, 0.532698,
		-0.390099, -0.651567, -0.650603,
		27.883049, 23.176739, 9.453835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.716396, 23.234039, 9.787582>,  <28.156118, 23.632835, 9.909258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.716396, 23.234039, 9.787582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.447617, 23.159521, 9.500868>,  <28.286348, 23.114811, 9.328839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.447617, 23.159521, 9.500868>,  <28.716396, 23.234039, 9.787582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.447617, 23.159521, 9.500868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684120, 0.214571, -0.697093,
		0.283665, -0.958777, -0.016733,
		-0.671947, -0.186294, -0.716785,
		28.246033, 23.103634, 9.285832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.921862, 22.547379, 9.338972>,  <28.716396, 23.234039, 9.787582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.921862, 22.547379, 9.338972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.717766, 22.841953, 9.161290>,  <28.595308, 23.018698, 9.054681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.717766, 22.841953, 9.161290>,  <28.921862, 22.547379, 9.338972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.717766, 22.841953, 9.161290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718306, 0.080877, -0.691010,
		-0.472958, -0.671656, -0.570253,
		-0.510242, 0.736435, -0.444203,
		28.564693, 23.062883, 9.028029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.663498, 22.476830, 9.049365>,  <28.921862, 22.547379, 9.338972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.663498, 22.476830, 9.049365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.607460, 22.466663, 8.653440>,  <29.573837, 22.460564, 8.415886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.607460, 22.466663, 8.653440>,  <29.663498, 22.476830, 9.049365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.607460, 22.466663, 8.653440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833136, 0.537155, -0.131713,
		0.535030, -0.843100, -0.054077,
		-0.140095, -0.025417, -0.989812,
		29.565432, 22.459038, 8.356497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.481514, 21.762812, 8.904795>,  <29.663498, 22.476830, 9.049365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.481514, 21.762812, 8.904795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.376835, 21.435743, 8.699687>,  <29.314028, 21.239502, 8.576623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.376835, 21.435743, 8.699687>,  <29.481514, 21.762812, 8.904795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.376835, 21.435743, 8.699687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670811, -0.227885, 0.705748,
		-0.693920, 0.528665, -0.488864,
		-0.261700, -0.817669, -0.512768,
		29.298325, 21.190443, 8.545856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.766085, 21.781181, 8.840152>,  <29.481514, 21.762812, 8.904795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.766085, 21.781181, 8.840152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.870190, 21.396799, 8.802567>,  <28.932653, 21.166170, 8.780016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.870190, 21.396799, 8.802567>,  <28.766085, 21.781181, 8.840152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.870190, 21.396799, 8.802567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735086, -0.260302, 0.626012,
		-0.626028, -0.093857, -0.774132,
		0.260264, -0.960955, -0.093963,
		28.948269, 21.108513, 8.774378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.186199, 21.356529, 8.529343>,  <28.766085, 21.781181, 8.840152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.186199, 21.356529, 8.529343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.424942, 21.153271, 8.777713>,  <28.568188, 21.031315, 8.926735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.424942, 21.153271, 8.777713>,  <28.186199, 21.356529, 8.529343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.424942, 21.153271, 8.777713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787597, -0.223345, 0.574289,
		-0.153144, -0.831806, -0.533521,
		0.596857, -0.508149, 0.620924,
		28.604000, 21.000826, 8.963990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.906120, 20.722940, 8.535437>,  <28.186199, 21.356529, 8.529343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.906120, 20.722940, 8.535437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.062435, 20.836990, 8.885520>,  <28.156223, 20.905420, 9.095570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.062435, 20.836990, 8.885520>,  <27.906120, 20.722940, 8.535437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.062435, 20.836990, 8.885520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826859, -0.309055, 0.469882,
		0.404462, -0.907298, 0.114981,
		0.390788, 0.285123, 0.875208,
		28.179672, 20.922527, 9.148083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.919718, 20.180508, 9.082692>,  <27.906120, 20.722940, 8.535437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.919718, 20.180508, 9.082692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.889679, 20.544622, 9.245535>,  <27.871656, 20.763092, 9.343241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.889679, 20.544622, 9.245535>,  <27.919718, 20.180508, 9.082692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.889679, 20.544622, 9.245535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733516, -0.326992, 0.595845,
		0.675511, -0.253873, 0.692267,
		-0.075097, 0.910288, 0.407107,
		27.867149, 20.817709, 9.367667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.054026, 20.140047, 9.807369>,  <27.919718, 20.180508, 9.082692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.054026, 20.140047, 9.807369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.792555, 20.422022, 9.697268>,  <27.635672, 20.591208, 9.631207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.792555, 20.422022, 9.697268>,  <28.054026, 20.140047, 9.807369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.792555, 20.422022, 9.697268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718576, -0.464081, 0.517955,
		0.237386, 0.536368, 0.809912,
		-0.653679, 0.704939, -0.275255,
		27.596451, 20.633503, 9.614691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.764597, 20.443834, 10.461775>,  <28.054026, 20.140047, 9.807369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.764597, 20.443834, 10.461775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.522802, 20.437025, 10.143201>,  <27.377726, 20.432940, 9.952057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.522802, 20.437025, 10.143201>,  <27.764597, 20.443834, 10.461775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.522802, 20.437025, 10.143201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583549, -0.671110, 0.457254,
		-0.542280, 0.741162, 0.395741,
		-0.604485, -0.017025, -0.796434,
		27.341457, 20.431917, 9.904270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.162966, 20.447672, 10.743886>,  <27.764597, 20.443834, 10.461775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.162966, 20.447672, 10.743886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.043076, 20.328541, 10.381348>,  <26.971142, 20.257063, 10.163824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.043076, 20.328541, 10.381348>,  <27.162966, 20.447672, 10.743886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.043076, 20.328541, 10.381348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667830, -0.612942, 0.422261,
		-0.681299, 0.731848, -0.015183,
		-0.299725, -0.297826, -0.906347,
		26.953157, 20.239193, 10.109444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.540752, 20.617481, 10.831300>,  <27.162966, 20.447672, 10.743886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.540752, 20.617481, 10.831300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.544386, 20.367514, 10.519045>,  <26.546566, 20.217533, 10.331692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.544386, 20.367514, 10.519045>,  <26.540752, 20.617481, 10.831300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.544386, 20.367514, 10.519045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738729, -0.530341, 0.415954,
		-0.673942, 0.572901, -0.466462,
		0.009083, -0.624918, -0.780638,
		26.547112, 20.180038, 10.284854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.759636, 20.465046, 10.685394>,  <26.540752, 20.617481, 10.831300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.759636, 20.465046, 10.685394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.009525, 20.183592, 10.549973>,  <26.159458, 20.014719, 10.468719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.009525, 20.183592, 10.549973>,  <25.759636, 20.465046, 10.685394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.009525, 20.183592, 10.549973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590223, -0.709385, 0.385239,
		-0.511233, -0.040845, -0.858471,
		0.624722, -0.703637, -0.338554,
		26.196941, 19.972502, 10.448406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.312990, 19.996353, 10.325202>,  <25.759636, 20.465046, 10.685394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.312990, 19.996353, 10.325202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.652296, 19.796013, 10.394017>,  <25.855879, 19.675808, 10.435307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.652296, 19.796013, 10.394017>,  <25.312990, 19.996353, 10.325202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.652296, 19.796013, 10.394017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522757, -0.739972, 0.423280,
		-0.084697, -0.448987, -0.889515,
		0.848264, -0.500851, 0.172038,
		25.906775, 19.645758, 10.445629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.095497, 19.325909, 10.121743>,  <25.312990, 19.996353, 10.325202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.095497, 19.325909, 10.121743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.398668, 19.320309, 10.382618>,  <25.580572, 19.316948, 10.539143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.398668, 19.320309, 10.382618>,  <25.095497, 19.325909, 10.121743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.398668, 19.320309, 10.382618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355023, -0.847594, 0.394390,
		0.547268, -0.530461, -0.647386,
		0.757929, -0.013999, 0.652187,
		25.626047, 19.316109, 10.578274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.306023, 18.633572, 10.011656>,  <25.095497, 19.325909, 10.121743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.306023, 18.633572, 10.011656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.453913, 18.744629, 10.366331>,  <25.542646, 18.811264, 10.579136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.453913, 18.744629, 10.366331>,  <25.306023, 18.633572, 10.011656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.453913, 18.744629, 10.366331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232478, -0.896312, 0.377596,
		0.899587, -0.345743, -0.266844,
		0.369727, 0.277644, 0.886688,
		25.564831, 18.827923, 10.632338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.493668, 17.960133, 10.368464>,  <25.306023, 18.633572, 10.011656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.493668, 17.960133, 10.368464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.556362, 18.194920, 10.686182>,  <25.593979, 18.335793, 10.876813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.556362, 18.194920, 10.686182>,  <25.493668, 17.960133, 10.368464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.556362, 18.194920, 10.686182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129957, -0.784985, 0.605731,
		0.979053, -0.198163, -0.046754,
		0.156734, 0.586967, 0.794294,
		25.603382, 18.371010, 10.924470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.830263, 17.584602, 10.838796>,  <25.493668, 17.960133, 10.368464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.830263, 17.584602, 10.838796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.667524, 17.870487, 11.066360>,  <25.569881, 18.042019, 11.202899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.667524, 17.870487, 11.066360>,  <25.830263, 17.584602, 10.838796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.667524, 17.870487, 11.066360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323239, -0.695127, 0.642118,
		0.854397, 0.077348, 0.513832,
		-0.406845, 0.714714, 0.568912,
		25.545471, 18.084902, 11.237034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.131138, 17.541609, 11.524935>,  <25.830263, 17.584602, 10.838796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.131138, 17.541609, 11.524935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.783955, 17.739227, 11.545206>,  <25.575645, 17.857800, 11.557368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.783955, 17.739227, 11.545206>,  <26.131138, 17.541609, 11.524935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.783955, 17.739227, 11.545206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282224, -0.574620, 0.768220,
		0.408658, 0.652479, 0.638177,
		-0.867956, 0.494048, 0.050678,
		25.523567, 17.887442, 11.560410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.043301, 17.601686, 12.155682>,  <26.131138, 17.541609, 11.524935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.043301, 17.601686, 12.155682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.672697, 17.680979, 12.027754>,  <25.450335, 17.728554, 11.950997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.672697, 17.680979, 12.027754>,  <26.043301, 17.601686, 12.155682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.672697, 17.680979, 12.027754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375972, -0.521557, 0.765914,
		-0.014977, 0.829870, 0.557756,
		-0.926510, 0.198229, -0.319819,
		25.394745, 17.740448, 11.931808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.590605, 17.849779, 12.744370>,  <26.043301, 17.601686, 12.155682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.590605, 17.849779, 12.744370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.324980, 17.692335, 12.490097>,  <25.165606, 17.597868, 12.337533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.324980, 17.692335, 12.490097>,  <25.590605, 17.849779, 12.744370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.324980, 17.692335, 12.490097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445871, -0.474013, 0.759283,
		-0.600184, 0.787643, 0.139274,
		-0.664062, -0.393611, -0.635682,
		25.125761, 17.574251, 12.299393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.938200, 18.014288, 13.014754>,  <25.590605, 17.849779, 12.744370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.938200, 18.014288, 13.014754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.896620, 17.705513, 12.763897>,  <24.871672, 17.520248, 12.613382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.896620, 17.705513, 12.763897>,  <24.938200, 18.014288, 13.014754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.896620, 17.705513, 12.763897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618977, -0.443351, 0.648311,
		-0.778499, 0.455581, -0.431724,
		-0.103952, -0.771937, -0.627143,
		24.865435, 17.473932, 12.575754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.256824, 17.883434, 12.971191>,  <24.938200, 18.014288, 13.014754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.256824, 17.883434, 12.971191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.394852, 17.535028, 12.831329>,  <24.477669, 17.325985, 12.747412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.394852, 17.535028, 12.831329>,  <24.256824, 17.883434, 12.971191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.394852, 17.535028, 12.831329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692928, -0.487695, 0.531041,
		-0.633070, 0.059040, -0.771839,
		0.345070, -0.871015, -0.349656,
		24.498373, 17.273724, 12.726433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.719715, 17.423754, 12.897834>,  <24.256824, 17.883434, 12.971191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.719715, 17.423754, 12.897834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.023800, 17.165573, 12.927429>,  <24.206251, 17.010664, 12.945187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.023800, 17.165573, 12.927429>,  <23.719715, 17.423754, 12.897834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.023800, 17.165573, 12.927429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605443, -0.662537, 0.441002,
		-0.235625, -0.380050, -0.894451,
		0.760210, -0.645451, 0.073989,
		24.251863, 16.971937, 12.949626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.336199, 16.810295, 12.773311>,  <23.719715, 17.423754, 12.897834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.336199, 16.810295, 12.773311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.690685, 16.712954, 12.930992>,  <23.903378, 16.654549, 13.025601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.690685, 16.712954, 12.930992>,  <23.336199, 16.810295, 12.773311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.690685, 16.712954, 12.930992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451420, -0.644841, 0.616765,
		0.104106, -0.724540, -0.681325,
		0.886218, -0.243355, 0.394204,
		23.956551, 16.639946, 13.049253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.349997, 16.028666, 12.869648>,  <23.336199, 16.810295, 12.773311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.349997, 16.028666, 12.869648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.615709, 16.185158, 13.124416>,  <23.775137, 16.279053, 13.277277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.615709, 16.185158, 13.124416>,  <23.349997, 16.028666, 12.869648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.615709, 16.185158, 13.124416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431934, -0.494516, 0.754246,
		0.610050, -0.776141, -0.159513,
		0.664283, 0.391229, 0.636921,
		23.814995, 16.302526, 13.315493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.454451, 15.542382, 13.411333>,  <23.349997, 16.028666, 12.869648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.454451, 15.542382, 13.411333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.640810, 15.845185, 13.594583>,  <23.752626, 16.026867, 13.704533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.640810, 15.845185, 13.594583>,  <23.454451, 15.542382, 13.411333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.640810, 15.845185, 13.594583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267461, -0.373046, 0.888426,
		0.843447, -0.536446, 0.028669,
		0.465898, 0.757008, 0.458124,
		23.780579, 16.072289, 13.732019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.907721, 15.305449, 13.874533>,  <23.454451, 15.542382, 13.411333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.907721, 15.305449, 13.874533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.796440, 15.658116, 14.026987>,  <23.729671, 15.869717, 14.118460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.796440, 15.658116, 14.026987>,  <23.907721, 15.305449, 13.874533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.796440, 15.658116, 14.026987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156173, -0.433041, 0.887742,
		0.947742, 0.187447, 0.258165,
		-0.278201, 0.881668, 0.381137,
		23.712980, 15.922617, 14.141328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.248365, 15.723606, 13.298884>,  <23.907721, 15.305449, 13.874533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.248365, 15.723606, 13.298884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.433756, 15.384871, 13.403236>,  <24.544991, 15.181631, 13.465848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.433756, 15.384871, 13.403236>,  <24.248365, 15.723606, 13.298884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.433756, 15.384871, 13.403236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708544, 0.530973, 0.464793,
		-0.532124, -0.030576, 0.846114,
		0.463475, -0.846837, 0.260880,
		24.572798, 15.130820, 13.481501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.559498, 15.808221, 13.968052>,  <24.248365, 15.723606, 13.298884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.559498, 15.808221, 13.968052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.753178, 15.476061, 13.857787>,  <24.869385, 15.276765, 13.791628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.753178, 15.476061, 13.857787>,  <24.559498, 15.808221, 13.968052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.753178, 15.476061, 13.857787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769949, 0.254733, 0.585056,
		-0.415609, -0.495528, 0.762706,
		0.484198, -0.830399, -0.275662,
		24.898438, 15.226941, 13.775088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.765997, 15.448246, 14.461062>,  <24.559498, 15.808221, 13.968052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.765997, 15.448246, 14.461062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.030537, 15.346373, 14.178856>,  <25.189260, 15.285249, 14.009532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.030537, 15.346373, 14.178856>,  <24.765997, 15.448246, 14.461062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.030537, 15.346373, 14.178856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750072, 0.220870, 0.623385,
		-0.002938, -0.941463, 0.337103,
		0.661350, -0.254683, -0.705516,
		25.228941, 15.269968, 13.967201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.318295, 14.937682, 14.658466>,  <24.765997, 15.448246, 14.461062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.318295, 14.937682, 14.658466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.492344, 15.164557, 14.378761>,  <25.596773, 15.300681, 14.210938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.492344, 15.164557, 14.378761>,  <25.318295, 14.937682, 14.658466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.492344, 15.164557, 14.378761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725124, 0.239627, 0.645580,
		0.533726, -0.787959, -0.307013,
		0.435122, 0.567186, -0.699263,
		25.622881, 15.334712, 14.168983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.041563, 14.820167, 14.660986>,  <25.318295, 14.937682, 14.658466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.041563, 14.820167, 14.660986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.096821, 15.182213, 14.500147>,  <26.129976, 15.399441, 14.403644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.096821, 15.182213, 14.500147>,  <26.041563, 14.820167, 14.660986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.096821, 15.182213, 14.500147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788253, 0.145329, 0.597944,
		0.599644, -0.399558, -0.693383,
		0.138145, 0.905115, -0.402099,
		26.138264, 15.453747, 14.379518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.790964, 14.815907, 14.629285>,  <26.041563, 14.820167, 14.660986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.790964, 14.815907, 14.629285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.630491, 15.181917, 14.646155>,  <26.534208, 15.401524, 14.656278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.630491, 15.181917, 14.646155>,  <26.790964, 14.815907, 14.629285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.630491, 15.181917, 14.646155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751743, 0.302585, 0.585939,
		0.523388, 0.266773, -0.809257,
		-0.401182, 0.915027, 0.042175,
		26.510138, 15.456426, 14.658808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<15.014916, 16.268854, 24.908848> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.741472, 15.985972, 24.836695>,  <14.577406, 15.816243, 24.793404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.741472, 15.985972, 24.836695>,  <15.014916, 16.268854, 24.908848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.741472, 15.985972, 24.836695> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121730, 0.133209, -0.983584,
		0.719624, -0.694346, -0.004975,
		-0.683610, -0.707205, -0.180383,
		14.536389, 15.773810, 24.782579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.219688, 15.771585, 24.439005>,  <15.014916, 16.268854, 24.908848>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.219688, 15.771585, 24.439005> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.820183, 15.777458, 24.420006>,  <14.580480, 15.780982, 24.408606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.820183, 15.777458, 24.420006>,  <15.219688, 15.771585, 24.439005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.820183, 15.777458, 24.420006> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049609, 0.231477, -0.971575,
		-0.003271, -0.972730, -0.231919,
		-0.998764, 0.014683, -0.047499,
		14.520554, 15.781863, 24.405756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.013506, 15.756168, 23.804802>,  <15.219688, 15.771585, 24.439005>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.013506, 15.756168, 23.804802> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.635085, 15.840184, 23.903488>,  <14.408032, 15.890594, 23.962700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.635085, 15.840184, 23.903488>,  <15.013506, 15.756168, 23.804802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.635085, 15.840184, 23.903488> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149125, 0.393746, -0.907043,
		-0.287659, -0.894901, -0.341182,
		-0.946052, 0.210040, 0.246716,
		14.351270, 15.903196, 23.977503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.644756, 15.684893, 23.263006>,  <15.013506, 15.756168, 23.804802>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.644756, 15.684893, 23.263006> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.415967, 15.918875, 23.493023>,  <14.278693, 16.059265, 23.631033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.415967, 15.918875, 23.493023>,  <14.644756, 15.684893, 23.263006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.415967, 15.918875, 23.493023> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381767, 0.430645, -0.817801,
		-0.726017, -0.687292, -0.023000,
		-0.571974, 0.584957, 0.575041,
		14.244375, 16.094362, 23.665535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.928658, 15.546162, 23.160410>,  <14.644756, 15.684893, 23.263006>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.928658, 15.546162, 23.160410> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.987932, 15.918687, 23.293495>,  <14.023497, 16.142202, 23.373346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.987932, 15.918687, 23.293495>,  <13.928658, 15.546162, 23.160410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.987932, 15.918687, 23.293495> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444506, 0.363252, -0.818818,
		-0.883434, -0.026555, 0.467803,
		0.148186, 0.931312, 0.332713,
		14.032388, 16.198080, 23.393309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.323482, 15.974841, 22.977074>,  <13.928658, 15.546162, 23.160410>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.323482, 15.974841, 22.977074> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.596802, 16.256428, 23.054565>,  <13.760794, 16.425379, 23.101061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.596802, 16.256428, 23.054565>,  <13.323482, 15.974841, 22.977074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.596802, 16.256428, 23.054565> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241439, 0.468261, -0.849964,
		-0.689063, 0.534006, 0.489928,
		0.683300, 0.703966, 0.193732,
		13.801792, 16.467617, 23.112684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.042254, 16.630630, 22.802893>,  <13.323482, 15.974841, 22.977074>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.042254, 16.630630, 22.802893> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.439384, 16.678442, 22.801414>,  <13.677662, 16.707129, 22.800528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.439384, 16.678442, 22.801414>,  <13.042254, 16.630630, 22.802893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.439384, 16.678442, 22.801414> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087018, 0.700909, -0.707923,
		-0.082027, 0.703164, 0.706280,
		0.992824, 0.119528, -0.003694,
		13.737231, 16.714300, 22.800306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.127151, 17.061970, 22.217903>,  <13.042254, 16.630630, 22.802893>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.127151, 17.061970, 22.217903> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.507061, 16.976034, 22.308918>,  <13.735006, 16.924473, 22.363527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.507061, 16.976034, 22.308918>,  <13.127151, 17.061970, 22.217903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.507061, 16.976034, 22.308918> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275481, 0.229050, -0.933620,
		0.148461, 0.949410, 0.276730,
		0.949773, -0.214840, 0.227539,
		13.791993, 16.911583, 22.377180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.513806, 17.681829, 21.829382>,  <13.127151, 17.061970, 22.217903>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.513806, 17.681829, 21.829382> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.765910, 17.386772, 21.926258>,  <13.917172, 17.209738, 21.984385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.765910, 17.386772, 21.926258>,  <13.513806, 17.681829, 21.829382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.765910, 17.386772, 21.926258> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457514, 0.100841, -0.883466,
		0.627260, 0.667618, 0.401038,
		0.630259, -0.737643, 0.242191,
		13.954988, 17.165480, 21.998915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.252909, 17.854229, 21.614235>,  <13.513806, 17.681829, 21.829382>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.252909, 17.854229, 21.614235> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.250714, 17.454235, 21.614828>,  <14.249397, 17.214239, 21.615185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.250714, 17.454235, 21.614828>,  <14.252909, 17.854229, 21.614235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.250714, 17.454235, 21.614828> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301034, -0.003068, -0.953609,
		0.953598, -0.004785, 0.301046,
		-0.005487, -0.999984, 0.001485,
		14.249068, 17.154240, 21.615274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.876404, 17.607090, 21.261858>,  <14.252909, 17.854229, 21.614235>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.876404, 17.607090, 21.261858> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.641371, 17.284542, 21.234976>,  <14.500351, 17.091013, 21.218847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.641371, 17.284542, 21.234976>,  <14.876404, 17.607090, 21.261858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.641371, 17.284542, 21.234976> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333206, -0.165440, -0.928226,
		0.737374, -0.567802, 0.365897,
		-0.587583, -0.806368, -0.067204,
		14.465096, 17.042631, 21.214815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.344727, 17.253471, 20.834742>,  <14.876404, 17.607090, 21.261858>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.344727, 17.253471, 20.834742> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.976645, 17.098780, 20.810522>,  <14.755795, 17.005964, 20.795990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.976645, 17.098780, 20.810522>,  <15.344727, 17.253471, 20.834742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.976645, 17.098780, 20.810522> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145105, -0.193351, -0.970340,
		0.363551, -0.901697, 0.234039,
		-0.920204, -0.386728, -0.060548,
		14.700583, 16.982761, 20.792358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.412983, 16.663694, 20.557209>,  <15.344727, 17.253471, 20.834742>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.412983, 16.663694, 20.557209> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.042684, 16.789879, 20.473808>,  <14.820504, 16.865589, 20.423767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.042684, 16.789879, 20.473808>,  <15.412983, 16.663694, 20.557209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.042684, 16.789879, 20.473808> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130458, -0.251092, -0.959132,
		-0.354923, -0.915116, 0.191293,
		-0.925749, 0.315462, -0.208502,
		14.764959, 16.884518, 20.411257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.151541, 16.139587, 20.061802>,  <15.412983, 16.663694, 20.557209>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.151541, 16.139587, 20.061802> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.902126, 16.447989, 20.010017>,  <14.752478, 16.633030, 19.978947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.902126, 16.447989, 20.010017>,  <15.151541, 16.139587, 20.061802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.902126, 16.447989, 20.010017> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072963, -0.107481, -0.991526,
		-0.778383, -0.627697, 0.010764,
		-0.623535, 0.771002, -0.129460,
		14.715066, 16.679289, 19.971180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.635633, 15.953073, 19.502695>,  <15.151541, 16.139587, 20.061802>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.635633, 15.953073, 19.502695> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.610144, 16.349607, 19.548632>,  <14.594850, 16.587528, 19.576195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.610144, 16.349607, 19.548632>,  <14.635633, 15.953073, 19.502695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.610144, 16.349607, 19.548632> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066292, 0.110618, -0.991650,
		-0.995763, -0.070806, 0.058669,
		-0.063725, 0.991337, 0.114843,
		14.591026, 16.647009, 19.583084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.116417, 16.054226, 19.107634>,  <14.635633, 15.953073, 19.502695>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.116417, 16.054226, 19.107634> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.304112, 16.404394, 19.154030>,  <14.416730, 16.614494, 19.181868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.304112, 16.404394, 19.154030>,  <14.116417, 16.054226, 19.107634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.304112, 16.404394, 19.154030> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048622, 0.156763, -0.986439,
		-0.881732, 0.457235, 0.116124,
		0.469238, 0.875421, 0.115991,
		14.444883, 16.667021, 19.188828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.785931, 16.464401, 18.600737>,  <14.116417, 16.054226, 19.107634>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.785931, 16.464401, 18.600737> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.110241, 16.694633, 18.643353>,  <14.304827, 16.832773, 18.668922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.110241, 16.694633, 18.643353>,  <13.785931, 16.464401, 18.600737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.110241, 16.694633, 18.643353> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079892, 0.071498, -0.994236,
		-0.579880, 0.814614, 0.011985,
		0.810776, 0.575580, 0.106542,
		14.353474, 16.867308, 18.675316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.680236, 17.153036, 18.276445>,  <13.785931, 16.464401, 18.600737>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.680236, 17.153036, 18.276445> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.076311, 17.100252, 18.294836>,  <14.313956, 17.068583, 18.305870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.076311, 17.100252, 18.294836>,  <13.680236, 17.153036, 18.276445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.076311, 17.100252, 18.294836> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065294, 0.146012, -0.987126,
		0.123547, 0.980442, 0.153196,
		0.990188, -0.131959, 0.045978,
		14.373367, 17.060665, 18.308630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.993073, 17.610922, 17.805574>,  <13.680236, 17.153036, 18.276445>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.993073, 17.610922, 17.805574> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.299048, 17.362200, 17.872782>,  <14.482634, 17.212967, 17.913105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.299048, 17.362200, 17.872782>,  <13.993073, 17.610922, 17.805574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.299048, 17.362200, 17.872782> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216602, 0.002669, -0.976256,
		0.606592, 0.783168, 0.136725,
		0.764938, -0.621804, 0.168017,
		14.528530, 17.175659, 17.923187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.531449, 17.913099, 17.469395>,  <13.993073, 17.610922, 17.805574>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.531449, 17.913099, 17.469395> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.652122, 17.534618, 17.516193>,  <14.724524, 17.307529, 17.544271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.652122, 17.534618, 17.516193>,  <14.531449, 17.913099, 17.469395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.652122, 17.534618, 17.516193> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301525, -0.021726, -0.953211,
		0.904474, 0.322841, 0.278749,
		0.301680, -0.946204, 0.116995,
		14.742625, 17.250757, 17.551292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.220617, 17.890211, 17.241707>,  <14.531449, 17.913099, 17.469395>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.220617, 17.890211, 17.241707> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.117863, 17.503839, 17.229149>,  <15.056210, 17.272017, 17.221613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.117863, 17.503839, 17.229149>,  <15.220617, 17.890211, 17.241707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.117863, 17.503839, 17.229149> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045252, 0.020429, -0.998767,
		0.965382, -0.257991, 0.038462,
		-0.256887, -0.965931, -0.031397,
		15.040796, 17.214060, 17.219730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.802655, 17.490059, 17.110128>,  <15.220617, 17.890211, 17.241707>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.802655, 17.490059, 17.110128> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.467883, 17.304321, 16.994244>,  <15.267020, 17.192879, 16.924713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.467883, 17.304321, 16.994244>,  <15.802655, 17.490059, 17.110128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.467883, 17.304321, 16.994244> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320301, 0.013680, -0.947217,
		0.443796, -0.885550, 0.137281,
		-0.836930, -0.464343, -0.289714,
		15.216804, 17.165018, 16.907330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.577986, 17.537727, 16.901932>,  <15.802655, 17.490059, 17.110128>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.577986, 17.537727, 16.901932> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.975761, 17.578547, 16.891497>,  <17.214426, 17.603039, 16.885237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.975761, 17.578547, 16.891497>,  <16.577986, 17.537727, 16.901932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.975761, 17.578547, 16.891497> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064856, -0.398104, 0.915045,
		0.082993, -0.911647, -0.402508,
		0.994438, 0.102048, -0.026086,
		17.274094, 17.609161, 16.883671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.971151, 16.879131, 17.130203>,  <16.577986, 17.537727, 16.901932>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.971151, 16.879131, 17.130203> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.167370, 17.212002, 17.233624>,  <17.285101, 17.411724, 17.295675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.167370, 17.212002, 17.233624>,  <16.971151, 16.879131, 17.130203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.167370, 17.212002, 17.233624> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110787, -0.353852, 0.928717,
		0.864343, -0.426936, -0.265775,
		0.490547, 0.832174, 0.258551,
		17.314533, 17.461655, 17.311190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.463581, 16.549175, 17.462271>,  <16.971151, 16.879131, 17.130203>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.463581, 16.549175, 17.462271> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.483923, 16.931189, 17.579111>,  <17.496128, 17.160397, 17.649216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.483923, 16.931189, 17.579111>,  <17.463581, 16.549175, 17.462271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.483923, 16.931189, 17.579111> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133727, -0.296358, 0.945668,
		0.989712, -0.009029, -0.142785,
		0.050854, 0.955034, 0.292102,
		17.499180, 17.217699, 17.666742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.047340, 16.494507, 17.918941>,  <17.463581, 16.549175, 17.462271>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.047340, 16.494507, 17.918941> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.911480, 16.862610, 17.996674>,  <17.829964, 17.083471, 18.043312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.911480, 16.862610, 17.996674>,  <18.047340, 16.494507, 17.918941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.911480, 16.862610, 17.996674> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341848, -0.071697, 0.937016,
		0.876229, 0.384689, -0.290236,
		-0.339651, 0.920257, 0.194328,
		17.809584, 17.138687, 18.054972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.532515, 16.799629, 18.439178>,  <18.047340, 16.494507, 17.918941>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.532515, 16.799629, 18.439178> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.187283, 17.001244, 18.452061>,  <17.980143, 17.122211, 18.459789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.187283, 17.001244, 18.452061>,  <18.532515, 16.799629, 18.439178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.187283, 17.001244, 18.452061> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078449, 0.070798, 0.994401,
		0.498934, 0.860776, -0.100645,
		-0.863082, 0.504036, 0.032204,
		17.928358, 17.152454, 18.461721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.715836, 17.208956, 18.901703>,  <18.532515, 16.799629, 18.439178>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.715836, 17.208956, 18.901703> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.316017, 17.218857, 18.908621>,  <18.076126, 17.224796, 18.912771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.316017, 17.218857, 18.908621>,  <18.715836, 17.208956, 18.901703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.316017, 17.218857, 18.908621> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016180, -0.044622, 0.998873,
		0.025494, 0.998697, 0.044201,
		-0.999544, 0.024750, 0.017297,
		18.016153, 17.226282, 18.913811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.512383, 17.755190, 19.416342>,  <18.715836, 17.208956, 18.901703>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.512383, 17.755190, 19.416342> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.206091, 17.499136, 19.391401>,  <18.022316, 17.345503, 19.376436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.206091, 17.499136, 19.391401>,  <18.512383, 17.755190, 19.416342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.206091, 17.499136, 19.391401> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094656, -0.208053, 0.973527,
		-0.636162, 0.739554, 0.219905,
		-0.765727, -0.640136, -0.062352,
		17.976372, 17.307095, 19.372696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.144997, 17.863728, 19.969984>,  <18.512383, 17.755190, 19.416342>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.144997, 17.863728, 19.969984> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.031742, 17.498596, 19.852285>,  <17.963789, 17.279518, 19.781666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.031742, 17.498596, 19.852285>,  <18.144997, 17.863728, 19.969984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.031742, 17.498596, 19.852285> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031629, -0.315521, 0.948391,
		-0.958559, 0.259215, 0.118207,
		-0.283134, -0.912827, -0.294247,
		17.946802, 17.224749, 19.764011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.793549, 17.729240, 20.513399>,  <18.144997, 17.863728, 19.969984>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.793549, 17.729240, 20.513399> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.828188, 17.369946, 20.341042>,  <17.848972, 17.154369, 20.237627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.828188, 17.369946, 20.341042>,  <17.793549, 17.729240, 20.513399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.828188, 17.369946, 20.341042> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045145, -0.435613, 0.899001,
		-0.995220, -0.058399, -0.078274,
		0.086598, -0.898237, -0.430895,
		17.854168, 17.100473, 20.211773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.200941, 17.400982, 20.601091>,  <17.793549, 17.729240, 20.513399>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.200941, 17.400982, 20.601091> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.504576, 17.142132, 20.572763>,  <17.686756, 16.986822, 20.555767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.504576, 17.142132, 20.572763>,  <17.200941, 17.400982, 20.601091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.504576, 17.142132, 20.572763> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299968, -0.444252, 0.844192,
		-0.577759, -0.619572, -0.531343,
		0.759088, -0.647125, -0.070819,
		17.732302, 16.947994, 20.551517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.972990, 16.876741, 20.976427>,  <17.200941, 17.400982, 20.601091>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.972990, 16.876741, 20.976427> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.352827, 16.755693, 20.943693>,  <17.580729, 16.683064, 20.924053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.352827, 16.755693, 20.943693>,  <16.972990, 16.876741, 20.976427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.352827, 16.755693, 20.943693> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033959, -0.358809, 0.932793,
		-0.311644, -0.882994, -0.350999,
		0.949592, -0.302618, -0.081835,
		17.637705, 16.664907, 20.919142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.009501, 16.126459, 21.092724>,  <16.972990, 16.876741, 20.976427>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.009501, 16.126459, 21.092724> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.360106, 16.305185, 21.164370>,  <17.570469, 16.412422, 21.207357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.360106, 16.305185, 21.164370>,  <17.009501, 16.126459, 21.092724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.360106, 16.305185, 21.164370> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018214, -0.402603, 0.915194,
		0.481037, -0.798915, -0.361024,
		0.876511, 0.446817, 0.179116,
		17.623058, 16.439230, 21.218103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.384365, 15.500579, 21.355846>,  <17.009501, 16.126459, 21.092724>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.384365, 15.500579, 21.355846> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.590248, 15.821589, 21.476528>,  <17.713778, 16.014196, 21.548937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.590248, 15.821589, 21.476528>,  <17.384365, 15.500579, 21.355846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.590248, 15.821589, 21.476528> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046146, -0.325459, 0.944430,
		0.856122, -0.500029, -0.130483,
		0.514709, 0.802526, 0.301706,
		17.744661, 16.062347, 21.567039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.755962, 15.262613, 21.945721>,  <17.384365, 15.500579, 21.355846>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.755962, 15.262613, 21.945721> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.789150, 15.660421, 21.971155>,  <17.809063, 15.899107, 21.986416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.789150, 15.660421, 21.971155>,  <17.755962, 15.262613, 21.945721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.789150, 15.660421, 21.971155> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005069, -0.063384, 0.997976,
		0.996539, -0.083125, -0.000218,
		0.082971, 0.994521, 0.063586,
		17.814041, 15.958777, 21.990231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.293970, 15.372874, 22.466335>,  <17.755962, 15.262613, 21.945721>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.293970, 15.372874, 22.466335> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.073103, 15.705746, 22.445993>,  <17.940582, 15.905469, 22.433788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.073103, 15.705746, 22.445993>,  <18.293970, 15.372874, 22.466335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.073103, 15.705746, 22.445993> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128127, -0.024426, 0.991457,
		0.823828, 0.553969, 0.120112,
		-0.552170, 0.832179, -0.050855,
		17.907452, 15.955400, 22.430737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.448462, 15.727747, 23.160900>,  <18.293970, 15.372874, 22.466335>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.448462, 15.727747, 23.160900> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.121172, 15.890194, 22.998135>,  <17.924799, 15.987662, 22.900475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.121172, 15.890194, 22.998135>,  <18.448462, 15.727747, 23.160900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.121172, 15.890194, 22.998135> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391812, 0.124035, 0.911646,
		0.420707, 0.905364, 0.057633,
		-0.818223, 0.406117, -0.406915,
		17.875706, 16.012030, 22.876060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.354382, 16.234262, 23.613581>,  <18.448462, 15.727747, 23.160900>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.354382, 16.234262, 23.613581> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.007601, 16.204861, 23.416403>,  <17.799532, 16.187220, 23.298096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.007601, 16.204861, 23.416403>,  <18.354382, 16.234262, 23.613581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.007601, 16.204861, 23.416403> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498147, 0.158928, 0.852404,
		0.015687, 0.984550, -0.174399,
		-0.866951, -0.073505, -0.492943,
		17.747515, 16.182810, 23.268520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.934772, 16.868582, 23.898378>,  <18.354382, 16.234262, 23.613581>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.934772, 16.868582, 23.898378> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.728565, 16.557358, 23.754786>,  <17.604841, 16.370625, 23.668631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.728565, 16.557358, 23.754786>,  <17.934772, 16.868582, 23.898378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.728565, 16.557358, 23.754786> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477447, -0.087060, 0.874337,
		-0.711538, 0.622130, -0.326600,
		-0.515518, -0.778058, -0.358981,
		17.573910, 16.323940, 23.647091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<16.855915, 17.065348, 24.070038> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.966858, 16.686514, 24.005409>,  <17.033424, 16.459213, 23.966633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.966858, 16.686514, 24.005409>,  <16.855915, 17.065348, 24.070038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.966858, 16.686514, 24.005409> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050853, -0.182405, 0.981907,
		-0.959420, -0.264123, -0.098754,
		0.277358, -0.947084, -0.161572,
		17.050066, 16.402390, 23.956938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.457481, 16.679470, 24.582804>,  <16.855915, 17.065348, 24.070038>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.457481, 16.679470, 24.582804> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.705910, 16.381721, 24.484674>,  <16.854967, 16.203072, 24.425797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.705910, 16.381721, 24.484674>,  <16.457481, 16.679470, 24.582804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.705910, 16.381721, 24.484674> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023740, -0.295000, 0.955202,
		-0.783396, -0.599071, -0.165545,
		0.621070, -0.744371, -0.245324,
		16.892231, 16.158411, 24.411077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.141886, 16.084944, 24.840309>,  <16.457481, 16.679470, 24.582804>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.141886, 16.084944, 24.840309> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.518274, 15.965800, 24.775995>,  <16.744108, 15.894314, 24.737408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.518274, 15.965800, 24.775995>,  <16.141886, 16.084944, 24.840309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.518274, 15.965800, 24.775995> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010883, -0.501388, 0.865154,
		-0.338310, -0.812336, -0.475034,
		0.940972, -0.297860, -0.160783,
		16.800566, 15.876442, 24.727760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.143764, 15.308524, 24.862041>,  <16.141886, 16.084944, 24.840309>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.143764, 15.308524, 24.862041> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.507021, 15.450121, 24.951460>,  <16.724974, 15.535079, 25.005112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.507021, 15.450121, 24.951460>,  <16.143764, 15.308524, 24.862041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.507021, 15.450121, 24.951460> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009654, -0.551510, 0.834113,
		0.418556, -0.755333, -0.504265,
		0.908140, 0.353991, 0.223546,
		16.779463, 15.556318, 25.018524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.462822, 14.637928, 25.026751>,  <16.143764, 15.308524, 24.862041>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.462822, 14.637928, 25.026751> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.684456, 14.935752, 25.175678>,  <16.817436, 15.114447, 25.265036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.684456, 14.935752, 25.175678>,  <16.462822, 14.637928, 25.026751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.684456, 14.935752, 25.175678> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029171, -0.429610, 0.902543,
		0.831950, -0.510945, -0.216320,
		0.554083, 0.744561, 0.372319,
		16.850681, 15.159121, 25.287374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.948832, 14.333630, 25.398924>,  <16.462822, 14.637928, 25.026751>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.948832, 14.333630, 25.398924> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.952177, 14.699216, 25.561207>,  <16.954184, 14.918568, 25.658577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.952177, 14.699216, 25.561207>,  <16.948832, 14.333630, 25.398924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.952177, 14.699216, 25.561207> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021244, -0.405465, 0.913863,
		0.999739, -0.016261, 0.016025,
		0.008363, 0.913966, 0.405705,
		16.954685, 14.973406, 25.682919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.369394, 14.338226, 25.908632>,  <16.948832, 14.333630, 25.398924>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.369394, 14.338226, 25.908632> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.152494, 14.657676, 26.013067>,  <17.022354, 14.849345, 26.075727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.152494, 14.657676, 26.013067>,  <17.369394, 14.338226, 25.908632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.152494, 14.657676, 26.013067> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058305, -0.345752, 0.936513,
		0.838192, 0.492601, 0.234048,
		-0.542249, 0.798624, 0.261085,
		16.989820, 14.897263, 26.091393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.736107, 14.623264, 26.548801>,  <17.369394, 14.338226, 25.908632>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.736107, 14.623264, 26.548801> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.368931, 14.781119, 26.532578>,  <17.148624, 14.875833, 26.522842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.368931, 14.781119, 26.532578>,  <17.736107, 14.623264, 26.548801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.368931, 14.781119, 26.532578> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069479, -0.059262, 0.995822,
		0.390586, 0.916924, 0.081818,
		-0.917941, 0.394638, -0.040560,
		17.093548, 14.899510, 26.520411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.730295, 15.217742, 26.992163>,  <17.736107, 14.623264, 26.548801>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.730295, 15.217742, 26.992163> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.347897, 15.115147, 26.935196>,  <17.118458, 15.053590, 26.901016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.347897, 15.115147, 26.935196>,  <17.730295, 15.217742, 26.992163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.347897, 15.115147, 26.935196> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115210, -0.118227, 0.986281,
		-0.269807, 0.959289, 0.083475,
		-0.955997, -0.256488, -0.142418,
		17.061098, 15.038200, 26.892471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.310503, 15.613018, 27.467754>,  <17.730295, 15.217742, 26.992163>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.310503, 15.613018, 27.467754> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.078320, 15.303433, 27.366520>,  <16.939011, 15.117682, 27.305780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.078320, 15.303433, 27.366520>,  <17.310503, 15.613018, 27.467754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.078320, 15.303433, 27.366520> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025350, -0.327828, 0.944398,
		-0.813896, 0.541767, 0.209910,
		-0.580458, -0.773962, -0.253084,
		16.904182, 15.071245, 27.290594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.721663, 15.732132, 27.788651>,  <17.310503, 15.613018, 27.467754>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.721663, 15.732132, 27.788651> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.747301, 15.337830, 27.726458>,  <16.762684, 15.101248, 27.689142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.747301, 15.337830, 27.726458>,  <16.721663, 15.732132, 27.788651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.747301, 15.337830, 27.726458> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102012, -0.161459, 0.981593,
		-0.992716, -0.047054, -0.110908,
		0.064095, -0.985757, -0.155482,
		16.766529, 15.042103, 27.679813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.271297, 15.498489, 28.141146>,  <16.721663, 15.732132, 27.788651>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.271297, 15.498489, 28.141146> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.464094, 15.148647, 28.120167>,  <16.579773, 14.938743, 28.107580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.464094, 15.148647, 28.120167>,  <16.271297, 15.498489, 28.141146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.464094, 15.148647, 28.120167> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132632, -0.132000, 0.982336,
		-0.866079, -0.466522, -0.179623,
		0.481992, -0.874605, -0.052447,
		16.608692, 14.886266, 28.104433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.907944, 14.988553, 28.595808>,  <16.271297, 15.498489, 28.141146>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.907944, 14.988553, 28.595808> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.269644, 14.830506, 28.531044>,  <16.486664, 14.735678, 28.492186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.269644, 14.830506, 28.531044>,  <15.907944, 14.988553, 28.595808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.269644, 14.830506, 28.531044> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049191, -0.280258, 0.958663,
		-0.424162, -0.874835, -0.233987,
		0.904249, -0.395119, -0.161910,
		16.540918, 14.711971, 28.482471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.860939, 14.318701, 28.751699>,  <15.907944, 14.988553, 28.595808>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.860939, 14.318701, 28.751699> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.254814, 14.388425, 28.752628>,  <16.491138, 14.430260, 28.753185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.254814, 14.388425, 28.752628>,  <15.860939, 14.318701, 28.751699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.254814, 14.388425, 28.752628> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073873, -0.429309, 0.900131,
		0.157901, -0.886177, -0.435613,
		0.984688, 0.174312, 0.002324,
		16.550220, 14.440719, 28.753325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.147522, 13.640853, 28.849796>,  <15.860939, 14.318701, 28.751699>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.147522, 13.640853, 28.849796> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.436100, 13.902055, 28.941973>,  <16.609247, 14.058776, 28.997278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.436100, 13.902055, 28.941973>,  <16.147522, 13.640853, 28.849796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.436100, 13.902055, 28.941973> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159497, -0.480530, 0.862353,
		0.673853, -0.585386, -0.450828,
		0.721445, 0.653004, 0.230440,
		16.652534, 14.097956, 29.011105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.720984, 13.244292, 29.056005>,  <16.147522, 13.640853, 28.849796>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.720984, 13.244292, 29.056005> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.780352, 13.609277, 29.208523>,  <16.815973, 13.828268, 29.300034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.780352, 13.609277, 29.208523>,  <16.720984, 13.244292, 29.056005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.780352, 13.609277, 29.208523> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169324, -0.403318, 0.899258,
		0.974320, -0.068907, -0.214363,
		0.148422, 0.912462, 0.381293,
		16.824879, 13.883016, 29.322910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.402790, 13.111670, 29.337494>,  <16.720984, 13.244292, 29.056005>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.402790, 13.111670, 29.337494> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.256348, 13.428433, 29.532982>,  <17.168482, 13.618492, 29.650274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.256348, 13.428433, 29.532982>,  <17.402790, 13.111670, 29.337494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.256348, 13.428433, 29.532982> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079878, -0.549984, 0.831347,
		0.927139, 0.265323, 0.264608,
		-0.366106, 0.791910, 0.488718,
		17.146517, 13.666006, 29.679598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.703970, 13.124660, 29.963072>,  <17.402790, 13.111670, 29.337494>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.703970, 13.124660, 29.963072> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.367256, 13.333520, 30.017853>,  <17.165228, 13.458837, 30.050722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.367256, 13.333520, 30.017853>,  <17.703970, 13.124660, 29.963072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.367256, 13.333520, 30.017853> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199917, -0.537216, 0.819410,
		0.501429, 0.662388, 0.556607,
		-0.841785, 0.522151, 0.136953,
		17.114721, 13.490165, 30.058939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.774944, 13.335317, 30.702982>,  <17.703970, 13.124660, 29.963072>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.774944, 13.335317, 30.702982> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.389780, 13.441949, 30.686327>,  <17.158680, 13.505928, 30.676334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.389780, 13.441949, 30.686327>,  <17.774944, 13.335317, 30.702982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.389780, 13.441949, 30.686327> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177909, -0.511297, 0.840787,
		0.202847, 0.817013, 0.539762,
		-0.962913, 0.266580, -0.041639,
		17.100906, 13.521923, 30.673836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.593641, 13.512405, 31.292542>,  <17.774944, 13.335317, 30.702982>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.593641, 13.512405, 31.292542> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.238279, 13.392242, 31.153692>,  <17.025063, 13.320145, 31.070383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.238279, 13.392242, 31.153692>,  <17.593641, 13.512405, 31.292542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.238279, 13.392242, 31.153692> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145163, -0.533517, 0.833239,
		-0.435506, 0.790642, 0.430371,
		-0.888404, -0.300407, -0.347122,
		16.971758, 13.302120, 31.049555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.158463, 13.574340, 31.882248>,  <17.593641, 13.512405, 31.292542>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.158463, 13.574340, 31.882248> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.952065, 13.343271, 31.629251>,  <16.828226, 13.204630, 31.477453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.952065, 13.343271, 31.629251>,  <17.158463, 13.574340, 31.882248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.952065, 13.343271, 31.629251> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184611, -0.646033, 0.740649,
		-0.836462, 0.498935, 0.226705,
		-0.515994, -0.577672, -0.632491,
		16.797266, 13.169970, 31.439505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.542221, 13.417640, 32.250816>,  <17.158463, 13.574340, 31.882248>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.542221, 13.417640, 32.250816> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.594742, 13.137818, 31.969852>,  <16.626255, 12.969926, 31.801273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.594742, 13.137818, 31.969852>,  <16.542221, 13.417640, 32.250816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.594742, 13.137818, 31.969852> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249644, -0.709047, 0.659492,
		-0.959394, 0.088760, -0.267739,
		0.131303, -0.699552, -0.702414,
		16.634132, 12.927953, 31.759129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.834953, 13.099679, 32.157600>,  <16.542221, 13.417640, 32.250816>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.834953, 13.099679, 32.157600> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.178267, 12.901917, 32.102592>,  <16.384254, 12.783259, 32.069588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.178267, 12.901917, 32.102592>,  <15.834953, 13.099679, 32.157600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.178267, 12.901917, 32.102592> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214679, -0.589322, 0.778853,
		-0.466113, -0.638955, -0.611944,
		0.858284, -0.494405, -0.137520,
		16.435751, 12.753595, 32.061337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.325467, 12.523399, 32.086414>,  <15.834953, 13.099679, 32.157600>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.325467, 12.523399, 32.086414> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.125986, 12.180304, 32.036491>,  <15.006297, 11.974446, 32.006538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.125986, 12.180304, 32.036491>,  <15.325467, 12.523399, 32.086414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.125986, 12.180304, 32.036491> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277373, 0.294346, -0.914563,
		0.821194, -0.421476, -0.384705,
		-0.498703, -0.857740, -0.124809,
		14.976376, 11.922981, 31.999048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.602489, 12.111410, 31.488550>,  <15.325467, 12.523399, 32.086414>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.602489, 12.111410, 31.488550> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.215381, 12.050723, 31.568953>,  <14.983116, 12.014311, 31.617195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.215381, 12.050723, 31.568953>,  <15.602489, 12.111410, 31.488550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.215381, 12.050723, 31.568953> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242246, 0.342640, -0.907698,
		0.068839, -0.927135, -0.368349,
		-0.967770, -0.151716, 0.201008,
		14.925050, 12.005208, 31.629255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.367225, 11.896015, 30.910349>,  <15.602489, 12.111410, 31.488550>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.367225, 11.896015, 30.910349> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.022826, 11.996340, 31.087337>,  <14.816187, 12.056535, 31.193531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.022826, 11.996340, 31.087337>,  <15.367225, 11.896015, 30.910349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.022826, 11.996340, 31.087337> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389959, 0.232973, -0.890873,
		-0.326526, -0.939583, -0.102781,
		-0.860995, 0.250813, 0.442471,
		14.764527, 12.071584, 31.220079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.938907, 11.549542, 30.510891>,  <15.367225, 11.896015, 30.910349>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.938907, 11.549542, 30.510891> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.761595, 11.857261, 30.694929>,  <14.655208, 12.041892, 30.805351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.761595, 11.857261, 30.694929>,  <14.938907, 11.549542, 30.510891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.761595, 11.857261, 30.694929> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251967, 0.385645, -0.887576,
		-0.860242, -0.509372, 0.022889,
		-0.443280, 0.769297, 0.460093,
		14.628611, 12.088050, 30.832956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.319860, 11.574452, 30.232380>,  <14.938907, 11.549542, 30.510891>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.319860, 11.574452, 30.232380> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.359966, 11.934928, 30.401047>,  <14.384030, 12.151214, 30.502247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.359966, 11.934928, 30.401047>,  <14.319860, 11.574452, 30.232380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.359966, 11.934928, 30.401047> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311159, 0.430948, -0.847032,
		-0.945054, -0.046275, 0.323624,
		0.100268, 0.901189, 0.421668,
		14.390047, 12.205285, 30.527548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.697355, 11.942884, 30.135105>,  <14.319860, 11.574452, 30.232380>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.697355, 11.942884, 30.135105> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.945151, 12.248307, 30.208004>,  <14.093829, 12.431561, 30.251743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.945151, 12.248307, 30.208004>,  <13.697355, 11.942884, 30.135105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.945151, 12.248307, 30.208004> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339834, 0.470130, -0.814549,
		-0.707634, 0.442672, 0.550723,
		0.619489, 0.763557, 0.182245,
		14.130999, 12.477374, 30.262678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.305277, 12.599714, 30.063301>,  <13.697355, 11.942884, 30.135105>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.305277, 12.599714, 30.063301> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.693168, 12.679348, 30.006742>,  <13.925902, 12.727128, 29.972807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.693168, 12.679348, 30.006742>,  <13.305277, 12.599714, 30.063301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.693168, 12.679348, 30.006742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212983, 0.406340, -0.888553,
		-0.119442, 0.891770, 0.436441,
		0.969728, 0.199085, -0.141398,
		13.984086, 12.739074, 29.964323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.320320, 13.227547, 29.863550>,  <13.305277, 12.599714, 30.063301>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.320320, 13.227547, 29.863550> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.688081, 13.119061, 29.749607>,  <13.908737, 13.053970, 29.681242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.688081, 13.119061, 29.749607>,  <13.320320, 13.227547, 29.863550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.688081, 13.119061, 29.749607> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058743, 0.621431, -0.781263,
		0.388909, 0.735028, 0.555413,
		0.919402, -0.271214, -0.284858,
		13.963902, 13.037698, 29.664150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.594633, 13.799790, 29.557756>,  <13.320320, 13.227547, 29.863550>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.594633, 13.799790, 29.557756> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.834641, 13.513302, 29.415205>,  <13.978646, 13.341409, 29.329674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.834641, 13.513302, 29.415205>,  <13.594633, 13.799790, 29.557756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.834641, 13.513302, 29.415205> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089879, 0.503012, -0.859593,
		0.794920, 0.483742, 0.366190,
		0.600020, -0.716221, -0.356377,
		14.014647, 13.298435, 29.308292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.179593, 14.107105, 29.240808>,  <13.594633, 13.799790, 29.557756>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.179593, 14.107105, 29.240808> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.174006, 13.730832, 29.105207>,  <14.170654, 13.505068, 29.023848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.174006, 13.730832, 29.105207>,  <14.179593, 14.107105, 29.240808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.174006, 13.730832, 29.105207> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072051, 0.337206, -0.938670,
		0.997303, -0.037536, 0.063067,
		-0.013968, -0.940682, -0.339001,
		14.169816, 13.448627, 29.003508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.802695, 13.976049, 28.945576>,  <14.179593, 14.107105, 29.240808>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.802695, 13.976049, 28.945576> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.548090, 13.711580, 28.786730>,  <14.395327, 13.552898, 28.691422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.548090, 13.711580, 28.786730>,  <14.802695, 13.976049, 28.945576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.548090, 13.711580, 28.786730> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308997, 0.253149, -0.916753,
		0.706661, -0.706234, 0.043167,
		-0.636514, -0.661173, -0.397115,
		14.357136, 13.513228, 28.667595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.178937, 13.865545, 28.393106>,  <14.802695, 13.976049, 28.945576>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.178937, 13.865545, 28.393106> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.824632, 13.710904, 28.290375>,  <14.612048, 13.618119, 28.228737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.824632, 13.710904, 28.290375>,  <15.178937, 13.865545, 28.393106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.824632, 13.710904, 28.290375> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111666, 0.359586, -0.926407,
		0.450504, -0.849256, -0.275337,
		-0.885763, -0.386604, -0.256827,
		14.558903, 13.594923, 28.213327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.254558, 13.592978, 27.759418>,  <15.178937, 13.865545, 28.393106>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.254558, 13.592978, 27.759418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.857263, 13.630855, 27.786289>,  <14.618886, 13.653581, 27.802412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.857263, 13.630855, 27.786289>,  <15.254558, 13.592978, 27.759418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.857263, 13.630855, 27.786289> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038773, 0.274841, -0.960708,
		-0.109433, -0.956816, -0.269311,
		-0.993238, 0.094691, 0.067175,
		14.559291, 13.659262, 27.806442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.912719, 13.307674, 27.102484>,  <15.254558, 13.592978, 27.759418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.912719, 13.307674, 27.102484> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.654682, 13.565907, 27.265985>,  <14.499860, 13.720846, 27.364086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.654682, 13.565907, 27.265985>,  <14.912719, 13.307674, 27.102484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.654682, 13.565907, 27.265985> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137302, 0.428305, -0.893142,
		-0.751668, -0.632282, -0.187657,
		-0.645092, 0.645580, 0.408756,
		14.461155, 13.759581, 27.388613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.747580, 13.604520, 26.605846>,  <14.912719, 13.307674, 27.102484>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.747580, 13.604520, 26.605846> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.586294, 13.868144, 26.859795>,  <14.489523, 14.026319, 27.012163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.586294, 13.868144, 26.859795>,  <14.747580, 13.604520, 26.605846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.586294, 13.868144, 26.859795> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257552, 0.583991, -0.769819,
		-0.878115, -0.473912, -0.065731,
		-0.403213, 0.659061, 0.634868,
		14.465330, 14.065863, 27.050255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.089678, 13.775982, 26.348118>,  <14.747580, 13.604520, 26.605846>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.089678, 13.775982, 26.348118> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.173647, 14.078960, 26.595409>,  <14.224029, 14.260748, 26.743784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.173647, 14.078960, 26.595409>,  <14.089678, 13.775982, 26.348118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.173647, 14.078960, 26.595409> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163089, 0.650588, -0.741713,
		-0.964020, 0.054877, 0.260105,
		0.209924, 0.757446, 0.618230,
		14.236624, 14.306194, 26.780878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.571728, 14.255751, 26.311312>,  <14.089678, 13.775982, 26.348118>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.571728, 14.255751, 26.311312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.894678, 14.449441, 26.446173>,  <14.088449, 14.565655, 26.527088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.894678, 14.449441, 26.446173>,  <13.571728, 14.255751, 26.311312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.894678, 14.449441, 26.446173> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031084, 0.605518, -0.795224,
		-0.589220, 0.631564, 0.503931,
		0.807375, 0.484226, 0.337151,
		14.136890, 14.594708, 26.547318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.382205, 14.931505, 26.373371>,  <13.571728, 14.255751, 26.311312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.382205, 14.931505, 26.373371> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.781270, 14.942090, 26.348166>,  <14.020709, 14.948442, 26.333042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.781270, 14.942090, 26.348166>,  <13.382205, 14.931505, 26.373371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.781270, 14.942090, 26.348166> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065144, 0.647000, -0.759702,
		0.020665, 0.762031, 0.647211,
		0.997662, 0.026463, -0.063012,
		14.080568, 14.950029, 26.329262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.568240, 15.621728, 26.289698>,  <13.382205, 14.931505, 26.373371>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.568240, 15.621728, 26.289698> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.859878, 15.400009, 26.129110>,  <14.034861, 15.266978, 26.032759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.859878, 15.400009, 26.129110>,  <13.568240, 15.621728, 26.289698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.859878, 15.400009, 26.129110> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072735, 0.520513, -0.850750,
		0.680537, 0.649478, 0.339186,
		0.729094, -0.554296, -0.401469,
		14.078606, 15.233720, 26.008669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.921712, 16.135002, 25.898672>,  <13.568240, 15.621728, 26.289698>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.921712, 16.135002, 25.898672> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.069231, 15.792091, 25.754971>,  <14.157743, 15.586345, 25.668749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.069231, 15.792091, 25.754971>,  <13.921712, 16.135002, 25.898672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.069231, 15.792091, 25.754971> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060999, 0.407988, -0.910947,
		0.927506, 0.314042, 0.202758,
		0.368798, -0.857277, -0.359255,
		14.179871, 15.534908, 25.647194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.522697, 16.341581, 25.409246>,  <13.921712, 16.135002, 25.898672>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.522697, 16.341581, 25.409246> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.400495, 15.976645, 25.300213>,  <14.327172, 15.757684, 25.234793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.400495, 15.976645, 25.300213>,  <14.522697, 16.341581, 25.409246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.400495, 15.976645, 25.300213> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088679, 0.257767, -0.962129,
		0.948051, -0.318111, 0.002155,
		-0.305508, -0.912339, -0.272586,
		14.308842, 15.702944, 25.218437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<26.358027, 23.191267, 6.408120> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.493961, 23.118067, 6.777123>,  <26.575521, 23.074146, 6.998525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.493961, 23.118067, 6.777123>,  <26.358027, 23.191267, 6.408120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.493961, 23.118067, 6.777123> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008553, 0.980245, 0.197604,
		-0.940446, -0.075043, 0.331557,
		0.339836, -0.183001, 0.922509,
		26.595913, 23.063166, 7.053875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.748785, 22.534636, 6.159045>,  <26.358027, 23.191267, 6.408120>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.748785, 22.534636, 6.159045> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.892324, 22.895929, 6.253191>,  <26.978447, 23.112705, 6.309680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.892324, 22.895929, 6.253191>,  <26.748785, 22.534636, 6.159045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.892324, 22.895929, 6.253191> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447113, -0.387688, 0.806094,
		0.819341, -0.184029, -0.542968,
		0.358847, 0.903234, 0.235366,
		26.999979, 23.166899, 6.323802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.457571, 22.474874, 6.290093>,  <26.748785, 22.534636, 6.159045>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.457571, 22.474874, 6.290093> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.341038, 22.790550, 6.506355>,  <27.271118, 22.979956, 6.636113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.341038, 22.790550, 6.506355>,  <27.457571, 22.474874, 6.290093>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.341038, 22.790550, 6.506355> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637363, -0.261326, 0.724898,
		0.713368, 0.555780, -0.426866,
		-0.291333, 0.789188, 0.540655,
		27.253637, 23.027306, 6.668552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.045275, 22.690165, 6.549085>,  <27.457571, 22.474874, 6.290093>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.045275, 22.690165, 6.549085> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.751305, 22.820908, 6.786756>,  <27.574923, 22.899353, 6.929358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.751305, 22.820908, 6.786756>,  <28.045275, 22.690165, 6.549085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.751305, 22.820908, 6.786756> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573551, -0.167902, 0.801778,
		0.361832, 0.930039, -0.064074,
		-0.734926, 0.326859, 0.594177,
		27.530827, 22.918964, 6.965009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.575895, 22.928741, 6.953397>,  <28.045275, 22.690165, 6.549085>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.575895, 22.928741, 6.953397> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.211365, 22.940128, 7.117677>,  <27.992647, 22.946960, 7.216245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.211365, 22.940128, 7.117677>,  <28.575895, 22.928741, 6.953397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.211365, 22.940128, 7.117677> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399175, -0.182959, 0.898435,
		0.100718, 0.982708, 0.155372,
		-0.911326, 0.028468, 0.410700,
		27.937967, 22.948669, 7.240887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.779104, 23.207958, 7.599832>,  <28.575895, 22.928741, 6.953397>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.779104, 23.207958, 7.599832> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.403221, 23.081915, 7.652981>,  <28.177691, 23.006289, 7.684870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.403221, 23.081915, 7.652981>,  <28.779104, 23.207958, 7.599832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.403221, 23.081915, 7.652981> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164248, -0.075077, 0.983558,
		-0.299952, 0.946081, 0.122306,
		-0.939708, -0.315109, 0.132873,
		28.121309, 22.987383, 7.692842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.494459, 23.564911, 8.313766>,  <28.779104, 23.207958, 7.599832>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.494459, 23.564911, 8.313766> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.296513, 23.237051, 8.198331>,  <28.177746, 23.040335, 8.129069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.296513, 23.237051, 8.198331>,  <28.494459, 23.564911, 8.313766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.296513, 23.237051, 8.198331> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136916, -0.254411, 0.957355,
		-0.858116, 0.513274, 0.013676,
		-0.494865, -0.819649, -0.288590,
		28.148054, 22.991156, 8.111753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.739264, 23.461407, 8.509169>,  <28.494459, 23.564911, 8.313766>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.739264, 23.461407, 8.509169> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.946720, 23.120682, 8.479708>,  <28.071194, 22.916246, 8.462031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.946720, 23.120682, 8.479708>,  <27.739264, 23.461407, 8.509169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.946720, 23.120682, 8.479708> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194724, -0.201562, 0.959925,
		-0.832523, -0.483513, -0.270407,
		0.518640, -0.851815, -0.073653,
		28.102312, 22.865137, 8.457612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.351749, 22.806131, 8.597085>,  <27.739264, 23.461407, 8.509169>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.351749, 22.806131, 8.597085> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.727942, 22.777439, 8.729960>,  <27.953657, 22.760223, 8.809686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.727942, 22.777439, 8.729960>,  <27.351749, 22.806131, 8.597085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.727942, 22.777439, 8.729960> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339720, -0.171892, 0.924685,
		-0.009224, -0.982501, -0.186029,
		0.940481, -0.071727, 0.332190,
		28.010086, 22.755920, 8.829618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.400648, 22.040586, 8.930509>,  <27.351749, 22.806131, 8.597085>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.400648, 22.040586, 8.930509> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.574314, 22.366243, 9.084744>,  <27.678513, 22.561638, 9.177286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.574314, 22.366243, 9.084744>,  <27.400648, 22.040586, 8.930509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.574314, 22.366243, 9.084744> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497291, -0.140298, 0.856165,
		0.751135, -0.563465, 0.343953,
		0.434163, 0.814140, 0.385589,
		27.704563, 22.610485, 9.200421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.729786, 21.829262, 9.492962>,  <27.400648, 22.040586, 8.930509>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.729786, 21.829262, 9.492962> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.672565, 22.222494, 9.538722>,  <27.638233, 22.458433, 9.566178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.672565, 22.222494, 9.538722>,  <27.729786, 21.829262, 9.492962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.672565, 22.222494, 9.538722> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473314, -0.169466, 0.864439,
		0.869201, 0.069511, 0.489548,
		-0.143050, 0.983081, 0.114400,
		27.629650, 22.517418, 9.573042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.800190, 21.945171, 10.124707>,  <27.729786, 21.829262, 9.492962>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.800190, 21.945171, 10.124707> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.606125, 22.290962, 10.072104>,  <27.489685, 22.498436, 10.040542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.606125, 22.290962, 10.072104>,  <27.800190, 21.945171, 10.124707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.606125, 22.290962, 10.072104> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451740, -0.119023, 0.884174,
		0.748696, 0.488378, 0.448265,
		-0.485165, 0.864477, -0.131508,
		27.460575, 22.550304, 10.032651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.919548, 22.282558, 10.675336>,  <27.800190, 21.945171, 10.124707>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.919548, 22.282558, 10.675336> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.594372, 22.473785, 10.542323>,  <27.399265, 22.588522, 10.462516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.594372, 22.473785, 10.542323>,  <27.919548, 22.282558, 10.675336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.594372, 22.473785, 10.542323> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397716, -0.038675, 0.916693,
		0.425381, 0.877471, 0.221576,
		-0.812941, 0.478068, -0.332532,
		27.350489, 22.617207, 10.442563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.780277, 22.781937, 11.214052>,  <27.919548, 22.282558, 10.675336>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.780277, 22.781937, 11.214052> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.451019, 22.698647, 11.002740>,  <27.253466, 22.648672, 10.875953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.451019, 22.698647, 11.002740>,  <27.780277, 22.781937, 11.214052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.451019, 22.698647, 11.002740> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522742, -0.085456, 0.848197,
		-0.221759, 0.974341, -0.038505,
		-0.823143, -0.208224, -0.528280,
		27.204077, 22.636179, 10.844256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.263903, 23.188730, 11.613701>,  <27.780277, 22.781937, 11.214052>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.263903, 23.188730, 11.613701> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.065659, 22.930742, 11.381017>,  <26.946712, 22.775949, 11.241406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.065659, 22.930742, 11.381017>,  <27.263903, 23.188730, 11.613701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.065659, 22.930742, 11.381017> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648994, -0.170101, 0.741534,
		-0.577217, 0.745037, -0.334277,
		-0.495609, -0.644970, -0.581709,
		26.916975, 22.737251, 11.206504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.520916, 23.173897, 11.871305>,  <27.263903, 23.188730, 11.613701>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.520916, 23.173897, 11.871305> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.549494, 22.876059, 11.605833>,  <26.566641, 22.697355, 11.446549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.549494, 22.876059, 11.605833>,  <26.520916, 23.173897, 11.871305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.549494, 22.876059, 11.605833> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698844, -0.512130, 0.499339,
		-0.711697, 0.428136, -0.556944,
		0.071443, -0.744595, -0.663682,
		26.570927, 22.652679, 11.406729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.864910, 23.034275, 11.480899>,  <26.520916, 23.173897, 11.871305>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.864910, 23.034275, 11.480899> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.076620, 22.697437, 11.522357>,  <26.203646, 22.495335, 11.547232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.076620, 22.697437, 11.522357>,  <25.864910, 23.034275, 11.480899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.076620, 22.697437, 11.522357> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701103, -0.365283, 0.612392,
		-0.477834, -0.396788, -0.783731,
		0.529273, -0.842098, 0.103645,
		26.235403, 22.444809, 11.553451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.344086, 22.501791, 11.287670>,  <25.864910, 23.034275, 11.480899>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.344086, 22.501791, 11.287670> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.617094, 22.307346, 11.505978>,  <25.780899, 22.190680, 11.636962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.617094, 22.307346, 11.505978>,  <25.344086, 22.501791, 11.287670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.617094, 22.307346, 11.505978> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729509, -0.498623, 0.468179,
		0.044545, -0.717684, -0.694943,
		0.682519, -0.486112, 0.545769,
		25.821850, 22.161512, 11.669708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.164650, 21.773668, 11.341834>,  <25.344086, 22.501791, 11.287670>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.164650, 21.773668, 11.341834> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.405540, 21.825031, 11.657006>,  <25.550076, 21.855850, 11.846109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.405540, 21.825031, 11.657006>,  <25.164650, 21.773668, 11.341834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.405540, 21.825031, 11.657006> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555414, -0.641565, 0.529066,
		0.573446, -0.756244, -0.315046,
		0.602225, 0.128410, 0.787931,
		25.586208, 21.863554, 11.893386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.400440, 21.099770, 11.545369>,  <25.164650, 21.773668, 11.341834>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.400440, 21.099770, 11.545369> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.428305, 21.333706, 11.868630>,  <25.445023, 21.474068, 12.062587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.428305, 21.333706, 11.868630>,  <25.400440, 21.099770, 11.545369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.428305, 21.333706, 11.868630> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510722, -0.674990, 0.532495,
		0.856919, -0.449836, 0.251670,
		0.069661, 0.584839, 0.808153,
		25.449203, 21.509157, 12.111076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.397194, 20.560511, 11.982647>,  <25.400440, 21.099770, 11.545369>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.397194, 20.560511, 11.982647> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.330338, 20.892788, 12.195066>,  <25.290224, 21.092154, 12.322518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.330338, 20.892788, 12.195066>,  <25.397194, 20.560511, 11.982647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.330338, 20.892788, 12.195066> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464693, -0.541421, 0.700660,
		0.869554, -0.129666, 0.476511,
		-0.167141, 0.830693, 0.531049,
		25.280195, 21.141996, 12.354382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.479355, 20.277328, 12.588532>,  <25.397194, 20.560511, 11.982647>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.479355, 20.277328, 12.588532> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.299295, 20.620844, 12.686392>,  <25.191259, 20.826952, 12.745108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.299295, 20.620844, 12.686392>,  <25.479355, 20.277328, 12.588532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.299295, 20.620844, 12.686392> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704899, -0.509938, 0.493033,
		0.548166, 0.049484, 0.834904,
		-0.450146, 0.858787, 0.244649,
		25.164251, 20.878479, 12.759787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.306807, 20.207207, 13.298676>,  <25.479355, 20.277328, 12.588532>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.306807, 20.207207, 13.298676> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.064386, 20.499720, 13.173502>,  <24.918934, 20.675228, 13.098397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.064386, 20.499720, 13.173502>,  <25.306807, 20.207207, 13.298676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.064386, 20.499720, 13.173502> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737730, -0.369657, 0.564896,
		0.297421, 0.573216, 0.763520,
		-0.606049, 0.731284, -0.312935,
		24.882572, 20.719105, 13.079621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.974972, 20.512348, 13.899068>,  <25.306807, 20.207207, 13.298676>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.974972, 20.512348, 13.899068> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.768251, 20.550993, 13.558813>,  <24.644218, 20.574181, 13.354660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.768251, 20.550993, 13.558813>,  <24.974972, 20.512348, 13.899068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.768251, 20.550993, 13.558813> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750464, -0.529266, 0.395831,
		-0.411970, 0.842938, 0.346029,
		-0.516802, 0.096612, -0.850636,
		24.613211, 20.579977, 13.303622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.380140, 20.379076, 14.121627>,  <24.974972, 20.512348, 13.899068>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.380140, 20.379076, 14.121627> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.292215, 20.369501, 13.731527>,  <24.239460, 20.363756, 13.497468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.292215, 20.369501, 13.731527>,  <24.380140, 20.379076, 14.121627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.292215, 20.369501, 13.731527> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874486, -0.438256, 0.207861,
		-0.432384, 0.898532, 0.075400,
		-0.219814, -0.023939, -0.975248,
		24.226271, 20.362320, 13.438953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.755350, 20.657627, 13.964712>,  <24.380140, 20.379076, 14.121627>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.755350, 20.657627, 13.964712> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.806255, 20.399458, 13.663452>,  <23.836800, 20.244556, 13.482697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.806255, 20.399458, 13.663452>,  <23.755350, 20.657627, 13.964712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.806255, 20.399458, 13.663452> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812605, -0.503252, 0.293957,
		-0.568751, 0.574603, -0.588518,
		0.127264, -0.645421, -0.753150,
		23.844435, 20.205832, 13.437507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.111645, 20.435713, 13.657462>,  <23.755350, 20.657627, 13.964712>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.111645, 20.435713, 13.657462> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.365191, 20.143875, 13.554771>,  <23.517319, 19.968773, 13.493157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.365191, 20.143875, 13.554771>,  <23.111645, 20.435713, 13.657462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.365191, 20.143875, 13.554771> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717557, -0.678604, 0.156867,
		-0.288665, 0.084784, -0.953669,
		0.633864, -0.729594, -0.256727,
		23.555349, 19.924997, 13.477754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.670496, 19.960320, 13.304423>,  <23.111645, 20.435713, 13.657462>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.670496, 19.960320, 13.304423> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.002798, 19.762291, 13.406211>,  <23.202179, 19.643475, 13.467283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.002798, 19.762291, 13.406211>,  <22.670496, 19.960320, 13.304423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.002798, 19.762291, 13.406211> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556610, -0.743533, 0.370599,
		0.005733, -0.449516, -0.893254,
		0.830754, -0.495070, 0.254468,
		23.252024, 19.613770, 13.482552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.442650, 19.283649, 13.109317>,  <22.670496, 19.960320, 13.304423>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.442650, 19.283649, 13.109317> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.772579, 19.210735, 13.323398>,  <22.970537, 19.166986, 13.451846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.772579, 19.210735, 13.323398>,  <22.442650, 19.283649, 13.109317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.772579, 19.210735, 13.323398> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434800, -0.809591, 0.394350,
		0.361410, -0.557974, -0.747026,
		0.824822, -0.182284, 0.535201,
		23.020025, 19.156050, 13.483958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.466969, 18.615292, 13.018164>,  <22.442650, 19.283649, 13.109317>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.466969, 18.615292, 13.018164> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.686586, 18.712997, 13.337886>,  <22.818357, 18.771620, 13.529719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.686586, 18.712997, 13.337886>,  <22.466969, 18.615292, 13.018164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.686586, 18.712997, 13.337886> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272007, -0.852058, 0.447225,
		0.790294, -0.462962, -0.401375,
		0.549043, 0.244262, 0.799305,
		22.851299, 18.786276, 13.577678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.897755, 18.055311, 13.152933>,  <22.466969, 18.615292, 13.018164>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.897755, 18.055311, 13.152933> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.858418, 18.250525, 13.499840>,  <22.834814, 18.367653, 13.707984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.858418, 18.250525, 13.499840>,  <22.897755, 18.055311, 13.152933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.858418, 18.250525, 13.499840> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389101, -0.820971, 0.417860,
		0.915930, -0.296360, 0.270633,
		-0.098345, 0.488035, 0.867266,
		22.828915, 18.396935, 13.760019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.031687, 17.565966, 13.688519>,  <22.897755, 18.055311, 13.152933>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.031687, 17.565966, 13.688519> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.800789, 17.856646, 13.837487>,  <22.662251, 18.031054, 13.926867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.800789, 17.856646, 13.837487>,  <23.031687, 17.565966, 13.688519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.800789, 17.856646, 13.837487> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613378, -0.686944, 0.389711,
		0.539035, -0.003475, 0.842276,
		-0.577243, 0.726701, 0.372418,
		22.627617, 18.074656, 13.949213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.940536, 17.554081, 14.523424>,  <23.031687, 17.565966, 13.688519>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.940536, 17.554081, 14.523424> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.631117, 17.675131, 14.300700>,  <22.445465, 17.747761, 14.167066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.631117, 17.675131, 14.300700>,  <22.940536, 17.554081, 14.523424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.631117, 17.675131, 14.300700> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476670, -0.856833, 0.196526,
		-0.417619, 0.417438, 0.807056,
		-0.773550, 0.302627, -0.556810,
		22.399052, 17.765919, 14.133657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.508734, 17.126637, 14.412107>,  <22.940536, 17.554081, 14.523424>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.508734, 17.126637, 14.412107> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.612036, 16.747894, 14.335402>,  <23.674017, 16.520649, 14.289380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.612036, 16.747894, 14.335402>,  <23.508734, 17.126637, 14.412107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.612036, 16.747894, 14.335402> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439722, 0.291952, -0.849358,
		0.860202, 0.135030, 0.491751,
		0.258257, -0.946853, -0.191762,
		23.689512, 16.463839, 14.277874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.177660, 17.151331, 14.241714>,  <23.508734, 17.126637, 14.412107>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.177660, 17.151331, 14.241714> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.089470, 16.783056, 14.112888>,  <24.036556, 16.562092, 14.035593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.089470, 16.783056, 14.112888>,  <24.177660, 17.151331, 14.241714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.089470, 16.783056, 14.112888> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653883, 0.105494, -0.749205,
		0.723759, -0.375775, 0.578762,
		-0.220477, -0.920687, -0.322065,
		24.023327, 16.506851, 14.016269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.768385, 16.716095, 14.035627>,  <24.177660, 17.151331, 14.241714>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.768385, 16.716095, 14.035627> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.474735, 16.577103, 13.802280>,  <24.298546, 16.493708, 13.662272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.474735, 16.577103, 13.802280>,  <24.768385, 16.716095, 14.035627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.474735, 16.577103, 13.802280> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561425, 0.172611, -0.809325,
		0.381921, -0.921663, 0.068366,
		-0.734124, -0.347481, -0.583369,
		24.254498, 16.472858, 13.627270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.161955, 16.221180, 13.489969>,  <24.768385, 16.716095, 14.035627>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.161955, 16.221180, 13.489969> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.806936, 16.361397, 13.370381>,  <24.593925, 16.445526, 13.298629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.806936, 16.361397, 13.370381>,  <25.161955, 16.221180, 13.489969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.806936, 16.361397, 13.370381> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427597, 0.385140, -0.817819,
		-0.171535, -0.853690, -0.491720,
		-0.887545, 0.350543, -0.298971,
		24.540672, 16.466560, 13.280690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.246904, 16.206249, 12.786465>,  <25.161955, 16.221180, 13.489969>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.246904, 16.206249, 12.786465> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.924080, 16.437611, 12.833968>,  <24.730385, 16.576427, 12.862470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.924080, 16.437611, 12.833968>,  <25.246904, 16.206249, 12.786465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.924080, 16.437611, 12.833968> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245346, 0.511431, -0.823556,
		-0.537083, -0.635523, -0.554664,
		-0.807060, 0.578403, 0.118758,
		24.681961, 16.611132, 12.869596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.922455, 16.174274, 12.207136>,  <25.246904, 16.206249, 12.786465>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.922455, 16.174274, 12.207136> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.791477, 16.514526, 12.371677>,  <24.712891, 16.718678, 12.470402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.791477, 16.514526, 12.371677>,  <24.922455, 16.174274, 12.207136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.791477, 16.514526, 12.371677> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355870, 0.514320, -0.780276,
		-0.875293, -0.109109, -0.471124,
		-0.327444, 0.850629, 0.411352,
		24.693245, 16.769714, 12.495083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.465277, 16.573404, 11.718681>,  <24.922455, 16.174274, 12.207136>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.465277, 16.573404, 11.718681> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.579000, 16.844378, 11.990049>,  <24.647234, 17.006962, 12.152870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.579000, 16.844378, 11.990049>,  <24.465277, 16.573404, 11.718681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.579000, 16.844378, 11.990049> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239245, 0.635104, -0.734442,
		-0.928402, 0.371117, 0.018493,
		0.284309, 0.677433, 0.678420,
		24.664293, 17.047607, 12.193575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.314730, 17.150650, 11.397025>,  <24.465277, 16.573404, 11.718681>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.314730, 17.150650, 11.397025> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.561138, 17.297510, 11.675799>,  <24.708982, 17.385626, 11.843064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.561138, 17.297510, 11.675799>,  <24.314730, 17.150650, 11.397025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.561138, 17.297510, 11.675799> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256116, 0.743319, -0.617965,
		-0.744931, 0.559176, 0.363868,
		0.616021, 0.367150, 0.696936,
		24.745945, 17.407656, 11.884880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.145016, 17.797232, 11.564237>,  <24.314730, 17.150650, 11.397025>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.145016, 17.797232, 11.564237> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.531136, 17.781404, 11.667486>,  <24.762808, 17.771908, 11.729436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.531136, 17.781404, 11.667486>,  <24.145016, 17.797232, 11.564237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.531136, 17.781404, 11.667486> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178138, 0.822530, -0.540104,
		-0.190944, 0.567345, 0.801037,
		0.965302, -0.039566, 0.258123,
		24.820726, 17.769535, 11.744923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.384506, 18.454031, 11.719183>,  <24.145016, 17.797232, 11.564237>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.384506, 18.454031, 11.719183> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.733149, 18.267710, 11.658079>,  <24.942333, 18.155918, 11.621417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.733149, 18.267710, 11.658079>,  <24.384506, 18.454031, 11.719183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.733149, 18.267710, 11.658079> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352724, 0.812327, -0.464447,
		0.340431, 0.350932, 0.872327,
		0.871604, -0.465802, -0.152759,
		24.994629, 18.127970, 11.612251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.846437, 18.962118, 11.854439>,  <24.384506, 18.454031, 11.719183>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.846437, 18.962118, 11.854439> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.081018, 18.683544, 11.689005>,  <25.221767, 18.516399, 11.589745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.081018, 18.683544, 11.689005>,  <24.846437, 18.962118, 11.854439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.081018, 18.683544, 11.689005> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526048, 0.715748, -0.459324,
		0.615912, 0.051807, 0.786110,
		0.586453, -0.696434, -0.413585,
		25.256954, 18.474613, 11.564929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.502565, 19.095882, 12.026293>,  <24.846437, 18.962118, 11.854439>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.502565, 19.095882, 12.026293> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.503782, 18.893288, 11.681396>,  <25.504513, 18.771730, 11.474457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.503782, 18.893288, 11.681396>,  <25.502565, 19.095882, 12.026293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.503782, 18.893288, 11.681396> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493474, 0.750708, -0.439228,
		0.869755, -0.424158, 0.252221,
		0.003042, -0.506486, -0.862243,
		25.504694, 18.741343, 11.422723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.089832, 19.211172, 11.806034>,  <25.502565, 19.095882, 12.026293>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.089832, 19.211172, 11.806034> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.922916, 19.084410, 11.465343>,  <25.822767, 19.008352, 11.260927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.922916, 19.084410, 11.465343>,  <26.089832, 19.211172, 11.806034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.922916, 19.084410, 11.465343> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530691, 0.675847, -0.511466,
		0.737725, -0.665433, -0.113843,
		-0.417287, -0.316906, -0.851729,
		25.797729, 18.989338, 11.209824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.645294, 19.201904, 11.379621>,  <26.089832, 19.211172, 11.806034>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.645294, 19.201904, 11.379621> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.331944, 19.222338, 11.131842>,  <26.143934, 19.234598, 10.983174>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.331944, 19.222338, 11.131842>,  <26.645294, 19.201904, 11.379621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.331944, 19.222338, 11.131842> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526013, 0.585403, -0.616939,
		0.331111, -0.809131, -0.485460,
		-0.783374, 0.051083, -0.619447,
		26.096931, 19.237663, 10.946008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.988224, 19.052958, 10.761960>,  <26.645294, 19.201904, 11.379621>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.988224, 19.052958, 10.761960> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.646189, 19.210009, 10.626511>,  <26.440968, 19.304239, 10.545240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.646189, 19.210009, 10.626511>,  <26.988224, 19.052958, 10.761960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.646189, 19.210009, 10.626511> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505002, 0.482736, -0.715498,
		-0.117459, -0.782820, -0.611061,
		-0.855088, 0.392629, -0.338624,
		26.389662, 19.327797, 10.524923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.012541, 19.063271, 10.075901>,  <26.988224, 19.052958, 10.761960>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.012541, 19.063271, 10.075901> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.744392, 19.347391, 10.161757>,  <26.583504, 19.517864, 10.213270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.744392, 19.347391, 10.161757>,  <27.012541, 19.063271, 10.075901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.744392, 19.347391, 10.161757> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430388, 0.607839, -0.667306,
		-0.604456, -0.354965, -0.713184,
		-0.670372, 0.710303, 0.214640,
		26.543282, 19.560482, 10.226149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.804264, 19.237867, 9.419108>,  <27.012541, 19.063271, 10.075901>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.804264, 19.237867, 9.419108> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.723473, 19.524027, 9.686663>,  <26.674997, 19.695723, 9.847196>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.723473, 19.524027, 9.686663>,  <26.804264, 19.237867, 9.419108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.723473, 19.524027, 9.686663> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369680, 0.688129, -0.624352,
		-0.906941, 0.121168, -0.403456,
		-0.201979, 0.715400, 0.668885,
		26.662878, 19.738647, 9.887328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.575880, 19.753939, 9.006644>,  <26.804264, 19.237867, 9.419108>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.575880, 19.753939, 9.006644> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.703386, 19.911869, 9.351318>,  <26.779890, 20.006628, 9.558123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.703386, 19.911869, 9.351318>,  <26.575880, 19.753939, 9.006644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.703386, 19.911869, 9.351318> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499731, 0.702481, -0.506744,
		-0.805394, 0.592142, 0.026619,
		0.318764, 0.394826, 0.861686,
		26.799015, 20.030317, 9.609824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.468214, 20.468204, 8.949596>,  <26.575880, 19.753939, 9.006644>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.468214, 20.468204, 8.949596> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.748175, 20.436272, 9.233502>,  <26.916151, 20.417112, 9.403846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.748175, 20.436272, 9.233502>,  <26.468214, 20.468204, 8.949596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.748175, 20.436272, 9.233502> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600605, 0.603580, -0.524370,
		-0.386539, 0.793295, 0.470394,
		0.699901, -0.079831, 0.709764,
		26.958145, 20.412323, 9.446432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<18.833473, 16.849478, 21.260479> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.463493, 16.697464, 21.262951>,  <18.241505, 16.606255, 21.264435>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.463493, 16.697464, 21.262951>,  <18.833473, 16.849478, 21.260479>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.463493, 16.697464, 21.262951> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111923, 0.256793, -0.959964,
		0.363236, -0.888611, -0.280056,
		-0.924950, -0.380038, 0.006179,
		18.186008, 16.583454, 21.264805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.910074, 16.401989, 20.818985>,  <18.833473, 16.849478, 21.260479>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.910074, 16.401989, 20.818985> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.520264, 16.489443, 20.838959>,  <18.286377, 16.541914, 20.850943>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.520264, 16.489443, 20.838959>,  <18.910074, 16.401989, 20.818985>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.520264, 16.489443, 20.838959> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026621, 0.108318, -0.993760,
		-0.222678, -0.969777, -0.099739,
		-0.974529, 0.218633, 0.049936,
		18.227905, 16.555033, 20.853939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.623739, 15.998839, 20.256529>,  <18.910074, 16.401989, 20.818985>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.623739, 15.998839, 20.256529> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.362339, 16.287149, 20.348980>,  <18.205500, 16.460136, 20.404449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.362339, 16.287149, 20.348980>,  <18.623739, 15.998839, 20.256529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.362339, 16.287149, 20.348980> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107588, 0.213798, -0.970935,
		-0.749241, -0.659374, -0.062171,
		-0.653501, 0.720775, 0.231127,
		18.166288, 16.503382, 20.418318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.172871, 15.929317, 19.737556>,  <18.623739, 15.998839, 20.256529>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.172871, 15.929317, 19.737556> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.070910, 16.295504, 19.862101>,  <18.009733, 16.515215, 19.936827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.070910, 16.295504, 19.862101>,  <18.172871, 15.929317, 19.737556>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.070910, 16.295504, 19.862101> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348640, 0.213329, -0.912656,
		-0.901928, -0.341193, 0.264790,
		-0.254904, 0.915466, 0.311361,
		17.994438, 16.570143, 19.955509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.545277, 16.015966, 19.490374>,  <18.172871, 15.929317, 19.737556>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.545277, 16.015966, 19.490374> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.679543, 16.384151, 19.570450>,  <17.760101, 16.605062, 19.618496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.679543, 16.384151, 19.570450>,  <17.545277, 16.015966, 19.490374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.679543, 16.384151, 19.570450> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367968, 0.323761, -0.871653,
		-0.867138, 0.218920, 0.447376,
		0.335665, 0.920464, 0.200190,
		17.780243, 16.660290, 19.630507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.054800, 16.409615, 19.167622>,  <17.545277, 16.015966, 19.490374>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.054800, 16.409615, 19.167622> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.336647, 16.677532, 19.261341>,  <17.505754, 16.838282, 19.317574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.336647, 16.677532, 19.261341>,  <17.054800, 16.409615, 19.167622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.336647, 16.677532, 19.261341> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151167, 0.464298, -0.872683,
		-0.693301, 0.579487, 0.428403,
		0.704615, 0.669792, 0.234299,
		17.548031, 16.878469, 19.331631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.777084, 17.023769, 18.909845>,  <17.054800, 16.409615, 19.167622>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.777084, 17.023769, 18.909845> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.161572, 17.132795, 18.926670>,  <17.392263, 17.198212, 18.936764>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.161572, 17.132795, 18.926670>,  <16.777084, 17.023769, 18.909845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.161572, 17.132795, 18.926670> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087415, 0.445749, -0.890880,
		-0.261570, 0.852653, 0.452288,
		0.961218, 0.272564, 0.042060,
		17.449936, 17.214565, 18.939289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.826349, 17.693909, 18.760460>,  <16.777084, 17.023769, 18.909845>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.826349, 17.693909, 18.760460> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.179234, 17.536644, 18.656824>,  <17.390965, 17.442286, 18.594643>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.179234, 17.536644, 18.656824>,  <16.826349, 17.693909, 18.760460>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.179234, 17.536644, 18.656824> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015526, 0.525663, -0.850551,
		0.470597, 0.754389, 0.457642,
		0.882211, -0.393162, -0.259088,
		17.443897, 17.418695, 18.579098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.182182, 18.278349, 18.349764>,  <16.826349, 17.693909, 18.760460>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.182182, 18.278349, 18.349764> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.371611, 17.936132, 18.266069>,  <17.485268, 17.730803, 18.215853>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.371611, 17.936132, 18.266069>,  <17.182182, 18.278349, 18.349764>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.371611, 17.936132, 18.266069> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017252, 0.246529, -0.968982,
		0.880586, 0.455273, 0.131509,
		0.473572, -0.855541, -0.209236,
		17.513681, 17.679470, 18.203299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.692759, 18.453146, 17.977970>,  <17.182182, 18.278349, 18.349764>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.692759, 18.453146, 17.977970> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.666851, 18.068598, 17.870960>,  <17.651306, 17.837868, 17.806755>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.666851, 18.068598, 17.870960>,  <17.692759, 18.453146, 17.977970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.666851, 18.068598, 17.870960> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209951, 0.248960, -0.945484,
		0.975564, -0.117404, 0.185716,
		-0.064768, -0.961371, -0.267525,
		17.647421, 17.780186, 17.790703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.246319, 18.325689, 17.598614>,  <17.692759, 18.453146, 17.977970>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.246319, 18.325689, 17.598614> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.956814, 18.073153, 17.487204>,  <17.783112, 17.921631, 17.420359>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.956814, 18.073153, 17.487204>,  <18.246319, 18.325689, 17.598614>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.956814, 18.073153, 17.487204> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117529, 0.284948, -0.951310,
		0.679967, -0.721257, -0.132034,
		-0.723762, -0.631341, -0.278524,
		17.739685, 17.883751, 17.403646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.539404, 17.970041, 16.966051>,  <18.246319, 18.325689, 17.598614>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.539404, 17.970041, 16.966051> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.148558, 17.885691, 16.954897>,  <17.914051, 17.835079, 16.948204>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.148558, 17.885691, 16.954897>,  <18.539404, 17.970041, 16.966051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.148558, 17.885691, 16.954897> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012016, 0.185612, -0.982550,
		0.212383, -0.959727, -0.183898,
		-0.977113, -0.210887, -0.027889,
		17.855423, 17.822428, 16.946531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.378866, 17.379665, 16.409922>,  <18.539404, 17.970041, 16.966051>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.378866, 17.379665, 16.409922> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.092115, 17.651562, 16.471945>,  <17.920065, 17.814699, 16.509159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.092115, 17.651562, 16.471945>,  <18.378866, 17.379665, 16.409922>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.092115, 17.651562, 16.471945> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050095, 0.272044, -0.960980,
		-0.695398, -0.681136, -0.229074,
		-0.716877, 0.679739, 0.155057,
		17.877052, 17.855484, 16.518461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.060696, 17.288576, 16.173903>,  <18.378866, 17.379665, 16.409922>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.060696, 17.288576, 16.173903> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.818449, 16.974838, 16.227615>,  <18.673101, 16.786594, 16.259844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.818449, 16.974838, 16.227615>,  <19.060696, 17.288576, 16.173903>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.818449, 16.974838, 16.227615> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042697, -0.136478, -0.989722,
		0.794612, -0.605123, 0.049163,
		-0.605614, -0.784346, 0.134284,
		18.636765, 16.739534, 16.267900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.555132, 17.453217, 16.668095>,  <19.060696, 17.288576, 16.173903>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.555132, 17.453217, 16.668095> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.930958, 17.334986, 16.598980>,  <20.156452, 17.264048, 16.557510>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.930958, 17.334986, 16.598980>,  <19.555132, 17.453217, 16.668095>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.930958, 17.334986, 16.598980> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197409, -0.880026, 0.431953,
		-0.279734, -0.371738, -0.885189,
		0.939563, -0.295576, -0.172789,
		20.212826, 17.246313, 16.547144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.505877, 16.749014, 16.422310>,  <19.555132, 17.453217, 16.668095>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.505877, 16.749014, 16.422310> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.861038, 16.836700, 16.584087>,  <20.074135, 16.889313, 16.681154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.861038, 16.836700, 16.584087>,  <19.505877, 16.749014, 16.422310>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.861038, 16.836700, 16.584087> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115665, -0.744537, 0.657484,
		0.445253, -0.630562, -0.635721,
		0.887903, 0.219216, 0.404441,
		20.127409, 16.902466, 16.705420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.834444, 16.096495, 16.422962>,  <19.505877, 16.749014, 16.422310>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.834444, 16.096495, 16.422962> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.021297, 16.313513, 16.702227>,  <20.133410, 16.443724, 16.869785>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.021297, 16.313513, 16.702227>,  <19.834444, 16.096495, 16.422962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.021297, 16.313513, 16.702227> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174558, -0.717478, 0.674354,
		0.866785, -0.436883, -0.240452,
		0.467133, 0.542547, 0.698161,
		20.161438, 16.476276, 16.911674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.425268, 15.675266, 16.721663>,  <19.834444, 16.096495, 16.422962>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.425268, 15.675266, 16.721663> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.308081, 15.953342, 16.984228>,  <20.237768, 16.120188, 17.141768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.308081, 15.953342, 16.984228>,  <20.425268, 15.675266, 16.721663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.308081, 15.953342, 16.984228> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053295, -0.697345, 0.714751,
		0.954635, 0.174417, 0.241351,
		-0.292970, 0.695190, 0.656414,
		20.220190, 16.161900, 17.181152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.733608, 15.463227, 17.382753>,  <20.425268, 15.675266, 16.721663>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.733608, 15.463227, 17.382753> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.454435, 15.728730, 17.490318>,  <20.286932, 15.888032, 17.554857>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.454435, 15.728730, 17.490318>,  <20.733608, 15.463227, 17.382753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.454435, 15.728730, 17.490318> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186372, -0.530892, 0.826692,
		0.691487, 0.526858, 0.494233,
		-0.697933, 0.663758, 0.268914,
		20.245056, 15.927857, 17.570992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.834248, 15.561674, 18.151081>,  <20.733608, 15.463227, 17.382753>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.834248, 15.561674, 18.151081> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.461153, 15.658604, 18.044283>,  <20.237297, 15.716762, 17.980204>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.461153, 15.658604, 18.044283>,  <20.834248, 15.561674, 18.151081>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.461153, 15.658604, 18.044283> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354312, -0.478690, 0.803318,
		0.066855, 0.843881, 0.532348,
		-0.932734, 0.242323, -0.266994,
		20.181334, 15.731300, 17.964184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.579239, 15.583785, 18.772892>,  <20.834248, 15.561674, 18.151081>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.579239, 15.583785, 18.772892> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.263796, 15.564560, 18.527685>,  <20.074530, 15.553025, 18.380562>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.263796, 15.564560, 18.527685>,  <20.579239, 15.583785, 18.772892>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.263796, 15.564560, 18.527685> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509581, -0.506860, 0.695284,
		-0.344131, 0.860687, 0.375222,
		-0.788607, -0.048063, -0.613016,
		20.027214, 15.550141, 18.343781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.949186, 15.922112, 19.003067>,  <20.579239, 15.583785, 18.772892>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.949186, 15.922112, 19.003067> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.809069, 15.628608, 18.770210>,  <19.724998, 15.452505, 18.630495>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.809069, 15.628608, 18.770210>,  <19.949186, 15.922112, 19.003067>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.809069, 15.628608, 18.770210> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635461, -0.270423, 0.723229,
		-0.688103, 0.623270, -0.371549,
		-0.350292, -0.733761, -0.582143,
		19.703981, 15.408480, 18.595568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.310463, 15.871558, 19.268011>,  <19.949186, 15.922112, 19.003067>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.310463, 15.871558, 19.268011> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.330521, 15.532578, 19.056610>,  <19.342556, 15.329191, 18.929770>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.330521, 15.532578, 19.056610>,  <19.310463, 15.871558, 19.268011>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.330521, 15.532578, 19.056610> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710994, -0.401921, 0.577015,
		-0.701408, 0.346830, -0.622685,
		0.050144, -0.847448, -0.528505,
		19.345564, 15.278344, 18.898058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.599079, 15.673595, 19.186691>,  <19.310463, 15.871558, 19.268011>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.599079, 15.673595, 19.186691> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.809401, 15.351533, 19.076962>,  <18.935593, 15.158296, 19.011124>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.809401, 15.351533, 19.076962>,  <18.599079, 15.673595, 19.186691>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.809401, 15.351533, 19.076962> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750677, -0.590903, 0.295495,
		-0.400017, 0.050554, -0.915112,
		0.525804, -0.805157, -0.274321,
		18.967142, 15.109985, 18.994665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.100616, 15.237666, 18.871874>,  <18.599079, 15.673595, 19.186691>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.100616, 15.237666, 18.871874> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.400148, 15.003559, 18.996271>,  <18.579866, 14.863094, 19.070910>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.400148, 15.003559, 18.996271>,  <18.100616, 15.237666, 18.871874>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.400148, 15.003559, 18.996271> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661722, -0.633926, 0.400327,
		-0.037151, -0.505568, -0.861986,
		0.748828, -0.585268, 0.310995,
		18.624798, 14.827979, 19.089569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.858858, 14.499769, 18.822882>,  <18.100616, 15.237666, 18.871874>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.858858, 14.499769, 18.822882> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.159594, 14.527062, 19.085203>,  <18.340034, 14.543438, 19.242596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.159594, 14.527062, 19.085203>,  <17.858858, 14.499769, 18.822882>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.159594, 14.527062, 19.085203> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578964, -0.407607, 0.706156,
		0.315493, -0.910605, -0.266951,
		0.751841, 0.068232, 0.655805,
		18.385145, 14.547532, 19.281944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.903664, 13.825227, 19.044029>,  <17.858858, 14.499769, 18.822882>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.903664, 13.825227, 19.044029> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.072687, 14.052547, 19.326443>,  <18.174101, 14.188938, 19.495890>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.072687, 14.052547, 19.326443>,  <17.903664, 13.825227, 19.044029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.072687, 14.052547, 19.326443> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502894, -0.501064, 0.704296,
		0.754018, -0.652665, 0.074065,
		0.422558, 0.568298, 0.706032,
		18.199455, 14.223036, 19.538252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.029451, 13.334649, 19.627924>,  <17.903664, 13.825227, 19.044029>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.029451, 13.334649, 19.627924> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.026361, 13.700939, 19.788616>,  <18.024508, 13.920713, 19.885033>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.026361, 13.700939, 19.788616>,  <18.029451, 13.334649, 19.627924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.026361, 13.700939, 19.788616> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527423, -0.345049, 0.776380,
		0.849568, -0.205887, 0.485639,
		-0.007723, 0.915725, 0.401732,
		18.024044, 13.975657, 19.909136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.253567, 12.696993, 19.304699>,  <18.029451, 13.334649, 19.627924>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.253567, 12.696993, 19.304699> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.009298, 12.380272, 19.309195>,  <17.862738, 12.190239, 19.311892>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.009298, 12.380272, 19.309195>,  <18.253567, 12.696993, 19.304699>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.009298, 12.380272, 19.309195> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313426, 0.228643, -0.921676,
		0.727216, -0.566365, -0.387797,
		-0.610672, -0.791804, 0.011240,
		17.826097, 12.142731, 19.312567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.401199, 12.309237, 18.744061>,  <18.253567, 12.696993, 19.304699>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.401199, 12.309237, 18.744061> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.032431, 12.199530, 18.853483>,  <17.811169, 12.133705, 18.919136>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.032431, 12.199530, 18.853483>,  <18.401199, 12.309237, 18.744061>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.032431, 12.199530, 18.853483> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345855, 0.264721, -0.900171,
		0.174469, -0.924501, -0.338909,
		-0.921925, -0.274265, 0.273558,
		17.755854, 12.117249, 18.935551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.222502, 12.101385, 18.190559>,  <18.401199, 12.309237, 18.744061>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.222502, 12.101385, 18.190559> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.883652, 12.161481, 18.394445>,  <17.680342, 12.197538, 18.516777>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.883652, 12.161481, 18.394445>,  <18.222502, 12.101385, 18.190559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.883652, 12.161481, 18.394445> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461159, 0.268752, -0.845639,
		-0.264036, -0.951420, -0.158382,
		-0.847123, 0.150240, 0.509716,
		17.629515, 12.206553, 18.547359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.744251, 11.640096, 17.963573>,  <18.222502, 12.101385, 18.190559>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.744251, 11.640096, 17.963573> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.550077, 11.963709, 18.096130>,  <17.433573, 12.157877, 18.175665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.550077, 11.963709, 18.096130>,  <17.744251, 11.640096, 17.963573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.550077, 11.963709, 18.096130> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342572, 0.172719, -0.923479,
		-0.804362, -0.561813, 0.193308,
		-0.485434, 0.809033, 0.331390,
		17.404448, 12.206419, 18.195547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.095537, 11.620783, 17.561575>,  <17.744251, 11.640096, 17.963573>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.095537, 11.620783, 17.561575> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.099638, 11.978560, 17.740400>,  <17.102098, 12.193227, 17.847696>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.099638, 11.978560, 17.740400>,  <17.095537, 11.620783, 17.561575>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.099638, 11.978560, 17.740400> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446407, 0.404154, -0.798361,
		-0.894771, -0.191389, 0.403429,
		0.010250, 0.894444, 0.447063,
		17.102713, 12.246894, 17.874519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.450817, 11.819542, 17.505007>,  <17.095537, 11.620783, 17.561575>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.450817, 11.819542, 17.505007> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.671194, 12.150858, 17.545790>,  <16.803421, 12.349648, 17.570259>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.671194, 12.150858, 17.545790>,  <16.450817, 11.819542, 17.505007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.671194, 12.150858, 17.545790> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442635, 0.393599, -0.805701,
		-0.707486, 0.398765, 0.583481,
		0.550943, 0.828291, 0.101959,
		16.836477, 12.399345, 17.576378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.999727, 12.368549, 17.298380>,  <16.450817, 11.819542, 17.505007>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.999727, 12.368549, 17.298380> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.348412, 12.564357, 17.289505>,  <16.557623, 12.681841, 17.284180>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.348412, 12.564357, 17.289505>,  <15.999727, 12.368549, 17.298380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.348412, 12.564357, 17.289505> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290083, 0.479012, -0.828492,
		-0.394934, 0.728642, 0.559561,
		0.871711, 0.489519, -0.022189,
		16.609924, 12.711212, 17.282848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.826403, 13.162333, 17.318331>,  <15.999727, 12.368549, 17.298380>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.826403, 13.162333, 17.318331> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.198942, 13.165560, 17.172716>,  <16.422466, 13.167496, 17.085346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.198942, 13.165560, 17.172716>,  <15.826403, 13.162333, 17.318331>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.198942, 13.165560, 17.172716> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305729, 0.560364, -0.769754,
		0.197783, 0.828207, 0.524361,
		0.931349, 0.008068, -0.364038,
		16.478348, 13.167980, 17.063505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.976391, 13.932714, 17.171867>,  <15.826403, 13.162333, 17.318331>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.976391, 13.932714, 17.171867> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.200190, 13.692487, 16.943382>,  <16.334469, 13.548350, 16.806292>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.200190, 13.692487, 16.943382>,  <15.976391, 13.932714, 17.171867>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.200190, 13.692487, 16.943382> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206665, 0.566321, -0.797853,
		0.802654, 0.564446, 0.192738,
		0.559497, -0.600567, -0.571211,
		16.368038, 13.512317, 16.772018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.308496, 14.389452, 16.682459>,  <15.976391, 13.932714, 17.171867>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.308496, 14.389452, 16.682459> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.342905, 14.032309, 16.505642>,  <16.363550, 13.818023, 16.399551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.342905, 14.032309, 16.505642>,  <16.308496, 14.389452, 16.682459>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.342905, 14.032309, 16.505642> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104457, 0.449325, -0.887240,
		0.990802, 0.030145, 0.131916,
		0.086020, -0.892859, -0.442044,
		16.368711, 13.764451, 16.373030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.800667, 14.503572, 16.245220>,  <16.308496, 14.389452, 16.682459>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.800667, 14.503572, 16.245220> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.624296, 14.186713, 16.076418>,  <16.518475, 13.996598, 15.975136>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.624296, 14.186713, 16.076418>,  <16.800667, 14.503572, 16.245220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.624296, 14.186713, 16.076418> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052220, 0.492025, -0.869013,
		0.896023, -0.361134, -0.258313,
		-0.440927, -0.792145, -0.422007,
		16.492018, 13.949070, 15.949816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.219364, 14.262643, 15.673959>,  <16.800667, 14.503572, 16.245220>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.219364, 14.262643, 15.673959> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.849091, 14.128499, 15.603942>,  <16.626926, 14.048013, 15.561932>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.849091, 14.128499, 15.603942>,  <17.219364, 14.262643, 15.673959>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.849091, 14.128499, 15.603942> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063357, 0.593622, -0.802246,
		0.372949, -0.731538, -0.570755,
		-0.925686, -0.335359, -0.175043,
		16.571384, 14.027891, 15.551429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<15.240025, 9.759639, 24.251663> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.631407, 9.680324, 24.274670>,  <15.866236, 9.632734, 24.288473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.631407, 9.680324, 24.274670>,  <15.240025, 9.759639, 24.251663>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.631407, 9.680324, 24.274670> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166368, 0.592258, -0.788385,
		0.122263, 0.780968, 0.612487,
		0.978455, -0.198289, 0.057517,
		15.924943, 9.620837, 24.291925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.415558, 10.418763, 24.071705>,  <15.240025, 9.759639, 24.251663>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.415558, 10.418763, 24.071705> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.730731, 10.178240, 24.018650>,  <15.919835, 10.033926, 23.986816>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.730731, 10.178240, 24.018650>,  <15.415558, 10.418763, 24.071705>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.730731, 10.178240, 24.018650> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327605, 0.591752, -0.736549,
		0.521381, 0.536897, 0.663252,
		0.787932, -0.601308, -0.132638,
		15.967111, 9.997848, 23.978859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.012527, 10.781130, 24.018999>,  <15.415558, 10.418763, 24.071705>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.012527, 10.781130, 24.018999> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.174217, 10.449521, 23.864429>,  <16.271231, 10.250555, 23.771687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.174217, 10.449521, 23.864429>,  <16.012527, 10.781130, 24.018999>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.174217, 10.449521, 23.864429> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355545, 0.531672, -0.768709,
		0.842729, 0.173337, 0.509668,
		0.404222, -0.829023, -0.386426,
		16.295485, 10.200814, 23.748501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.713774, 10.908813, 23.859634>,  <16.012527, 10.781130, 24.018999>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.713774, 10.908813, 23.859634> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.641964, 10.593524, 23.624186>,  <16.598879, 10.404350, 23.482916>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.641964, 10.593524, 23.624186>,  <16.713774, 10.908813, 23.859634>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.641964, 10.593524, 23.624186> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575883, 0.400900, -0.712487,
		0.797577, -0.466886, 0.381953,
		-0.179525, -0.788224, -0.588620,
		16.588106, 10.357057, 23.447599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.337109, 10.543422, 23.608416>,  <16.713774, 10.908813, 23.859634>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.337109, 10.543422, 23.608416> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.054123, 10.457391, 23.339123>,  <16.884333, 10.405772, 23.177547>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.054123, 10.457391, 23.339123>,  <17.337109, 10.543422, 23.608416>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.054123, 10.457391, 23.339123> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573575, 0.381826, -0.724721,
		0.412926, -0.898861, -0.146767,
		-0.707463, -0.215075, -0.673230,
		16.841885, 10.392867, 23.137154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.731562, 10.233847, 23.046722>,  <17.337109, 10.543422, 23.608416>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.731562, 10.233847, 23.046722> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.372435, 10.302670, 22.884579>,  <17.156958, 10.343964, 22.787292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.372435, 10.302670, 22.884579>,  <17.731562, 10.233847, 23.046722>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.372435, 10.302670, 22.884579> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440362, 0.347273, -0.827939,
		-0.001683, -0.921845, -0.387556,
		-0.897819, 0.172058, -0.405361,
		17.103088, 10.354287, 22.762970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.754763, 9.976869, 22.347263>,  <17.731562, 10.233847, 23.046722>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.754763, 9.976869, 22.347263> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.443161, 10.227673, 22.348667>,  <17.256201, 10.378155, 22.349510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.443161, 10.227673, 22.348667>,  <17.754763, 9.976869, 22.347263>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.443161, 10.227673, 22.348667> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390876, 0.489990, -0.779182,
		-0.490274, -0.605614, -0.626787,
		-0.779004, 0.627010, 0.003509,
		17.209459, 10.415775, 22.349720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.506277, 9.951524, 21.712412>,  <17.754763, 9.976869, 22.347263>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.506277, 9.951524, 21.712412> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.357033, 10.302105, 21.834146>,  <17.267487, 10.512453, 21.907187>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.357033, 10.302105, 21.834146>,  <17.506277, 9.951524, 21.712412>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.357033, 10.302105, 21.834146> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208522, 0.398849, -0.892994,
		-0.904050, -0.269724, -0.331575,
		-0.373110, 0.876452, 0.304336,
		17.245100, 10.565041, 21.925447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.951344, 10.161146, 21.241707>,  <17.506277, 9.951524, 21.712412>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.951344, 10.161146, 21.241707> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.061182, 10.493387, 21.435490>,  <17.127085, 10.692732, 21.551760>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.061182, 10.493387, 21.435490>,  <16.951344, 10.161146, 21.241707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.061182, 10.493387, 21.435490> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181004, 0.450165, -0.874408,
		-0.944370, 0.327797, -0.026729,
		0.274595, 0.830602, 0.484455,
		17.143560, 10.742568, 21.580826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.627020, 10.696984, 20.911819>,  <16.951344, 10.161146, 21.241707>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.627020, 10.696984, 20.911819> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.921457, 10.898582, 21.092554>,  <17.098120, 11.019540, 21.200994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.921457, 10.898582, 21.092554>,  <16.627020, 10.696984, 20.911819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.921457, 10.898582, 21.092554> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214513, 0.459426, -0.861923,
		-0.641989, 0.731381, 0.230068,
		0.736094, 0.503993, 0.451837,
		17.142286, 11.049780, 21.228106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.525484, 11.369306, 20.661106>,  <16.627020, 10.696984, 20.911819>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.525484, 11.369306, 20.661106> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.897861, 11.359941, 20.806873>,  <17.121288, 11.354321, 20.894333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.897861, 11.359941, 20.806873>,  <16.525484, 11.369306, 20.661106>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.897861, 11.359941, 20.806873> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294318, 0.638836, -0.710821,
		-0.216160, 0.768987, 0.601609,
		0.930941, -0.023413, 0.364418,
		17.177143, 11.352917, 20.916199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.694113, 12.055948, 20.637579>,  <16.525484, 11.369306, 20.661106>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.694113, 12.055948, 20.637579> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.037338, 11.850595, 20.632483>,  <17.243273, 11.727382, 20.629425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.037338, 11.850595, 20.632483>,  <16.694113, 12.055948, 20.637579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.037338, 11.850595, 20.632483> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324449, 0.561177, -0.761455,
		0.398070, 0.649243, 0.648093,
		0.858064, -0.513385, -0.012741,
		17.294758, 11.696579, 20.628660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.175285, 12.571136, 20.501703>,  <16.694113, 12.055948, 20.637579>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.175285, 12.571136, 20.501703> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.328520, 12.216333, 20.398581>,  <17.420462, 12.003452, 20.336708>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.328520, 12.216333, 20.398581>,  <17.175285, 12.571136, 20.501703>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.328520, 12.216333, 20.398581> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337708, 0.394267, -0.854697,
		0.859766, 0.240362, 0.450588,
		0.383088, -0.887006, -0.257805,
		17.443447, 11.950232, 20.321239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.816864, 12.740834, 20.321085>,  <17.175285, 12.571136, 20.501703>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.816864, 12.740834, 20.321085> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.713753, 12.391278, 20.156225>,  <17.651886, 12.181545, 20.057308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.713753, 12.391278, 20.156225>,  <17.816864, 12.740834, 20.321085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.713753, 12.391278, 20.156225> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204849, 0.367438, -0.907208,
		0.944239, -0.318288, 0.084298,
		-0.257779, -0.873889, -0.412150,
		17.636419, 12.129111, 20.032579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.277687, 13.239607, 20.443586>,  <17.816864, 12.740834, 20.321085>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.277687, 13.239607, 20.443586> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.096777, 13.596353, 20.441509>,  <17.988232, 13.810400, 20.440264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.096777, 13.596353, 20.441509>,  <18.277687, 13.239607, 20.443586>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.096777, 13.596353, 20.441509> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537723, -0.268031, 0.799383,
		0.711549, 0.364332, 0.600799,
		-0.452274, 0.891864, -0.005192,
		17.961096, 13.863912, 20.439951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.275137, 13.421350, 21.193182>,  <18.277687, 13.239607, 20.443586>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.275137, 13.421350, 21.193182> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.027395, 13.689459, 21.029654>,  <17.878750, 13.850325, 20.931536>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.027395, 13.689459, 21.029654>,  <18.275137, 13.421350, 21.193182>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.027395, 13.689459, 21.029654> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512046, 0.049874, 0.857509,
		0.595154, 0.740437, 0.312321,
		-0.619355, 0.670272, -0.408820,
		17.841589, 13.890540, 20.907007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.052294, 13.870005, 21.731422>,  <18.275137, 13.421350, 21.193182>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.052294, 13.870005, 21.731422> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.774504, 13.924012, 21.448729>,  <17.607830, 13.956417, 21.279112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.774504, 13.924012, 21.448729>,  <18.052294, 13.870005, 21.731422>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.774504, 13.924012, 21.448729> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713971, -0.007607, 0.700134,
		0.089156, 0.990814, 0.101683,
		-0.694475, 0.135020, -0.706735,
		17.566160, 13.964519, 21.236708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.750397, 14.467833, 21.910500>,  <18.052294, 13.870005, 21.731422>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.750397, 14.467833, 21.910500> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.499779, 14.244754, 21.692722>,  <17.349409, 14.110907, 21.562056>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.499779, 14.244754, 21.692722>,  <17.750397, 14.467833, 21.910500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.499779, 14.244754, 21.692722> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662103, 0.012334, 0.749312,
		-0.411174, 0.829953, -0.376980,
		-0.626543, -0.557697, -0.544443,
		17.311815, 14.077445, 21.529390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.146908, 14.671831, 22.085615>,  <17.750397, 14.467833, 21.910500>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.146908, 14.671831, 22.085615> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.023584, 14.339138, 21.900936>,  <16.949591, 14.139522, 21.790129>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.023584, 14.339138, 21.900936>,  <17.146908, 14.671831, 22.085615>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.023584, 14.339138, 21.900936> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764173, -0.072516, 0.640922,
		-0.566557, 0.550419, -0.613231,
		-0.308306, -0.831733, -0.461700,
		16.931093, 14.089618, 21.762426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.450491, 14.754948, 22.023188>,  <17.146908, 14.671831, 22.085615>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.450491, 14.754948, 22.023188> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.526625, 14.362317, 22.016470>,  <16.572304, 14.126739, 22.012440>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.526625, 14.362317, 22.016470>,  <16.450491, 14.754948, 22.023188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.526625, 14.362317, 22.016470> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695012, -0.146810, 0.703851,
		-0.693349, -0.122291, -0.710150,
		0.190332, -0.981576, -0.016797,
		16.583725, 14.067844, 22.011431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.874955, 14.459182, 22.280289>,  <16.450491, 14.754948, 22.023188>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.874955, 14.459182, 22.280289> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.116743, 14.142051, 22.311369>,  <16.261816, 13.951772, 22.330017>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.116743, 14.142051, 22.311369>,  <15.874955, 14.459182, 22.280289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.116743, 14.142051, 22.311369> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449395, -0.258833, 0.855014,
		-0.657768, -0.551750, -0.512751,
		0.604471, -0.792829, 0.077701,
		16.298084, 13.904202, 22.334679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.503959, 13.969812, 22.591022>,  <15.874955, 14.459182, 22.280289>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.503959, 13.969812, 22.591022> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.877536, 13.839325, 22.649446>,  <16.101683, 13.761033, 22.684502>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.877536, 13.839325, 22.649446>,  <15.503959, 13.969812, 22.591022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.877536, 13.839325, 22.649446> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259587, -0.338162, 0.904578,
		-0.245695, -0.882740, -0.400505,
		0.933942, -0.326216, 0.146063,
		16.157719, 13.741460, 22.693266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.523743, 13.233497, 22.811935>,  <15.503959, 13.969812, 22.591022>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.523743, 13.233497, 22.811935> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.856051, 13.417741, 22.936935>,  <16.055437, 13.528288, 23.011934>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.856051, 13.417741, 22.936935>,  <15.523743, 13.233497, 22.811935>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.856051, 13.417741, 22.936935> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079968, -0.456834, 0.885950,
		0.550839, -0.761012, -0.342691,
		0.830772, 0.460612, 0.312498,
		16.105284, 13.555924, 23.030685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.727169, 12.655845, 23.257658>,  <15.523743, 13.233497, 22.811935>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.727169, 12.655845, 23.257658> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.965875, 12.964607, 23.345324>,  <16.109098, 13.149865, 23.397923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.965875, 12.964607, 23.345324>,  <15.727169, 12.655845, 23.257658>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.965875, 12.964607, 23.345324> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103484, -0.344887, 0.932922,
		0.795717, -0.534053, -0.285696,
		0.596763, 0.771907, 0.219166,
		16.144903, 13.196179, 23.411074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.377897, 12.460723, 23.458834>,  <15.727169, 12.655845, 23.257658>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.377897, 12.460723, 23.458834> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.366558, 12.824289, 23.625238>,  <16.359755, 13.042429, 23.725082>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.366558, 12.824289, 23.625238>,  <16.377897, 12.460723, 23.458834>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.366558, 12.824289, 23.625238> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350912, -0.380643, 0.855553,
		0.935979, 0.170239, -0.308159,
		-0.028350, 0.908917, 0.416013,
		16.358053, 13.096964, 23.750042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.005695, 12.609872, 23.811291>,  <16.377897, 12.460723, 23.458834>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.005695, 12.609872, 23.811291> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.728161, 12.844090, 23.978971>,  <16.561640, 12.984620, 24.079580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.728161, 12.844090, 23.978971>,  <17.005695, 12.609872, 23.811291>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.728161, 12.844090, 23.978971> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222888, -0.378919, 0.898188,
		0.684773, 0.716629, 0.132397,
		-0.693835, 0.585545, 0.419201,
		16.520010, 13.019753, 24.104733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.239758, 12.681918, 24.487144>,  <17.005695, 12.609872, 23.811291>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.239758, 12.681918, 24.487144> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.866026, 12.812773, 24.543728>,  <16.641787, 12.891285, 24.577679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.866026, 12.812773, 24.543728>,  <17.239758, 12.681918, 24.487144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.866026, 12.812773, 24.543728> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074272, -0.209472, 0.974990,
		0.348585, 0.921468, 0.171418,
		-0.934330, 0.327136, 0.141459,
		16.585728, 12.910913, 24.586166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.289024, 13.061530, 25.042244>,  <17.239758, 12.681918, 24.487144>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.289024, 13.061530, 25.042244> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.895370, 12.993043, 25.023621>,  <16.659178, 12.951951, 25.012447>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.895370, 12.993043, 25.023621>,  <17.289024, 13.061530, 25.042244>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.895370, 12.993043, 25.023621> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001529, -0.270571, 0.962699,
		-0.177429, 0.947352, 0.266540,
		-0.984132, -0.171218, -0.046559,
		16.600130, 12.941678, 25.009653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<10.798206, 13.748418, 26.511444> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.082879, 13.490964, 26.398844>,  <11.253683, 13.336492, 26.331284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.082879, 13.490964, 26.398844>,  <10.798206, 13.748418, 26.511444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.082879, 13.490964, 26.398844> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150958, 0.531467, -0.833519,
		0.686091, 0.550705, 0.475397,
		0.711681, -0.643635, -0.281502,
		11.296384, 13.297873, 26.314394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.427076, 14.146145, 26.409006>,  <10.798206, 13.748418, 26.511444>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.427076, 14.146145, 26.409006> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.486950, 13.823290, 26.180576>,  <11.522874, 13.629577, 26.043518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.486950, 13.823290, 26.180576>,  <11.427076, 14.146145, 26.409006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.486950, 13.823290, 26.180576> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172343, 0.590038, -0.788767,
		0.973598, 0.019646, 0.227424,
		0.149685, -0.807137, -0.571074,
		11.531856, 13.581149, 26.009254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.065516, 14.242726, 26.140009>,  <11.427076, 14.146145, 26.409006>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.065516, 14.242726, 26.140009> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.887999, 13.982900, 25.893072>,  <11.781487, 13.827003, 25.744911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.887999, 13.982900, 25.893072>,  <12.065516, 14.242726, 26.140009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.887999, 13.982900, 25.893072> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462864, 0.423731, -0.778594,
		0.767336, -0.631280, 0.112612,
		-0.443794, -0.649567, -0.617341,
		11.754860, 13.788030, 25.707870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.599232, 14.058359, 25.676147>,  <12.065516, 14.242726, 26.140009>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.599232, 14.058359, 25.676147> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.255744, 13.961826, 25.495323>,  <12.049651, 13.903907, 25.386829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.255744, 13.961826, 25.495323>,  <12.599232, 14.058359, 25.676147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.255744, 13.961826, 25.495323> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411851, 0.199899, -0.889055,
		0.304926, -0.949630, -0.072263,
		-0.858719, -0.241335, -0.452060,
		11.998128, 13.889427, 25.359705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.802464, 13.777314, 25.032631>,  <12.599232, 14.058359, 25.676147>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.802464, 13.777314, 25.032631> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.426111, 13.887658, 24.953997>,  <12.200300, 13.953864, 24.906816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.426111, 13.887658, 24.953997>,  <12.802464, 13.777314, 25.032631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.426111, 13.887658, 24.953997> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258153, 0.208180, -0.943408,
		-0.219323, -0.938383, -0.267086,
		-0.940880, 0.275860, -0.196587,
		12.143847, 13.970416, 24.895020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.782605, 13.638368, 24.294353>,  <12.802464, 13.777314, 25.032631>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.782605, 13.638368, 24.294353> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.460680, 13.858081, 24.384296>,  <12.267525, 13.989909, 24.438263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.460680, 13.858081, 24.384296>,  <12.782605, 13.638368, 24.294353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.460680, 13.858081, 24.384296> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073934, 0.283121, -0.956230,
		-0.588904, -0.786212, -0.187249,
		-0.804814, 0.549284, 0.224859,
		12.219235, 14.022866, 24.451754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.220597, 13.472273, 23.803461>,  <12.782605, 13.638368, 24.294353>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.220597, 13.472273, 23.803461> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.160795, 13.845322, 23.934832>,  <12.124914, 14.069151, 24.013653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.160795, 13.845322, 23.934832>,  <12.220597, 13.472273, 23.803461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.160795, 13.845322, 23.934832> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144064, 0.349160, -0.925923,
		-0.978209, -0.091116, -0.186559,
		-0.149505, 0.932623, 0.328425,
		12.115944, 14.125109, 24.033360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.882445, 13.828547, 23.206327>,  <12.220597, 13.472273, 23.803461>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.882445, 13.828547, 23.206327> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.979708, 14.128542, 23.452383>,  <12.038065, 14.308538, 23.600016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.979708, 14.128542, 23.452383>,  <11.882445, 13.828547, 23.206327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.979708, 14.128542, 23.452383> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076525, 0.617362, -0.782949,
		-0.966964, 0.237453, 0.092723,
		0.243157, 0.749987, 0.615138,
		12.052654, 14.353539, 23.636925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.400065, 14.471612, 23.019762>,  <11.882445, 13.828547, 23.206327>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.400065, 14.471612, 23.019762> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.731964, 14.597112, 23.204405>,  <11.931104, 14.672411, 23.315191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.731964, 14.597112, 23.204405>,  <11.400065, 14.471612, 23.019762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.731964, 14.597112, 23.204405> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139480, 0.684246, -0.715788,
		-0.540431, 0.658308, 0.523989,
		0.829747, 0.313749, 0.461608,
		11.980888, 14.691236, 23.342888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.384928, 15.121411, 23.063026>,  <11.400065, 14.471612, 23.019762>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.384928, 15.121411, 23.063026> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.776850, 15.046963, 23.092257>,  <12.012003, 15.002294, 23.109795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.776850, 15.046963, 23.092257>,  <11.384928, 15.121411, 23.063026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.776850, 15.046963, 23.092257> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171753, 0.596284, -0.784185,
		0.102380, 0.780900, 0.616209,
		0.979806, -0.186121, 0.073074,
		12.070791, 14.991126, 23.114180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.677778, 15.721000, 22.869579>,  <11.384928, 15.121411, 23.063026>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.677778, 15.721000, 22.869579> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.981838, 15.465569, 22.821594>,  <12.164274, 15.312310, 22.792803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.981838, 15.465569, 22.821594>,  <11.677778, 15.721000, 22.869579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.981838, 15.465569, 22.821594> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160800, 0.363773, -0.917503,
		0.629535, 0.678151, 0.379206,
		0.760151, -0.638577, -0.119962,
		12.209884, 15.273995, 22.785606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.145467, 16.082355, 22.440842>,  <11.677778, 15.721000, 22.869579>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.145467, 16.082355, 22.440842> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.298752, 15.715665, 22.395660>,  <12.390723, 15.495650, 22.368551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.298752, 15.715665, 22.395660>,  <12.145467, 16.082355, 22.440842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.298752, 15.715665, 22.395660> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241185, 0.217358, -0.945825,
		0.891615, 0.335210, 0.304395,
		0.383213, -0.916728, -0.112953,
		12.413715, 15.440646, 22.361774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.828156, 16.157518, 22.062454>,  <12.145467, 16.082355, 22.440842>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.828156, 16.157518, 22.062454> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.703672, 15.782054, 22.003036>,  <12.628982, 15.556775, 21.967386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.703672, 15.782054, 22.003036>,  <12.828156, 16.157518, 22.062454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.703672, 15.782054, 22.003036> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275497, 0.060484, -0.959397,
		0.909533, -0.339497, 0.239775,
		-0.311210, -0.938661, -0.148543,
		12.610310, 15.500456, 21.958473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.353036, 15.753440, 21.625626>,  <12.828156, 16.157518, 22.062454>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.353036, 15.753440, 21.625626> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.018117, 15.547734, 21.551367>,  <12.817165, 15.424311, 21.506811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.018117, 15.547734, 21.551367>,  <13.353036, 15.753440, 21.625626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.018117, 15.547734, 21.551367> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200176, 0.027632, -0.979370,
		0.508784, -0.857187, 0.079807,
		-0.837298, -0.514263, -0.185647,
		12.766928, 15.393456, 21.495672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.123788, 15.859363, 21.679636>,  <13.353036, 15.753440, 21.625626>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.123788, 15.859363, 21.679636> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.187286, 16.252272, 21.639755>,  <14.225386, 16.488018, 21.615828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.187286, 16.252272, 21.639755>,  <14.123788, 15.859363, 21.679636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.187286, 16.252272, 21.639755> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058675, 0.110188, 0.992178,
		0.985575, -0.151654, 0.075126,
		0.158746, 0.982273, -0.099700,
		14.234910, 16.546953, 21.609846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.673059, 16.018061, 22.056139>,  <14.123788, 15.859363, 21.679636>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.673059, 16.018061, 22.056139> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.461375, 16.357365, 22.048222>,  <14.334365, 16.560947, 22.043470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.461375, 16.357365, 22.048222>,  <14.673059, 16.018061, 22.056139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.461375, 16.357365, 22.048222> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110067, 0.091762, 0.989679,
		0.841322, 0.521568, -0.141927,
		-0.529209, 0.848261, -0.019794,
		14.302612, 16.611843, 22.042284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.994616, 16.542927, 22.537392>,  <14.673059, 16.018061, 22.056139>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.994616, 16.542927, 22.537392> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.609059, 16.642197, 22.498762>,  <14.377726, 16.701757, 22.475584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.609059, 16.642197, 22.498762>,  <14.994616, 16.542927, 22.537392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.609059, 16.642197, 22.498762> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060994, 0.147260, 0.987215,
		0.259222, 0.957457, -0.126805,
		-0.963890, 0.248173, -0.096572,
		14.319892, 16.716648, 22.469791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.907360, 17.114441, 23.021969>,  <14.994616, 16.542927, 22.537392>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.907360, 17.114441, 23.021969> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.536222, 16.971388, 22.979628>,  <14.313540, 16.885557, 22.954224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.536222, 16.971388, 22.979628>,  <14.907360, 17.114441, 23.021969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.536222, 16.971388, 22.979628> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103559, -0.025617, 0.994293,
		-0.358302, 0.933511, -0.013267,
		-0.927844, -0.357631, -0.105852,
		14.257869, 16.864098, 22.947872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.629974, 17.386042, 23.536003>,  <14.907360, 17.114441, 23.021969>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.629974, 17.386042, 23.536003> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.383942, 17.096842, 23.410179>,  <14.236322, 16.923323, 23.334684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.383942, 17.096842, 23.410179>,  <14.629974, 17.386042, 23.536003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.383942, 17.096842, 23.410179> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180988, -0.258833, 0.948815,
		-0.767409, 0.640530, 0.028349,
		-0.615082, -0.722998, -0.314559,
		14.199417, 16.879942, 23.315811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.985265, 17.380358, 23.948620>,  <14.629974, 17.386042, 23.536003>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.985265, 17.380358, 23.948620> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.001868, 17.017521, 23.781069>,  <14.011830, 16.799818, 23.680538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.001868, 17.017521, 23.781069>,  <13.985265, 17.380358, 23.948620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.001868, 17.017521, 23.781069> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191554, -0.418687, 0.887698,
		-0.980604, 0.043392, -0.191136,
		0.041508, -0.907093, -0.418878,
		14.014320, 16.745394, 23.655405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.683321, 16.947115, 24.450432>,  <13.985265, 17.380358, 23.948620>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.683321, 16.947115, 24.450432> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.831309, 16.674484, 24.197899>,  <13.920102, 16.510906, 24.046379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.831309, 16.674484, 24.197899>,  <13.683321, 16.947115, 24.450432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.831309, 16.674484, 24.197899> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068165, -0.697631, 0.713207,
		-0.926540, -0.220831, -0.304562,
		0.369971, -0.681575, -0.631330,
		13.942301, 16.470013, 24.008499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.244346, 16.367519, 24.482725>,  <13.683321, 16.947115, 24.450432>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.244346, 16.367519, 24.482725> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.567645, 16.207077, 24.310284>,  <13.761624, 16.110811, 24.206820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.567645, 16.207077, 24.310284>,  <13.244346, 16.367519, 24.482725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.567645, 16.207077, 24.310284> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043336, -0.689617, 0.722877,
		-0.587242, -0.602948, -0.540001,
		0.808250, -0.401102, -0.431102,
		13.810120, 16.086746, 24.180952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.187433, 15.666315, 24.369768>,  <13.244346, 16.367519, 24.482725>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.187433, 15.666315, 24.369768> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.584052, 15.715054, 24.387604>,  <13.822023, 15.744296, 24.398306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.584052, 15.715054, 24.387604>,  <13.187433, 15.666315, 24.369768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.584052, 15.715054, 24.387604> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033857, -0.574744, 0.817633,
		0.125253, -0.809211, -0.574011,
		0.991547, 0.121845, 0.044590,
		13.881516, 15.751607, 24.400980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.456685, 14.986590, 24.607206>,  <13.187433, 15.666315, 24.369768>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.456685, 14.986590, 24.607206> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.785376, 15.211153, 24.646372>,  <13.982590, 15.345891, 24.669870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.785376, 15.211153, 24.646372>,  <13.456685, 14.986590, 24.607206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.785376, 15.211153, 24.646372> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274024, -0.539892, 0.795882,
		0.499676, -0.627167, -0.597482,
		0.821727, 0.561407, 0.097912,
		14.031894, 15.379575, 24.675745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.090191, 14.550493, 24.758915>,  <13.456685, 14.986590, 24.607206>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.090191, 14.550493, 24.758915> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.163805, 14.913225, 24.910593>,  <14.207973, 15.130864, 25.001600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.163805, 14.913225, 24.910593>,  <14.090191, 14.550493, 24.758915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.163805, 14.913225, 24.910593> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215759, -0.413647, 0.884502,
		0.958947, -0.080964, -0.271782,
		0.184035, 0.906830, 0.379197,
		14.219015, 15.185274, 25.024351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.493644, 14.362223, 25.179108>,  <14.090191, 14.550493, 24.758915>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.493644, 14.362223, 25.179108> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.422318, 14.734064, 25.308130>,  <14.379523, 14.957169, 25.385544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.422318, 14.734064, 25.308130>,  <14.493644, 14.362223, 25.179108>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.422318, 14.734064, 25.308130> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069456, -0.315102, 0.946513,
		0.981519, 0.191179, -0.008380,
		-0.178313, 0.929603, 0.322557,
		14.368825, 15.012945, 25.404898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.021036, 14.454042, 25.603872>,  <14.493644, 14.362223, 25.179108>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.021036, 14.454042, 25.603872> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.738021, 14.720180, 25.699125>,  <14.568212, 14.879862, 25.756277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.738021, 14.720180, 25.699125>,  <15.021036, 14.454042, 25.603872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.738021, 14.720180, 25.699125> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018232, -0.319678, 0.947351,
		0.706439, 0.674629, 0.214054,
		-0.707539, 0.665343, 0.238133,
		14.525760, 14.919783, 25.770565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.359305, 14.964923, 26.118626>,  <15.021036, 14.454042, 25.603872>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.359305, 14.964923, 26.118626> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.963858, 14.939439, 26.173136>,  <14.726589, 14.924149, 26.205841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.963858, 14.939439, 26.173136>,  <15.359305, 14.964923, 26.118626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.963858, 14.939439, 26.173136> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150417, -0.405675, 0.901556,
		-0.002154, 0.911794, 0.410641,
		-0.988620, -0.063709, 0.136276,
		14.667272, 14.920326, 26.214018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.863228, 15.384389, 26.531845>,  <15.359305, 14.964923, 26.118626>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.863228, 15.384389, 26.531845> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.237064, 15.242193, 26.526655>,  <16.461367, 15.156876, 26.523542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.237064, 15.242193, 26.526655>,  <15.863228, 15.384389, 26.531845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.237064, 15.242193, 26.526655> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185311, 0.517669, -0.835272,
		0.303645, 0.778233, 0.549684,
		0.934591, -0.355489, -0.012973,
		16.517441, 15.135547, 26.522764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.282707, 15.944595, 26.378441>,  <15.863228, 15.384389, 26.531845>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.282707, 15.944595, 26.378441> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.506163, 15.622865, 26.297462>,  <16.640236, 15.429827, 26.248875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.506163, 15.622865, 26.297462>,  <16.282707, 15.944595, 26.378441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.506163, 15.622865, 26.297462> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369291, 0.459763, -0.807615,
		0.742663, 0.376402, 0.553871,
		0.558637, -0.804325, -0.202447,
		16.673754, 15.381567, 26.236729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.920729, 16.182373, 26.109137>,  <16.282707, 15.944595, 26.378441>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.920729, 16.182373, 26.109137> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.937620, 15.801236, 25.988930>,  <16.947756, 15.572555, 25.916805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.937620, 15.801236, 25.988930>,  <16.920729, 16.182373, 26.109137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.937620, 15.801236, 25.988930> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408636, 0.290948, -0.865081,
		0.911720, -0.086271, 0.401651,
		0.042228, -0.952841, -0.300517,
		16.950289, 15.515384, 25.898775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.646729, 16.051691, 25.843533>,  <16.920729, 16.182373, 26.109137>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.646729, 16.051691, 25.843533> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.378744, 15.799778, 25.686293>,  <17.217953, 15.648630, 25.591949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.378744, 15.799778, 25.686293>,  <17.646729, 16.051691, 25.843533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.378744, 15.799778, 25.686293> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292294, 0.262971, -0.919462,
		0.682433, -0.730905, 0.007901,
		-0.669962, -0.629781, -0.393099,
		17.177755, 15.610844, 25.568363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.975584, 15.764958, 25.271118>,  <17.646729, 16.051691, 25.843533>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.975584, 15.764958, 25.271118> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.581631, 15.760462, 25.201973>,  <17.345259, 15.757764, 25.160486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.581631, 15.760462, 25.201973>,  <17.975584, 15.764958, 25.271118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.581631, 15.760462, 25.201973> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164138, 0.258419, -0.951987,
		0.055371, -0.965968, -0.252667,
		-0.984882, -0.011240, -0.172861,
		17.286165, 15.757090, 25.150114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.019766, 15.523994, 24.638361>,  <17.975584, 15.764958, 25.271118>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.019766, 15.523994, 24.638361> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.637262, 15.638806, 24.660936>,  <17.407761, 15.707693, 24.674482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.637262, 15.638806, 24.660936>,  <18.019766, 15.523994, 24.638361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.637262, 15.638806, 24.660936> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025169, 0.111489, -0.993447,
		-0.291441, -0.951412, -0.099388,
		-0.956258, 0.287029, 0.056439,
		17.350386, 15.724915, 24.677868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.823727, 15.370548, 24.022717>,  <18.019766, 15.523994, 24.638361>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.823727, 15.370548, 24.022717> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.516140, 15.594730, 24.145735>,  <17.331589, 15.729239, 24.219545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.516140, 15.594730, 24.145735>,  <17.823727, 15.370548, 24.022717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.516140, 15.594730, 24.145735> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237939, 0.195600, -0.951381,
		-0.593361, -0.804756, -0.017055,
		-0.768965, 0.560455, 0.307544,
		17.285450, 15.762867, 24.237999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.227800, 15.149690, 23.709641>,  <17.823727, 15.370548, 24.022717>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.227800, 15.149690, 23.709641> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.183434, 15.538076, 23.794420>,  <17.156815, 15.771109, 23.845287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.183434, 15.538076, 23.794420>,  <17.227800, 15.149690, 23.709641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.183434, 15.538076, 23.794420> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131620, 0.197033, -0.971521,
		-0.985076, -0.135653, 0.105944,
		-0.110915, 0.970966, 0.211947,
		17.150160, 15.829367, 23.858004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.832727, 15.358369, 23.130190>,  <17.227800, 15.149690, 23.709641>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.832727, 15.358369, 23.130190> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.032612, 15.661952, 23.297174>,  <17.152542, 15.844102, 23.397366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.032612, 15.661952, 23.297174>,  <16.832727, 15.358369, 23.130190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.032612, 15.661952, 23.297174> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347229, 0.266010, -0.899261,
		-0.793550, 0.594325, -0.130604,
		0.499711, 0.758958, 0.417459,
		17.182526, 15.889639, 23.422413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.605154, 15.872944, 22.783962>,  <16.832727, 15.358369, 23.130190>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.605154, 15.872944, 22.783962> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.957193, 15.983694, 22.938244>,  <17.168417, 16.050144, 23.030813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.957193, 15.983694, 22.938244>,  <16.605154, 15.872944, 22.783962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.957193, 15.983694, 22.938244> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326311, 0.237376, -0.914972,
		-0.344891, 0.931124, 0.118567,
		0.880097, 0.276876, 0.385705,
		17.221222, 16.066757, 23.053955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.732985, 16.483725, 22.580711>,  <16.605154, 15.872944, 22.783962>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.732985, 16.483725, 22.580711> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.091557, 16.325974, 22.661583>,  <17.306700, 16.231323, 22.710106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.091557, 16.325974, 22.661583>,  <16.732985, 16.483725, 22.580711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.091557, 16.325974, 22.661583> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271146, 0.127205, -0.954096,
		0.350557, 0.910101, 0.220965,
		0.896432, -0.394379, 0.202178,
		17.360485, 16.207661, 22.722237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.134409, 17.038912, 22.371359>,  <16.732985, 16.483725, 22.580711>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.134409, 17.038912, 22.371359> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.384121, 16.727589, 22.398222>,  <17.533947, 16.540794, 22.414339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.384121, 16.727589, 22.398222>,  <17.134409, 17.038912, 22.371359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.384121, 16.727589, 22.398222> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364162, 0.213878, -0.906445,
		0.691131, 0.590330, 0.416951,
		0.624278, -0.778310, 0.067158,
		17.571404, 16.494095, 22.418369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.911217, 17.230192, 22.194178>,  <17.134409, 17.038912, 22.371359>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.911217, 17.230192, 22.194178> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.862783, 16.839619, 22.122721>,  <17.833723, 16.605274, 22.079847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.862783, 16.839619, 22.122721>,  <17.911217, 17.230192, 22.194178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.862783, 16.839619, 22.122721> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393577, 0.117989, -0.911689,
		0.911283, -0.180699, 0.370016,
		-0.121083, -0.976436, -0.178640,
		17.826458, 16.546688, 22.069128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.555876, 16.964577, 21.915031>,  <17.911217, 17.230192, 22.194178>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.555876, 16.964577, 21.915031> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.275120, 16.700464, 21.808165>,  <18.106667, 16.541996, 21.744045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.275120, 16.700464, 21.808165>,  <18.555876, 16.964577, 21.915031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.275120, 16.700464, 21.808165> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263851, 0.107382, -0.958568,
		0.661614, -0.743302, 0.098845,
		-0.701890, -0.660282, -0.267166,
		18.064552, 16.502380, 21.728014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<14.372861, 18.987379, 17.125462> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.639907, 18.722292, 17.261162>,  <14.800135, 18.563240, 17.342583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.639907, 18.722292, 17.261162>,  <14.372861, 18.987379, 17.125462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.639907, 18.722292, 17.261162> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294920, -0.653808, -0.696820,
		0.683601, 0.365156, -0.631942,
		0.667616, -0.662719, 0.339252,
		14.840192, 18.523476, 17.362938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.165350, 19.594891, 17.453802>,  <14.372861, 18.987379, 17.125462>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.165350, 19.594891, 17.453802> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.188497, 19.984613, 17.540871>,  <14.202384, 20.218447, 17.593111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.188497, 19.984613, 17.540871>,  <14.165350, 19.594891, 17.453802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.188497, 19.984613, 17.540871> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.995052, 0.038650, 0.091526,
		0.080761, -0.221888, 0.971722,
		0.057866, 0.974306, 0.217669,
		14.205856, 20.276905, 17.606171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.757918, 19.710247, 18.130592>,  <14.165350, 19.594891, 17.453802>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.757918, 19.710247, 18.130592> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.764226, 20.021910, 17.879940>,  <13.768010, 20.208908, 17.729549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.764226, 20.021910, 17.879940>,  <13.757918, 19.710247, 18.130592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.764226, 20.021910, 17.879940> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.999835, 0.006602, -0.016951,
		-0.009070, 0.626793, 0.779133,
		0.015769, 0.779158, -0.626630,
		13.768956, 20.255657, 17.691952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.179064, 20.088997, 18.254906>,  <13.757918, 19.710247, 18.130592>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.179064, 20.088997, 18.254906> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.286376, 20.228996, 17.895901>,  <13.350763, 20.312996, 17.680498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.286376, 20.228996, 17.895901>,  <13.179064, 20.088997, 18.254906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.286376, 20.228996, 17.895901> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.955824, 0.212871, -0.202699,
		0.120110, 0.912244, 0.391644,
		0.268281, 0.349997, -0.897512,
		13.366860, 20.333996, 17.626648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.618532, 20.607368, 17.973814>,  <13.179064, 20.088997, 18.254906>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.618532, 20.607368, 17.973814> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.818772, 20.479971, 17.651831>,  <12.938917, 20.403532, 17.458641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.818772, 20.479971, 17.651831>,  <12.618532, 20.607368, 17.973814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.818772, 20.479971, 17.651831> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854244, -0.031118, -0.518940,
		0.140231, 0.947414, -0.287650,
		0.500602, -0.318495, -0.804959,
		12.968953, 20.384422, 17.410343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.011592, 20.374149, 17.602707>,  <12.618532, 20.607368, 17.973814>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.011592, 20.374149, 17.602707> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.950197, 20.735361, 17.763195>,  <11.913361, 20.952089, 17.859488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.950197, 20.735361, 17.763195>,  <12.011592, 20.374149, 17.602707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.950197, 20.735361, 17.763195> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.982784, -0.181764, 0.033134,
		0.102848, -0.389226, 0.915383,
		-0.153487, 0.903031, 0.401219,
		11.904151, 21.006269, 17.883560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.637722, 20.364052, 18.250381>,  <12.011592, 20.374149, 17.602707>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.637722, 20.364052, 18.250381> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.577535, 20.700424, 18.042461>,  <11.541422, 20.902248, 17.917709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.577535, 20.700424, 18.042461>,  <11.637722, 20.364052, 18.250381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.577535, 20.700424, 18.042461> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.947184, -0.273245, -0.167869,
		-0.283200, 0.467089, 0.837631,
		-0.150469, 0.840931, -0.519802,
		11.532393, 20.952703, 17.886520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.256316, 20.857571, 18.477840>,  <11.637722, 20.364052, 18.250381>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.256316, 20.857571, 18.477840> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.188377, 20.932375, 18.090815>,  <11.147614, 20.977257, 17.858599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.188377, 20.932375, 18.090815>,  <11.256316, 20.857571, 18.477840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.188377, 20.932375, 18.090815> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.984950, -0.064122, 0.160505,
		-0.032026, 0.980263, 0.195087,
		-0.169847, 0.187011, -0.967563,
		11.137424, 20.988478, 17.800545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.700373, 20.437593, 18.763649>,  <11.256316, 20.857571, 18.477840>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.700373, 20.437593, 18.763649> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.060551, 20.310699, 18.882685>,  <11.276658, 20.234562, 18.954105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.060551, 20.310699, 18.882685>,  <10.700373, 20.437593, 18.763649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.060551, 20.310699, 18.882685> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223991, -0.248288, -0.942434,
		0.372862, 0.915267, -0.152511,
		0.900446, -0.317236, 0.297589,
		11.330685, 20.215528, 18.971962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.233535, 19.908886, 19.090370>,  <10.700373, 20.437593, 18.763649>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.233535, 19.908886, 19.090370> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.974365, 19.947893, 19.392546>,  <9.818864, 19.971296, 19.573851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.974365, 19.947893, 19.392546>,  <10.233535, 19.908886, 19.090370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.974365, 19.947893, 19.392546> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554838, -0.739920, -0.380359,
		0.521872, -0.665589, 0.533518,
		-0.647924, 0.097517, 0.755437,
		9.779988, 19.977148, 19.619177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.202522, 19.268070, 19.546703>,  <10.233535, 19.908886, 19.090370>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.202522, 19.268070, 19.546703> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.865414, 19.481449, 19.575466>,  <9.663149, 19.609476, 19.592724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.865414, 19.481449, 19.575466>,  <10.202522, 19.268070, 19.546703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.865414, 19.481449, 19.575466> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531391, -0.803247, -0.269105,
		-0.085793, -0.265006, 0.960423,
		-0.842771, 0.533448, 0.071909,
		9.612582, 19.641483, 19.597038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.725909, 18.849644, 19.918695>,  <10.202522, 19.268070, 19.546703>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.725909, 18.849644, 19.918695> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.539744, 19.121038, 19.691347>,  <9.428045, 19.283875, 19.554937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.539744, 19.121038, 19.691347>,  <9.725909, 18.849644, 19.918695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.539744, 19.121038, 19.691347> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606151, -0.712269, -0.353914,
		-0.644958, 0.179801, 0.742766,
		-0.465415, 0.678488, -0.568370,
		9.400121, 19.324585, 19.520836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.988811, 18.672935, 19.966661>,  <9.725909, 18.849644, 19.918695>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.988811, 18.672935, 19.966661> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.020546, 18.888332, 19.631107>,  <9.039587, 19.017570, 19.429775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.020546, 18.888332, 19.631107>,  <8.988811, 18.672935, 19.966661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.020546, 18.888332, 19.631107> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657781, -0.604042, -0.449953,
		-0.749019, 0.587502, 0.306288,
		0.079338, 0.538494, -0.838886,
		9.044347, 19.049881, 19.379442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.346513, 18.907652, 19.781342>,  <8.988811, 18.672935, 19.966661>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.346513, 18.907652, 19.781342> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.549994, 18.869150, 19.439123>,  <8.672082, 18.846050, 19.233791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.549994, 18.869150, 19.439123>,  <8.346513, 18.907652, 19.781342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.549994, 18.869150, 19.439123> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753679, -0.530135, -0.388490,
		-0.416161, 0.842432, -0.342225,
		0.508702, -0.096253, -0.855545,
		8.702604, 18.840275, 19.182459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.818702, 18.653421, 19.416378>,  <8.346513, 18.907652, 19.781342>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.818702, 18.653421, 19.416378> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.138368, 18.612280, 19.179478>,  <8.330167, 18.587595, 19.037338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.138368, 18.612280, 19.179478>,  <7.818702, 18.653421, 19.416378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.138368, 18.612280, 19.179478> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523891, -0.602277, -0.602330,
		-0.294746, 0.791634, -0.535201,
		0.799164, -0.102853, -0.592249,
		8.378117, 18.581425, 19.001802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.519440, 18.567688, 18.820953>,  <7.818702, 18.653421, 19.416378>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.519440, 18.567688, 18.820953> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.895784, 18.460217, 18.738398>,  <8.121590, 18.395733, 18.688864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.895784, 18.460217, 18.738398>,  <7.519440, 18.567688, 18.820953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.895784, 18.460217, 18.738398> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311641, -0.447345, -0.838309,
		0.132908, 0.853050, -0.504620,
		0.940859, -0.268679, -0.206389,
		8.178041, 18.379614, 18.676481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.675339, 18.806664, 18.123047>,  <7.519440, 18.567688, 18.820953>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.675339, 18.806664, 18.123047> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.918796, 18.506628, 18.226522>,  <8.064871, 18.326607, 18.288609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.918796, 18.506628, 18.226522>,  <7.675339, 18.806664, 18.123047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.918796, 18.506628, 18.226522> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161246, -0.436162, -0.885304,
		0.776887, 0.497121, -0.386415,
		0.608643, -0.750089, 0.258690,
		8.101389, 18.281601, 18.304129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.016091, 18.643566, 17.597191>,  <7.675339, 18.806664, 18.123047>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.016091, 18.643566, 17.597191> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.095345, 18.312403, 17.807072>,  <8.142899, 18.113705, 17.933001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.095345, 18.312403, 17.807072>,  <8.016091, 18.643566, 17.597191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.095345, 18.312403, 17.807072> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161148, -0.555545, -0.815721,
		0.966837, 0.077069, -0.243489,
		0.198136, -0.827907, 0.524702,
		8.154786, 18.064030, 17.964481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.562420, 18.206028, 17.286036>,  <8.016091, 18.643566, 17.597191>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.562420, 18.206028, 17.286036> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.319471, 17.987589, 17.516817>,  <8.173702, 17.856525, 17.655287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.319471, 17.987589, 17.516817>,  <8.562420, 18.206028, 17.286036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.319471, 17.987589, 17.516817> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273067, -0.538494, -0.797157,
		0.746013, -0.641717, 0.177944,
		-0.607371, -0.546099, 0.576955,
		8.137260, 17.823759, 17.689903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.659261, 17.545637, 17.085447>,  <8.562420, 18.206028, 17.286036>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.659261, 17.545637, 17.085447> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.308672, 17.504469, 17.273577>,  <8.098318, 17.479769, 17.386454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.308672, 17.504469, 17.273577>,  <8.659261, 17.545637, 17.085447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.308672, 17.504469, 17.273577> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277008, -0.691192, -0.667473,
		0.393779, -0.715305, 0.577301,
		-0.876473, -0.102920, 0.470322,
		8.045730, 17.473593, 17.414673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.518220, 16.762417, 17.191586>,  <8.659261, 17.545637, 17.085447>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.518220, 16.762417, 17.191586> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.152652, 16.905317, 17.268652>,  <7.933311, 16.991058, 17.314892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.152652, 16.905317, 17.268652>,  <8.518220, 16.762417, 17.191586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.152652, 16.905317, 17.268652> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393072, -0.660637, -0.639572,
		-0.101205, -0.660250, 0.744196,
		-0.913921, 0.357251, 0.192666,
		7.878476, 17.012493, 17.326452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.050541, 16.229628, 17.386614>,  <8.518220, 16.762417, 17.191586>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.050541, 16.229628, 17.386614> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.800901, 16.514099, 17.257170>,  <7.651117, 16.684782, 17.179502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.800901, 16.514099, 17.257170>,  <8.050541, 16.229628, 17.386614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.800901, 16.514099, 17.257170> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463036, -0.670248, -0.579970,
		-0.629361, -0.212117, 0.747603,
		-0.624102, 0.711178, -0.323610,
		7.613671, 16.727453, 17.160086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.345662, 15.837279, 17.489258>,  <8.050541, 16.229628, 17.386614>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.345662, 15.837279, 17.489258> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.273158, 16.135473, 17.232697>,  <7.229655, 16.314390, 17.078760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.273158, 16.135473, 17.232697>,  <7.345662, 15.837279, 17.489258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.273158, 16.135473, 17.232697> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349565, -0.658453, -0.666516,
		-0.919211, 0.103398, 0.379947,
		-0.181261, 0.745485, -0.641402,
		7.218779, 16.359119, 17.040276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.733673, 15.631614, 17.135149>,  <7.345662, 15.837279, 17.489258>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.733673, 15.631614, 17.135149> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.840882, 15.951570, 16.920361>,  <6.905208, 16.143543, 16.791487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.840882, 15.951570, 16.920361>,  <6.733673, 15.631614, 17.135149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.840882, 15.951570, 16.920361> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457791, -0.384677, -0.801530,
		-0.847697, 0.460650, 0.263080,
		0.268024, 0.799891, -0.536971,
		6.921289, 16.191536, 16.759270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.086252, 15.819472, 16.679409>,  <6.733673, 15.631614, 17.135149>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.086252, 15.819472, 16.679409> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.405586, 15.972243, 16.493166>,  <6.597186, 16.063906, 16.381420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.405586, 15.972243, 16.493166>,  <6.086252, 15.819472, 16.679409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.405586, 15.972243, 16.493166> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146427, -0.626851, -0.765256,
		-0.584140, 0.679108, -0.444513,
		0.798335, 0.381928, -0.465609,
		6.645086, 16.086823, 16.353483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.836700, 15.847317, 16.013760>,  <6.086252, 15.819472, 16.679409>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.836700, 15.847317, 16.013760> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.233831, 15.873054, 15.973451>,  <6.472109, 15.888495, 15.949265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.233831, 15.873054, 15.973451>,  <5.836700, 15.847317, 16.013760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.233831, 15.873054, 15.973451> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034482, -0.652956, -0.756611,
		-0.114482, 0.754658, -0.646053,
		0.992827, 0.064341, -0.100774,
		6.531679, 15.892356, 15.943218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.948251, 15.935494, 15.252543>,  <5.836700, 15.847317, 16.013760>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.948251, 15.935494, 15.252543> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.299994, 15.805788, 15.392018>,  <6.511040, 15.727964, 15.475703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.299994, 15.805788, 15.392018>,  <5.948251, 15.935494, 15.252543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.299994, 15.805788, 15.392018> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093509, -0.600426, -0.794195,
		0.466891, 0.730986, -0.497667,
		0.879357, -0.324266, 0.348687,
		6.563801, 15.708508, 15.496624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.358047, 15.889215, 14.682394>,  <5.948251, 15.935494, 15.252543>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.358047, 15.889215, 14.682394> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.539988, 15.656672, 14.952249>,  <6.649153, 15.517147, 15.114161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.539988, 15.656672, 14.952249>,  <6.358047, 15.889215, 14.682394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.539988, 15.656672, 14.952249> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241451, -0.648660, -0.721763,
		0.857211, 0.491187, -0.154675,
		0.454852, -0.581357, 0.674636,
		6.676444, 15.482265, 15.154639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.910477, 15.630527, 14.213363>,  <6.358047, 15.889215, 14.682394>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.910477, 15.630527, 14.213363> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.872370, 15.396125, 14.535238>,  <6.849505, 15.255484, 14.728363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.872370, 15.396125, 14.535238>,  <6.910477, 15.630527, 14.213363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.872370, 15.396125, 14.535238> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176376, -0.805512, -0.565722,
		0.979702, 0.088033, 0.180096,
		-0.095267, -0.586004, 0.804689,
		6.843790, 15.220324, 14.776645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.493698, 15.167202, 14.159944>,  <6.910477, 15.630527, 14.213363>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.493698, 15.167202, 14.159944> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.205604, 14.998614, 14.380352>,  <7.032747, 14.897462, 14.512597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.205604, 14.998614, 14.380352>,  <7.493698, 15.167202, 14.159944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.205604, 14.998614, 14.380352> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090916, -0.844784, -0.527327,
		0.687745, -0.329703, 0.646763,
		-0.720237, -0.421468, 0.551021,
		6.989532, 14.872174, 14.545658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.715614, 14.492020, 14.270810>,  <7.493698, 15.167202, 14.159944>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.715614, 14.492020, 14.270810> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.320224, 14.472761, 14.328220>,  <7.082990, 14.461206, 14.362666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.320224, 14.472761, 14.328220>,  <7.715614, 14.492020, 14.270810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.320224, 14.472761, 14.328220> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021236, -0.894603, -0.446357,
		0.149889, -0.444260, 0.883270,
		-0.988475, -0.048146, 0.143525,
		7.023681, 14.458317, 14.371278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.503635, 14.468862, 14.466350>,  <7.715614, 14.492020, 14.270810>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.503635, 14.468862, 14.466350> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.848768, 14.670226, 14.448028>,  <9.055848, 14.791044, 14.437035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.848768, 14.670226, 14.448028>,  <8.503635, 14.468862, 14.466350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.848768, 14.670226, 14.448028> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091245, 0.244235, 0.965414,
		0.497188, -0.828810, 0.256667,
		0.862832, 0.503411, -0.045806,
		9.107618, 14.821249, 14.434286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.005251, 14.112040, 14.988853>,  <8.503635, 14.468862, 14.466350>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.005251, 14.112040, 14.988853> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.135563, 14.486044, 14.932825>,  <9.213750, 14.710447, 14.899209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.135563, 14.486044, 14.932825>,  <9.005251, 14.112040, 14.988853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.135563, 14.486044, 14.932825> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166285, 0.089176, 0.982037,
		0.930707, -0.343220, -0.126427,
		0.325781, 0.935012, -0.140069,
		9.233297, 14.766547, 14.890804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.776992, 14.146702, 15.296479>,  <9.005251, 14.112040, 14.988853>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.776992, 14.146702, 15.296479> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.598186, 14.504139, 15.280148>,  <9.490902, 14.718601, 15.270349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.598186, 14.504139, 15.280148>,  <9.776992, 14.146702, 15.296479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.598186, 14.504139, 15.280148> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221623, 0.154855, 0.962758,
		0.866637, 0.421320, -0.267263,
		-0.447016, 0.893593, -0.040829,
		9.464081, 14.772217, 15.267899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.298709, 14.574668, 15.582167>,  <9.776992, 14.146702, 15.296479>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.298709, 14.574668, 15.582167> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.967834, 14.799323, 15.575021>,  <9.769308, 14.934116, 15.570733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.967834, 14.799323, 15.575021>,  <10.298709, 14.574668, 15.582167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.967834, 14.799323, 15.575021> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154018, 0.257186, 0.954009,
		0.540403, 0.786395, -0.299245,
		-0.827190, 0.561639, -0.017865,
		9.719677, 14.967814, 15.569661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.442374, 15.285096, 15.786524>,  <10.298709, 14.574668, 15.582167>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.442374, 15.285096, 15.786524> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.048004, 15.275669, 15.852730>,  <9.811382, 15.270013, 15.892453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.048004, 15.275669, 15.852730>,  <10.442374, 15.285096, 15.786524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.048004, 15.275669, 15.852730> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160744, 0.138534, 0.977226,
		-0.045960, 0.990077, -0.132795,
		-0.985926, -0.023568, 0.165516,
		9.752227, 15.268599, 15.902385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.250616, 15.922019, 16.222477>,  <10.442374, 15.285096, 15.786524>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.250616, 15.922019, 16.222477> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.951373, 15.659748, 16.263315>,  <9.771828, 15.502386, 16.287819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.951373, 15.659748, 16.263315>,  <10.250616, 15.922019, 16.222477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.951373, 15.659748, 16.263315> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049026, 0.098824, 0.993897,
		-0.661764, 0.748547, -0.041786,
		-0.748108, -0.655676, 0.102096,
		9.726941, 15.463045, 16.293943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.773489, 16.305853, 16.539803>,  <10.250616, 15.922019, 16.222477>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.773489, 16.305853, 16.539803> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.704905, 15.915998, 16.597332>,  <9.663754, 15.682086, 16.631849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.704905, 15.915998, 16.597332>,  <9.773489, 16.305853, 16.539803>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.704905, 15.915998, 16.597332> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009925, 0.147685, 0.988985,
		-0.985141, 0.168144, -0.034995,
		-0.171460, -0.974637, 0.143822,
		9.653466, 15.623608, 16.640478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.173798, 16.297113, 16.947863>,  <9.773489, 16.305853, 16.539803>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.173798, 16.297113, 16.947863> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.362317, 15.946679, 16.988565>,  <9.475429, 15.736419, 17.012987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.362317, 15.946679, 16.988565>,  <9.173798, 16.297113, 16.947863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.362317, 15.946679, 16.988565> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082291, 0.071193, 0.994062,
		-0.878127, -0.476874, -0.038541,
		0.471298, -0.876084, 0.101759,
		9.503707, 15.683854, 17.019093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.753222, 15.958431, 17.387907>,  <9.173798, 16.297113, 16.947863>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.753222, 15.958431, 17.387907> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.113456, 15.784845, 17.397892>,  <9.329596, 15.680694, 17.403883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.113456, 15.784845, 17.397892>,  <8.753222, 15.958431, 17.387907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.113456, 15.784845, 17.397892> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029400, -0.003518, 0.999562,
		-0.433688, -0.900922, -0.015927,
		0.900583, -0.433966, 0.024962,
		9.383631, 15.654655, 17.405380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.701094, 15.400553, 17.847754>,  <8.753222, 15.958431, 17.387907>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.701094, 15.400553, 17.847754> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.094987, 15.470123, 17.844955>,  <9.331323, 15.511866, 17.843277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.094987, 15.470123, 17.844955>,  <8.701094, 15.400553, 17.847754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.094987, 15.470123, 17.844955> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017448, -0.058657, 0.998126,
		0.173191, -0.983010, -0.060796,
		0.984733, 0.173927, -0.006993,
		9.390408, 15.522301, 17.842857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.870521, 14.944990, 18.340746>,  <8.701094, 15.400553, 17.847754>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.870521, 14.944990, 18.340746> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.158247, 15.218068, 18.289343>,  <9.330883, 15.381915, 18.258501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.158247, 15.218068, 18.289343>,  <8.870521, 14.944990, 18.340746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.158247, 15.218068, 18.289343> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154770, 0.022844, 0.987686,
		0.677223, -0.730347, -0.089228,
		0.719316, 0.682694, -0.128507,
		9.374042, 15.422876, 18.250792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.312767, 14.752692, 18.759951>,  <8.870521, 14.944990, 18.340746>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.312767, 14.752692, 18.759951> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.408939, 15.134023, 18.686890>,  <9.466642, 15.362822, 18.643053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.408939, 15.134023, 18.686890>,  <9.312767, 14.752692, 18.759951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.408939, 15.134023, 18.686890> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322958, 0.098883, 0.941233,
		0.915364, -0.285290, -0.284110,
		0.240431, 0.953327, -0.182651,
		9.481069, 15.420021, 18.632095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.018292, 14.744530, 19.129671>,  <9.312767, 14.752692, 18.759951>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.018292, 14.744530, 19.129671> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.872828, 15.111452, 19.064804>,  <9.785550, 15.331606, 19.025883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.872828, 15.111452, 19.064804>,  <10.018292, 14.744530, 19.129671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.872828, 15.111452, 19.064804> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351601, 0.296377, 0.887996,
		0.862628, 0.265911, -0.430307,
		-0.363661, 0.917307, -0.162169,
		9.763730, 15.386644, 19.016153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.500195, 15.259257, 19.333639>,  <10.018292, 14.744530, 19.129671>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.500195, 15.259257, 19.333639> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.186006, 15.506779, 19.337965>,  <9.997493, 15.655292, 19.340561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.186006, 15.506779, 19.337965>,  <10.500195, 15.259257, 19.333639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.186006, 15.506779, 19.337965> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121495, 0.137034, 0.983087,
		0.606855, 0.773502, -0.182817,
		-0.785472, 0.618803, 0.010817,
		9.950364, 15.692420, 19.341209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.713025, 15.845616, 19.751932>,  <10.500195, 15.259257, 19.333639>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.713025, 15.845616, 19.751932> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.313282, 15.858002, 19.744720>,  <10.073436, 15.865433, 19.740393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.313282, 15.858002, 19.744720>,  <10.713025, 15.845616, 19.751932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.313282, 15.858002, 19.744720> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015701, 0.073901, 0.997142,
		0.032207, 0.996785, -0.073367,
		-0.999358, 0.030963, -0.018031,
		10.013474, 15.867290, 19.739311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.603688, 16.351957, 20.185862>,  <10.713025, 15.845616, 19.751932>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.603688, 16.351957, 20.185862> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.251883, 16.163940, 20.156155>,  <10.040799, 16.051130, 20.138330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.251883, 16.163940, 20.156155>,  <10.603688, 16.351957, 20.185862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.251883, 16.163940, 20.156155> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225668, 0.274576, 0.934710,
		-0.418961, 0.838850, -0.347567,
		-0.879514, -0.470042, -0.074265,
		9.988029, 16.022928, 20.133875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.015731, 16.844162, 20.508606>,  <10.603688, 16.351957, 20.185862>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.015731, 16.844162, 20.508606> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.902628, 16.462088, 20.543633>,  <9.834766, 16.232843, 20.564650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.902628, 16.462088, 20.543633>,  <10.015731, 16.844162, 20.508606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.902628, 16.462088, 20.543633> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201138, 0.148310, 0.968271,
		-0.937865, 0.256173, -0.234060,
		-0.282758, -0.955186, 0.087568,
		9.817801, 16.175531, 20.569902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.481142, 16.902311, 21.121923>,  <10.015731, 16.844162, 20.508606>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.481142, 16.902311, 21.121923> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.549780, 16.511812, 21.069019>,  <9.590962, 16.277512, 21.037277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.549780, 16.511812, 21.069019>,  <9.481142, 16.902311, 21.121923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.549780, 16.511812, 21.069019> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388124, -0.190387, 0.901728,
		-0.905492, -0.103398, -0.411575,
		0.171595, -0.976249, -0.132262,
		9.601258, 16.218937, 21.029341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.886026, 16.662313, 21.251457>,  <9.481142, 16.902311, 21.121923>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.886026, 16.662313, 21.251457> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.160939, 16.380106, 21.320610>,  <9.325887, 16.210781, 21.362103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.160939, 16.380106, 21.320610>,  <8.886026, 16.662313, 21.251457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.160939, 16.380106, 21.320610> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355828, -0.119505, 0.926879,
		-0.633269, -0.698544, -0.333177,
		0.687282, -0.705518, 0.172882,
		9.367124, 16.168451, 21.372475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.563884, 16.094234, 21.737312>,  <8.886026, 16.662313, 21.251457>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.563884, 16.094234, 21.737312> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.963548, 16.081936, 21.748146>,  <9.203346, 16.074556, 21.754646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.963548, 16.081936, 21.748146>,  <8.563884, 16.094234, 21.737312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.963548, 16.081936, 21.748146> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028004, -0.029912, 0.999160,
		-0.029912, -0.999079, -0.030748,
		-0.999160, 0.030748, -0.027083,
		9.263296, 16.072712, 21.756271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.765504, 15.623638, 22.284712>,  <8.563884, 16.094234, 21.737312>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.765504, 15.623638, 22.284712> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.079962, 15.863417, 22.224525>,  <9.268637, 16.007284, 22.188414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.079962, 15.863417, 22.224525>,  <8.765504, 15.623638, 22.284712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.079962, 15.863417, 22.224525> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075704, 0.148225, 0.986052,
		0.613388, -0.786571, 0.071146,
		0.786145, 0.599447, -0.150466,
		9.315805, 16.043251, 22.179386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<17.064867, 13.366716, 25.658981> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.792030, 13.088039, 25.570103>,  <16.628328, 12.920834, 25.516775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.792030, 13.088039, 25.570103>,  <17.064867, 13.366716, 25.658981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.792030, 13.088039, 25.570103> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083466, -0.376039, 0.922837,
		-0.726487, 0.610914, 0.314644,
		-0.682092, -0.696691, -0.222197,
		16.587402, 12.879032, 25.503443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.640615, 13.300612, 26.221397>,  <17.064867, 13.366716, 25.658981>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.640615, 13.300612, 26.221397> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.543795, 12.971214, 26.016159>,  <16.485703, 12.773575, 25.893017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.543795, 12.971214, 26.016159>,  <16.640615, 13.300612, 26.221397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.543795, 12.971214, 26.016159> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261971, -0.453711, 0.851773,
		-0.934228, 0.340588, -0.105911,
		-0.242050, -0.823496, -0.513094,
		16.471180, 12.724165, 25.862230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.058756, 13.139657, 26.499434>,  <16.640615, 13.300612, 26.221397>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.058756, 13.139657, 26.499434> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.194269, 12.796907, 26.344002>,  <16.275578, 12.591257, 26.250744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.194269, 12.796907, 26.344002>,  <16.058756, 13.139657, 26.499434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.194269, 12.796907, 26.344002> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171857, -0.462409, 0.869852,
		-0.925036, -0.227911, -0.303916,
		0.338782, -0.856875, -0.388577,
		16.295904, 12.539845, 26.227428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.593409, 12.553842, 26.695440>,  <16.058756, 13.139657, 26.499434>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.593409, 12.553842, 26.695440> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.944783, 12.383232, 26.609251>,  <16.155607, 12.280867, 26.557537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.944783, 12.383232, 26.609251>,  <15.593409, 12.553842, 26.695440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.944783, 12.383232, 26.609251> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065957, -0.554813, 0.829357,
		-0.473285, -0.714326, -0.515500,
		0.878437, -0.426523, -0.215470,
		16.208313, 12.255275, 26.544609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.518035, 11.953417, 26.968571>,  <15.593409, 12.553842, 26.695440>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.518035, 11.953417, 26.968571> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.916326, 11.953063, 26.931637>,  <16.155300, 11.952851, 26.909477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.916326, 11.953063, 26.931637>,  <15.518035, 11.953417, 26.968571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.916326, 11.953063, 26.931637> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062649, -0.728129, 0.682571,
		-0.067834, -0.685440, -0.724963,
		0.995727, -0.000883, -0.092334,
		16.215044, 11.952798, 26.903936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.675180, 11.260049, 26.839487>,  <15.518035, 11.953417, 26.968571>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.675180, 11.260049, 26.839487> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.007315, 11.434820, 26.977840>,  <16.206594, 11.539683, 27.060852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.007315, 11.434820, 26.977840>,  <15.675180, 11.260049, 26.839487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.007315, 11.434820, 26.977840> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092722, -0.720355, 0.687380,
		0.549495, -0.538685, -0.638650,
		0.830336, 0.436929, 0.345884,
		16.256416, 11.565899, 27.081606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.127054, 10.717767, 26.921583>,  <15.675180, 11.260049, 26.839487>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.127054, 10.717767, 26.921583> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.338570, 10.996547, 27.115343>,  <16.465479, 11.163815, 27.231600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.338570, 10.996547, 27.115343>,  <16.127054, 10.717767, 26.921583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.338570, 10.996547, 27.115343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296613, -0.686478, 0.663904,
		0.795237, -0.207387, -0.569727,
		0.528789, 0.696950, 0.484399,
		16.497206, 11.205631, 27.260662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.858236, 10.489306, 27.061106>,  <16.127054, 10.717767, 26.921583>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.858236, 10.489306, 27.061106> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.773256, 10.776847, 27.325867>,  <16.722267, 10.949371, 27.484724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.773256, 10.776847, 27.325867>,  <16.858236, 10.489306, 27.061106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.773256, 10.776847, 27.325867> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391156, -0.558169, 0.731741,
		0.895467, 0.414367, -0.162599,
		-0.212451, 0.718852, 0.661904,
		16.709520, 10.992502, 27.524437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.386818, 10.515121, 27.482248>,  <16.858236, 10.489306, 27.061106>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.386818, 10.515121, 27.482248> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.099752, 10.683302, 27.704304>,  <16.927513, 10.784210, 27.837536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.099752, 10.683302, 27.704304>,  <17.386818, 10.515121, 27.482248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.099752, 10.683302, 27.704304> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318344, -0.510920, 0.798510,
		0.619365, 0.749788, 0.232822,
		-0.717666, 0.420451, 0.555137,
		16.884453, 10.809437, 27.870844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.707743, 10.758270, 28.109873>,  <17.386818, 10.515121, 27.482248>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.707743, 10.758270, 28.109873> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.319315, 10.713088, 28.194033>,  <17.086258, 10.685979, 28.244528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.319315, 10.713088, 28.194033>,  <17.707743, 10.758270, 28.109873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.319315, 10.713088, 28.194033> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238790, -0.467842, 0.850942,
		0.002314, 0.876564, 0.481279,
		-0.971068, -0.112955, 0.210398,
		17.027994, 10.679201, 28.257153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.643887, 10.874438, 28.857769>,  <17.707743, 10.758270, 28.109873>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.643887, 10.874438, 28.857769> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.297096, 10.701379, 28.758839>,  <17.089022, 10.597543, 28.699480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.297096, 10.701379, 28.758839>,  <17.643887, 10.874438, 28.857769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.297096, 10.701379, 28.758839> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038738, -0.553293, 0.832085,
		-0.496846, 0.711815, 0.496451,
		-0.866974, -0.432650, -0.247327,
		17.037004, 10.571584, 28.684641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.314518, 10.877906, 29.529341>,  <17.643887, 10.874438, 28.857769>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.314518, 10.877906, 29.529341> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.123764, 10.614652, 29.296295>,  <17.009312, 10.456699, 29.156467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.123764, 10.614652, 29.296295>,  <17.314518, 10.877906, 29.529341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.123764, 10.614652, 29.296295> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074717, -0.630089, 0.772920,
		-0.875785, 0.412124, 0.251306,
		-0.476884, -0.658135, -0.582615,
		16.980700, 10.417212, 29.121511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.172724, 10.681380, 30.248936>,  <17.314518, 10.877906, 29.529341>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.172724, 10.681380, 30.248936> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.022493, 10.337663, 30.110050>,  <16.932354, 10.131433, 30.026720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.022493, 10.337663, 30.110050>,  <17.172724, 10.681380, 30.248936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.022493, 10.337663, 30.110050> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817720, -0.130914, -0.560532,
		0.436207, -0.494444, 0.751830,
		-0.375577, -0.859294, -0.347211,
		16.909821, 10.079874, 30.005886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.932863, 11.278215, 30.610363>,  <17.172724, 10.681380, 30.248936>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.932863, 11.278215, 30.610363> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.206757, 10.991428, 30.662663>,  <17.371094, 10.819356, 30.694042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.206757, 10.991428, 30.662663>,  <16.932863, 11.278215, 30.610363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.206757, 10.991428, 30.662663> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438248, -0.261730, 0.859905,
		-0.582304, -0.646107, -0.493425,
		0.684735, -0.716968, 0.130749,
		17.412176, 10.776338, 30.701887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.915384, 11.908517, 30.993378>,  <16.932863, 11.278215, 30.610363>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.915384, 11.908517, 30.993378> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.792274, 12.210612, 31.224855>,  <16.718409, 12.391870, 31.363743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.792274, 12.210612, 31.224855>,  <16.915384, 11.908517, 30.993378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.792274, 12.210612, 31.224855> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099207, 0.630376, -0.769925,
		-0.946272, -0.179554, -0.268940,
		-0.307776, 0.755239, 0.578695,
		16.699942, 12.437184, 31.398464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.385050, 12.287629, 30.558613>,  <16.915384, 11.908517, 30.993378>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.385050, 12.287629, 30.558613> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.504665, 12.562469, 30.823481>,  <16.576435, 12.727374, 30.982401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.504665, 12.562469, 30.823481>,  <16.385050, 12.287629, 30.558613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.504665, 12.562469, 30.823481> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026080, 0.687778, -0.725453,
		-0.953884, 0.234209, 0.187753,
		0.299039, 0.687101, 0.662169,
		16.594378, 12.768600, 31.022131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.017433, 12.804765, 30.425823>,  <16.385050, 12.287629, 30.558613>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.017433, 12.804765, 30.425823> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.297091, 12.983474, 30.649105>,  <16.464886, 13.090699, 30.783073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.297091, 12.983474, 30.649105>,  <16.017433, 12.804765, 30.425823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.297091, 12.983474, 30.649105> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194686, 0.632264, -0.749893,
		-0.687963, 0.632958, 0.355063,
		0.699145, 0.446773, 0.558203,
		16.506834, 13.117506, 30.816566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.811895, 13.500107, 30.535620>,  <16.017433, 12.804765, 30.425823>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.811895, 13.500107, 30.535620> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.210939, 13.481733, 30.556271>,  <16.450365, 13.470710, 30.568661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.210939, 13.481733, 30.556271>,  <15.811895, 13.500107, 30.535620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.210939, 13.481733, 30.556271> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066561, 0.437944, -0.896535,
		0.018570, 0.897828, 0.439954,
		0.997609, -0.045933, 0.051628,
		16.510221, 13.467954, 30.571758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.027897, 14.213284, 30.355614>,  <15.811895, 13.500107, 30.535620>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.027897, 14.213284, 30.355614> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.358347, 14.001532, 30.278393>,  <16.556618, 13.874480, 30.232061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.358347, 14.001532, 30.278393>,  <16.027897, 14.213284, 30.355614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.358347, 14.001532, 30.278393> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206554, 0.603258, -0.770334,
		0.524260, 0.596518, 0.607714,
		0.826127, -0.529382, -0.193051,
		16.606186, 13.842717, 30.220478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.416809, 14.714433, 30.111006>,  <16.027897, 14.213284, 30.355614>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.416809, 14.714433, 30.111006> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.606804, 14.381328, 29.997238>,  <16.720800, 14.181465, 29.928978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.606804, 14.381328, 29.997238>,  <16.416809, 14.714433, 30.111006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.606804, 14.381328, 29.997238> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328858, 0.467767, -0.820394,
		0.816234, 0.296145, 0.496045,
		0.474989, -0.832762, -0.284418,
		16.749300, 14.131499, 29.911913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.046862, 14.908452, 30.035986>,  <16.416809, 14.714433, 30.111006>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.046862, 14.908452, 30.035986> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.970604, 14.582305, 29.817324>,  <16.924849, 14.386617, 29.686127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.970604, 14.582305, 29.817324>,  <17.046862, 14.908452, 30.035986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.970604, 14.582305, 29.817324> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150945, 0.525896, -0.837048,
		0.969985, -0.242093, 0.022817,
		-0.190644, -0.815368, -0.546653,
		16.913410, 14.337694, 29.653328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.470947, 14.990760, 29.466908>,  <17.046862, 14.908452, 30.035986>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.470947, 14.990760, 29.466908> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.232943, 14.704026, 29.321522>,  <17.090139, 14.531986, 29.234289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.232943, 14.704026, 29.321522>,  <17.470947, 14.990760, 29.466908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.232943, 14.704026, 29.321522> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035289, 0.428495, -0.902855,
		0.802940, -0.550038, -0.229664,
		-0.595014, -0.716834, -0.363467,
		17.054438, 14.488976, 29.212482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.864277, 14.663099, 28.949936>,  <17.470947, 14.990760, 29.466908>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.864277, 14.663099, 28.949936> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.475983, 14.592854, 28.884413>,  <17.243006, 14.550708, 28.845098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.475983, 14.592854, 28.884413>,  <17.864277, 14.663099, 28.949936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.475983, 14.592854, 28.884413> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121831, 0.227685, -0.966083,
		0.206946, -0.957769, -0.199628,
		-0.970737, -0.175607, -0.163805,
		17.184761, 14.540171, 28.835272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.761087, 14.351072, 28.269396>,  <17.864277, 14.663099, 28.949936>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.761087, 14.351072, 28.269396> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.377094, 14.436538, 28.341814>,  <17.146698, 14.487817, 28.385265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.377094, 14.436538, 28.341814>,  <17.761087, 14.351072, 28.269396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.377094, 14.436538, 28.341814> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166133, 0.085963, -0.982349,
		-0.225457, -0.973117, -0.047026,
		-0.959984, 0.213665, 0.181047,
		17.089100, 14.500637, 28.396128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.380615, 13.858171, 27.930433>,  <17.761087, 14.351072, 28.269396>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.380615, 13.858171, 27.930433> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.138645, 14.172519, 27.981773>,  <16.993464, 14.361128, 28.012577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.138645, 14.172519, 27.981773>,  <17.380615, 13.858171, 27.930433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.138645, 14.172519, 27.981773> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293568, -0.070269, -0.953352,
		-0.740192, -0.614386, 0.273214,
		-0.604924, 0.785870, 0.128352,
		16.957169, 14.408279, 28.020279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.841627, 13.798517, 27.514072>,  <17.380615, 13.858171, 27.930433>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.841627, 13.798517, 27.514072> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.840317, 14.197337, 27.544741>,  <16.839531, 14.436629, 27.563143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.840317, 14.197337, 27.544741>,  <16.841627, 13.798517, 27.514072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.840317, 14.197337, 27.544741> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310939, 0.071856, -0.947710,
		-0.950424, -0.026946, 0.309787,
		-0.003277, 0.997051, 0.076672,
		16.839334, 14.496452, 27.567743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.258884, 14.008448, 27.081062>,  <16.841627, 13.798517, 27.514072>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.258884, 14.008448, 27.081062> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.465023, 14.346222, 27.139503>,  <16.588707, 14.548886, 27.174568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.465023, 14.346222, 27.139503>,  <16.258884, 14.008448, 27.081062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.465023, 14.346222, 27.139503> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058989, 0.205037, -0.976975,
		-0.854949, 0.494863, 0.155478,
		0.515347, 0.844435, 0.146105,
		16.619627, 14.599552, 27.183334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.847486, 14.613457, 26.675734>,  <16.258884, 14.008448, 27.081062>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.847486, 14.613457, 26.675734> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.211781, 14.757653, 26.756336>,  <16.430357, 14.844172, 26.804697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.211781, 14.757653, 26.756336>,  <15.847486, 14.613457, 26.675734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.211781, 14.757653, 26.756336> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107589, 0.263972, -0.958511,
		-0.398728, 0.894631, 0.201624,
		0.910736, 0.360492, 0.201506,
		16.485001, 14.865801, 26.816788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.246615, 15.127856, 26.855972>,  <15.847486, 14.613457, 26.675734>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.246615, 15.127856, 26.855972> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.889798, 14.977475, 26.755638>,  <14.675708, 14.887247, 26.695438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.889798, 14.977475, 26.755638>,  <15.246615, 15.127856, 26.855972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.889798, 14.977475, 26.755638> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164011, -0.247888, 0.954805,
		-0.421140, 0.892867, 0.159467,
		-0.892044, -0.375952, -0.250836,
		14.622185, 14.864690, 26.680387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.763323, 15.243061, 27.391539>,  <15.246615, 15.127856, 26.855972>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.763323, 15.243061, 27.391539> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.594731, 14.937992, 27.195299>,  <14.493577, 14.754951, 27.077555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.594731, 14.937992, 27.195299>,  <14.763323, 15.243061, 27.391539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.594731, 14.937992, 27.195299> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261158, -0.415996, 0.871059,
		-0.868420, 0.495256, -0.023844,
		-0.421478, -0.762672, -0.490599,
		14.468287, 14.709190, 27.048119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.227254, 15.102811, 27.856550>,  <14.763323, 15.243061, 27.391539>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.227254, 15.102811, 27.856550> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.261950, 14.777437, 27.626488>,  <14.282768, 14.582213, 27.488451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.261950, 14.777437, 27.626488>,  <14.227254, 15.102811, 27.856550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.261950, 14.777437, 27.626488> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223210, -0.578521, 0.784532,
		-0.970903, 0.060329, -0.231749,
		0.086742, -0.813433, -0.575154,
		14.287973, 14.533407, 27.453941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.618113, 14.583723, 27.988409>,  <14.227254, 15.102811, 27.856550>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.618113, 14.583723, 27.988409> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.870807, 14.331874, 27.807528>,  <14.022423, 14.180764, 27.698999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.870807, 14.331874, 27.807528>,  <13.618113, 14.583723, 27.988409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.870807, 14.331874, 27.807528> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026284, -0.600410, 0.799260,
		-0.774741, -0.493034, -0.395847,
		0.631733, -0.629623, -0.452203,
		14.060327, 14.142987, 27.671867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.313025, 13.955473, 27.910700>,  <13.618113, 14.583723, 27.988409>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.313025, 13.955473, 27.910700> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.705193, 13.880490, 27.886568>,  <13.940493, 13.835501, 27.872089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.705193, 13.880490, 27.886568>,  <13.313025, 13.955473, 27.910700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.705193, 13.880490, 27.886568> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087348, -0.688532, 0.719927,
		-0.176491, -0.700560, -0.691423,
		0.980419, -0.187455, -0.060328,
		13.999318, 13.824254, 27.868469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.447068, 13.268183, 27.677500>,  <13.313025, 13.955473, 27.910700>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.447068, 13.268183, 27.677500> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.756232, 13.389554, 27.900406>,  <13.941730, 13.462377, 28.034149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.756232, 13.389554, 27.900406>,  <13.447068, 13.268183, 27.677500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.756232, 13.389554, 27.900406> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182050, -0.735281, 0.652855,
		0.607840, -0.606048, -0.513066,
		0.772909, 0.303427, 0.557264,
		13.988105, 13.480582, 28.067585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.598943, 12.666739, 28.082510>,  <13.447068, 13.268183, 27.677500>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.598943, 12.666739, 28.082510> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.854797, 12.912814, 28.266861>,  <14.008310, 13.060459, 28.377472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.854797, 12.912814, 28.266861>,  <13.598943, 12.666739, 28.082510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.854797, 12.912814, 28.266861> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049858, -0.565107, 0.823509,
		0.767059, -0.549725, -0.330791,
		0.639637, 0.615188, 0.460879,
		14.046688, 13.097370, 28.405125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.503312, 11.974436, 28.256899>,  <13.598943, 12.666739, 28.082510>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.503312, 11.974436, 28.256899> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.143937, 11.802175, 28.291182>,  <12.928312, 11.698817, 28.311750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.143937, 11.802175, 28.291182>,  <13.503312, 11.974436, 28.256899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.143937, 11.802175, 28.291182> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390317, 0.693847, -0.605169,
		0.201150, -0.577160, -0.791470,
		-0.898438, -0.430654, 0.085708,
		12.874406, 11.672978, 28.316895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.232439, 11.711474, 27.607719>,  <13.503312, 11.974436, 28.256899>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.232439, 11.711474, 27.607719> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.915592, 11.779231, 27.842276>,  <12.725484, 11.819885, 27.983009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.915592, 11.779231, 27.842276>,  <13.232439, 11.711474, 27.607719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.915592, 11.779231, 27.842276> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434155, 0.518912, -0.736369,
		-0.429021, -0.837876, -0.337497,
		-0.792117, 0.169391, 0.586392,
		12.677957, 11.830049, 28.018194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.764013, 11.581833, 27.096632>,  <13.232439, 11.711474, 27.607719>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.764013, 11.581833, 27.096632> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.577804, 11.787893, 27.384495>,  <12.466078, 11.911530, 27.557213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.577804, 11.787893, 27.384495>,  <12.764013, 11.581833, 27.096632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.577804, 11.787893, 27.384495> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478394, 0.537645, -0.694318,
		-0.744598, -0.667502, -0.003842,
		-0.465524, 0.515150, 0.719658,
		12.438147, 11.942438, 27.600391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.159292, 11.442776, 26.957569>,  <12.764013, 11.581833, 27.096632>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.159292, 11.442776, 26.957569> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.162766, 11.785914, 27.163101>,  <12.164849, 11.991797, 27.286421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.162766, 11.785914, 27.163101>,  <12.159292, 11.442776, 26.957569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.162766, 11.785914, 27.163101> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469663, 0.457144, -0.755272,
		-0.882803, -0.234768, 0.406869,
		0.008684, 0.857848, 0.513831,
		12.165371, 12.043269, 27.317251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.550425, 11.693521, 26.791689>,  <12.159292, 11.442776, 26.957569>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.550425, 11.693521, 26.791689> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.739675, 12.023751, 26.914701>,  <11.853225, 12.221889, 26.988508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.739675, 12.023751, 26.914701>,  <11.550425, 11.693521, 26.791689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.739675, 12.023751, 26.914701> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442454, 0.524523, -0.727399,
		-0.761832, 0.208081, 0.613445,
		0.473124, 0.825577, 0.307532,
		11.881612, 12.271424, 27.006962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.021964, 12.222289, 26.937332>,  <11.550425, 11.693521, 26.791689>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.021964, 12.222289, 26.937332> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.347652, 12.451777, 26.901802>,  <11.543066, 12.589469, 26.880484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.347652, 12.451777, 26.901802>,  <11.021964, 12.222289, 26.937332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.347652, 12.451777, 26.901802> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486000, 0.589894, -0.644848,
		-0.317565, 0.568217, 0.759132,
		0.814221, 0.573719, -0.088824,
		11.591919, 12.623893, 26.875154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.740129, 12.982643, 26.886406>,  <11.021964, 12.222289, 26.937332>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.740129, 12.982643, 26.886406> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.106507, 12.964272, 26.726938>,  <11.326334, 12.953250, 26.631258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.106507, 12.964272, 26.726938>,  <10.740129, 12.982643, 26.886406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.106507, 12.964272, 26.726938> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281941, 0.633305, -0.720718,
		0.285579, 0.772539, 0.567124,
		0.915944, -0.045927, -0.398669,
		11.381290, 12.950495, 26.607338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<15.969872, 7.502598, 29.115385> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.134779, 7.143320, 29.054354>,  <16.233723, 6.927753, 29.017735>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.134779, 7.143320, 29.054354>,  <15.969872, 7.502598, 29.115385>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.134779, 7.143320, 29.054354> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012978, 0.173247, -0.984793,
		0.910971, 0.404017, 0.083081,
		0.412267, -0.898196, -0.152580,
		16.258459, 6.873861, 29.008579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.717612, 7.357224, 28.368893>,  <15.969872, 7.502598, 29.115385>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.717612, 7.357224, 28.368893> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.027838, 7.609546, 28.378555>,  <16.213974, 7.760940, 28.384354>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.027838, 7.609546, 28.378555>,  <15.717612, 7.357224, 28.368893>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.027838, 7.609546, 28.378555> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163504, 0.237694, -0.957480,
		-0.609726, 0.738638, 0.287486,
		0.775565, 0.630806, 0.024158,
		16.260508, 7.798788, 28.385803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.495243, 8.054646, 28.243786>,  <15.717612, 7.357224, 28.368893>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.495243, 8.054646, 28.243786> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.883814, 8.073092, 28.150660>,  <16.116957, 8.084160, 28.094784>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.883814, 8.073092, 28.150660>,  <15.495243, 8.054646, 28.243786>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.883814, 8.073092, 28.150660> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229592, 0.431153, -0.872579,
		0.060140, 0.901100, 0.429421,
		0.971427, 0.046115, -0.232815,
		16.175241, 8.086926, 28.080814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.532208, 8.676673, 27.826756>,  <15.495243, 8.054646, 28.243786>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.532208, 8.676673, 27.826756> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.892832, 8.517353, 27.759169>,  <16.109205, 8.421762, 27.718616>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.892832, 8.517353, 27.759169>,  <15.532208, 8.676673, 27.826756>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.892832, 8.517353, 27.759169> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039687, 0.312752, -0.949005,
		0.430832, 0.862290, 0.266157,
		0.901559, -0.398299, -0.168966,
		16.163300, 8.397863, 27.708479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.175684, 9.211505, 27.699450>,  <15.532208, 8.676673, 27.826756>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.175684, 9.211505, 27.699450> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.266228, 8.861054, 27.529198>,  <16.320555, 8.650784, 27.427046>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.266228, 8.861054, 27.529198>,  <16.175684, 9.211505, 27.699450>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.266228, 8.861054, 27.529198> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081637, 0.452500, -0.888019,
		0.970616, 0.166266, 0.173953,
		0.226362, -0.876127, -0.425631,
		16.334137, 8.598216, 27.401508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.752998, 9.409585, 27.239416>,  <16.175684, 9.211505, 27.699450>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.752998, 9.409585, 27.239416> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.620258, 9.053231, 27.115353>,  <16.540615, 8.839418, 27.040915>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.620258, 9.053231, 27.115353>,  <16.752998, 9.409585, 27.239416>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.620258, 9.053231, 27.115353> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084111, 0.355426, -0.930912,
		0.939575, -0.282836, -0.192881,
		-0.331850, -0.890885, -0.310160,
		16.520702, 8.785966, 27.022305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.196247, 9.276155, 26.604734>,  <16.752998, 9.409585, 27.239416>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.196247, 9.276155, 26.604734> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.872587, 9.041405, 26.593046>,  <16.678391, 8.900555, 26.586033>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.872587, 9.041405, 26.593046>,  <17.196247, 9.276155, 26.604734>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.872587, 9.041405, 26.593046> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193648, 0.313279, -0.929708,
		0.554777, -0.746615, -0.367137,
		-0.809150, -0.586876, -0.029220,
		16.629843, 8.865342, 26.584280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.258150, 8.782848, 26.015150>,  <17.196247, 9.276155, 26.604734>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.258150, 8.782848, 26.015150> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.864134, 8.811649, 26.077768>,  <16.627724, 8.828930, 26.115339>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.864134, 8.811649, 26.077768>,  <17.258150, 8.782848, 26.015150>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.864134, 8.811649, 26.077768> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149623, 0.093171, -0.984344,
		-0.085462, -0.993043, -0.081004,
		-0.985043, 0.072004, 0.156545,
		16.568621, 8.833250, 26.124731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.010136, 8.435119, 25.482845>,  <17.258150, 8.782848, 26.015150>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.010136, 8.435119, 25.482845> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.682501, 8.626430, 25.609556>,  <16.485920, 8.741216, 25.685583>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.682501, 8.626430, 25.609556>,  <17.010136, 8.435119, 25.482845>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.682501, 8.626430, 25.609556> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149270, 0.355487, -0.922685,
		-0.553910, -0.803044, -0.219782,
		-0.819086, 0.478278, 0.316778,
		16.436775, 8.769913, 25.704590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.451370, 8.237069, 25.043888>,  <17.010136, 8.435119, 25.482845>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.451370, 8.237069, 25.043888> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.357325, 8.588803, 25.209536>,  <16.300898, 8.799844, 25.308924>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.357325, 8.588803, 25.209536>,  <16.451370, 8.237069, 25.043888>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.357325, 8.588803, 25.209536> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275086, 0.348440, -0.896056,
		-0.932228, -0.324592, 0.159970,
		-0.235113, 0.879334, 0.414117,
		16.286791, 8.852604, 25.333771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.835094, 8.469246, 24.607391>,  <16.451370, 8.237069, 25.043888>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.835094, 8.469246, 24.607391> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.969935, 8.797094, 24.792685>,  <16.050840, 8.993803, 24.903860>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.969935, 8.797094, 24.792685>,  <15.835094, 8.469246, 24.607391>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.969935, 8.797094, 24.792685> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083910, 0.516230, -0.852330,
		-0.937721, 0.248453, 0.242797,
		0.337102, 0.819621, 0.463232,
		16.071066, 9.042980, 24.931654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.384362, 8.934122, 24.298914>,  <15.835094, 8.469246, 24.607391>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.384362, 8.934122, 24.298914> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.706017, 9.125731, 24.439714>,  <15.899009, 9.240697, 24.524195>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.706017, 9.125731, 24.439714>,  <15.384362, 8.934122, 24.298914>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.706017, 9.125731, 24.439714> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150768, 0.408437, -0.900249,
		-0.575009, 0.776992, 0.256217,
		0.804135, 0.479022, 0.352000,
		15.947257, 9.269438, 24.545315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.827497, 8.977772, 23.684319>,  <15.384362, 8.934122, 24.298914>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.827497, 8.977772, 23.684319> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.446422, 9.029362, 23.574228>,  <14.217776, 9.060316, 23.508173>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.446422, 9.029362, 23.574228>,  <14.827497, 8.977772, 23.684319>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.446422, 9.029362, 23.574228> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295330, -0.178697, 0.938535,
		0.071865, 0.975414, 0.208333,
		-0.952689, 0.128975, -0.275227,
		14.160615, 9.068054, 23.491659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.437176, 9.446701, 24.133738>,  <14.827497, 8.977772, 23.684319>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.437176, 9.446701, 24.133738> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.161831, 9.210148, 23.965725>,  <13.996624, 9.068216, 23.864918>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.161831, 9.210148, 23.965725>,  <14.437176, 9.446701, 24.133738>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.161831, 9.210148, 23.965725> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440853, -0.118755, 0.889689,
		-0.576026, 0.797599, -0.178966,
		-0.688362, -0.591382, -0.420030,
		13.955322, 9.032733, 23.839716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.975048, 9.503486, 24.546572>,  <14.437176, 9.446701, 24.133738>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.975048, 9.503486, 24.546572> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.840093, 9.182314, 24.350012>,  <13.759120, 8.989611, 24.232075>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.840093, 9.182314, 24.350012>,  <13.975048, 9.503486, 24.546572>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.840093, 9.182314, 24.350012> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391013, -0.355317, 0.849034,
		-0.856317, 0.478598, -0.194076,
		-0.337388, -0.802928, -0.491402,
		13.738876, 8.941436, 24.202591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.256246, 9.479364, 24.716997>,  <13.975048, 9.503486, 24.546572>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.256246, 9.479364, 24.716997> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.398929, 9.121248, 24.610254>,  <13.484539, 8.906379, 24.546209>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.398929, 9.121248, 24.610254>,  <13.256246, 9.479364, 24.716997>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.398929, 9.121248, 24.610254> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414979, -0.407769, 0.813337,
		-0.836989, -0.179384, -0.516982,
		0.356709, -0.895291, -0.266857,
		13.505941, 8.852661, 24.530197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.730000, 9.033493, 24.969820>,  <13.256246, 9.479364, 24.716997>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.730000, 9.033493, 24.969820> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.027373, 8.780314, 24.883392>,  <13.205797, 8.628407, 24.831535>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.027373, 8.780314, 24.883392>,  <12.730000, 9.033493, 24.969820>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.027373, 8.780314, 24.883392> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198030, -0.516898, 0.832827,
		-0.638820, -0.576364, -0.509622,
		0.743434, -0.632946, -0.216068,
		13.250403, 8.590430, 24.818571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.524759, 8.427765, 25.153931>,  <12.730000, 9.033493, 24.969820>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.524759, 8.427765, 25.153931> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.918577, 8.360506, 25.134350>,  <13.154868, 8.320151, 25.122601>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.918577, 8.360506, 25.134350>,  <12.524759, 8.427765, 25.153931>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.918577, 8.360506, 25.134350> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036887, -0.472370, 0.880628,
		-0.171197, -0.865213, -0.471273,
		0.984546, -0.168145, -0.048953,
		13.213941, 8.310062, 25.119663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.664146, 7.703598, 25.307119>,  <12.524759, 8.427765, 25.153931>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.664146, 7.703598, 25.307119> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.981839, 7.932829, 25.387896>,  <13.172455, 8.070367, 25.436361>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.981839, 7.932829, 25.387896>,  <12.664146, 7.703598, 25.307119>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.981839, 7.932829, 25.387896> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071334, -0.242106, 0.967624,
		0.603413, -0.782923, -0.151408,
		0.794232, 0.573076, 0.201939,
		13.220109, 8.104752, 25.448477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.898598, 7.277972, 25.729153>,  <12.664146, 7.703598, 25.307119>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.898598, 7.277972, 25.729153> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.091483, 7.624500, 25.781246>,  <13.207214, 7.832417, 25.812502>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.091483, 7.624500, 25.781246>,  <12.898598, 7.277972, 25.729153>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.091483, 7.624500, 25.781246> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092583, -0.198223, 0.975775,
		0.871148, -0.458474, -0.175792,
		0.482213, 0.866319, 0.130234,
		13.236147, 7.884396, 25.820316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.523198, 7.029994, 26.049847>,  <12.898598, 7.277972, 25.729153>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.523198, 7.029994, 26.049847> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.517911, 7.420358, 26.136959>,  <13.514738, 7.654576, 26.189226>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.517911, 7.420358, 26.136959>,  <13.523198, 7.029994, 26.049847>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.517911, 7.420358, 26.136959> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183324, -0.211742, 0.959978,
		0.982964, 0.052614, -0.176108,
		-0.013219, 0.975908, 0.217780,
		13.513946, 7.713130, 26.202293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.115966, 7.226868, 26.401003>,  <13.523198, 7.029994, 26.049847>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.115966, 7.226868, 26.401003> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.853771, 7.508095, 26.511301>,  <13.696455, 7.676831, 26.577480>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.853771, 7.508095, 26.511301>,  <14.115966, 7.226868, 26.401003>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.853771, 7.508095, 26.511301> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151803, -0.235012, 0.960065,
		0.739794, 0.671168, 0.047319,
		-0.655486, 0.703067, 0.275746,
		13.657125, 7.719015, 26.594025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.378602, 7.409587, 26.991590>,  <14.115966, 7.226868, 26.401003>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.378602, 7.409587, 26.991590> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.013553, 7.572693, 27.003225>,  <13.794523, 7.670556, 27.010206>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.013553, 7.572693, 27.003225>,  <14.378602, 7.409587, 26.991590>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.013553, 7.572693, 27.003225> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029150, -0.006057, 0.999557,
		0.407759, 0.913067, -0.006359,
		-0.912624, 0.407764, 0.029086,
		13.739765, 7.695022, 27.011951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.354807, 7.975703, 27.539083>,  <14.378602, 7.409587, 26.991590>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.354807, 7.975703, 27.539083> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.969095, 7.885026, 27.484276>,  <13.737668, 7.830620, 27.451391>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.969095, 7.885026, 27.484276>,  <14.354807, 7.975703, 27.539083>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.969095, 7.885026, 27.484276> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137563, -0.013478, 0.990401,
		-0.226363, 0.973873, -0.018188,
		-0.964280, -0.226692, -0.137020,
		13.679811, 7.817019, 27.443171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.918242, 8.523980, 27.960346>,  <14.354807, 7.975703, 27.539083>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.918242, 8.523980, 27.960346> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.730599, 8.176894, 27.894608>,  <13.618013, 7.968643, 27.855164>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.730599, 8.176894, 27.894608>,  <13.918242, 8.523980, 27.960346>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.730599, 8.176894, 27.894608> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081436, -0.142801, 0.986396,
		-0.879379, 0.476109, -0.003675,
		-0.469107, -0.867715, -0.164348,
		13.589868, 7.916580, 27.845303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.397975, 8.525111, 28.416481>,  <13.918242, 8.523980, 27.960346>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.397975, 8.525111, 28.416481> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.502186, 8.154036, 28.309507>,  <13.564713, 7.931390, 28.245323>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.502186, 8.154036, 28.309507>,  <13.397975, 8.525111, 28.416481>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.502186, 8.154036, 28.309507> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036911, -0.286366, 0.957409,
		-0.964760, -0.239561, -0.108848,
		0.260528, -0.927688, -0.267433,
		13.580344, 7.875729, 28.229277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.754722, 9.141980, 28.850128>,  <13.397975, 8.525111, 28.416481>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.754722, 9.141980, 28.850128> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.854766, 9.257817, 29.219687>,  <13.914793, 9.327319, 29.441422>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.854766, 9.257817, 29.219687>,  <13.754722, 9.141980, 28.850128>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.854766, 9.257817, 29.219687> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638946, 0.766308, -0.067225,
		-0.727456, -0.573505, 0.376696,
		0.250111, 0.289592, 0.923894,
		13.929799, 9.344695, 29.496855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.275635, 9.249340, 29.328213>,  <13.754722, 9.141980, 28.850128>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.275635, 9.249340, 29.328213> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.527307, 9.531713, 29.458317>,  <13.678309, 9.701137, 29.536379>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.527307, 9.531713, 29.458317>,  <13.275635, 9.249340, 29.328213>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.527307, 9.531713, 29.458317> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714810, 0.689873, -0.114552,
		-0.305253, -0.160424, 0.938661,
		0.629180, 0.705932, 0.325258,
		13.716061, 9.743492, 29.555895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.881351, 9.681901, 29.791550>,  <13.275635, 9.249340, 29.328213>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.881351, 9.681901, 29.791550> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.178640, 9.904622, 29.643177>,  <13.357014, 10.038255, 29.554153>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.178640, 9.904622, 29.643177>,  <12.881351, 9.681901, 29.791550>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.178640, 9.904622, 29.643177> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659973, 0.701135, -0.269900,
		0.109791, 0.445399, 0.888575,
		0.743224, 0.556803, -0.370929,
		13.401608, 10.071663, 29.531898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.722184, 10.386733, 29.914703>,  <12.881351, 9.681901, 29.791550>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.722184, 10.386733, 29.914703> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.998490, 10.433657, 29.629303>,  <13.164274, 10.461811, 29.458063>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.998490, 10.433657, 29.629303>,  <12.722184, 10.386733, 29.914703>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.998490, 10.433657, 29.629303> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464745, 0.827972, -0.313807,
		0.553944, 0.548362, 0.626454,
		0.690766, 0.117310, -0.713499,
		13.205720, 10.468849, 29.415253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.985379, 11.064363, 30.001087>,  <12.722184, 10.386733, 29.914703>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.985379, 11.064363, 30.001087> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.062054, 10.956275, 29.623678>,  <13.108058, 10.891422, 29.397232>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.062054, 10.956275, 29.623678>,  <12.985379, 11.064363, 30.001087>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.062054, 10.956275, 29.623678> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383508, 0.864297, -0.325442,
		0.903426, 0.424232, 0.062043,
		0.191686, -0.270219, -0.943524,
		13.119559, 10.875210, 29.340620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.208875, 11.672107, 29.648767>,  <12.985379, 11.064363, 30.001087>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.208875, 11.672107, 29.648767> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.116606, 11.422185, 29.350397>,  <13.061245, 11.272232, 29.171375>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.116606, 11.422185, 29.350397>,  <13.208875, 11.672107, 29.648767>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.116606, 11.422185, 29.350397> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365733, 0.766063, -0.528571,
		0.901682, 0.150885, -0.405221,
		-0.230671, -0.624805, -0.745928,
		13.047404, 11.234743, 29.126619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.616990, 11.876254, 28.987333>,  <13.208875, 11.672107, 29.648767>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.616990, 11.876254, 28.987333> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.281561, 11.689627, 28.874828>,  <13.080303, 11.577650, 28.807325>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.281561, 11.689627, 28.874828>,  <13.616990, 11.876254, 28.987333>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.281561, 11.689627, 28.874828> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160382, 0.704823, -0.691016,
		0.520646, -0.534358, -0.665875,
		-0.838574, -0.466568, -0.281262,
		13.029989, 11.549656, 28.790449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.151145, 12.221455, 28.508785>,  <13.616990, 11.876254, 28.987333>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.151145, 12.221455, 28.508785> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.191827, 12.598052, 28.637312>,  <14.216236, 12.824011, 28.714428>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.191827, 12.598052, 28.637312>,  <14.151145, 12.221455, 28.508785>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.191827, 12.598052, 28.637312> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192035, -0.335497, 0.922261,
		0.976104, -0.032094, -0.214921,
		0.101704, 0.941495, 0.321316,
		14.222338, 12.880501, 28.733707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.793447, 12.349363, 28.929380>,  <14.151145, 12.221455, 28.508785>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.793447, 12.349363, 28.929380> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.524578, 12.623857, 29.040565>,  <14.363256, 12.788554, 29.107277>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.524578, 12.623857, 29.040565>,  <14.793447, 12.349363, 28.929380>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.524578, 12.623857, 29.040565> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255300, -0.137581, 0.957023,
		0.694986, 0.714250, -0.082717,
		-0.672174, 0.686235, 0.277964,
		14.322926, 12.829728, 29.123955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.183331, 12.750424, 29.362322>,  <14.793447, 12.349363, 28.929380>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.183331, 12.750424, 29.362322> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.804574, 12.838436, 29.456116>,  <14.577320, 12.891243, 29.512392>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.804574, 12.838436, 29.456116>,  <15.183331, 12.750424, 29.362322>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.804574, 12.838436, 29.456116> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238452, -0.008751, 0.971115,
		0.215726, 0.975454, -0.044180,
		-0.946891, 0.220029, 0.234486,
		14.520507, 12.904445, 29.526463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.141658, 13.281096, 29.871843>,  <15.183331, 12.750424, 29.362322>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.141658, 13.281096, 29.871843> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.786646, 13.097510, 29.888056>,  <14.573639, 12.987359, 29.897783>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.786646, 13.097510, 29.888056>,  <15.141658, 13.281096, 29.871843>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.786646, 13.097510, 29.888056> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116567, -0.138562, 0.983470,
		-0.445760, 0.877584, 0.176478,
		-0.887531, -0.458963, 0.040532,
		14.520387, 12.959822, 29.900215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.866453, 13.472868, 30.566050>,  <15.141658, 13.281096, 29.871843>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.866453, 13.472868, 30.566050> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.643960, 13.152324, 30.478027>,  <14.510464, 12.959997, 30.425213>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.643960, 13.152324, 30.478027>,  <14.866453, 13.472868, 30.566050>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.643960, 13.152324, 30.478027> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028941, -0.283320, 0.958589,
		-0.830523, 0.526830, 0.180784,
		-0.556233, -0.801361, -0.220057,
		14.477090, 12.911916, 30.412010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.446367, 13.463641, 31.093298>,  <14.866453, 13.472868, 30.566050>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.446367, 13.463641, 31.093298> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.437384, 13.097342, 30.932850>,  <14.431993, 12.877562, 30.836580>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.437384, 13.097342, 30.932850>,  <14.446367, 13.463641, 31.093298>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.437384, 13.097342, 30.932850> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158365, -0.392899, 0.905843,
		-0.987125, 0.083867, -0.136198,
		-0.022458, -0.915749, -0.401123,
		14.430646, 12.822617, 30.812513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.907772, 13.076483, 31.415550>,  <14.446367, 13.463641, 31.093298>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.907772, 13.076483, 31.415550> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.123832, 12.783349, 31.250048>,  <14.253468, 12.607469, 31.150747>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.123832, 12.783349, 31.250048>,  <13.907772, 13.076483, 31.415550>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.123832, 12.783349, 31.250048> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037220, -0.511967, 0.858199,
		-0.840747, -0.448155, -0.303814,
		0.540148, -0.732835, -0.413754,
		14.285876, 12.563498, 31.125921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.623325, 12.378774, 31.651440>,  <13.907772, 13.076483, 31.415550>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.623325, 12.378774, 31.651440> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.986232, 12.264174, 31.528292>,  <14.203976, 12.195414, 31.454403>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.986232, 12.264174, 31.528292>,  <13.623325, 12.378774, 31.651440>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.986232, 12.264174, 31.528292> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048393, -0.656072, 0.753145,
		-0.417762, -0.698203, -0.581368,
		0.907267, -0.286501, -0.307870,
		14.258411, 12.178223, 31.435930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.633747, 11.675090, 31.799210>,  <13.623325, 12.378774, 31.651440>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.633747, 11.675090, 31.799210> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.021509, 11.762989, 31.755453>,  <14.254167, 11.815728, 31.729198>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.021509, 11.762989, 31.755453>,  <13.633747, 11.675090, 31.799210>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.021509, 11.762989, 31.755453> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226577, -0.629575, 0.743168,
		0.094439, -0.745215, -0.660103,
		0.969404, 0.219748, -0.109392,
		14.312330, 11.828914, 31.722635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<14.048669, 16.604273, 16.838377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.443686, 16.667006, 16.833311>,  <14.680697, 16.704645, 16.830271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.443686, 16.667006, 16.833311>,  <14.048669, 16.604273, 16.838377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.443686, 16.667006, 16.833311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040372, -0.174768, 0.983782,
		0.152075, -0.972039, -0.178923,
		0.987544, 0.156832, -0.012665,
		14.739950, 16.714054, 16.829512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.468267, 16.011036, 17.201218>,  <14.048669, 16.604273, 16.838377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.468267, 16.011036, 17.201218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.651498, 16.366598, 17.200026>,  <14.761436, 16.579935, 17.199310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.651498, 16.366598, 17.200026>,  <14.468267, 16.011036, 17.201218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.651498, 16.366598, 17.200026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134396, -0.065942, 0.988731,
		0.878694, -0.453315, -0.149672,
		0.458077, 0.888908, -0.002981,
		14.788920, 16.633270, 17.199131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.162492, 15.987286, 17.519987>,  <14.468267, 16.011036, 17.201218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.162492, 15.987286, 17.519987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.028079, 16.363077, 17.546701>,  <14.947432, 16.588552, 17.562731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.028079, 16.363077, 17.546701>,  <15.162492, 15.987286, 17.519987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.028079, 16.363077, 17.546701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322154, 0.048015, 0.945469,
		0.885042, 0.339223, -0.318792,
		-0.336032, 0.939480, 0.066786,
		14.927269, 16.644920, 17.566738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.458356, 16.214952, 18.120518>,  <15.162492, 15.987286, 17.519987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.458356, 16.214952, 18.120518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.194544, 16.508642, 18.056101>,  <15.036257, 16.684856, 18.017450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.194544, 16.508642, 18.056101>,  <15.458356, 16.214952, 18.120518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.194544, 16.508642, 18.056101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079206, 0.145170, 0.986231,
		0.747493, 0.663205, -0.037589,
		-0.659530, 0.734224, -0.161044,
		14.996685, 16.728909, 18.007788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.585534, 16.854801, 18.587229>,  <15.458356, 16.214952, 18.120518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.585534, 16.854801, 18.587229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.207850, 16.895296, 18.461868>,  <14.981240, 16.919594, 18.386652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.207850, 16.895296, 18.461868>,  <15.585534, 16.854801, 18.587229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.207850, 16.895296, 18.461868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269554, 0.309219, 0.911989,
		0.189238, 0.945587, -0.264678,
		-0.944208, 0.101238, -0.313403,
		14.924588, 16.925667, 18.367847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.457890, 17.543928, 18.816422>,  <15.585534, 16.854801, 18.587229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.457890, 17.543928, 18.816422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.110366, 17.349039, 18.781128>,  <14.901852, 17.232105, 18.759953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.110366, 17.349039, 18.781128>,  <15.457890, 17.543928, 18.816422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.110366, 17.349039, 18.781128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254546, 0.286647, 0.923602,
		-0.424708, 0.824893, -0.373062,
		-0.868809, -0.487222, -0.088232,
		14.849723, 17.202873, 18.754658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.150031, 17.784254, 19.392048>,  <15.457890, 17.543928, 18.816422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.150031, 17.784254, 19.392048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.904120, 17.482132, 19.301216>,  <14.756575, 17.300859, 19.246717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.904120, 17.482132, 19.301216>,  <15.150031, 17.784254, 19.392048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.904120, 17.482132, 19.301216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393114, 0.043848, 0.918444,
		-0.683749, 0.653905, -0.323878,
		-0.614776, -0.755305, -0.227078,
		14.719687, 17.255541, 19.233093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.478370, 17.937212, 19.640766>,  <15.150031, 17.784254, 19.392048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.478370, 17.937212, 19.640766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.500327, 17.538721, 19.613871>,  <14.513502, 17.299627, 19.597734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.500327, 17.538721, 19.613871>,  <14.478370, 17.937212, 19.640766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.500327, 17.538721, 19.613871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402869, -0.083713, 0.911422,
		-0.913610, -0.022944, -0.405943,
		0.054894, -0.996226, -0.067238,
		14.516795, 17.239853, 19.593699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.872443, 17.703485, 19.898684>,  <14.478370, 17.937212, 19.640766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.872443, 17.703485, 19.898684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.134490, 17.401724, 19.915155>,  <14.291718, 17.220667, 19.925037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.134490, 17.401724, 19.915155>,  <13.872443, 17.703485, 19.898684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.134490, 17.401724, 19.915155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272688, -0.185267, 0.944096,
		-0.704601, -0.629722, -0.327088,
		0.655117, -0.754404, 0.041178,
		14.331025, 17.175402, 19.927509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.499438, 17.211058, 20.231855>,  <13.872443, 17.703485, 19.898684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.499438, 17.211058, 20.231855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.883466, 17.125071, 20.303474>,  <14.113882, 17.073479, 20.346445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.883466, 17.125071, 20.303474>,  <13.499438, 17.211058, 20.231855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.883466, 17.125071, 20.303474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242065, -0.317435, 0.916864,
		-0.140256, -0.923594, -0.356795,
		0.960069, -0.214963, 0.179048,
		14.171487, 17.060581, 20.357189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.455734, 16.511768, 20.555111>,  <13.499438, 17.211058, 20.231855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.455734, 16.511768, 20.555111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.824941, 16.647039, 20.628517>,  <14.046464, 16.728203, 20.672562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.824941, 16.647039, 20.628517>,  <13.455734, 16.511768, 20.555111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.824941, 16.647039, 20.628517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065630, -0.331587, 0.941139,
		0.379126, -0.880729, -0.283865,
		0.923015, 0.338180, 0.183515,
		14.101845, 16.748493, 20.683571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.711492, 16.033764, 21.005106>,  <13.455734, 16.511768, 20.555111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.711492, 16.033764, 21.005106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.937371, 16.354393, 21.083691>,  <14.072899, 16.546770, 21.130842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.937371, 16.354393, 21.083691>,  <13.711492, 16.033764, 21.005106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.937371, 16.354393, 21.083691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017652, -0.226265, 0.973906,
		0.825109, -0.553431, -0.113623,
		0.564699, 0.801572, 0.196462,
		14.106781, 16.594864, 21.142630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.481237, 15.303815, 21.083721>,  <13.711492, 16.033764, 21.005106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.481237, 15.303815, 21.083721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.082448, 15.285711, 21.058441>,  <12.843174, 15.274849, 21.043274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.082448, 15.285711, 21.058441>,  <13.481237, 15.303815, 21.083721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.082448, 15.285711, 21.058441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065039, -0.040418, -0.997064,
		0.042576, -0.998157, 0.043239,
		-0.996974, -0.045263, -0.063198,
		12.783356, 15.272134, 21.039482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.389103, 14.859126, 20.500042>,  <13.481237, 15.303815, 21.083721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.389103, 14.859126, 20.500042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.033470, 15.030893, 20.563456>,  <12.820090, 15.133954, 20.601503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.033470, 15.030893, 20.563456>,  <13.389103, 14.859126, 20.500042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.033470, 15.030893, 20.563456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232944, -0.126308, -0.964253,
		-0.394044, -0.894229, 0.212328,
		-0.889082, 0.429418, 0.158534,
		12.766746, 15.159719, 20.611015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.919268, 14.402646, 20.228516>,  <13.389103, 14.859126, 20.500042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.919268, 14.402646, 20.228516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.734515, 14.757088, 20.243948>,  <12.623664, 14.969752, 20.253206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.734515, 14.757088, 20.243948>,  <12.919268, 14.402646, 20.228516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.734515, 14.757088, 20.243948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367788, -0.151766, -0.917442,
		-0.807093, -0.437937, 0.395996,
		-0.461880, 0.886103, 0.038579,
		12.595951, 15.022919, 20.255522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.337878, 14.327600, 19.733425>,  <12.919268, 14.402646, 20.228516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.337878, 14.327600, 19.733425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.330308, 14.723483, 19.790167>,  <12.325766, 14.961013, 19.824211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.330308, 14.723483, 19.790167>,  <12.337878, 14.327600, 19.733425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.330308, 14.723483, 19.790167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294773, 0.130050, -0.946676,
		-0.955380, -0.059730, 0.289277,
		-0.018925, 0.989707, 0.141854,
		12.324631, 15.020395, 19.832724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.779921, 14.578148, 19.458067>,  <12.337878, 14.327600, 19.733425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.779921, 14.578148, 19.458067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.047914, 14.875013, 19.450949>,  <12.208710, 15.053132, 19.446678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.047914, 14.875013, 19.450949>,  <11.779921, 14.578148, 19.458067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.047914, 14.875013, 19.450949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013705, -0.011601, -0.999839,
		-0.742249, 0.670119, 0.002399,
		0.669984, 0.742163, -0.017794,
		12.248909, 15.097662, 19.445610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.573233, 14.996211, 18.930578>,  <11.779921, 14.578148, 19.458067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.573233, 14.996211, 18.930578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.950647, 15.111712, 18.995522>,  <12.177096, 15.181011, 19.034487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.950647, 15.111712, 18.995522>,  <11.573233, 14.996211, 18.930578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.950647, 15.111712, 18.995522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149066, 0.067598, -0.986514,
		-0.295831, 0.955015, 0.020738,
		0.943538, 0.288750, 0.162357,
		12.233708, 15.198337, 19.044230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.647983, 15.547462, 18.513330>,  <11.573233, 14.996211, 18.930578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.647983, 15.547462, 18.513330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.031751, 15.458798, 18.583052>,  <12.262012, 15.405601, 18.624886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.031751, 15.458798, 18.583052>,  <11.647983, 15.547462, 18.513330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.031751, 15.458798, 18.583052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187543, 0.039987, -0.981442,
		0.210575, 0.974304, 0.079935,
		0.959420, -0.221658, 0.174304,
		12.319576, 15.392301, 18.635344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.116768, 16.120550, 18.210823>,  <11.647983, 15.547462, 18.513330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.116768, 16.120550, 18.210823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.318007, 15.777936, 18.256847>,  <12.438751, 15.572368, 18.284462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.318007, 15.777936, 18.256847>,  <12.116768, 16.120550, 18.210823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.318007, 15.777936, 18.256847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391525, 0.107203, -0.913901,
		0.770454, 0.504831, 0.389289,
		0.503099, -0.856535, 0.115059,
		12.468937, 15.520975, 18.291365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.781773, 16.254168, 17.885876>,  <12.116768, 16.120550, 18.210823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.781773, 16.254168, 17.885876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.710852, 15.860721, 17.872849>,  <12.668299, 15.624653, 17.865032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.710852, 15.860721, 17.872849>,  <12.781773, 16.254168, 17.885876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.710852, 15.860721, 17.872849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357232, -0.033489, -0.933415,
		0.917033, -0.177131, 0.357317,
		-0.177303, -0.983618, -0.032566,
		12.657660, 15.565636, 17.863079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.343556, 16.061605, 17.434374>,  <12.781773, 16.254168, 17.885876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.343556, 16.061605, 17.434374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.087272, 15.754566, 17.441084>,  <12.933501, 15.570343, 17.445110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.087272, 15.754566, 17.441084>,  <13.343556, 16.061605, 17.434374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.087272, 15.754566, 17.441084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190130, -0.179791, -0.965156,
		0.743868, -0.615198, 0.261138,
		-0.640712, -0.767598, 0.016773,
		12.895058, 15.524286, 17.446115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.674207, 15.471759, 17.164822>,  <13.343556, 16.061605, 17.434374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.674207, 15.471759, 17.164822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.281932, 15.405457, 17.123297>,  <13.046567, 15.365677, 17.098381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.281932, 15.405457, 17.123297>,  <13.674207, 15.471759, 17.164822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.281932, 15.405457, 17.123297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132198, -0.170599, -0.976432,
		0.144137, -0.971299, 0.189217,
		-0.980688, -0.165754, -0.103814,
		12.987725, 15.355731, 17.092154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.733031, 14.925516, 16.743355>,  <13.674207, 15.471759, 17.164822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.733031, 14.925516, 16.743355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.356145, 15.057072, 16.717865>,  <13.130013, 15.136004, 16.702570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.356145, 15.057072, 16.717865>,  <13.733031, 14.925516, 16.743355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.356145, 15.057072, 16.717865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057730, -0.346784, -0.936167,
		-0.329978, -0.878398, 0.345734,
		-0.942221, 0.328873, -0.063721,
		13.073480, 15.155738, 16.698748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.460383, 14.390435, 16.385149>,  <13.733031, 14.925516, 16.743355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.460383, 14.390435, 16.385149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.225372, 14.712378, 16.351635>,  <13.084366, 14.905542, 16.331526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.225372, 14.712378, 16.351635>,  <13.460383, 14.390435, 16.385149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.225372, 14.712378, 16.351635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135611, -0.200009, -0.970364,
		-0.797760, -0.558753, 0.226658,
		-0.587527, 0.804855, -0.083786,
		13.049114, 14.953834, 16.326500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.875170, 14.300815, 16.106031>,  <13.460383, 14.390435, 16.385149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.875170, 14.300815, 16.106031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.947489, 14.686756, 16.029749>,  <12.990880, 14.918321, 15.983979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.947489, 14.686756, 16.029749>,  <12.875170, 14.300815, 16.106031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.947489, 14.686756, 16.029749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218593, -0.228472, -0.948693,
		-0.958921, 0.129836, -0.252218,
		0.180799, 0.964854, -0.190706,
		13.001728, 14.976213, 15.972537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.365252, 14.723329, 15.663620>,  <12.875170, 14.300815, 16.106031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.365252, 14.723329, 15.663620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.744788, 14.847247, 15.639191>,  <12.972509, 14.921598, 15.624533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.744788, 14.847247, 15.639191>,  <12.365252, 14.723329, 15.663620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.744788, 14.847247, 15.639191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041143, -0.313067, -0.948839,
		-0.313067, 0.897784, -0.309796,
		0.948839, 0.309796, -0.061073,
		13.029440, 14.940186, 15.620869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.034532, 14.329548, 16.259237>,  <12.365252, 14.723329, 15.663620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.034532, 14.329548, 16.259237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.061364, 13.933496, 16.308458>,  <12.077464, 13.695865, 16.337992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.061364, 13.933496, 16.308458>,  <12.034532, 14.329548, 16.259237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.061364, 13.933496, 16.308458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496563, -0.140103, -0.856619,
		0.865405, -0.003641, -0.501060,
		0.067082, -0.990130, 0.123054,
		12.081489, 13.636456, 16.345375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.253544, 13.958866, 15.572277>,  <12.034532, 14.329548, 16.259237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.253544, 13.958866, 15.572277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.054273, 13.711924, 15.815814>,  <11.934710, 13.563758, 15.961937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.054273, 13.711924, 15.815814>,  <12.253544, 13.958866, 15.572277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.054273, 13.711924, 15.815814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672209, -0.168540, -0.720923,
		0.547680, -0.768418, -0.331029,
		-0.498178, -0.617356, 0.608844,
		11.904819, 13.526717, 15.998467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.007243, 13.818764, 15.504848>,  <12.253544, 13.958866, 15.572277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.007243, 13.818764, 15.504848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.388197, 13.937172, 15.475636>,  <13.616770, 14.008217, 15.458108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.388197, 13.937172, 15.475636>,  <13.007243, 13.818764, 15.504848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.388197, 13.937172, 15.475636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295579, -0.837642, 0.459335,
		0.074800, -0.459051, -0.885255,
		0.952386, 0.296021, -0.073030,
		13.673913, 14.025978, 15.453727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.383291, 13.253092, 15.220434>,  <13.007243, 13.818764, 15.504848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.383291, 13.253092, 15.220434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.638766, 13.485847, 15.421824>,  <13.792051, 13.625499, 15.542659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.638766, 13.485847, 15.421824>,  <13.383291, 13.253092, 15.220434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.638766, 13.485847, 15.421824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261732, -0.779589, 0.568979,
		0.723584, -0.231625, -0.650212,
		0.638688, 0.581886, 0.503475,
		13.830373, 13.660412, 15.572866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.948224, 12.920944, 15.281856>,  <13.383291, 13.253092, 15.220434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.948224, 12.920944, 15.281856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.010767, 13.183659, 15.576931>,  <14.048293, 13.341288, 15.753976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.010767, 13.183659, 15.576931>,  <13.948224, 12.920944, 15.281856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.010767, 13.183659, 15.576931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456481, -0.710376, 0.535716,
		0.875887, 0.252977, -0.410884,
		0.156358, 0.656787, 0.737688,
		14.057674, 13.380694, 15.798238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.690909, 12.825659, 15.363770>,  <13.948224, 12.920944, 15.281856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.690909, 12.825659, 15.363770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.518129, 12.981848, 15.688966>,  <14.414461, 13.075562, 15.884083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.518129, 12.981848, 15.688966>,  <14.690909, 12.825659, 15.363770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.518129, 12.981848, 15.688966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131214, -0.864622, 0.484987,
		0.892302, 0.316165, 0.322237,
		-0.431949, 0.390473, 0.812989,
		14.388545, 13.098989, 15.932862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.213089, 12.793786, 15.961494>,  <14.690909, 12.825659, 15.363770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.213089, 12.793786, 15.961494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.850096, 12.835959, 16.124151>,  <14.632299, 12.861263, 16.221746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.850096, 12.835959, 16.124151>,  <15.213089, 12.793786, 15.961494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.850096, 12.835959, 16.124151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230125, -0.685063, 0.691181,
		0.351450, 0.720814, 0.597420,
		-0.907483, 0.105434, 0.406643,
		14.577851, 12.867590, 16.246143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.438231, 12.836851, 16.703665>,  <15.213089, 12.793786, 15.961494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.438231, 12.836851, 16.703665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.053101, 12.749131, 16.640574>,  <14.822022, 12.696499, 16.602718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.053101, 12.749131, 16.640574>,  <15.438231, 12.836851, 16.703665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.053101, 12.749131, 16.640574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028294, -0.662556, 0.748478,
		-0.268645, 0.716190, 0.644129,
		-0.962824, -0.219300, -0.157729,
		14.764254, 12.683341, 16.593254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.239136, 12.777184, 17.341461>,  <15.438231, 12.836851, 16.703665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.239136, 12.777184, 17.341461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.967084, 12.571833, 17.132132>,  <14.803853, 12.448622, 17.006535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.967084, 12.571833, 17.132132>,  <15.239136, 12.777184, 17.341461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.967084, 12.571833, 17.132132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000329, -0.713644, 0.700508,
		-0.733091, 0.476609, 0.485202,
		-0.680130, -0.513377, -0.523323,
		14.763045, 12.417820, 16.975134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.915812, 12.466356, 17.859522>,  <15.239136, 12.777184, 17.341461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.915812, 12.466356, 17.859522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.767838, 12.263457, 17.548176>,  <14.679054, 12.141718, 17.361368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.767838, 12.263457, 17.548176>,  <14.915812, 12.466356, 17.859522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.767838, 12.263457, 17.548176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185936, -0.780427, 0.596961,
		-0.910262, 0.365562, 0.194391,
		-0.369934, -0.507247, -0.778363,
		14.656858, 12.111283, 17.314667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.238503, 12.323272, 18.062033>,  <14.915812, 12.466356, 17.859522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.238503, 12.323272, 18.062033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.352351, 12.049796, 17.793240>,  <14.420660, 11.885711, 17.631964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.352351, 12.049796, 17.793240>,  <14.238503, 12.323272, 18.062033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.352351, 12.049796, 17.793240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294995, -0.729424, 0.617186,
		-0.912124, 0.022568, -0.409294,
		0.284620, -0.683690, -0.671982,
		14.437737, 11.844689, 17.591644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.748134, 11.832835, 18.092543>,  <14.238503, 12.323272, 18.062033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.748134, 11.832835, 18.092543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.073047, 11.654517, 17.942097>,  <14.267995, 11.547526, 17.851830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.073047, 11.654517, 17.942097>,  <13.748134, 11.832835, 18.092543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.073047, 11.654517, 17.942097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111655, -0.751771, 0.649903,
		-0.572475, -0.485910, -0.660426,
		0.812284, -0.445794, -0.376116,
		14.316731, 11.520779, 17.829262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.597015, 11.086162, 17.924162>,  <13.748134, 11.832835, 18.092543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.597015, 11.086162, 17.924162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.989150, 11.138510, 17.983242>,  <14.224431, 11.169919, 18.018690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.989150, 11.138510, 17.983242>,  <13.597015, 11.086162, 17.924162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.989150, 11.138510, 17.983242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012702, -0.788757, 0.614574,
		0.196929, -0.600613, -0.774908,
		0.980336, 0.130870, 0.147700,
		14.283251, 11.177771, 18.027552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.898245, 10.383356, 18.074606>,  <13.597015, 11.086162, 17.924162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.898245, 10.383356, 18.074606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.200834, 10.607670, 18.209229>,  <14.382388, 10.742258, 18.290001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.200834, 10.607670, 18.209229>,  <13.898245, 10.383356, 18.074606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.200834, 10.607670, 18.209229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263240, -0.732135, 0.628238,
		0.598709, -0.386651, -0.701461,
		0.756473, 0.560784, 0.336554,
		14.427776, 10.775906, 18.310194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.390748, 9.843831, 18.357574>,  <13.898245, 10.383356, 18.074606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.390748, 9.843831, 18.357574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.531146, 10.189054, 18.502865>,  <14.615385, 10.396189, 18.590038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.531146, 10.189054, 18.502865>,  <14.390748, 9.843831, 18.357574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.531146, 10.189054, 18.502865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438228, -0.494205, 0.750811,
		0.827502, -0.104355, -0.551680,
		0.350994, 0.863059, 0.363224,
		14.636444, 10.447972, 18.611832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.119891, 9.690806, 18.666740>,  <14.390748, 9.843831, 18.357574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.119891, 9.690806, 18.666740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.005603, 10.032407, 18.840656>,  <14.937030, 10.237368, 18.945005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.005603, 10.032407, 18.840656>,  <15.119891, 9.690806, 18.666740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.005603, 10.032407, 18.840656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199544, -0.390742, 0.898611,
		0.937307, 0.343513, -0.058768,
		-0.285721, 0.854002, 0.434792,
		14.919887, 10.288608, 18.971094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.648598, 9.930576, 19.195065>,  <15.119891, 9.690806, 18.666740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.648598, 9.930576, 19.195065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.298315, 10.101724, 19.284565>,  <15.088145, 10.204412, 19.338264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.298315, 10.101724, 19.284565>,  <15.648598, 9.930576, 19.195065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.298315, 10.101724, 19.284565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163994, -0.172288, 0.971299,
		0.454138, 0.887268, 0.080706,
		-0.875708, 0.427869, 0.223749,
		15.035603, 10.230084, 19.351690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.743332, 10.127719, 19.868109>,  <15.648598, 9.930576, 19.195065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.743332, 10.127719, 19.868109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.347281, 10.147165, 19.815516>,  <15.109652, 10.158834, 19.783960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.347281, 10.147165, 19.815516>,  <15.743332, 10.127719, 19.868109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.347281, 10.147165, 19.815516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139451, -0.245965, 0.959195,
		0.014292, 0.968059, 0.250316,
		-0.990126, 0.048616, -0.131482,
		15.050243, 10.161750, 19.776072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.595049, 10.446664, 20.410007>,  <15.743332, 10.127719, 19.868109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.595049, 10.446664, 20.410007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.261849, 10.274942, 20.270401>,  <15.061930, 10.171909, 20.186638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.261849, 10.274942, 20.270401>,  <15.595049, 10.446664, 20.410007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.261849, 10.274942, 20.270401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338229, -0.104091, 0.935289,
		-0.437853, 0.897141, -0.058496,
		-0.832998, -0.429305, -0.349016,
		15.011950, 10.146151, 20.165697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.013052, 10.849782, 20.674770>,  <15.595049, 10.446664, 20.410007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.013052, 10.849782, 20.674770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.886255, 10.479853, 20.590656>,  <14.810178, 10.257895, 20.540188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.886255, 10.479853, 20.590656>,  <15.013052, 10.849782, 20.674770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.886255, 10.479853, 20.590656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470360, -0.039239, 0.881602,
		-0.823576, 0.378371, -0.422561,
		-0.316991, -0.924822, -0.210287,
		14.791158, 10.202406, 20.527571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.254917, 10.770061, 20.907555>,  <15.013052, 10.849782, 20.674770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.254917, 10.770061, 20.907555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.380744, 10.390490, 20.897911>,  <14.456240, 10.162746, 20.892124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.380744, 10.390490, 20.897911>,  <14.254917, 10.770061, 20.907555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.380744, 10.390490, 20.897911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505289, -0.188896, 0.842022,
		-0.803574, -0.252689, -0.538904,
		0.314566, -0.948929, -0.024111,
		14.475114, 10.105811, 20.890678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.692513, 10.508587, 21.033590>,  <14.254917, 10.770061, 20.907555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.692513, 10.508587, 21.033590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.982545, 10.245542, 21.115376>,  <14.156564, 10.087714, 21.164446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.982545, 10.245542, 21.115376>,  <13.692513, 10.508587, 21.033590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.982545, 10.245542, 21.115376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450125, -0.227857, 0.863405,
		-0.521200, -0.718070, -0.461223,
		0.725078, -0.657614, 0.204463,
		14.200068, 10.048258, 21.176714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.387548, 9.964993, 21.386232>,  <13.692513, 10.508587, 21.033590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.387548, 9.964993, 21.386232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.769245, 9.890906, 21.480143>,  <13.998263, 9.846455, 21.536489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.769245, 9.890906, 21.480143>,  <13.387548, 9.964993, 21.386232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.769245, 9.890906, 21.480143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289494, -0.375371, 0.880506,
		-0.074953, -0.908181, -0.411813,
		0.954240, -0.185214, 0.234778,
		14.055517, 9.835341, 21.550575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.372909, 9.260029, 21.610952>,  <13.387548, 9.964993, 21.386232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.372909, 9.260029, 21.610952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.722049, 9.394250, 21.752678>,  <13.931533, 9.474782, 21.837713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.722049, 9.394250, 21.752678>,  <13.372909, 9.260029, 21.610952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.722049, 9.394250, 21.752678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242022, -0.332809, 0.911408,
		0.423743, -0.881274, -0.209281,
		0.872850, 0.335552, 0.354313,
		13.983904, 9.494916, 21.858973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.707984, 8.715321, 21.990936>,  <13.372909, 9.260029, 21.610952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.707984, 8.715321, 21.990936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.883575, 9.045794, 22.132196>,  <13.988931, 9.244079, 22.216953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.883575, 9.045794, 22.132196>,  <13.707984, 8.715321, 21.990936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.883575, 9.045794, 22.132196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203622, -0.291342, 0.934697,
		0.875120, -0.482222, 0.040336,
		0.438979, 0.826185, 0.353150,
		14.015269, 9.293650, 22.238142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.216094, 8.511516, 22.409023>,  <13.707984, 8.715321, 21.990936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.216094, 8.511516, 22.409023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.142261, 8.889914, 22.515625>,  <14.097960, 9.116952, 22.579586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.142261, 8.889914, 22.515625>,  <14.216094, 8.511516, 22.409023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.142261, 8.889914, 22.515625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073186, -0.257181, 0.963588,
		0.980088, 0.197367, -0.021762,
		-0.184583, 0.945994, 0.266504,
		14.086885, 9.173712, 22.595575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.742916, 8.655305, 22.989132>,  <14.216094, 8.511516, 22.409023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.742916, 8.655305, 22.989132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.440680, 8.913228, 23.035269>,  <14.259337, 9.067982, 23.062952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.440680, 8.913228, 23.035269>,  <14.742916, 8.655305, 22.989132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.440680, 8.913228, 23.035269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015373, -0.193493, 0.980981,
		0.654864, 0.739447, 0.156114,
		-0.755591, 0.644809, 0.115344,
		14.214003, 9.106670, 23.069872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
