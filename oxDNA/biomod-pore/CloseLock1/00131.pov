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
	location <35, 94.9851, 44.8844>
	look_at <35, 29.7336, 32.9568>
	direction <0, -65.2515, -11.9276>
	angle 67.0682
}


# declare cpy_camera_pos = <35, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 56
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16352, -0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16352, 0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<24.273388, 35.269100, 34.346756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.335487, 34.953018, 34.583897>,  <24.372747, 34.763367, 34.726181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.335487, 34.953018, 34.583897>,  <24.273388, 35.269100, 34.346756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.335487, 34.953018, 34.583897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866826, -0.178875, -0.465420,
		0.473824, 0.586154, 0.657201,
		0.155251, -0.790207, 0.592849,
		24.382063, 34.715958, 34.761753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.921854, 35.355358, 34.735016>,  <24.273388, 35.269100, 34.346756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.921854, 35.355358, 34.735016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.825201, 34.969944, 34.689034>,  <24.767210, 34.738697, 34.661446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.825201, 34.969944, 34.689034>,  <24.921854, 35.355358, 34.735016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.825201, 34.969944, 34.689034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812507, -0.136132, -0.566834,
		0.530516, -0.230366, 0.815772,
		-0.241632, -0.963535, -0.114954,
		24.752712, 34.680885, 34.654549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.571796, 35.153893, 34.710907>,  <24.921854, 35.355358, 34.735016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.571796, 35.153893, 34.710907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.311611, 34.916904, 34.520802>,  <25.155500, 34.774712, 34.406738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.311611, 34.916904, 34.520802>,  <25.571796, 35.153893, 34.710907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.311611, 34.916904, 34.520802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727806, -0.307211, -0.613123,
		0.217251, -0.744714, 0.631033,
		-0.650462, -0.592471, -0.475265,
		25.116472, 34.739162, 34.378223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.239670, 35.007294, 34.746418>,  <25.571796, 35.153893, 34.710907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.239670, 35.007294, 34.746418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.000210, 35.316330, 34.661823>,  <25.856533, 35.501751, 34.611065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.000210, 35.316330, 34.661823>,  <26.239670, 35.007294, 34.746418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.000210, 35.316330, 34.661823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696853, 0.632520, 0.338104,
		0.394985, 0.055030, -0.917038,
		-0.598650, 0.772587, -0.211488,
		25.820614, 35.548107, 34.598377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.656710, 35.481823, 34.464031>,  <26.239670, 35.007294, 34.746418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.656710, 35.481823, 34.464031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.345285, 35.700016, 34.588150>,  <26.158430, 35.830933, 34.662621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.345285, 35.700016, 34.588150>,  <26.656710, 35.481823, 34.464031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.345285, 35.700016, 34.588150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625253, 0.716670, 0.308938,
		-0.053860, 0.434543, -0.899039,
		-0.778562, 0.545487, 0.310299,
		26.111717, 35.863663, 34.681240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.153790, 35.286819, 35.006920>,  <26.656710, 35.481823, 34.464031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.153790, 35.286819, 35.006920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.446192, 35.168182, 35.252739>,  <27.621634, 35.097000, 35.400230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.446192, 35.168182, 35.252739>,  <27.153790, 35.286819, 35.006920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.446192, 35.168182, 35.252739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187764, 0.953263, 0.236716,
		-0.656030, -0.057652, 0.752529,
		0.731006, -0.296591, 0.614544,
		27.665493, 35.079205, 35.437103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.980421, 35.564152, 35.515858>,  <27.153790, 35.286819, 35.006920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.980421, 35.564152, 35.515858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.374327, 35.545242, 35.582794>,  <27.610670, 35.533897, 35.622955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.374327, 35.545242, 35.582794>,  <26.980421, 35.564152, 35.515858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.374327, 35.545242, 35.582794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027495, 0.992563, 0.118584,
		-0.171704, -0.112176, 0.978741,
		0.984765, -0.047271, 0.167343,
		27.669756, 35.531059, 35.632996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.132084, 36.008423, 36.098419>,  <26.980421, 35.564152, 35.515858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.132084, 36.008423, 36.098419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.471983, 35.960735, 35.893005>,  <27.675922, 35.932121, 35.769756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.471983, 35.960735, 35.893005>,  <27.132084, 36.008423, 36.098419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.471983, 35.960735, 35.893005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164709, 0.985370, 0.043785,
		0.500797, -0.121789, 0.856954,
		0.849749, -0.119221, -0.513530,
		27.726908, 35.924969, 35.738945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.620235, 36.312511, 36.481121>,  <27.132084, 36.008423, 36.098419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.620235, 36.312511, 36.481121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.720100, 36.334923, 36.094437>,  <27.780020, 36.348370, 35.862427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.720100, 36.334923, 36.094437>,  <27.620235, 36.312511, 36.481121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.720100, 36.334923, 36.094437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066279, 0.994995, 0.074784,
		0.966062, -0.082743, 0.244700,
		0.249663, 0.056027, -0.966710,
		27.795000, 36.351730, 35.804424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.180857, 36.793041, 36.432442>,  <27.620235, 36.312511, 36.481121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.180857, 36.793041, 36.432442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.035002, 36.746178, 36.062943>,  <27.947489, 36.718060, 35.841244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.035002, 36.746178, 36.062943>,  <28.180857, 36.793041, 36.432442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.035002, 36.746178, 36.062943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003689, 0.991863, -0.127253,
		0.931143, -0.049809, -0.361237,
		-0.364636, -0.117159, -0.923750,
		27.925611, 36.711029, 35.785816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.511059, 37.323811, 36.076786>,  <28.180857, 36.793041, 36.432442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.511059, 37.323811, 36.076786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.208494, 37.220440, 35.836433>,  <28.026957, 37.158417, 35.692223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.208494, 37.220440, 35.836433>,  <28.511059, 37.323811, 36.076786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.208494, 37.220440, 35.836433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131612, 0.959987, -0.247192,
		0.640721, -0.107895, -0.760155,
		-0.756409, -0.258426, -0.600883,
		27.981571, 37.142914, 35.656170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.549597, 37.706394, 35.495934>,  <28.511059, 37.323811, 36.076786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.549597, 37.706394, 35.495934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.161604, 37.609707, 35.485313>,  <27.928808, 37.551693, 35.478943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.161604, 37.609707, 35.485313>,  <28.549597, 37.706394, 35.495934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.161604, 37.609707, 35.485313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229613, 0.946369, -0.227297,
		0.080067, -0.214378, -0.973464,
		-0.969983, -0.241719, -0.026549,
		27.870609, 37.537189, 35.477348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.194254, 37.934120, 34.856712>,  <28.549597, 37.706394, 35.495934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.194254, 37.934120, 34.856712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.882185, 37.878479, 35.100674>,  <27.694942, 37.845093, 35.247051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.882185, 37.878479, 35.100674>,  <28.194254, 37.934120, 34.856712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.882185, 37.878479, 35.100674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311914, 0.931624, -0.186509,
		-0.542254, -0.335746, -0.770217,
		-0.780173, -0.139107, 0.609901,
		27.648132, 37.836746, 35.283646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.672668, 38.160728, 34.536633>,  <28.194254, 37.934120, 34.856712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.672668, 38.160728, 34.536633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.548172, 38.160950, 34.916763>,  <27.473475, 38.161083, 35.144844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.548172, 38.160950, 34.916763>,  <27.672668, 38.160728, 34.536633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.548172, 38.160950, 34.916763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143790, 0.988459, -0.047670,
		-0.939390, -0.151485, -0.307569,
		-0.311241, 0.000555, 0.950331,
		27.454800, 38.161118, 35.201862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.926626, 38.440231, 34.568439>,  <27.672668, 38.160728, 34.536633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.926626, 38.440231, 34.568439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.135899, 38.495483, 34.904819>,  <27.261463, 38.528637, 35.106647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.135899, 38.495483, 34.904819>,  <26.926626, 38.440231, 34.568439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.135899, 38.495483, 34.904819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157226, 0.985483, -0.064059,
		-0.837592, -0.098705, 0.537305,
		0.523182, 0.138133, 0.840951,
		27.292852, 38.536922, 35.157104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.547989, 38.811100, 34.939205>,  <26.926626, 38.440231, 34.568439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.547989, 38.811100, 34.939205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.908379, 38.870998, 35.102089>,  <27.124613, 38.906937, 35.199821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.908379, 38.870998, 35.102089>,  <26.547989, 38.811100, 34.939205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.908379, 38.870998, 35.102089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207556, 0.972950, 0.101433,
		-0.381007, -0.175907, 0.907684,
		0.900974, 0.149749, 0.407211,
		27.178671, 38.915924, 35.224251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.521303, 39.204720, 35.410763>,  <26.547989, 38.811100, 34.939205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.521303, 39.204720, 35.410763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.909594, 39.276436, 35.346825>,  <27.142567, 39.319466, 35.308460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.909594, 39.276436, 35.346825>,  <26.521303, 39.204720, 35.410763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.909594, 39.276436, 35.346825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152324, 0.974041, 0.167457,
		0.185722, -0.138205, 0.972834,
		0.970724, 0.179286, -0.159849,
		27.200811, 39.330223, 35.298870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.752413, 39.767536, 36.015079>,  <26.521303, 39.204720, 35.410763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.752413, 39.767536, 36.015079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.029394, 39.745762, 35.727318>,  <27.195583, 39.732697, 35.554661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.029394, 39.745762, 35.727318>,  <26.752413, 39.767536, 36.015079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.029394, 39.745762, 35.727318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091397, 0.995734, 0.012630,
		0.715648, -0.074497, 0.694477,
		0.692455, -0.054435, -0.719404,
		27.237131, 39.729431, 35.511497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.425749, 40.224762, 36.209278>,  <26.752413, 39.767536, 36.015079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.425749, 40.224762, 36.209278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.441017, 40.165237, 35.814026>,  <27.450178, 40.129520, 35.576874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.441017, 40.165237, 35.814026>,  <27.425749, 40.224762, 36.209278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.441017, 40.165237, 35.814026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298853, 0.945290, -0.130819,
		0.953535, -0.290312, 0.080558,
		0.038172, -0.148816, -0.988128,
		27.452469, 40.120594, 35.517586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.042751, 40.548000, 35.991344>,  <27.425749, 40.224762, 36.209278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.042751, 40.548000, 35.991344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.836637, 40.496319, 35.652454>,  <27.712969, 40.465309, 35.449120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.836637, 40.496319, 35.652454>,  <28.042751, 40.548000, 35.991344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.836637, 40.496319, 35.652454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441037, 0.807642, -0.391410,
		0.734826, -0.575344, -0.359180,
		-0.515284, -0.129206, -0.847224,
		27.682053, 40.457558, 35.398289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.524582, 40.742798, 35.499081>,  <28.042751, 40.548000, 35.991344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.524582, 40.742798, 35.499081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.157383, 40.782417, 35.345474>,  <27.937063, 40.806190, 35.253311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.157383, 40.782417, 35.345474>,  <28.524582, 40.742798, 35.499081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.157383, 40.782417, 35.345474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240678, 0.908749, -0.340954,
		0.315205, -0.405419, -0.858068,
		-0.917998, 0.099048, -0.384018,
		27.881983, 40.812130, 35.230270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.726534, 41.171810, 35.006683>,  <28.524582, 40.742798, 35.499081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.726534, 41.171810, 35.006683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.327236, 41.195499, 35.006878>,  <28.087658, 41.209713, 35.006996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.327236, 41.195499, 35.006878>,  <28.726534, 41.171810, 35.006683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.327236, 41.195499, 35.006878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056753, 0.958867, -0.278123,
		-0.016940, -0.277607, -0.960545,
		-0.998245, 0.059225, 0.000488,
		28.027763, 41.213268, 35.007023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.600906, 41.533916, 34.350971>,  <28.726534, 41.171810, 35.006683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.600906, 41.533916, 34.350971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.287481, 41.565746, 34.597450>,  <28.099426, 41.584843, 34.745338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.287481, 41.565746, 34.597450>,  <28.600906, 41.533916, 34.350971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.287481, 41.565746, 34.597450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098571, 0.963283, -0.249739,
		-0.613447, -0.256425, -0.746947,
		-0.783560, 0.079574, 0.616199,
		28.052414, 41.589619, 34.782310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.047611, 41.879047, 33.965271>,  <28.600906, 41.533916, 34.350971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.047611, 41.879047, 33.965271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.962145, 41.920849, 34.353790>,  <27.910866, 41.945930, 34.586903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.962145, 41.920849, 34.353790>,  <28.047611, 41.879047, 33.965271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.962145, 41.920849, 34.353790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143082, 0.980191, -0.136939,
		-0.966372, -0.168235, -0.194478,
		-0.213664, 0.104507, 0.971301,
		27.898046, 41.952202, 34.645180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.555359, 42.417992, 33.987347>,  <28.047611, 41.879047, 33.965271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.555359, 42.417992, 33.987347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.703573, 42.410915, 34.358807>,  <27.792501, 42.406670, 34.581684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.703573, 42.410915, 34.358807>,  <27.555359, 42.417992, 33.987347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.703573, 42.410915, 34.358807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108471, 0.992153, 0.062176,
		-0.922463, -0.123770, 0.365707,
		0.370533, -0.017686, 0.928651,
		27.814734, 42.405609, 34.637402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.028084, 42.640213, 34.496559>,  <27.555359, 42.417992, 33.987347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.028084, 42.640213, 34.496559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.410366, 42.714851, 34.587608>,  <27.639734, 42.759636, 34.642239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.410366, 42.714851, 34.587608>,  <27.028084, 42.640213, 34.496559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.410366, 42.714851, 34.587608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222021, 0.964745, 0.141328,
		-0.193224, -0.185604, 0.963440,
		0.955705, 0.186596, 0.227620,
		27.697077, 42.770832, 34.655895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.198473, 43.174294, 35.041668>,  <27.028084, 42.640213, 34.496559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.198473, 43.174294, 35.041668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.553253, 43.195850, 34.858185>,  <27.766121, 43.208786, 34.748093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.553253, 43.195850, 34.858185>,  <27.198473, 43.174294, 35.041668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.553253, 43.195850, 34.858185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151094, 0.904664, 0.398440,
		0.436452, -0.422705, 0.794248,
		0.886950, 0.053894, -0.458711,
		27.819338, 43.212017, 34.720573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.764706, 43.192066, 35.457767>,  <27.198473, 43.174294, 35.041668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.764706, 43.192066, 35.457767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.876423, 43.386742, 35.126678>,  <27.943453, 43.503548, 34.928024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.876423, 43.386742, 35.126678>,  <27.764706, 43.192066, 35.457767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.876423, 43.386742, 35.126678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143098, 0.831306, 0.537078,
		0.949484, -0.268448, 0.162532,
		0.279291, 0.486689, -0.827725,
		27.960211, 43.532749, 34.878361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.296209, 43.751648, 35.457516>,  <27.764706, 43.192066, 35.457767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.296209, 43.751648, 35.457516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.425514, 43.490829, 35.183189>,  <28.503098, 43.334339, 35.018593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.425514, 43.490829, 35.183189>,  <28.296209, 43.751648, 35.457516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.425514, 43.490829, 35.183189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277774, 0.627415, -0.727456,
		0.904624, 0.425659, 0.021697,
		0.323261, -0.652047, -0.685811,
		28.522491, 43.295216, 34.977448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.714886, 44.170994, 34.934681>,  <28.296209, 43.751648, 35.457516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.714886, 44.170994, 34.934681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.546011, 43.819675, 34.844929>,  <28.444685, 43.608883, 34.791077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.546011, 43.819675, 34.844929>,  <28.714886, 44.170994, 34.934681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.546011, 43.819675, 34.844929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298752, 0.368506, -0.880312,
		0.855864, -0.304622, -0.417973,
		-0.422189, -0.878298, -0.224385,
		28.419353, 43.556187, 34.777615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.965837, 44.003986, 34.278805>,  <28.714886, 44.170994, 34.934681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.965837, 44.003986, 34.278805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.608480, 43.844700, 34.362011>,  <28.394066, 43.749130, 34.411934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.608480, 43.844700, 34.362011>,  <28.965837, 44.003986, 34.278805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.608480, 43.844700, 34.362011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358127, 0.351640, -0.864925,
		0.271276, -0.847217, -0.456764,
		-0.893395, -0.398213, 0.208020,
		28.340462, 43.725235, 34.424416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.326267, 43.899551, 33.680435>,  <28.965837, 44.003986, 34.278805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.326267, 43.899551, 33.680435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.627060, 44.147881, 33.769070>,  <29.807535, 44.296879, 33.822250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.627060, 44.147881, 33.769070>,  <29.326267, 43.899551, 33.680435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.627060, 44.147881, 33.769070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182357, -0.518961, 0.835120,
		0.633459, -0.587586, -0.503461,
		0.751981, 0.620824, 0.221590,
		29.852654, 44.334129, 33.835548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.030693, 43.519466, 33.847576>,  <29.326267, 43.899551, 33.680435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.030693, 43.519466, 33.847576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.038269, 43.877880, 34.025013>,  <30.042814, 44.092926, 34.131474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.038269, 43.877880, 34.025013>,  <30.030693, 43.519466, 33.847576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.038269, 43.877880, 34.025013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251062, -0.433715, 0.865366,
		0.967786, 0.094979, -0.233174,
		0.018939, 0.896030, 0.443589,
		30.043951, 44.146690, 34.158089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.697826, 43.749008, 34.128143>,  <30.030693, 43.519466, 33.847576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.697826, 43.749008, 34.128143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.422997, 43.933422, 34.352776>,  <30.258099, 44.044071, 34.487556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.422997, 43.933422, 34.352776>,  <30.697826, 43.749008, 34.128143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.422997, 43.933422, 34.352776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366326, -0.447682, 0.815712,
		0.627484, 0.766177, 0.138701,
		-0.687073, 0.461036, 0.561584,
		30.216875, 44.071732, 34.521252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.032978, 44.077145, 34.658417>,  <30.697826, 43.749008, 34.128143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.032978, 44.077145, 34.658417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.663124, 43.978378, 34.774406>,  <30.441212, 43.919117, 34.843998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.663124, 43.978378, 34.774406>,  <31.032978, 44.077145, 34.658417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.663124, 43.978378, 34.774406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379808, -0.654187, 0.654052,
		0.028199, 0.714893, 0.698665,
		-0.924635, -0.246915, 0.289970,
		30.385733, 43.904305, 34.861397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.945045, 44.107464, 35.442078>,  <31.032978, 44.077145, 34.658417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.945045, 44.107464, 35.442078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.693775, 43.827343, 35.306446>,  <30.543013, 43.659271, 35.225067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.693775, 43.827343, 35.306446>,  <30.945045, 44.107464, 35.442078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.693775, 43.827343, 35.306446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316173, -0.627937, 0.711147,
		-0.710938, 0.339516, 0.615870,
		-0.628174, -0.700302, -0.339079,
		30.505323, 43.617252, 35.204723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.785370, 43.784016, 35.994602>,  <30.945045, 44.107464, 35.442078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.785370, 43.784016, 35.994602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.652493, 43.510986, 35.734219>,  <30.572765, 43.347168, 35.577988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.652493, 43.510986, 35.734219>,  <30.785370, 43.784016, 35.994602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.652493, 43.510986, 35.734219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216777, -0.726926, 0.651603,
		-0.917963, 0.075346, 0.389445,
		-0.332193, -0.682570, -0.650958,
		30.552835, 43.306217, 35.538933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.206856, 43.302647, 36.336422>,  <30.785370, 43.784016, 35.994602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.206856, 43.302647, 36.336422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.383400, 43.120041, 36.027412>,  <30.489326, 43.010475, 35.842007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.383400, 43.120041, 36.027412>,  <30.206856, 43.302647, 36.336422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.383400, 43.120041, 36.027412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043833, -0.848918, 0.526704,
		-0.896260, -0.266327, -0.354665,
		0.441358, -0.456518, -0.772525,
		30.515808, 42.983086, 35.795654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.235121, 42.675484, 36.610512>,  <30.206856, 43.302647, 36.336422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.235121, 42.675484, 36.610512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.415108, 42.602386, 36.260853>,  <30.523100, 42.558529, 36.051056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.415108, 42.602386, 36.260853>,  <30.235121, 42.675484, 36.610512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.415108, 42.602386, 36.260853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100381, -0.962287, 0.252838,
		-0.887387, -0.201517, -0.414652,
		0.449965, -0.182742, -0.874149,
		30.550097, 42.547565, 35.998608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.008722, 42.099777, 36.342525>,  <30.235121, 42.675484, 36.610512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.008722, 42.099777, 36.342525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.352705, 42.096996, 36.138397>,  <30.559093, 42.095325, 36.015919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.352705, 42.096996, 36.138397>,  <30.008722, 42.099777, 36.342525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.352705, 42.096996, 36.138397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138192, -0.959381, 0.245948,
		-0.491304, -0.282027, -0.824064,
		0.859955, -0.006956, -0.510322,
		30.610691, 42.094910, 35.985302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.938011, 41.513020, 35.940571>,  <30.008722, 42.099777, 36.342525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.938011, 41.513020, 35.940571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.322018, 41.613762, 35.989460>,  <30.552422, 41.674210, 36.018795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.322018, 41.613762, 35.989460>,  <29.938011, 41.513020, 35.940571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.322018, 41.613762, 35.989460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208367, -0.934418, 0.288869,
		0.186961, -0.251852, -0.949535,
		0.960015, 0.251859, 0.122222,
		30.610022, 41.689320, 36.026127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.460295, 41.028652, 35.542030>,  <29.938011, 41.513020, 35.940571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.460295, 41.028652, 35.542030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.638536, 41.204681, 35.853870>,  <30.745481, 41.310299, 36.040974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.638536, 41.204681, 35.853870>,  <30.460295, 41.028652, 35.542030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.638536, 41.204681, 35.853870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286193, -0.895164, 0.341724,
		0.848252, 0.070843, -0.524833,
		0.445602, 0.440072, 0.779600,
		30.772217, 41.336704, 36.087749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.969912, 40.575603, 35.650208>,  <30.460295, 41.028652, 35.542030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.969912, 40.575603, 35.650208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.004784, 40.753662, 36.006691>,  <31.025707, 40.860497, 36.220581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.004784, 40.753662, 36.006691>,  <30.969912, 40.575603, 35.650208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.004784, 40.753662, 36.006691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028691, -0.893117, 0.448908,
		0.995779, -0.064705, -0.065089,
		0.087178, 0.445146, 0.891204,
		31.030937, 40.887207, 36.274052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.443771, 40.126808, 35.998455>,  <30.969912, 40.575603, 35.650208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.443771, 40.126808, 35.998455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.262386, 40.341518, 36.283058>,  <31.153555, 40.470345, 36.453819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.262386, 40.341518, 36.283058>,  <31.443771, 40.126808, 35.998455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.262386, 40.341518, 36.283058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222514, -0.841209, 0.492803,
		0.863052, 0.065147, 0.500896,
		-0.453463, 0.536771, 0.711511,
		31.126347, 40.502548, 36.496513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.653509, 39.887444, 36.638744>,  <31.443771, 40.126808, 35.998455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.653509, 39.887444, 36.638744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.293503, 40.050850, 36.699520>,  <31.077499, 40.148891, 36.735985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.293503, 40.050850, 36.699520>,  <31.653509, 39.887444, 36.638744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.293503, 40.050850, 36.699520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343006, -0.878943, 0.331370,
		0.268917, 0.246122, 0.931186,
		-0.900017, 0.408514, 0.151941,
		31.023499, 40.173405, 36.745102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.504225, 39.691887, 37.292393>,  <31.653509, 39.887444, 36.638744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.504225, 39.691887, 37.292393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.149578, 39.780910, 37.130222>,  <30.936790, 39.834324, 37.032921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.149578, 39.780910, 37.130222>,  <31.504225, 39.691887, 37.292393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.149578, 39.780910, 37.130222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381323, -0.847829, 0.368481,
		-0.261724, 0.481301, 0.836570,
		-0.886619, 0.222563, -0.405429,
		30.883593, 39.847679, 37.008595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.982782, 39.467381, 37.740387>,  <31.504225, 39.691887, 37.292393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.982782, 39.467381, 37.740387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.781229, 39.485683, 37.395363>,  <30.660297, 39.496666, 37.188347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.781229, 39.485683, 37.395363>,  <30.982782, 39.467381, 37.740387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.781229, 39.485683, 37.395363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516386, -0.816457, 0.258348,
		-0.692422, 0.575590, 0.435025,
		-0.503882, 0.045755, -0.862560,
		30.630064, 39.499409, 37.136597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.254406, 39.448853, 37.898499>,  <30.982782, 39.467381, 37.740387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.254406, 39.448853, 37.898499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.284222, 39.343807, 37.513691>,  <30.302111, 39.280781, 37.282806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.284222, 39.343807, 37.513691>,  <30.254406, 39.448853, 37.898499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.284222, 39.343807, 37.513691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616795, -0.770177, 0.162452,
		-0.783586, 0.581259, -0.219386,
		0.074539, -0.262612, -0.962018,
		30.306583, 39.265022, 37.225086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.522488, 39.218502, 37.736118>,  <30.254406, 39.448853, 37.898499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.522488, 39.218502, 37.736118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.745907, 39.082314, 37.433567>,  <29.879959, 39.000599, 37.252037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.745907, 39.082314, 37.433567>,  <29.522488, 39.218502, 37.736118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.745907, 39.082314, 37.433567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463033, -0.884555, 0.056240,
		-0.688203, 0.318813, -0.651717,
		0.558550, -0.340471, -0.756374,
		29.913471, 38.980171, 37.206654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.088928, 38.890274, 37.229008>,  <29.522488, 39.218502, 37.736118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.088928, 38.890274, 37.229008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.450153, 38.732079, 37.161999>,  <29.666889, 38.637161, 37.121792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.450153, 38.732079, 37.161999>,  <29.088928, 38.890274, 37.229008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.450153, 38.732079, 37.161999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406171, -0.913175, -0.033706,
		-0.139648, 0.098483, -0.985292,
		0.903063, -0.395490, -0.167524,
		29.721073, 38.613430, 37.111740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.964064, 38.403389, 36.657177>,  <29.088928, 38.890274, 37.229008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.964064, 38.403389, 36.657177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.297007, 38.301167, 36.853901>,  <29.496773, 38.239834, 36.971935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.297007, 38.301167, 36.853901>,  <28.964064, 38.403389, 36.657177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.297007, 38.301167, 36.853901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242017, -0.965873, -0.092293,
		0.498611, -0.042206, -0.865798,
		0.832355, -0.255555, 0.491809,
		29.546713, 38.224499, 37.001442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.038143, 37.723564, 36.444729>,  <28.964064, 38.403389, 36.657177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.038143, 37.723564, 36.444729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.309641, 37.736073, 36.738213>,  <29.472540, 37.743576, 36.914303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.309641, 37.736073, 36.738213>,  <29.038143, 37.723564, 36.444729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.309641, 37.736073, 36.738213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073240, -0.991229, 0.110002,
		0.730711, -0.128399, -0.670503,
		0.678746, 0.031272, 0.733706,
		29.513266, 37.745453, 36.958324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.552164, 37.299076, 36.275085>,  <29.038143, 37.723564, 36.444729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.552164, 37.299076, 36.275085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.567402, 37.313377, 36.674538>,  <29.576546, 37.321957, 36.914211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.567402, 37.313377, 36.674538>,  <29.552164, 37.299076, 36.275085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.567402, 37.313377, 36.674538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143019, -0.989266, 0.029961,
		0.988987, 0.141682, -0.042798,
		0.038094, 0.035752, 0.998634,
		29.578831, 37.324104, 36.974129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.251875, 36.914845, 36.517822>,  <29.552164, 37.299076, 36.275085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.251875, 36.914845, 36.517822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.022118, 36.928524, 36.844967>,  <29.884264, 36.936733, 37.041256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.022118, 36.928524, 36.844967>,  <30.251875, 36.914845, 36.517822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.022118, 36.928524, 36.844967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118741, -0.985078, 0.124584,
		0.809922, 0.168674, 0.561761,
		-0.574393, 0.034199, 0.817865,
		29.849800, 36.938786, 37.090328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.650770, 36.667503, 37.070400>,  <30.251875, 36.914845, 36.517822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.650770, 36.667503, 37.070400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.262159, 36.606697, 37.143093>,  <30.028994, 36.570213, 37.186707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.262159, 36.606697, 37.143093>,  <30.650770, 36.667503, 37.070400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.262159, 36.606697, 37.143093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189515, -0.958938, 0.211001,
		0.142191, 0.239434, 0.960444,
		-0.971528, -0.152016, 0.181728,
		29.970701, 36.561092, 37.197613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.686470, 36.296402, 37.727417>,  <30.650770, 36.667503, 37.070400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.686470, 36.296402, 37.727417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.323025, 36.218304, 37.579742>,  <30.104958, 36.171444, 37.491138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.323025, 36.218304, 37.579742>,  <30.686470, 36.296402, 37.727417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.323025, 36.218304, 37.579742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174511, -0.980615, 0.089107,
		-0.379430, 0.016536, 0.925073,
		-0.908614, -0.195246, -0.369189,
		30.050440, 36.159729, 37.468987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.495390, 35.768753, 38.219620>,  <30.686470, 36.296402, 37.727417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.495390, 35.768753, 38.219620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.278677, 35.736122, 37.884998>,  <30.148649, 35.716545, 37.684227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.278677, 35.736122, 37.884998>,  <30.495390, 35.768753, 38.219620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.278677, 35.736122, 37.884998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346398, -0.928496, -0.133801,
		-0.765821, -0.362271, 0.531298,
		-0.541780, -0.081573, -0.836552,
		30.116142, 35.711651, 37.634033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.166302, 35.113636, 38.228729>,  <30.495390, 35.768753, 38.219620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.166302, 35.113636, 38.228729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.188082, 35.243347, 37.850971>,  <30.201151, 35.321175, 37.624317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.188082, 35.243347, 37.850971>,  <30.166302, 35.113636, 38.228729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.188082, 35.243347, 37.850971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426464, -0.862748, -0.271651,
		-0.902864, -0.387959, -0.185270,
		0.054452, 0.324275, -0.944394,
		30.204416, 35.340630, 37.567654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.500891, 34.503845, 38.207008>,  <30.166302, 35.113636, 38.228729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.500891, 34.503845, 38.207008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.747204, 34.477398, 37.892952>,  <30.894991, 34.461529, 37.704517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.747204, 34.477398, 37.892952>,  <30.500891, 34.503845, 38.207008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.747204, 34.477398, 37.892952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777017, 0.216126, 0.591215,
		0.130600, -0.974125, 0.184459,
		0.615783, -0.066116, -0.785137,
		30.931938, 34.457561, 37.657410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.974297, 34.035030, 38.361336>,  <30.500891, 34.503845, 38.207008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.974297, 34.035030, 38.361336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.112583, 34.308506, 38.104259>,  <31.195555, 34.472591, 37.950012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.112583, 34.308506, 38.104259>,  <30.974297, 34.035030, 38.361336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.112583, 34.308506, 38.104259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693184, 0.275554, 0.666007,
		0.632436, -0.675754, -0.378656,
		0.345717, 0.683685, -0.642693,
		31.216299, 34.513611, 37.911453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.722900, 34.021980, 38.376507>,  <30.974297, 34.035030, 38.361336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.722900, 34.021980, 38.376507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.564325, 34.372505, 38.267021>,  <31.469181, 34.582821, 38.201332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.564325, 34.372505, 38.267021>,  <31.722900, 34.021980, 38.376507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.564325, 34.372505, 38.267021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432539, 0.441259, 0.786257,
		0.809783, 0.193310, -0.553970,
		-0.396435, 0.876311, -0.273710,
		31.445395, 34.635399, 38.184910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.233055, 34.652149, 38.176140>,  <31.722900, 34.021980, 38.376507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.233055, 34.652149, 38.176140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.886091, 34.775467, 38.332371>,  <31.677914, 34.849457, 38.426109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.886091, 34.775467, 38.332371>,  <32.233055, 34.652149, 38.176140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.886091, 34.775467, 38.332371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479682, 0.309364, 0.821096,
		0.132309, 0.899582, -0.416230,
		-0.867410, 0.308296, 0.390581,
		31.625868, 34.867954, 38.449547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.314823, 35.351761, 38.318668>,  <32.233055, 34.652149, 38.176140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.314823, 35.351761, 38.318668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.035553, 35.194363, 38.557903>,  <31.867990, 35.099922, 38.701443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.035553, 35.194363, 38.557903>,  <32.314823, 35.351761, 38.318668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.035553, 35.194363, 38.557903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445405, 0.415301, 0.793183,
		-0.560502, 0.820173, -0.114687,
		-0.698177, -0.393499, 0.598087,
		31.826099, 35.076313, 38.737328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.079792, 35.876270, 38.845997>,  <32.314823, 35.351761, 38.318668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.079792, 35.876270, 38.845997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.051682, 35.494965, 38.963539>,  <32.034817, 35.266182, 39.034065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.051682, 35.494965, 38.963539>,  <32.079792, 35.876270, 38.845997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.051682, 35.494965, 38.963539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496664, 0.222041, 0.839060,
		-0.865093, 0.204915, 0.457847,
		-0.070275, -0.953262, 0.293860,
		32.030598, 35.208984, 39.051697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.813354, 35.867771, 39.546303>,  <32.079792, 35.876270, 38.845997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.813354, 35.867771, 39.546303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.027271, 35.540260, 39.462776>,  <32.155621, 35.343754, 39.412659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.027271, 35.540260, 39.462776>,  <31.813354, 35.867771, 39.546303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.027271, 35.540260, 39.462776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248667, -0.083680, 0.964968,
		-0.807565, -0.567984, 0.158851,
		0.534794, -0.818775, -0.208815,
		32.187710, 35.294628, 39.400131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.665098, 35.456470, 40.150928>,  <31.813354, 35.867771, 39.546303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.665098, 35.456470, 40.150928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.994162, 35.279408, 40.008217>,  <32.191601, 35.173172, 39.922588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.994162, 35.279408, 40.008217>,  <31.665098, 35.456470, 40.150928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.994162, 35.279408, 40.008217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344534, -0.111037, 0.932184,
		-0.452251, -0.889791, 0.061164,
		0.822657, -0.442654, -0.356780,
		32.240959, 35.146610, 39.901184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.834343, 34.819427, 40.573891>,  <31.665098, 35.456470, 40.150928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.834343, 34.819427, 40.573891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.183884, 34.933327, 40.416256>,  <32.393608, 35.001667, 40.321674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.183884, 34.933327, 40.416256>,  <31.834343, 34.819427, 40.573891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.183884, 34.933327, 40.416256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457645, -0.208059, 0.864449,
		0.164157, -0.935751, -0.312126,
		0.873850, 0.284749, -0.394088,
		32.446037, 35.018753, 40.298031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.283298, 34.424202, 40.981018>,  <31.834343, 34.819427, 40.573891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.283298, 34.424202, 40.981018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.514565, 34.683796, 40.783211>,  <32.653324, 34.839554, 40.664528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.514565, 34.683796, 40.783211>,  <32.283298, 34.424202, 40.981018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.514565, 34.683796, 40.783211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665067, -0.023739, 0.746406,
		0.472668, -0.760429, -0.445345,
		0.578161, 0.648987, -0.494516,
		32.688011, 34.878490, 40.634857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.892689, 34.129787, 41.135288>,  <32.283298, 34.424202, 40.981018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.892689, 34.129787, 41.135288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.976921, 34.506561, 41.030666>,  <33.027462, 34.732628, 40.967896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.976921, 34.506561, 41.030666>,  <32.892689, 34.129787, 41.135288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.976921, 34.506561, 41.030666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745693, 0.018232, 0.666041,
		0.632138, -0.335292, -0.698556,
		0.210582, 0.941938, -0.261550,
		33.040096, 34.789143, 40.952202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.591312, 34.139648, 40.929829>,  <32.892689, 34.129787, 41.135288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.591312, 34.139648, 40.929829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.497807, 34.510811, 41.045998>,  <33.441704, 34.733509, 41.115700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.497807, 34.510811, 41.045998>,  <33.591312, 34.139648, 40.929829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.497807, 34.510811, 41.045998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750387, -0.017772, 0.660760,
		0.618284, 0.372391, -0.692134,
		-0.233761, 0.927906, 0.290425,
		33.427677, 34.789181, 41.133125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.212391, 34.478386, 41.030869>,  <33.591312, 34.139648, 40.929829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.212391, 34.478386, 41.030869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.953632, 34.689255, 41.251270>,  <33.798378, 34.815777, 41.383511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.953632, 34.689255, 41.251270>,  <34.212391, 34.478386, 41.030869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.953632, 34.689255, 41.251270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706156, 0.141353, 0.693804,
		0.287869, 0.837918, -0.463708,
		-0.646897, 0.527175, 0.551009,
		33.759563, 34.847408, 41.416573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.646374, 35.035664, 41.289394>,  <34.212391, 34.478386, 41.030869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.646374, 35.035664, 41.289394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.312344, 35.016701, 41.508633>,  <34.111927, 35.005322, 41.640175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.312344, 35.016701, 41.508633>,  <34.646374, 35.035664, 41.289394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.312344, 35.016701, 41.508633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533597, 0.172692, 0.827920,
		-0.133905, 0.983834, -0.118911,
		-0.835071, -0.047412, 0.548095,
		34.061821, 35.002476, 41.673061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.736897, 35.500584, 41.723881>,  <34.646374, 35.035664, 41.289394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.736897, 35.500584, 41.723881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.459549, 35.278919, 41.908115>,  <34.293140, 35.145920, 42.018658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.459549, 35.278919, 41.908115>,  <34.736897, 35.500584, 41.723881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.459549, 35.278919, 41.908115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525020, 0.049281, 0.849662,
		-0.493549, 0.830949, 0.256777,
		-0.693371, -0.554163, 0.460587,
		34.251537, 35.112671, 42.046291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.842712, 35.761250, 42.350719>,  <34.736897, 35.500584, 41.723881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.842712, 35.761250, 42.350719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.642216, 35.416321, 42.379436>,  <34.521915, 35.209362, 42.396667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.642216, 35.416321, 42.379436>,  <34.842712, 35.761250, 42.350719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.642216, 35.416321, 42.379436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322640, -0.109264, 0.940194,
		-0.802905, 0.494433, 0.332987,
		-0.501246, -0.862321, 0.071795,
		34.491840, 35.157623, 42.400974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.528866, 35.803802, 42.980690>,  <34.842712, 35.761250, 42.350719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.528866, 35.803802, 42.980690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.542728, 35.413658, 42.893547>,  <34.551044, 35.179569, 42.841259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.542728, 35.413658, 42.893547>,  <34.528866, 35.803802, 42.980690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.542728, 35.413658, 42.893547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376634, -0.189174, 0.906840,
		-0.925713, -0.113483, 0.360799,
		0.034657, -0.975364, -0.217862,
		34.553127, 35.121048, 42.828190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.187592, 35.530560, 43.588779>,  <34.528866, 35.803802, 42.980690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.187592, 35.530560, 43.588779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.374943, 35.224258, 43.412483>,  <34.487354, 35.040478, 43.306705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.374943, 35.224258, 43.412483>,  <34.187592, 35.530560, 43.588779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.374943, 35.224258, 43.412483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232746, -0.374281, 0.897632,
		-0.852323, -0.523008, 0.002921,
		0.468376, -0.765752, -0.440737,
		34.515457, 34.994534, 43.280262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.947350, 34.884407, 43.940285>,  <34.187592, 35.530560, 43.588779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.947350, 34.884407, 43.940285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.265686, 34.730835, 43.752995>,  <34.456688, 34.638691, 43.640621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.265686, 34.730835, 43.752995>,  <33.947350, 34.884407, 43.940285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.265686, 34.730835, 43.752995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277227, -0.456427, 0.845470,
		-0.538313, -0.802663, -0.256807,
		0.795842, -0.383934, -0.468221,
		34.504440, 34.615654, 43.612530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.917984, 34.161118, 43.949051>,  <33.947350, 34.884407, 43.940285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.917984, 34.161118, 43.949051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.296066, 34.291252, 43.938087>,  <34.522915, 34.369331, 43.931507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.296066, 34.291252, 43.938087>,  <33.917984, 34.161118, 43.949051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.296066, 34.291252, 43.938087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194739, -0.494404, 0.847137,
		0.262050, -0.806054, -0.530667,
		0.945202, 0.325334, -0.027411,
		34.579628, 34.388851, 43.929863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.389259, 33.527939, 44.065296>,  <33.917984, 34.161118, 43.949051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.389259, 33.527939, 44.065296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.607048, 33.857880, 44.126190>,  <34.737720, 34.055843, 44.162727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.607048, 33.857880, 44.126190>,  <34.389259, 33.527939, 44.065296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.607048, 33.857880, 44.126190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415519, -0.422906, 0.805292,
		0.728625, -0.375202, -0.573000,
		0.544472, 0.824848, 0.152236,
		34.770390, 34.105335, 44.171860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.975815, 33.198917, 44.187862>,  <34.389259, 33.527939, 44.065296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.975815, 33.198917, 44.187862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.997971, 33.577724, 44.314415>,  <35.011265, 33.805008, 44.390347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.997971, 33.577724, 44.314415>,  <34.975815, 33.198917, 44.187862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.997971, 33.577724, 44.314415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170662, -0.321185, 0.931512,
		0.983772, 0.002397, -0.179410,
		0.055391, 0.947013, 0.316381,
		35.014587, 33.861828, 44.409328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.564308, 33.287258, 44.751396>,  <34.975815, 33.198917, 44.187862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.564308, 33.287258, 44.751396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.335732, 33.609646, 44.813190>,  <35.198586, 33.803078, 44.850266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.335732, 33.609646, 44.813190>,  <35.564308, 33.287258, 44.751396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.335732, 33.609646, 44.813190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250983, -0.007582, 0.967962,
		0.781322, 0.591904, -0.197953,
		-0.571439, 0.805973, 0.154482,
		35.164299, 33.851437, 44.859535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.977867, 33.774868, 45.247002>,  <35.564308, 33.287258, 44.751396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.977867, 33.774868, 45.247002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.587719, 33.859982, 45.270218>,  <35.353630, 33.911049, 45.284145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.587719, 33.859982, 45.270218>,  <35.977867, 33.774868, 45.247002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.587719, 33.859982, 45.270218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068898, 0.043983, 0.996654,
		0.209518, 0.976109, -0.057561,
		-0.975374, 0.212783, 0.058037,
		35.295105, 33.923817, 45.287628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.005287, 34.238178, 45.789909>,  <35.977867, 33.774868, 45.247002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.005287, 34.238178, 45.789909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.626034, 34.111076, 45.793148>,  <35.398479, 34.034813, 45.795094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.626034, 34.111076, 45.793148>,  <36.005287, 34.238178, 45.789909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.626034, 34.111076, 45.793148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039491, -0.092475, 0.994932,
		-0.315398, 0.943652, 0.100228,
		-0.948137, -0.317757, 0.008099,
		35.341591, 34.015751, 45.795578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.630486, 34.539536, 46.359806>,  <36.005287, 34.238178, 45.789909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.630486, 34.539536, 46.359806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.419891, 34.211292, 46.270897>,  <35.293533, 34.014347, 46.217552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.419891, 34.211292, 46.270897>,  <35.630486, 34.539536, 46.359806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.419891, 34.211292, 46.270897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064846, -0.221916, 0.972907,
		-0.847705, 0.526639, 0.063622,
		-0.526489, -0.820613, -0.222270,
		35.261944, 33.965107, 46.204216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.075474, 34.681229, 46.670425>,  <35.630486, 34.539536, 46.359806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.075474, 34.681229, 46.670425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.111469, 34.287933, 46.606998>,  <35.133068, 34.051956, 46.568943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.111469, 34.287933, 46.606998>,  <35.075474, 34.681229, 46.670425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.111469, 34.287933, 46.606998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315072, -0.179142, 0.932007,
		-0.944792, -0.033908, -0.325912,
		0.089987, -0.983239, -0.158569,
		35.138466, 33.992962, 46.559429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.399841, 34.378513, 46.902882>,  <35.075474, 34.681229, 46.670425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.399841, 34.378513, 46.902882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.713276, 34.130016, 46.905842>,  <34.901337, 33.980919, 46.907619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.713276, 34.130016, 46.905842>,  <34.399841, 34.378513, 46.902882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.713276, 34.130016, 46.905842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210924, -0.254796, 0.943711,
		-0.584388, -0.741036, -0.330690,
		0.783582, -0.621244, 0.007403,
		34.948349, 33.943642, 46.908062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.092800, 33.871078, 47.308884>,  <34.399841, 34.378513, 46.902882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.092800, 33.871078, 47.308884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.477440, 33.763386, 47.287548>,  <34.708221, 33.698769, 47.274746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.477440, 33.763386, 47.287548>,  <34.092800, 33.871078, 47.308884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.477440, 33.763386, 47.287548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011389, -0.155037, 0.987843,
		-0.274234, -0.950513, -0.146016,
		0.961596, -0.269237, -0.053342,
		34.765919, 33.682617, 47.271545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.120609, 33.281956, 47.748444>,  <34.092800, 33.871078, 47.308884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.120609, 33.281956, 47.748444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.491245, 33.429878, 47.721088>,  <34.713627, 33.518631, 47.704674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.491245, 33.429878, 47.721088>,  <34.120609, 33.281956, 47.748444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.491245, 33.429878, 47.721088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137416, -0.163647, 0.976902,
		0.350072, -0.914584, -0.202451,
		0.926589, 0.369806, -0.068390,
		34.769222, 33.540821, 47.700573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.534904, 32.814869, 48.198608>,  <34.120609, 33.281956, 47.748444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.534904, 32.814869, 48.198608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.747051, 33.151325, 48.156284>,  <34.874340, 33.353199, 48.130890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.747051, 33.151325, 48.156284>,  <34.534904, 32.814869, 48.198608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.747051, 33.151325, 48.156284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224887, -0.019252, 0.974195,
		0.817397, -0.540474, -0.199372,
		0.530365, 0.841140, -0.105809,
		34.906162, 33.403667, 48.124542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.203979, 32.653347, 48.508564>,  <34.534904, 32.814869, 48.198608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.203979, 32.653347, 48.508564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.195774, 33.053234, 48.503738>,  <35.190849, 33.293167, 48.500843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.195774, 33.053234, 48.503738>,  <35.203979, 32.653347, 48.508564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.195774, 33.053234, 48.503738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075643, 0.013584, 0.997042,
		0.996924, 0.019543, -0.075901,
		-0.020516, 0.999717, -0.012064,
		35.189621, 33.353149, 48.500118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.836777, 32.941013, 48.974907>,  <35.203979, 32.653347, 48.508564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.836777, 32.941013, 48.974907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.571384, 33.239464, 48.952675>,  <35.412151, 33.418533, 48.939335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.571384, 33.239464, 48.952675>,  <35.836777, 32.941013, 48.974907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.571384, 33.239464, 48.952675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044315, 0.034972, 0.998405,
		0.746883, 0.664883, 0.009862,
		-0.663477, 0.746129, -0.055584,
		35.372341, 33.463303, 48.936001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.008087, 33.628582, 49.219162>,  <35.836777, 32.941013, 48.974907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.008087, 33.628582, 49.219162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.619022, 33.545654, 49.261021>,  <35.385586, 33.495899, 49.286137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.619022, 33.545654, 49.261021>,  <36.008087, 33.628582, 49.219162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.619022, 33.545654, 49.261021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098464, 0.039946, 0.994339,
		-0.210327, 0.977457, -0.018441,
		-0.972660, -0.207321, 0.104646,
		35.327225, 33.483459, 49.292416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.730598, 34.093899, 49.626076>,  <36.008087, 33.628582, 49.219162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.730598, 34.093899, 49.626076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.498814, 33.770367, 49.666130>,  <35.359745, 33.576248, 49.690163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.498814, 33.770367, 49.666130>,  <35.730598, 34.093899, 49.626076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.498814, 33.770367, 49.666130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279368, -0.081707, 0.956702,
		-0.765625, 0.582343, 0.273306,
		-0.579459, -0.808827, 0.100131,
		35.324974, 33.527718, 49.696171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.418484, 34.114807, 50.315792>,  <35.730598, 34.093899, 49.626076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.418484, 34.114807, 50.315792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.373474, 33.729889, 50.216743>,  <35.346470, 33.498936, 50.157314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.373474, 33.729889, 50.216743>,  <35.418484, 34.114807, 50.315792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.373474, 33.729889, 50.216743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063095, -0.255622, 0.964716,
		-0.991644, 0.092930, 0.089480,
		-0.112524, -0.962300, -0.247623,
		35.339718, 33.441200, 50.142456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.935497, 33.722488, 50.836781>,  <35.418484, 34.114807, 50.315792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.935497, 33.722488, 50.836781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.138752, 33.415291, 50.680840>,  <35.260704, 33.230972, 50.587276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.138752, 33.415291, 50.680840>,  <34.935497, 33.722488, 50.836781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.138752, 33.415291, 50.680840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130315, -0.378877, 0.916226,
		-0.851363, -0.516369, -0.092439,
		0.508133, -0.767995, -0.389852,
		35.291191, 33.184891, 50.563885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.654663, 33.114449, 51.199345>,  <34.935497, 33.722488, 50.836781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.654663, 33.114449, 51.199345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.003933, 33.004875, 51.038086>,  <35.213493, 32.939133, 50.941330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.003933, 33.004875, 51.038086>,  <34.654663, 33.114449, 51.199345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.003933, 33.004875, 51.038086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270332, -0.416057, 0.868227,
		-0.405559, -0.867100, -0.289242,
		0.873180, -0.273926, -0.403140,
		35.265884, 32.922695, 50.917145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.739841, 32.456963, 51.444267>,  <34.654663, 33.114449, 51.199345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.739841, 32.456963, 51.444267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.115036, 32.535717, 51.330124>,  <35.340153, 32.582970, 51.261639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.115036, 32.535717, 51.330124>,  <34.739841, 32.456963, 51.444267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.115036, 32.535717, 51.330124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344860, -0.614201, 0.709808,
		-0.035515, -0.764195, -0.644007,
		0.937982, 0.196883, -0.285354,
		35.396431, 32.594784, 51.244518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.147652, 31.997885, 51.853512>,  <34.739841, 32.456963, 51.444267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.147652, 31.997885, 51.853512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.444569, 32.211185, 51.691212>,  <35.622719, 32.339165, 51.593830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.444569, 32.211185, 51.691212>,  <35.147652, 31.997885, 51.853512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.444569, 32.211185, 51.691212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667980, -0.541082, 0.510914,
		0.052901, -0.650285, -0.757846,
		0.742297, 0.533254, -0.405754,
		35.667259, 32.371162, 51.569485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.654957, 31.508223, 51.583153>,  <35.147652, 31.997885, 51.853512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.654957, 31.508223, 51.583153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.837383, 31.855038, 51.663399>,  <35.946838, 32.063126, 51.711544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.837383, 31.855038, 51.663399>,  <35.654957, 31.508223, 51.583153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.837383, 31.855038, 51.663399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692525, -0.487340, 0.531892,
		0.558936, -0.103652, -0.822707,
		0.456069, 0.867039, 0.200610,
		35.974205, 32.115150, 51.723583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.295029, 31.402945, 51.656635>,  <35.654957, 31.508223, 51.583153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.295029, 31.402945, 51.656635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.316463, 31.750601, 51.853294>,  <36.329323, 31.959194, 51.971291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.316463, 31.750601, 51.853294>,  <36.295029, 31.402945, 51.656635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.316463, 31.750601, 51.853294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576566, -0.428923, 0.695411,
		0.815291, 0.246208, -0.524101,
		0.053583, 0.869142, 0.491652,
		36.332539, 32.011345, 52.000790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.963982, 31.520323, 51.674789>,  <36.295029, 31.402945, 51.656635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.963982, 31.520323, 51.674789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.836662, 31.759750, 51.968838>,  <36.760273, 31.903406, 52.145267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.836662, 31.759750, 51.968838>,  <36.963982, 31.520323, 51.674789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.836662, 31.759750, 51.968838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630997, -0.444944, 0.635506,
		0.707481, 0.666139, -0.236071,
		-0.318297, 0.598568, 0.735121,
		36.741173, 31.939322, 52.189373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.533592, 31.806440, 52.049423>,  <36.963982, 31.520323, 51.674789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.533592, 31.806440, 52.049423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.224182, 31.831305, 52.301708>,  <37.038536, 31.846224, 52.453079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.224182, 31.831305, 52.301708>,  <37.533592, 31.806440, 52.049423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.224182, 31.831305, 52.301708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569659, -0.367961, 0.734910,
		0.277760, 0.927761, 0.249216,
		-0.773523, 0.062161, 0.630712,
		36.992126, 31.849953, 52.490921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.791512, 32.025776, 52.613689>,  <37.533592, 31.806440, 52.049423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.791512, 32.025776, 52.613689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.442921, 31.903545, 52.767128>,  <37.233765, 31.830206, 52.859192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.442921, 31.903545, 52.767128>,  <37.791512, 32.025776, 52.613689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.442921, 31.903545, 52.767128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484341, -0.413351, 0.771074,
		-0.077066, 0.857765, 0.508232,
		-0.871478, -0.305581, 0.383595,
		37.181477, 31.811871, 52.882206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.811390, 32.227318, 53.197033>,  <37.791512, 32.025776, 52.613689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.811390, 32.227318, 53.197033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.561317, 31.916245, 53.223450>,  <37.411274, 31.729601, 53.239300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.561317, 31.916245, 53.223450>,  <37.811390, 32.227318, 53.197033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.561317, 31.916245, 53.223450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495123, -0.329765, 0.803809,
		-0.603330, 0.535222, 0.591210,
		-0.625177, -0.777684, 0.066044,
		37.373764, 31.682940, 53.243263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.567184, 32.289410, 53.876926>,  <37.811390, 32.227318, 53.197033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.567184, 32.289410, 53.876926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.523602, 31.906027, 53.771488>,  <37.497452, 31.675997, 53.708225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.523602, 31.906027, 53.771488>,  <37.567184, 32.289410, 53.876926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.523602, 31.906027, 53.771488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379720, -0.285201, 0.880042,
		-0.918662, -0.004203, 0.395022,
		-0.108962, -0.958459, -0.263599,
		37.490913, 31.618488, 53.692410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.631462, 31.875868, 54.505016>,  <37.567184, 32.289410, 53.876926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.631462, 31.875868, 54.505016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.625912, 31.581350, 54.234409>,  <37.622581, 31.404640, 54.072044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.625912, 31.581350, 54.234409>,  <37.631462, 31.875868, 54.505016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.625912, 31.581350, 54.234409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467608, -0.602820, 0.646491,
		-0.883827, -0.307375, 0.352662,
		-0.013877, -0.736294, -0.676520,
		37.621750, 31.360462, 54.031452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.269264, 31.245182, 54.688725>,  <37.631462, 31.875868, 54.505016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.269264, 31.245182, 54.688725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.576347, 31.132595, 54.458454>,  <37.760597, 31.065042, 54.320293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.576347, 31.132595, 54.458454>,  <37.269264, 31.245182, 54.688725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.576347, 31.132595, 54.458454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293460, -0.644197, 0.706323,
		-0.569655, -0.711187, -0.411955,
		0.767707, -0.281468, -0.575674,
		37.806660, 31.048155, 54.285751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.291656, 30.556328, 54.775883>,  <37.269264, 31.245182, 54.688725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.291656, 30.556328, 54.775883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.643856, 30.670256, 54.624310>,  <37.855175, 30.738613, 54.533363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.643856, 30.670256, 54.624310>,  <37.291656, 30.556328, 54.775883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.643856, 30.670256, 54.624310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422606, -0.833774, 0.355281,
		-0.214756, -0.472966, -0.854507,
		0.880502, 0.284822, -0.378936,
		37.908009, 30.755703, 54.510628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.650433, 30.141708, 54.228619>,  <37.291656, 30.556328, 54.775883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.650433, 30.141708, 54.228619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.947929, 30.333792, 54.414631>,  <38.126427, 30.449041, 54.526237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.947929, 30.333792, 54.414631>,  <37.650433, 30.141708, 54.228619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.947929, 30.333792, 54.414631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386505, -0.876506, 0.286968,
		0.545405, -0.033694, -0.837495,
		0.743739, 0.480210, 0.465028,
		38.171051, 30.477854, 54.554138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.270054, 29.916801, 53.894604>,  <37.650433, 30.141708, 54.228619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.270054, 29.916801, 53.894604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.361084, 30.044441, 54.262600>,  <38.415703, 30.121025, 54.483398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.361084, 30.044441, 54.262600>,  <38.270054, 29.916801, 53.894604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.361084, 30.044441, 54.262600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488406, -0.854754, 0.175656,
		0.842417, 0.409353, -0.350375,
		0.227580, 0.319101, 0.919990,
		38.429359, 30.140171, 54.538597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.006435, 29.874222, 53.979557>,  <38.270054, 29.916801, 53.894604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.006435, 29.874222, 53.979557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.836384, 29.817760, 54.337181>,  <38.734352, 29.783884, 54.551754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.836384, 29.817760, 54.337181>,  <39.006435, 29.874222, 53.979557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.836384, 29.817760, 54.337181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644533, -0.740711, 0.189535,
		0.635485, 0.656827, 0.405878,
		-0.425130, -0.141155, 0.894058,
		38.708843, 29.775414, 54.605400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.551926, 29.257635, 54.000629>,  <39.006435, 29.874222, 53.979557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.551926, 29.257635, 54.000629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.800545, 28.997322, 54.175056>,  <38.949718, 28.841135, 54.279713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.800545, 28.997322, 54.175056>,  <38.551926, 29.257635, 54.000629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.800545, 28.997322, 54.175056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465446, 0.140957, 0.873780,
		-0.630108, -0.746065, -0.215292,
		0.621549, -0.650783, 0.436072,
		38.987011, 28.802088, 54.305878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.089287, 28.831263, 54.399330>,  <38.551926, 29.257635, 54.000629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.089287, 28.831263, 54.399330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.452038, 28.854107, 54.566330>,  <38.669689, 28.867813, 54.666531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.452038, 28.854107, 54.566330>,  <38.089287, 28.831263, 54.399330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.452038, 28.854107, 54.566330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416990, 0.264338, 0.869623,
		-0.060698, -0.962738, 0.263537,
		0.906882, 0.057108, 0.417497,
		38.724102, 28.871241, 54.691578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.526703, 28.914808, 53.793270>,  <38.089287, 28.831263, 54.399330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.526703, 28.914808, 53.793270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.231983, 28.807178, 54.041374>,  <37.055153, 28.742601, 54.190239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.231983, 28.807178, 54.041374>,  <37.526703, 28.914808, 53.793270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.231983, 28.807178, 54.041374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656817, 0.067263, -0.751044,
		0.160366, -0.960768, -0.226292,
		-0.736800, -0.269075, 0.620262,
		37.010944, 28.726456, 54.227451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.259075, 28.208176, 53.716442>,  <37.526703, 28.914808, 53.793270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.259075, 28.208176, 53.716442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.987041, 28.487890, 53.804527>,  <36.823822, 28.655718, 53.857376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.987041, 28.487890, 53.804527>,  <37.259075, 28.208176, 53.716442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.987041, 28.487890, 53.804527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405094, -0.108074, -0.907865,
		-0.611057, -0.706627, 0.356775,
		-0.680079, 0.699284, 0.220211,
		36.783016, 28.697676, 53.870590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.536110, 27.989639, 53.526432>,  <37.259075, 28.208176, 53.716442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.536110, 27.989639, 53.526432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.586109, 28.386366, 53.536793>,  <36.616108, 28.624403, 53.543011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.586109, 28.386366, 53.536793>,  <36.536110, 27.989639, 53.526432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.586109, 28.386366, 53.536793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507284, 0.086327, -0.857444,
		-0.852665, 0.094040, 0.513924,
		0.125000, 0.991819, 0.025903,
		36.623608, 28.683912, 53.544563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.892925, 28.344574, 53.316486>,  <36.536110, 27.989639, 53.526432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.892925, 28.344574, 53.316486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.185455, 28.611975, 53.262417>,  <36.360973, 28.772415, 53.229977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.185455, 28.611975, 53.262417>,  <35.892925, 28.344574, 53.316486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.185455, 28.611975, 53.262417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214197, 0.036957, -0.976091,
		-0.647523, 0.742792, 0.170219,
		0.731323, 0.668502, -0.135174,
		36.404854, 28.812525, 53.221867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.475037, 28.862968, 52.936783>,  <35.892925, 28.344574, 53.316486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.475037, 28.862968, 52.936783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.869057, 28.908585, 52.885124>,  <36.105469, 28.935955, 52.854130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.869057, 28.908585, 52.885124>,  <35.475037, 28.862968, 52.936783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.869057, 28.908585, 52.885124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137846, 0.071961, -0.987836,
		-0.103359, 0.990866, 0.086605,
		0.985046, 0.114040, -0.129149,
		36.164570, 28.942797, 52.846378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.509190, 29.509678, 52.539837>,  <35.475037, 28.862968, 52.936783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.509190, 29.509678, 52.539837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.855465, 29.318815, 52.479305>,  <36.063229, 29.204298, 52.442986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.855465, 29.318815, 52.479305>,  <35.509190, 29.509678, 52.539837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.855465, 29.318815, 52.479305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087276, 0.153808, -0.984239,
		0.492914, 0.865253, 0.091505,
		0.865690, -0.477159, -0.151330,
		36.115173, 29.175667, 52.433907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.003635, 29.907938, 52.157780>,  <35.509190, 29.509678, 52.539837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.003635, 29.907938, 52.157780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.127209, 29.534336, 52.086010>,  <36.201351, 29.310175, 52.042950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.127209, 29.534336, 52.086010>,  <36.003635, 29.907938, 52.157780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.127209, 29.534336, 52.086010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144311, 0.140434, -0.979517,
		0.940072, 0.328497, -0.091402,
		0.308932, -0.934006, -0.179424,
		36.219887, 29.254135, 52.032185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.462654, 29.977274, 51.696636>,  <36.003635, 29.907938, 52.157780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.462654, 29.977274, 51.696636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.359207, 29.593239, 51.654022>,  <36.297138, 29.362818, 51.628452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.359207, 29.593239, 51.654022>,  <36.462654, 29.977274, 51.696636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.359207, 29.593239, 51.654022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148871, 0.069359, -0.986421,
		0.954438, -0.270971, 0.124991,
		-0.258622, -0.960085, -0.106538,
		36.281620, 29.305214, 51.622059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.048138, 29.862631, 51.324471>,  <36.462654, 29.977274, 51.696636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.048138, 29.862631, 51.324471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.768257, 29.581945, 51.270782>,  <36.600327, 29.413534, 51.238571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.768257, 29.581945, 51.270782>,  <37.048138, 29.862631, 51.324471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.768257, 29.581945, 51.270782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185009, 0.003488, -0.982731,
		0.690062, -0.712453, 0.127382,
		-0.699704, -0.701712, -0.134218,
		36.558346, 29.371431, 51.230518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.343243, 29.430550, 50.919888>,  <37.048138, 29.862631, 51.324471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.343243, 29.430550, 50.919888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.956268, 29.333847, 50.889893>,  <36.724083, 29.275826, 50.871895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.956268, 29.333847, 50.889893>,  <37.343243, 29.430550, 50.919888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.956268, 29.333847, 50.889893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111055, -0.139186, -0.984019,
		0.227455, -0.960303, 0.161502,
		-0.967435, -0.241756, -0.074988,
		36.666039, 29.261320, 50.867397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.317120, 28.872961, 50.388493>,  <37.343243, 29.430550, 50.919888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.317120, 28.872961, 50.388493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.946064, 29.020212, 50.413662>,  <36.723431, 29.108562, 50.428764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.946064, 29.020212, 50.413662>,  <37.317120, 28.872961, 50.388493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.946064, 29.020212, 50.413662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149010, -0.210349, -0.966203,
		-0.342453, -0.905668, 0.249984,
		-0.927643, 0.368130, 0.062919,
		36.667770, 29.130651, 50.432537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.772099, 28.455019, 50.114330>,  <37.317120, 28.872961, 50.388493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.772099, 28.455019, 50.114330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.592628, 28.812124, 50.098011>,  <36.484947, 29.026388, 50.088219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.592628, 28.812124, 50.098011>,  <36.772099, 28.455019, 50.114330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.592628, 28.812124, 50.098011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098640, -0.094839, -0.990594,
		-0.888234, -0.440431, 0.130614,
		-0.448676, 0.892763, -0.040795,
		36.458027, 29.079952, 50.085773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.137970, 28.365257, 49.650757>,  <36.772099, 28.455019, 50.114330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.137970, 28.365257, 49.650757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.216560, 28.757456, 49.648643>,  <36.263714, 28.992775, 49.647377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.216560, 28.757456, 49.648643>,  <36.137970, 28.365257, 49.650757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.216560, 28.757456, 49.648643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199148, 0.034629, -0.979358,
		-0.960072, 0.193471, 0.202067,
		0.196474, 0.980495, -0.005283,
		36.275501, 29.051605, 49.647060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.852592, 28.549109, 49.059319>,  <36.137970, 28.365257, 49.650757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.852592, 28.549109, 49.059319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.060280, 28.884073, 49.127609>,  <36.184895, 29.085052, 49.168583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.060280, 28.884073, 49.127609>,  <35.852592, 28.549109, 49.059319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.060280, 28.884073, 49.127609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267903, 0.349180, -0.897943,
		-0.811564, 0.420492, 0.405647,
		0.519222, 0.837412, 0.170731,
		36.216045, 29.135298, 49.178829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.372353, 29.050501, 49.049923>,  <35.852592, 28.549109, 49.059319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.372353, 29.050501, 49.049923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.730118, 29.209152, 48.967258>,  <35.944778, 29.304342, 48.917660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.730118, 29.209152, 48.967258>,  <35.372353, 29.050501, 49.049923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.730118, 29.209152, 48.967258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349437, 0.331361, -0.876410,
		-0.279129, 0.856089, 0.434970,
		0.894416, 0.396626, -0.206657,
		35.998444, 29.328140, 48.905262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.138474, 29.702227, 48.730816>,  <35.372353, 29.050501, 49.049923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.138474, 29.702227, 48.730816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.525902, 29.660353, 48.640568>,  <35.758358, 29.635229, 48.586418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.525902, 29.660353, 48.640568>,  <35.138474, 29.702227, 48.730816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.525902, 29.660353, 48.640568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166110, 0.402918, -0.900036,
		0.185128, 0.909230, 0.372867,
		0.968574, -0.104685, -0.225623,
		35.816475, 29.628948, 48.572880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.381168, 30.386974, 48.458160>,  <35.138474, 29.702227, 48.730816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.381168, 30.386974, 48.458160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.658817, 30.127773, 48.332756>,  <35.825405, 29.972252, 48.257515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.658817, 30.127773, 48.332756>,  <35.381168, 30.386974, 48.458160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.658817, 30.127773, 48.332756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043388, 0.397061, -0.916766,
		0.718547, 0.649951, 0.247494,
		0.694123, -0.648002, -0.313507,
		35.867054, 29.933372, 48.238705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.903782, 30.794926, 48.122982>,  <35.381168, 30.386974, 48.458160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.903782, 30.794926, 48.122982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.912632, 30.432861, 47.953186>,  <35.917942, 30.215622, 47.851307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.912632, 30.432861, 47.953186>,  <35.903782, 30.794926, 48.122982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.912632, 30.432861, 47.953186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012864, 0.424304, -0.905428,
		0.999672, 0.025492, -0.002256,
		0.022124, -0.905160, -0.424493,
		35.919270, 30.161314, 47.825836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.208538, 30.986193, 47.515015>,  <35.903782, 30.794926, 48.122982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.208538, 30.986193, 47.515015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.082779, 30.610029, 47.463184>,  <36.007324, 30.384331, 47.432087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.082779, 30.610029, 47.463184>,  <36.208538, 30.986193, 47.515015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.082779, 30.610029, 47.463184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100800, 0.168796, -0.980483,
		0.943926, -0.295197, -0.147861,
		-0.314394, -0.940408, -0.129575,
		35.988461, 30.327908, 47.424313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.471783, 30.819696, 46.913315>,  <36.208538, 30.986193, 47.515015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.471783, 30.819696, 46.913315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.192841, 30.535578, 46.951618>,  <36.025475, 30.365107, 46.974598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.192841, 30.535578, 46.951618>,  <36.471783, 30.819696, 46.913315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.192841, 30.535578, 46.951618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224108, 0.089195, -0.970474,
		0.680784, -0.698228, -0.221384,
		-0.697359, -0.710297, 0.095756,
		35.983631, 30.322489, 46.980347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.555771, 30.261734, 46.340931>,  <36.471783, 30.819696, 46.913315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.555771, 30.261734, 46.340931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.177486, 30.243828, 46.469700>,  <35.950516, 30.233084, 46.546963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.177486, 30.243828, 46.469700>,  <36.555771, 30.261734, 46.340931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.177486, 30.243828, 46.469700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324779, 0.091911, -0.941313,
		0.012547, -0.994761, -0.101459,
		-0.945707, -0.044763, 0.321924,
		35.893776, 30.230398, 46.566277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.274876, 29.804882, 45.870129>,  <36.555771, 30.261734, 46.340931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.274876, 29.804882, 45.870129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.960896, 29.986286, 46.038975>,  <35.772507, 30.095129, 46.140282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.960896, 29.986286, 46.038975>,  <36.274876, 29.804882, 45.870129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.960896, 29.986286, 46.038975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441298, 0.068960, -0.894707,
		-0.434869, -0.888578, 0.146004,
		-0.784948, 0.453512, 0.422117,
		35.725410, 30.122339, 46.165611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.706917, 29.411062, 45.713089>,  <36.274876, 29.804882, 45.870129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.706917, 29.411062, 45.713089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.604393, 29.791191, 45.783730>,  <35.542877, 30.019268, 45.826115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.604393, 29.791191, 45.783730>,  <35.706917, 29.411062, 45.713089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.604393, 29.791191, 45.783730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553651, 0.005427, -0.832731,
		-0.792322, -0.311217, 0.524756,
		-0.256312, 0.950323, 0.176606,
		35.527500, 30.076288, 45.836712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.994942, 29.475567, 45.426968>,  <35.706917, 29.411062, 45.713089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.994942, 29.475567, 45.426968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.137547, 29.848148, 45.456059>,  <35.223110, 30.071697, 45.473515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.137547, 29.848148, 45.456059>,  <34.994942, 29.475567, 45.426968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.137547, 29.848148, 45.456059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438969, 0.235715, -0.867032,
		-0.824746, 0.277179, 0.492916,
		0.356511, 0.931456, 0.072732,
		35.244499, 30.127584, 45.477879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.456120, 29.858332, 45.217632>,  <34.994942, 29.475567, 45.426968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.456120, 29.858332, 45.217632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.782066, 30.087807, 45.184448>,  <34.977634, 30.225491, 45.164539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.782066, 30.087807, 45.184448>,  <34.456120, 29.858332, 45.217632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.782066, 30.087807, 45.184448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297257, 0.290714, -0.909463,
		-0.497630, 0.765747, 0.407425,
		0.814863, 0.573686, -0.082956,
		35.026524, 30.259912, 45.159561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.157932, 30.516422, 44.993950>,  <34.456120, 29.858332, 45.217632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.157932, 30.516422, 44.993950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.546295, 30.536211, 44.900242>,  <34.779312, 30.548084, 44.844017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.546295, 30.536211, 44.900242>,  <34.157932, 30.516422, 44.993950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.546295, 30.536211, 44.900242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222436, 0.548480, -0.806034,
		0.088617, 0.834698, 0.543530,
		0.970912, 0.049473, -0.234272,
		34.837570, 30.551052, 44.829960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.170368, 31.209429, 44.830635>,  <34.157932, 30.516422, 44.993950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.170368, 31.209429, 44.830635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.519260, 31.064528, 44.699188>,  <34.728596, 30.977587, 44.620319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.519260, 31.064528, 44.699188>,  <34.170368, 31.209429, 44.830635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.519260, 31.064528, 44.699188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085893, 0.548000, -0.832057,
		0.481498, 0.753969, 0.446867,
		0.872228, -0.362251, -0.328621,
		34.780930, 30.955853, 44.600601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.528168, 31.760296, 44.569450>,  <34.170368, 31.209429, 44.830635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.528168, 31.760296, 44.569450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.700092, 31.459949, 44.368866>,  <34.803249, 31.279741, 44.248516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.700092, 31.459949, 44.368866>,  <34.528168, 31.760296, 44.569450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.700092, 31.459949, 44.368866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185420, 0.470136, -0.862897,
		0.883674, 0.463865, 0.062845,
		0.429813, -0.750867, -0.501457,
		34.829037, 31.234690, 44.218430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.903397, 32.034821, 44.112328>,  <34.528168, 31.760296, 44.569450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.903397, 32.034821, 44.112328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.858677, 31.664021, 43.969128>,  <34.831844, 31.441540, 43.883205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.858677, 31.664021, 43.969128>,  <34.903397, 32.034821, 44.112328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.858677, 31.664021, 43.969128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148122, 0.371783, -0.916426,
		0.982630, -0.049427, -0.178875,
		-0.111799, -0.927003, -0.358004,
		34.825138, 31.385920, 43.861725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.309696, 31.932943, 43.572945>,  <34.903397, 32.034821, 44.112328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.309696, 31.932943, 43.572945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.013641, 31.669443, 43.518917>,  <34.836010, 31.511343, 43.486500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.013641, 31.669443, 43.518917>,  <35.309696, 31.932943, 43.572945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.013641, 31.669443, 43.518917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078852, 0.284499, -0.955428,
		0.667818, -0.696496, -0.262512,
		-0.740137, -0.658751, -0.135074,
		34.791599, 31.471817, 43.478394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.305069, 31.958681, 42.886608>,  <35.309696, 31.932943, 43.572945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.305069, 31.958681, 42.886608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.011940, 31.695192, 42.954796>,  <34.836063, 31.537100, 42.995708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.011940, 31.695192, 42.954796>,  <35.305069, 31.958681, 42.886608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.011940, 31.695192, 42.954796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299800, 0.087688, -0.949964,
		0.610815, -0.747258, -0.261744,
		-0.732820, -0.658723, 0.170467,
		34.792095, 31.497576, 43.005936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.313190, 31.359856, 42.406368>,  <35.305069, 31.958681, 42.886608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.313190, 31.359856, 42.406368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.934425, 31.421619, 42.519165>,  <34.707169, 31.458677, 42.586845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.934425, 31.421619, 42.519165>,  <35.313190, 31.359856, 42.406368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.934425, 31.421619, 42.519165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258520, 0.155747, -0.953368,
		-0.191130, -0.975654, -0.107560,
		-0.946909, 0.154411, 0.281994,
		34.650352, 31.467943, 42.603764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.861504, 31.081297, 41.889660>,  <35.313190, 31.359856, 42.406368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.861504, 31.081297, 41.889660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.605751, 31.296967, 42.108925>,  <34.452297, 31.426369, 42.240482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.605751, 31.296967, 42.108925>,  <34.861504, 31.081297, 41.889660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.605751, 31.296967, 42.108925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523846, 0.216392, -0.823869,
		-0.562826, -0.813920, 0.144087,
		-0.639384, 0.539174, 0.548160,
		34.413937, 31.458719, 42.273373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.278812, 30.814312, 41.640507>,  <34.861504, 31.081297, 41.889660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.278812, 30.814312, 41.640507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.123745, 31.137384, 41.818211>,  <34.030704, 31.331228, 41.924831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.123745, 31.137384, 41.818211>,  <34.278812, 30.814312, 41.640507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.123745, 31.137384, 41.818211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623477, 0.125234, -0.771746,
		-0.678960, -0.576169, 0.455020,
		-0.387673, 0.807679, 0.444257,
		34.007442, 31.379688, 41.951488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.448078, 30.785873, 41.701889>,  <34.278812, 30.814312, 41.640507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.448078, 30.785873, 41.701889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.579651, 31.163574, 41.696304>,  <33.658596, 31.390194, 41.692955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.579651, 31.163574, 41.696304>,  <33.448078, 30.785873, 41.701889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.579651, 31.163574, 41.696304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742854, 0.249589, -0.621188,
		-0.583072, 0.214700, 0.783538,
		0.328931, 0.944251, -0.013963,
		33.678329, 31.446850, 41.692116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.839645, 31.289898, 41.767036>,  <33.448078, 30.785873, 41.701889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.839645, 31.289898, 41.767036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.148743, 31.494383, 41.616554>,  <33.334202, 31.617073, 41.526264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.148743, 31.494383, 41.616554>,  <32.839645, 31.289898, 41.767036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.148743, 31.494383, 41.616554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610136, 0.434914, -0.662256,
		-0.174937, 0.741290, 0.647986,
		0.772743, 0.511213, -0.376205,
		33.380566, 31.647747, 41.503693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.570049, 31.851088, 41.676296>,  <32.839645, 31.289898, 41.767036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.570049, 31.851088, 41.676296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.905422, 31.889261, 41.461662>,  <33.106644, 31.912165, 41.332882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.905422, 31.889261, 41.461662>,  <32.570049, 31.851088, 41.676296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.905422, 31.889261, 41.461662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507566, 0.495356, -0.704982,
		0.198523, 0.863432, 0.463761,
		0.838430, 0.095434, -0.536588,
		33.156952, 31.917891, 41.300686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.389835, 32.390285, 41.253033>,  <32.570049, 31.851088, 41.676296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.389835, 32.390285, 41.253033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.721397, 32.269440, 41.064720>,  <32.920334, 32.196930, 40.951733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.721397, 32.269440, 41.064720>,  <32.389835, 32.390285, 41.253033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.721397, 32.269440, 41.064720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358123, 0.359914, -0.861516,
		0.429721, 0.882716, 0.190140,
		0.828908, -0.302118, -0.470783,
		32.970070, 32.178802, 40.923485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.628929, 32.979687, 40.873089>,  <32.389835, 32.390285, 41.253033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.628929, 32.979687, 40.873089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.779312, 32.651592, 40.700642>,  <32.869541, 32.454735, 40.597172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.779312, 32.651592, 40.700642>,  <32.628929, 32.979687, 40.873089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.779312, 32.651592, 40.700642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271651, 0.347252, -0.897564,
		0.885923, 0.454564, -0.092265,
		0.375961, -0.820237, -0.431121,
		32.892101, 32.405521, 40.571304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.082703, 33.251591, 40.295155>,  <32.628929, 32.979687, 40.873089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.082703, 33.251591, 40.295155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.003094, 32.873421, 40.191959>,  <32.955326, 32.646519, 40.130043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.003094, 32.873421, 40.191959>,  <33.082703, 33.251591, 40.295155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.003094, 32.873421, 40.191959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199791, 0.296870, -0.933783,
		0.959412, -0.134304, -0.247973,
		-0.199027, -0.945426, -0.257988,
		32.943386, 32.589794, 40.114563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.605579, 32.872597, 39.796890>,  <33.082703, 33.251591, 40.295155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.605579, 32.872597, 39.796890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.246296, 32.704201, 39.746323>,  <33.030724, 32.603161, 39.715981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.246296, 32.704201, 39.746323>,  <33.605579, 32.872597, 39.796890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.246296, 32.704201, 39.746323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048118, 0.191704, -0.980273,
		0.436924, -0.886574, -0.151933,
		-0.898211, -0.420994, -0.126420,
		32.976833, 32.577904, 39.708397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.607700, 32.569386, 39.150558>,  <33.605579, 32.872597, 39.796890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.607700, 32.569386, 39.150558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.219231, 32.562740, 39.245682>,  <32.986149, 32.558754, 39.302757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.219231, 32.562740, 39.245682>,  <33.607700, 32.569386, 39.150558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.219231, 32.562740, 39.245682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236741, -0.049855, -0.970293,
		0.027981, -0.998618, 0.044484,
		-0.971170, -0.016618, 0.237809,
		32.927879, 32.557755, 39.317024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.120289, 32.048767, 39.061455>,  <33.607700, 32.569386, 39.150558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.120289, 32.048767, 39.061455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.485703, 31.994139, 38.908199>,  <34.704952, 31.961361, 38.816246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.485703, 31.994139, 38.908199>,  <34.120289, 32.048767, 39.061455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.485703, 31.994139, 38.908199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310209, -0.375327, 0.873441,
		-0.263091, -0.916776, -0.300509,
		0.913539, -0.136574, -0.383137,
		34.759766, 31.953167, 38.793259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.352165, 31.429750, 39.387192>,  <34.120289, 32.048767, 39.061455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.352165, 31.429750, 39.387192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.684444, 31.599466, 39.243015>,  <34.883812, 31.701296, 39.156509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.684444, 31.599466, 39.243015>,  <34.352165, 31.429750, 39.387192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.684444, 31.599466, 39.243015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495086, -0.266902, 0.826833,
		0.254614, -0.865299, -0.431774,
		0.830699, 0.424289, -0.360440,
		34.933655, 31.726753, 39.134884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.804810, 30.842642, 39.230278>,  <34.352165, 31.429750, 39.387192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.804810, 30.842642, 39.230278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.084042, 31.128542, 39.247311>,  <35.251583, 31.300081, 39.257530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.084042, 31.128542, 39.247311>,  <34.804810, 30.842642, 39.230278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.084042, 31.128542, 39.247311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442145, -0.477084, 0.759538,
		0.563195, -0.511393, -0.649068,
		0.698082, 0.714750, 0.042581,
		35.293465, 31.342966, 39.260086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.467068, 30.570726, 39.238384>,  <34.804810, 30.842642, 39.230278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.467068, 30.570726, 39.238384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.563496, 30.928589, 39.388840>,  <35.621353, 31.143307, 39.479111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.563496, 30.928589, 39.388840>,  <35.467068, 30.570726, 39.238384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.563496, 30.928589, 39.388840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454080, -0.446501, 0.771005,
		0.857728, -0.015069, -0.513883,
		0.241067, 0.894656, 0.376134,
		35.635815, 31.196985, 39.501678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.107933, 30.485914, 39.481384>,  <35.467068, 30.570726, 39.238384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.107933, 30.485914, 39.481384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.981213, 30.814459, 39.671124>,  <35.905182, 31.011585, 39.784966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.981213, 30.814459, 39.671124>,  <36.107933, 30.485914, 39.481384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.981213, 30.814459, 39.671124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448993, -0.310657, 0.837793,
		0.835489, 0.478392, -0.270369,
		-0.316801, 0.821361, 0.474345,
		35.886173, 31.060867, 39.813427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.605453, 30.737389, 39.747009>,  <36.107933, 30.485914, 39.481384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.605453, 30.737389, 39.747009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.327942, 30.914141, 39.974487>,  <36.161434, 31.020193, 40.110973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.327942, 30.914141, 39.974487>,  <36.605453, 30.737389, 39.747009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.327942, 30.914141, 39.974487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510393, -0.255430, 0.821130,
		0.508103, 0.859939, -0.048321,
		-0.693779, 0.441882, 0.568692,
		36.119808, 31.046705, 40.145096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.039413, 30.975779, 40.193241>,  <36.605453, 30.737389, 39.747009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.039413, 30.975779, 40.193241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.683601, 30.952375, 40.374485>,  <36.470116, 30.938334, 40.483231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.683601, 30.952375, 40.374485>,  <37.039413, 30.975779, 40.193241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.683601, 30.952375, 40.374485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455716, -0.184239, 0.870850,
		0.032529, 0.981139, 0.190550,
		-0.889531, -0.058508, 0.453113,
		36.416740, 30.934822, 40.510418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.046940, 31.306583, 40.862789>,  <37.039413, 30.975779, 40.193241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.046940, 31.306583, 40.862789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.734093, 31.058573, 40.887623>,  <36.546383, 30.909765, 40.902523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.734093, 31.058573, 40.887623>,  <37.046940, 31.306583, 40.862789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.734093, 31.058573, 40.887623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330472, -0.328264, 0.884891,
		-0.528278, 0.712607, 0.461643,
		-0.782120, -0.620028, 0.062082,
		36.499458, 30.872564, 40.906246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.744850, 31.510145, 41.528328>,  <37.046940, 31.306583, 40.862789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.744850, 31.510145, 41.528328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.622280, 31.143148, 41.426891>,  <36.548737, 30.922951, 41.366032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.622280, 31.143148, 41.426891>,  <36.744850, 31.510145, 41.528328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.622280, 31.143148, 41.426891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246347, -0.333766, 0.909898,
		-0.919464, 0.216349, 0.328297,
		-0.306430, -0.917493, -0.253590,
		36.530350, 30.867901, 41.350815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.403511, 31.197989, 42.112846>,  <36.744850, 31.510145, 41.528328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.403511, 31.197989, 42.112846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.494961, 30.870333, 41.902420>,  <36.549831, 30.673740, 41.776165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.494961, 30.870333, 41.902420>,  <36.403511, 31.197989, 42.112846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.494961, 30.870333, 41.902420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372023, -0.425848, 0.824774,
		-0.899627, -0.384275, 0.207376,
		0.228629, -0.819137, -0.526063,
		36.563549, 30.624592, 41.744602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.230839, 30.740599, 42.581635>,  <36.403511, 31.197989, 42.112846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.230839, 30.740599, 42.581635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.473190, 30.572702, 42.311306>,  <36.618599, 30.471964, 42.149109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.473190, 30.572702, 42.311306>,  <36.230839, 30.740599, 42.581635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.473190, 30.572702, 42.311306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449326, -0.520482, 0.726089,
		-0.656521, -0.743583, -0.126747,
		0.605877, -0.419742, -0.675818,
		36.654953, 30.446779, 42.108559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.152946, 30.112133, 42.693775>,  <36.230839, 30.740599, 42.581635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.152946, 30.112133, 42.693775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.499287, 30.128117, 42.494297>,  <36.707092, 30.137707, 42.374611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.499287, 30.128117, 42.494297>,  <36.152946, 30.112133, 42.693775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.499287, 30.128117, 42.494297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468625, -0.413812, 0.780481,
		-0.175181, -0.909485, -0.377026,
		0.865853, 0.039958, -0.498699,
		36.759041, 30.140104, 42.344688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.446930, 29.420803, 42.756958>,  <36.152946, 30.112133, 42.693775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.446930, 29.420803, 42.756958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.733150, 29.690830, 42.685101>,  <36.904881, 29.852846, 42.641987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.733150, 29.690830, 42.685101>,  <36.446930, 29.420803, 42.756958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.733150, 29.690830, 42.685101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580298, -0.431249, 0.690854,
		0.388901, -0.598588, -0.700320,
		0.715549, 0.675068, -0.179646,
		36.947815, 29.893351, 42.631207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.984707, 29.005888, 42.694237>,  <36.446930, 29.420803, 42.756958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.984707, 29.005888, 42.694237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.103210, 29.376616, 42.786530>,  <37.174313, 29.599052, 42.841904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.103210, 29.376616, 42.786530>,  <36.984707, 29.005888, 42.694237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.103210, 29.376616, 42.786530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580883, -0.366602, 0.726758,
		0.758161, -0.081279, -0.646982,
		0.296256, 0.926821, 0.230730,
		37.192089, 29.654661, 42.855747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.747547, 28.992605, 42.776348>,  <36.984707, 29.005888, 42.694237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.747547, 28.992605, 42.776348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.589161, 29.303789, 42.971489>,  <37.494129, 29.490499, 43.088573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.589161, 29.303789, 42.971489>,  <37.747547, 28.992605, 42.776348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.589161, 29.303789, 42.971489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554820, -0.220646, 0.802178,
		0.731703, 0.588299, -0.344259,
		-0.395962, 0.777958, 0.487848,
		37.470371, 29.537176, 43.117844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.353722, 29.296114, 43.116207>,  <37.747547, 28.992605, 42.776348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.353722, 29.296114, 43.116207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.026897, 29.448505, 43.289303>,  <37.830803, 29.539940, 43.393158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.026897, 29.448505, 43.289303>,  <38.353722, 29.296114, 43.116207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.026897, 29.448505, 43.289303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379144, -0.210390, 0.901103,
		0.434344, 0.900329, 0.027457,
		-0.817065, 0.380978, 0.432736,
		37.781776, 29.562799, 43.419125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.598846, 29.809654, 43.628036>,  <38.353722, 29.296114, 43.116207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.598846, 29.809654, 43.628036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.232410, 29.695341, 43.740543>,  <38.012550, 29.626753, 43.808048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.232410, 29.695341, 43.740543>,  <38.598846, 29.809654, 43.628036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.232410, 29.695341, 43.740543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292207, 0.004534, 0.956344,
		-0.274581, 0.958284, 0.079354,
		-0.916090, -0.285781, 0.281263,
		37.957584, 29.609606, 43.824921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.510616, 30.167305, 44.250942>,  <38.598846, 29.809654, 43.628036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.510616, 30.167305, 44.250942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.225544, 29.888344, 44.281178>,  <38.054501, 29.720966, 44.299320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.225544, 29.888344, 44.281178>,  <38.510616, 30.167305, 44.250942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.225544, 29.888344, 44.281178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160590, -0.057311, 0.985356,
		-0.682857, 0.714385, 0.152840,
		-0.712683, -0.697402, 0.075587,
		38.011738, 29.679123, 44.303852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.142380, 30.257929, 44.862888>,  <38.510616, 30.167305, 44.250942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.142380, 30.257929, 44.862888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.075359, 29.870647, 44.788586>,  <38.035145, 29.638279, 44.744003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.075359, 29.870647, 44.788586>,  <38.142380, 30.257929, 44.862888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.075359, 29.870647, 44.788586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057740, -0.197739, 0.978553,
		-0.984171, 0.153234, 0.089036,
		-0.167553, -0.968204, -0.185761,
		38.025093, 29.580187, 44.732857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.669571, 30.079340, 45.369343>,  <38.142380, 30.257929, 44.862888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.669571, 30.079340, 45.369343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.790417, 29.720604, 45.240097>,  <37.862926, 29.505362, 45.162548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.790417, 29.720604, 45.240097>,  <37.669571, 30.079340, 45.369343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.790417, 29.720604, 45.240097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060743, -0.356375, 0.932366,
		-0.951334, -0.262056, -0.162144,
		0.302117, -0.896841, -0.323114,
		37.881050, 29.451551, 45.143162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.161739, 29.563404, 45.500347>,  <37.669571, 30.079340, 45.369343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.161739, 29.563404, 45.500347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.526062, 29.398535, 45.491070>,  <37.744656, 29.299614, 45.485504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.526062, 29.398535, 45.491070>,  <37.161739, 29.563404, 45.500347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.526062, 29.398535, 45.491070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102973, -0.281230, 0.954100,
		-0.399776, -0.866616, -0.298590,
		0.910810, -0.412173, -0.023191,
		37.799305, 29.274883, 45.484112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.100067, 28.968729, 46.001740>,  <37.161739, 29.563404, 45.500347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.100067, 28.968729, 46.001740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.492439, 29.003014, 45.931961>,  <37.727863, 29.023584, 45.890095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.492439, 29.003014, 45.931961>,  <37.100067, 28.968729, 46.001740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.492439, 29.003014, 45.931961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191973, -0.286904, 0.938527,
		0.030393, -0.954117, -0.297887,
		0.980929, 0.085711, -0.174445,
		37.786716, 29.028727, 45.879627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.408875, 28.364365, 46.181297>,  <37.100067, 28.968729, 46.001740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.408875, 28.364365, 46.181297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.693867, 28.643003, 46.215065>,  <37.864861, 28.810186, 46.235325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.693867, 28.643003, 46.215065>,  <37.408875, 28.364365, 46.181297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.693867, 28.643003, 46.215065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165828, -0.284054, 0.944359,
		0.681817, -0.658837, -0.317898,
		0.712479, 0.696597, 0.084420,
		37.907612, 28.851982, 46.240391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.060215, 27.967159, 46.355881>,  <37.408875, 28.364365, 46.181297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.060215, 27.967159, 46.355881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.117447, 28.348822, 46.461037>,  <38.151787, 28.577820, 46.524128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.117447, 28.348822, 46.461037>,  <38.060215, 27.967159, 46.355881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.117447, 28.348822, 46.461037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256028, -0.292263, 0.921430,
		0.956022, -0.064535, -0.286109,
		0.143083, 0.954158, 0.262887,
		38.160374, 28.635069, 46.539902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.648792, 28.035650, 46.723137>,  <38.060215, 27.967159, 46.355881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.648792, 28.035650, 46.723137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.436062, 28.347874, 46.854523>,  <38.308422, 28.535208, 46.933353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.436062, 28.347874, 46.854523>,  <38.648792, 28.035650, 46.723137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.436062, 28.347874, 46.854523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304317, -0.185804, 0.934274,
		0.790286, 0.596828, -0.138722,
		-0.531826, 0.780560, 0.328463,
		38.276516, 28.582041, 46.953060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.042946, 28.255699, 47.266388>,  <38.648792, 28.035650, 46.723137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.042946, 28.255699, 47.266388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.731758, 28.494810, 47.343777>,  <38.545048, 28.638277, 47.390209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.731758, 28.494810, 47.343777>,  <39.042946, 28.255699, 47.266388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.731758, 28.494810, 47.343777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280131, 0.054377, 0.958420,
		0.562400, 0.799817, -0.209759,
		-0.777967, 0.597775, 0.193472,
		38.498367, 28.674143, 47.401817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.176552, 28.942225, 47.559612>,  <39.042946, 28.255699, 47.266388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.176552, 28.942225, 47.559612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.792801, 28.896498, 47.662788>,  <38.562550, 28.869061, 47.724693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.792801, 28.896498, 47.662788>,  <39.176552, 28.942225, 47.559612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.792801, 28.896498, 47.662788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222588, 0.255106, 0.940944,
		-0.173369, 0.960131, -0.219297,
		-0.959374, -0.114318, 0.257941,
		38.504990, 28.862202, 47.740170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.019081, 29.462381, 48.020126>,  <39.176552, 28.942225, 47.559612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.019081, 29.462381, 48.020126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.731335, 29.193420, 48.089855>,  <38.558685, 29.032043, 48.131695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.731335, 29.193420, 48.089855>,  <39.019081, 29.462381, 48.020126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.731335, 29.193420, 48.089855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115446, 0.131741, 0.984539,
		-0.684971, 0.728368, -0.017144,
		-0.719365, -0.672402, 0.174326,
		38.515526, 28.991699, 48.142155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.665810, 29.838308, 48.565781>,  <39.019081, 29.462381, 48.020126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.665810, 29.838308, 48.565781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.545872, 29.457895, 48.595787>,  <38.473907, 29.229647, 48.613789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.545872, 29.457895, 48.595787>,  <38.665810, 29.838308, 48.565781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.545872, 29.457895, 48.595787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197569, 0.015021, 0.980174,
		-0.933306, 0.308719, 0.183391,
		-0.299844, -0.951034, 0.075013,
		38.455917, 29.172585, 48.618290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.067772, 29.898867, 49.096027>,  <38.665810, 29.838308, 48.565781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.067772, 29.898867, 49.096027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.245979, 29.540874, 49.086929>,  <38.352905, 29.326078, 49.081470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.245979, 29.540874, 49.086929>,  <38.067772, 29.898867, 49.096027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.245979, 29.540874, 49.086929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369591, 0.160727, 0.915188,
		-0.815422, -0.416140, 0.402385,
		0.445520, -0.894983, -0.022742,
		38.379635, 29.272379, 49.080109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.828217, 29.578922, 49.648582>,  <38.067772, 29.898867, 49.096027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.828217, 29.578922, 49.648582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.164661, 29.392422, 49.538940>,  <38.366528, 29.280521, 49.473156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.164661, 29.392422, 49.538940>,  <37.828217, 29.578922, 49.648582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.164661, 29.392422, 49.538940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348786, 0.080263, 0.933759,
		-0.413366, -0.881004, 0.230132,
		0.841117, -0.466251, -0.274104,
		38.416996, 29.252546, 49.456711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.933918, 29.205261, 50.172764>,  <37.828217, 29.578922, 49.648582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.933918, 29.205261, 50.172764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.304443, 29.190664, 50.022770>,  <38.526756, 29.181906, 49.932774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.304443, 29.190664, 50.022770>,  <37.933918, 29.205261, 50.172764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.304443, 29.190664, 50.022770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370055, -0.098808, 0.923740,
		-0.070753, -0.994437, -0.078026,
		0.926312, -0.036484, -0.374988,
		38.582336, 29.179718, 49.910275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.340328, 28.830633, 50.661621>,  <37.933918, 29.205261, 50.172764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.340328, 28.830633, 50.661621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.625893, 28.990465, 50.431606>,  <38.797230, 29.086365, 50.293598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.625893, 28.990465, 50.431606>,  <38.340328, 28.830633, 50.661621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.625893, 28.990465, 50.431606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561235, 0.164570, 0.811130,
		0.418744, -0.901806, -0.106769,
		0.713911, 0.399579, -0.575038,
		38.840065, 29.110338, 50.259094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.039185, 28.544704, 50.948887>,  <38.340328, 28.830633, 50.661621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.039185, 28.544704, 50.948887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.104088, 28.882664, 50.744999>,  <39.143032, 29.085440, 50.622665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.104088, 28.882664, 50.744999>,  <39.039185, 28.544704, 50.948887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.104088, 28.882664, 50.744999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541048, 0.355811, 0.762014,
		0.825190, -0.399428, -0.399398,
		0.162260, 0.844900, -0.509722,
		39.152767, 29.136133, 50.592083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.782017, 28.567451, 50.860535>,  <39.039185, 28.544704, 50.948887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.782017, 28.567451, 50.860535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.618938, 28.929934, 50.815670>,  <39.521091, 29.147423, 50.788750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.618938, 28.929934, 50.815670>,  <39.782017, 28.567451, 50.860535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.618938, 28.929934, 50.815670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437109, 0.301533, 0.847357,
		0.801698, 0.296436, -0.519043,
		-0.407696, 0.906203, -0.112164,
		39.496632, 29.201794, 50.782021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.272007, 29.146921, 50.975399>,  <39.782017, 28.567451, 50.860535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.272007, 29.146921, 50.975399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.943920, 29.374723, 50.996986>,  <39.747070, 29.511404, 51.009937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.943920, 29.374723, 50.996986>,  <40.272007, 29.146921, 50.975399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.943920, 29.374723, 50.996986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410635, 0.520465, 0.748662,
		0.398281, 0.636222, -0.660752,
		-0.820214, 0.569506, 0.053964,
		39.697857, 29.545576, 51.013176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.496387, 29.921520, 50.969551>,  <40.272007, 29.146921, 50.975399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.496387, 29.921520, 50.969551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.142998, 29.884981, 51.153347>,  <39.930965, 29.863058, 51.263626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.142998, 29.884981, 51.153347>,  <40.496387, 29.921520, 50.969551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.142998, 29.884981, 51.153347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359897, 0.495569, 0.790497,
		-0.299920, 0.863752, -0.404946,
		-0.883472, -0.091347, 0.459492,
		39.877956, 29.857576, 51.291195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.297203, 30.583359, 51.330616>,  <40.496387, 29.921520, 50.969551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.297203, 30.583359, 51.330616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.067204, 30.315538, 51.518692>,  <39.929203, 30.154846, 51.631538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.067204, 30.315538, 51.518692>,  <40.297203, 30.583359, 51.330616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.067204, 30.315538, 51.518692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143901, 0.482968, 0.863733,
		-0.805399, 0.564306, -0.181357,
		-0.575000, -0.669552, 0.470186,
		39.894703, 30.114674, 51.659748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.903339, 30.870497, 51.987175>,  <40.297203, 30.583359, 51.330616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.903339, 30.870497, 51.987175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.295761, 30.933437, 52.032372>,  <40.531216, 30.971201, 52.059490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.295761, 30.933437, 52.032372>,  <39.903339, 30.870497, 51.987175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.295761, 30.933437, 52.032372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067272, 0.270267, -0.960432,
		-0.181662, 0.949841, 0.254562,
		0.981057, 0.157350, 0.112995,
		40.590076, 30.980642, 52.066269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.953014, 31.307474, 51.434406>,  <39.903339, 30.870497, 51.987175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.953014, 31.307474, 51.434406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.332352, 31.247009, 51.545975>,  <40.559956, 31.210730, 51.612915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.332352, 31.247009, 51.545975>,  <39.953014, 31.307474, 51.434406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.332352, 31.247009, 51.545975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312148, 0.287617, -0.905450,
		0.056650, 0.945741, 0.319945,
		0.948343, -0.151164, 0.278917,
		40.616856, 31.201660, 51.629650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.326828, 32.024841, 51.359386>,  <39.953014, 31.307474, 51.434406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.326828, 32.024841, 51.359386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.583202, 31.718294, 51.342045>,  <40.737026, 31.534365, 51.331638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.583202, 31.718294, 51.342045>,  <40.326828, 32.024841, 51.359386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.583202, 31.718294, 51.342045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308038, 0.308533, -0.899955,
		0.703074, 0.563459, 0.433821,
		0.640936, -0.766369, -0.043355,
		40.775482, 31.488384, 51.329037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.958733, 32.275574, 51.095474>,  <40.326828, 32.024841, 51.359386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.958733, 32.275574, 51.095474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.006813, 31.884848, 51.024609>,  <41.035660, 31.650412, 50.982090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.006813, 31.884848, 51.024609>,  <40.958733, 32.275574, 51.095474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.006813, 31.884848, 51.024609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150416, 0.194317, -0.969338,
		0.981288, 0.089867, 0.170286,
		0.120200, -0.976814, -0.177163,
		41.042873, 31.591803, 50.971458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.424320, 32.274456, 50.610672>,  <40.958733, 32.275574, 51.095474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.424320, 32.274456, 50.610672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.308220, 31.893250, 50.575996>,  <41.238560, 31.664526, 50.555191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.308220, 31.893250, 50.575996>,  <41.424320, 32.274456, 50.610672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.308220, 31.893250, 50.575996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106863, 0.057743, -0.992595,
		0.950966, -0.297361, 0.085083,
		-0.290246, -0.953017, -0.086689,
		41.221146, 31.607344, 50.549992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.847454, 31.879028, 50.109108>,  <41.424320, 32.274456, 50.610672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.847454, 31.879028, 50.109108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.513977, 31.659624, 50.134708>,  <41.313892, 31.527981, 50.150066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.513977, 31.659624, 50.134708>,  <41.847454, 31.879028, 50.109108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.513977, 31.659624, 50.134708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015952, -0.091921, -0.995639,
		0.552004, -0.831074, 0.067883,
		-0.833689, -0.548513, 0.063998,
		41.263870, 31.495070, 50.153908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.933258, 31.213509, 49.709099>,  <41.847454, 31.879028, 50.109108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.933258, 31.213509, 49.709099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.540157, 31.287443, 49.711327>,  <41.304295, 31.331804, 49.712666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.540157, 31.287443, 49.711327>,  <41.933258, 31.213509, 49.709099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.540157, 31.287443, 49.711327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002858, 0.045314, -0.998969,
		-0.184899, -0.981724, -0.045061,
		-0.982753, 0.184837, 0.005573,
		41.245331, 31.342894, 49.712997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.589897, 30.842321, 49.174831>,  <41.933258, 31.213509, 49.709099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.589897, 30.842321, 49.174831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.374638, 31.170458, 49.252224>,  <41.245483, 31.367340, 49.298660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.374638, 31.170458, 49.252224>,  <41.589897, 30.842321, 49.174831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.374638, 31.170458, 49.252224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095099, 0.168995, -0.981018,
		-0.837469, -0.546332, -0.012930,
		-0.538147, 0.820343, 0.193484,
		41.213192, 31.416561, 49.310268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.008835, 30.737762, 48.745701>,  <41.589897, 30.842321, 49.174831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.008835, 30.737762, 48.745701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.992245, 31.122423, 48.854149>,  <40.982292, 31.353220, 48.919216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.992245, 31.122423, 48.854149>,  <41.008835, 30.737762, 48.745701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.992245, 31.122423, 48.854149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425333, 0.228542, -0.875706,
		-0.904086, -0.151630, 0.399545,
		-0.041471, 0.961653, 0.271116,
		40.979805, 31.410919, 48.935482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.301895, 30.894743, 48.729713>,  <41.008835, 30.737762, 48.745701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.301895, 30.894743, 48.729713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.552757, 31.201365, 48.674473>,  <40.703274, 31.385338, 48.641327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.552757, 31.201365, 48.674473>,  <40.301895, 30.894743, 48.729713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.552757, 31.201365, 48.674473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421927, 0.185305, -0.887491,
		-0.654719, 0.614862, 0.439644,
		0.627153, 0.766555, -0.138104,
		40.740902, 31.431332, 48.633041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.851612, 31.298586, 48.201595>,  <40.301895, 30.894743, 48.729713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.851612, 31.298586, 48.201595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.211189, 31.473736, 48.206623>,  <40.426937, 31.578827, 48.209641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.211189, 31.473736, 48.206623>,  <39.851612, 31.298586, 48.201595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.211189, 31.473736, 48.206623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236670, 0.509628, -0.827204,
		-0.368620, 0.740637, 0.561761,
		0.898947, 0.437877, 0.012572,
		40.480873, 31.605099, 48.210396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.704166, 31.959799, 47.818138>,  <39.851612, 31.298586, 48.201595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.704166, 31.959799, 47.818138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.095303, 31.879311, 47.795002>,  <40.329983, 31.831017, 47.781120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.095303, 31.879311, 47.795002>,  <39.704166, 31.959799, 47.818138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.095303, 31.879311, 47.795002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043197, 0.076418, -0.996140,
		0.204865, 0.976560, 0.066032,
		0.977837, -0.201222, -0.057840,
		40.388653, 31.818943, 47.777649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.816231, 32.326370, 47.361885>,  <39.704166, 31.959799, 47.818138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.816231, 32.326370, 47.361885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.151737, 32.108578, 47.360237>,  <40.353039, 31.977901, 47.359249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.151737, 32.108578, 47.360237>,  <39.816231, 32.326370, 47.361885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.151737, 32.108578, 47.360237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059457, 0.099108, -0.993299,
		0.541241, 0.832897, 0.115501,
		0.838763, -0.544482, -0.004120,
		40.403366, 31.945232, 47.359001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.267235, 32.704502, 47.039730>,  <39.816231, 32.326370, 47.361885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.267235, 32.704502, 47.039730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.352283, 32.314987, 47.007412>,  <40.403313, 32.081276, 46.988022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.352283, 32.314987, 47.007412>,  <40.267235, 32.704502, 47.039730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.352283, 32.314987, 47.007412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008287, 0.084482, -0.996391,
		0.977100, 0.211182, 0.026033,
		0.212619, -0.973789, -0.080797,
		40.416069, 32.022850, 46.983173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.408176, 32.714172, 46.404175>,  <40.267235, 32.704502, 47.039730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.408176, 32.714172, 46.404175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.406090, 32.320560, 46.475353>,  <40.404839, 32.084393, 46.518059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.406090, 32.320560, 46.475353>,  <40.408176, 32.714172, 46.404175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.406090, 32.320560, 46.475353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166818, -0.174599, -0.970406,
		0.985974, -0.034745, -0.163243,
		-0.005215, -0.984026, 0.177946,
		40.404526, 32.025352, 46.528736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.939838, 32.448669, 46.006500>,  <40.408176, 32.714172, 46.404175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.939838, 32.448669, 46.006500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.682026, 32.152504, 46.082775>,  <40.527336, 31.974804, 46.128540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.682026, 32.152504, 46.082775>,  <40.939838, 32.448669, 46.006500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.682026, 32.152504, 46.082775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173798, -0.100996, -0.979589,
		0.744559, -0.664521, -0.063587,
		-0.644536, -0.740413, 0.190690,
		40.488667, 31.930380, 46.139980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.984886, 31.915426, 45.369328>,  <40.939838, 32.448669, 46.006500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.984886, 31.915426, 45.369328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.640110, 31.836905, 45.556313>,  <40.433243, 31.789791, 45.668503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.640110, 31.836905, 45.556313>,  <40.984886, 31.915426, 45.369328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.640110, 31.836905, 45.556313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429195, -0.208318, -0.878860,
		0.269906, -0.958158, 0.095305,
		-0.861941, -0.196306, 0.467463,
		40.381527, 31.778013, 45.696552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.683304, 31.288330, 45.048378>,  <40.984886, 31.915426, 45.369328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.683304, 31.288330, 45.048378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.371887, 31.473436, 45.217957>,  <40.185040, 31.584499, 45.319702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.371887, 31.473436, 45.217957>,  <40.683304, 31.288330, 45.048378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.371887, 31.473436, 45.217957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587366, -0.299292, -0.751948,
		-0.221087, -0.834432, 0.504820,
		-0.778539, 0.462760, 0.423947,
		40.138325, 31.612265, 45.345139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.123871, 30.815037, 45.019207>,  <40.683304, 31.288330, 45.048378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.123871, 30.815037, 45.019207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.970673, 31.183674, 45.044441>,  <39.878754, 31.404856, 45.059582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.970673, 31.183674, 45.044441>,  <40.123871, 30.815037, 45.019207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.970673, 31.183674, 45.044441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571898, -0.182925, -0.799669,
		-0.725430, -0.342348, 0.597117,
		-0.382993, 0.921594, 0.063089,
		39.855774, 31.460152, 45.063370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.399204, 30.756050, 44.804211>,  <40.123871, 30.815037, 45.019207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.399204, 30.756050, 44.804211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.417233, 31.155556, 44.795841>,  <39.428047, 31.395260, 44.790817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.417233, 31.155556, 44.795841>,  <39.399204, 30.756050, 44.804211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.417233, 31.155556, 44.795841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548139, 0.007211, -0.836356,
		-0.835172, 0.049164, 0.547787,
		0.045069, 0.998765, -0.020926,
		39.430752, 31.455185, 44.789562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.762661, 30.911579, 44.566288>,  <39.399204, 30.756050, 44.804211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.762661, 30.911579, 44.566288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.014805, 31.215363, 44.501957>,  <39.166092, 31.397633, 44.463356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.014805, 31.215363, 44.501957>,  <38.762661, 30.911579, 44.566288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.014805, 31.215363, 44.501957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221690, -0.022442, -0.974859,
		-0.743973, 0.650170, 0.154218,
		0.630363, 0.759457, -0.160832,
		39.203915, 31.443199, 44.453709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.395023, 31.313986, 44.181343>,  <38.762661, 30.911579, 44.566288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.395023, 31.313986, 44.181343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.778358, 31.401155, 44.107483>,  <39.008358, 31.453457, 44.063168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.778358, 31.401155, 44.107483>,  <38.395023, 31.313986, 44.181343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.778358, 31.401155, 44.107483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174702, -0.064249, -0.982523,
		-0.225977, 0.973849, -0.023500,
		0.958339, 0.217922, -0.184652,
		39.065861, 31.466532, 44.052086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.288479, 31.761335, 43.544571>,  <38.395023, 31.313986, 44.181343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.288479, 31.761335, 43.544571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.672646, 31.651659, 43.564251>,  <38.903145, 31.585854, 43.576061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.672646, 31.651659, 43.564251>,  <38.288479, 31.761335, 43.544571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.672646, 31.651659, 43.564251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016560, -0.120116, -0.992622,
		0.278078, 0.954144, -0.110821,
		0.960416, -0.274191, 0.049202,
		38.960770, 31.569403, 43.579010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.666061, 32.199856, 43.091190>,  <38.288479, 31.761335, 43.544571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.666061, 32.199856, 43.091190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.931210, 31.901978, 43.122257>,  <39.090298, 31.723251, 43.140896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.931210, 31.901978, 43.122257>,  <38.666061, 32.199856, 43.091190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.931210, 31.901978, 43.122257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018670, -0.087254, -0.996011,
		0.748499, 0.661679, -0.043935,
		0.662874, -0.744693, 0.077663,
		39.130070, 31.678570, 43.145557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.107693, 32.368275, 42.608795>,  <38.666061, 32.199856, 43.091190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.107693, 32.368275, 42.608795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.179386, 31.981007, 42.678688>,  <39.222401, 31.748646, 42.720623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.179386, 31.981007, 42.678688>,  <39.107693, 32.368275, 42.608795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.179386, 31.981007, 42.678688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172003, -0.144032, -0.974510,
		0.968655, 0.204715, 0.140712,
		0.179230, -0.968167, 0.174729,
		39.233154, 31.690557, 42.731106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.840244, 32.195843, 42.446854>,  <39.107693, 32.368275, 42.608795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.840244, 32.195843, 42.446854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.623947, 31.859621, 42.433861>,  <39.494167, 31.657887, 42.426064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.623947, 31.859621, 42.433861>,  <39.840244, 32.195843, 42.446854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.623947, 31.859621, 42.433861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280987, -0.144100, -0.948831,
		0.792868, -0.522203, 0.314107,
		-0.540746, -0.840559, -0.032480,
		39.461723, 31.607454, 42.424118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.265282, 31.562729, 42.247883>,  <39.840244, 32.195843, 42.446854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.265282, 31.562729, 42.247883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.889290, 31.460100, 42.157890>,  <39.663696, 31.398523, 42.103893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.889290, 31.460100, 42.157890>,  <40.265282, 31.562729, 42.247883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.889290, 31.460100, 42.157890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291764, -0.262337, -0.919811,
		0.176974, -0.930242, 0.321449,
		-0.939976, -0.256570, -0.224985,
		39.607296, 31.383129, 42.090393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.359642, 30.922703, 41.851353>,  <40.265282, 31.562729, 42.247883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.359642, 30.922703, 41.851353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.988750, 31.049685, 41.771881>,  <39.766216, 31.125874, 41.724197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.988750, 31.049685, 41.771881>,  <40.359642, 30.922703, 41.851353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.988750, 31.049685, 41.771881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128497, -0.228629, -0.964996,
		-0.351765, -0.920300, 0.171199,
		-0.927227, 0.317453, -0.198679,
		39.710583, 31.144920, 41.712276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.139980, 30.386631, 41.478806>,  <40.359642, 30.922703, 41.851353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.139980, 30.386631, 41.478806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.882065, 30.680264, 41.393600>,  <39.727314, 30.856443, 41.342480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.882065, 30.680264, 41.393600>,  <40.139980, 30.386631, 41.478806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.882065, 30.680264, 41.393600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183058, -0.122264, -0.975470,
		-0.742116, -0.667967, -0.055544,
		-0.644790, 0.734079, -0.213011,
		39.688629, 30.900488, 41.329697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.688335, 30.099293, 41.033066>,  <40.139980, 30.386631, 41.478806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.688335, 30.099293, 41.033066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.687111, 30.496979, 40.990120>,  <39.686378, 30.735590, 40.964352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.687111, 30.496979, 40.990120>,  <39.688335, 30.099293, 41.033066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.687111, 30.496979, 40.990120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184759, -0.104955, -0.977164,
		-0.982779, -0.022825, -0.183369,
		-0.003059, 0.994215, -0.107365,
		39.686192, 30.795242, 40.957912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.209297, 30.171236, 40.488956>,  <39.688335, 30.099293, 41.033066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.209297, 30.171236, 40.488956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.426579, 30.506565, 40.507465>,  <39.556946, 30.707764, 40.518570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.426579, 30.506565, 40.507465>,  <39.209297, 30.171236, 40.488956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.426579, 30.506565, 40.507465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014171, 0.064256, -0.997833,
		-0.839481, 0.541371, 0.046784,
		0.543204, 0.838325, 0.046270,
		39.589539, 30.758062, 40.521347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.792885, 30.625166, 40.138058>,  <39.209297, 30.171236, 40.488956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.792885, 30.625166, 40.138058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.166393, 30.766182, 40.113426>,  <39.390499, 30.850792, 40.098648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.166393, 30.766182, 40.113426>,  <38.792885, 30.625166, 40.138058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.166393, 30.766182, 40.113426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183194, 0.323053, -0.928481,
		-0.307432, 0.878267, 0.366240,
		0.933769, 0.352538, -0.061577,
		39.446526, 30.871943, 40.094952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.782688, 31.237894, 39.601562>,  <38.792885, 30.625166, 40.138058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.782688, 31.237894, 39.601562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.170315, 31.149223, 39.644966>,  <39.402889, 31.096022, 39.671009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.170315, 31.149223, 39.644966>,  <38.782688, 31.237894, 39.601562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.170315, 31.149223, 39.644966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164502, 0.252354, -0.953549,
		0.183994, 0.941901, 0.281013,
		0.969064, -0.221675, 0.108512,
		39.461033, 31.082722, 39.677521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.047962, 31.796934, 39.224117>,  <38.782688, 31.237894, 39.601562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.047962, 31.796934, 39.224117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.337090, 31.522831, 39.259796>,  <39.510567, 31.358370, 39.281204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.337090, 31.522831, 39.259796>,  <39.047962, 31.796934, 39.224117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.337090, 31.522831, 39.259796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292000, 0.185883, -0.938181,
		0.626313, 0.704182, 0.334454,
		0.722819, -0.685256, 0.089200,
		39.553936, 31.317255, 39.286556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.707359, 32.096245, 38.998005>,  <39.047962, 31.796934, 39.224117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.707359, 32.096245, 38.998005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.703232, 31.699430, 38.947792>,  <39.700756, 31.461342, 38.917664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.703232, 31.699430, 38.947792>,  <39.707359, 32.096245, 38.998005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.703232, 31.699430, 38.947792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311042, 0.116129, -0.943275,
		0.950340, -0.048784, 0.307366,
		-0.010323, -0.992035, -0.125536,
		39.700134, 31.401819, 38.910130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.211613, 32.007122, 38.485405>,  <39.707359, 32.096245, 38.998005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.211613, 32.007122, 38.485405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.040100, 31.645807, 38.491413>,  <39.937191, 31.429020, 38.495018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.040100, 31.645807, 38.491413>,  <40.211613, 32.007122, 38.485405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.040100, 31.645807, 38.491413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093963, -0.061126, -0.993697,
		0.898509, -0.424667, 0.111084,
		-0.428780, -0.903284, 0.015019,
		39.911465, 31.374823, 38.495918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.649086, 31.651438, 37.985039>,  <40.211613, 32.007122, 38.485405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.649086, 31.651438, 37.985039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.310059, 31.442396, 38.021938>,  <40.106644, 31.316971, 38.044079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.310059, 31.442396, 38.021938>,  <40.649086, 31.651438, 37.985039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.310059, 31.442396, 38.021938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015893, -0.198741, -0.979923,
		0.530447, -0.829087, 0.176753,
		-0.847569, -0.522606, 0.092245,
		40.055786, 31.285614, 38.049610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.845074, 31.004633, 37.661404>,  <40.649086, 31.651438, 37.985039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.845074, 31.004633, 37.661404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.454510, 31.090889, 37.657051>,  <40.220169, 31.142643, 37.654438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.454510, 31.090889, 37.657051>,  <40.845074, 31.004633, 37.661404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.454510, 31.090889, 37.657051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017175, -0.127819, -0.991649,
		-0.215231, -0.968071, 0.128508,
		-0.976412, 0.215640, -0.010884,
		40.161587, 31.155581, 37.653786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.632637, 30.538591, 37.108734>,  <40.845074, 31.004633, 37.661404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.632637, 30.538591, 37.108734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.337051, 30.803873, 37.156219>,  <40.159698, 30.963041, 37.184711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.337051, 30.803873, 37.156219>,  <40.632637, 30.538591, 37.108734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.337051, 30.803873, 37.156219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076353, 0.092633, -0.992769,
		-0.669403, -0.742685, -0.017815,
		-0.738965, 0.663202, 0.118715,
		40.115360, 31.002834, 37.191833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.056786, 30.341585, 36.771748>,  <40.632637, 30.538591, 37.108734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.056786, 30.341585, 36.771748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.039127, 30.740774, 36.790066>,  <40.028534, 30.980288, 36.801056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.039127, 30.740774, 36.790066>,  <40.056786, 30.341585, 36.771748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.039127, 30.740774, 36.790066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066537, 0.042806, -0.996865,
		-0.996807, -0.047053, 0.064512,
		-0.044144, 0.997975, 0.045800,
		40.025883, 31.040167, 36.803806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.457306, 30.538918, 36.314140>,  <40.056786, 30.341585, 36.771748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.457306, 30.538918, 36.314140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.728024, 30.827044, 36.374931>,  <39.890453, 30.999920, 36.411407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.728024, 30.827044, 36.374931>,  <39.457306, 30.538918, 36.314140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.728024, 30.827044, 36.374931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113343, 0.102031, -0.988303,
		-0.727397, 0.686102, -0.012589,
		0.676792, 0.720316, 0.151982,
		39.931061, 31.043139, 36.420525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.318867, 31.108580, 35.866196>,  <39.457306, 30.538918, 36.314140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.318867, 31.108580, 35.866196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.704067, 31.110043, 35.973984>,  <39.935188, 31.110920, 36.038658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.704067, 31.110043, 35.973984>,  <39.318867, 31.108580, 35.866196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.704067, 31.110043, 35.973984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266276, 0.141138, -0.953508,
		-0.041522, 0.989983, 0.134941,
		0.963002, 0.003660, 0.269469,
		39.992970, 31.111141, 36.054825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.568722, 31.777111, 35.721138>,  <39.318867, 31.108580, 35.866196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.568722, 31.777111, 35.721138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.827026, 31.474085, 35.683018>,  <39.982010, 31.292269, 35.660145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.827026, 31.474085, 35.683018>,  <39.568722, 31.777111, 35.721138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.827026, 31.474085, 35.683018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023900, 0.144807, -0.989171,
		0.763164, 0.636492, 0.111617,
		0.645763, -0.757568, -0.095299,
		40.020756, 31.246815, 35.654427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.258862, 31.986212, 35.497974>,  <39.568722, 31.777111, 35.721138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.258862, 31.986212, 35.497974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.165257, 31.617735, 35.373627>,  <40.109093, 31.396648, 35.299019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.165257, 31.617735, 35.373627>,  <40.258862, 31.986212, 35.497974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.165257, 31.617735, 35.373627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080757, 0.337063, -0.938012,
		0.968874, -0.194400, -0.153269,
		-0.234011, -0.921193, -0.310873,
		40.095055, 31.341377, 35.280365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.970814, 31.992386, 35.729691>,  <40.258862, 31.986212, 35.497974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.970814, 31.992386, 35.729691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.050785, 32.058239, 36.116043>,  <41.098766, 32.097752, 36.347855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.050785, 32.058239, 36.116043>,  <40.970814, 31.992386, 35.729691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.050785, 32.058239, 36.116043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621207, 0.741034, -0.254892,
		-0.757714, 0.650972, 0.045881,
		0.199927, 0.164633, 0.965880,
		41.110764, 32.107628, 36.405807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.830868, 32.714241, 35.611000>,  <40.970814, 31.992386, 35.729691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.830868, 32.714241, 35.611000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.044029, 32.576691, 35.920261>,  <41.171925, 32.494160, 36.105820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.044029, 32.576691, 35.920261>,  <40.830868, 32.714241, 35.611000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.044029, 32.576691, 35.920261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758002, 0.600105, -0.255552,
		-0.376097, 0.722237, 0.580453,
		0.532902, -0.343872, 0.773154,
		41.203899, 32.473530, 36.152206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.964767, 32.942158, 34.995220>,  <40.830868, 32.714241, 35.611000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.964767, 32.942158, 34.995220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.182011, 33.199974, 34.779964>,  <41.312359, 33.354664, 34.650810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.182011, 33.199974, 34.779964>,  <40.964767, 32.942158, 34.995220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.182011, 33.199974, 34.779964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332208, -0.753555, -0.567268,
		-0.771148, 0.129314, -0.623385,
		0.543111, 0.644541, -0.538143,
		41.344944, 33.393337, 34.618523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.758606, 32.858711, 34.357349>,  <40.964767, 32.942158, 34.995220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.758606, 32.858711, 34.357349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.120377, 33.028526, 34.340492>,  <41.337440, 33.130417, 34.330379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.120377, 33.028526, 34.340492>,  <40.758606, 32.858711, 34.357349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.120377, 33.028526, 34.340492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282941, -0.670817, -0.685528,
		-0.319304, 0.608087, -0.726825,
		0.904427, 0.424541, -0.042142,
		41.391705, 33.155888, 34.327850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.873177, 32.921661, 33.701553>,  <40.758606, 32.858711, 34.357349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.873177, 32.921661, 33.701553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.238567, 32.942841, 33.862926>,  <41.457802, 32.955547, 33.959751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.238567, 32.942841, 33.862926>,  <40.873177, 32.921661, 33.701553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.238567, 32.942841, 33.862926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330083, -0.676185, -0.658650,
		0.237924, 0.734827, -0.635154,
		0.913475, 0.052945, 0.403435,
		41.512611, 32.958725, 33.983955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.361187, 32.951229, 33.168571>,  <40.873177, 32.921661, 33.701553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.361187, 32.951229, 33.168571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.592991, 32.830898, 33.471539>,  <41.732071, 32.758701, 33.653316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.592991, 32.830898, 33.471539>,  <41.361187, 32.951229, 33.168571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.592991, 32.830898, 33.471539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434697, -0.672034, -0.599508,
		0.689356, 0.676663, -0.258678,
		0.579505, -0.300828, 0.757414,
		41.766842, 32.740650, 33.698761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.033371, 33.037083, 32.920361>,  <41.361187, 32.951229, 33.168571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.033371, 33.037083, 32.920361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.059452, 32.771397, 33.218239>,  <42.075100, 32.611984, 33.396965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.059452, 32.771397, 33.218239>,  <42.033371, 33.037083, 32.920361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.059452, 32.771397, 33.218239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488472, -0.629512, -0.604243,
		0.870140, 0.403160, 0.283405,
		0.065200, -0.664212, 0.744696,
		42.079010, 32.572132, 33.441647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.753933, 32.830017, 32.943390>,  <42.033371, 33.037083, 32.920361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.753933, 32.830017, 32.943390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.556602, 32.548126, 33.147346>,  <42.438206, 32.378990, 33.269722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.556602, 32.548126, 33.147346>,  <42.753933, 32.830017, 32.943390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.556602, 32.548126, 33.147346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555500, -0.706327, -0.438772,
		0.669367, 0.066789, 0.739924,
		-0.493323, -0.704727, 0.509893,
		42.408604, 32.336708, 33.300316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.211723, 32.376530, 33.218014>,  <42.753933, 32.830017, 32.943390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.211723, 32.376530, 33.218014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.890148, 32.138699, 33.222961>,  <42.697201, 31.995998, 33.225929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.890148, 32.138699, 33.222961>,  <43.211723, 32.376530, 33.218014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.890148, 32.138699, 33.222961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558974, -0.762572, -0.325626,
		0.203046, -0.254868, 0.945418,
		-0.803941, -0.594581, 0.012373,
		42.648968, 31.960325, 33.226673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.431927, 31.687483, 33.571159>,  <43.211723, 32.376530, 33.218014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.431927, 31.687483, 33.571159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.091969, 31.578876, 33.390511>,  <42.887993, 31.513712, 33.282120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.091969, 31.578876, 33.390511>,  <43.431927, 31.687483, 33.571159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.091969, 31.578876, 33.390511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391939, -0.898575, -0.197351,
		-0.352231, -0.344735, 0.870110,
		-0.849892, -0.271517, -0.451621,
		42.837002, 31.497421, 33.255024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.347305, 30.967512, 33.748363>,  <43.431927, 31.687483, 33.571159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.347305, 30.967512, 33.748363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.103119, 31.010410, 33.434464>,  <42.956608, 31.036148, 33.246124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.103119, 31.010410, 33.434464>,  <43.347305, 30.967512, 33.748363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.103119, 31.010410, 33.434464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226558, -0.925748, -0.302756,
		-0.758948, -0.362613, 0.540842,
		-0.610467, 0.107244, -0.784748,
		42.919979, 31.042583, 33.199039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.056358, 30.330698, 33.695393>,  <43.347305, 30.967512, 33.748363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.056358, 30.330698, 33.695393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.000813, 30.496758, 33.335754>,  <42.967484, 30.596394, 33.119972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.000813, 30.496758, 33.335754>,  <43.056358, 30.330698, 33.695393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.000813, 30.496758, 33.335754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235618, -0.867967, -0.437169,
		-0.961873, -0.272551, 0.022715,
		-0.138867, 0.415149, -0.899092,
		42.959152, 30.621302, 33.066025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.682503, 29.816410, 33.270981>,  <43.056358, 30.330698, 33.695393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.682503, 29.816410, 33.270981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.832676, 30.078379, 33.008644>,  <42.922779, 30.235559, 32.851242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.832676, 30.078379, 33.008644>,  <42.682503, 29.816410, 33.270981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.832676, 30.078379, 33.008644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332734, -0.755668, -0.564140,
		-0.865064, -0.006421, -0.501620,
		0.375436, 0.654923, -0.655838,
		42.945305, 30.274857, 32.811893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.466938, 29.543404, 32.657505>,  <42.682503, 29.816410, 33.270981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.466938, 29.543404, 32.657505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.773262, 29.778183, 32.552410>,  <42.957054, 29.919050, 32.489353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.773262, 29.778183, 32.552410>,  <42.466938, 29.543404, 32.657505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.773262, 29.778183, 32.552410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204542, -0.609672, -0.765808,
		-0.609672, 0.532722, -0.586948,
		0.765808, 0.586948, -0.262736,
		43.003006, 29.954268, 32.473591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.338261, 29.675619, 32.015873>,  <42.466938, 29.543404, 32.657505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.338261, 29.675619, 32.015873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.731514, 29.736610, 32.056271>,  <42.967464, 29.773205, 32.080509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.731514, 29.736610, 32.056271>,  <42.338261, 29.675619, 32.015873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.731514, 29.736610, 32.056271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173412, -0.601736, -0.779642,
		-0.058108, 0.784006, -0.618028,
		0.983134, 0.152477, 0.100991,
		43.026455, 29.782354, 32.086567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.521538, 29.892626, 31.420311>,  <42.338261, 29.675619, 32.015873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.521538, 29.892626, 31.420311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.855236, 29.743612, 31.582914>,  <43.055454, 29.654203, 31.680477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.855236, 29.743612, 31.582914>,  <42.521538, 29.892626, 31.420311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.855236, 29.743612, 31.582914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157039, -0.546182, -0.822815,
		0.528556, 0.750268, -0.397147,
		0.834247, -0.372536, 0.406509,
		43.105511, 29.631851, 31.704866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.674831, 29.379700, 30.867411>,  <42.521538, 29.892626, 31.420311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.674831, 29.379700, 30.867411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.979462, 29.367603, 31.126360>,  <43.162239, 29.360346, 31.281729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.979462, 29.367603, 31.126360>,  <42.674831, 29.379700, 30.867411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.979462, 29.367603, 31.126360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509109, -0.590182, -0.626492,
		0.401014, 0.806703, -0.434071,
		0.761574, -0.030242, 0.647372,
		43.207935, 29.358530, 31.320572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.148605, 29.802374, 30.610659>,  <42.674831, 29.379700, 30.867411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.148605, 29.802374, 30.610659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.266964, 29.486408, 30.825502>,  <43.337978, 29.296829, 30.954409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.266964, 29.486408, 30.825502>,  <43.148605, 29.802374, 30.610659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.266964, 29.486408, 30.825502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316276, -0.449555, -0.835386,
		0.901342, 0.417059, 0.116811,
		0.295892, -0.789913, 0.537109,
		43.355732, 29.249434, 30.986635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.811054, 29.577667, 30.412092>,  <43.148605, 29.802374, 30.610659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.811054, 29.577667, 30.412092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.635147, 29.257635, 30.575296>,  <43.529602, 29.065617, 30.673220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.635147, 29.257635, 30.575296>,  <43.811054, 29.577667, 30.412092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.635147, 29.257635, 30.575296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407894, -0.582674, -0.702932,
		0.800139, -0.142704, 0.582592,
		-0.439772, -0.800079, 0.408012,
		43.503216, 29.017611, 30.697701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.144524, 29.055916, 30.062790>,  <43.811054, 29.577667, 30.412092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.144524, 29.055916, 30.062790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.856270, 28.842058, 30.239351>,  <43.683315, 28.713743, 30.345287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.856270, 28.842058, 30.239351>,  <44.144524, 29.055916, 30.062790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.856270, 28.842058, 30.239351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314905, -0.819607, -0.478623,
		0.617671, -0.205913, 0.759001,
		-0.720637, -0.534644, 0.441404,
		43.640079, 28.681665, 30.371773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.462482, 28.451624, 30.315481>,  <44.144524, 29.055916, 30.062790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.462482, 28.451624, 30.315481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.072201, 28.379023, 30.266397>,  <43.838032, 28.335461, 30.236948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.072201, 28.379023, 30.266397>,  <44.462482, 28.451624, 30.315481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.072201, 28.379023, 30.266397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219063, -0.817453, -0.532713,
		-0.003620, -0.546651, 0.837353,
		-0.975704, -0.181504, -0.122710,
		43.779491, 28.324572, 30.229584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.464085, 27.767519, 30.351156>,  <44.462482, 28.451624, 30.315481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.464085, 27.767519, 30.351156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.104343, 27.848188, 30.195980>,  <43.888500, 27.896589, 30.102875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.104343, 27.848188, 30.195980>,  <44.464085, 27.767519, 30.351156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.104343, 27.848188, 30.195980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220908, -0.556107, -0.801215,
		-0.377319, -0.806272, 0.455584,
		-0.899350, 0.201671, -0.387942,
		43.834538, 27.908689, 30.079597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.166996, 27.139429, 30.265366>,  <44.464085, 27.767519, 30.351156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.166996, 27.139429, 30.265366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.004341, 27.397955, 30.007090>,  <43.906746, 27.553070, 29.852123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.004341, 27.397955, 30.007090>,  <44.166996, 27.139429, 30.265366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.004341, 27.397955, 30.007090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235701, -0.608619, -0.757646,
		-0.882660, -0.460280, 0.095153,
		-0.406641, 0.646316, -0.645692,
		43.882347, 27.591850, 29.813381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.782772, 26.676897, 29.879875>,  <44.166996, 27.139429, 30.265366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.782772, 26.676897, 29.879875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.813923, 27.003534, 29.651100>,  <43.832615, 27.199516, 29.513836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.813923, 27.003534, 29.651100>,  <43.782772, 26.676897, 29.879875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.813923, 27.003534, 29.651100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367553, -0.556785, -0.744913,
		-0.926737, -0.152206, -0.343501,
		0.077876, 0.816593, -0.571936,
		43.837284, 27.248512, 29.479519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.474827, 26.224291, 29.309523>,  <43.782772, 26.676897, 29.879875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.474827, 26.224291, 29.309523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.830425, 26.101852, 29.173296>,  <44.043785, 26.028389, 29.091560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.830425, 26.101852, 29.173296>,  <43.474827, 26.224291, 29.309523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.830425, 26.101852, 29.173296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376990, -0.067081, -0.923785,
		0.259922, 0.949634, -0.175030,
		0.888999, -0.306097, -0.340566,
		44.097126, 26.010023, 29.071127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.415306, 26.590935, 28.741940>,  <43.474827, 26.224291, 29.309523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.415306, 26.590935, 28.741940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.696915, 26.308292, 28.713463>,  <43.865879, 26.138706, 28.696377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.696915, 26.308292, 28.713463>,  <43.415306, 26.590935, 28.741940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.696915, 26.308292, 28.713463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316692, -0.222637, -0.922030,
		0.635662, 0.671670, -0.380517,
		0.704017, -0.706606, -0.071191,
		43.908119, 26.096312, 28.692106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.442539, 26.575842, 27.997261>,  <43.415306, 26.590935, 28.741940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.442539, 26.575842, 27.997261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.655113, 26.249321, 28.087797>,  <43.782658, 26.053408, 28.142118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.655113, 26.249321, 28.087797>,  <43.442539, 26.575842, 27.997261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.655113, 26.249321, 28.087797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219880, -0.390965, -0.893756,
		0.818067, 0.425202, -0.387259,
		0.531431, -0.816303, 0.226342,
		43.814541, 26.004431, 28.155701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.722996, 27.214447, 28.038774>,  <43.442539, 26.575842, 27.997261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.722996, 27.214447, 28.038774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.851574, 27.593218, 28.038839>,  <43.928719, 27.820480, 28.038877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.851574, 27.593218, 28.038839>,  <43.722996, 27.214447, 28.038774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.851574, 27.593218, 28.038839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945032, -0.320809, 0.063221,
		0.059917, -0.020168, -0.998000,
		0.321442, 0.946929, 0.000162,
		43.948006, 27.877296, 28.038889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.286461, 27.336521, 27.548138>,  <43.722996, 27.214447, 28.038774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.286461, 27.336521, 27.548138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.337658, 27.583366, 27.858696>,  <44.368374, 27.731474, 28.045031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.337658, 27.583366, 27.858696>,  <44.286461, 27.336521, 27.548138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.337658, 27.583366, 27.858696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846936, -0.475347, 0.238209,
		0.516059, 0.627068, -0.583497,
		0.127990, 0.617115, 0.776394,
		44.376057, 27.768501, 28.091614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.939106, 27.554823, 27.428467>,  <44.286461, 27.336521, 27.548138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.939106, 27.554823, 27.428467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.824200, 27.594856, 27.809509>,  <44.755257, 27.618877, 28.038136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.824200, 27.594856, 27.809509>,  <44.939106, 27.554823, 27.428467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.824200, 27.594856, 27.809509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887051, -0.347449, 0.304006,
		0.361409, 0.932342, 0.011031,
		-0.287270, 0.100085, 0.952606,
		44.738018, 27.624882, 28.095291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.404484, 27.990185, 27.723370>,  <44.939106, 27.554823, 27.428467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.404484, 27.990185, 27.723370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.241993, 27.741964, 27.991667>,  <45.144497, 27.593033, 28.152645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.241993, 27.741964, 27.991667>,  <45.404484, 27.990185, 27.723370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.241993, 27.741964, 27.991667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912191, -0.318567, 0.257726,
		0.053745, 0.716542, 0.695470,
		-0.406226, -0.620550, 0.670745,
		45.120125, 27.555799, 28.192890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.621311, 28.036711, 28.499289>,  <45.404484, 27.990185, 27.723370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.621311, 28.036711, 28.499289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.553322, 27.645336, 28.452351>,  <45.512527, 27.410511, 28.424189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.553322, 27.645336, 28.452351>,  <45.621311, 28.036711, 28.499289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.553322, 27.645336, 28.452351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985448, -0.168664, -0.021102,
		0.000855, -0.119222, 0.992867,
		-0.169977, -0.978437, -0.117343,
		45.502327, 27.351805, 28.417149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.720684, 28.564621, 29.134684>,  <45.621311, 28.036711, 28.499289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.720684, 28.564621, 29.134684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.722652, 28.724667, 28.768103>,  <45.723835, 28.820694, 28.548155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.722652, 28.724667, 28.768103>,  <45.720684, 28.564621, 29.134684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.722652, 28.724667, 28.768103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206435, 0.896316, 0.392432,
		0.978448, -0.191119, -0.078187,
		0.004921, 0.400115, -0.916452,
		45.724129, 28.844702, 28.493168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.325146, 28.963953, 29.057222>,  <45.720684, 28.564621, 29.134684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.325146, 28.963953, 29.057222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.042858, 29.108435, 28.813421>,  <45.873486, 29.195124, 28.667141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.042858, 29.108435, 28.813421>,  <46.325146, 28.963953, 29.057222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.042858, 29.108435, 28.813421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063869, 0.889213, 0.453013,
		0.705609, 0.280770, -0.650603,
		-0.705717, 0.361203, -0.609504,
		45.831142, 29.216795, 28.630569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.605690, 29.517342, 28.609306>,  <46.325146, 28.963953, 29.057222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.605690, 29.517342, 28.609306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.222687, 29.547699, 28.720600>,  <45.992886, 29.565914, 28.787376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.222687, 29.547699, 28.720600>,  <46.605690, 29.517342, 28.609306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.222687, 29.547699, 28.720600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207884, 0.850320, 0.483467,
		-0.199896, 0.520765, -0.829967,
		-0.957510, 0.075894, 0.278235,
		45.935432, 29.570467, 28.804070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.411808, 30.191078, 28.537708>,  <46.605690, 29.517342, 28.609306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.411808, 30.191078, 28.537708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.124783, 30.068546, 28.787914>,  <45.952568, 29.995028, 28.938038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.124783, 30.068546, 28.787914>,  <46.411808, 30.191078, 28.537708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.124783, 30.068546, 28.787914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055507, 0.870079, 0.489777,
		-0.694282, 0.386164, -0.607330,
		-0.717560, -0.306332, 0.625515,
		45.909515, 29.976646, 28.975569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.864258, 30.755928, 28.580393>,  <46.411808, 30.191078, 28.537708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.864258, 30.755928, 28.580393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.800797, 30.544901, 28.914221>,  <45.762722, 30.418285, 29.114517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.800797, 30.544901, 28.914221>,  <45.864258, 30.755928, 28.580393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.800797, 30.544901, 28.914221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003643, 0.844955, 0.534826,
		-0.987328, 0.087890, -0.132130,
		-0.158650, -0.527567, 0.834568,
		45.753201, 30.386631, 29.164591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.282116, 31.066694, 29.003048>,  <45.864258, 30.755928, 28.580393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.282116, 31.066694, 29.003048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.475761, 30.838558, 29.268482>,  <45.591949, 30.701677, 29.427744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.475761, 30.838558, 29.268482>,  <45.282116, 31.066694, 29.003048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.475761, 30.838558, 29.268482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068642, 0.780798, 0.621001,
		-0.872309, -0.255085, 0.417144,
		0.484113, -0.570338, 0.663588,
		45.620995, 30.667458, 29.467558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.998543, 31.198126, 29.669262>,  <45.282116, 31.066694, 29.003048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.998543, 31.198126, 29.669262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.357628, 31.036440, 29.739368>,  <45.573078, 30.939428, 29.781431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.357628, 31.036440, 29.739368>,  <44.998543, 31.198126, 29.669262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.357628, 31.036440, 29.739368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118805, 0.605171, 0.787181,
		-0.424254, -0.685843, 0.591294,
		0.897716, -0.404213, 0.175265,
		45.626942, 30.915176, 29.791948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.016663, 31.034527, 30.326624>,  <44.998543, 31.198126, 29.669262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.016663, 31.034527, 30.326624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.409279, 31.013132, 30.253172>,  <45.644848, 31.000296, 30.209101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.409279, 31.013132, 30.253172>,  <45.016663, 31.034527, 30.326624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.409279, 31.013132, 30.253172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187236, 0.464592, 0.865504,
		0.039021, -0.883908, 0.466030,
		0.981539, -0.053485, -0.183628,
		45.703739, 30.997087, 30.198084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.400631, 30.801308, 30.994516>,  <45.016663, 31.034527, 30.326624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.400631, 30.801308, 30.994516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.676262, 30.989969, 30.774439>,  <45.841640, 31.103167, 30.642391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.676262, 30.989969, 30.774439>,  <45.400631, 30.801308, 30.994516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.676262, 30.989969, 30.774439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328298, 0.473673, 0.817224,
		0.646061, -0.743758, 0.171553,
		0.689077, 0.471656, -0.550195,
		45.882984, 31.131466, 30.609381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.082783, 30.675224, 31.361378>,  <45.400631, 30.801308, 30.994516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.082783, 30.675224, 31.361378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.078213, 31.001774, 31.130415>,  <46.075470, 31.197704, 30.991837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.078213, 31.001774, 31.130415>,  <46.082783, 30.675224, 31.361378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.078213, 31.001774, 31.130415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264617, 0.559329, 0.785576,
		0.964286, -0.143815, -0.222419,
		-0.011428, 0.816375, -0.577409,
		46.074783, 31.246687, 30.957191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.487850, 31.126760, 31.832563>,  <46.082783, 30.675224, 31.361378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.487850, 31.126760, 31.832563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.350281, 31.359802, 31.538002>,  <46.267738, 31.499628, 31.361265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.350281, 31.359802, 31.538002>,  <46.487850, 31.126760, 31.832563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.350281, 31.359802, 31.538002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007796, 0.782444, 0.622673,
		0.938966, 0.219891, -0.264556,
		-0.343921, 0.582606, -0.736402,
		46.247105, 31.534584, 31.317081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.823494, 31.792137, 32.004063>,  <46.487850, 31.126760, 31.832563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.823494, 31.792137, 32.004063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.512474, 31.861952, 31.762419>,  <46.325863, 31.903841, 31.617434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.512474, 31.861952, 31.762419>,  <46.823494, 31.792137, 32.004063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.512474, 31.861952, 31.762419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279768, 0.764363, 0.580930,
		0.563152, 0.620715, -0.545503,
		-0.777554, 0.174538, -0.604108,
		46.279209, 31.914312, 31.581186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.779362, 32.535954, 31.876978>,  <46.823494, 31.792137, 32.004063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.779362, 32.535954, 31.876978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.413029, 32.391151, 31.807465>,  <46.193230, 32.304272, 31.765757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.413029, 32.391151, 31.807465>,  <46.779362, 32.535954, 31.876978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.413029, 32.391151, 31.807465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394824, 0.732846, 0.554121,
		-0.073237, 0.576097, -0.814093,
		-0.915833, -0.362006, -0.173785,
		46.138279, 32.282551, 31.755329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.391571, 33.087715, 31.590012>,  <46.779362, 32.535954, 31.876978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.391571, 33.087715, 31.590012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.158161, 32.818073, 31.771152>,  <46.018116, 32.656288, 31.879837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.158161, 32.818073, 31.771152>,  <46.391571, 33.087715, 31.590012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.158161, 32.818073, 31.771152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498157, 0.737525, 0.455956,
		-0.641354, 0.040471, -0.766177,
		-0.583528, -0.674106, 0.452853,
		45.983101, 32.615841, 31.907009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.731831, 33.461037, 31.681879>,  <46.391571, 33.087715, 31.590012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.731831, 33.461037, 31.681879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.657539, 33.159286, 31.933727>,  <45.612965, 32.978237, 32.084835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.657539, 33.159286, 31.933727>,  <45.731831, 33.461037, 31.681879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.657539, 33.159286, 31.933727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576983, 0.602393, 0.551556,
		-0.795359, -0.260839, -0.547144,
		-0.185728, -0.754378, 0.629618,
		45.601822, 32.932972, 32.122612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.018074, 33.535976, 31.934982>,  <45.731831, 33.461037, 31.681879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.018074, 33.535976, 31.934982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.169193, 33.297371, 32.218231>,  <45.259865, 33.154209, 32.388180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.169193, 33.297371, 32.218231>,  <45.018074, 33.535976, 31.934982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.169193, 33.297371, 32.218231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527391, 0.489965, 0.694113,
		-0.761004, -0.635693, -0.129488,
		0.377798, -0.596514, 0.708125,
		45.282532, 33.118416, 32.430668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.481731, 33.231503, 32.326427>,  <45.018074, 33.535976, 31.934982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.481731, 33.231503, 32.326427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.792885, 33.222900, 32.577641>,  <44.979576, 33.217739, 32.728371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.792885, 33.222900, 32.577641>,  <44.481731, 33.231503, 32.326427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.792885, 33.222900, 32.577641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560145, 0.429273, 0.708493,
		-0.284834, -0.902919, 0.321881,
		0.777886, -0.021503, 0.628037,
		45.026249, 33.216450, 32.766052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.211418, 32.964809, 32.952309>,  <44.481731, 33.231503, 32.326427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.211418, 32.964809, 32.952309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.558006, 33.140011, 33.048122>,  <44.765961, 33.245132, 33.105610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.558006, 33.140011, 33.048122>,  <44.211418, 32.964809, 32.952309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.558006, 33.140011, 33.048122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465602, 0.535918, 0.704277,
		0.180105, -0.721765, 0.668294,
		0.866474, 0.438003, 0.239534,
		44.817947, 33.271412, 33.119984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.233990, 32.839321, 33.572159>,  <44.211418, 32.964809, 32.952309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.233990, 32.839321, 33.572159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.475739, 33.154652, 33.526058>,  <44.620789, 33.343849, 33.498398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.475739, 33.154652, 33.526058>,  <44.233990, 32.839321, 33.572159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.475739, 33.154652, 33.526058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468020, 0.468369, 0.749392,
		0.644741, -0.398972, 0.652020,
		0.604372, 0.788322, -0.115249,
		44.657051, 33.391148, 33.491482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.417099, 32.977783, 34.119362>,  <44.233990, 32.839321, 33.572159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.417099, 32.977783, 34.119362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.478214, 33.342030, 33.965775>,  <44.514881, 33.560577, 33.873623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.478214, 33.342030, 33.965775>,  <44.417099, 32.977783, 34.119362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.478214, 33.342030, 33.965775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481865, 0.407855, 0.775539,
		0.862823, 0.066529, 0.501110,
		0.152784, 0.910619, -0.383965,
		44.524048, 33.615215, 33.850586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.658115, 33.441269, 34.680134>,  <44.417099, 32.977783, 34.119362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.658115, 33.441269, 34.680134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.562080, 33.692772, 34.384289>,  <44.504459, 33.843674, 34.206783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.562080, 33.692772, 34.384289>,  <44.658115, 33.441269, 34.680134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.562080, 33.692772, 34.384289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336593, 0.660710, 0.670945,
		0.910529, 0.410032, 0.053008,
		-0.240086, 0.628757, -0.739610,
		44.490055, 33.881401, 34.162407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.939739, 33.972927, 34.918118>,  <44.658115, 33.441269, 34.680134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.939739, 33.972927, 34.918118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.649361, 34.078945, 34.664268>,  <44.475132, 34.142555, 34.511959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.649361, 34.078945, 34.664268>,  <44.939739, 33.972927, 34.918118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.649361, 34.078945, 34.664268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468408, 0.485113, 0.738417,
		0.503579, 0.833316, -0.228017,
		-0.725949, 0.265046, -0.634625,
		44.431576, 34.158459, 34.473881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.881351, 34.711948, 34.960007>,  <44.939739, 33.972927, 34.918118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.881351, 34.711948, 34.960007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.528755, 34.580997, 34.823891>,  <44.317196, 34.502426, 34.742222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.528755, 34.580997, 34.823891>,  <44.881351, 34.711948, 34.960007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.528755, 34.580997, 34.823891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469712, 0.534118, 0.702915,
		-0.048362, 0.779452, -0.624592,
		-0.881494, -0.327373, -0.340287,
		44.264305, 34.482784, 34.721806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.466438, 34.997952, 35.332115>,  <44.881351, 34.711948, 34.960007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.466438, 34.997952, 35.332115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.670601, 35.056789, 35.671021>,  <45.793098, 35.092091, 35.874363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.670601, 35.056789, 35.671021>,  <45.466438, 34.997952, 35.332115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.670601, 35.056789, 35.671021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230938, -0.925622, 0.299820,
		0.828345, -0.348695, -0.438471,
		0.510404, 0.147095, 0.847261,
		45.823723, 35.100918, 35.925198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.164185, 34.612221, 35.536652>,  <45.466438, 34.997952, 35.332115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.164185, 34.612221, 35.536652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.870930, 34.657497, 35.804890>,  <45.694977, 34.684662, 35.965832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.870930, 34.657497, 35.804890>,  <46.164185, 34.612221, 35.536652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.870930, 34.657497, 35.804890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198429, -0.978749, -0.051728,
		0.650491, -0.170989, 0.740016,
		-0.733135, 0.113192, 0.670597,
		45.650990, 34.691456, 36.006069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.822880, 34.231556, 35.424728>,  <46.164185, 34.612221, 35.536652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.822880, 34.231556, 35.424728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.696724, 33.928226, 35.652931>,  <46.621033, 33.746231, 35.789852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.696724, 33.928226, 35.652931>,  <46.822880, 34.231556, 35.424728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.696724, 33.928226, 35.652931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947249, -0.215463, 0.237264,
		-0.056999, 0.615244, 0.786274,
		-0.315388, -0.758321, 0.570508,
		46.602108, 33.700729, 35.824085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.418358, 34.759182, 35.283386>,  <46.822880, 34.231556, 35.424728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.418358, 34.759182, 35.283386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.543827, 34.946331, 34.952881>,  <47.619106, 35.058620, 34.754578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.543827, 34.946331, 34.952881>,  <47.418358, 34.759182, 35.283386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.543827, 34.946331, 34.952881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675476, -0.501620, -0.540471,
		-0.667341, 0.727649, 0.158694,
		0.313669, 0.467872, -0.826261,
		47.637928, 35.086693, 34.705002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.460461, 36.110912, 46.981941> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.072571, 36.034405, 47.042679>,  <37.839836, 35.988499, 47.079121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.072571, 36.034405, 47.042679>,  <38.460461, 36.110912, 46.981941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.072571, 36.034405, 47.042679> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136081, -0.093075, -0.986316,
		0.202786, -0.977114, 0.064229,
		-0.969721, -0.191270, 0.151841,
		37.781654, 35.977024, 47.088230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.333851, 35.452946, 46.691528>,  <38.460461, 36.110912, 46.981941>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.333851, 35.452946, 46.691528> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.968437, 35.615646, 46.692928>,  <37.749187, 35.713264, 46.693768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.968437, 35.615646, 46.692928>,  <38.333851, 35.452946, 46.691528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.968437, 35.615646, 46.692928> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099873, -0.215951, -0.971283,
		-0.394314, -0.887648, 0.237902,
		-0.913532, 0.406751, 0.003499,
		37.694378, 35.737671, 46.693977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.842274, 34.982693, 46.353905>,  <38.333851, 35.452946, 46.691528>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.842274, 34.982693, 46.353905> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.692005, 35.353134, 46.340000>,  <37.601845, 35.575397, 46.331657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.692005, 35.353134, 46.340000>,  <37.842274, 34.982693, 46.353905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.692005, 35.353134, 46.340000> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038500, -0.053075, -0.997848,
		-0.925954, -0.373522, 0.055594,
		-0.375668, 0.926102, -0.034765,
		37.579304, 35.630966, 46.329571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.428455, 34.957531, 45.799534>,  <37.842274, 34.982693, 46.353905>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.428455, 34.957531, 45.799534> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.407539, 35.352745, 45.857571>,  <37.394989, 35.589874, 45.892391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.407539, 35.352745, 45.857571>,  <37.428455, 34.957531, 45.799534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.407539, 35.352745, 45.857571> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224931, 0.129902, -0.965677,
		-0.972971, -0.083128, 0.215447,
		-0.052287, 0.988036, 0.145089,
		37.391853, 35.649155, 45.901096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.805836, 35.122421, 45.618195>,  <37.428455, 34.957531, 45.799534>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.805836, 35.122421, 45.618195> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.067730, 35.420876, 45.569866>,  <37.224869, 35.599949, 45.540871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.067730, 35.420876, 45.569866>,  <36.805836, 35.122421, 45.618195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.067730, 35.420876, 45.569866> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259091, 0.071384, -0.963211,
		-0.710064, 0.661954, 0.240056,
		0.654737, 0.746138, -0.120819,
		37.264153, 35.644718, 45.533619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.409016, 35.595543, 45.269772>,  <36.805836, 35.122421, 45.618195>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.409016, 35.595543, 45.269772> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.786102, 35.699181, 45.185719>,  <37.012356, 35.761364, 45.135284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.786102, 35.699181, 45.185719>,  <36.409016, 35.595543, 45.269772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.786102, 35.699181, 45.185719> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273845, 0.241303, -0.931011,
		-0.190515, 0.935223, 0.298433,
		0.942716, 0.259096, -0.210134,
		37.068916, 35.776909, 45.122677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.335388, 36.153278, 44.923038>,  <36.409016, 35.595543, 45.269772>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.335388, 36.153278, 44.923038> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.708679, 36.035847, 44.840191>,  <36.932655, 35.965389, 44.790482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.708679, 36.035847, 44.840191>,  <36.335388, 36.153278, 44.923038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.708679, 36.035847, 44.840191> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180066, 0.116661, -0.976712,
		0.310901, 0.948790, 0.056009,
		0.933229, -0.293576, -0.207116,
		36.988647, 35.947773, 44.778057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.636620, 36.673279, 44.367565>,  <36.335388, 36.153278, 44.923038>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.636620, 36.673279, 44.367565> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.863350, 36.343742, 44.367538>,  <36.999390, 36.146023, 44.367523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.863350, 36.343742, 44.367538>,  <36.636620, 36.673279, 44.367565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.863350, 36.343742, 44.367538> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126208, -0.086760, -0.988203,
		0.814113, 0.560147, -0.153152,
		0.566827, -0.823837, -0.000062,
		37.033398, 36.096592, 44.367519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.040504, 36.778759, 43.860409>,  <36.636620, 36.673279, 44.367565>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.040504, 36.778759, 43.860409> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.052990, 36.381371, 43.904285>,  <37.060482, 36.142937, 43.930611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.052990, 36.381371, 43.904285>,  <37.040504, 36.778759, 43.860409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.052990, 36.381371, 43.904285> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016698, -0.109208, -0.993879,
		0.999373, 0.032859, 0.013180,
		0.031218, -0.993475, 0.109689,
		37.062355, 36.083328, 43.937191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.460155, 36.546833, 43.293545>,  <37.040504, 36.778759, 43.860409>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.460155, 36.546833, 43.293545> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.300030, 36.200367, 43.413212>,  <37.203953, 35.992485, 43.485012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.300030, 36.200367, 43.413212>,  <37.460155, 36.546833, 43.293545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.300030, 36.200367, 43.413212> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062118, -0.351364, -0.934176,
		0.914269, -0.355382, 0.194461,
		-0.400315, -0.866168, 0.299166,
		37.179935, 35.940517, 43.502960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.843185, 36.020660, 42.939007>,  <37.460155, 36.546833, 43.293545>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.843185, 36.020660, 42.939007> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.475693, 35.902847, 43.044220>,  <37.255199, 35.832157, 43.107346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.475693, 35.902847, 43.044220>,  <37.843185, 36.020660, 42.939007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.475693, 35.902847, 43.044220> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172145, -0.300740, -0.938041,
		0.355391, -0.907086, 0.225595,
		-0.918729, -0.294536, 0.263031,
		37.200073, 35.814487, 43.123131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.765148, 35.304878, 42.695610>,  <37.843185, 36.020660, 42.939007>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.765148, 35.304878, 42.695610> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.388386, 35.416561, 42.770290>,  <37.162327, 35.483570, 42.815098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.388386, 35.416561, 42.770290>,  <37.765148, 35.304878, 42.695610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.388386, 35.416561, 42.770290> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280126, -0.346325, -0.895315,
		-0.185317, -0.895603, 0.404418,
		-0.941907, 0.279205, 0.186701,
		37.105812, 35.500324, 42.826302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.340801, 34.796650, 42.454479>,  <37.765148, 35.304878, 42.695610>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.340801, 34.796650, 42.454479> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.088898, 35.107197, 42.444214>,  <36.937756, 35.293526, 42.438053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.088898, 35.107197, 42.444214>,  <37.340801, 34.796650, 42.454479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.088898, 35.107197, 42.444214> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327297, -0.295169, -0.897637,
		-0.704471, -0.556895, 0.439987,
		-0.629760, 0.776366, -0.025668,
		36.899971, 35.340107, 42.436512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.777779, 34.496555, 42.071918>,  <37.340801, 34.796650, 42.454479>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.777779, 34.496555, 42.071918> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.804001, 34.894958, 42.047665>,  <36.819736, 35.133999, 42.033112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.804001, 34.894958, 42.047665>,  <36.777779, 34.496555, 42.071918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.804001, 34.894958, 42.047665> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371248, -0.032060, -0.927980,
		-0.926216, 0.083350, 0.367663,
		0.065560, 0.996004, -0.060638,
		36.823669, 35.193760, 42.029472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.180359, 34.682377, 41.827099>,  <36.777779, 34.496555, 42.071918>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.180359, 34.682377, 41.827099> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.412075, 34.997715, 41.744221>,  <36.551105, 35.186920, 41.694496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.412075, 34.997715, 41.744221>,  <36.180359, 34.682377, 41.827099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.412075, 34.997715, 41.744221> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326229, -0.008712, -0.945251,
		-0.746993, 0.615166, 0.252135,
		0.579289, 0.788350, -0.207193,
		36.585861, 35.234219, 41.682064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.809208, 35.039188, 41.329414>,  <36.180359, 34.682377, 41.827099>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.809208, 35.039188, 41.329414> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.168095, 35.212124, 41.293446>,  <36.383427, 35.315884, 41.271862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.168095, 35.212124, 41.293446>,  <35.809208, 35.039188, 41.329414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.168095, 35.212124, 41.293446> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094151, -0.011670, -0.995489,
		-0.431437, 0.901636, 0.030235,
		0.897217, 0.432337, -0.089925,
		36.437260, 35.341824, 41.266468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.788734, 35.543842, 40.773277>,  <35.809208, 35.039188, 41.329414>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.788734, 35.543842, 40.773277> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.170456, 35.432869, 40.817684>,  <36.399490, 35.366283, 40.844330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.170456, 35.432869, 40.817684>,  <35.788734, 35.543842, 40.773277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.170456, 35.432869, 40.817684> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080986, -0.117491, -0.989766,
		0.287642, 0.953533, -0.089654,
		0.954308, -0.277438, 0.111019,
		36.456749, 35.349636, 40.850990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.164684, 35.979443, 40.232365>,  <35.788734, 35.543842, 40.773277>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.164684, 35.979443, 40.232365> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.410904, 35.681492, 40.335327>,  <36.558636, 35.502720, 40.397106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.410904, 35.681492, 40.335327>,  <36.164684, 35.979443, 40.232365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.410904, 35.681492, 40.335327> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168038, -0.195063, -0.966289,
		0.769979, 0.638049, 0.005098,
		0.615545, -0.744879, 0.257411,
		36.595566, 35.458027, 40.412552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.595554, 36.016560, 39.713390>,  <36.164684, 35.979443, 40.232365>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.595554, 36.016560, 39.713390> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.670898, 35.657944, 39.873760>,  <36.716106, 35.442776, 39.969982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.670898, 35.657944, 39.873760>,  <36.595554, 36.016560, 39.713390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.670898, 35.657944, 39.873760> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166717, -0.373120, -0.912681,
		0.967846, 0.238754, 0.079187,
		0.188360, -0.896537, 0.400927,
		36.727406, 35.388981, 39.994038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.252697, 35.730732, 39.319576>,  <36.595554, 36.016560, 39.713390>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.252697, 35.730732, 39.319576> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.080139, 35.405811, 39.476585>,  <36.976604, 35.210861, 39.570789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.080139, 35.405811, 39.476585>,  <37.252697, 35.730732, 39.319576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.080139, 35.405811, 39.476585> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075069, -0.465900, -0.881647,
		0.899037, -0.350868, 0.261963,
		-0.431390, -0.812299, 0.392521,
		36.950722, 35.162121, 39.594341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.590019, 35.040695, 39.065739>,  <37.252697, 35.730732, 39.319576>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.590019, 35.040695, 39.065739> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.233700, 34.920731, 39.202286>,  <37.019909, 34.848751, 39.284214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.233700, 34.920731, 39.202286>,  <37.590019, 35.040695, 39.065739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.233700, 34.920731, 39.202286> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056284, -0.672639, -0.737827,
		0.450906, -0.676467, 0.582303,
		-0.890795, -0.299916, 0.341371,
		36.966461, 34.830757, 39.304695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.604858, 34.395287, 38.883339>,  <37.590019, 35.040695, 39.065739>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.604858, 34.395287, 38.883339> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.216152, 34.406952, 38.976994>,  <36.982929, 34.413952, 39.033188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.216152, 34.406952, 38.976994>,  <37.604858, 34.395287, 38.883339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.216152, 34.406952, 38.976994> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175596, -0.752209, -0.635096,
		0.157601, -0.658279, 0.736092,
		-0.971765, 0.029163, 0.234140,
		36.924622, 34.415699, 39.047234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.342857, 34.071602, 38.849476>,  <37.604858, 34.395287, 38.883339>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.342857, 34.071602, 38.849476> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.656151, 33.840374, 38.757931>,  <38.844128, 33.701637, 38.703003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.656151, 33.840374, 38.757931>,  <38.342857, 34.071602, 38.849476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.656151, 33.840374, 38.757931> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292183, 0.017314, 0.956206,
		-0.548793, -0.815802, 0.182463,
		0.783234, -0.578071, -0.228862,
		38.891121, 33.666954, 38.689274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.389557, 33.519264, 39.388885>,  <38.342857, 34.071602, 38.849476>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.389557, 33.519264, 39.388885> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.761066, 33.561497, 39.246773>,  <38.983974, 33.586838, 39.161503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.761066, 33.561497, 39.246773>,  <38.389557, 33.519264, 39.388885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.761066, 33.561497, 39.246773> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345048, 0.103711, 0.932838,
		0.135344, -0.988987, 0.059892,
		0.928776, 0.105588, -0.355284,
		39.039700, 33.593170, 39.140186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.688782, 33.197918, 39.896564>,  <38.389557, 33.519264, 39.388885>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.688782, 33.197918, 39.896564> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.962456, 33.401310, 39.687435>,  <39.126659, 33.523346, 39.561958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.962456, 33.401310, 39.687435>,  <38.688782, 33.197918, 39.896564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.962456, 33.401310, 39.687435> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542424, 0.124418, 0.830841,
		0.487512, -0.852039, -0.190686,
		0.684184, 0.508478, -0.522822,
		39.167709, 33.553852, 39.530590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.201859, 32.912708, 40.159534>,  <38.688782, 33.197918, 39.896564>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.201859, 32.912708, 40.159534> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.342102, 33.242878, 39.982555>,  <39.426247, 33.440979, 39.876369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.342102, 33.242878, 39.982555>,  <39.201859, 32.912708, 40.159534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.342102, 33.242878, 39.982555> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414567, 0.286837, 0.863631,
		0.839768, -0.486216, -0.241625,
		0.350604, 0.825420, -0.442446,
		39.447285, 33.490505, 39.849823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.933262, 32.990700, 40.357853>,  <39.201859, 32.912708, 40.159534>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.933262, 32.990700, 40.357853> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.779144, 33.347153, 40.261993>,  <39.686676, 33.561024, 40.204479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.779144, 33.347153, 40.261993>,  <39.933262, 32.990700, 40.357853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.779144, 33.347153, 40.261993> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360006, 0.384273, 0.850135,
		0.849675, 0.241274, -0.468870,
		-0.385290, 0.891135, -0.239647,
		39.663559, 33.614494, 40.190098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.503990, 33.439610, 40.474022>,  <39.933262, 32.990700, 40.357853>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.503990, 33.439610, 40.474022> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.189152, 33.686272, 40.479954>,  <40.000248, 33.834267, 40.483513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.189152, 33.686272, 40.479954>,  <40.503990, 33.439610, 40.474022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.189152, 33.686272, 40.479954> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417878, 0.515393, 0.748163,
		0.453714, 0.595072, -0.663350,
		-0.787096, 0.616652, 0.014826,
		39.953022, 33.871265, 40.484402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.750332, 34.210087, 40.620064>,  <40.503990, 33.439610, 40.474022>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.750332, 34.210087, 40.620064> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.363575, 34.188305, 40.719780>,  <40.131519, 34.175236, 40.779610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.363575, 34.188305, 40.719780>,  <40.750332, 34.210087, 40.620064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.363575, 34.188305, 40.719780> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130232, 0.734822, 0.665639,
		-0.219434, 0.676070, -0.703405,
		-0.966896, -0.054458, 0.249291,
		40.073505, 34.171967, 40.794567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.608192, 34.778481, 40.987213>,  <40.750332, 34.210087, 40.620064>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.608192, 34.778481, 40.987213> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.288380, 34.552753, 41.069469>,  <40.096493, 34.417316, 41.118824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.288380, 34.552753, 41.069469>,  <40.608192, 34.778481, 40.987213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.288380, 34.552753, 41.069469> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039421, 0.390952, 0.919566,
		-0.599324, 0.727119, -0.334826,
		-0.799535, -0.564318, 0.205643,
		40.048519, 34.383457, 41.131161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.142632, 35.229126, 41.327427>,  <40.608192, 34.778481, 40.987213>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.142632, 35.229126, 41.327427> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.056507, 34.855335, 41.440842>,  <40.004833, 34.631062, 41.508888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.056507, 34.855335, 41.440842>,  <40.142632, 35.229126, 41.327427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.056507, 34.855335, 41.440842> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041197, 0.298778, 0.953433,
		-0.975675, 0.193608, -0.102829,
		-0.215315, -0.934477, 0.283534,
		39.991913, 34.574993, 41.525902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.615616, 35.358852, 41.839836>,  <40.142632, 35.229126, 41.327427>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.615616, 35.358852, 41.839836> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.749256, 34.986553, 41.899269>,  <39.829441, 34.763172, 41.934929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.749256, 34.986553, 41.899269>,  <39.615616, 35.358852, 41.839836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.749256, 34.986553, 41.899269> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016254, 0.151927, 0.988258,
		-0.942397, -0.332593, 0.035631,
		0.334101, -0.930753, 0.148582,
		39.849487, 34.707329, 41.943844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.285545, 35.209145, 42.409737>,  <39.615616, 35.358852, 41.839836>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.285545, 35.209145, 42.409737> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.563572, 34.922382, 42.388100>,  <39.730389, 34.750324, 42.375118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.563572, 34.922382, 42.388100>,  <39.285545, 35.209145, 42.409737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.563572, 34.922382, 42.388100> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089386, -0.160829, 0.982926,
		-0.713368, -0.678363, -0.175868,
		0.695065, -0.716909, -0.054094,
		39.772091, 34.707310, 42.371872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.053482, 34.595028, 42.803135>,  <39.285545, 35.209145, 42.409737>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.053482, 34.595028, 42.803135> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.452389, 34.603313, 42.774765>,  <39.691734, 34.608284, 42.757744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.452389, 34.603313, 42.774765>,  <39.053482, 34.595028, 42.803135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.452389, 34.603313, 42.774765> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072154, -0.066405, 0.995180,
		0.015902, -0.997578, -0.067718,
		0.997267, 0.020711, -0.070923,
		39.751568, 34.609528, 42.753487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.252201, 34.083477, 43.216694>,  <39.053482, 34.595028, 42.803135>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.252201, 34.083477, 43.216694> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.570290, 34.324890, 43.193455>,  <39.761143, 34.469738, 43.179512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.570290, 34.324890, 43.193455>,  <39.252201, 34.083477, 43.216694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.570290, 34.324890, 43.193455> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131715, -0.078427, 0.988180,
		0.591840, -0.793474, -0.141860,
		0.795221, 0.603530, -0.058096,
		39.808857, 34.505951, 43.176025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.790836, 33.744709, 43.635666>,  <39.252201, 34.083477, 43.216694>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.790836, 33.744709, 43.635666> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.859390, 34.138538, 43.621578>,  <39.900524, 34.374836, 43.613125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.859390, 34.138538, 43.621578>,  <39.790836, 33.744709, 43.635666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.859390, 34.138538, 43.621578> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339493, -0.025466, 0.940264,
		0.924863, -0.173104, -0.338621,
		0.171386, 0.984574, -0.035215,
		39.910805, 34.433910, 43.611015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.532589, 33.844673, 43.791351>,  <39.790836, 33.744709, 43.635666>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.532589, 33.844673, 43.791351> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.310337, 34.167324, 43.871986>,  <40.176987, 34.360912, 43.920368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.310337, 34.167324, 43.871986>,  <40.532589, 33.844673, 43.791351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.310337, 34.167324, 43.871986> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329473, -0.009004, 0.944122,
		0.763366, 0.590998, -0.260757,
		-0.555626, 0.806623, 0.201591,
		40.143650, 34.409309, 43.932465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.916668, 34.072174, 44.370457>,  <40.532589, 33.844673, 43.791351>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.916668, 34.072174, 44.370457> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.573971, 34.278374, 44.376701>,  <40.368351, 34.402096, 44.380447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.573971, 34.278374, 44.376701>,  <40.916668, 34.072174, 44.370457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.573971, 34.278374, 44.376701> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051774, 0.055846, 0.997096,
		0.513134, 0.855066, -0.074535,
		-0.856746, 0.515503, 0.015614,
		40.316948, 34.433025, 44.381386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.965416, 34.572826, 44.817257>,  <40.916668, 34.072174, 44.370457>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.965416, 34.572826, 44.817257> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.567326, 34.537781, 44.800068>,  <40.328472, 34.516754, 44.789757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.567326, 34.537781, 44.800068>,  <40.965416, 34.572826, 44.817257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.567326, 34.537781, 44.800068> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051040, 0.092083, 0.994442,
		-0.083168, 0.991890, -0.096115,
		-0.995228, -0.087611, -0.042968,
		40.268757, 34.511497, 44.787178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.759838, 35.004524, 45.379112>,  <40.965416, 34.572826, 44.817257>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.759838, 35.004524, 45.379112> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.424011, 34.796242, 45.317158>,  <40.222515, 34.671272, 45.279984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.424011, 34.796242, 45.317158>,  <40.759838, 35.004524, 45.379112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.424011, 34.796242, 45.317158> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148135, -0.054871, 0.987444,
		-0.522671, 0.851968, -0.031067,
		-0.839566, -0.520710, -0.154885,
		40.172142, 34.640030, 45.270691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.197598, 35.392719, 45.755062> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.064327, 35.020081, 45.696941>,  <39.984364, 34.796497, 45.662067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.064327, 35.020081, 45.696941>,  <40.197598, 35.392719, 45.755062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.064327, 35.020081, 45.696941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206611, -0.078224, 0.975291,
		-0.919949, 0.354965, -0.166417,
		-0.333176, -0.931601, -0.145302,
		39.964375, 34.740601, 45.653351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.584084, 35.360893, 46.245716>,  <40.197598, 35.392719, 45.755062>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.584084, 35.360893, 46.245716> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.666672, 34.981716, 46.148739>,  <39.716225, 34.754211, 46.090553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.666672, 34.981716, 46.148739>,  <39.584084, 35.360893, 46.245716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.666672, 34.981716, 46.148739> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205910, -0.284328, 0.936354,
		-0.956540, -0.143412, -0.253896,
		0.206475, -0.947940, -0.242441,
		39.728615, 34.697334, 46.076008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.980133, 34.980331, 46.294594>,  <39.584084, 35.360893, 46.245716>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.980133, 34.980331, 46.294594> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.288296, 34.727608, 46.328743>,  <39.473194, 34.575974, 46.349232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.288296, 34.727608, 46.328743>,  <38.980133, 34.980331, 46.294594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.288296, 34.727608, 46.328743> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159959, -0.061919, 0.985180,
		-0.617162, -0.772644, -0.148767,
		0.770405, -0.631812, 0.085377,
		39.519417, 34.538063, 46.354355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.727077, 34.577320, 46.758709>,  <38.980133, 34.980331, 46.294594>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.727077, 34.577320, 46.758709> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.121399, 34.510494, 46.765514>,  <39.357990, 34.470398, 46.769596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.121399, 34.510494, 46.765514>,  <38.727077, 34.577320, 46.758709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.121399, 34.510494, 46.765514> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034565, -0.102719, 0.994110,
		-0.164339, -0.980580, -0.107035,
		0.985798, -0.167071, 0.017013,
		39.417137, 34.460373, 46.770618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.856052, 33.982258, 47.147118>,  <38.727077, 34.577320, 46.758709>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.856052, 33.982258, 47.147118> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.207165, 34.173828, 47.151802>,  <39.417831, 34.288769, 47.154613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.207165, 34.173828, 47.151802>,  <38.856052, 33.982258, 47.147118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.207165, 34.173828, 47.151802> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079343, -0.169449, 0.982340,
		0.472454, -0.861346, -0.186738,
		0.877777, 0.478926, 0.011715,
		39.470497, 34.317505, 47.155315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.268906, 33.494301, 47.537502>,  <38.856052, 33.982258, 47.147118>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.268906, 33.494301, 47.537502> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.442730, 33.854546, 47.540730>,  <39.547024, 34.070690, 47.542667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.442730, 33.854546, 47.540730>,  <39.268906, 33.494301, 47.537502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.442730, 33.854546, 47.540730> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142039, -0.077377, 0.986832,
		0.889374, -0.427688, -0.161546,
		0.434556, 0.900609, 0.008069,
		39.573097, 34.124729, 47.543152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.742672, 33.487164, 48.080475>,  <39.268906, 33.494301, 47.537502>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.742672, 33.487164, 48.080475> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.743069, 33.881699, 48.014580>,  <39.743305, 34.118420, 47.975044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.743069, 33.881699, 48.014580>,  <39.742672, 33.487164, 48.080475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.743069, 33.881699, 48.014580> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210504, 0.160838, 0.964271,
		0.977592, -0.035630, -0.207469,
		0.000988, 0.986337, -0.164734,
		39.743366, 34.177601, 47.965160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.384060, 33.801704, 48.329742>,  <39.742672, 33.487164, 48.080475>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.384060, 33.801704, 48.329742> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.118961, 34.101177, 48.336098>,  <39.959904, 34.280861, 48.339912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.118961, 34.101177, 48.336098>,  <40.384060, 33.801704, 48.329742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.118961, 34.101177, 48.336098> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193976, 0.151143, 0.969293,
		0.723287, 0.645474, -0.245395,
		-0.662743, 0.748678, 0.015887,
		39.920139, 34.325779, 48.340862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.713047, 34.363125, 48.714142>,  <40.384060, 33.801704, 48.329742>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.713047, 34.363125, 48.714142> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.315845, 34.366333, 48.761265>,  <40.077526, 34.368259, 48.789539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.315845, 34.366333, 48.761265>,  <40.713047, 34.363125, 48.714142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.315845, 34.366333, 48.761265> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117528, -0.028865, 0.992650,
		0.011362, 0.999551, 0.027721,
		-0.993005, 0.008021, 0.117803,
		40.017944, 34.368740, 48.796604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.667427, 34.845310, 49.249783>,  <40.713047, 34.363125, 48.714142>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.667427, 34.845310, 49.249783> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.301048, 34.687454, 49.278927>,  <40.081223, 34.592739, 49.296413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.301048, 34.687454, 49.278927>,  <40.667427, 34.845310, 49.249783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.301048, 34.687454, 49.278927> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040599, 0.089495, 0.995160,
		-0.399250, 0.914467, -0.065950,
		-0.915943, -0.394640, 0.072857,
		40.026264, 34.569061, 49.300785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.414730, 35.237617, 49.812531>,  <40.667427, 34.845310, 49.249783>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.414730, 35.237617, 49.812531> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.190586, 34.909344, 49.767841>,  <40.056099, 34.712379, 49.741028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.190586, 34.909344, 49.767841>,  <40.414730, 35.237617, 49.812531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.190586, 34.909344, 49.767841> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005160, -0.131424, 0.991313,
		-0.828236, 0.556064, 0.069409,
		-0.560355, -0.820683, -0.111719,
		40.022480, 34.663139, 49.734325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.882145, 35.379387, 50.271435>,  <40.414730, 35.237617, 49.812531>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.882145, 35.379387, 50.271435> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.904690, 34.982708, 50.225201>,  <39.918217, 34.744701, 50.197460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.904690, 34.982708, 50.225201>,  <39.882145, 35.379387, 50.271435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.904690, 34.982708, 50.225201> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053190, -0.112627, 0.992213,
		-0.996992, -0.062071, 0.046401,
		0.056361, -0.991697, -0.115590,
		39.921597, 34.685200, 50.190525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.466290, 35.069302, 50.894688>,  <39.882145, 35.379387, 50.271435>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.466290, 35.069302, 50.894688> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.674248, 34.754135, 50.762691>,  <39.799023, 34.565033, 50.683495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.674248, 34.754135, 50.762691>,  <39.466290, 35.069302, 50.894688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.674248, 34.754135, 50.762691> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091063, -0.332981, 0.938526,
		-0.849364, -0.517982, -0.101364,
		0.519892, -0.787920, -0.329992,
		39.830215, 34.517757, 50.663692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.165089, 34.447292, 51.274746>,  <39.466290, 35.069302, 50.894688>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.165089, 34.447292, 51.274746> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.531822, 34.355221, 51.144245>,  <39.751862, 34.299976, 51.065945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.531822, 34.355221, 51.144245>,  <39.165089, 34.447292, 51.274746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.531822, 34.355221, 51.144245> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198778, -0.445506, 0.872933,
		-0.346275, -0.865183, -0.362699,
		0.916832, -0.230178, -0.326248,
		39.806873, 34.286167, 51.046371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.199894, 33.770477, 51.357613>,  <39.165089, 34.447292, 51.274746>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.199894, 33.770477, 51.357613> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.569817, 33.921741, 51.374264>,  <39.791771, 34.012501, 51.384254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.569817, 33.921741, 51.374264>,  <39.199894, 33.770477, 51.357613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.569817, 33.921741, 51.374264> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182125, -0.536123, 0.824259,
		0.334022, -0.754695, -0.564681,
		0.924802, 0.378163, 0.041628,
		39.847256, 34.035191, 51.386753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.641403, 33.096008, 51.548180>,  <39.199894, 33.770477, 51.357613>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.641403, 33.096008, 51.548180> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.882450, 33.414146, 51.574360>,  <40.027077, 33.605030, 51.590069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.882450, 33.414146, 51.574360>,  <39.641403, 33.096008, 51.548180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.882450, 33.414146, 51.574360> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478433, -0.425700, 0.768037,
		0.638713, -0.431520, -0.637053,
		0.602617, 0.795343, 0.065447,
		40.063236, 33.652748, 51.593994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.424911, 32.896767, 51.588192>,  <39.641403, 33.096008, 51.548180>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.424911, 32.896767, 51.588192> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.357857, 33.254719, 51.753639>,  <40.317623, 33.469490, 51.852909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.357857, 33.254719, 51.753639>,  <40.424911, 32.896767, 51.588192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.357857, 33.254719, 51.753639> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547399, -0.264448, 0.793991,
		0.819911, 0.359516, -0.445527,
		-0.167634, 0.894883, 0.413622,
		40.307568, 33.523182, 51.877728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.987995, 32.998936, 51.969460>,  <40.424911, 32.896767, 51.588192>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.987995, 32.998936, 51.969460> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.763241, 33.279362, 52.145088>,  <40.628387, 33.447617, 52.250465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.763241, 33.279362, 52.145088>,  <40.987995, 32.998936, 51.969460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.763241, 33.279362, 52.145088> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367130, -0.264299, 0.891830,
		0.741281, 0.662305, -0.108877,
		-0.561888, 0.701069, 0.439072,
		40.594673, 33.489681, 52.276810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.414310, 33.354008, 52.475754>,  <40.987995, 32.998936, 51.969460>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.414310, 33.354008, 52.475754> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.037655, 33.443226, 52.576607>,  <40.811661, 33.496758, 52.637119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.037655, 33.443226, 52.576607>,  <41.414310, 33.354008, 52.475754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.037655, 33.443226, 52.576607> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210315, -0.195037, 0.957981,
		0.262851, 0.955097, 0.136743,
		-0.941635, 0.223047, 0.252137,
		40.755165, 33.510139, 52.652248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.424316, 33.843319, 53.003155>,  <41.414310, 33.354008, 52.475754>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.424316, 33.843319, 53.003155> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.060146, 33.691116, 53.068069>,  <40.841644, 33.599792, 53.107018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.060146, 33.691116, 53.068069>,  <41.424316, 33.843319, 53.003155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.060146, 33.691116, 53.068069> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249332, -0.191715, 0.949252,
		-0.330088, 0.904686, 0.269416,
		-0.910426, -0.380510, 0.162285,
		40.787018, 33.576962, 53.116756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.274834, 34.110607, 53.601303>,  <41.424316, 33.843319, 53.003155>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.274834, 34.110607, 53.601303> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.011475, 33.810757, 53.574261>,  <40.853458, 33.630848, 53.558037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.011475, 33.810757, 53.574261>,  <41.274834, 34.110607, 53.601303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.011475, 33.810757, 53.574261> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053568, -0.136261, 0.989224,
		-0.750759, 0.647684, 0.129870,
		-0.658401, -0.749625, -0.067603,
		40.813953, 33.585869, 53.553978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.693192, 34.333633, 53.913845>,  <41.274834, 34.110607, 53.601303>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.693192, 34.333633, 53.913845> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.717949, 33.934418, 53.909912>,  <40.732803, 33.694889, 53.907551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.717949, 33.934418, 53.909912>,  <40.693192, 34.333633, 53.913845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.717949, 33.934418, 53.909912> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151274, -0.019119, 0.988307,
		-0.986552, -0.059680, -0.152160,
		0.061891, -0.998035, -0.009834,
		40.736515, 33.635006, 53.906963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.063931, 34.067692, 54.185719>,  <40.693192, 34.333633, 53.913845>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.063931, 34.067692, 54.185719> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.369961, 33.813099, 54.224812>,  <40.553577, 33.660343, 54.248268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.369961, 33.813099, 54.224812>,  <40.063931, 34.067692, 54.185719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.369961, 33.813099, 54.224812> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082010, 0.054234, 0.995155,
		-0.638702, -0.769380, -0.010705,
		0.765072, -0.636485, 0.097736,
		40.599483, 33.622154, 54.254131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.972691, 33.478600, 54.612556>,  <40.063931, 34.067692, 54.185719>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.972691, 33.478600, 54.612556> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.359646, 33.574097, 54.646427>,  <40.591820, 33.631393, 54.666748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.359646, 33.574097, 54.646427>,  <39.972691, 33.478600, 54.612556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.359646, 33.574097, 54.646427> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023159, -0.249520, 0.968093,
		0.252252, -0.938479, -0.235853,
		0.967385, 0.238741, 0.084676,
		40.649860, 33.645718, 54.671829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.438568, 32.978298, 54.517380>,  <39.972691, 33.478600, 54.612556>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.438568, 32.978298, 54.517380> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.069809, 33.079792, 54.634499>,  <38.848553, 33.140690, 54.704769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.069809, 33.079792, 54.634499>,  <39.438568, 32.978298, 54.517380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.069809, 33.079792, 54.634499> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177115, 0.396121, -0.900954,
		-0.344589, -0.882442, -0.320241,
		-0.921895, 0.253739, 0.292792,
		38.793240, 33.155914, 54.722336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.969017, 32.820023, 53.992741>,  <39.438568, 32.978298, 54.517380>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.969017, 32.820023, 53.992741> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.748272, 33.065125, 54.219009>,  <38.615826, 33.212185, 54.354771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.748272, 33.065125, 54.219009>,  <38.969017, 32.820023, 53.992741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.748272, 33.065125, 54.219009> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276438, 0.505546, -0.817316,
		-0.786782, -0.607421, -0.109606,
		-0.551866, 0.612750, 0.565669,
		38.582710, 33.248951, 54.388710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.356628, 32.813110, 53.570122>,  <38.969017, 32.820023, 53.992741>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.356628, 32.813110, 53.570122> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.381653, 33.151352, 53.782173>,  <38.396667, 33.354298, 53.909405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.381653, 33.151352, 53.782173>,  <38.356628, 32.813110, 53.570122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.381653, 33.151352, 53.782173> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447774, 0.498490, -0.742297,
		-0.891955, -0.190943, 0.409825,
		0.062557, 0.845605, 0.530131,
		38.400421, 33.405033, 53.941212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.735500, 33.052204, 53.510582>,  <38.356628, 32.813110, 53.570122>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.735500, 33.052204, 53.510582> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.960724, 33.371544, 53.596001>,  <38.095856, 33.563148, 53.647251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.960724, 33.371544, 53.596001>,  <37.735500, 33.052204, 53.510582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.960724, 33.371544, 53.596001> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451500, 0.513593, -0.729637,
		-0.692182, 0.314412, 0.649638,
		0.563056, 0.798353, 0.213542,
		38.129642, 33.611050, 53.660065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.159187, 33.565277, 53.535564>,  <37.735500, 33.052204, 53.510582>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.159187, 33.565277, 53.535564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.497269, 33.775208, 53.495205>,  <37.700119, 33.901165, 53.470989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.497269, 33.775208, 53.495205>,  <37.159187, 33.565277, 53.535564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.497269, 33.775208, 53.495205> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422365, 0.540274, -0.727813,
		-0.327464, 0.657769, 0.678312,
		0.845207, 0.524828, -0.100898,
		37.750832, 33.932655, 53.464935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.984615, 34.251259, 53.468273>,  <37.159187, 33.565277, 53.535564>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.984615, 34.251259, 53.468273> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.340748, 34.220566, 53.288754>,  <37.554428, 34.202152, 53.181042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.340748, 34.220566, 53.288754>,  <36.984615, 34.251259, 53.468273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.340748, 34.220566, 53.288754> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340843, 0.541219, -0.768706,
		0.301879, 0.837374, 0.455713,
		0.890334, -0.076729, -0.448795,
		37.607849, 34.197548, 53.154114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.160469, 34.972305, 53.213326>,  <36.984615, 34.251259, 53.468273>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.160469, 34.972305, 53.213326> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.387238, 34.708401, 53.016014>,  <37.523296, 34.550060, 52.897629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.387238, 34.708401, 53.016014>,  <37.160469, 34.972305, 53.213326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.387238, 34.708401, 53.016014> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131366, 0.518736, -0.844781,
		0.813232, 0.543722, 0.207412,
		0.566918, -0.659757, -0.493280,
		37.557312, 34.510475, 52.868031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.481586, 35.339447, 52.767765>,  <37.160469, 34.972305, 53.213326>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.481586, 35.339447, 52.767765> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.534153, 34.975082, 52.611320>,  <37.565693, 34.756462, 52.517456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.534153, 34.975082, 52.611320>,  <37.481586, 35.339447, 52.767765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.534153, 34.975082, 52.611320> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174571, 0.367100, -0.913653,
		0.975835, 0.188345, -0.110776,
		0.131416, -0.910913, -0.391109,
		37.573578, 34.701809, 52.493988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.002747, 35.477642, 52.220089>,  <37.481586, 35.339447, 52.767765>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.002747, 35.477642, 52.220089> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.859112, 35.119778, 52.113781>,  <37.772930, 34.905060, 52.049995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.859112, 35.119778, 52.113781>,  <38.002747, 35.477642, 52.220089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.859112, 35.119778, 52.113781> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068202, 0.309155, -0.948563,
		0.930810, -0.322487, -0.172031,
		-0.359083, -0.894665, -0.265770,
		37.751389, 34.851379, 52.034050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.421593, 35.154572, 51.694935>,  <38.002747, 35.477642, 52.220089>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.421593, 35.154572, 51.694935> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.070393, 34.968472, 51.649921>,  <37.859673, 34.856812, 51.622913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.070393, 34.968472, 51.649921>,  <38.421593, 35.154572, 51.694935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.070393, 34.968472, 51.649921> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100923, 0.049877, -0.993643,
		0.467909, -0.883771, 0.003163,
		-0.877995, -0.465254, -0.112530,
		37.806995, 34.828896, 51.616161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.471668, 34.817436, 51.110081>,  <38.421593, 35.154572, 51.694935>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.471668, 34.817436, 51.110081> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.072247, 34.806938, 51.128841>,  <37.832592, 34.800640, 51.140099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.072247, 34.806938, 51.128841>,  <38.471668, 34.817436, 51.110081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.072247, 34.806938, 51.128841> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049179, 0.094156, -0.994342,
		0.021674, -0.995212, -0.095310,
		-0.998555, -0.026239, 0.046903,
		37.772678, 34.799065, 51.142914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.365448, 34.277081, 50.586159>,  <38.471668, 34.817436, 51.110081>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.365448, 34.277081, 50.586159> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.042351, 34.506966, 50.638691>,  <37.848492, 34.644897, 50.670208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.042351, 34.506966, 50.638691>,  <38.365448, 34.277081, 50.586159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.042351, 34.506966, 50.638691> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045438, 0.161412, -0.985841,
		-0.587777, -0.802276, -0.104266,
		-0.807746, 0.574716, 0.131328,
		37.800026, 34.679382, 50.678089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.820961, 33.999241, 50.152534>,  <38.365448, 34.277081, 50.586159>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.820961, 33.999241, 50.152534> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.743782, 34.386749, 50.214828>,  <37.697475, 34.619255, 50.252205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.743782, 34.386749, 50.214828>,  <37.820961, 33.999241, 50.152534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.743782, 34.386749, 50.214828> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143787, 0.129085, -0.981154,
		-0.970616, -0.211707, 0.114390,
		-0.192951, 0.968771, 0.155733,
		37.685898, 34.677380, 50.261547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.289154, 34.192760, 49.679127>,  <37.820961, 33.999241, 50.152534>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.289154, 34.192760, 49.679127> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.418652, 34.552361, 49.797104>,  <37.496349, 34.768120, 49.867889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.418652, 34.552361, 49.797104>,  <37.289154, 34.192760, 49.679127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.418652, 34.552361, 49.797104> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007424, 0.314139, -0.949348,
		-0.946114, 0.305159, 0.108376,
		0.323747, 0.898996, 0.294946,
		37.515778, 34.822060, 49.885586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.847298, 34.629517, 49.381954>,  <37.289154, 34.192760, 49.679127>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.847298, 34.629517, 49.381954> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.162773, 34.862877, 49.459534>,  <37.352058, 35.002895, 49.506081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.162773, 34.862877, 49.459534>,  <36.847298, 34.629517, 49.381954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.162773, 34.862877, 49.459534> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041501, 0.365274, -0.929974,
		-0.613396, 0.725407, 0.312297,
		0.788684, 0.583403, 0.193953,
		37.399380, 35.037899, 49.517719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.819748, 35.285858, 49.162251>,  <36.847298, 34.629517, 49.381954>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.819748, 35.285858, 49.162251> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.217678, 35.325390, 49.152779>,  <37.456436, 35.349110, 49.147095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.217678, 35.325390, 49.152779>,  <36.819748, 35.285858, 49.162251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.217678, 35.325390, 49.152779> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067032, 0.463005, -0.883817,
		-0.076387, 0.880828, 0.467233,
		0.994822, 0.098832, -0.023676,
		37.516125, 35.355038, 49.145676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.016701, 35.954636, 49.093277>,  <36.819748, 35.285858, 49.162251>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.016701, 35.954636, 49.093277> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.306572, 35.737621, 48.923336>,  <37.480495, 35.607414, 48.821369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.306572, 35.737621, 48.923336>,  <37.016701, 35.954636, 49.093277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.306572, 35.737621, 48.923336> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111461, 0.516141, -0.849220,
		0.680016, 0.662764, 0.313563,
		0.724675, -0.542534, -0.424856,
		37.523975, 35.574860, 48.795879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.466309, 36.373188, 48.822021>,  <37.016701, 35.954636, 49.093277>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.466309, 36.373188, 48.822021> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.551266, 36.048859, 48.603863>,  <37.602238, 35.854259, 48.472969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.551266, 36.048859, 48.603863>,  <37.466309, 36.373188, 48.822021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.551266, 36.048859, 48.603863> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120266, 0.532195, -0.838036,
		0.969756, 0.243583, 0.015519,
		0.212390, -0.810824, -0.545394,
		37.614983, 35.805611, 48.440243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.760841, 36.660805, 48.188705>,  <37.466309, 36.373188, 48.822021>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.760841, 36.660805, 48.188705> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.674728, 36.286411, 48.077282>,  <37.623062, 36.061775, 48.010429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.674728, 36.286411, 48.077282>,  <37.760841, 36.660805, 48.188705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.674728, 36.286411, 48.077282> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085072, 0.266185, -0.960160,
		0.972840, -0.230398, 0.022322,
		-0.215278, -0.935982, -0.278556,
		37.610146, 36.005615, 47.993713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.214607, 36.509384, 47.561241>,  <37.760841, 36.660805, 48.188705>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.214607, 36.509384, 47.561241> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.912384, 36.247868, 47.544849>,  <37.731049, 36.090958, 47.535015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.912384, 36.247868, 47.544849>,  <38.214607, 36.509384, 47.561241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.912384, 36.247868, 47.544849> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005469, 0.056254, -0.998401,
		0.655054, -0.754579, -0.038928,
		-0.755562, -0.653794, -0.040976,
		37.685715, 36.051731, 47.532558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.979633, 28.380352, 28.754610> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.932030, 28.039986, 28.959267>,  <43.903465, 27.835766, 29.082060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.932030, 28.039986, 28.959267>,  <43.979633, 28.380352, 28.754610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.932030, 28.039986, 28.959267> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365017, 0.516714, 0.774448,
		-0.923363, -0.094589, -0.372094,
		-0.119012, -0.850917, 0.511641,
		43.896328, 27.784710, 29.112759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.342499, 28.511919, 29.079556>,  <43.979633, 28.380352, 28.754610>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.342499, 28.511919, 29.079556> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.516903, 28.224066, 29.295710>,  <43.621548, 28.051353, 29.425402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.516903, 28.224066, 29.295710>,  <43.342499, 28.511919, 29.079556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.516903, 28.224066, 29.295710> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447101, 0.347904, 0.824053,
		-0.781020, -0.600906, -0.170058,
		0.436015, -0.719635, 0.540386,
		43.647709, 28.008175, 29.457825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.750778, 28.193422, 29.438221>,  <43.342499, 28.511919, 29.079556>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.750778, 28.193422, 29.438221> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.100300, 28.120878, 29.618698>,  <43.310013, 28.077351, 29.726984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.100300, 28.120878, 29.618698>,  <42.750778, 28.193422, 29.438221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.100300, 28.120878, 29.618698> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373652, 0.343397, 0.861662,
		-0.311211, -0.921513, 0.232296,
		0.873803, -0.181361, 0.451195,
		43.362442, 28.066469, 29.754057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.542824, 27.988750, 30.060919>,  <42.750778, 28.193422, 29.438221>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.542824, 27.988750, 30.060919> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.923485, 28.105907, 30.097944>,  <43.151882, 28.176201, 30.120159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.923485, 28.105907, 30.097944>,  <42.542824, 27.988750, 30.060919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.923485, 28.105907, 30.097944> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271833, 0.662697, 0.697811,
		0.143042, -0.689236, 0.710276,
		0.951654, 0.292892, 0.092564,
		43.208981, 28.193775, 30.125713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.607689, 28.047359, 30.848875>,  <42.542824, 27.988750, 30.060919>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.607689, 28.047359, 30.848875> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.928638, 28.239149, 30.706717>,  <43.121208, 28.354223, 30.621422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.928638, 28.239149, 30.706717>,  <42.607689, 28.047359, 30.848875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.928638, 28.239149, 30.706717> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018313, 0.614979, 0.788330,
		0.596546, -0.626024, 0.502222,
		0.802370, 0.479473, -0.355399,
		43.169350, 28.382990, 30.600098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.063480, 28.009037, 31.375828>,  <42.607689, 28.047359, 30.848875>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.063480, 28.009037, 31.375828> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.196770, 28.324371, 31.168951>,  <43.276745, 28.513573, 31.044825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.196770, 28.324371, 31.168951>,  <43.063480, 28.009037, 31.375828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.196770, 28.324371, 31.168951> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108231, 0.512932, 0.851579,
		0.936614, -0.339745, 0.085600,
		0.333227, 0.788337, -0.517190,
		43.296738, 28.560873, 31.013794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.743557, 28.208630, 31.644896>,  <43.063480, 28.009037, 31.375828>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.743557, 28.208630, 31.644896> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.607998, 28.535679, 31.458717>,  <43.526661, 28.731909, 31.347010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.607998, 28.535679, 31.458717>,  <43.743557, 28.208630, 31.644896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.607998, 28.535679, 31.458717> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130682, 0.530837, 0.837337,
		0.931702, 0.222949, -0.286749,
		-0.338901, 0.817622, -0.465447,
		43.506329, 28.780966, 31.319084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.654602, 28.676327, 32.266071>,  <43.743557, 28.208630, 31.644896>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.654602, 28.676327, 32.266071> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.621326, 28.922499, 31.952555>,  <43.601360, 29.070202, 31.764446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.621326, 28.922499, 31.952555>,  <43.654602, 28.676327, 32.266071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.621326, 28.922499, 31.952555> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034112, 0.784294, 0.619450,
		0.995950, 0.078268, -0.044251,
		-0.083189, 0.615432, -0.783788,
		43.596371, 29.107128, 31.717419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.184387, 29.232321, 32.304245>,  <43.654602, 28.676327, 32.266071>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.184387, 29.232321, 32.304245> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.871532, 29.377401, 32.101578>,  <43.683819, 29.464449, 31.979977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.871532, 29.377401, 32.101578>,  <44.184387, 29.232321, 32.304245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.871532, 29.377401, 32.101578> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011690, 0.821527, 0.570049,
		0.623000, 0.439932, -0.646785,
		-0.782134, 0.362701, -0.506669,
		43.636890, 29.486212, 31.949577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.254238, 30.044374, 32.314423>,  <44.184387, 29.232321, 32.304245>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.254238, 30.044374, 32.314423> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.872131, 29.959723, 32.231789>,  <43.642868, 29.908932, 32.182209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.872131, 29.959723, 32.231789>,  <44.254238, 30.044374, 32.314423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.872131, 29.959723, 32.231789> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282451, 0.859910, 0.425178,
		0.087660, 0.464508, -0.881220,
		-0.955268, -0.211630, -0.206581,
		43.585552, 29.896233, 32.169815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.044193, 30.712231, 32.068455>,  <44.254238, 30.044374, 32.314423>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.044193, 30.712231, 32.068455> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.731480, 30.496592, 32.193794>,  <43.543854, 30.367208, 32.268997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.731480, 30.496592, 32.193794>,  <44.044193, 30.712231, 32.068455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.731480, 30.496592, 32.193794> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367884, 0.804515, 0.466279,
		-0.503465, 0.249253, -0.827282,
		-0.781783, -0.539100, 0.313349,
		43.496944, 30.334862, 32.287800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.495060, 31.120186, 31.978420>,  <44.044193, 30.712231, 32.068455>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.495060, 31.120186, 31.978420> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.321236, 30.861006, 32.228642>,  <43.216942, 30.705498, 32.378773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.321236, 30.861006, 32.228642>,  <43.495060, 31.120186, 31.978420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.321236, 30.861006, 32.228642> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607873, 0.723513, 0.327138,
		-0.664565, -0.238096, -0.708282,
		-0.434561, -0.647950, 0.625554,
		43.190868, 30.666620, 32.416309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.756481, 31.209671, 31.915922>,  <43.495060, 31.120186, 31.978420>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.756481, 31.209671, 31.915922> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.805164, 31.025448, 32.267620>,  <42.834373, 30.914913, 32.478638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.805164, 31.025448, 32.267620>,  <42.756481, 31.209671, 31.915922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.805164, 31.025448, 32.267620> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564669, 0.696388, 0.442937,
		-0.816294, -0.550392, -0.175307,
		0.121708, -0.460557, 0.879246,
		42.841675, 30.887281, 32.531395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.109890, 31.096333, 32.193367>,  <42.756481, 31.209671, 31.915922>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.109890, 31.096333, 32.193367> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.349415, 31.070856, 32.512707>,  <42.493130, 31.055571, 32.704311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.349415, 31.070856, 32.512707>,  <42.109890, 31.096333, 32.193367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.349415, 31.070856, 32.512707> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649542, 0.544533, 0.530640,
		-0.468527, -0.836318, 0.284702,
		0.598813, -0.063693, 0.798352,
		42.529060, 31.051748, 32.752213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.714569, 31.347670, 32.652771>,  <42.109890, 31.096333, 32.193367>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.714569, 31.347670, 32.652771> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.062401, 31.373377, 32.848606>,  <42.271099, 31.388802, 32.966106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.062401, 31.373377, 32.848606>,  <41.714569, 31.347670, 32.652771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.062401, 31.373377, 32.848606> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356054, 0.768579, 0.531518,
		-0.342126, -0.636518, 0.691227,
		0.869583, 0.064268, 0.489586,
		42.323277, 31.392658, 32.995483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.560471, 31.362190, 33.383415>,  <41.714569, 31.347670, 32.652771>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.560471, 31.362190, 33.383415> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.911079, 31.538280, 33.305542>,  <42.121445, 31.643934, 33.258816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.911079, 31.538280, 33.305542>,  <41.560471, 31.362190, 33.383415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.911079, 31.538280, 33.305542> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285185, 0.800768, 0.526725,
		0.387776, -0.406167, 0.827441,
		0.876527, 0.440226, -0.194686,
		42.174038, 31.670347, 33.247135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.856644, 31.420195, 34.019321>,  <41.560471, 31.362190, 33.383415>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.856644, 31.420195, 34.019321> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.012985, 31.690578, 33.769421>,  <42.106789, 31.852808, 33.619480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.012985, 31.690578, 33.769421>,  <41.856644, 31.420195, 34.019321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.012985, 31.690578, 33.769421> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344684, 0.736843, 0.581598,
		0.853481, -0.011974, 0.520986,
		0.390849, 0.675958, -0.624754,
		42.130241, 31.893366, 33.581993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.251026, 31.774460, 34.447590>,  <41.856644, 31.420195, 34.019321>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.251026, 31.774460, 34.447590> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.170650, 32.010254, 34.134636>,  <42.122425, 32.151730, 33.946861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.170650, 32.010254, 34.134636>,  <42.251026, 31.774460, 34.447590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.170650, 32.010254, 34.134636> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268429, 0.734975, 0.622702,
		0.942108, 0.335143, 0.010546,
		-0.200943, 0.589484, -0.782388,
		42.110367, 32.187099, 33.899921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.439697, 32.338638, 34.693588>,  <42.251026, 31.774460, 34.447590>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.439697, 32.338638, 34.693588> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.258640, 32.477474, 34.365040>,  <42.150005, 32.560776, 34.167912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.258640, 32.477474, 34.365040>,  <42.439697, 32.338638, 34.693588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.258640, 32.477474, 34.365040> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355549, 0.774485, 0.523218,
		0.817741, 0.528866, -0.227157,
		-0.452642, 0.347091, -0.821366,
		42.122849, 32.581600, 34.118629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.742077, 33.072159, 34.439285>,  <42.439697, 32.338638, 34.693588>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.742077, 33.072159, 34.439285> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.363018, 33.026882, 34.319851>,  <42.135582, 32.999718, 34.248188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.363018, 33.026882, 34.319851>,  <42.742077, 33.072159, 34.439285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.363018, 33.026882, 34.319851> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271218, 0.778857, 0.565529,
		0.168547, 0.616904, -0.768779,
		-0.947646, -0.113189, -0.298590,
		42.078724, 32.992924, 34.230274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.569618, 33.737305, 34.199230>,  <42.742077, 33.072159, 34.439285>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.569618, 33.737305, 34.199230> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.222698, 33.545891, 34.254063>,  <42.014545, 33.431042, 34.286961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.222698, 33.545891, 34.254063>,  <42.569618, 33.737305, 34.199230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.222698, 33.545891, 34.254063> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242021, 0.646016, 0.723940,
		-0.434991, 0.594696, -0.676106,
		-0.867300, -0.478539, 0.137082,
		41.962509, 33.402328, 34.295189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.217060, 34.100353, 33.998951>,  <42.569618, 33.737305, 34.199230>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.217060, 34.100353, 33.998951> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.516846, 34.256035, 34.213177>,  <43.696716, 34.349442, 34.341713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.516846, 34.256035, 34.213177>,  <43.217060, 34.100353, 33.998951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.516846, 34.256035, 34.213177> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646441, -0.255602, -0.718875,
		-0.142895, 0.884981, -0.443159,
		0.749463, 0.389200, 0.535564,
		43.741684, 34.372795, 34.373844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.586468, 34.441887, 33.453899>,  <43.217060, 34.100353, 33.998951>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.586468, 34.441887, 33.453899> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.832077, 34.389912, 33.765308>,  <43.979443, 34.358727, 33.952152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.832077, 34.389912, 33.765308>,  <43.586468, 34.441887, 33.453899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.832077, 34.389912, 33.765308> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706704, -0.348749, -0.615583,
		0.351497, 0.928165, -0.122310,
		0.614018, -0.129938, 0.778522,
		44.016281, 34.350929, 33.998867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.205544, 34.744751, 33.276936>,  <43.586468, 34.441887, 33.453899>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.205544, 34.744751, 33.276936> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.283894, 34.476372, 33.563000>,  <44.330902, 34.315342, 33.734638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.283894, 34.476372, 33.563000>,  <44.205544, 34.744751, 33.276936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.283894, 34.476372, 33.563000> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650941, -0.456481, -0.606549,
		0.733422, 0.584336, 0.347336,
		0.195876, -0.670952, 0.715162,
		44.342655, 34.275085, 33.777550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.985081, 34.730766, 33.264931>,  <44.205544, 34.744751, 33.276936>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.985081, 34.730766, 33.264931> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.844193, 34.403027, 33.445869>,  <44.759659, 34.206383, 33.554432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.844193, 34.403027, 33.445869>,  <44.985081, 34.730766, 33.264931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.844193, 34.403027, 33.445869> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611424, -0.567364, -0.551597,
		0.708592, 0.082290, 0.700804,
		-0.352220, -0.819345, 0.452343,
		44.738525, 34.157223, 33.581573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.507427, 34.397865, 33.455788>,  <44.985081, 34.730766, 33.264931>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.507427, 34.397865, 33.455788> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.241962, 34.098652, 33.455730>,  <45.082684, 33.919125, 33.455696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.241962, 34.098652, 33.455730>,  <45.507427, 34.397865, 33.455788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.241962, 34.098652, 33.455730> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670049, -0.594388, -0.444676,
		0.332547, -0.295211, 0.895691,
		-0.663662, -0.748033, -0.000144,
		45.042866, 33.874241, 33.455688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.944973, 33.860943, 33.355408>,  <45.507427, 34.397865, 33.455788>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.944973, 33.860943, 33.355408> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.593342, 33.679020, 33.298313>,  <45.382362, 33.569866, 33.264057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.593342, 33.679020, 33.298313>,  <45.944973, 33.860943, 33.355408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.593342, 33.679020, 33.298313> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470264, -0.778492, -0.415693,
		0.077938, -0.432552, 0.898234,
		-0.879077, -0.454806, -0.142739,
		45.329620, 33.542580, 33.255489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.926544, 33.110825, 33.612473>,  <45.944973, 33.860943, 33.355408>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.926544, 33.110825, 33.612473> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.685593, 33.181252, 33.301052>,  <45.541023, 33.223507, 33.114201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.685593, 33.181252, 33.301052>,  <45.926544, 33.110825, 33.612473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.685593, 33.181252, 33.301052> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382354, -0.792544, -0.475057,
		-0.700679, -0.583846, 0.410090,
		-0.602374, 0.176063, -0.778554,
		45.504879, 33.234070, 33.067486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.943890, 32.448669, 33.278004>,  <45.926544, 33.110825, 33.612473>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.943890, 32.448669, 33.278004> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.755230, 32.685474, 33.016602>,  <45.642036, 32.827557, 32.859760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.755230, 32.685474, 33.016602>,  <45.943890, 32.448669, 33.278004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.755230, 32.685474, 33.016602> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264964, -0.611716, -0.745384,
		-0.841038, -0.524712, 0.131650,
		-0.471645, 0.592014, -0.653506,
		45.613735, 32.863079, 32.820549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.459019, 31.988260, 32.948753>,  <45.943890, 32.448669, 33.278004>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.459019, 31.988260, 32.948753> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.545689, 32.290981, 32.702080>,  <45.597691, 32.472614, 32.554077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.545689, 32.290981, 32.702080>,  <45.459019, 31.988260, 32.948753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.545689, 32.290981, 32.702080> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195462, -0.652531, -0.732118,
		-0.956476, 0.038094, -0.289314,
		0.216676, 0.756804, -0.616685,
		45.610691, 32.518021, 32.517075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.058708, 31.822741, 32.353771>,  <45.459019, 31.988260, 32.948753>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.058708, 31.822741, 32.353771> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.364315, 32.053471, 32.238155>,  <45.547680, 32.191910, 32.168785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.364315, 32.053471, 32.238155>,  <45.058708, 31.822741, 32.353771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.364315, 32.053471, 32.238155> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150512, -0.594979, -0.789523,
		-0.627391, 0.559707, -0.541395,
		0.764020, 0.576826, -0.289041,
		45.593521, 32.226517, 32.151443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.920311, 31.863110, 31.614431>,  <45.058708, 31.822741, 32.353771>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.920311, 31.863110, 31.614431> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.294418, 31.997198, 31.659863>,  <45.518883, 32.077652, 31.687120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.294418, 31.997198, 31.659863>,  <44.920311, 31.863110, 31.614431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.294418, 31.997198, 31.659863> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264689, -0.449402, -0.853216,
		-0.234973, 0.828049, -0.509041,
		0.935269, 0.335220, 0.113579,
		45.575001, 32.097763, 31.693935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.113518, 32.202278, 31.017872>,  <44.920311, 31.863110, 31.614431>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.113518, 32.202278, 31.017872> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.469772, 32.116089, 31.178040>,  <45.683525, 32.064373, 31.274139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.469772, 32.116089, 31.178040>,  <45.113518, 32.202278, 31.017872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.469772, 32.116089, 31.178040> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278830, -0.436805, -0.855252,
		0.359190, 0.873368, -0.328955,
		0.890638, -0.215475, 0.400417,
		45.736965, 32.051445, 31.298164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.634102, 32.306541, 30.443933>,  <45.113518, 32.202278, 31.017872>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.634102, 32.306541, 30.443933> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.815838, 32.060768, 30.701942>,  <45.924877, 31.913305, 30.856749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.815838, 32.060768, 30.701942>,  <45.634102, 32.306541, 30.443933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.815838, 32.060768, 30.701942> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399847, -0.506379, -0.764005,
		0.796053, 0.605025, 0.015612,
		0.454336, -0.614431, 0.645022,
		45.952137, 31.876438, 30.895449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.342342, 32.252056, 30.242294>,  <45.634102, 32.306541, 30.443933>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.342342, 32.252056, 30.242294> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.249161, 31.928003, 30.457485>,  <46.193253, 31.733572, 30.586599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.249161, 31.928003, 30.457485>,  <46.342342, 32.252056, 30.242294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.249161, 31.928003, 30.457485> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100005, -0.570218, -0.815384,
		0.967333, -0.136145, 0.213851,
		-0.232952, -0.810133, 0.537975,
		46.179276, 31.684963, 30.618877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.745090, 31.719244, 29.813086>,  <46.342342, 32.252056, 30.242294>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.745090, 31.719244, 29.813086> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.485626, 31.547880, 30.064705>,  <46.329948, 31.445061, 30.215677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.485626, 31.547880, 30.064705>,  <46.745090, 31.719244, 29.813086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.485626, 31.547880, 30.064705> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151129, -0.737560, -0.658153,
		0.745922, -0.521985, 0.413680,
		-0.648660, -0.428412, 0.629049,
		46.291027, 31.419357, 30.253420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.894905, 30.992678, 29.722363>,  <46.745090, 31.719244, 29.813086>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.894905, 30.992678, 29.722363> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.546986, 31.002657, 29.919474>,  <46.338234, 31.008644, 30.037741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.546986, 31.002657, 29.919474>,  <46.894905, 30.992678, 29.722363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.546986, 31.002657, 29.919474> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308527, -0.806889, -0.503727,
		0.385047, -0.590176, 0.709529,
		-0.869799, 0.024950, 0.492776,
		46.286045, 31.010141, 30.067307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.797565, 30.379650, 29.973261>,  <46.894905, 30.992678, 29.722363>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.797565, 30.379650, 29.973261> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.437904, 30.548065, 29.925518>,  <46.222107, 30.649115, 29.896872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.437904, 30.548065, 29.925518>,  <46.797565, 30.379650, 29.973261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.437904, 30.548065, 29.925518> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297234, -0.787726, -0.539573,
		-0.321203, -0.449683, 0.833435,
		-0.899155, 0.421038, -0.119359,
		46.168159, 30.674377, 29.889709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.372173, 29.897219, 30.217176>,  <46.797565, 30.379650, 29.973261>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.372173, 29.897219, 30.217176> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.126823, 30.133537, 30.007517>,  <45.979614, 30.275328, 29.881721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.126823, 30.133537, 30.007517>,  <46.372173, 29.897219, 30.217176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.126823, 30.133537, 30.007517> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277753, -0.782621, -0.557098,
		-0.739340, -0.196126, 0.644136,
		-0.613375, 0.590796, -0.524148,
		45.942810, 30.310776, 29.850271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.691715, 29.616209, 30.193411>,  <46.372173, 29.897219, 30.217176>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.691715, 29.616209, 30.193411> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.722511, 29.845093, 29.866816>,  <45.740990, 29.982422, 29.670858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.722511, 29.845093, 29.866816>,  <45.691715, 29.616209, 30.193411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.722511, 29.845093, 29.866816> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359878, -0.747762, -0.557978,
		-0.929817, 0.336794, 0.148355,
		0.076990, 0.572207, -0.816487,
		45.745609, 30.016754, 29.621870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.026131, 29.567600, 29.853769>,  <45.691715, 29.616209, 30.193411>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.026131, 29.567600, 29.853769> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.306396, 29.680334, 29.591579>,  <45.474556, 29.747974, 29.434265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.306396, 29.680334, 29.591579>,  <45.026131, 29.567600, 29.853769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.306396, 29.680334, 29.591579> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282798, -0.733741, -0.617778,
		-0.655058, 0.618219, -0.434401,
		0.700660, 0.281833, -0.655474,
		45.516594, 29.764885, 29.394938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.678944, 29.542274, 29.217987>,  <45.026131, 29.567600, 29.853769>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.678944, 29.542274, 29.217987> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.062294, 29.512215, 29.107813>,  <45.292305, 29.494179, 29.041708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.062294, 29.512215, 29.107813>,  <44.678944, 29.542274, 29.217987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.062294, 29.512215, 29.107813> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255231, -0.657839, -0.708594,
		-0.127944, 0.749400, -0.649638,
		0.958378, -0.075148, -0.275436,
		45.349808, 29.489670, 29.025183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.011051, 34.377037, 42.724094> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.618084, 34.451702, 42.723068>,  <40.382301, 34.496502, 42.722454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.618084, 34.451702, 42.723068>,  <41.011051, 34.377037, 42.724094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.618084, 34.451702, 42.723068> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044237, -0.246109, -0.968232,
		-0.181357, -0.951099, 0.250040,
		-0.982422, 0.186657, -0.002560,
		40.323357, 34.507702, 42.722301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.703903, 33.828278, 42.338852>,  <41.011051, 34.377037, 42.724094>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.703903, 33.828278, 42.338852> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.399490, 34.087025, 42.358402>,  <40.216843, 34.242271, 42.370132>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.399490, 34.087025, 42.358402>,  <40.703903, 33.828278, 42.338852>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.399490, 34.087025, 42.358402> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272604, -0.250535, -0.928934,
		-0.588655, -0.720273, 0.367005,
		-0.761034, 0.646869, 0.048871,
		40.171181, 34.281086, 42.373062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.090054, 33.516788, 42.258205>,  <40.703903, 33.828278, 42.338852>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.090054, 33.516788, 42.258205> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.006168, 33.887642, 42.133984>,  <39.955837, 34.110153, 42.059452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.006168, 33.887642, 42.133984>,  <40.090054, 33.516788, 42.258205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.006168, 33.887642, 42.133984> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297766, -0.363084, -0.882896,
		-0.931320, -0.092680, 0.352211,
		-0.209709, 0.927136, -0.310550,
		39.943256, 34.165783, 42.040817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.483627, 33.412174, 41.886391>,  <40.090054, 33.516788, 42.258205>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.483627, 33.412174, 41.886391> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.623466, 33.768547, 41.770447>,  <39.707371, 33.982372, 41.700878>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.623466, 33.768547, 41.770447>,  <39.483627, 33.412174, 41.886391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.623466, 33.768547, 41.770447> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317501, -0.178416, -0.931322,
		-0.881462, 0.417620, 0.220498,
		0.349598, 0.890933, -0.289862,
		39.728348, 34.035828, 41.683487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.023788, 33.631451, 41.380913>,  <39.483627, 33.412174, 41.886391>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.023788, 33.631451, 41.380913> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.347187, 33.855221, 41.307827>,  <39.541225, 33.989483, 41.263977>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.347187, 33.855221, 41.307827>,  <39.023788, 33.631451, 41.380913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.347187, 33.855221, 41.307827> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236482, 0.024524, -0.971326,
		-0.538901, 0.828520, 0.152121,
		0.808494, 0.559422, -0.182714,
		39.589737, 34.023048, 41.253014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.753613, 34.121593, 40.897415>,  <39.023788, 33.631451, 41.380913>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.753613, 34.121593, 40.897415> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.152348, 34.140175, 40.871643>,  <39.391590, 34.151325, 40.856178>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.152348, 34.140175, 40.871643>,  <38.753613, 34.121593, 40.897415>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.152348, 34.140175, 40.871643> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060149, -0.088340, -0.994273,
		-0.051882, 0.995007, -0.085267,
		0.996840, 0.046456, -0.064432,
		39.451401, 34.154110, 40.852314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.894554, 34.597935, 40.403122>,  <38.753613, 34.121593, 40.897415>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.894554, 34.597935, 40.403122> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.196499, 34.337337, 40.433430>,  <39.377666, 34.180981, 40.451614>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.196499, 34.337337, 40.433430>,  <38.894554, 34.597935, 40.403122>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.196499, 34.337337, 40.433430> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101139, -0.229771, -0.967975,
		0.648037, 0.723026, -0.239337,
		0.754864, -0.651490, 0.075774,
		39.422958, 34.141891, 40.456161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.284142, 34.796276, 39.893463>,  <38.894554, 34.597935, 40.403122>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.284142, 34.796276, 39.893463> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.446030, 34.434845, 39.949673>,  <39.543163, 34.217987, 39.983398>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.446030, 34.434845, 39.949673>,  <39.284142, 34.796276, 39.893463>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.446030, 34.434845, 39.949673> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003389, -0.155151, -0.987885,
		0.914434, 0.399341, -0.065855,
		0.404721, -0.903579, 0.140522,
		39.567448, 34.163773, 39.991829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.752197, 34.658245, 39.376350>,  <39.284142, 34.796276, 39.893463>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.752197, 34.658245, 39.376350> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.689545, 34.287495, 39.512794>,  <39.651955, 34.065044, 39.594662>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.689545, 34.287495, 39.512794>,  <39.752197, 34.658245, 39.376350>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.689545, 34.287495, 39.512794> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242267, -0.298769, -0.923062,
		0.957483, -0.227223, -0.177756,
		-0.156633, -0.926880, 0.341114,
		39.642555, 34.009430, 39.615128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.150990, 34.234047, 38.870674>,  <39.752197, 34.658245, 39.376350>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.150990, 34.234047, 38.870674> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.865005, 34.026184, 39.057774>,  <39.693417, 33.901466, 39.170033>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.865005, 34.026184, 39.057774>,  <40.150990, 34.234047, 38.870674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.865005, 34.026184, 39.057774> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381278, -0.270992, -0.883850,
		0.586059, -0.810257, -0.004388,
		-0.714956, -0.519661, 0.467750,
		39.650520, 33.870285, 39.198097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.183720, 33.602303, 38.589397>,  <40.150990, 34.234047, 38.870674>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.183720, 33.602303, 38.589397> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.819736, 33.613831, 38.754879>,  <39.601349, 33.620747, 38.854168>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.819736, 33.613831, 38.754879>,  <40.183720, 33.602303, 38.589397>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.819736, 33.613831, 38.754879> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385913, -0.424085, -0.819282,
		0.151838, -0.905164, 0.397018,
		-0.909954, 0.028816, 0.413707,
		39.546749, 33.622475, 38.878990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.953064, 33.013142, 38.431599>,  <40.183720, 33.602303, 38.589397>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.953064, 33.013142, 38.431599> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.623158, 33.225533, 38.509396>,  <39.425213, 33.352966, 38.556072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.623158, 33.225533, 38.509396>,  <39.953064, 33.013142, 38.431599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.623158, 33.225533, 38.509396> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488676, -0.496202, -0.717621,
		-0.284535, -0.686910, 0.668726,
		-0.824764, 0.530979, 0.194489,
		39.375729, 33.384827, 38.567741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.175854, 32.619965, 37.844574>,  <39.953064, 33.013142, 38.431599>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.175854, 32.619965, 37.844574> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.499538, 32.808174, 37.703842>,  <40.693748, 32.921101, 37.619404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.499538, 32.808174, 37.703842>,  <40.175854, 32.619965, 37.844574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.499538, 32.808174, 37.703842> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102840, -0.703038, -0.703677,
		-0.578448, 0.533240, -0.617294,
		0.809210, 0.470523, -0.351833,
		40.742302, 32.949329, 37.598293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.041790, 32.905636, 37.143883>,  <40.175854, 32.619965, 37.844574>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.041790, 32.905636, 37.143883> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.424820, 32.805271, 37.200588>,  <40.654636, 32.745052, 37.234612>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.424820, 32.805271, 37.200588>,  <40.041790, 32.905636, 37.143883>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.424820, 32.805271, 37.200588> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051912, -0.634033, -0.771562,
		0.283475, 0.731468, -0.620159,
		0.957574, -0.250912, 0.141760,
		40.712093, 32.729996, 37.243114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.691761, 32.249523, 37.065586>,  <40.041790, 32.905636, 37.143883>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.691761, 32.249523, 37.065586> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.746296, 31.866339, 36.964611>,  <39.779015, 31.636429, 36.904026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.746296, 31.866339, 36.964611>,  <39.691761, 32.249523, 37.065586>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.746296, 31.866339, 36.964611> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052197, -0.261412, 0.963815,
		-0.989287, -0.118224, -0.085642,
		0.136334, -0.957960, -0.252440,
		39.787197, 31.578951, 36.888878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.144894, 31.800728, 37.407845>,  <39.691761, 32.249523, 37.065586>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.144894, 31.800728, 37.407845> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.458389, 31.565430, 37.328125>,  <39.646488, 31.424252, 37.280293>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.458389, 31.565430, 37.328125>,  <39.144894, 31.800728, 37.407845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.458389, 31.565430, 37.328125> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003042, -0.317241, 0.948340,
		-0.621081, -0.743859, -0.246845,
		0.783741, -0.588245, -0.199295,
		39.693512, 31.388956, 37.268337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.862469, 31.278824, 37.581253>,  <39.144894, 31.800728, 37.407845>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.862469, 31.278824, 37.581253> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.257786, 31.236523, 37.625229>,  <39.494976, 31.211142, 37.651615>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.257786, 31.236523, 37.625229>,  <38.862469, 31.278824, 37.581253>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.257786, 31.236523, 37.625229> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132799, -0.241795, 0.961197,
		-0.075066, -0.964548, -0.253009,
		0.988297, -0.105752, 0.109941,
		39.554276, 31.204796, 37.658211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.942368, 30.623806, 38.014561>,  <38.862469, 31.278824, 37.581253>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.942368, 30.623806, 38.014561> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.283440, 30.832359, 38.027779>,  <39.488083, 30.957491, 38.035709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.283440, 30.832359, 38.027779>,  <38.942368, 30.623806, 38.014561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.283440, 30.832359, 38.027779> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090263, -0.209336, 0.973669,
		0.514573, -0.827247, -0.225559,
		0.852683, 0.521383, 0.033049,
		39.539246, 30.988773, 38.037693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.334274, 30.242924, 38.434093>,  <38.942368, 30.623806, 38.014561>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.334274, 30.242924, 38.434093> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.519875, 30.597174, 38.441807>,  <39.631233, 30.809723, 38.446434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.519875, 30.597174, 38.441807>,  <39.334274, 30.242924, 38.434093>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.519875, 30.597174, 38.441807> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100298, -0.074156, 0.992190,
		0.880138, -0.458442, -0.123235,
		0.464000, 0.885625, 0.019287,
		39.659073, 30.862862, 38.447594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.028309, 30.174520, 38.812016>,  <39.334274, 30.242924, 38.434093>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.028309, 30.174520, 38.812016> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.895618, 30.550276, 38.846680>,  <39.816002, 30.775728, 38.867477>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.895618, 30.550276, 38.846680>,  <40.028309, 30.174520, 38.812016>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.895618, 30.550276, 38.846680> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070401, -0.066951, 0.995270,
		0.940744, 0.336260, -0.043924,
		-0.331729, 0.939386, 0.086657,
		39.796101, 30.832092, 38.872677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.428864, 30.381403, 39.376945>,  <40.028309, 30.174520, 38.812016>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.428864, 30.381403, 39.376945> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.148521, 30.665037, 39.345966>,  <39.980316, 30.835218, 39.327381>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.148521, 30.665037, 39.345966>,  <40.428864, 30.381403, 39.376945>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.148521, 30.665037, 39.345966> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005615, 0.114054, 0.993459,
		0.713279, 0.695838, -0.083917,
		-0.700857, 0.709085, -0.077445,
		39.938263, 30.877762, 39.322731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.662212, 30.723867, 39.915653>,  <40.428864, 30.381403, 39.376945>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.662212, 30.723867, 39.915653> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.290588, 30.845421, 39.831276>,  <40.067612, 30.918352, 39.780651>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.290588, 30.845421, 39.831276>,  <40.662212, 30.723867, 39.915653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.290588, 30.845421, 39.831276> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131765, 0.260984, 0.956308,
		0.345659, 0.916265, -0.202430,
		-0.929063, 0.303883, -0.210944,
		40.011871, 30.936586, 39.767994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.630905, 31.415129, 40.169647>,  <40.662212, 30.723867, 39.915653>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.630905, 31.415129, 40.169647> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.268879, 31.247517, 40.140602>,  <40.051662, 31.146950, 40.123177>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.268879, 31.247517, 40.140602>,  <40.630905, 31.415129, 40.169647>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.268879, 31.247517, 40.140602> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214594, 0.302584, 0.928651,
		-0.367161, 0.856071, -0.363779,
		-0.905065, -0.419029, -0.072611,
		39.997360, 31.121807, 40.118820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.205338, 31.897112, 40.537216>,  <40.630905, 31.415129, 40.169647>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.205338, 31.897112, 40.537216> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.001980, 31.553102, 40.519798>,  <39.879967, 31.346697, 40.509346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.001980, 31.553102, 40.519798>,  <40.205338, 31.897112, 40.537216>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.001980, 31.553102, 40.519798> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443769, 0.218320, 0.869141,
		-0.737973, 0.461192, -0.492644,
		-0.508394, -0.860023, -0.043549,
		39.849461, 31.295095, 40.506733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.506763, 32.081932, 40.636127>,  <40.205338, 31.897112, 40.537216>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.506763, 32.081932, 40.636127> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.552189, 31.695595, 40.729290>,  <39.579445, 31.463791, 40.785187>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.552189, 31.695595, 40.729290>,  <39.506763, 32.081932, 40.636127>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.552189, 31.695595, 40.729290> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448780, 0.159274, 0.879334,
		-0.886397, -0.204381, -0.415365,
		0.113562, -0.965847, 0.232902,
		39.586258, 31.405840, 40.799160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.835598, 31.927757, 40.990456>,  <39.506763, 32.081932, 40.636127>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.835598, 31.927757, 40.990456> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.087048, 31.634203, 41.093407>,  <39.237919, 31.458071, 41.155178>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.087048, 31.634203, 41.093407>,  <38.835598, 31.927757, 40.990456>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.087048, 31.634203, 41.093407> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279626, 0.095522, 0.955345,
		-0.725701, -0.672521, -0.145167,
		0.628623, -0.733888, 0.257375,
		39.275635, 31.414036, 41.170620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.461769, 31.605114, 41.470089>,  <38.835598, 31.927757, 40.990456>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.461769, 31.605114, 41.470089> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.831612, 31.464968, 41.529884>,  <39.053516, 31.380880, 41.565762>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.831612, 31.464968, 41.529884>,  <38.461769, 31.605114, 41.470089>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.831612, 31.464968, 41.529884> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136789, 0.060868, 0.988728,
		-0.355518, -0.934632, 0.008353,
		0.924606, -0.350368, 0.149487,
		39.108994, 31.359858, 41.574730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.371086, 30.994898, 41.807007>,  <38.461769, 31.605114, 41.470089>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.371086, 30.994898, 41.807007> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.737186, 31.128145, 41.897640>,  <38.956848, 31.208094, 41.952023>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.737186, 31.128145, 41.897640>,  <38.371086, 30.994898, 41.807007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.737186, 31.128145, 41.897640> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219849, -0.058331, 0.973788,
		0.337606, -0.941078, 0.019848,
		0.915253, 0.333120, 0.226588,
		39.011761, 31.228081, 41.965618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.941204, 30.293325, 41.776924>,  <38.371086, 30.994898, 41.807007>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.941204, 30.293325, 41.776924> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.580132, 30.259762, 41.945747>,  <37.363487, 30.239624, 42.047043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.580132, 30.259762, 41.945747>,  <37.941204, 30.293325, 41.776924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.580132, 30.259762, 41.945747> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425397, 0.321917, -0.845817,
		-0.064895, -0.943042, -0.326282,
		-0.902677, -0.083910, 0.422058,
		37.309330, 30.234589, 42.072365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467709, 29.980078, 41.248882>,  <37.941204, 30.293325, 41.776924>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.467709, 29.980078, 41.248882> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.225632, 30.138399, 41.525169>,  <37.080387, 30.233393, 41.690941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.225632, 30.138399, 41.525169>,  <37.467709, 29.980078, 41.248882>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.225632, 30.138399, 41.525169> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678485, 0.197407, -0.707594,
		-0.416420, -0.896866, 0.149079,
		-0.605188, 0.395805, 0.690714,
		37.044075, 30.257141, 41.732384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.897007, 29.607315, 41.100288>,  <37.467709, 29.980078, 41.248882>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.897007, 29.607315, 41.100288> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.814686, 29.947800, 41.293404>,  <36.765293, 30.152090, 41.409271>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.814686, 29.947800, 41.293404>,  <36.897007, 29.607315, 41.100288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.814686, 29.947800, 41.293404> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771834, 0.162093, -0.614815,
		-0.601594, -0.499164, 0.623635,
		-0.205807, 0.851212, 0.482786,
		36.752945, 30.203163, 41.438240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.147770, 29.647047, 40.998199>,  <36.897007, 29.607315, 41.100288>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.147770, 29.647047, 40.998199> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.253902, 30.013784, 41.117531>,  <36.317581, 30.233826, 41.189129>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.253902, 30.013784, 41.117531>,  <36.147770, 29.647047, 40.998199>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.253902, 30.013784, 41.117531> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687782, 0.396828, -0.607852,
		-0.675690, -0.043907, 0.735877,
		0.265328, 0.916842, 0.298331,
		36.333500, 30.288837, 41.207031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.500309, 30.079502, 41.056644>,  <36.147770, 29.647047, 40.998199>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.500309, 30.079502, 41.056644> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.800690, 30.339087, 41.007767>,  <35.980919, 30.494837, 40.978439>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.800690, 30.339087, 41.007767>,  <35.500309, 30.079502, 41.056644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.800690, 30.339087, 41.007767> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495688, 0.431692, -0.753615,
		-0.436316, 0.626494, 0.645859,
		0.750947, 0.648959, -0.122191,
		36.025974, 30.533773, 40.971107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.216003, 30.741587, 41.039330>,  <35.500309, 30.079502, 41.056644>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.216003, 30.741587, 41.039330> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.574104, 30.811481, 40.875385>,  <35.788963, 30.853418, 40.777020>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.574104, 30.811481, 40.875385>,  <35.216003, 30.741587, 41.039330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.574104, 30.811481, 40.875385> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443710, 0.433375, -0.784416,
		0.040557, 0.884111, 0.465514,
		0.895252, 0.174739, -0.409865,
		35.842682, 30.863903, 40.752426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.127216, 31.423796, 40.870533>,  <35.216003, 30.741587, 41.039330>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.127216, 31.423796, 40.870533> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.449715, 31.322523, 40.656666>,  <35.643215, 31.261759, 40.528347>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.449715, 31.322523, 40.656666>,  <35.127216, 31.423796, 40.870533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.449715, 31.322523, 40.656666> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386710, 0.458400, -0.800203,
		0.447688, 0.851920, 0.271675,
		0.806245, -0.253182, -0.534666,
		35.691589, 31.246569, 40.496265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.370125, 32.003452, 40.476574>,  <35.127216, 31.423796, 40.870533>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.370125, 32.003452, 40.476574> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.543392, 31.714157, 40.261433>,  <35.647354, 31.540579, 40.132347>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.543392, 31.714157, 40.261433>,  <35.370125, 32.003452, 40.476574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.543392, 31.714157, 40.261433> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276686, 0.461228, -0.843038,
		0.857794, 0.513994, -0.000321,
		0.433169, -0.723241, -0.537854,
		35.673344, 31.497185, 40.100075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.724957, 32.409557, 39.997700>,  <35.370125, 32.003452, 40.476574>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.724957, 32.409557, 39.997700> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.702156, 32.038277, 39.850628>,  <35.688477, 31.815508, 39.762386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.702156, 32.038277, 39.850628>,  <35.724957, 32.409557, 39.997700>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.702156, 32.038277, 39.850628> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292859, 0.367622, -0.882659,
		0.954455, 0.057365, -0.292788,
		-0.057002, -0.928205, -0.367678,
		35.685055, 31.759815, 39.740326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.102367, 32.366692, 39.286137>,  <35.724957, 32.409557, 39.997700>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.102367, 32.366692, 39.286137> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.866798, 32.043446, 39.281651>,  <35.725456, 31.849499, 39.278957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.866798, 32.043446, 39.281651>,  <36.102367, 32.366692, 39.286137>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.866798, 32.043446, 39.281651> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403069, 0.305713, -0.862598,
		0.700507, -0.503479, -0.505766,
		-0.588919, -0.808114, -0.011217,
		35.690125, 31.801012, 39.278286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.010201, 32.254738, 38.559578>,  <36.102367, 32.366692, 39.286137>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.010201, 32.254738, 38.559578> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.711113, 32.053127, 38.732494>,  <35.531662, 31.932161, 38.836243>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.711113, 32.053127, 38.732494>,  <36.010201, 32.254738, 38.559578>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.711113, 32.053127, 38.732494> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546829, 0.098075, -0.831480,
		0.376694, -0.858100, -0.348951,
		-0.747716, -0.504030, 0.432290,
		35.486797, 31.901918, 38.862183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.870296, 31.500935, 38.243637>,  <36.010201, 32.254738, 38.559578>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.870296, 31.500935, 38.243637> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.539391, 31.663328, 38.398975>,  <35.340847, 31.760763, 38.492180>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.539391, 31.663328, 38.398975>,  <35.870296, 31.500935, 38.243637>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.539391, 31.663328, 38.398975> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421935, 0.007440, -0.906595,
		-0.370952, -0.913850, 0.165143,
		-0.827264, 0.405983, 0.388346,
		35.291210, 31.785122, 38.515480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.952148, 28.667799, 45.326302> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.598648, 28.853436, 45.350288>,  <38.386547, 28.964817, 45.364681>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.598648, 28.853436, 45.350288>,  <38.952148, 28.667799, 45.326302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.598648, 28.853436, 45.350288> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016782, 0.096627, -0.995179,
		-0.467650, -0.880500, -0.077606,
		-0.883754, 0.464093, 0.059965,
		38.333523, 28.992664, 45.368279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.534634, 28.423559, 44.704052>,  <38.952148, 28.667799, 45.326302>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.534634, 28.423559, 44.704052> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.334106, 28.739668, 44.844994>,  <38.213791, 28.929333, 44.929558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.334106, 28.739668, 44.844994>,  <38.534634, 28.423559, 44.704052>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.334106, 28.739668, 44.844994> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324310, 0.205921, -0.923266,
		-0.802189, -0.577118, 0.153062,
		-0.501315, 0.790273, 0.352352,
		38.183712, 28.976749, 44.950699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.786243, 28.371605, 44.454079>,  <38.534634, 28.423559, 44.704052>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.786243, 28.371605, 44.454079> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.881763, 28.753313, 44.526016>,  <37.939075, 28.982338, 44.569180>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.881763, 28.753313, 44.526016>,  <37.786243, 28.371605, 44.454079>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.881763, 28.753313, 44.526016> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364606, 0.259766, -0.894194,
		-0.900019, 0.147964, 0.409965,
		0.238804, 0.954268, 0.179846,
		37.953403, 29.039593, 44.579971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.147835, 28.706455, 44.482273>,  <37.786243, 28.371605, 44.454079>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.147835, 28.706455, 44.482273> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.437828, 28.975235, 44.421772>,  <37.611824, 29.136503, 44.385471>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.437828, 28.975235, 44.421772>,  <37.147835, 28.706455, 44.482273>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.437828, 28.975235, 44.421772> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412112, 0.247242, -0.876946,
		-0.551867, 0.698108, 0.456166,
		0.724987, 0.671950, -0.151254,
		37.655323, 29.176821, 44.376396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.784199, 29.240929, 44.262703>,  <37.147835, 28.706455, 44.482273>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.784199, 29.240929, 44.262703> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.145580, 29.349682, 44.130131>,  <37.362411, 29.414934, 44.050587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.145580, 29.349682, 44.130131>,  <36.784199, 29.240929, 44.262703>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.145580, 29.349682, 44.130131> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420003, 0.406663, -0.811310,
		-0.085804, 0.872184, 0.481595,
		0.903458, 0.271885, -0.331426,
		37.416618, 29.431248, 44.030704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.682220, 30.059927, 44.005707>,  <36.784199, 29.240929, 44.262703>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.682220, 30.059927, 44.005707> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.013687, 29.921133, 43.830017>,  <37.212566, 29.837856, 43.724602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.013687, 29.921133, 43.830017>,  <36.682220, 30.059927, 44.005707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.013687, 29.921133, 43.830017> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263140, 0.451088, -0.852805,
		0.494041, 0.822266, 0.282494,
		0.828662, -0.346985, -0.439227,
		37.262287, 29.817038, 43.698250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.084789, 30.635839, 43.748371>,  <36.682220, 30.059927, 44.005707>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.084789, 30.635839, 43.748371> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.212440, 30.321527, 43.536442>,  <37.289032, 30.132940, 43.409286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.212440, 30.321527, 43.536442>,  <37.084789, 30.635839, 43.748371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.212440, 30.321527, 43.536442> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036314, 0.548503, -0.835360,
		0.947016, 0.285827, 0.146508,
		0.319128, -0.785779, -0.529820,
		37.308178, 30.085794, 43.377495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.680729, 30.822111, 43.251328>,  <37.084789, 30.635839, 43.748371>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.680729, 30.822111, 43.251328> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.524776, 30.481167, 43.111919>,  <37.431206, 30.276600, 43.028275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.524776, 30.481167, 43.111919>,  <37.680729, 30.822111, 43.251328>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.524776, 30.481167, 43.111919> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187047, 0.443887, -0.876343,
		0.901667, -0.276482, -0.332496,
		-0.389884, -0.852362, -0.348523,
		37.407810, 30.225458, 43.007362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.892719, 30.793419, 42.551926>,  <37.680729, 30.822111, 43.251328>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.892719, 30.793419, 42.551926> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.611256, 30.509829, 42.570774>,  <37.442379, 30.339674, 42.582085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.611256, 30.509829, 42.570774>,  <37.892719, 30.793419, 42.551926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.611256, 30.509829, 42.570774> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221887, 0.156251, -0.962472,
		0.675008, -0.687704, -0.267260,
		-0.703655, -0.708977, 0.047121,
		37.400158, 30.297134, 42.584911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.695271, 30.503702, 42.502590>,  <37.892719, 30.793419, 42.551926>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.695271, 30.503702, 42.502590> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.906715, 30.842085, 42.474499>,  <39.033581, 31.045115, 42.457642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.906715, 30.842085, 42.474499>,  <38.695271, 30.503702, 42.502590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.906715, 30.842085, 42.474499> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201386, -0.044602, 0.978496,
		0.824631, -0.531385, -0.193941,
		0.528608, 0.845956, -0.070233,
		39.065296, 31.095871, 42.453430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.257778, 30.306910, 42.941906>,  <38.695271, 30.503702, 42.502590>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.257778, 30.306910, 42.941906> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.252350, 30.703928, 42.893452>,  <39.249092, 30.942139, 42.864380>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.252350, 30.703928, 42.893452>,  <39.257778, 30.306910, 42.941906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.252350, 30.703928, 42.893452> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274904, 0.120177, 0.953932,
		0.961376, -0.020357, -0.274485,
		-0.013567, 0.992544, -0.121131,
		39.248280, 31.001692, 42.857113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.881844, 30.638474, 43.285034>,  <39.257778, 30.306910, 42.941906>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.881844, 30.638474, 43.285034> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.632473, 30.947599, 43.237534>,  <39.482853, 31.133076, 43.209034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.632473, 30.947599, 43.237534>,  <39.881844, 30.638474, 43.285034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.632473, 30.947599, 43.237534> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197662, 0.302717, 0.932358,
		0.756487, 0.557782, -0.341477,
		-0.623424, 0.772814, -0.118749,
		39.445446, 31.179443, 43.201908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.225838, 31.255381, 43.489738>,  <39.881844, 30.638474, 43.285034>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.225838, 31.255381, 43.489738> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.842514, 31.367178, 43.513493>,  <39.612518, 31.434258, 43.527744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.842514, 31.367178, 43.513493>,  <40.225838, 31.255381, 43.489738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.842514, 31.367178, 43.513493> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166175, 0.376092, 0.911559,
		0.232443, 0.883424, -0.406858,
		-0.958309, 0.279495, 0.059383,
		39.555023, 31.451027, 43.531307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.265831, 31.864326, 43.735607>,  <40.225838, 31.255381, 43.489738>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.265831, 31.864326, 43.735607> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.895451, 31.747393, 43.831238>,  <39.673222, 31.677233, 43.888618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.895451, 31.747393, 43.831238>,  <40.265831, 31.864326, 43.735607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.895451, 31.747393, 43.831238> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184536, 0.202102, 0.961822,
		-0.329494, 0.934716, -0.133190,
		-0.925948, -0.292337, 0.239080,
		39.617664, 31.659691, 43.902962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.940891, 32.470154, 44.021164>,  <40.265831, 31.864326, 43.735607>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.940891, 32.470154, 44.021164> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.760551, 32.141804, 44.161392>,  <39.652348, 31.944794, 44.245529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.760551, 32.141804, 44.161392>,  <39.940891, 32.470154, 44.021164>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.760551, 32.141804, 44.161392> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258522, 0.255836, 0.931512,
		-0.854343, 0.510601, 0.096871,
		-0.450848, -0.820874, 0.350573,
		39.625298, 31.895542, 44.266563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.586098, 32.709427, 44.569355>,  <39.940891, 32.470154, 44.021164>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.586098, 32.709427, 44.569355> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.572968, 32.313133, 44.622066>,  <39.565090, 32.075356, 44.653694>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.572968, 32.313133, 44.622066>,  <39.586098, 32.709427, 44.569355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.572968, 32.313133, 44.622066> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147500, 0.125604, 0.981054,
		-0.988517, 0.051644, 0.142010,
		-0.032829, -0.990735, 0.131779,
		39.563118, 32.015911, 44.661602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.280727, 32.643574, 45.283333>,  <39.586098, 32.709427, 44.569355>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.280727, 32.643574, 45.283333> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.463791, 32.296265, 45.206749>,  <39.573627, 32.087879, 45.160797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.463791, 32.296265, 45.206749>,  <39.280727, 32.643574, 45.283333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.463791, 32.296265, 45.206749> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322530, -0.038548, 0.945774,
		-0.828567, -0.494593, 0.262401,
		0.457658, -0.868269, -0.191461,
		39.601089, 32.035786, 45.149311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.090759, 32.161854, 45.848003>,  <39.280727, 32.643574, 45.283333>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.090759, 32.161854, 45.848003> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.410225, 31.970829, 45.701538>,  <39.601906, 31.856215, 45.613659>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.410225, 31.970829, 45.701538>,  <39.090759, 32.161854, 45.848003>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.410225, 31.970829, 45.701538> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335061, -0.152538, 0.929767,
		-0.499873, -0.865257, 0.038185,
		0.798662, -0.477559, -0.366163,
		39.649822, 31.827560, 45.591690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.256977, 31.605274, 46.352474>,  <39.090759, 32.161854, 45.848003>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.256977, 31.605274, 46.352474> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.596382, 31.664837, 46.149357>,  <39.800026, 31.700575, 46.027489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.596382, 31.664837, 46.149357>,  <39.256977, 31.605274, 46.352474>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.596382, 31.664837, 46.149357> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506916, 0.046639, 0.860733,
		0.151853, -0.987751, -0.035910,
		0.848514, 0.148908, -0.507789,
		39.850937, 31.709509, 45.997021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.707199, 30.921873, 46.312714>,  <39.256977, 31.605274, 46.352474>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.707199, 30.921873, 46.312714> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.941525, 31.243443, 46.271656>,  <40.082119, 31.436384, 46.247021>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.941525, 31.243443, 46.271656>,  <39.707199, 30.921873, 46.312714>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.941525, 31.243443, 46.271656> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311223, -0.106204, 0.944384,
		0.748309, -0.585176, -0.312414,
		0.585810, 0.803922, -0.102646,
		40.117268, 31.484619, 46.240864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.284637, 30.732836, 46.498421>,  <39.707199, 30.921873, 46.312714>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.284637, 30.732836, 46.498421> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.328243, 31.129459, 46.526489>,  <40.354404, 31.367434, 46.543331>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.328243, 31.129459, 46.526489>,  <40.284637, 30.732836, 46.498421>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.328243, 31.129459, 46.526489> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384990, -0.107197, 0.916674,
		0.916460, -0.072913, -0.393427,
		0.109011, 0.991561, 0.070171,
		40.360947, 31.426928, 46.547539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.924473, 30.844877, 46.846382>,  <40.284637, 30.732836, 46.498421>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.924473, 30.844877, 46.846382> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.739895, 31.194847, 46.905128>,  <40.629147, 31.404829, 46.940376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.739895, 31.194847, 46.905128>,  <40.924473, 30.844877, 46.846382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.739895, 31.194847, 46.905128> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250747, -0.030176, 0.967582,
		0.850996, 0.483314, -0.205461,
		-0.461446, 0.874927, 0.146869,
		40.601460, 31.457325, 46.949188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.419720, 31.098595, 47.332516>,  <40.924473, 30.844877, 46.846382>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.419720, 31.098595, 47.332516> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.110809, 31.352650, 47.337936>,  <40.925461, 31.505083, 47.341190>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.110809, 31.352650, 47.337936>,  <41.419720, 31.098595, 47.332516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.110809, 31.352650, 47.337936> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243282, 0.275968, 0.929869,
		0.586856, 0.721415, -0.367642,
		-0.772279, 0.635139, 0.013554,
		40.879128, 31.543192, 47.342003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.499622, 34.397919, 48.896194> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.794155, 34.127327, 48.901707>,  <34.970875, 33.964970, 48.905014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.794155, 34.127327, 48.901707>,  <34.499622, 34.397919, 48.896194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.794155, 34.127327, 48.901707> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056979, -0.082293, -0.994978,
		0.674220, 0.731846, -0.099140,
		0.736329, -0.676483, 0.013784,
		35.015053, 33.924381, 48.905842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.993538, 34.643944, 48.403210>,  <34.499622, 34.397919, 48.896194>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.993538, 34.643944, 48.403210> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.060322, 34.252983, 48.455067>,  <35.100391, 34.018406, 48.486179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.060322, 34.252983, 48.455067>,  <34.993538, 34.643944, 48.403210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.060322, 34.252983, 48.455067> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008242, -0.130098, -0.991467,
		0.985929, 0.166608, -0.013666,
		0.166964, -0.977403, 0.129640,
		35.110413, 33.959763, 48.493958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.585136, 34.503403, 48.032887>,  <34.993538, 34.643944, 48.403210>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.585136, 34.503403, 48.032887> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.389141, 34.156265, 48.065796>,  <35.271545, 33.947983, 48.085541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.389141, 34.156265, 48.065796>,  <35.585136, 34.503403, 48.032887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.389141, 34.156265, 48.065796> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040622, -0.117010, -0.992299,
		0.870784, -0.482870, 0.092587,
		-0.489985, -0.867839, 0.082276,
		35.242146, 33.895912, 48.090477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.987373, 34.000015, 47.621342>,  <35.585136, 34.503403, 48.032887>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.987373, 34.000015, 47.621342> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.606091, 33.884476, 47.657047>,  <35.377323, 33.815151, 47.678471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.606091, 33.884476, 47.657047>,  <35.987373, 34.000015, 47.621342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.606091, 33.884476, 47.657047> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039176, -0.174756, -0.983832,
		0.299779, -0.941290, 0.155262,
		-0.953204, -0.288850, 0.089264,
		35.320129, 33.797821, 47.683826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.005825, 33.463055, 47.139320>,  <35.987373, 34.000015, 47.621342>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.005825, 33.463055, 47.139320> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.608139, 33.483768, 47.176979>,  <35.369530, 33.496197, 47.199574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.608139, 33.483768, 47.176979>,  <36.005825, 33.463055, 47.139320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.608139, 33.483768, 47.176979> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097636, -0.069561, -0.992788,
		-0.044849, -0.996233, 0.074213,
		-0.994211, 0.051772, 0.094149,
		35.309875, 33.499302, 47.205223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.707458, 32.843033, 46.861763>,  <36.005825, 33.463055, 47.139320>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.707458, 32.843033, 46.861763> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.474262, 33.167534, 46.843906>,  <35.334343, 33.362232, 46.833191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.474262, 33.167534, 46.843906>,  <35.707458, 32.843033, 46.861763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.474262, 33.167534, 46.843906> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036376, -0.028827, -0.998922,
		-0.811662, -0.583989, -0.012704,
		-0.582994, 0.811250, -0.044641,
		35.299366, 33.410908, 46.830513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.181377, 32.703907, 46.395054>,  <35.707458, 32.843033, 46.861763>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.181377, 32.703907, 46.395054> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.171875, 33.101334, 46.439331>,  <35.166176, 33.339790, 46.465897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.171875, 33.101334, 46.439331>,  <35.181377, 32.703907, 46.395054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.171875, 33.101334, 46.439331> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019296, 0.110248, -0.993717,
		-0.999532, -0.025739, 0.016553,
		-0.023752, 0.993571, 0.110693,
		35.164749, 33.399406, 46.472538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.600780, 32.907768, 45.959015>,  <35.181377, 32.703907, 46.395054>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.600780, 32.907768, 45.959015> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.805450, 33.242500, 46.036884>,  <34.928253, 33.443340, 46.083607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.805450, 33.242500, 46.036884>,  <34.600780, 32.907768, 45.959015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.805450, 33.242500, 46.036884> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200884, 0.336822, -0.919890,
		-0.835365, 0.431579, 0.340450,
		0.511676, 0.836834, 0.194671,
		34.958954, 33.493549, 46.095287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.143017, 33.580364, 45.769733>,  <34.600780, 32.907768, 45.959015>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.143017, 33.580364, 45.769733> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.526386, 33.694069, 45.779606>,  <34.756409, 33.762291, 45.785530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.526386, 33.694069, 45.779606>,  <34.143017, 33.580364, 45.769733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.526386, 33.694069, 45.779606> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096082, 0.402977, -0.910153,
		-0.268670, 0.869944, 0.413537,
		0.958428, 0.284264, 0.024681,
		34.813915, 33.779346, 45.787010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.068401, 34.202007, 45.339813>,  <34.143017, 33.580364, 45.769733>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.068401, 34.202007, 45.339813> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.461269, 34.127052, 45.345963>,  <34.696991, 34.082081, 45.349651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.461269, 34.127052, 45.345963>,  <34.068401, 34.202007, 45.339813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.461269, 34.127052, 45.345963> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096656, 0.433113, -0.896142,
		0.161269, 0.881646, 0.443501,
		0.982166, -0.187387, 0.015369,
		34.755920, 34.070835, 45.350574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.384857, 34.767136, 45.230583>,  <34.068401, 34.202007, 45.339813>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.384857, 34.767136, 45.230583> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.641949, 34.490597, 45.098553>,  <34.796204, 34.324673, 45.019337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.641949, 34.490597, 45.098553>,  <34.384857, 34.767136, 45.230583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.641949, 34.490597, 45.098553> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090156, 0.496113, -0.863564,
		0.760772, 0.525278, 0.381194,
		0.642726, -0.691343, -0.330072,
		34.834766, 34.283195, 44.999531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.007381, 35.053944, 44.973301>,  <34.384857, 34.767136, 45.230583>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.007381, 35.053944, 44.973301> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.995045, 34.692856, 44.801655>,  <34.987640, 34.476204, 44.698666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.995045, 34.692856, 44.801655>,  <35.007381, 35.053944, 44.973301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.995045, 34.692856, 44.801655> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120880, 0.422800, -0.898125,
		0.992188, -0.079575, 0.096079,
		-0.030846, -0.902723, -0.429116,
		34.985790, 34.422039, 44.672920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.532646, 35.159298, 44.466251>,  <35.007381, 35.053944, 44.973301>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.532646, 35.159298, 44.466251> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.303055, 34.843731, 44.378468>,  <35.165298, 34.654392, 44.325798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.303055, 34.843731, 44.378468>,  <35.532646, 35.159298, 44.466251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.303055, 34.843731, 44.378468> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124651, 0.349057, -0.928774,
		0.809327, -0.505741, -0.298691,
		-0.573979, -0.788914, -0.219460,
		35.130859, 34.607056, 44.312630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.834270, 34.796745, 43.895191>,  <35.532646, 35.159298, 44.466251>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.834270, 34.796745, 43.895191> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.444199, 34.708450, 43.888344>,  <35.210155, 34.655472, 43.884235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.444199, 34.708450, 43.888344>,  <35.834270, 34.796745, 43.895191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.444199, 34.708450, 43.888344> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059537, 0.335908, -0.940011,
		0.213242, -0.915665, -0.340714,
		-0.975184, -0.220735, -0.017114,
		35.151642, 34.642231, 43.883209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.515614, 34.808395, 43.716194>,  <35.834270, 34.796745, 43.895191>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.515614, 34.808395, 43.716194> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.707321, 35.155685, 43.664837>,  <36.822346, 35.364059, 43.634022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.707321, 35.155685, 43.664837>,  <36.515614, 34.808395, 43.716194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.707321, 35.155685, 43.664837> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270284, -0.006829, 0.962756,
		0.835014, -0.496121, -0.237941,
		0.479269, 0.868226, -0.128391,
		36.851101, 35.416153, 43.626320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.120380, 34.758175, 44.069862>,  <36.515614, 34.808395, 43.716194>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.120380, 34.758175, 44.069862> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.122314, 35.154747, 44.017632>,  <37.123474, 35.392689, 43.986294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.122314, 35.154747, 44.017632>,  <37.120380, 34.758175, 44.069862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.122314, 35.154747, 44.017632> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210890, 0.126630, 0.969273,
		0.977498, -0.032220, -0.208470,
		0.004832, 0.991427, -0.130575,
		37.123764, 35.452175, 43.978458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.761688, 35.021755, 44.380104>,  <37.120380, 34.758175, 44.069862>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.761688, 35.021755, 44.380104> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.540894, 35.355289, 44.377914>,  <37.408417, 35.555408, 44.376598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.540894, 35.355289, 44.377914>,  <37.761688, 35.021755, 44.380104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.540894, 35.355289, 44.377914> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388283, 0.262838, 0.883262,
		0.737934, 0.485423, -0.468847,
		-0.551987, 0.833835, -0.005476,
		37.375298, 35.605438, 44.376270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.204468, 35.578297, 44.552391>,  <37.761688, 35.021755, 44.380104>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.204468, 35.578297, 44.552391> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.830948, 35.702065, 44.624256>,  <37.606834, 35.776325, 44.667374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.830948, 35.702065, 44.624256>,  <38.204468, 35.578297, 44.552391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.830948, 35.702065, 44.624256> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263109, 0.253561, 0.930850,
		0.242466, 0.916498, -0.318186,
		-0.933801, 0.309417, 0.179659,
		37.550808, 35.794891, 44.678154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.319599, 36.099533, 45.051422>,  <38.204468, 35.578297, 44.552391>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.319599, 36.099533, 45.051422> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.926468, 36.025730, 45.050266>,  <37.690590, 35.981449, 45.049572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.926468, 36.025730, 45.050266>,  <38.319599, 36.099533, 45.051422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.926468, 36.025730, 45.050266> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020564, 0.093971, 0.995363,
		-0.183377, 0.978329, -0.096151,
		-0.982828, -0.184504, -0.002886,
		37.631618, 35.970379, 45.049400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.008991, 36.664520, 45.457718>,  <38.319599, 36.099533, 45.051422>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.008991, 36.664520, 45.457718> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.784847, 36.333263, 45.463120>,  <37.650360, 36.134510, 45.466362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.784847, 36.333263, 45.463120>,  <38.008991, 36.664520, 45.457718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.784847, 36.333263, 45.463120> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082868, 0.072283, 0.993936,
		-0.824092, 0.555844, -0.109131,
		-0.560361, -0.828138, 0.013506,
		37.616737, 36.084824, 45.467171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.608387, 36.885757, 46.051552>,  <38.008991, 36.664520, 45.457718>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.608387, 36.885757, 46.051552> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.494041, 36.505882, 46.000362>,  <37.425434, 36.277958, 45.969646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.494041, 36.505882, 46.000362>,  <37.608387, 36.885757, 46.051552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.494041, 36.505882, 46.000362> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069973, -0.153881, 0.985609,
		-0.955712, 0.272795, 0.110441,
		-0.285864, -0.949686, -0.127978,
		37.408283, 36.220978, 45.961967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.960155, 36.759567, 46.347065>,  <37.608387, 36.885757, 46.051552>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.960155, 36.759567, 46.347065> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.160686, 36.413471, 46.349060>,  <37.281006, 36.205814, 46.350258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.160686, 36.413471, 46.349060>,  <36.960155, 36.759567, 46.347065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.160686, 36.413471, 46.349060> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137644, -0.074055, 0.987710,
		-0.854240, -0.495852, -0.156221,
		0.501327, -0.865244, 0.004990,
		37.311085, 36.153896, 46.350555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.558971, 36.357746, 46.853661>,  <36.960155, 36.759567, 46.347065>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.558971, 36.357746, 46.853661> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.908516, 36.169979, 46.803043>,  <37.118244, 36.057320, 46.772671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.908516, 36.169979, 46.803043>,  <36.558971, 36.357746, 46.853661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.908516, 36.169979, 46.803043> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062109, -0.150372, 0.986677,
		-0.482195, -0.870077, -0.102249,
		0.873860, -0.469420, -0.126548,
		37.170673, 36.029152, 46.765079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.452587, 35.877396, 47.232300>,  <36.558971, 36.357746, 46.853661>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.452587, 35.877396, 47.232300> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.849766, 35.896915, 47.189091>,  <37.088074, 35.908627, 47.163166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.849766, 35.896915, 47.189091>,  <36.452587, 35.877396, 47.232300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.849766, 35.896915, 47.189091> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117754, -0.301723, 0.946096,
		0.013577, -0.952146, -0.305342,
		0.992950, 0.048800, -0.108023,
		37.147652, 35.911556, 47.156685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.664619, 35.259113, 47.510677>,  <36.452587, 35.877396, 47.232300>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.664619, 35.259113, 47.510677> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.972221, 35.514763, 47.505692>,  <37.156780, 35.668152, 47.502701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.972221, 35.514763, 47.505692>,  <36.664619, 35.259113, 47.510677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.972221, 35.514763, 47.505692> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349851, -0.404462, 0.844994,
		0.535017, -0.654161, -0.534631,
		0.769000, 0.639127, -0.012465,
		37.202923, 35.706501, 47.501953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.323601, 34.758270, 47.610626>,  <36.664619, 35.259113, 47.510677>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.323601, 34.758270, 47.610626> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.404350, 35.131161, 47.730759>,  <37.452801, 35.354897, 47.802837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.404350, 35.131161, 47.730759>,  <37.323601, 34.758270, 47.610626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.404350, 35.131161, 47.730759> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436132, -0.360128, 0.824680,
		0.876947, -0.035498, -0.479275,
		0.201875, 0.932227, 0.300331,
		37.464912, 35.410828, 47.820858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.903690, 34.728508, 47.821766>,  <37.323601, 34.758270, 47.610626>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.903690, 34.728508, 47.821766> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.792416, 35.064678, 48.007793>,  <37.725651, 35.266380, 48.119411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.792416, 35.064678, 48.007793>,  <37.903690, 34.728508, 47.821766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.792416, 35.064678, 48.007793> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385556, -0.345764, 0.855450,
		0.879750, 0.417285, -0.227845,
		-0.278186, 0.840429, 0.465073,
		37.708961, 35.316807, 48.147316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469410, 34.856167, 48.244583>,  <37.903690, 34.728508, 47.821766>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.469410, 34.856167, 48.244583> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.185257, 35.080566, 48.414589>,  <38.014767, 35.215206, 48.516590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.185257, 35.080566, 48.414589>,  <38.469410, 34.856167, 48.244583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.185257, 35.080566, 48.414589> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234073, -0.381179, 0.894378,
		0.663750, 0.734836, 0.139469,
		-0.710384, 0.560998, 0.425013,
		37.972141, 35.248867, 48.542091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.122284, 35.320183, 48.330376>,  <38.469410, 34.856167, 48.244583>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.122284, 35.320183, 48.330376> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.396801, 35.029282, 48.326450>,  <39.561512, 34.854740, 48.324097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.396801, 35.029282, 48.326450>,  <39.122284, 35.320183, 48.330376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.396801, 35.029282, 48.326450> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022018, 0.034257, -0.999171,
		0.726989, 0.685511, 0.039523,
		0.686296, -0.727256, -0.009811,
		39.602688, 34.811104, 48.323505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.592358, 35.458221, 47.844612>,  <39.122284, 35.320183, 48.330376>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.592358, 35.458221, 47.844612> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.650127, 35.065365, 47.892841>,  <39.684788, 34.829651, 47.921780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.650127, 35.065365, 47.892841>,  <39.592358, 35.458221, 47.844612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.650127, 35.065365, 47.892841> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095241, -0.107483, -0.989634,
		0.984922, 0.154410, 0.078018,
		0.144424, -0.982143, 0.120569,
		39.693455, 34.770721, 47.929012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.198528, 35.300716, 47.497368>,  <39.592358, 35.458221, 47.844612>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.198528, 35.300716, 47.497368> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.014702, 34.946327, 47.522194>,  <39.904408, 34.733692, 47.537090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.014702, 34.946327, 47.522194>,  <40.198528, 35.300716, 47.497368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.014702, 34.946327, 47.522194> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061376, -0.101397, -0.992951,
		0.886020, -0.452518, 0.100976,
		-0.459567, -0.885972, 0.062066,
		39.876831, 34.680534, 47.540813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.646454, 34.903835, 47.194508>,  <40.198528, 35.300716, 47.497368>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.646454, 34.903835, 47.194508> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.301167, 34.702045, 47.186981>,  <40.093994, 34.580971, 47.182465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.301167, 34.702045, 47.186981>,  <40.646454, 34.903835, 47.194508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.301167, 34.702045, 47.186981> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062527, -0.069858, -0.995595,
		0.500937, -0.860596, 0.091846,
		-0.863222, -0.504474, -0.018816,
		40.042198, 34.550705, 47.181335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.702419, 34.198536, 46.830700>,  <40.646454, 34.903835, 47.194508>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.702419, 34.198536, 46.830700> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.305676, 34.247421, 46.816425>,  <40.067627, 34.276752, 46.807861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.305676, 34.247421, 46.816425>,  <40.702419, 34.198536, 46.830700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.305676, 34.247421, 46.816425> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004302, -0.312330, -0.949964,
		-0.127244, -0.942080, 0.310314,
		-0.991862, 0.122212, -0.035690,
		40.008118, 34.284084, 46.805717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.421066, 33.601437, 46.609825>,  <40.702419, 34.198536, 46.830700>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.421066, 33.601437, 46.609825> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.165012, 33.895252, 46.519775>,  <40.011379, 34.071541, 46.465744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.165012, 33.895252, 46.519775>,  <40.421066, 33.601437, 46.609825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.165012, 33.895252, 46.519775> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003711, -0.290070, -0.956998,
		-0.768257, -0.613439, 0.182957,
		-0.640130, 0.734542, -0.225124,
		39.972973, 34.115616, 46.452240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.120331, 33.440994, 45.952789>,  <40.421066, 33.601437, 46.609825>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.120331, 33.440994, 45.952789> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.006336, 33.823685, 45.976299>,  <39.937939, 34.053299, 45.990406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.006336, 33.823685, 45.976299>,  <40.120331, 33.440994, 45.952789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.006336, 33.823685, 45.976299> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027736, 0.069526, -0.997195,
		-0.958130, -0.282559, -0.046350,
		-0.284989, 0.956727, 0.058778,
		39.920841, 34.110703, 45.993931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.604176, 33.485180, 45.522255>,  <40.120331, 33.440994, 45.952789>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.604176, 33.485180, 45.522255> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.724884, 33.864727, 45.559322>,  <39.797310, 34.092457, 45.581562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.724884, 33.864727, 45.559322>,  <39.604176, 33.485180, 45.522255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.724884, 33.864727, 45.559322> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070279, 0.074792, -0.994719,
		-0.950787, 0.306687, -0.044116,
		0.301768, 0.948867, 0.092665,
		39.815414, 34.149387, 45.587120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.107201, 33.898365, 45.121162>,  <39.604176, 33.485180, 45.522255>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.107201, 33.898365, 45.121162> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.438961, 34.115494, 45.174000>,  <39.638016, 34.245770, 45.205704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.438961, 34.115494, 45.174000>,  <39.107201, 33.898365, 45.121162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.438961, 34.115494, 45.174000> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027744, 0.196140, -0.980183,
		-0.557970, 0.816626, 0.147619,
		0.829397, 0.542817, 0.132097,
		39.687778, 34.278339, 45.213627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.953510, 34.540825, 44.800907>,  <39.107201, 33.898365, 45.121162>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.953510, 34.540825, 44.800907> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.353249, 34.554367, 44.806015>,  <39.593090, 34.562492, 44.809082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.353249, 34.554367, 44.806015>,  <38.953510, 34.540825, 44.800907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.353249, 34.554367, 44.806015> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009291, 0.101084, -0.994835,
		-0.034976, 0.994302, 0.100703,
		0.999345, 0.033859, 0.012774,
		39.653053, 34.564526, 44.809849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.219368, 35.128334, 44.404587>,  <38.953510, 34.540825, 44.800907>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.219368, 35.128334, 44.404587> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.561016, 34.921009, 44.421745>,  <39.766003, 34.796616, 44.432041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.561016, 34.921009, 44.421745>,  <39.219368, 35.128334, 44.404587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.561016, 34.921009, 44.421745> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126858, 0.127628, -0.983676,
		0.504373, 0.845616, 0.174761,
		0.854116, -0.518310, 0.042901,
		39.817249, 34.765514, 44.434616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.531429, 35.546619, 44.100044>,  <39.219368, 35.128334, 44.404587>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.531429, 35.546619, 44.100044> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.720001, 35.197628, 44.048603>,  <39.833145, 34.988232, 44.017738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.720001, 35.197628, 44.048603>,  <39.531429, 35.546619, 44.100044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.720001, 35.197628, 44.048603> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035212, 0.164324, -0.985778,
		0.881202, 0.460194, 0.108188,
		0.471427, -0.872479, -0.128599,
		39.861427, 34.935883, 44.010025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.066113, 35.744057, 43.649742>,  <39.531429, 35.546619, 44.100044>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.066113, 35.744057, 43.649742> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.017452, 35.347130, 43.640800>,  <39.988255, 35.108974, 43.635433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.017452, 35.347130, 43.640800>,  <40.066113, 35.744057, 43.649742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.017452, 35.347130, 43.640800> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015241, 0.020656, -0.999671,
		0.992456, -0.121950, 0.012611,
		-0.121650, -0.992321, -0.022359,
		39.980957, 35.049435, 43.634094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.650108, 35.429008, 43.257454>,  <40.066113, 35.744057, 43.649742>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.650108, 35.429008, 43.257454> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.319065, 35.205009, 43.242134>,  <40.120438, 35.070610, 43.232944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.319065, 35.205009, 43.242134>,  <40.650108, 35.429008, 43.257454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.319065, 35.205009, 43.242134> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029894, 0.024159, -0.999261,
		0.560510, -0.828141, -0.003253,
		-0.827608, -0.559999, -0.038297,
		40.070782, 35.037010, 43.230644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.268793, 42.383579, 35.859325> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.085304, 42.408646, 35.504780>,  <27.975212, 42.423687, 35.292053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.085304, 42.408646, 35.504780>,  <28.268793, 42.383579, 35.859325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.085304, 42.408646, 35.504780> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184673, -0.982453, 0.026113,
		-0.869179, 0.175667, 0.462244,
		-0.458720, 0.062667, -0.886368,
		27.947689, 42.427444, 35.238869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.515228, 42.095875, 35.865643>,  <28.268793, 42.383579, 35.859325>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.515228, 42.095875, 35.865643> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.658363, 42.064487, 35.493450>,  <27.744244, 42.045654, 35.270134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.658363, 42.064487, 35.493450>,  <27.515228, 42.095875, 35.865643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.658363, 42.064487, 35.493450> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371122, -0.926334, -0.064606,
		-0.856868, 0.368440, -0.360597,
		0.357836, -0.078467, -0.930482,
		27.765715, 42.040947, 35.214306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.055716, 41.724014, 35.647018>,  <27.515228, 42.095875, 35.865643>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.055716, 41.724014, 35.647018> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.332594, 41.682693, 35.361305>,  <27.498720, 41.657902, 35.189877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.332594, 41.682693, 35.361305>,  <27.055716, 41.724014, 35.647018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.332594, 41.682693, 35.361305> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301782, -0.940454, -0.156443,
		-0.655587, 0.323845, -0.682151,
		0.692195, -0.103299, -0.714280,
		27.540253, 41.651703, 35.147022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.759365, 41.570805, 34.940674>,  <27.055716, 41.724014, 35.647018>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.759365, 41.570805, 34.940674> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.132692, 41.436836, 34.992432>,  <27.356689, 41.356453, 35.023487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.132692, 41.436836, 34.992432>,  <26.759365, 41.570805, 34.940674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.132692, 41.436836, 34.992432> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310699, -0.933985, -0.176462,
		0.179952, 0.124493, -0.975766,
		0.933319, -0.334924, 0.129392,
		27.412687, 41.336361, 35.031250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.786440, 40.904495, 34.596130>,  <26.759365, 41.570805, 34.940674>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.786440, 40.904495, 34.596130> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.135471, 40.860928, 34.786598>,  <27.344891, 40.834785, 34.900879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.135471, 40.860928, 34.786598>,  <26.786440, 40.904495, 34.596130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.135471, 40.860928, 34.786598> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135784, -0.990489, 0.022254,
		0.469220, -0.084075, -0.879070,
		0.872580, -0.108921, 0.476173,
		27.397245, 40.828251, 34.929451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.087994, 40.299370, 34.300243>,  <26.786440, 40.904495, 34.596130>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.087994, 40.299370, 34.300243> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.271759, 40.346756, 34.652359>,  <27.382019, 40.375187, 34.863628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.271759, 40.346756, 34.652359>,  <27.087994, 40.299370, 34.300243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.271759, 40.346756, 34.652359> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107494, -0.991197, 0.077290,
		0.881693, 0.059117, -0.468105,
		0.459415, 0.118465, 0.880286,
		27.409584, 40.382294, 34.916447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.682867, 39.828949, 34.283161>,  <27.087994, 40.299370, 34.300243>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.682867, 39.828949, 34.283161> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.610022, 39.922489, 34.665188>,  <27.566315, 39.978615, 34.894402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.610022, 39.922489, 34.665188>,  <27.682867, 39.828949, 34.283161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.610022, 39.922489, 34.665188> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215275, -0.938259, 0.270789,
		0.959422, 0.254916, 0.120526,
		-0.182113, 0.233855, 0.955064,
		27.555387, 39.992645, 34.951706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.208908, 39.623974, 34.593445>,  <27.682867, 39.828949, 34.283161>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.208908, 39.623974, 34.593445> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.920326, 39.646969, 34.869473>,  <27.747177, 39.660767, 35.035091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.920326, 39.646969, 34.869473>,  <28.208908, 39.623974, 34.593445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.920326, 39.646969, 34.869473> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161954, -0.954901, 0.248867,
		0.673256, 0.291306, 0.679608,
		-0.721455, 0.057486, 0.690071,
		27.703890, 39.664215, 35.076492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.482265, 39.301632, 35.218292>,  <28.208908, 39.623974, 34.593445>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.482265, 39.301632, 35.218292> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.083675, 39.318558, 35.247253>,  <27.844521, 39.328712, 35.264629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.083675, 39.318558, 35.247253>,  <28.482265, 39.301632, 35.218292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.083675, 39.318558, 35.247253> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011434, -0.923874, 0.382525,
		0.083078, 0.380350, 0.921103,
		-0.996477, 0.042311, 0.072405,
		27.784733, 39.331249, 35.268974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.302546, 39.008846, 35.938366>,  <28.482265, 39.301632, 35.218292>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.302546, 39.008846, 35.938366> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.972218, 38.997265, 35.713093>,  <27.774021, 38.990314, 35.577927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.972218, 38.997265, 35.713093>,  <28.302546, 39.008846, 35.938366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.972218, 38.997265, 35.713093> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207901, -0.912705, 0.351778,
		-0.524209, 0.407593, 0.747712,
		-0.825822, -0.028955, -0.563187,
		27.724470, 38.988579, 35.544136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.758612, 38.668606, 36.322956>,  <28.302546, 39.008846, 35.938366>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.758612, 38.668606, 36.322956> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.631802, 38.633804, 35.945190>,  <27.555716, 38.612923, 35.718529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.631802, 38.633804, 35.945190>,  <27.758612, 38.668606, 36.322956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.631802, 38.633804, 35.945190> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252247, -0.952183, 0.172391,
		-0.914258, 0.292879, 0.279920,
		-0.317024, -0.087001, -0.944419,
		27.536694, 38.607704, 35.661865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.218330, 38.212597, 36.447380>,  <27.758612, 38.668606, 36.322956>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.218330, 38.212597, 36.447380> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.291946, 38.199673, 36.054424>,  <27.336117, 38.191917, 35.818653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.291946, 38.199673, 36.054424>,  <27.218330, 38.212597, 36.447380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.291946, 38.199673, 36.054424> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108702, -0.993998, 0.012326,
		-0.976889, 0.104519, -0.186450,
		0.184042, -0.032309, -0.982387,
		27.347158, 38.189980, 35.759708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.717804, 37.778793, 36.095703>,  <27.218330, 38.212597, 36.447380>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.717804, 37.778793, 36.095703> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.051016, 37.780144, 35.874416>,  <27.250942, 37.780952, 35.741642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.051016, 37.780144, 35.874416>,  <26.717804, 37.778793, 36.095703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.051016, 37.780144, 35.874416> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071462, -0.990948, -0.113649,
		-0.548596, 0.134207, -0.825246,
		0.833028, 0.003373, -0.553220,
		27.300924, 37.781155, 35.708450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.655886, 37.102417, 35.639519>,  <26.717804, 37.778793, 36.095703>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.655886, 37.102417, 35.639519> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.016481, 37.248810, 35.547112>,  <27.232840, 37.336647, 35.491665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.016481, 37.248810, 35.547112>,  <26.655886, 37.102417, 35.639519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.016481, 37.248810, 35.547112> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309884, -0.918453, -0.245797,
		-0.302141, 0.149993, -0.941389,
		0.901489, 0.365987, -0.231022,
		27.286928, 37.358604, 35.477806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.006416, 36.765762, 34.965260>,  <26.655886, 37.102417, 35.639519>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.006416, 36.765762, 34.965260> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.310780, 36.887714, 35.194366>,  <27.493397, 36.960884, 35.331833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.310780, 36.887714, 35.194366>,  <27.006416, 36.765762, 34.965260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.310780, 36.887714, 35.194366> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413395, -0.908173, -0.065773,
		0.500123, 0.286829, -0.817072,
		0.760908, 0.304879, 0.572772,
		27.539053, 36.979179, 35.366199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.635269, 36.621105, 34.554733>,  <27.006416, 36.765762, 34.965260>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.635269, 36.621105, 34.554733> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.727427, 36.652916, 34.942669>,  <27.782721, 36.672005, 35.175430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.727427, 36.652916, 34.942669>,  <27.635269, 36.621105, 34.554733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.727427, 36.652916, 34.942669> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380857, -0.924518, -0.014662,
		0.895470, 0.372749, -0.243293,
		0.230394, 0.079531, 0.969842,
		27.796545, 36.676777, 35.233620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.266092, 36.228794, 34.595821>,  <27.635269, 36.621105, 34.554733>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.266092, 36.228794, 34.595821> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.126875, 36.272320, 34.968277>,  <28.043344, 36.298435, 35.191750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.126875, 36.272320, 34.968277>,  <28.266092, 36.228794, 34.595821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.126875, 36.272320, 34.968277> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222630, -0.955234, 0.194842,
		0.910660, 0.275113, 0.308237,
		-0.348042, 0.108812, 0.931142,
		28.022463, 36.304962, 35.247620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.811735, 35.844372, 35.032768>,  <28.266092, 36.228794, 34.595821>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.811735, 35.844372, 35.032768> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.464249, 35.854553, 35.230629>,  <28.255756, 35.860661, 35.349346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.464249, 35.854553, 35.230629>,  <28.811735, 35.844372, 35.032768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.464249, 35.854553, 35.230629> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059995, -0.985918, 0.156095,
		0.491661, 0.165279, 0.854958,
		-0.868717, 0.025453, 0.494653,
		28.203634, 35.862190, 35.379025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.926268, 35.395668, 35.704945>,  <28.811735, 35.844372, 35.032768>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.926268, 35.395668, 35.704945> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.530718, 35.418766, 35.650105>,  <28.293388, 35.432625, 35.617199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.530718, 35.418766, 35.650105>,  <28.926268, 35.395668, 35.704945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.530718, 35.418766, 35.650105> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089158, -0.967778, 0.235491,
		-0.119086, 0.245095, 0.962158,
		-0.988873, 0.057740, -0.137101,
		28.234056, 35.436089, 35.608974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.662651, 35.198582, 36.314568>,  <28.926268, 35.395668, 35.704945>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.662651, 35.198582, 36.314568> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.391232, 35.148102, 36.025116>,  <28.228380, 35.117813, 35.851444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.391232, 35.148102, 36.025116>,  <28.662651, 35.198582, 36.314568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.391232, 35.148102, 36.025116> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234675, -0.896261, 0.376356,
		-0.696059, 0.425195, 0.578542,
		-0.678549, -0.126197, -0.723633,
		28.187666, 35.110241, 35.808025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.316055, 35.559601, 36.617924>,  <28.662651, 35.198582, 36.314568>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.316055, 35.559601, 36.617924> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.554897, 35.616367, 36.933727>,  <29.698202, 35.650429, 37.123211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.554897, 35.616367, 36.933727>,  <29.316055, 35.559601, 36.617924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.554897, 35.616367, 36.933727> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469449, 0.859900, 0.200474,
		-0.650449, -0.490339, 0.580072,
		0.597104, 0.141916, 0.789510,
		29.734028, 35.658943, 37.170582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.930975, 36.018246, 36.831505>,  <29.316055, 35.559601, 36.617924>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.930975, 36.018246, 36.831505> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.268269, 36.048698, 37.044357>,  <29.470644, 36.066971, 37.172070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.268269, 36.048698, 37.044357>,  <28.930975, 36.018246, 36.831505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.268269, 36.048698, 37.044357> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251431, 0.930818, 0.265255,
		-0.475119, -0.357466, 0.804040,
		0.843235, 0.076133, 0.532127,
		29.521238, 36.071537, 37.203995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.744148, 36.432999, 37.526447>,  <28.930975, 36.018246, 36.831505>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.744148, 36.432999, 37.526447> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.129759, 36.458771, 37.423294>,  <29.361124, 36.474236, 37.361401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.129759, 36.458771, 37.423294>,  <28.744148, 36.432999, 37.526447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.129759, 36.458771, 37.423294> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007679, 0.976522, 0.215280,
		0.265702, -0.205555, 0.941886,
		0.964025, 0.064433, -0.257886,
		29.418966, 36.478100, 37.345928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.052662, 36.916775, 38.089569>,  <28.744148, 36.432999, 37.526447>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.052662, 36.916775, 38.089569> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.279507, 36.912239, 37.760143>,  <29.415613, 36.909519, 37.562489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.279507, 36.912239, 37.760143>,  <29.052662, 36.916775, 38.089569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.279507, 36.912239, 37.760143> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166994, 0.980721, 0.101490,
		0.806533, -0.195086, 0.558073,
		0.567113, -0.011340, -0.823562,
		29.449640, 36.908836, 37.513073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.588842, 37.370102, 38.239250>,  <29.052662, 36.916775, 38.089569>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.588842, 37.370102, 38.239250> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.585886, 37.364639, 37.839298>,  <29.584112, 37.361362, 37.599327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.585886, 37.364639, 37.839298>,  <29.588842, 37.370102, 38.239250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.585886, 37.364639, 37.839298> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102254, 0.994655, -0.014346,
		0.994731, -0.102348, -0.005959,
		-0.007395, -0.013661, -0.999879,
		29.583668, 37.360542, 37.539333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.204218, 37.665714, 38.039085>,  <29.588842, 37.370102, 38.239250>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.204218, 37.665714, 38.039085> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.989756, 37.705032, 37.703735>,  <29.861078, 37.728622, 37.502525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.989756, 37.705032, 37.703735>,  <30.204218, 37.665714, 38.039085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.989756, 37.705032, 37.703735> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388009, 0.910751, -0.141358,
		0.749658, -0.401088, -0.526441,
		-0.536154, 0.098294, -0.838377,
		29.828909, 37.734520, 37.452221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.681261, 37.886215, 37.585449>,  <30.204218, 37.665714, 38.039085>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.681261, 37.886215, 37.585449> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.338640, 38.007626, 37.418507>,  <30.133068, 38.080471, 37.318340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.338640, 38.007626, 37.418507>,  <30.681261, 37.886215, 37.585449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.338640, 38.007626, 37.418507> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463390, 0.808322, -0.363160,
		0.227133, -0.504466, -0.833021,
		-0.856551, 0.303528, -0.417361,
		30.081675, 38.098682, 37.293297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.884407, 38.068451, 36.897888>,  <30.681261, 37.886215, 37.585449>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.884407, 38.068451, 36.897888> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.521046, 38.224327, 36.958481>,  <30.303028, 38.317852, 36.994839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.521046, 38.224327, 36.958481>,  <30.884407, 38.068451, 36.897888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.521046, 38.224327, 36.958481> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307336, 0.868025, -0.389970,
		-0.283459, -0.307694, -0.908282,
		-0.908403, 0.389688, 0.151484,
		30.248526, 38.341232, 37.003925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.783098, 38.507702, 36.272747>,  <30.884407, 38.068451, 36.897888>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.783098, 38.507702, 36.272747> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.534378, 38.639896, 36.556759>,  <30.385147, 38.719212, 36.727165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.534378, 38.639896, 36.556759>,  <30.783098, 38.507702, 36.272747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.534378, 38.639896, 36.556759> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113687, 0.935090, -0.335680,
		-0.774881, -0.128004, -0.619010,
		-0.621799, 0.330486, 0.710032,
		30.347837, 38.739040, 36.769768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.511003, 39.066402, 35.902813>,  <30.783098, 38.507702, 36.272747>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.511003, 39.066402, 35.902813> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.441317, 39.100761, 36.295193>,  <30.399504, 39.121376, 36.530621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.441317, 39.100761, 36.295193>,  <30.511003, 39.066402, 35.902813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.441317, 39.100761, 36.295193> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154400, 0.986249, -0.058942,
		-0.972527, 0.141190, -0.185085,
		-0.174218, 0.085900, 0.980953,
		30.389051, 39.126530, 36.589478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.109697, 39.639641, 36.021984>,  <30.511003, 39.066402, 35.902813>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.109697, 39.639641, 36.021984> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.317263, 39.583748, 36.359318>,  <30.441801, 39.550213, 36.561718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.317263, 39.583748, 36.359318>,  <30.109697, 39.639641, 36.021984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.317263, 39.583748, 36.359318> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200664, 0.978895, 0.038724,
		-0.830942, 0.149132, 0.535999,
		0.518911, -0.139733, 0.843330,
		30.472937, 39.541828, 36.612316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.747442, 40.110329, 36.487659>,  <30.109697, 39.639641, 36.021984>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.747442, 40.110329, 36.487659> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.115210, 40.024719, 36.619637>,  <30.335871, 39.973354, 36.698822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.115210, 40.024719, 36.619637>,  <29.747442, 40.110329, 36.487659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.115210, 40.024719, 36.619637> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225669, 0.974199, 0.003084,
		-0.322089, 0.071622, 0.943996,
		0.919420, -0.214024, 0.329941,
		30.391035, 39.960510, 36.718620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.896103, 40.757118, 36.855900>,  <29.747442, 40.110329, 36.487659>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.896103, 40.757118, 36.855900> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.241854, 40.559235, 36.819851>,  <30.449305, 40.440506, 36.798222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.241854, 40.559235, 36.819851>,  <29.896103, 40.757118, 36.855900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.241854, 40.559235, 36.819851> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482839, 0.866595, -0.126013,
		0.140435, 0.065410, 0.987927,
		0.864375, -0.494706, -0.090118,
		30.501165, 40.410824, 36.792816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.332476, 41.031761, 37.395756>,  <29.896103, 40.757118, 36.855900>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.332476, 41.031761, 37.395756> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.550072, 40.885746, 37.093548>,  <30.680630, 40.798138, 36.912224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.550072, 40.885746, 37.093548>,  <30.332476, 41.031761, 37.395756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.550072, 40.885746, 37.093548> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355054, 0.915969, -0.186918,
		0.760270, -0.166570, 0.627889,
		0.543992, -0.365042, -0.755525,
		30.713268, 40.776234, 36.866890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.990561, 41.446651, 37.397934>,  <30.332476, 41.031761, 37.395756>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.990561, 41.446651, 37.397934> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.971422, 41.262897, 37.043156>,  <30.959940, 41.152645, 36.830288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.971422, 41.262897, 37.043156>,  <30.990561, 41.446651, 37.397934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.971422, 41.262897, 37.043156> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346560, 0.825168, -0.446087,
		0.936807, -0.328723, 0.119725,
		-0.047846, -0.459389, -0.886945,
		30.957069, 41.125080, 36.777073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.512339, 41.789291, 37.051991>,  <30.990561, 41.446651, 37.397934>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.512339, 41.789291, 37.051991> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.265745, 41.660336, 36.764656>,  <31.117788, 41.582962, 36.592255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.265745, 41.660336, 36.764656>,  <31.512339, 41.789291, 37.051991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.265745, 41.660336, 36.764656> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241912, 0.790649, -0.562453,
		0.749283, -0.520519, -0.409434,
		-0.616485, -0.322389, -0.718339,
		31.080801, 41.563618, 36.549152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.772701, 42.169079, 36.404724>,  <31.512339, 41.789291, 37.051991>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.772701, 42.169079, 36.404724> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.426212, 42.005219, 36.290291>,  <31.218319, 41.906902, 36.221630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.426212, 42.005219, 36.290291>,  <31.772701, 42.169079, 36.404724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.426212, 42.005219, 36.290291> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054217, 0.646243, -0.761203,
		0.496704, -0.643862, -0.582002,
		-0.866225, -0.409648, -0.286083,
		31.166346, 41.882324, 36.204464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.834785, 42.196564, 35.630955>,  <31.772701, 42.169079, 36.404724>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.834785, 42.196564, 35.630955> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.457340, 42.189175, 35.763168>,  <31.230873, 42.184742, 35.842495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.457340, 42.189175, 35.763168>,  <31.834785, 42.196564, 35.630955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.457340, 42.189175, 35.763168> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218356, 0.785183, -0.579490,
		-0.248827, -0.618989, -0.744942,
		-0.943613, -0.018469, 0.330535,
		31.174255, 42.183636, 35.862328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.496168, 42.401302, 35.064102>,  <31.834785, 42.196564, 35.630955>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.496168, 42.401302, 35.064102> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.199492, 42.447556, 35.328381>,  <31.021486, 42.475307, 35.486950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.199492, 42.447556, 35.328381>,  <31.496168, 42.401302, 35.064102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.199492, 42.447556, 35.328381> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493113, 0.573720, -0.653977,
		-0.454679, -0.810848, -0.368501,
		-0.741692, 0.115637, 0.660698,
		30.976984, 42.482246, 35.526588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.018082, 42.573643, 34.649258>,  <31.496168, 42.401302, 35.064102>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.018082, 42.573643, 34.649258> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.841146, 42.657505, 34.998058>,  <30.734985, 42.707821, 35.207336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.841146, 42.657505, 34.998058>,  <31.018082, 42.573643, 34.649258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.841146, 42.657505, 34.998058> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603076, 0.650110, -0.462230,
		-0.663804, -0.730343, -0.161131,
		-0.442339, 0.209655, 0.871998,
		30.708445, 42.720402, 35.259659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.277672, 42.506813, 34.571014>,  <31.018082, 42.573643, 34.649258>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.277672, 42.506813, 34.571014> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.349573, 42.752800, 34.878132>,  <30.392714, 42.900391, 35.062401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.349573, 42.752800, 34.878132>,  <30.277672, 42.506813, 34.571014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.349573, 42.752800, 34.878132> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599030, 0.687535, -0.410437,
		-0.780289, -0.386153, 0.491971,
		0.179755, 0.614965, 0.767793,
		30.403500, 42.937290, 35.108471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.638975, 42.771252, 34.734806>,  <30.277672, 42.506813, 34.571014>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.638975, 42.771252, 34.734806> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.913372, 43.023479, 34.880020>,  <30.078011, 43.174816, 34.967148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.913372, 43.023479, 34.880020>,  <29.638975, 42.771252, 34.734806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.913372, 43.023479, 34.880020> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473056, 0.765618, -0.435943,
		-0.552839, 0.127319, 0.823504,
		0.685993, 0.630570, 0.363035,
		30.119169, 43.212650, 34.988930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<41.748135, 31.576984, 47.778503> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.357040, 31.660709, 47.784489>,  <41.122383, 31.710945, 47.788078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.357040, 31.660709, 47.784489>,  <41.748135, 31.576984, 47.778503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.357040, 31.660709, 47.784489> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047990, 0.153626, 0.986963,
		0.204287, 0.965705, -0.160250,
		-0.977734, 0.209314, 0.014960,
		41.063721, 31.723503, 47.788975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.698521, 32.112236, 48.105587>,  <41.748135, 31.576984, 47.778503>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.698521, 32.112236, 48.105587> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.328384, 31.966167, 48.146358>,  <41.106304, 31.878525, 48.170822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.328384, 31.966167, 48.146358>,  <41.698521, 32.112236, 48.105587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.328384, 31.966167, 48.146358> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035858, 0.183355, 0.982393,
		-0.377434, 0.912704, -0.156572,
		-0.925342, -0.365174, 0.101932,
		41.050781, 31.856615, 48.176937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.310856, 32.617226, 48.610416>,  <41.698521, 32.112236, 48.105587>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.310856, 32.617226, 48.610416> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.141579, 32.254818, 48.612976>,  <41.040012, 32.037373, 48.614513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.141579, 32.254818, 48.612976>,  <41.310856, 32.617226, 48.610416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.141579, 32.254818, 48.612976> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164637, 0.083844, 0.982784,
		-0.890958, 0.414850, -0.184646,
		-0.423190, -0.906018, 0.006402,
		41.014622, 31.983013, 48.614895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.738262, 32.629528, 49.126671>,  <41.310856, 32.617226, 48.610416>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.738262, 32.629528, 49.126671> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.813637, 32.240696, 49.070747>,  <40.858860, 32.007397, 49.037193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.813637, 32.240696, 49.070747>,  <40.738262, 32.629528, 49.126671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.813637, 32.240696, 49.070747> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115995, -0.163387, 0.979719,
		-0.975212, -0.168395, -0.143544,
		0.188433, -0.972084, -0.139804,
		40.870167, 31.949070, 49.028805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.229069, 32.288921, 49.586700>,  <40.738262, 32.629528, 49.126671>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.229069, 32.288921, 49.586700> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.510735, 32.016647, 49.505886>,  <40.679733, 31.853283, 49.457397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.510735, 32.016647, 49.505886>,  <40.229069, 32.288921, 49.586700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.510735, 32.016647, 49.505886> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120694, -0.395149, 0.910654,
		-0.699703, -0.616866, -0.360405,
		0.704165, -0.680686, -0.202035,
		40.721985, 31.812441, 49.445274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.998577, 31.650980, 49.878460>,  <40.229069, 32.288921, 49.586700>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.998577, 31.650980, 49.878460> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.384560, 31.560511, 49.825249>,  <40.616150, 31.506229, 49.793320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.384560, 31.560511, 49.825249>,  <39.998577, 31.650980, 49.878460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.384560, 31.560511, 49.825249> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020832, -0.439351, 0.898074,
		-0.261566, -0.869377, -0.419244,
		0.964961, -0.226172, -0.133031,
		40.674049, 31.492659, 49.785339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.073811, 30.912506, 50.126743>,  <39.998577, 31.650980, 49.878460>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.073811, 30.912506, 50.126743> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.433731, 31.086237, 50.143345>,  <40.649681, 31.190475, 50.153305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.433731, 31.086237, 50.143345>,  <40.073811, 30.912506, 50.126743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.433731, 31.086237, 50.143345> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085388, -0.268587, 0.959463,
		0.427870, -0.859779, -0.278761,
		0.899798, 0.434328, 0.041505,
		40.703671, 31.216536, 50.155796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.623894, 30.494684, 50.379444>,  <40.073811, 30.912506, 50.126743>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.623894, 30.494684, 50.379444> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.804024, 30.844559, 50.451149>,  <40.912102, 31.054483, 50.494171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.804024, 30.844559, 50.451149>,  <40.623894, 30.494684, 50.379444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.804024, 30.844559, 50.451149> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181991, -0.286473, 0.940645,
		0.874123, -0.390969, -0.288190,
		0.450321, 0.874687, 0.179260,
		40.939121, 31.106964, 50.504929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.211998, 30.299381, 50.764942>,  <40.623894, 30.494684, 50.379444>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.211998, 30.299381, 50.764942> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.156166, 30.690344, 50.828426>,  <41.122665, 30.924921, 50.866516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.156166, 30.690344, 50.828426>,  <41.211998, 30.299381, 50.764942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.156166, 30.690344, 50.828426> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173817, -0.133610, 0.975672,
		0.974835, 0.163775, -0.151240,
		-0.139583, 0.977408, 0.158715,
		41.114292, 30.983566, 50.876041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.679134, 30.532104, 51.325241>,  <41.211998, 30.299381, 50.764942>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.679134, 30.532104, 51.325241> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.411385, 30.829205, 51.318794>,  <41.250736, 31.007465, 51.314926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.411385, 30.829205, 51.318794>,  <41.679134, 30.532104, 51.325241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.411385, 30.829205, 51.318794> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008868, 0.029685, 0.999520,
		0.742874, 0.668908, -0.026457,
		-0.669373, 0.742752, -0.016120,
		41.210571, 31.052031, 51.313957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.816586, 30.956236, 51.971802>,  <41.679134, 30.532104, 51.325241>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.816586, 30.956236, 51.971802> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.448334, 31.049986, 51.846889>,  <41.227383, 31.106236, 51.771942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.448334, 31.049986, 51.846889>,  <41.816586, 30.956236, 51.971802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.448334, 31.049986, 51.846889> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276073, 0.174819, 0.945104,
		0.276102, 0.956298, -0.096238,
		-0.920626, 0.234376, -0.312276,
		41.172146, 31.120298, 51.753208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.667542, 31.647087, 52.223186>,  <41.816586, 30.956236, 51.971802>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.667542, 31.647087, 52.223186> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.353153, 31.403118, 52.182701>,  <41.164520, 31.256737, 52.158409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.353153, 31.403118, 52.182701>,  <41.667542, 31.647087, 52.223186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.353153, 31.403118, 52.182701> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114085, -0.017812, 0.993311,
		-0.607646, 0.792261, -0.055583,
		-0.785971, -0.609923, -0.101209,
		41.117363, 31.220140, 52.152340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.219162, 31.922451, 52.755589>,  <41.667542, 31.647087, 52.223186>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.219162, 31.922451, 52.755589> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.108410, 31.546236, 52.676876>,  <41.041958, 31.320507, 52.629646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.108410, 31.546236, 52.676876>,  <41.219162, 31.922451, 52.755589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.108410, 31.546236, 52.676876> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325003, -0.101059, 0.940298,
		-0.904273, 0.324309, -0.277696,
		-0.276883, -0.940538, -0.196786,
		41.025345, 31.264074, 52.617840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.681473, 31.915792, 53.067001>,  <41.219162, 31.922451, 52.755589>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.681473, 31.915792, 53.067001> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.860859, 31.559484, 53.037586>,  <40.968491, 31.345699, 53.019939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.860859, 31.559484, 53.037586>,  <40.681473, 31.915792, 53.067001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.860859, 31.559484, 53.037586> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225728, -0.192478, 0.954986,
		-0.864829, -0.411675, -0.287391,
		0.448461, -0.890772, -0.073534,
		40.995396, 31.292253, 53.015526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.633793, 32.332043, 53.724796>,  <40.681473, 31.915792, 53.067001>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.633793, 32.332043, 53.724796> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.660561, 32.724651, 53.796509>,  <40.676620, 32.960217, 53.839539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.660561, 32.724651, 53.796509>,  <40.633793, 32.332043, 53.724796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.660561, 32.724651, 53.796509> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234586, 0.190128, -0.953321,
		-0.969789, 0.021741, 0.242974,
		0.066923, 0.981518, 0.179284,
		40.680637, 33.019108, 53.850292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.984722, 32.622074, 53.469898>,  <40.633793, 32.332043, 53.724796>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.984722, 32.622074, 53.469898> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.247971, 32.921562, 53.501640>,  <40.405918, 33.101254, 53.520687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.247971, 32.921562, 53.501640>,  <39.984722, 32.622074, 53.469898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.247971, 32.921562, 53.501640> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262841, 0.327237, -0.907651,
		-0.705546, 0.576484, 0.412155,
		0.658118, 0.748721, 0.079357,
		40.445408, 33.146179, 53.525448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.597538, 33.108162, 53.241749>,  <39.984722, 32.622074, 53.469898>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.597538, 33.108162, 53.241749> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.957592, 33.276527, 53.196884>,  <40.173626, 33.377548, 53.169968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.957592, 33.276527, 53.196884>,  <39.597538, 33.108162, 53.241749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.957592, 33.276527, 53.196884> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230054, 0.240714, -0.942938,
		-0.369901, 0.874577, 0.313509,
		0.900138, 0.420918, -0.112160,
		40.227634, 33.402802, 53.163235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.469788, 33.764927, 52.894161>,  <39.597538, 33.108162, 53.241749>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.469788, 33.764927, 52.894161> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.858601, 33.696514, 52.829792>,  <40.091888, 33.655464, 52.791172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.858601, 33.696514, 52.829792>,  <39.469788, 33.764927, 52.894161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.858601, 33.696514, 52.829792> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113721, 0.256729, -0.959770,
		0.205467, 0.951230, 0.230099,
		0.972034, -0.171034, -0.160924,
		40.150211, 33.645203, 52.781513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.718330, 34.376118, 52.696182>,  <39.469788, 33.764927, 52.894161>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.718330, 34.376118, 52.696182> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.992908, 34.112904, 52.572395>,  <40.157658, 33.954975, 52.498123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.992908, 34.112904, 52.572395>,  <39.718330, 34.376118, 52.696182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.992908, 34.112904, 52.572395> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098648, 0.505912, -0.856926,
		0.720456, 0.557706, 0.412197,
		0.686448, -0.658040, -0.309471,
		40.198841, 33.915493, 52.479553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.303432, 34.687607, 52.352913>,  <39.718330, 34.376118, 52.696182>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.303432, 34.687607, 52.352913> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.296322, 34.320152, 52.195030>,  <40.292053, 34.099682, 52.100300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.296322, 34.320152, 52.195030>,  <40.303432, 34.687607, 52.352913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.296322, 34.320152, 52.195030> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038143, 0.393860, -0.918378,
		0.999114, -0.031384, 0.028037,
		-0.017780, -0.918634, -0.394709,
		40.290989, 34.044563, 52.076618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.633133, 34.831745, 51.655769>,  <40.303432, 34.687607, 52.352913>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.633133, 34.831745, 51.655769> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.470699, 34.466213, 51.657413>,  <40.373238, 34.246895, 51.658401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.470699, 34.466213, 51.657413>,  <40.633133, 34.831745, 51.655769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.470699, 34.466213, 51.657413> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003660, -0.002872, -0.999989,
		0.913828, -0.406096, -0.002178,
		-0.406085, -0.913826, 0.004111,
		40.348873, 34.192066, 51.658646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.056953, 34.425343, 51.232231>,  <40.633133, 34.831745, 51.655769>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.056953, 34.425343, 51.232231> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.689133, 34.270943, 51.261711>,  <40.468441, 34.178303, 51.279400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.689133, 34.270943, 51.261711>,  <41.056953, 34.425343, 51.232231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.689133, 34.270943, 51.261711> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169654, 0.220783, -0.960454,
		0.354463, -0.895690, -0.268507,
		-0.919551, -0.385999, 0.073698,
		40.413269, 34.155144, 51.283821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.938995, 33.924477, 50.665630>,  <41.056953, 34.425343, 51.232231>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.938995, 33.924477, 50.665630> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.582016, 34.050682, 50.794617>,  <40.367828, 34.126404, 50.872009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.582016, 34.050682, 50.794617>,  <40.938995, 33.924477, 50.665630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.582016, 34.050682, 50.794617> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258252, 0.228795, -0.938594,
		-0.369915, -0.920927, -0.122707,
		-0.892451, 0.315510, 0.322465,
		40.314281, 34.145336, 50.891357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.600178, 33.530342, 50.161339>,  <40.938995, 33.924477, 50.665630>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.600178, 33.530342, 50.161339> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.354103, 33.800835, 50.323456>,  <40.206459, 33.963131, 50.420727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.354103, 33.800835, 50.323456>,  <40.600178, 33.530342, 50.161339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.354103, 33.800835, 50.323456> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413331, 0.161125, -0.896212,
		-0.671347, -0.718857, 0.180384,
		-0.615184, 0.676228, 0.405297,
		40.169548, 34.003704, 50.445045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.950611, 33.418850, 49.886398>,  <40.600178, 33.530342, 50.161339>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.950611, 33.418850, 49.886398> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.948250, 33.802593, 49.999249>,  <39.946831, 34.032841, 50.066959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.948250, 33.802593, 49.999249>,  <39.950611, 33.418850, 49.886398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.948250, 33.802593, 49.999249> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340528, 0.263336, -0.902604,
		-0.940216, -0.101401, 0.325134,
		-0.005905, 0.959360, 0.282123,
		39.946480, 34.090401, 50.083885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.255043, 33.595531, 49.877644>,  <39.950611, 33.418850, 49.886398>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.255043, 33.595531, 49.877644> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.501148, 33.901428, 49.801094>,  <39.648811, 34.084965, 49.755165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.501148, 33.901428, 49.801094>,  <39.255043, 33.595531, 49.877644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.501148, 33.901428, 49.801094> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348294, 0.045922, -0.936260,
		-0.707205, 0.642703, 0.294608,
		0.615266, 0.764737, -0.191373,
		39.685730, 34.130848, 49.743683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.926289, 33.992172, 49.447193>,  <39.255043, 33.595531, 49.877644>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.926289, 33.992172, 49.447193> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.282364, 34.164577, 49.388145>,  <39.496010, 34.268021, 49.352715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.282364, 34.164577, 49.388145>,  <38.926289, 33.992172, 49.447193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.282364, 34.164577, 49.388145> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207979, 0.096159, -0.973395,
		-0.405351, 0.897207, 0.175241,
		0.890188, 0.431014, -0.147623,
		39.549419, 34.293880, 49.343857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.737606, 34.589458, 49.016338>,  <38.926289, 33.992172, 49.447193>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.737606, 34.589458, 49.016338> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.111126, 34.469372, 48.938473>,  <39.335236, 34.397320, 48.891754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.111126, 34.469372, 48.938473>,  <38.737606, 34.589458, 49.016338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.111126, 34.469372, 48.938473> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148619, 0.169461, -0.974267,
		0.325481, 0.938697, 0.113624,
		0.933796, -0.300219, -0.194664,
		39.391266, 34.379307, 48.880074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.839928, 35.393192, 49.140854>,  <38.737606, 34.589458, 49.016338>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.839928, 35.393192, 49.140854> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.440853, 35.372833, 49.122803>,  <38.201408, 35.360619, 49.111973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.440853, 35.372833, 49.122803>,  <38.839928, 35.393192, 49.140854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.440853, 35.372833, 49.122803> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031032, -0.249776, 0.967806,
		-0.060533, 0.966965, 0.247618,
		-0.997684, -0.050900, -0.045126,
		38.141548, 35.357563, 49.109264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.498730, 35.632690, 49.791985>,  <38.839928, 35.393192, 49.140854>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.498730, 35.632690, 49.791985> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.152554, 35.458469, 49.692951>,  <37.944847, 35.353935, 49.633530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.152554, 35.458469, 49.692951>,  <38.498730, 35.632690, 49.791985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.152554, 35.458469, 49.692951> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146090, -0.253310, 0.956291,
		-0.479234, 0.863786, 0.155595,
		-0.865444, -0.435556, -0.247585,
		37.892921, 35.327801, 49.618675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.006420, 35.968506, 50.215801>,  <38.498730, 35.632690, 49.791985>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.006420, 35.968506, 50.215801> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.859772, 35.610874, 50.112873>,  <37.771782, 35.396294, 50.051117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.859772, 35.610874, 50.112873>,  <38.006420, 35.968506, 50.215801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.859772, 35.610874, 50.112873> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158765, -0.212403, 0.964199,
		-0.916725, 0.394347, -0.064077,
		-0.366618, -0.894078, -0.257324,
		37.749786, 35.342651, 50.035675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.351654, 35.893135, 50.558765>,  <38.006420, 35.968506, 50.215801>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.351654, 35.893135, 50.558765> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.454594, 35.518566, 50.463360>,  <37.516357, 35.293823, 50.406116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.454594, 35.518566, 50.463360>,  <37.351654, 35.893135, 50.558765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.454594, 35.518566, 50.463360> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266503, -0.306030, 0.913959,
		-0.928843, -0.171641, -0.328315,
		0.257347, -0.936421, -0.238511,
		37.531799, 35.237640, 50.391808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.782970, 35.463440, 50.753960>,  <37.351654, 35.893135, 50.558765>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.782970, 35.463440, 50.753960> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.110340, 35.233669, 50.748093>,  <37.306763, 35.095806, 50.744572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.110340, 35.233669, 50.748093>,  <36.782970, 35.463440, 50.753960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.110340, 35.233669, 50.748093> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236778, -0.360399, 0.902247,
		-0.523565, -0.734945, -0.430971,
		0.818423, -0.574429, -0.014673,
		37.355865, 35.061340, 50.743690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.506207, 34.870064, 51.184513>,  <36.782970, 35.463440, 50.753960>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.506207, 34.870064, 51.184513> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.905964, 34.862850, 51.172661>,  <37.145821, 34.858521, 51.165550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.905964, 34.862850, 51.172661>,  <36.506207, 34.870064, 51.184513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.905964, 34.862850, 51.172661> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020998, -0.365399, 0.930614,
		-0.027612, -0.930677, -0.364800,
		0.999398, -0.018036, -0.029632,
		37.205784, 34.857441, 51.163773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.682758, 34.178471, 51.412945>,  <36.506207, 34.870064, 51.184513>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.682758, 34.178471, 51.412945> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.014618, 34.392097, 51.477997>,  <37.213734, 34.520275, 51.517029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.014618, 34.392097, 51.477997>,  <36.682758, 34.178471, 51.412945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.014618, 34.392097, 51.477997> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109535, -0.441355, 0.890622,
		0.547433, -0.721092, -0.424670,
		0.829650, 0.534072, 0.162627,
		37.263512, 34.552319, 51.526783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.361439, 33.436832, 51.303593>,  <36.682758, 34.178471, 51.412945>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.361439, 33.436832, 51.303593> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.213863, 33.073284, 51.381393>,  <36.125317, 32.855156, 51.428074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.213863, 33.073284, 51.381393>,  <36.361439, 33.436832, 51.303593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.213863, 33.073284, 51.381393> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482697, 0.008534, -0.875746,
		0.794283, -0.416982, -0.441860,
		-0.368941, -0.908875, 0.194498,
		36.103180, 32.800621, 51.439743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.609501, 32.902817, 50.825802>,  <36.361439, 33.436832, 51.303593>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.609501, 32.902817, 50.825802> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.244598, 32.803669, 50.956245>,  <36.025658, 32.744179, 51.034512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.244598, 32.803669, 50.956245>,  <36.609501, 32.902817, 50.825802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.244598, 32.803669, 50.956245> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350427, 0.060029, -0.934664,
		0.212100, -0.966932, -0.141623,
		-0.912258, -0.247871, 0.326106,
		35.970921, 32.729309, 51.054077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.310963, 32.280727, 50.479595>,  <36.609501, 32.902817, 50.825802>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.310963, 32.280727, 50.479595> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.005638, 32.505569, 50.606968>,  <35.822445, 32.640472, 50.683392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.005638, 32.505569, 50.606968>,  <36.310963, 32.280727, 50.479595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.005638, 32.505569, 50.606968> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299954, 0.128195, -0.945301,
		-0.572179, -0.817071, 0.070752,
		-0.763308, 0.562104, 0.318434,
		35.776646, 32.674202, 50.702499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.789330, 32.159439, 49.963593>,  <36.310963, 32.280727, 50.479595>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.789330, 32.159439, 49.963593> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.660816, 32.479492, 50.166199>,  <35.583710, 32.671524, 50.287762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.660816, 32.479492, 50.166199>,  <35.789330, 32.159439, 49.963593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.660816, 32.479492, 50.166199> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349906, 0.396720, -0.848634,
		-0.879968, -0.449886, 0.152512,
		-0.321284, 0.800135, 0.506519,
		35.564430, 32.719532, 50.318153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.111382, 32.192623, 49.763988>,  <35.789330, 32.159439, 49.963593>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.111382, 32.192623, 49.763988> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.197056, 32.561935, 49.891537>,  <35.248459, 32.783524, 49.968067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.197056, 32.561935, 49.891537>,  <35.111382, 32.192623, 49.763988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.197056, 32.561935, 49.891537> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537396, 0.383982, -0.750842,
		-0.815678, -0.010540, 0.578410,
		0.214185, 0.923280, 0.318870,
		35.261311, 32.838921, 49.987198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.509285, 32.537647, 49.606014>,  <35.111382, 32.192623, 49.763988>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.509285, 32.537647, 49.606014> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.767624, 32.840954, 49.641586>,  <34.922626, 33.022938, 49.662930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.767624, 32.840954, 49.641586>,  <34.509285, 32.537647, 49.606014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.767624, 32.840954, 49.641586> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427746, 0.455872, -0.780522,
		-0.632386, 0.466059, 0.618770,
		0.645849, 0.758268, 0.088932,
		34.961380, 33.068436, 49.668266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.125107, 33.002823, 49.216602>,  <34.509285, 32.537647, 49.606014>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.125107, 33.002823, 49.216602> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.496487, 33.143677, 49.263889>,  <34.719315, 33.228188, 49.292263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.496487, 33.143677, 49.263889>,  <34.125107, 33.002823, 49.216602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.496487, 33.143677, 49.263889> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061650, 0.459941, -0.885807,
		-0.366296, 0.815142, 0.448743,
		0.928454, 0.352132, 0.118220,
		34.775024, 33.249317, 49.299355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<39.074108, 29.254524, 52.140182> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.314384, 29.544067, 52.004417>,  <39.458549, 29.717793, 51.922958>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.314384, 29.544067, 52.004417>,  <39.074108, 29.254524, 52.140182>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.314384, 29.544067, 52.004417> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218498, -0.259743, -0.940634,
		-0.769046, 0.639189, 0.002137,
		0.600688, 0.723858, -0.339417,
		39.494591, 29.761225, 51.902592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.637058, 29.658401, 51.809105>,  <39.074108, 29.254524, 52.140182>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.637058, 29.658401, 51.809105> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.005951, 29.703148, 51.661060>,  <39.227287, 29.729996, 51.572235>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.005951, 29.703148, 51.661060>,  <38.637058, 29.658401, 51.809105>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.005951, 29.703148, 51.661060> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324742, -0.295423, -0.898481,
		-0.209847, 0.948795, -0.236121,
		0.922229, 0.111866, -0.370107,
		39.282619, 29.736708, 51.550030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.619781, 30.141642, 51.239189>,  <38.637058, 29.658401, 51.809105>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.619781, 30.141642, 51.239189> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.956932, 29.936829, 51.172989>,  <39.159222, 29.813942, 51.133270>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.956932, 29.936829, 51.172989>,  <38.619781, 30.141642, 51.239189>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.956932, 29.936829, 51.172989> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314385, -0.218959, -0.923699,
		0.436724, 0.830591, -0.345529,
		0.842872, -0.512031, -0.165501,
		39.209793, 29.783218, 51.123341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.819374, 30.344988, 50.570030>,  <38.619781, 30.141642, 51.239189>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.819374, 30.344988, 50.570030> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.033791, 30.012371, 50.628269>,  <39.162441, 29.812801, 50.663212>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.033791, 30.012371, 50.628269>,  <38.819374, 30.344988, 50.570030>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.033791, 30.012371, 50.628269> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260785, -0.327146, -0.908277,
		0.802900, 0.448906, -0.392218,
		0.536044, -0.831540, 0.145597,
		39.194603, 29.762909, 50.671947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.318951, 30.285137, 50.022091>,  <38.819374, 30.344988, 50.570030>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.318951, 30.285137, 50.022091> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.246014, 29.930973, 50.193111>,  <39.202251, 29.718475, 50.295723>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.246014, 29.930973, 50.193111>,  <39.318951, 30.285137, 50.022091>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.246014, 29.930973, 50.193111> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233738, -0.383345, -0.893539,
		0.955049, -0.262865, -0.137054,
		-0.182341, -0.885408, 0.427555,
		39.191311, 29.665350, 50.321377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.747688, 29.793646, 49.660938>,  <39.318951, 30.285137, 50.022091>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.747688, 29.793646, 49.660938> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.437492, 29.608400, 49.832581>,  <39.251373, 29.497253, 49.935566>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.437492, 29.608400, 49.832581>,  <39.747688, 29.793646, 49.660938>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.437492, 29.608400, 49.832581> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173828, -0.496780, -0.850290,
		0.606955, -0.733985, 0.304747,
		-0.775493, -0.463115, 0.429111,
		39.204845, 29.469465, 49.961315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.707470, 29.233780, 49.242607>,  <39.747688, 29.793646, 49.660938>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.707470, 29.233780, 49.242607> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.364719, 29.216005, 49.448051>,  <39.159069, 29.205339, 49.571320>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.364719, 29.216005, 49.448051>,  <39.707470, 29.233780, 49.242607>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.364719, 29.216005, 49.448051> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493200, -0.219371, -0.841802,
		0.150079, -0.974629, 0.166056,
		-0.856873, -0.044438, 0.513610,
		39.107658, 29.202675, 49.602135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.464867, 28.512739, 49.229801>,  <39.707470, 29.233780, 49.242607>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.464867, 28.512739, 49.229801> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.143536, 28.743799, 49.287743>,  <38.950737, 28.882435, 49.322506>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.143536, 28.743799, 49.287743>,  <39.464867, 28.512739, 49.229801>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.143536, 28.743799, 49.287743> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400146, -0.343410, -0.849678,
		-0.441071, -0.740535, 0.507016,
		-0.803330, 0.577648, 0.144854,
		38.902538, 28.917093, 49.331200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.863270, 28.070040, 48.948807>,  <39.464867, 28.512739, 49.229801>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.863270, 28.070040, 48.948807> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.726448, 28.443134, 48.994427>,  <38.644356, 28.666990, 49.021797>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.726448, 28.443134, 48.994427>,  <38.863270, 28.070040, 48.948807>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.726448, 28.443134, 48.994427> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521377, -0.087410, -0.848838,
		-0.781771, -0.349808, 0.516205,
		-0.342052, 0.932734, 0.114048,
		38.623833, 28.722954, 49.028641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.202694, 27.925322, 48.745388>,  <38.863270, 28.070040, 48.948807>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.202694, 27.925322, 48.745388> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.257641, 28.320093, 48.711681>,  <38.290607, 28.556955, 48.691456>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.257641, 28.320093, 48.711681>,  <38.202694, 27.925322, 48.745388>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.257641, 28.320093, 48.711681> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426249, -0.017899, -0.904429,
		-0.894115, 0.160159, 0.418218,
		0.137367, 0.986929, -0.084271,
		38.298851, 28.616173, 48.686401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.558750, 28.188250, 48.497971>,  <38.202694, 27.925322, 48.745388>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.558750, 28.188250, 48.497971> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.850208, 28.429348, 48.367878>,  <38.025082, 28.574007, 48.289822>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.850208, 28.429348, 48.367878>,  <37.558750, 28.188250, 48.497971>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.850208, 28.429348, 48.367878> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357851, -0.069847, -0.931163,
		-0.583971, 0.794870, 0.164800,
		0.728643, 0.602746, -0.325234,
		38.068802, 28.610172, 48.270309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.252483, 28.591908, 47.985001>,  <37.558750, 28.188250, 48.497971>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.252483, 28.591908, 47.985001> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.639256, 28.652393, 47.902851>,  <37.871319, 28.688684, 47.853561>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.639256, 28.652393, 47.902851>,  <37.252483, 28.591908, 47.985001>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.639256, 28.652393, 47.902851> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214881, 0.049307, -0.975395,
		-0.137367, 0.987271, 0.080169,
		0.966931, 0.151214, -0.205373,
		37.929337, 28.697758, 47.841240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.032593, 29.318714, 48.164448>,  <37.252483, 28.591908, 47.985001>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.032593, 29.318714, 48.164448> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.676407, 29.446798, 48.293777>,  <36.462696, 29.523649, 48.371376>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.676407, 29.446798, 48.293777>,  <37.032593, 29.318714, 48.164448>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.676407, 29.446798, 48.293777> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289315, -0.150054, 0.945400,
		0.351245, 0.935386, 0.040976,
		-0.890462, 0.320213, 0.323327,
		36.409267, 29.542862, 48.390774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.165600, 29.838722, 48.701576>,  <37.032593, 29.318714, 48.164448>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.165600, 29.838722, 48.701576> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.797695, 29.690342, 48.752842>,  <36.576950, 29.601313, 48.783604>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.797695, 29.690342, 48.752842>,  <37.165600, 29.838722, 48.701576>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.797695, 29.690342, 48.752842> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214902, -0.202760, 0.955356,
		-0.328404, 0.906247, 0.266210,
		-0.919765, -0.370952, 0.128167,
		36.521767, 29.579056, 48.791290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.050381, 30.135405, 49.270096>,  <37.165600, 29.838722, 48.701576>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.050381, 30.135405, 49.270096> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.778278, 29.842796, 49.251637>,  <36.615017, 29.667233, 49.240562>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.778278, 29.842796, 49.251637>,  <37.050381, 30.135405, 49.270096>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.778278, 29.842796, 49.251637> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083131, -0.139554, 0.986719,
		-0.728243, 0.667387, 0.155745,
		-0.680258, -0.731519, -0.046148,
		36.574200, 29.623341, 49.237793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.558178, 30.323486, 49.741440>,  <37.050381, 30.135405, 49.270096>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.558178, 30.323486, 49.741440> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.502777, 29.930542, 49.691177>,  <36.469536, 29.694777, 49.661018>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.502777, 29.930542, 49.691177>,  <36.558178, 30.323486, 49.741440>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.502777, 29.930542, 49.691177> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146689, -0.105133, 0.983580,
		-0.979439, 0.154657, -0.129540,
		-0.138498, -0.982359, -0.125658,
		36.461227, 29.635834, 49.653481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.965004, 30.208685, 50.120808>,  <36.558178, 30.323486, 49.741440>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.965004, 30.208685, 50.120808> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.151234, 29.856256, 50.087448>,  <36.262970, 29.644798, 50.067432>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.151234, 29.856256, 50.087448>,  <35.965004, 30.208685, 50.120808>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.151234, 29.856256, 50.087448> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052652, -0.121647, 0.991176,
		-0.883443, -0.457071, -0.103025,
		0.465571, -0.881072, -0.083402,
		36.290905, 29.591934, 50.062428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.553841, 29.828451, 50.552887>,  <35.965004, 30.208685, 50.120808>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.553841, 29.828451, 50.552887> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.899559, 29.632277, 50.508240>,  <36.106991, 29.514572, 50.481453>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.899559, 29.632277, 50.508240>,  <35.553841, 29.828451, 50.552887>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.899559, 29.632277, 50.508240> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087577, -0.071783, 0.993568,
		-0.495294, -0.868516, -0.019091,
		0.864300, -0.490436, -0.111616,
		36.158848, 29.485146, 50.474754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.404423, 29.109480, 50.797668>,  <35.553841, 29.828451, 50.552887>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.404423, 29.109480, 50.797668> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.794228, 29.198648, 50.807800>,  <36.028111, 29.252150, 50.813881>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.794228, 29.198648, 50.807800>,  <35.404423, 29.109480, 50.797668>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.794228, 29.198648, 50.807800> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045401, -0.306510, 0.950784,
		0.219713, -0.925396, -0.308817,
		0.974507, 0.222920, 0.025331,
		36.086578, 29.265524, 50.815399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.555492, 28.473808, 51.136868>,  <35.404423, 29.109480, 50.797668>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.555492, 28.473808, 51.136868> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.868214, 28.722752, 51.152088>,  <36.055847, 28.872118, 51.161221>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.868214, 28.722752, 51.152088>,  <35.555492, 28.473808, 51.136868>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.868214, 28.722752, 51.152088> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251177, -0.370203, 0.894349,
		0.570693, -0.689650, -0.445749,
		0.781806, 0.622360, 0.038047,
		36.102757, 28.909460, 51.163502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.181774, 28.087275, 51.306526>,  <35.555492, 28.473808, 51.136868>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.181774, 28.087275, 51.306526> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.212196, 28.468706, 51.423080>,  <36.230450, 28.697565, 51.493011>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.212196, 28.468706, 51.423080>,  <36.181774, 28.087275, 51.306526>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.212196, 28.468706, 51.423080> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192251, -0.300774, 0.934117,
		0.978394, -0.015028, -0.206203,
		0.076058, 0.953577, 0.291387,
		36.235012, 28.754780, 51.510498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.694592, 28.086451, 51.803108>,  <36.181774, 28.087275, 51.306526>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.694592, 28.086451, 51.803108> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.533905, 28.445238, 51.876949>,  <36.437492, 28.660511, 51.921253>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.533905, 28.445238, 51.876949>,  <36.694592, 28.086451, 51.803108>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.533905, 28.445238, 51.876949> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194973, -0.113188, 0.974256,
		0.894770, 0.427362, -0.129416,
		-0.401712, 0.896967, 0.184602,
		36.413391, 28.714329, 51.932331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.226578, 28.472031, 52.143368>,  <36.694592, 28.086451, 51.803108>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.226578, 28.472031, 52.143368> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.896233, 28.676626, 52.238312>,  <36.698025, 28.799383, 52.295277>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.896233, 28.676626, 52.238312>,  <37.226578, 28.472031, 52.143368>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.896233, 28.676626, 52.238312> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349507, 0.134010, 0.927301,
		0.442494, 0.848777, -0.289441,
		-0.825859, 0.511487, 0.237355,
		36.648476, 28.830072, 52.309517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.397846, 29.092392, 52.480381>,  <37.226578, 28.472031, 52.143368>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.397846, 29.092392, 52.480381> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.013199, 29.071507, 52.588135>,  <36.782410, 29.058975, 52.652786>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.013199, 29.071507, 52.588135>,  <37.397846, 29.092392, 52.480381>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.013199, 29.071507, 52.588135> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249630, 0.241130, 0.937839,
		-0.113922, 0.969087, -0.218841,
		-0.961617, -0.052211, 0.269384,
		36.724712, 29.055843, 52.668949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.182636, 29.760279, 52.881958>,  <37.397846, 29.092392, 52.480381>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.182636, 29.760279, 52.881958> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.964741, 29.439644, 52.980526>,  <36.834003, 29.247263, 53.039665>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.964741, 29.439644, 52.980526>,  <37.182636, 29.760279, 52.881958>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.964741, 29.439644, 52.980526> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176068, 0.177972, 0.968156,
		-0.819915, 0.570777, 0.044186,
		-0.544738, -0.801586, 0.246417,
		36.801319, 29.199167, 53.054451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.871220, 29.984867, 53.436508>,  <37.182636, 29.760279, 52.881958>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.871220, 29.984867, 53.436508> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.812263, 29.590275, 53.465172>,  <36.776890, 29.353519, 53.482368>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.812263, 29.590275, 53.465172>,  <36.871220, 29.984867, 53.436508>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.812263, 29.590275, 53.465172> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237585, 0.035014, 0.970735,
		-0.960119, 0.160106, 0.229212,
		-0.147395, -0.986479, 0.071656,
		36.768044, 29.294331, 53.486668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.356213, 30.459530, 53.145248>,  <36.871220, 29.984867, 53.436508>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.356213, 30.459530, 53.145248> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.364746, 30.806931, 53.343338>,  <37.369865, 31.015371, 53.462193>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.364746, 30.806931, 53.343338>,  <37.356213, 30.459530, 53.145248>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.364746, 30.806931, 53.343338> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624950, 0.398226, -0.671456,
		-0.780373, -0.295165, 0.551267,
		0.021338, 0.868501, 0.495228,
		37.371147, 31.067480, 53.491905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.614799, 30.643505, 53.286701>,  <37.356213, 30.459530, 53.145248>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.614799, 30.643505, 53.286701> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.846210, 30.969463, 53.272541>,  <36.985058, 31.165037, 53.264046>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.846210, 30.969463, 53.272541>,  <36.614799, 30.643505, 53.286701>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.846210, 30.969463, 53.272541> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669356, 0.449507, -0.591529,
		-0.466121, 0.365911, 0.805506,
		0.578528, 0.814894, -0.035399,
		37.019768, 31.213932, 53.261921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.124359, 31.253431, 53.302391>,  <36.614799, 30.643505, 53.286701>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.124359, 31.253431, 53.302391> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.467262, 31.410124, 53.168728>,  <36.673004, 31.504139, 53.088531>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.467262, 31.410124, 53.168728>,  <36.124359, 31.253431, 53.302391>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.467262, 31.410124, 53.168728> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508523, 0.542367, -0.668762,
		-0.080737, 0.743227, 0.664151,
		0.857255, 0.391729, -0.334158,
		36.724438, 31.527643, 53.068481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.862053, 31.916203, 53.206692>,  <36.124359, 31.253431, 53.302391>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.862053, 31.916203, 53.206692> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.214909, 31.901772, 53.018848>,  <36.426620, 31.893112, 52.906143>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.214909, 31.901772, 53.018848>,  <35.862053, 31.916203, 53.206692>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.214909, 31.901772, 53.018848> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312157, 0.701839, -0.640297,
		0.352688, 0.711421, 0.607857,
		0.882139, -0.036078, -0.469605,
		36.479549, 31.890947, 52.877968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.091702, 32.680370, 53.080757>,  <35.862053, 31.916203, 53.206692>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.091702, 32.680370, 53.080757> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.297905, 32.460403, 52.817902>,  <36.421627, 32.328423, 52.660187>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.297905, 32.460403, 52.817902>,  <36.091702, 32.680370, 53.080757>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.297905, 32.460403, 52.817902> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125497, 0.710176, -0.692748,
		0.847644, 0.439588, 0.297089,
		0.515510, -0.549920, -0.657143,
		36.452557, 32.295429, 52.620758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.556515, 33.117306, 52.611492>,  <36.091702, 32.680370, 53.080757>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.556515, 33.117306, 52.611492> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.460953, 32.779228, 52.420258>,  <36.403614, 32.576382, 52.305519>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.460953, 32.779228, 52.420258>,  <36.556515, 33.117306, 52.611492>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.460953, 32.779228, 52.420258> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161679, 0.520091, -0.838669,
		0.957488, -0.123070, -0.260905,
		-0.238909, -0.845198, -0.478082,
		36.389278, 32.525669, 52.276833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.830658, 33.121117, 51.961132>,  <36.556515, 33.117306, 52.611492>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.830658, 33.121117, 51.961132> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.545570, 32.846043, 51.905830>,  <36.374516, 32.681000, 51.872650>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.545570, 32.846043, 51.905830>,  <36.830658, 33.121117, 51.961132>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.545570, 32.846043, 51.905830> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309256, 0.484976, -0.818022,
		0.629593, -0.540265, -0.558324,
		-0.712722, -0.687686, -0.138257,
		36.331753, 32.639736, 51.864353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.190861, 33.735687, 51.689945>,  <36.830658, 33.121117, 51.961132>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.190861, 33.735687, 51.689945> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.362812, 34.080971, 51.795834>,  <37.465981, 34.288139, 51.859367>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.362812, 34.080971, 51.795834>,  <37.190861, 33.735687, 51.689945>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.362812, 34.080971, 51.795834> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347794, -0.428883, 0.833726,
		0.833215, -0.266329, -0.484585,
		0.429876, 0.863208, 0.264724,
		37.491776, 34.339931, 51.875252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.787422, 33.552380, 51.967373>,  <37.190861, 33.735687, 51.689945>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.787422, 33.552380, 51.967373> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.733841, 33.921463, 52.111961>,  <37.701691, 34.142914, 52.198715>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.733841, 33.921463, 52.111961>,  <37.787422, 33.552380, 51.967373>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.733841, 33.921463, 52.111961> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379614, -0.289152, 0.878797,
		0.915395, 0.254939, -0.311540,
		-0.133957, 0.922712, 0.361467,
		37.693653, 34.198277, 52.220402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.445831, 33.760471, 52.282310>,  <37.787422, 33.552380, 51.967373>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.445831, 33.760471, 52.282310> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.168949, 34.000381, 52.442871>,  <38.002823, 34.144329, 52.539207>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.168949, 34.000381, 52.442871>,  <38.445831, 33.760471, 52.282310>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.168949, 34.000381, 52.442871> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324118, -0.238595, 0.915434,
		0.644830, 0.763767, -0.029243,
		-0.692201, 0.599778, 0.401404,
		37.961288, 34.180313, 52.563293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.810303, 34.277966, 52.660908>,  <38.445831, 33.760471, 52.282310>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.810303, 34.277966, 52.660908> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.440659, 34.214336, 52.799885>,  <38.218872, 34.176159, 52.883270>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.440659, 34.214336, 52.799885>,  <38.810303, 34.277966, 52.660908>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.440659, 34.214336, 52.799885> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361748, -0.071189, 0.929554,
		-0.123135, 0.984696, 0.123332,
		-0.924108, -0.159076, 0.347446,
		38.163425, 34.166615, 52.904118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.867119, 34.566029, 53.290421>,  <38.810303, 34.277966, 52.660908>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.867119, 34.566029, 53.290421> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.521378, 34.372528, 53.345390>,  <38.313934, 34.256428, 53.378372>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.521378, 34.372528, 53.345390>,  <38.867119, 34.566029, 53.290421>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.521378, 34.372528, 53.345390> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340420, -0.361688, 0.867926,
		-0.370156, 0.796973, 0.477304,
		-0.864348, -0.483752, 0.137425,
		38.262074, 34.227402, 53.386620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.819485, 34.603992, 54.078236>,  <38.867119, 34.566029, 53.290421>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.819485, 34.603992, 54.078236> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.568699, 34.315243, 53.961063>,  <38.418228, 34.141994, 53.890759>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.568699, 34.315243, 53.961063>,  <38.819485, 34.603992, 54.078236>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.568699, 34.315243, 53.961063> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237600, -0.535282, 0.810567,
		-0.741929, 0.438598, 0.507122,
		-0.626967, -0.721876, -0.292930,
		38.380608, 34.098679, 53.873184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.361629, 34.483784, 54.624413>,  <38.819485, 34.603992, 54.078236>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.361629, 34.483784, 54.624413> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.358913, 34.147663, 54.407581>,  <38.357285, 33.945992, 54.277481>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.358913, 34.147663, 54.407581>,  <38.361629, 34.483784, 54.624413>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.358913, 34.147663, 54.407581> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144368, -0.537237, 0.830984,
		-0.989501, -0.072615, 0.124961,
		-0.006792, -0.840299, -0.542080,
		38.356876, 33.895573, 54.244957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.795994, 34.098232, 54.954819>,  <38.361629, 34.483784, 54.624413>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.795994, 34.098232, 54.954819> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.062290, 33.855747, 54.780785>,  <38.222069, 33.710258, 54.676365>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.062290, 33.855747, 54.780785>,  <37.795994, 34.098232, 54.954819>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.062290, 33.855747, 54.780785> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021523, -0.567239, 0.823272,
		-0.745874, -0.557449, -0.364586,
		0.665740, -0.606210, -0.435086,
		38.262012, 33.673885, 54.650257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.693741, 33.448418, 55.212601>,  <37.795994, 34.098232, 54.954819>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.693741, 33.448418, 55.212601> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.062862, 33.398129, 55.066925>,  <38.284336, 33.367954, 54.979519>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.062862, 33.398129, 55.066925>,  <37.693741, 33.448418, 55.212601>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.062862, 33.398129, 55.066925> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197249, -0.657816, 0.726891,
		-0.330955, -0.742612, -0.582234,
		0.922801, -0.125723, -0.364187,
		38.339703, 33.360413, 54.957668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.652214, 34.591450, 39.033760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.042446, 34.510612, 39.068180>,  <36.276585, 34.462109, 39.088833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.042446, 34.510612, 39.068180>,  <35.652214, 34.591450, 39.033760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.042446, 34.510612, 39.068180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056822, 0.610641, 0.789866,
		-0.212174, -0.765687, 0.607212,
		0.975578, -0.202092, 0.086055,
		36.335121, 34.449986, 39.093998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.825859, 34.398109, 39.747093>,  <35.652214, 34.591450, 39.033760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.825859, 34.398109, 39.747093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.182869, 34.514889, 39.609596>,  <36.397076, 34.584957, 39.527096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.182869, 34.514889, 39.609596>,  <35.825859, 34.398109, 39.747093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.182869, 34.514889, 39.609596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201768, 0.423175, 0.883296,
		0.403333, -0.857726, 0.318793,
		0.892531, 0.291940, -0.343742,
		36.450626, 34.602474, 39.506474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.294689, 34.228317, 40.262039>,  <35.825859, 34.398109, 39.747093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.294689, 34.228317, 40.262039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.521049, 34.483978, 40.053715>,  <36.656864, 34.637375, 39.928722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.521049, 34.483978, 40.053715>,  <36.294689, 34.228317, 40.262039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.521049, 34.483978, 40.053715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271991, 0.451597, 0.849753,
		0.778319, -0.622529, 0.081714,
		0.565898, 0.639154, -0.520809,
		36.690819, 34.675724, 39.897472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.020859, 34.216061, 40.498009>,  <36.294689, 34.228317, 40.262039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.020859, 34.216061, 40.498009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.931271, 34.578465, 40.354351>,  <36.877518, 34.795906, 40.268158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.931271, 34.578465, 40.354351>,  <37.020859, 34.216061, 40.498009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.931271, 34.578465, 40.354351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004945, 0.367446, 0.930032,
		0.974583, 0.210078, -0.077818,
		-0.223973, 0.906008, -0.359145,
		36.864079, 34.850266, 40.246609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.452633, 34.590790, 40.848621>,  <37.020859, 34.216061, 40.498009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.452633, 34.590790, 40.848621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.184422, 34.844707, 40.695038>,  <37.023495, 34.997059, 40.602886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.184422, 34.844707, 40.695038>,  <37.452633, 34.590790, 40.848621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.184422, 34.844707, 40.695038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042817, 0.483575, 0.874255,
		0.740649, 0.602652, -0.297069,
		-0.670527, 0.634796, -0.383963,
		36.983265, 35.035145, 40.579849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.717503, 35.138977, 40.983395>,  <37.452633, 34.590790, 40.848621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.717503, 35.138977, 40.983395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.328499, 35.218803, 40.935406>,  <37.095097, 35.266697, 40.906612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.328499, 35.218803, 40.935406>,  <37.717503, 35.138977, 40.983395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.328499, 35.218803, 40.935406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032637, 0.393315, 0.918824,
		0.230548, 0.897484, -0.375991,
		-0.972513, 0.199562, -0.119969,
		37.036743, 35.278671, 40.899414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.627350, 35.896160, 41.073357>,  <37.717503, 35.138977, 40.983395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.627350, 35.896160, 41.073357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.282490, 35.706757, 41.145466>,  <37.075573, 35.593117, 41.188732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.282490, 35.706757, 41.145466>,  <37.627350, 35.896160, 41.073357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.282490, 35.706757, 41.145466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019255, 0.386171, 0.922226,
		-0.506294, 0.791622, -0.342053,
		-0.862146, -0.473504, 0.180273,
		37.023846, 35.564705, 41.199547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.382725, 36.324856, 41.534706>,  <37.627350, 35.896160, 41.073357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.382725, 36.324856, 41.534706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.152847, 36.000050, 41.575428>,  <37.014923, 35.805168, 41.599861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.152847, 36.000050, 41.575428>,  <37.382725, 36.324856, 41.534706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.152847, 36.000050, 41.575428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134823, 0.216637, 0.966898,
		-0.807188, 0.541943, -0.233977,
		-0.574691, -0.812014, 0.101800,
		36.980438, 35.756447, 41.605968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.889145, 36.517803, 41.946079>,  <37.382725, 36.324856, 41.534706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.889145, 36.517803, 41.946079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.888229, 36.118591, 41.971153>,  <36.887680, 35.879063, 41.986198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.888229, 36.118591, 41.971153>,  <36.889145, 36.517803, 41.946079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.888229, 36.118591, 41.971153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079521, 0.062673, 0.994861,
		-0.996831, -0.002704, -0.079508,
		-0.002293, -0.998030, 0.062689,
		36.887543, 35.819183, 41.989960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.239220, 36.377083, 42.397335>,  <36.889145, 36.517803, 41.946079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.239220, 36.377083, 42.397335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.464554, 36.047028, 42.414337>,  <36.599754, 35.848995, 42.424538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.464554, 36.047028, 42.414337>,  <36.239220, 36.377083, 42.397335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.464554, 36.047028, 42.414337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037402, 0.076854, 0.996341,
		-0.825382, -0.559684, 0.074156,
		0.563335, -0.825135, 0.042501,
		36.633553, 35.799488, 42.427086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.874058, 35.964527, 42.920670>,  <36.239220, 36.377083, 42.397335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.874058, 35.964527, 42.920670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.241539, 35.815231, 42.869019>,  <36.462029, 35.725655, 42.838028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.241539, 35.815231, 42.869019>,  <35.874058, 35.964527, 42.920670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.241539, 35.815231, 42.869019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166836, 0.070413, 0.983467,
		-0.357979, -0.925058, 0.126959,
		0.918704, -0.373242, -0.129127,
		36.517151, 35.703259, 42.830280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.011608, 35.288948, 43.367924>,  <35.874058, 35.964527, 42.920670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.011608, 35.288948, 43.367924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.368118, 35.458870, 43.304478>,  <36.582024, 35.560825, 43.266411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.368118, 35.458870, 43.304478>,  <36.011608, 35.288948, 43.367924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.368118, 35.458870, 43.304478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277509, -0.234351, 0.931702,
		0.358621, -0.874425, -0.326760,
		0.891280, 0.424807, -0.158617,
		36.635502, 35.586311, 43.256893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.620743, 34.673100, 43.002716>,  <36.011608, 35.288948, 43.367924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.620743, 34.673100, 43.002716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.283684, 34.642319, 43.215893>,  <35.081448, 34.623852, 43.343800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.283684, 34.642319, 43.215893>,  <35.620743, 34.673100, 43.002716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.283684, 34.642319, 43.215893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538382, 0.102312, -0.836467,
		0.009841, -0.991772, -0.127642,
		-0.842643, -0.076952, 0.532945,
		35.030891, 34.619232, 43.375778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.277618, 34.143829, 42.691959>,  <35.620743, 34.673100, 43.002716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.277618, 34.143829, 42.691959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.005905, 34.352135, 42.898792>,  <34.842876, 34.477119, 43.022892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.005905, 34.352135, 42.898792>,  <35.277618, 34.143829, 42.691959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.005905, 34.352135, 42.898792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526477, 0.145070, -0.837721,
		-0.511271, -0.841282, 0.175629,
		-0.679282, 0.520768, 0.517086,
		34.802120, 34.508366, 43.053917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.585293, 33.870033, 42.576073>,  <35.277618, 34.143829, 42.691959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.585293, 33.870033, 42.576073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.544060, 34.256222, 42.671768>,  <34.519321, 34.487934, 42.729187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.544060, 34.256222, 42.671768>,  <34.585293, 33.870033, 42.576073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.544060, 34.256222, 42.671768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608744, 0.128981, -0.782812,
		-0.786642, -0.226327, 0.574431,
		-0.103080, 0.965474, 0.239237,
		34.513134, 34.545864, 42.743538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.947144, 33.972389, 42.521877>,  <34.585293, 33.870033, 42.576073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.947144, 33.972389, 42.521877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.104855, 34.336842, 42.473907>,  <34.199482, 34.555515, 42.445126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.104855, 34.336842, 42.473907>,  <33.947144, 33.972389, 42.521877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.104855, 34.336842, 42.473907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605648, 0.159478, -0.779588,
		-0.691183, 0.380005, 0.614705,
		0.394279, 0.911133, -0.119920,
		34.223137, 34.610180, 42.437931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.350517, 34.395512, 42.677189>,  <33.947144, 33.972389, 42.521877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.350517, 34.395512, 42.677189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.623886, 34.599293, 42.468044>,  <33.787907, 34.721561, 42.342556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.623886, 34.599293, 42.468044>,  <33.350517, 34.395512, 42.677189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.623886, 34.599293, 42.468044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720329, 0.354297, -0.596322,
		-0.118552, 0.784174, 0.609112,
		0.683426, 0.509456, -0.522861,
		33.828915, 34.752129, 42.311188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.084396, 34.999153, 42.445267>,  <33.350517, 34.395512, 42.677189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.084396, 34.999153, 42.445267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.390610, 34.986057, 42.188240>,  <33.574337, 34.978199, 42.034023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.390610, 34.986057, 42.188240>,  <33.084396, 34.999153, 42.445267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.390610, 34.986057, 42.188240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615966, 0.251204, -0.746647,
		0.185861, 0.967380, 0.172137,
		0.765533, -0.032742, -0.642563,
		33.620270, 34.976234, 41.995472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.851467, 35.572727, 42.038322>,  <33.084396, 34.999153, 42.445267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.851467, 35.572727, 42.038322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.140831, 35.376793, 41.843697>,  <33.314449, 35.259232, 41.726921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.140831, 35.376793, 41.843697>,  <32.851467, 35.572727, 42.038322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.140831, 35.376793, 41.843697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355394, 0.340005, -0.870685,
		0.591922, 0.802784, 0.071880,
		0.723411, -0.489832, -0.486561,
		33.357853, 35.229843, 41.697727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.007309, 35.964455, 41.392765>,  <32.851467, 35.572727, 42.038322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.007309, 35.964455, 41.392765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.175060, 35.614227, 41.296844>,  <33.275711, 35.404091, 41.239292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.175060, 35.614227, 41.296844>,  <33.007309, 35.964455, 41.392765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.175060, 35.614227, 41.296844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440912, 0.034457, -0.896889,
		0.793549, 0.481867, -0.371597,
		0.419377, -0.875567, -0.239804,
		33.300873, 35.351559, 41.224903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.294052, 36.041271, 40.688236>,  <33.007309, 35.964455, 41.392765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.294052, 36.041271, 40.688236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.227833, 35.652885, 40.757313>,  <33.188103, 35.419853, 40.798759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.227833, 35.652885, 40.757313>,  <33.294052, 36.041271, 40.688236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.227833, 35.652885, 40.757313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521957, -0.062304, -0.850693,
		0.836753, -0.230965, -0.496488,
		-0.165547, -0.970965, 0.172687,
		33.178169, 35.361595, 40.809120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.565399, 35.696682, 40.113392>,  <33.294052, 36.041271, 40.688236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.565399, 35.696682, 40.113392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.295628, 35.451302, 40.277740>,  <33.133766, 35.304073, 40.376350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.295628, 35.451302, 40.277740>,  <33.565399, 35.696682, 40.113392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.295628, 35.451302, 40.277740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465826, -0.078219, -0.881412,
		0.572844, -0.785847, -0.233009,
		-0.674430, -0.613454, 0.410876,
		33.093300, 35.267265, 40.401005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.543839, 35.134686, 39.656231>,  <33.565399, 35.696682, 40.113392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.543839, 35.134686, 39.656231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.198841, 35.141098, 39.858559>,  <32.991844, 35.144943, 39.979954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.198841, 35.141098, 39.858559>,  <33.543839, 35.134686, 39.656231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.198841, 35.141098, 39.858559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504341, -0.109863, -0.856487,
		0.041843, -0.993818, 0.102839,
		-0.862490, 0.016028, 0.505820,
		32.940094, 35.145908, 40.010303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.211967, 34.606995, 39.279930>,  <33.543839, 35.134686, 39.656231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.211967, 34.606995, 39.279930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.924431, 34.802341, 39.477825>,  <32.751907, 34.919548, 39.596561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.924431, 34.802341, 39.477825>,  <33.211967, 34.606995, 39.279930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.924431, 34.802341, 39.477825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601668, -0.080569, -0.794673,
		-0.348231, -0.868911, 0.351750,
		-0.718840, 0.488366, 0.494739,
		32.708778, 34.948853, 39.626247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.720669, 34.163448, 39.124657>,  <33.211967, 34.606995, 39.279930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.720669, 34.163448, 39.124657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.581631, 34.529026, 39.208450>,  <32.498207, 34.748375, 39.258724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.581631, 34.529026, 39.208450>,  <32.720669, 34.163448, 39.124657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.581631, 34.529026, 39.208450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717022, -0.115126, -0.687477,
		-0.604201, -0.389164, 0.695337,
		-0.347593, 0.913946, 0.209480,
		32.477352, 34.803211, 39.271294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.041893, 33.980141, 39.331608>,  <32.720669, 34.163448, 39.124657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.041893, 33.980141, 39.331608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.066425, 34.359463, 39.207058>,  <32.081142, 34.587055, 39.132328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.066425, 34.359463, 39.207058>,  <32.041893, 33.980141, 39.331608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.066425, 34.359463, 39.207058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723662, -0.172611, -0.668221,
		-0.687425, 0.266313, 0.675666,
		0.061328, 0.948305, -0.311377,
		32.084824, 34.643955, 39.113644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.179497, 33.430325, 38.823162>,  <32.041893, 33.980141, 39.331608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.179497, 33.430325, 38.823162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.238449, 33.043335, 38.740925>,  <32.273819, 32.811142, 38.691582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.238449, 33.043335, 38.740925>,  <32.179497, 33.430325, 38.823162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.238449, 33.043335, 38.740925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159394, -0.181914, 0.970310,
		-0.976152, -0.175773, 0.127400,
		0.147378, -0.967477, -0.205593,
		32.282661, 32.753094, 38.679249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.723841, 33.000195, 39.291668>,  <32.179497, 33.430325, 38.823162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.723841, 33.000195, 39.291668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.024998, 32.774368, 39.156368>,  <32.205692, 32.638870, 39.075188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.024998, 32.774368, 39.156368>,  <31.723841, 33.000195, 39.291668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.024998, 32.774368, 39.156368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204650, -0.287641, 0.935618,
		-0.625517, -0.773643, -0.101023,
		0.752892, -0.564570, -0.338251,
		32.250866, 32.604996, 39.054893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.662558, 32.324356, 39.555405>,  <31.723841, 33.000195, 39.291668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.662558, 32.324356, 39.555405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.045761, 32.400261, 39.469418>,  <32.275684, 32.445805, 39.417824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.045761, 32.400261, 39.469418>,  <31.662558, 32.324356, 39.555405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.045761, 32.400261, 39.469418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275223, -0.398157, 0.875056,
		0.080461, -0.897475, -0.433664,
		0.958008, 0.189762, -0.214970,
		32.333164, 32.457191, 39.404926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.993839, 31.746920, 39.725883>,  <31.662558, 32.324356, 39.555405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.993839, 31.746920, 39.725883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.290009, 32.015312, 39.710106>,  <32.467712, 32.176346, 39.700638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.290009, 32.015312, 39.710106>,  <31.993839, 31.746920, 39.725883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.290009, 32.015312, 39.710106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316622, -0.296422, 0.901046,
		0.592892, -0.679646, -0.431925,
		0.740425, 0.670980, -0.039444,
		32.512135, 32.216606, 39.698273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.561760, 31.364864, 39.929028>,  <31.993839, 31.746920, 39.725883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.561760, 31.364864, 39.929028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.712460, 31.732895, 39.971958>,  <32.802879, 31.953712, 39.997715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.712460, 31.732895, 39.971958>,  <32.561760, 31.364864, 39.929028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.712460, 31.732895, 39.971958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480287, -0.293096, 0.826691,
		0.792075, -0.259910, -0.552325,
		0.376750, 0.920077, 0.107322,
		32.825485, 32.008919, 40.004154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.365616, 31.289274, 39.945072>,  <32.561760, 31.364864, 39.929028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.365616, 31.289274, 39.945072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.247032, 31.622541, 40.131809>,  <33.175880, 31.822502, 40.243851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.247032, 31.622541, 40.131809>,  <33.365616, 31.289274, 39.945072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.247032, 31.622541, 40.131809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456438, -0.305774, 0.835564,
		0.838914, 0.460796, -0.289640,
		-0.296460, 0.833168, 0.466843,
		33.158092, 31.872492, 40.271862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.905792, 31.527853, 40.325554>,  <33.365616, 31.289274, 39.945072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.905792, 31.527853, 40.325554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.611774, 31.737629, 40.497448>,  <33.435364, 31.863495, 40.600582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.611774, 31.737629, 40.497448>,  <33.905792, 31.527853, 40.325554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.611774, 31.737629, 40.497448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427816, -0.132958, 0.894033,
		0.526004, 0.841001, -0.126634,
		-0.735046, 0.524441, 0.429731,
		33.391262, 31.894962, 40.626366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.279659, 32.072594, 40.680321>,  <33.905792, 31.527853, 40.325554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.279659, 32.072594, 40.680321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.926411, 31.982557, 40.844967>,  <33.714462, 31.928535, 40.943756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.926411, 31.982557, 40.844967>,  <34.279659, 32.072594, 40.680321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.926411, 31.982557, 40.844967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433944, -0.058500, 0.899039,
		-0.178284, 0.972581, 0.149338,
		-0.883124, -0.225089, 0.411615,
		33.661472, 31.915031, 40.968452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.352486, 32.419926, 41.144741>,  <34.279659, 32.072594, 40.680321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.352486, 32.419926, 41.144741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.067638, 32.157547, 41.244835>,  <33.896729, 32.000122, 41.304893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.067638, 32.157547, 41.244835>,  <34.352486, 32.419926, 41.144741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.067638, 32.157547, 41.244835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402218, -0.089050, 0.911203,
		-0.575414, 0.749538, 0.327247,
		-0.712123, -0.655944, 0.250238,
		33.854000, 31.960764, 41.319904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.223522, 32.602173, 41.787891>,  <34.352486, 32.419926, 41.144741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.223522, 32.602173, 41.787891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.052418, 32.242130, 41.754837>,  <33.949757, 32.026104, 41.735004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.052418, 32.242130, 41.754837>,  <34.223522, 32.602173, 41.787891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.052418, 32.242130, 41.754837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366339, -0.256218, 0.894510,
		-0.826329, 0.352360, 0.439344,
		-0.427757, -0.900108, -0.082637,
		33.924091, 31.972097, 41.730045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.932430, 32.535778, 42.403965>,  <34.223522, 32.602173, 41.787891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.932430, 32.535778, 42.403965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.933575, 32.164738, 42.254543>,  <33.934261, 31.942114, 42.164890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.933575, 32.164738, 42.254543>,  <33.932430, 32.535778, 42.403965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.933575, 32.164738, 42.254543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091008, -0.371767, 0.923854,
		-0.995846, -0.036637, 0.083356,
		0.002858, -0.927603, -0.373557,
		33.934433, 31.886457, 42.142475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.495110, 32.106750, 42.791073>,  <33.932430, 32.535778, 42.403965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.495110, 32.106750, 42.791073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.809208, 31.921686, 42.626472>,  <33.997669, 31.810648, 42.527714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.809208, 31.921686, 42.626472>,  <33.495110, 32.106750, 42.791073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.809208, 31.921686, 42.626472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255502, -0.363250, 0.895973,
		-0.564009, -0.808699, -0.167030,
		0.785247, -0.462660, -0.411500,
		34.044781, 31.782888, 42.503021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.435375, 31.511137, 43.070862>,  <33.495110, 32.106750, 42.791073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.435375, 31.511137, 43.070862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.810921, 31.524052, 42.933754>,  <34.036247, 31.531801, 42.851490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.810921, 31.524052, 42.933754>,  <33.435375, 31.511137, 43.070862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.810921, 31.524052, 42.933754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326071, -0.402912, 0.855184,
		-0.110492, -0.914669, -0.388809,
		0.938866, 0.032288, -0.342765,
		34.092579, 31.533737, 42.830925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.652931, 31.008516, 43.414543>,  <33.435375, 31.511137, 43.070862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.652931, 31.008516, 43.414543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.004314, 31.143921, 43.279648>,  <34.215145, 31.225163, 43.198711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.004314, 31.143921, 43.279648>,  <33.652931, 31.008516, 43.414543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.004314, 31.143921, 43.279648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448833, -0.342468, 0.825388,
		0.163909, -0.876428, -0.452777,
		0.878455, 0.338510, -0.337236,
		34.267849, 31.245474, 43.178478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.023293, 30.390678, 43.454449>,  <33.652931, 31.008516, 43.414543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.023293, 30.390678, 43.454449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.275314, 30.700485, 43.431992>,  <34.426529, 30.886370, 43.418518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.275314, 30.700485, 43.431992>,  <34.023293, 30.390678, 43.454449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.275314, 30.700485, 43.431992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635032, -0.472279, 0.611299,
		0.446948, -0.420804, -0.789406,
		0.630057, 0.774517, -0.056140,
		34.464333, 30.932840, 43.415150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.702465, 30.170982, 43.365177>,  <34.023293, 30.390678, 43.454449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.702465, 30.170982, 43.365177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.759583, 30.543076, 43.500397>,  <34.793854, 30.766331, 43.581528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.759583, 30.543076, 43.500397>,  <34.702465, 30.170982, 43.365177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.759583, 30.543076, 43.500397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619314, -0.350399, 0.702617,
		0.772049, 0.109025, -0.626142,
		0.142797, 0.930233, 0.338046,
		34.802422, 30.822145, 43.601810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.470997, 30.331688, 43.466858>,  <34.702465, 30.170982, 43.365177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.470997, 30.331688, 43.466858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.276852, 30.600468, 43.690609>,  <35.160366, 30.761736, 43.824860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.276852, 30.600468, 43.690609>,  <35.470997, 30.331688, 43.466858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.276852, 30.600468, 43.690609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417776, -0.383787, 0.823511,
		0.768043, 0.633395, -0.094450,
		-0.485359, 0.671951, 0.559382,
		35.131245, 30.802053, 43.858425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.793045, 30.263212, 44.039227>,  <35.470997, 30.331688, 43.466858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.793045, 30.263212, 44.039227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.502796, 30.489292, 44.196209>,  <35.328648, 30.624939, 44.290398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.502796, 30.489292, 44.196209>,  <35.793045, 30.263212, 44.039227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.502796, 30.489292, 44.196209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277165, -0.281958, 0.918520,
		0.629802, 0.775275, 0.047942,
		-0.725623, 0.565198, 0.392456,
		35.285110, 30.658852, 44.313946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.150543, 30.615000, 44.566547>,  <35.793045, 30.263212, 44.039227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.150543, 30.615000, 44.566547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.753578, 30.610439, 44.615517>,  <35.515400, 30.607702, 44.644897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.753578, 30.610439, 44.615517>,  <36.150543, 30.615000, 44.566547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.753578, 30.610439, 44.615517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121533, -0.241858, 0.962670,
		0.018633, 0.970245, 0.241409,
		-0.992412, -0.011401, 0.122424,
		35.455856, 30.607019, 44.652245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.006447, 31.133444, 45.076797>,  <36.150543, 30.615000, 44.566547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.006447, 31.133444, 45.076797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.707722, 30.867920, 45.092911>,  <35.528484, 30.708605, 45.102577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.707722, 30.867920, 45.092911>,  <36.006447, 31.133444, 45.076797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.707722, 30.867920, 45.092911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147245, -0.105979, 0.983406,
		-0.648526, 0.740354, 0.176890,
		-0.746815, -0.663811, 0.040283,
		35.483677, 30.668777, 45.104996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.701427, 31.383507, 45.574265>,  <36.006447, 31.133444, 45.076797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.701427, 31.383507, 45.574265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.574951, 31.004597, 45.553501>,  <35.499065, 30.777250, 45.541042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.574951, 31.004597, 45.553501>,  <35.701427, 31.383507, 45.574265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.574951, 31.004597, 45.553501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051720, -0.071851, 0.996074,
		-0.947285, 0.312265, 0.071712,
		-0.316191, -0.947274, -0.051913,
		35.480095, 30.720415, 45.537926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.064877, 31.237268, 46.064564>,  <35.701427, 31.383507, 45.574265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.064877, 31.237268, 46.064564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.230572, 30.877607, 46.008087>,  <35.329987, 30.661812, 45.974201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.230572, 30.877607, 46.008087>,  <35.064877, 31.237268, 46.064564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.230572, 30.877607, 46.008087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002677, -0.156330, 0.987701,
		-0.910166, -0.408763, -0.067164,
		0.414235, -0.899152, -0.141191,
		35.354843, 30.607862, 45.965729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.647858, 30.827070, 46.422668>,  <35.064877, 31.237268, 46.064564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.647858, 30.827070, 46.422668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.987495, 30.623676, 46.365433>,  <35.191280, 30.501640, 46.331089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.987495, 30.623676, 46.365433>,  <34.647858, 30.827070, 46.422668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.987495, 30.623676, 46.365433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113430, -0.089057, 0.989547,
		-0.515912, -0.856454, -0.017940,
		0.849098, -0.508484, -0.143093,
		35.242226, 30.471130, 46.322506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.626671, 30.374958, 46.974876>,  <34.647858, 30.827070, 46.422668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.626671, 30.374958, 46.974876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.005642, 30.334482, 46.853458>,  <35.233025, 30.310196, 46.780609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.005642, 30.334482, 46.853458>,  <34.626671, 30.374958, 46.974876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.005642, 30.334482, 46.853458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252270, -0.347312, 0.903180,
		-0.196817, -0.932274, -0.303526,
		0.947430, -0.101191, -0.303542,
		35.289871, 30.304125, 46.762398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.838474, 29.799042, 47.305302>,  <34.626671, 30.374958, 46.974876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.838474, 29.799042, 47.305302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.193783, 29.924316, 47.170906>,  <35.406967, 29.999481, 47.090271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.193783, 29.924316, 47.170906>,  <34.838474, 29.799042, 47.305302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.193783, 29.924316, 47.170906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441181, -0.378230, 0.813819,
		0.127798, -0.871123, -0.474144,
		0.888272, 0.313188, -0.335986,
		35.460266, 30.018272, 47.070110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.366173, 29.216299, 47.158237>,  <34.838474, 29.799042, 47.305302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.366173, 29.216299, 47.158237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.558331, 29.560095, 47.228100>,  <35.673626, 29.766373, 47.270016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.558331, 29.560095, 47.228100>,  <35.366173, 29.216299, 47.158237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.558331, 29.560095, 47.228100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360972, -0.375248, 0.853749,
		0.799327, -0.347087, -0.490517,
		0.480391, 0.859488, 0.174657,
		35.702450, 29.817942, 47.280499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.014038, 28.940365, 47.320087>,  <35.366173, 29.216299, 47.158237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.014038, 28.940365, 47.320087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.967754, 29.305550, 47.476604>,  <35.939983, 29.524660, 47.570515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.967754, 29.305550, 47.476604>,  <36.014038, 28.940365, 47.320087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.967754, 29.305550, 47.476604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500382, -0.286721, 0.816951,
		0.858038, 0.290325, -0.423654,
		-0.115711, 0.912964, 0.391290,
		35.933041, 29.579439, 47.593990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.613091, 29.098217, 47.565239>,  <36.014038, 28.940365, 47.320087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.613091, 29.098217, 47.565239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.372902, 29.332289, 47.783230>,  <36.228790, 29.472733, 47.914024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.372902, 29.332289, 47.783230>,  <36.613091, 29.098217, 47.565239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.372902, 29.332289, 47.783230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511101, -0.243277, 0.824374,
		0.614987, 0.773551, -0.153005,
		-0.600473, 0.585180, 0.544974,
		36.192760, 29.507843, 47.946724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.343941, 29.171209, 47.450348>,  <36.613091, 29.098217, 47.565239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.343941, 29.171209, 47.450348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.711052, 29.012369, 47.450294>,  <37.931316, 28.917065, 47.450264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.711052, 29.012369, 47.450294>,  <37.343941, 29.171209, 47.450348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.711052, 29.012369, 47.450294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114794, 0.265624, -0.957218,
		0.380145, 0.878496, 0.289368,
		0.917775, -0.397100, -0.000129,
		37.986385, 28.893240, 47.450256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.905178, 29.698954, 47.317719>,  <37.343941, 29.171209, 47.450348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.905178, 29.698954, 47.317719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.013092, 29.343914, 47.168381>,  <38.077839, 29.130890, 47.078777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.013092, 29.343914, 47.168381>,  <37.905178, 29.698954, 47.317719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.013092, 29.343914, 47.168381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248317, 0.438734, -0.863627,
		0.930353, 0.140283, 0.338768,
		0.269781, -0.887600, -0.373343,
		38.094025, 29.077635, 47.056377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.476379, 29.922037, 46.810810>,  <37.905178, 29.698954, 47.317719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.476379, 29.922037, 46.810810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.385750, 29.537249, 46.749786>,  <38.331371, 29.306376, 46.713173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.385750, 29.537249, 46.749786>,  <38.476379, 29.922037, 46.810810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.385750, 29.537249, 46.749786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008871, 0.154586, -0.987940,
		0.973953, -0.225196, -0.026492,
		-0.226576, -0.961972, -0.152557,
		38.317776, 29.248657, 46.704018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.893093, 29.709719, 46.274792>,  <38.476379, 29.922037, 46.810810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.893093, 29.709719, 46.274792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.602627, 29.435053, 46.261089>,  <38.428349, 29.270252, 46.252869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.602627, 29.435053, 46.261089>,  <38.893093, 29.709719, 46.274792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.602627, 29.435053, 46.261089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057669, -0.011181, -0.998273,
		0.685097, -0.726887, 0.047719,
		-0.726165, -0.686666, -0.034258,
		38.384777, 29.229053, 46.250813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.085850, 29.177267, 45.837490>,  <38.893093, 29.709719, 46.274792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.085850, 29.177267, 45.837490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.690746, 29.114977, 45.834042>,  <38.453682, 29.077602, 45.831970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.690746, 29.114977, 45.834042>,  <39.085850, 29.177267, 45.837490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.690746, 29.114977, 45.834042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024992, 0.212626, -0.976814,
		0.153949, -0.964645, -0.213916,
		-0.987763, -0.155725, -0.008625,
		38.394417, 29.068258, 45.831455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
