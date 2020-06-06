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
	<24.190254, 34.923569, 35.301212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.380741, 35.048058, 34.972248>,  <24.495033, 35.122753, 34.774872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.380741, 35.048058, 34.972248>,  <24.190254, 34.923569, 35.301212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.380741, 35.048058, 34.972248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292552, 0.938067, 0.185592,
		0.829234, 0.152215, 0.537774,
		0.476218, 0.311226, -0.822408,
		24.523607, 35.141426, 34.725525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.565119, 35.633797, 35.402348>,  <24.190254, 34.923569, 35.301212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.565119, 35.633797, 35.402348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.476772, 35.618698, 35.012520>,  <24.423763, 35.609638, 34.778622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.476772, 35.618698, 35.012520>,  <24.565119, 35.633797, 35.402348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.476772, 35.618698, 35.012520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365814, 0.929505, 0.046901,
		0.904101, 0.366872, -0.219106,
		-0.220867, -0.037749, -0.974573,
		24.410513, 35.607372, 34.720146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.026117, 36.039684, 35.027534>,  <24.565119, 35.633797, 35.402348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.026117, 36.039684, 35.027534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.664249, 35.994766, 34.863113>,  <24.447128, 35.967815, 34.764462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.664249, 35.994766, 34.863113>,  <25.026117, 36.039684, 35.027534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.664249, 35.994766, 34.863113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111781, 0.993409, -0.025380,
		0.411191, 0.022987, -0.911259,
		-0.904670, -0.112298, -0.411050,
		24.392849, 35.961079, 34.739799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.996227, 36.414539, 34.440960>,  <25.026117, 36.039684, 35.027534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.996227, 36.414539, 34.440960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.193714, 36.746784, 34.543972>,  <25.312206, 36.946133, 34.605778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.193714, 36.746784, 34.543972>,  <24.996227, 36.414539, 34.440960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.193714, 36.746784, 34.543972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285908, 0.124634, -0.950117,
		-0.821278, 0.542720, -0.175945,
		0.493719, 0.830615, 0.257528,
		25.341829, 36.995968, 34.621231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.784645, 37.025154, 34.024727>,  <24.996227, 36.414539, 34.440960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.784645, 37.025154, 34.024727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.166443, 37.076111, 34.132591>,  <25.395521, 37.106686, 34.197311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.166443, 37.076111, 34.132591>,  <24.784645, 37.025154, 34.024727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.166443, 37.076111, 34.132591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233401, 0.243798, -0.941322,
		-0.185657, 0.961423, 0.202971,
		0.954492, 0.127389, 0.269660,
		25.452791, 37.114326, 34.213490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.046879, 37.750427, 33.849812>,  <24.784645, 37.025154, 34.024727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.046879, 37.750427, 33.849812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.339788, 37.478188, 33.840324>,  <25.515533, 37.314846, 33.834633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.339788, 37.478188, 33.840324>,  <25.046879, 37.750427, 33.849812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.339788, 37.478188, 33.840324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155013, 0.200490, -0.967355,
		0.663133, 0.704693, 0.252315,
		0.732274, -0.680597, -0.023715,
		25.559471, 37.274010, 33.833210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.534605, 38.150406, 33.514084>,  <25.046879, 37.750427, 33.849812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.534605, 38.150406, 33.514084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.623976, 37.761898, 33.481285>,  <25.677599, 37.528793, 33.461605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.623976, 37.761898, 33.481285>,  <25.534605, 38.150406, 33.514084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.623976, 37.761898, 33.481285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372930, 0.162907, -0.913447,
		0.900557, 0.173510, 0.398612,
		0.223429, -0.971265, -0.081999,
		25.691004, 37.470520, 33.456684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.116234, 38.105129, 33.193226>,  <25.534605, 38.150406, 33.514084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.116234, 38.105129, 33.193226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.979343, 37.733166, 33.139324>,  <25.897209, 37.509987, 33.106983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.979343, 37.733166, 33.139324>,  <26.116234, 38.105129, 33.193226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.979343, 37.733166, 33.139324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321263, 0.018974, -0.946800,
		0.882991, -0.367310, 0.292250,
		-0.342224, -0.929905, -0.134757,
		25.876677, 37.454193, 33.098896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.690012, 37.723377, 32.885517>,  <26.116234, 38.105129, 33.193226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.690012, 37.723377, 32.885517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.351128, 37.518127, 32.830479>,  <26.147797, 37.394978, 32.797455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.351128, 37.518127, 32.830479>,  <26.690012, 37.723377, 32.885517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.351128, 37.518127, 32.830479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270545, -0.193820, -0.942995,
		0.457208, -0.836142, 0.303031,
		-0.847211, -0.513129, -0.137598,
		26.096964, 37.364189, 32.789200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.877230, 37.284485, 32.379086>,  <26.690012, 37.723377, 32.885517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.877230, 37.284485, 32.379086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.478277, 37.273682, 32.352238>,  <26.238907, 37.267200, 32.336128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.478277, 37.273682, 32.352238>,  <26.877230, 37.284485, 32.379086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.478277, 37.273682, 32.352238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066011, 0.040077, -0.997014,
		0.029607, -0.998832, -0.038190,
		-0.997380, -0.026998, -0.067120,
		26.179064, 37.265579, 32.332100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.869823, 36.807419, 31.832207>,  <26.877230, 37.284485, 32.379086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.869823, 36.807419, 31.832207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.494530, 36.945049, 31.846785>,  <26.269354, 37.027626, 31.855532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.494530, 36.945049, 31.846785>,  <26.869823, 36.807419, 31.832207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.494530, 36.945049, 31.846785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019787, 0.051798, -0.998461,
		-0.345432, -0.937513, -0.041791,
		-0.938236, 0.344073, 0.036444,
		26.213058, 37.048271, 31.857718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.507179, 36.408497, 31.444408>,  <26.869823, 36.807419, 31.832207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.507179, 36.408497, 31.444408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.319790, 36.761517, 31.460604>,  <26.207355, 36.973328, 31.470322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.319790, 36.761517, 31.460604>,  <26.507179, 36.408497, 31.444408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.319790, 36.761517, 31.460604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040078, 0.024553, -0.998895,
		-0.882568, -0.469579, 0.023869,
		-0.468474, 0.882549, 0.040490,
		26.179247, 37.026279, 31.472750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.085112, 36.464680, 30.843151>,  <26.507179, 36.408497, 31.444408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.085112, 36.464680, 30.843151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.121967, 36.853329, 30.930285>,  <26.144081, 37.086517, 30.982565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.121967, 36.853329, 30.930285>,  <26.085112, 36.464680, 30.843151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.121967, 36.853329, 30.930285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003692, 0.218430, -0.975846,
		-0.995739, 0.090719, 0.016539,
		0.092140, 0.971627, 0.217834,
		26.149609, 37.144817, 30.995634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.572468, 36.702301, 30.433468>,  <26.085112, 36.464680, 30.843151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.572468, 36.702301, 30.433468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.807611, 37.014973, 30.516802>,  <25.948698, 37.202576, 30.566801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.807611, 37.014973, 30.516802>,  <25.572468, 36.702301, 30.433468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.807611, 37.014973, 30.516802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087027, 0.194929, -0.976949,
		-0.804270, 0.592437, 0.046563,
		0.587858, 0.781678, 0.208334,
		25.983969, 37.249477, 30.579302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.295370, 37.294304, 30.151312>,  <25.572468, 36.702301, 30.433468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.295370, 37.294304, 30.151312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.677366, 37.391823, 30.218908>,  <25.906563, 37.450333, 30.259466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.677366, 37.391823, 30.218908>,  <25.295370, 37.294304, 30.151312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.677366, 37.391823, 30.218908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085408, 0.319580, -0.943702,
		-0.284078, 0.915659, 0.284374,
		0.954990, 0.243797, 0.168991,
		25.963863, 37.464962, 30.269606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.428400, 37.912689, 29.801752>,  <25.295370, 37.294304, 30.151312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.428400, 37.912689, 29.801752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.811455, 37.817272, 29.866283>,  <26.041288, 37.760021, 29.905003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.811455, 37.817272, 29.866283>,  <25.428400, 37.912689, 29.801752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.811455, 37.817272, 29.866283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256870, 0.454313, -0.853005,
		0.130186, 0.858310, 0.496343,
		0.957637, -0.238545, 0.161329,
		26.098745, 37.745708, 29.914682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.807123, 38.538647, 29.944498>,  <25.428400, 37.912689, 29.801752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.807123, 38.538647, 29.944498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.054827, 38.257092, 29.805321>,  <26.203449, 38.088158, 29.721813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.054827, 38.257092, 29.805321>,  <25.807123, 38.538647, 29.944498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.054827, 38.257092, 29.805321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184143, 0.560969, -0.807097,
		0.763290, 0.435729, 0.477000,
		0.619257, -0.703885, -0.347945,
		26.240604, 38.045925, 29.700937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.421881, 38.903046, 29.584797>,  <25.807123, 38.538647, 29.944498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.421881, 38.903046, 29.584797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.431904, 38.530590, 29.439274>,  <26.437918, 38.307117, 29.351959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.431904, 38.530590, 29.439274>,  <26.421881, 38.903046, 29.584797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.431904, 38.530590, 29.439274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171753, 0.362521, -0.916013,
		0.984821, -0.039531, 0.169011,
		0.025059, -0.931137, -0.363808,
		26.439421, 38.251247, 29.330132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.065035, 38.915791, 29.040117>,  <26.421881, 38.903046, 29.584797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.065035, 38.915791, 29.040117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.816221, 38.612381, 28.962431>,  <26.666933, 38.430336, 28.915819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.816221, 38.612381, 28.962431>,  <27.065035, 38.915791, 29.040117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.816221, 38.612381, 28.962431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060404, 0.200816, -0.977765,
		0.780655, -0.619937, -0.079097,
		-0.622036, -0.758520, -0.194214,
		26.629610, 38.384827, 28.904167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.490807, 38.452652, 28.604424>,  <27.065035, 38.915791, 29.040117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.490807, 38.452652, 28.604424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.099552, 38.392681, 28.546772>,  <26.864799, 38.356697, 28.512180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.099552, 38.392681, 28.546772>,  <27.490807, 38.452652, 28.604424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.099552, 38.392681, 28.546772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119639, 0.161230, -0.979638,
		0.170130, -0.975460, -0.139765,
		-0.978132, -0.149945, -0.144133,
		26.806112, 38.347702, 28.503532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.514362, 37.941044, 28.049170>,  <27.490807, 38.452652, 28.604424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.514362, 37.941044, 28.049170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.132582, 38.059387, 28.033730>,  <26.903513, 38.130394, 28.024466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.132582, 38.059387, 28.033730>,  <27.514362, 37.941044, 28.049170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.132582, 38.059387, 28.033730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013380, -0.086797, -0.996136,
		-0.298071, -0.951279, 0.078885,
		-0.954450, 0.295863, -0.038600,
		26.846247, 38.148148, 28.022150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.181007, 37.420170, 27.618488>,  <27.514362, 37.941044, 28.049170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.181007, 37.420170, 27.618488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.984592, 37.768608, 27.615259>,  <26.866743, 37.977673, 27.613321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.984592, 37.768608, 27.615259>,  <27.181007, 37.420170, 27.618488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.984592, 37.768608, 27.615259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118852, 0.057809, -0.991228,
		-0.862992, -0.487691, -0.131918,
		-0.491039, 0.871100, -0.008075,
		26.837280, 38.029938, 27.612837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.630253, 37.402321, 27.158327>,  <27.181007, 37.420170, 27.618488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.630253, 37.402321, 27.158327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.681454, 37.798618, 27.176405>,  <26.712175, 38.036396, 27.187252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.681454, 37.798618, 27.176405>,  <26.630253, 37.402321, 27.158327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.681454, 37.798618, 27.176405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174894, 0.022308, -0.984335,
		-0.976231, 0.133904, -0.170419,
		0.128004, 0.990743, 0.045197,
		26.719854, 38.095840, 27.189964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.265896, 37.657936, 26.599794>,  <26.630253, 37.402321, 27.158327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.265896, 37.657936, 26.599794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.544855, 37.922573, 26.710014>,  <26.712231, 38.081356, 26.776146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.544855, 37.922573, 26.710014>,  <26.265896, 37.657936, 26.599794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.544855, 37.922573, 26.710014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349274, 0.021982, -0.936763,
		-0.625812, 0.749542, -0.215746,
		0.697401, 0.661592, 0.275552,
		26.754076, 38.121052, 26.792681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.162645, 38.183842, 26.137993>,  <26.265896, 37.657936, 26.599794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.162645, 38.183842, 26.137993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.530521, 38.192181, 26.294830>,  <26.751247, 38.197186, 26.388933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.530521, 38.192181, 26.294830>,  <26.162645, 38.183842, 26.137993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.530521, 38.192181, 26.294830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392016, -0.105398, -0.913901,
		0.022270, 0.994212, -0.105108,
		0.919689, 0.020851, 0.392094,
		26.806429, 38.198437, 26.412458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.574833, 38.663166, 25.790077>,  <26.162645, 38.183842, 26.137993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.574833, 38.663166, 25.790077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.863102, 38.427059, 25.935524>,  <27.036064, 38.285397, 26.022793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.863102, 38.427059, 25.935524>,  <26.574833, 38.663166, 25.790077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.863102, 38.427059, 25.935524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512746, 0.100806, -0.852602,
		0.466606, 0.800891, 0.375304,
		0.720674, -0.590264, 0.363617,
		27.079304, 38.249981, 26.044609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.244656, 39.045887, 25.766068>,  <26.574833, 38.663166, 25.790077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.244656, 39.045887, 25.766068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.254335, 38.646183, 25.754131>,  <27.260143, 38.406361, 25.746969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.254335, 38.646183, 25.754131>,  <27.244656, 39.045887, 25.766068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.254335, 38.646183, 25.754131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503065, 0.037967, -0.863414,
		0.863910, 0.005883, 0.503612,
		0.024200, -0.999262, -0.029841,
		27.261595, 38.346405, 25.745178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.901114, 38.668221, 25.805614>,  <27.244656, 39.045887, 25.766068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.901114, 38.668221, 25.805614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.668736, 38.423149, 25.591276>,  <27.529308, 38.276108, 25.462673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.668736, 38.423149, 25.591276>,  <27.901114, 38.668221, 25.805614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.668736, 38.423149, 25.591276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409066, 0.349379, -0.842970,
		0.703683, -0.708914, 0.047656,
		-0.580943, -0.612679, -0.535845,
		27.494453, 38.239346, 25.430523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.223478, 38.519428, 25.275150>,  <27.901114, 38.668221, 25.805614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.223478, 38.519428, 25.275150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.865667, 38.386986, 25.155024>,  <27.650980, 38.307522, 25.082947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.865667, 38.386986, 25.155024>,  <28.223478, 38.519428, 25.275150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.865667, 38.386986, 25.155024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235036, 0.223087, -0.946039,
		0.380235, -0.916843, -0.121736,
		-0.894527, -0.331105, -0.300317,
		27.597309, 38.287655, 25.064928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.255457, 37.819366, 25.010164>,  <28.223478, 38.519428, 25.275150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.255457, 37.819366, 25.010164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.004435, 38.094936, 24.865084>,  <27.853821, 38.260281, 24.778036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.004435, 38.094936, 24.865084>,  <28.255457, 37.819366, 25.010164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.004435, 38.094936, 24.865084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520699, 0.025037, -0.853373,
		-0.578833, -0.724396, -0.374436,
		-0.627555, 0.688929, -0.362700,
		27.816168, 38.301617, 24.756273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.895170, 37.886211, 24.379765>,  <28.255457, 37.819366, 25.010164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.895170, 37.886211, 24.379765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.957075, 37.606739, 24.659164>,  <27.994219, 37.439056, 24.826803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.957075, 37.606739, 24.659164>,  <27.895170, 37.886211, 24.379765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.957075, 37.606739, 24.659164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392727, -0.605247, -0.692417,
		0.906540, 0.381479, 0.180720,
		0.154762, -0.698677, 0.698498,
		28.003504, 37.397137, 24.868713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.493248, 37.542870, 24.276934>,  <27.895170, 37.886211, 24.379765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.493248, 37.542870, 24.276934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.292894, 37.244843, 24.453110>,  <28.172682, 37.066025, 24.558815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.292894, 37.244843, 24.453110>,  <28.493248, 37.542870, 24.276934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.292894, 37.244843, 24.453110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193651, -0.592448, -0.781988,
		0.843572, -0.306394, 0.441031,
		-0.500884, -0.745069, 0.440439,
		28.142630, 37.021320, 24.585241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.888256, 36.903255, 24.350079>,  <28.493248, 37.542870, 24.276934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.888256, 36.903255, 24.350079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.501287, 36.806736, 24.319422>,  <28.269106, 36.748825, 24.301027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.501287, 36.806736, 24.319422>,  <28.888256, 36.903255, 24.350079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.501287, 36.806736, 24.319422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200801, -0.546909, -0.812754,
		0.154202, -0.801664, 0.577543,
		-0.967419, -0.241300, -0.076640,
		28.211061, 36.734344, 24.296431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.715391, 36.220741, 24.462696>,  <28.888256, 36.903255, 24.350079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.715391, 36.220741, 24.462696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.467762, 36.398998, 24.204039>,  <28.319185, 36.505955, 24.048843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.467762, 36.398998, 24.204039>,  <28.715391, 36.220741, 24.462696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.467762, 36.398998, 24.204039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141574, -0.746583, -0.650054,
		-0.772469, -0.493978, 0.399096,
		-0.619071, 0.445646, -0.646647,
		28.282040, 36.532692, 24.010044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.418844, 36.216187, 24.851421>,  <28.715391, 36.220741, 24.462696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.418844, 36.216187, 24.851421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.493605, 36.574730, 25.012228>,  <29.538462, 36.789856, 25.108711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.493605, 36.574730, 25.012228>,  <29.418844, 36.216187, 24.851421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.493605, 36.574730, 25.012228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182437, -0.370439, 0.910764,
		0.965290, -0.243567, 0.094292,
		0.186902, 0.896354, 0.402016,
		29.549675, 36.843636, 25.132833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.063414, 36.211315, 25.313641>,  <29.418844, 36.216187, 24.851421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.063414, 36.211315, 25.313641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.770447, 36.468754, 25.402502>,  <29.594666, 36.623215, 25.455818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.770447, 36.468754, 25.402502>,  <30.063414, 36.211315, 25.313641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.770447, 36.468754, 25.402502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039730, -0.366129, 0.929715,
		0.679695, 0.672114, 0.293729,
		-0.732418, 0.643593, 0.222154,
		29.550722, 36.661831, 25.469149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.189821, 36.377583, 26.024422>,  <30.063414, 36.211315, 25.313641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.189821, 36.377583, 26.024422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.819849, 36.525608, 25.989655>,  <29.597866, 36.614426, 25.968794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.819849, 36.525608, 25.989655>,  <30.189821, 36.377583, 26.024422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.819849, 36.525608, 25.989655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101508, -0.020097, 0.994632,
		0.366332, 0.928788, 0.056153,
		-0.924931, 0.370066, -0.086917,
		29.542370, 36.636627, 25.963579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.126558, 36.992523, 26.513205>,  <30.189821, 36.377583, 26.024422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.126558, 36.992523, 26.513205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.764122, 36.852421, 26.418276>,  <29.546661, 36.768360, 26.361319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.764122, 36.852421, 26.418276>,  <30.126558, 36.992523, 26.513205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.764122, 36.852421, 26.418276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223254, -0.080659, 0.971417,
		-0.359388, 0.933174, -0.005112,
		-0.906089, -0.350257, -0.237323,
		29.492294, 36.747345, 26.347078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.640018, 37.502998, 26.854563>,  <30.126558, 36.992523, 26.513205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.640018, 37.502998, 26.854563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.439249, 37.163658, 26.787180>,  <29.318789, 36.960052, 26.746750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.439249, 37.163658, 26.787180>,  <29.640018, 37.502998, 26.854563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.439249, 37.163658, 26.787180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254464, -0.041304, 0.966200,
		-0.826633, 0.527823, -0.195143,
		-0.501922, -0.848349, -0.168455,
		29.288671, 36.909153, 26.736643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.944923, 37.609867, 27.229250>,  <29.640018, 37.502998, 26.854563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.944923, 37.609867, 27.229250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.044790, 37.223995, 27.195663>,  <29.104712, 36.992470, 27.175512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.044790, 37.223995, 27.195663>,  <28.944923, 37.609867, 27.229250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.044790, 37.223995, 27.195663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025930, -0.093340, 0.995296,
		-0.967984, -0.246317, -0.048318,
		0.249669, -0.964684, -0.083965,
		29.119692, 36.934589, 27.170473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.379539, 37.300064, 27.297310>,  <28.944923, 37.609867, 27.229250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.379539, 37.300064, 27.297310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.666374, 37.034672, 27.382711>,  <28.838476, 36.875439, 27.433952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.666374, 37.034672, 27.382711>,  <28.379539, 37.300064, 27.297310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.666374, 37.034672, 27.382711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308068, -0.026942, 0.950983,
		-0.625203, -0.747711, -0.223716,
		0.717088, -0.663477, 0.213502,
		28.881500, 36.835629, 27.446762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.084358, 36.770344, 27.820498>,  <28.379539, 37.300064, 27.297310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.084358, 36.770344, 27.820498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.472204, 36.672695, 27.826874>,  <28.704912, 36.614105, 27.830700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.472204, 36.672695, 27.826874>,  <28.084358, 36.770344, 27.820498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.472204, 36.672695, 27.826874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032124, -0.062464, 0.997530,
		-0.242525, -0.967730, -0.068408,
		0.969613, -0.244124, 0.015938,
		28.763088, 36.599457, 27.831656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.120916, 36.347630, 28.386425>,  <28.084358, 36.770344, 27.820498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.120916, 36.347630, 28.386425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.509874, 36.413441, 28.320242>,  <28.743250, 36.452927, 28.280533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.509874, 36.413441, 28.320242>,  <28.120916, 36.347630, 28.386425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.509874, 36.413441, 28.320242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182133, -0.091958, 0.978964,
		0.145853, -0.982076, -0.119386,
		0.972396, 0.164529, -0.165456,
		28.801594, 36.462799, 28.270605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.432564, 35.902573, 28.791988>,  <28.120916, 36.347630, 28.386425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.432564, 35.902573, 28.791988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.702415, 36.192081, 28.733978>,  <28.864326, 36.365788, 28.699171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.702415, 36.192081, 28.733978>,  <28.432564, 35.902573, 28.791988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.702415, 36.192081, 28.733978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288893, -0.078083, 0.954172,
		0.679277, -0.685608, -0.261770,
		0.674628, 0.723771, -0.145028,
		28.904804, 36.409214, 28.690470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.103708, 35.694935, 29.029535>,  <28.432564, 35.902573, 28.791988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.103708, 35.694935, 29.029535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.088228, 36.094357, 29.044416>,  <29.078939, 36.334011, 29.053345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.088228, 36.094357, 29.044416>,  <29.103708, 35.694935, 29.029535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.088228, 36.094357, 29.044416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230413, -0.027309, 0.972710,
		0.972323, 0.046216, -0.229024,
		-0.038700, 0.998558, 0.037202,
		29.076618, 36.393925, 29.055576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.719809, 35.976372, 29.360550>,  <29.103708, 35.694935, 29.029535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.719809, 35.976372, 29.360550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.457424, 36.275063, 29.404581>,  <29.299994, 36.454277, 29.431000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.457424, 36.275063, 29.404581>,  <29.719809, 35.976372, 29.360550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.457424, 36.275063, 29.404581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244333, 0.072083, 0.967009,
		0.714155, 0.661215, -0.229733,
		-0.655960, 0.746725, 0.110078,
		29.260635, 36.499081, 29.437605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.057177, 36.445175, 29.802881>,  <29.719809, 35.976372, 29.360550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.057177, 36.445175, 29.802881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.664099, 36.518711, 29.811928>,  <29.428251, 36.562832, 29.817356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.664099, 36.518711, 29.811928>,  <30.057177, 36.445175, 29.802881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.664099, 36.518711, 29.811928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050679, 0.149410, 0.987476,
		0.178156, 0.971535, -0.156141,
		-0.982696, 0.183838, 0.022618,
		29.369289, 36.573864, 29.818712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.018572, 36.957020, 30.351620>,  <30.057177, 36.445175, 29.802881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.018572, 36.957020, 30.351620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.657984, 36.791855, 30.299692>,  <29.441631, 36.692757, 30.268536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.657984, 36.791855, 30.299692>,  <30.018572, 36.957020, 30.351620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.657984, 36.791855, 30.299692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158956, 0.036844, 0.986598,
		-0.402594, 0.910026, -0.098849,
		-0.901472, -0.412911, -0.129821,
		29.387543, 36.667980, 30.260746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.544464, 37.308434, 30.791536>,  <30.018572, 36.957020, 30.351620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.544464, 37.308434, 30.791536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.355776, 36.959732, 30.738592>,  <29.242563, 36.750511, 30.706825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.355776, 36.959732, 30.738592>,  <29.544464, 37.308434, 30.791536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.355776, 36.959732, 30.738592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336908, 0.039474, 0.940709,
		-0.814846, 0.488345, -0.312323,
		-0.471719, -0.871757, -0.132363,
		29.214260, 36.698204, 30.698883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.810844, 37.463348, 30.941729>,  <29.544464, 37.308434, 30.791536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.810844, 37.463348, 30.941729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.893261, 37.076305, 31.000086>,  <28.942711, 36.844078, 31.035101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.893261, 37.076305, 31.000086>,  <28.810844, 37.463348, 30.941729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.893261, 37.076305, 31.000086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363412, 0.062765, 0.929512,
		-0.908558, -0.244537, -0.338708,
		0.206041, -0.967606, 0.145894,
		28.955074, 36.786022, 31.043854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.221666, 37.176140, 31.225538>,  <28.810844, 37.463348, 30.941729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.221666, 37.176140, 31.225538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.483299, 36.889122, 31.321297>,  <28.640278, 36.716911, 31.378752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.483299, 36.889122, 31.321297>,  <28.221666, 37.176140, 31.225538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.483299, 36.889122, 31.321297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507843, -0.182010, 0.842002,
		-0.560602, -0.672312, -0.483449,
		0.654080, -0.717544, 0.239394,
		28.679523, 36.673859, 31.393116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.763887, 36.625137, 31.469002>,  <28.221666, 37.176140, 31.225538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.763887, 36.625137, 31.469002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.130312, 36.521679, 31.591599>,  <28.350166, 36.459602, 31.665157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.130312, 36.521679, 31.591599>,  <27.763887, 36.625137, 31.469002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.130312, 36.521679, 31.591599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368461, -0.241069, 0.897843,
		-0.158337, -0.935408, -0.316134,
		0.916060, -0.258645, 0.306492,
		28.405130, 36.444084, 31.683546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.722170, 35.931351, 31.711664>,  <27.763887, 36.625137, 31.469002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.722170, 35.931351, 31.711664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.038055, 36.104362, 31.885683>,  <28.227587, 36.208168, 31.990095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.038055, 36.104362, 31.885683>,  <27.722170, 35.931351, 31.711664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.038055, 36.104362, 31.885683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432171, -0.111075, 0.894925,
		0.435405, -0.894751, 0.099209,
		0.789716, 0.432531, 0.435048,
		28.274971, 36.234123, 32.016197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.999212, 35.489819, 32.337379>,  <27.722170, 35.931351, 31.711664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.999212, 35.489819, 32.337379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.137638, 35.856197, 32.418644>,  <28.220694, 36.076027, 32.467403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.137638, 35.856197, 32.418644>,  <27.999212, 35.489819, 32.337379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.137638, 35.856197, 32.418644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300031, -0.097132, 0.948972,
		0.888944, -0.389361, 0.241199,
		0.346065, 0.915949, 0.203165,
		28.241457, 36.130981, 32.479595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.377356, 35.361694, 32.986736>,  <27.999212, 35.489819, 32.337379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.377356, 35.361694, 32.986736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.314600, 35.756645, 32.995407>,  <28.276947, 35.993614, 33.000610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.314600, 35.756645, 32.995407>,  <28.377356, 35.361694, 32.986736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.314600, 35.756645, 32.995407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337194, -0.074183, 0.938508,
		0.928270, 0.139932, 0.344576,
		-0.156889, 0.987378, 0.021678,
		28.267534, 36.052860, 33.001911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.468472, 35.522556, 33.655018>,  <28.377356, 35.361694, 32.986736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.468472, 35.522556, 33.655018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.300528, 35.849236, 33.496666>,  <28.199760, 36.045242, 33.401653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.300528, 35.849236, 33.496666>,  <28.468472, 35.522556, 33.655018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.300528, 35.849236, 33.496666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325249, 0.271827, 0.905717,
		0.847307, 0.509037, 0.151501,
		-0.419861, 0.816696, -0.395884,
		28.174570, 36.094246, 33.377899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.837584, 36.151352, 33.894405>,  <28.468472, 35.522556, 33.655018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.837584, 36.151352, 33.894405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.451385, 36.205055, 33.805149>,  <28.219666, 36.237278, 33.751595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.451385, 36.205055, 33.805149>,  <28.837584, 36.151352, 33.894405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.451385, 36.205055, 33.805149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155767, 0.388929, 0.908004,
		0.208693, 0.911432, -0.354597,
		-0.965497, 0.134259, -0.223138,
		28.161736, 36.245335, 33.738209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.084490, 36.048317, 33.264191>,  <28.837584, 36.151352, 33.894405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.084490, 36.048317, 33.264191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.283342, 36.019566, 33.610069>,  <29.402653, 36.002316, 33.817596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.283342, 36.019566, 33.610069>,  <29.084490, 36.048317, 33.264191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.283342, 36.019566, 33.610069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074460, -0.996421, -0.040017,
		0.864475, -0.044492, -0.500703,
		0.497130, -0.071876, 0.864694,
		29.432482, 35.998001, 33.869476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.557907, 35.494183, 33.224335>,  <29.084490, 36.048317, 33.264191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.557907, 35.494183, 33.224335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.534792, 35.570580, 33.616291>,  <29.520924, 35.616417, 33.851463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.534792, 35.570580, 33.616291>,  <29.557907, 35.494183, 33.224335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.534792, 35.570580, 33.616291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180766, -0.967307, 0.177879,
		0.981827, -0.166851, 0.090424,
		-0.057788, 0.190992, 0.979889,
		29.517456, 35.627876, 33.910259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.926683, 34.993816, 33.728153>,  <29.557907, 35.494183, 33.224335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.926683, 34.993816, 33.728153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.596104, 35.146164, 33.894005>,  <29.397757, 35.237572, 33.993515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.596104, 35.146164, 33.894005>,  <29.926683, 34.993816, 33.728153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.596104, 35.146164, 33.894005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288679, -0.918941, 0.268724,
		0.483371, 0.102392, 0.869407,
		-0.826448, 0.380873, 0.414631,
		29.348169, 35.260426, 34.018394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.434587, 34.605488, 34.141785>,  <29.926683, 34.993816, 33.728153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.434587, 34.605488, 34.141785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.380201, 34.513943, 33.756218>,  <30.347570, 34.459015, 33.524879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.380201, 34.513943, 33.756218>,  <30.434587, 34.605488, 34.141785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.380201, 34.513943, 33.756218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761338, 0.646710, -0.046161,
		0.633938, 0.727589, -0.262175,
		-0.135965, -0.228867, -0.963916,
		30.339413, 34.445282, 33.467045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.634771, 35.082478, 34.741100>,  <30.434587, 34.605488, 34.141785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.634771, 35.082478, 34.741100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.812639, 35.207916, 34.405499>,  <30.919361, 35.283180, 34.204140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.812639, 35.207916, 34.405499>,  <30.634771, 35.082478, 34.741100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.812639, 35.207916, 34.405499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228155, 0.866148, 0.444672,
		0.866148, -0.389155, 0.313601,
		-0.444672, -0.313601, 0.839000,
		30.946041, 35.301998, 34.153797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.976074, 35.530422, 34.558178>,  <30.634771, 35.082478, 34.741100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.976074, 35.530422, 34.558178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.737816, 35.508179, 34.878704>,  <29.594860, 35.494831, 35.071022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.737816, 35.508179, 34.878704>,  <29.976074, 35.530422, 34.558178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.737816, 35.508179, 34.878704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529503, 0.722978, 0.443767,
		-0.604014, 0.688630, -0.401194,
		-0.595646, -0.055608, 0.801320,
		29.559122, 35.491497, 35.119099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.577374, 36.120743, 34.592888>,  <29.976074, 35.530422, 34.558178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.577374, 36.120743, 34.592888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.718227, 35.917683, 34.907413>,  <29.802740, 35.795845, 35.096130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.718227, 35.917683, 34.907413>,  <29.577374, 36.120743, 34.592888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.718227, 35.917683, 34.907413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441389, 0.830909, 0.338771,
		-0.825334, 0.227778, 0.516663,
		0.352135, -0.507649, 0.786316,
		29.823868, 35.765388, 35.143307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.505365, 36.522221, 35.120972>,  <29.577374, 36.120743, 34.592888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.505365, 36.522221, 35.120972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.804983, 36.286888, 35.242825>,  <29.984753, 36.145687, 35.315937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.804983, 36.286888, 35.242825>,  <29.505365, 36.522221, 35.120972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.804983, 36.286888, 35.242825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584018, 0.803455, 0.115687,
		-0.312821, 0.091257, 0.945418,
		0.749043, -0.588330, 0.304634,
		30.029696, 36.110390, 35.334213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.768167, 36.698517, 35.864941>,  <29.505365, 36.522221, 35.120972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.768167, 36.698517, 35.864941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.057022, 36.486095, 35.687630>,  <30.230335, 36.358643, 35.581242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.057022, 36.486095, 35.687630>,  <29.768167, 36.698517, 35.864941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.057022, 36.486095, 35.687630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684957, 0.638516, 0.350899,
		0.096694, -0.557025, 0.824848,
		0.722138, -0.531056, -0.443279,
		30.273664, 36.326778, 35.554646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.228014, 36.602921, 36.488869>,  <29.768167, 36.698517, 35.864941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.228014, 36.602921, 36.488869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.402269, 36.553146, 36.132275>,  <30.506823, 36.523281, 35.918320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.402269, 36.553146, 36.132275>,  <30.228014, 36.602921, 36.488869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.402269, 36.553146, 36.132275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786172, 0.534915, 0.309514,
		0.438354, -0.835693, 0.330853,
		0.435636, -0.124431, -0.891481,
		30.532961, 36.515816, 35.864830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.961872, 36.334957, 36.651234>,  <30.228014, 36.602921, 36.488869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.961872, 36.334957, 36.651234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.952059, 36.528301, 36.301201>,  <30.946171, 36.644306, 36.091183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.952059, 36.528301, 36.301201>,  <30.961872, 36.334957, 36.651234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.952059, 36.528301, 36.301201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895216, 0.400228, 0.195973,
		0.444956, -0.778576, -0.442531,
		-0.024533, 0.483360, -0.875078,
		30.944698, 36.673309, 36.038677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.480343, 36.079395, 36.235886>,  <30.961872, 36.334957, 36.651234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.480343, 36.079395, 36.235886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.411501, 36.438015, 36.072628>,  <31.370195, 36.653187, 35.974674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.411501, 36.438015, 36.072628>,  <31.480343, 36.079395, 36.235886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.411501, 36.438015, 36.072628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962959, 0.240428, 0.122082,
		0.207582, -0.372018, -0.904717,
		-0.172103, 0.896547, -0.408147,
		31.359871, 36.706978, 35.950184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.169346, 36.370079, 35.989040>,  <31.480343, 36.079395, 36.235886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.169346, 36.370079, 35.989040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.929337, 36.690010, 35.995277>,  <31.785330, 36.881969, 35.999020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.929337, 36.690010, 35.995277>,  <32.169346, 36.370079, 35.989040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.929337, 36.690010, 35.995277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747719, 0.553795, 0.366371,
		0.284400, 0.231489, -0.930338,
		-0.600028, 0.799827, 0.015590,
		31.749329, 36.929958, 35.999954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.487804, 36.854557, 35.677410>,  <32.169346, 36.370079, 35.989040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.487804, 36.854557, 35.677410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.227009, 37.061562, 35.899075>,  <32.070534, 37.185764, 36.032074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.227009, 37.061562, 35.899075>,  <32.487804, 36.854557, 35.677410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.227009, 37.061562, 35.899075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736181, 0.607029, 0.299254,
		-0.181522, 0.603070, -0.776760,
		-0.651987, 0.517514, 0.554158,
		32.031414, 37.216816, 36.065323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.743366, 37.467545, 35.533001>,  <32.487804, 36.854557, 35.677410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.743366, 37.467545, 35.533001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.480156, 37.529167, 35.827827>,  <32.322227, 37.566139, 36.004723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.480156, 37.529167, 35.827827>,  <32.743366, 37.467545, 35.533001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.480156, 37.529167, 35.827827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604730, 0.691355, 0.395386,
		-0.448664, 0.705901, -0.548092,
		-0.658029, 0.154052, 0.737065,
		32.282745, 37.575382, 36.048946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.601624, 38.130398, 35.574303>,  <32.743366, 37.467545, 35.533001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.601624, 38.130398, 35.574303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.529278, 37.989128, 35.941467>,  <32.485870, 37.904366, 36.161766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.529278, 37.989128, 35.941467>,  <32.601624, 38.130398, 35.574303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.529278, 37.989128, 35.941467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663476, 0.645133, 0.378949,
		-0.726008, 0.677549, 0.117639,
		-0.180864, -0.353171, 0.917910,
		32.475018, 37.883175, 36.216839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.542023, 38.724419, 36.046921>,  <32.601624, 38.130398, 35.574303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.542023, 38.724419, 36.046921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.581409, 38.416809, 36.299557>,  <32.605042, 38.232243, 36.451138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.581409, 38.416809, 36.299557>,  <32.542023, 38.724419, 36.046921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.581409, 38.416809, 36.299557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484199, 0.591503, 0.644729,
		-0.869400, 0.242333, 0.430603,
		0.098464, -0.769024, 0.631590,
		32.610950, 38.186100, 36.489033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.375561, 39.041477, 36.703571>,  <32.542023, 38.724419, 36.046921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.375561, 39.041477, 36.703571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.558990, 38.702274, 36.809849>,  <32.669048, 38.498753, 36.873615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.558990, 38.702274, 36.809849>,  <32.375561, 39.041477, 36.703571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.558990, 38.702274, 36.809849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441990, 0.477027, 0.759665,
		-0.770942, -0.230934, 0.593564,
		0.458578, -0.848006, 0.265690,
		32.696564, 38.447872, 36.889557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.314621, 39.022751, 37.433140>,  <32.375561, 39.041477, 36.703571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.314621, 39.022751, 37.433140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.632008, 38.797020, 37.341976>,  <32.822441, 38.661583, 37.287277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.632008, 38.797020, 37.341976>,  <32.314621, 39.022751, 37.433140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.632008, 38.797020, 37.341976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475435, 0.340962, 0.810991,
		-0.379958, -0.751850, 0.538844,
		0.793469, -0.564328, -0.227904,
		32.870049, 38.627720, 37.273605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.497871, 38.869083, 38.073746>,  <32.314621, 39.022751, 37.433140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.497871, 38.869083, 38.073746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.821819, 38.763939, 37.863976>,  <33.016186, 38.700851, 37.738113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.821819, 38.763939, 37.863976>,  <32.497871, 38.869083, 38.073746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.821819, 38.763939, 37.863976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584121, 0.279010, 0.762205,
		-0.054037, -0.923610, 0.379505,
		0.809866, -0.262864, -0.524423,
		33.064777, 38.685081, 37.706650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.975315, 38.434566, 38.293613>,  <32.497871, 38.869083, 38.073746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.975315, 38.434566, 38.293613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.209900, 38.684605, 38.087578>,  <33.350651, 38.834625, 37.963955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.209900, 38.684605, 38.087578>,  <32.975315, 38.434566, 38.293613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.209900, 38.684605, 38.087578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435490, 0.292847, 0.851228,
		0.682939, -0.723532, -0.100477,
		0.586466, 0.625093, -0.515088,
		33.385841, 38.872131, 37.933052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.635761, 38.390800, 38.625534>,  <32.975315, 38.434566, 38.293613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.635761, 38.390800, 38.625534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.617241, 38.746956, 38.444401>,  <33.606129, 38.960651, 38.335720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.617241, 38.746956, 38.444401>,  <33.635761, 38.390800, 38.625534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.617241, 38.746956, 38.444401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479090, 0.417575, 0.772078,
		0.876544, -0.181204, -0.445910,
		-0.046297, 0.890391, -0.452836,
		33.603352, 39.014072, 38.308552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.290627, 38.730499, 38.807053>,  <33.635761, 38.390800, 38.625534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.290627, 38.730499, 38.807053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.053471, 39.031021, 38.691109>,  <33.911175, 39.211334, 38.621544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.053471, 39.031021, 38.691109>,  <34.290627, 38.730499, 38.807053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.053471, 39.031021, 38.691109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323196, 0.551694, 0.768881,
		0.737578, 0.362182, -0.569914,
		-0.592893, 0.751304, -0.289861,
		33.875603, 39.256413, 38.604149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.668617, 39.356552, 39.052132>,  <34.290627, 38.730499, 38.807053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.668617, 39.356552, 39.052132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.307720, 39.501717, 38.958961>,  <34.091183, 39.588818, 38.903061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.307720, 39.501717, 38.958961>,  <34.668617, 39.356552, 39.052132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.307720, 39.501717, 38.958961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148889, 0.769081, 0.621568,
		0.404713, 0.526124, -0.747931,
		-0.902241, 0.362916, -0.232923,
		34.037048, 39.610592, 38.889084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.804909, 40.034508, 38.888634>,  <34.668617, 39.356552, 39.052132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.804909, 40.034508, 38.888634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.414593, 40.035801, 38.976112>,  <34.180405, 40.036579, 39.028599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.414593, 40.035801, 38.976112>,  <34.804909, 40.034508, 38.888634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.414593, 40.035801, 38.976112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131576, 0.807427, 0.575109,
		-0.174722, 0.589959, -0.788302,
		-0.975787, 0.003237, 0.218699,
		34.121857, 40.036774, 39.041721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.563946, 40.729961, 38.792637>,  <34.804909, 40.034508, 38.888634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.563946, 40.729961, 38.792637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.314640, 40.558880, 39.054512>,  <34.165058, 40.456230, 39.211636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.314640, 40.558880, 39.054512>,  <34.563946, 40.729961, 38.792637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.314640, 40.558880, 39.054512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073192, 0.801600, 0.593364,
		-0.778578, 0.417741, -0.468305,
		-0.623265, -0.427703, 0.654683,
		34.127659, 40.430569, 39.250916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.137741, 41.223892, 38.894859>,  <34.563946, 40.729961, 38.792637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.137741, 41.223892, 38.894859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.087891, 40.991409, 39.216522>,  <34.057980, 40.851921, 39.409519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.087891, 40.991409, 39.216522>,  <34.137741, 41.223892, 38.894859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.087891, 40.991409, 39.216522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067044, 0.813555, 0.577610,
		-0.989937, 0.018069, -0.140353,
		-0.124622, -0.581207, 0.804157,
		34.050503, 40.817047, 39.457767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.587311, 41.463970, 39.290680>,  <34.137741, 41.223892, 38.894859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.587311, 41.463970, 39.290680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.760277, 41.209774, 39.546543>,  <33.864056, 41.057255, 39.700062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.760277, 41.209774, 39.546543>,  <33.587311, 41.463970, 39.290680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.760277, 41.209774, 39.546543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083515, 0.734593, 0.673349,
		-0.897799, -0.237745, 0.370721,
		0.432414, -0.635493, 0.639661,
		33.889999, 41.019127, 39.738441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.265850, 41.577847, 40.070961>,  <33.587311, 41.463970, 39.290680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.265850, 41.577847, 40.070961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.599262, 41.367588, 40.138992>,  <33.799309, 41.241432, 40.179810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.599262, 41.367588, 40.138992>,  <33.265850, 41.577847, 40.070961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.599262, 41.367588, 40.138992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197964, 0.571564, 0.796320,
		-0.515792, -0.630086, 0.580474,
		0.833528, -0.525648, 0.170074,
		33.849319, 41.209892, 40.190014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.101433, 41.174782, 40.730671>,  <33.265850, 41.577847, 40.070961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.101433, 41.174782, 40.730671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.496204, 41.190735, 40.668224>,  <33.733067, 41.200306, 40.630756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.496204, 41.190735, 40.668224>,  <33.101433, 41.174782, 40.730671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.496204, 41.190735, 40.668224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129118, 0.383866, 0.914317,
		0.096390, -0.922527, 0.373702,
		0.986934, 0.039879, -0.156115,
		33.792286, 41.202698, 40.621391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.286930, 40.943893, 41.279221>,  <33.101433, 41.174782, 40.730671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.286930, 40.943893, 41.279221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.618122, 41.128361, 41.151611>,  <33.816837, 41.239040, 41.075047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.618122, 41.128361, 41.151611>,  <33.286930, 40.943893, 41.279221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.618122, 41.128361, 41.151611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155603, 0.357615, 0.920815,
		0.538741, -0.812054, 0.224337,
		0.827977, 0.461173, -0.319019,
		33.866516, 41.266712, 41.055904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.860085, 40.848454, 41.807785>,  <33.286930, 40.943893, 41.279221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.860085, 40.848454, 41.807785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.978401, 41.167583, 41.597649>,  <34.049393, 41.359062, 41.471569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.978401, 41.167583, 41.597649>,  <33.860085, 40.848454, 41.807785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.978401, 41.167583, 41.597649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201229, 0.485566, 0.850725,
		0.933816, -0.357354, -0.016917,
		0.295796, 0.797824, -0.525339,
		34.067139, 41.406929, 41.440048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.571377, 40.985737, 42.044132>,  <33.860085, 40.848454, 41.807785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.571377, 40.985737, 42.044132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.441948, 41.326149, 41.878704>,  <34.364292, 41.530396, 41.779446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.441948, 41.326149, 41.878704>,  <34.571377, 40.985737, 42.044132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.441948, 41.326149, 41.878704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419256, 0.520790, 0.743641,
		0.848249, 0.067226, -0.525313,
		-0.323570, 0.851034, -0.413575,
		34.344875, 41.581459, 41.754631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.079781, 41.394188, 41.908852>,  <34.571377, 40.985737, 42.044132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.079781, 41.394188, 41.908852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.789230, 41.669109, 41.908627>,  <34.614902, 41.834061, 41.908493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.789230, 41.669109, 41.908627>,  <35.079781, 41.394188, 41.908852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.789230, 41.669109, 41.908627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509364, 0.538868, 0.670947,
		0.461447, 0.487070, -0.741505,
		-0.726371, 0.687302, -0.000563,
		34.571320, 41.875301, 41.908459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.445885, 41.985184, 41.848202>,  <35.079781, 41.394188, 41.908852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.445885, 41.985184, 41.848202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.089355, 42.105209, 41.984142>,  <34.875439, 42.177223, 42.065708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.089355, 42.105209, 41.984142>,  <35.445885, 41.985184, 41.848202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.089355, 42.105209, 41.984142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450024, 0.494821, 0.743391,
		0.054898, 0.815546, -0.576082,
		-0.891327, 0.300061, 0.339851,
		34.821957, 42.195229, 42.086098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.439629, 42.748894, 41.928768>,  <35.445885, 41.985184, 41.848202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.439629, 42.748894, 41.928768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.151028, 42.608440, 42.167477>,  <34.977867, 42.524170, 42.310703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.151028, 42.608440, 42.167477>,  <35.439629, 42.748894, 41.928768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.151028, 42.608440, 42.167477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294149, 0.624805, 0.723253,
		-0.626827, 0.697369, -0.347512,
		-0.721501, -0.351134, 0.596776,
		34.934578, 42.503101, 42.346508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.206619, 43.357552, 42.299187>,  <35.439629, 42.748894, 41.928768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.206619, 43.357552, 42.299187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.130207, 43.033718, 42.521206>,  <35.084358, 42.839417, 42.654419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.130207, 43.033718, 42.521206>,  <35.206619, 43.357552, 42.299187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.130207, 43.033718, 42.521206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497989, 0.407354, 0.765552,
		-0.845881, 0.422651, 0.325348,
		-0.191029, -0.809586, 0.555048,
		35.072899, 42.790844, 42.687721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.966206, 43.606091, 42.918465>,  <35.206619, 43.357552, 42.299187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.966206, 43.606091, 42.918465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.060791, 43.237980, 43.043163>,  <35.117542, 43.017113, 43.117981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.060791, 43.237980, 43.043163>,  <34.966206, 43.606091, 42.918465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.060791, 43.237980, 43.043163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298501, 0.374132, 0.878022,
		-0.924653, -0.114563, 0.363170,
		0.236462, -0.920272, 0.311745,
		35.131729, 42.961899, 43.136688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.746758, 43.500797, 43.646786>,  <34.966206, 43.606091, 42.918465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.746758, 43.500797, 43.646786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.013981, 43.209019, 43.587986>,  <35.174316, 43.033951, 43.552708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.013981, 43.209019, 43.587986>,  <34.746758, 43.500797, 43.646786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.013981, 43.209019, 43.587986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381816, 0.166481, 0.909121,
		-0.638680, -0.663473, 0.389733,
		0.668061, -0.729443, -0.146997,
		35.214397, 42.990185, 43.543888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.723663, 43.172802, 44.264233>,  <34.746758, 43.500797, 43.646786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.723663, 43.172802, 44.264233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.073662, 43.033653, 44.129551>,  <35.283661, 42.950165, 44.048740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.073662, 43.033653, 44.129551>,  <34.723663, 43.172802, 44.264233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.073662, 43.033653, 44.129551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413178, 0.174095, 0.893854,
		-0.252327, -0.921237, 0.296065,
		0.874994, -0.347871, -0.336706,
		35.336159, 42.929291, 44.028538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.063801, 42.890701, 44.785057>,  <34.723663, 43.172802, 44.264233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.063801, 42.890701, 44.785057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.377853, 42.940479, 44.542377>,  <35.566284, 42.970348, 44.396770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.377853, 42.940479, 44.542377>,  <35.063801, 42.890701, 44.785057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.377853, 42.940479, 44.542377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534717, 0.358053, 0.765425,
		0.312482, -0.925371, 0.214577,
		0.785132, 0.124443, -0.606697,
		35.613392, 42.977814, 44.360367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.615936, 42.641392, 45.074860>,  <35.063801, 42.890701, 44.785057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.615936, 42.641392, 45.074860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.768753, 42.905502, 44.816223>,  <35.860443, 43.063969, 44.661041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.768753, 42.905502, 44.816223>,  <35.615936, 42.641392, 45.074860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.768753, 42.905502, 44.816223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664711, 0.289742, 0.688628,
		0.642031, -0.692879, -0.328201,
		0.382042, 0.660279, -0.646587,
		35.883366, 43.103584, 44.622246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.292545, 42.433544, 45.103931>,  <35.615936, 42.641392, 45.074860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.292545, 42.433544, 45.103931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.244831, 42.806831, 44.968365>,  <36.216202, 43.030804, 44.887024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.244831, 42.806831, 44.968365>,  <36.292545, 42.433544, 45.103931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.244831, 42.806831, 44.968365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504184, 0.351006, 0.789046,
		0.855318, -0.076753, -0.512387,
		-0.119290, 0.933222, -0.338919,
		36.209045, 43.086800, 44.866688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.880398, 42.646770, 45.130554>,  <36.292545, 42.433544, 45.103931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.880398, 42.646770, 45.130554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.645638, 42.970325, 45.144756>,  <36.504784, 43.164459, 45.153278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.645638, 42.970325, 45.144756>,  <36.880398, 42.646770, 45.130554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.645638, 42.970325, 45.144756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555692, 0.370519, 0.744260,
		0.588862, 0.456535, -0.666946,
		-0.586897, 0.808883, 0.035508,
		36.469570, 43.212990, 45.155407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.367298, 43.175274, 45.109550>,  <36.880398, 42.646770, 45.130554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.367298, 43.175274, 45.109550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.032143, 43.340988, 45.251705>,  <36.831047, 43.440418, 45.336998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.032143, 43.340988, 45.251705>,  <37.367298, 43.175274, 45.109550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.032143, 43.340988, 45.251705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503992, 0.337213, 0.795160,
		0.209587, 0.845370, -0.491347,
		-0.837893, 0.414290, 0.355385,
		36.780773, 43.465275, 45.358322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.656685, 43.731274, 45.340805>,  <37.367298, 43.175274, 45.109550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.656685, 43.731274, 45.340805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.311420, 43.683754, 45.537109>,  <37.104263, 43.655243, 45.654892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.311420, 43.683754, 45.537109>,  <37.656685, 43.731274, 45.340805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.311420, 43.683754, 45.537109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416776, 0.381059, 0.825283,
		-0.285049, 0.916887, -0.279403,
		-0.863160, -0.118797, 0.490756,
		37.052471, 43.648113, 45.684338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.586029, 44.415924, 45.624172>,  <37.656685, 43.731274, 45.340805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.586029, 44.415924, 45.624172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.341473, 44.188526, 45.844360>,  <37.194736, 44.052090, 45.976471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.341473, 44.188526, 45.844360>,  <37.586029, 44.415924, 45.624172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.341473, 44.188526, 45.844360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397059, 0.381333, 0.834823,
		-0.684501, 0.728974, -0.007420,
		-0.611394, -0.568491, 0.550469,
		37.158054, 44.017979, 46.009502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.403732, 44.791264, 46.262089>,  <37.586029, 44.415924, 45.624172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.403732, 44.791264, 46.262089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.348141, 44.402470, 46.337917>,  <37.314785, 44.169193, 46.383415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.348141, 44.402470, 46.337917>,  <37.403732, 44.791264, 46.262089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.348141, 44.402470, 46.337917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214790, 0.157284, 0.963912,
		-0.966721, 0.174682, 0.186913,
		-0.138980, -0.971981, 0.189570,
		37.306446, 44.110874, 46.394787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.334663, 44.705261, 47.004593>,  <37.403732, 44.791264, 46.262089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.334663, 44.705261, 47.004593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.395729, 44.313786, 46.949657>,  <37.432369, 44.078899, 46.916695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.395729, 44.313786, 46.949657>,  <37.334663, 44.705261, 47.004593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.395729, 44.313786, 46.949657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091536, -0.124368, 0.988005,
		-0.984031, -0.163400, 0.070599,
		0.152660, -0.978690, -0.137339,
		37.441528, 44.020180, 46.908455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.957188, 44.321590, 47.563290>,  <37.334663, 44.705261, 47.004593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.957188, 44.321590, 47.563290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.225159, 44.072025, 47.402325>,  <37.385941, 43.922287, 47.305748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.225159, 44.072025, 47.402325>,  <36.957188, 44.321590, 47.563290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.225159, 44.072025, 47.402325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152551, -0.414774, 0.897046,
		-0.726586, -0.662342, -0.182689,
		0.669926, -0.623912, -0.402410,
		37.426136, 43.884853, 47.281601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.751751, 43.676109, 47.813412>,  <36.957188, 44.321590, 47.563290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.751751, 43.676109, 47.813412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.140610, 43.657406, 47.721546>,  <37.373924, 43.646183, 47.666428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.140610, 43.657406, 47.721546>,  <36.751751, 43.676109, 47.813412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.140610, 43.657406, 47.721546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209896, -0.262321, 0.941877,
		-0.104282, -0.963848, -0.245201,
		0.972147, -0.046754, -0.229663,
		37.432255, 43.643379, 47.652649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.224785, 43.008980, 47.955585>,  <36.751751, 43.676109, 47.813412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.224785, 43.008980, 47.955585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.444256, 43.340816, 47.997028>,  <37.575939, 43.539917, 48.021893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.444256, 43.340816, 47.997028>,  <37.224785, 43.008980, 47.955585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.444256, 43.340816, 47.997028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033695, -0.145766, 0.988745,
		0.835352, -0.539015, -0.107932,
		0.548682, 0.829587, 0.103603,
		37.608860, 43.589691, 48.028111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.668480, 42.828979, 48.394215>,  <37.224785, 43.008980, 47.955585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.668480, 42.828979, 48.394215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.610958, 43.222107, 48.440502>,  <37.576447, 43.457981, 48.468277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.610958, 43.222107, 48.440502>,  <37.668480, 42.828979, 48.394215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.610958, 43.222107, 48.440502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314661, -0.156279, 0.936251,
		0.938248, 0.098224, 0.331728,
		-0.143805, 0.982817, 0.115721,
		37.567818, 43.516953, 48.475220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.031288, 43.021595, 49.056732>,  <37.668480, 42.828979, 48.394215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.031288, 43.021595, 49.056732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.707413, 43.243889, 48.981297>,  <37.513088, 43.377266, 48.936035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.707413, 43.243889, 48.981297>,  <38.031288, 43.021595, 49.056732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.707413, 43.243889, 48.981297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408395, -0.302788, 0.861123,
		0.421455, 0.774258, 0.472123,
		-0.809685, 0.555737, -0.188592,
		37.464508, 43.410610, 48.924721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.779240, 42.870483, 49.017899>,  <38.031288, 43.021595, 49.056732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.779240, 42.870483, 49.017899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.937691, 42.534798, 48.868874>,  <39.032761, 42.333385, 48.779457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.937691, 42.534798, 48.868874>,  <38.779240, 42.870483, 49.017899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.937691, 42.534798, 48.868874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.918166, -0.365355, -0.153257,
		-0.007503, 0.402784, -0.915264,
		0.396126, -0.839214, -0.372564,
		39.056530, 42.283035, 48.757103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.557911, 42.767330, 48.362457>,  <38.779240, 42.870483, 49.017899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.557911, 42.767330, 48.362457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.638828, 42.413399, 48.530342>,  <38.687378, 42.201038, 48.631073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.638828, 42.413399, 48.530342>,  <38.557911, 42.767330, 48.362457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.638828, 42.413399, 48.530342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.933776, -0.303455, -0.189677,
		0.295194, -0.353545, -0.887618,
		0.202293, -0.884828, 0.419710,
		38.699516, 42.147949, 48.656254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.513134, 42.241459, 47.861778>,  <38.557911, 42.767330, 48.362457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.513134, 42.241459, 47.861778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.427055, 42.102364, 48.226803>,  <38.375408, 42.018906, 48.445816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.427055, 42.102364, 48.226803>,  <38.513134, 42.241459, 47.861778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.427055, 42.102364, 48.226803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832581, -0.423047, -0.357548,
		0.510390, -0.836724, -0.198484,
		-0.215200, -0.347743, 0.912559,
		38.362495, 41.998039, 48.500572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.573551, 41.452709, 47.889370>,  <38.513134, 42.241459, 47.861778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.573551, 41.452709, 47.889370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.265823, 41.652298, 48.048958>,  <38.081188, 41.772049, 48.144711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.265823, 41.652298, 48.048958>,  <38.573551, 41.452709, 47.889370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.265823, 41.652298, 48.048958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637106, -0.552918, -0.537008,
		-0.047354, -0.667316, 0.743268,
		-0.769320, 0.498970, 0.398968,
		38.035027, 41.801991, 48.168648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.951275, 41.008755, 48.264343>,  <38.573551, 41.452709, 47.889370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.951275, 41.008755, 48.264343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.774002, 41.329613, 48.104267>,  <37.667641, 41.522129, 48.008221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.774002, 41.329613, 48.104267>,  <37.951275, 41.008755, 48.264343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.774002, 41.329613, 48.104267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635059, -0.596016, -0.491391,
		-0.632688, 0.036371, 0.773552,
		-0.443178, 0.802148, -0.400190,
		37.641048, 41.570259, 47.984211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.191368, 40.845345, 48.308090>,  <37.951275, 41.008755, 48.264343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.191368, 40.845345, 48.308090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.286865, 41.098278, 48.013294>,  <37.344162, 41.250038, 47.836418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.286865, 41.098278, 48.013294>,  <37.191368, 40.845345, 48.308090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.286865, 41.098278, 48.013294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522750, -0.555900, -0.646303,
		-0.818373, 0.539562, 0.197836,
		0.238743, 0.632336, -0.736989,
		37.358490, 41.287979, 47.792198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.543892, 40.849918, 47.935249>,  <37.191368, 40.845345, 48.308090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.543892, 40.849918, 47.935249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.842880, 40.971001, 47.698723>,  <37.022274, 41.043648, 47.556808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.842880, 40.971001, 47.698723>,  <36.543892, 40.849918, 47.935249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.842880, 40.971001, 47.698723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381083, -0.533711, -0.754936,
		-0.544113, 0.789635, -0.283580,
		0.747474, 0.302703, -0.591315,
		37.067123, 41.061813, 47.521328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.177246, 41.109043, 47.327629>,  <36.543892, 40.849918, 47.935249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.177246, 41.109043, 47.327629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.555187, 41.031578, 47.221992>,  <36.781952, 40.985100, 47.158611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.555187, 41.031578, 47.221992>,  <36.177246, 41.109043, 47.327629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.555187, 41.031578, 47.221992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325954, -0.478118, -0.815572,
		0.031680, 0.856678, -0.514877,
		0.944855, -0.193663, -0.264091,
		36.838642, 40.973480, 47.142765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.268391, 41.403866, 46.635777>,  <36.177246, 41.109043, 47.327629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.268391, 41.403866, 46.635777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.559811, 41.129883, 46.632938>,  <36.734661, 40.965492, 46.631233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.559811, 41.129883, 46.632938>,  <36.268391, 41.403866, 46.635777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.559811, 41.129883, 46.632938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318817, -0.329897, -0.888552,
		0.606280, 0.649614, -0.458722,
		0.728547, -0.684959, -0.007098,
		36.778374, 40.924397, 46.630810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.344643, 41.319382, 45.950146>,  <36.268391, 41.403866, 46.635777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.344643, 41.319382, 45.950146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.550877, 41.007156, 46.091503>,  <36.674618, 40.819820, 46.176319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.550877, 41.007156, 46.091503>,  <36.344643, 41.319382, 45.950146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.550877, 41.007156, 46.091503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130283, -0.479062, -0.868059,
		0.846877, 0.401516, -0.348691,
		0.515584, -0.780567, 0.353396,
		36.705551, 40.772987, 46.197521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.764709, 41.259254, 45.485043>,  <36.344643, 41.319382, 45.950146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.764709, 41.259254, 45.485043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.742428, 40.905876, 45.671131>,  <36.729057, 40.693851, 45.782784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.742428, 40.905876, 45.671131>,  <36.764709, 41.259254, 45.485043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.742428, 40.905876, 45.671131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240274, -0.440386, -0.865060,
		0.969105, -0.159968, -0.187736,
		-0.055705, -0.883442, 0.465217,
		36.725716, 40.640842, 45.810696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.022465, 40.811768, 45.023327>,  <36.764709, 41.259254, 45.485043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.022465, 40.811768, 45.023327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.816814, 40.585785, 45.281471>,  <36.693424, 40.450195, 45.436359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.816814, 40.585785, 45.281471>,  <37.022465, 40.811768, 45.023327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.816814, 40.585785, 45.281471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427763, -0.483281, -0.763844,
		0.743433, -0.668775, 0.006799,
		-0.514126, -0.564959, 0.645365,
		36.662575, 40.416298, 45.475082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.939831, 40.192627, 44.754097>,  <37.022465, 40.811768, 45.023327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.939831, 40.192627, 44.754097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.661114, 40.153790, 45.038364>,  <36.493881, 40.130486, 45.208923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.661114, 40.153790, 45.038364>,  <36.939831, 40.192627, 44.754097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.661114, 40.153790, 45.038364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581347, -0.503896, -0.638846,
		0.420132, -0.858290, 0.294666,
		-0.696796, -0.097096, 0.710667,
		36.452076, 40.124660, 45.251564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.784687, 39.477863, 44.918171>,  <36.939831, 40.192627, 44.754097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.784687, 39.477863, 44.918171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.466038, 39.702747, 45.006996>,  <36.274849, 39.837677, 45.060291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.466038, 39.702747, 45.006996>,  <36.784687, 39.477863, 44.918171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.466038, 39.702747, 45.006996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553088, -0.529716, -0.643036,
		-0.243888, -0.635079, 0.732934,
		-0.796625, 0.562206, 0.222064,
		36.227051, 39.871410, 45.073616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.266739, 39.024994, 45.027264>,  <36.784687, 39.477863, 44.918171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.266739, 39.024994, 45.027264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.077034, 39.371342, 44.963581>,  <35.963211, 39.579151, 44.925373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.077034, 39.371342, 44.963581>,  <36.266739, 39.024994, 45.027264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.077034, 39.371342, 44.963581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637437, -0.462454, -0.616288,
		-0.607251, -0.190797, 0.771261,
		-0.474258, 0.865871, -0.159205,
		35.934757, 39.631104, 44.915821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.473675, 38.910515, 45.040516>,  <36.266739, 39.024994, 45.027264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.473675, 38.910515, 45.040516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.530018, 39.252556, 44.840935>,  <35.563824, 39.457783, 44.721188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.530018, 39.252556, 44.840935>,  <35.473675, 38.910515, 45.040516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.530018, 39.252556, 44.840935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590943, -0.331729, -0.735352,
		-0.794321, 0.398431, 0.458593,
		0.140858, 0.855107, -0.498949,
		35.572277, 39.509087, 44.691250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.844585, 39.195850, 44.890778>,  <35.473675, 38.910515, 45.040516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.844585, 39.195850, 44.890778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.096889, 39.350143, 44.621452>,  <35.248272, 39.442719, 44.459858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.096889, 39.350143, 44.621452>,  <34.844585, 39.195850, 44.890778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.096889, 39.350143, 44.621452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622979, -0.265608, -0.735765,
		-0.462649, 0.883550, 0.072771,
		0.630757, 0.385735, -0.673316,
		35.286118, 39.465862, 44.419456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.377136, 39.496357, 44.286850>,  <34.844585, 39.195850, 44.890778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.377136, 39.496357, 44.286850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.746296, 39.498600, 44.132851>,  <34.967793, 39.499947, 44.040451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.746296, 39.498600, 44.132851>,  <34.377136, 39.496357, 44.286850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.746296, 39.498600, 44.132851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383907, -0.063288, -0.921200,
		-0.029534, 0.997979, -0.056255,
		0.922899, 0.005610, -0.385001,
		35.023167, 39.500282, 44.017349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.384121, 39.985943, 43.723896>,  <34.377136, 39.496357, 44.286850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.384121, 39.985943, 43.723896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.694660, 39.744774, 43.650391>,  <34.880981, 39.600071, 43.606285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.694660, 39.744774, 43.650391>,  <34.384121, 39.985943, 43.723896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.694660, 39.744774, 43.650391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311622, -0.113722, -0.943376,
		0.547888, 0.789650, -0.276173,
		0.776344, -0.602926, -0.183766,
		34.927563, 39.563896, 43.595261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.571880, 39.984146, 43.028339>,  <34.384121, 39.985943, 43.723896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.571880, 39.984146, 43.028339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.740086, 39.644920, 43.157310>,  <34.841011, 39.441387, 43.234692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.740086, 39.644920, 43.157310>,  <34.571880, 39.984146, 43.028339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.740086, 39.644920, 43.157310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206180, -0.435403, -0.876307,
		0.883548, 0.302023, -0.357947,
		0.420516, -0.848060, 0.322429,
		34.866241, 39.390503, 43.254040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.075211, 39.718731, 42.490612>,  <34.571880, 39.984146, 43.028339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.075211, 39.718731, 42.490612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.966179, 39.406132, 42.715096>,  <34.900761, 39.218571, 42.849785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.966179, 39.406132, 42.715096>,  <35.075211, 39.718731, 42.490612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.966179, 39.406132, 42.715096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077117, -0.563676, -0.822388,
		0.959037, -0.267447, 0.093381,
		-0.272582, -0.781500, 0.561211,
		34.884403, 39.171680, 42.883457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.158993, 39.181679, 41.976433>,  <35.075211, 39.718731, 42.490612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.158993, 39.181679, 41.976433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.966831, 38.998089, 42.275379>,  <34.851532, 38.887936, 42.454746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.966831, 38.998089, 42.275379>,  <35.158993, 39.181679, 41.976433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.966831, 38.998089, 42.275379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227383, -0.757823, -0.611556,
		0.847057, -0.463734, 0.259701,
		-0.480407, -0.458971, 0.747365,
		34.822708, 38.860397, 42.499588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.423618, 38.460018, 42.068096>,  <35.158993, 39.181679, 41.976433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.423618, 38.460018, 42.068096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.058590, 38.460644, 42.231659>,  <34.839573, 38.461018, 42.329796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.058590, 38.460644, 42.231659>,  <35.423618, 38.460018, 42.068096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.058590, 38.460644, 42.231659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290291, -0.706756, -0.645157,
		0.287990, -0.707456, 0.645421,
		-0.912575, 0.001562, 0.408907,
		34.784817, 38.461113, 42.354332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.225677, 37.817310, 42.185650>,  <35.423618, 38.460018, 42.068096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.225677, 37.817310, 42.185650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.868137, 37.996151, 42.199089>,  <34.653614, 38.103455, 42.207153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.868137, 37.996151, 42.199089>,  <35.225677, 37.817310, 42.185650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.868137, 37.996151, 42.199089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374402, -0.703081, -0.604567,
		-0.246677, -0.552975, 0.795845,
		-0.893853, 0.447098, 0.033601,
		34.599983, 38.130280, 42.209167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.693607, 37.318974, 42.363712>,  <35.225677, 37.817310, 42.185650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.693607, 37.318974, 42.363712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.493313, 37.615131, 42.184345>,  <34.373135, 37.792828, 42.076725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.493313, 37.615131, 42.184345>,  <34.693607, 37.318974, 42.363712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.493313, 37.615131, 42.184345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405417, -0.658309, -0.634245,
		-0.764790, -0.135792, 0.629807,
		-0.500733, 0.740398, -0.448415,
		34.343094, 37.837250, 42.049820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.956978, 37.025024, 42.245621>,  <34.693607, 37.318974, 42.363712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.956978, 37.025024, 42.245621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.976185, 37.356853, 42.023090>,  <33.987709, 37.555950, 41.889572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.976185, 37.356853, 42.023090>,  <33.956978, 37.025024, 42.245621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.976185, 37.356853, 42.023090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449179, -0.479544, -0.753842,
		-0.892151, 0.286087, 0.349601,
		0.048016, 0.829574, -0.556329,
		33.990589, 37.605724, 41.856190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.282150, 37.160145, 42.023544>,  <33.956978, 37.025024, 42.245621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.282150, 37.160145, 42.023544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.523544, 37.361717, 41.776363>,  <33.668381, 37.482658, 41.628056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.523544, 37.361717, 41.776363>,  <33.282150, 37.160145, 42.023544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.523544, 37.361717, 41.776363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319475, -0.557252, -0.766424,
		-0.730576, 0.659946, -0.175301,
		0.603485, 0.503927, -0.617951,
		33.704590, 37.512894, 41.590977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.845497, 37.312527, 41.449760>,  <33.282150, 37.160145, 42.023544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.845497, 37.312527, 41.449760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.229973, 37.334595, 41.341633>,  <33.460659, 37.347836, 41.276756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.229973, 37.334595, 41.341633>,  <32.845497, 37.312527, 41.449760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.229973, 37.334595, 41.341633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193426, -0.563931, -0.802850,
		-0.196734, 0.823978, -0.531373,
		0.961188, 0.055166, -0.270323,
		33.518330, 37.351143, 41.260536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.760189, 37.695728, 40.758625>,  <32.845497, 37.312527, 41.449760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.760189, 37.695728, 40.758625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.098064, 37.482048, 40.772034>,  <33.300789, 37.353840, 40.780079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.098064, 37.482048, 40.772034>,  <32.760189, 37.695728, 40.758625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.098064, 37.482048, 40.772034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276818, -0.489599, -0.826841,
		0.458112, 0.689146, -0.561437,
		0.844693, -0.534201, 0.033523,
		33.351471, 37.321789, 40.782089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.979511, 37.715637, 40.071724>,  <32.760189, 37.695728, 40.758625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.979511, 37.715637, 40.071724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.173092, 37.417679, 40.255428>,  <33.289242, 37.238903, 40.365650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.173092, 37.417679, 40.255428>,  <32.979511, 37.715637, 40.071724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.173092, 37.417679, 40.255428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253723, -0.621709, -0.741015,
		0.837503, 0.242094, -0.489876,
		0.483956, -0.744895, 0.459259,
		33.318279, 37.194210, 40.393208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.324619, 37.387199, 39.446278>,  <32.979511, 37.715637, 40.071724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.324619, 37.387199, 39.446278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.382153, 37.124912, 39.742748>,  <33.416672, 36.967541, 39.920631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.382153, 37.124912, 39.742748>,  <33.324619, 37.387199, 39.446278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.382153, 37.124912, 39.742748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398455, -0.723945, -0.563148,
		0.905839, -0.214326, -0.365403,
		0.143835, -0.655719, 0.741178,
		33.425304, 36.928196, 39.965103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.662464, 36.649357, 39.176510>,  <33.324619, 37.387199, 39.446278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.662464, 36.649357, 39.176510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.436527, 36.605183, 39.503620>,  <33.300964, 36.578678, 39.699886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.436527, 36.605183, 39.503620>,  <33.662464, 36.649357, 39.176510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.436527, 36.605183, 39.503620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468815, -0.772595, -0.428147,
		0.679093, -0.625221, 0.384620,
		-0.564842, -0.110436, 0.817776,
		33.267075, 36.572052, 39.748955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.662975, 35.942703, 39.326805>,  <33.662464, 36.649357, 39.176510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.662975, 35.942703, 39.326805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.346615, 36.076653, 39.531677>,  <33.156799, 36.157021, 39.654602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.346615, 36.076653, 39.531677>,  <33.662975, 35.942703, 39.326805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.346615, 36.076653, 39.531677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490806, -0.847025, -0.204104,
		0.365485, -0.412810, 0.834272,
		-0.790905, 0.334869, 0.512184,
		33.109344, 36.177113, 39.685333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.487633, 35.398018, 39.708118>,  <33.662975, 35.942703, 39.326805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.487633, 35.398018, 39.708118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.173756, 35.643410, 39.672554>,  <32.985432, 35.790646, 39.651215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.173756, 35.643410, 39.672554>,  <33.487633, 35.398018, 39.708118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.173756, 35.643410, 39.672554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562236, -0.764755, -0.314707,
		-0.261058, -0.196960, 0.945016,
		-0.784691, 0.613479, -0.088908,
		32.938347, 35.827454, 39.645882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.947071, 34.956924, 39.666809>,  <33.487633, 35.398018, 39.708118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.947071, 34.956924, 39.666809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.754566, 35.289089, 39.554527>,  <32.639061, 35.488388, 39.487156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.754566, 35.289089, 39.554527>,  <32.947071, 34.956924, 39.666809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.754566, 35.289089, 39.554527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651375, -0.553089, -0.519425,
		-0.586594, -0.067135, 0.807093,
		-0.481266, 0.830413, -0.280709,
		32.610188, 35.538212, 39.470314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.208809, 34.804611, 39.818008>,  <32.947071, 34.956924, 39.666809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.208809, 34.804611, 39.818008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.232689, 35.113400, 39.564869>,  <32.247017, 35.298672, 39.412987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.232689, 35.113400, 39.564869>,  <32.208809, 34.804611, 39.818008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.232689, 35.113400, 39.564869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701968, -0.418273, -0.576444,
		-0.709702, 0.478653, 0.516928,
		0.059700, 0.771971, -0.632849,
		32.250599, 35.344990, 39.375015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.559605, 35.091976, 39.610203>,  <32.208809, 34.804611, 39.818008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.559605, 35.091976, 39.610203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.772520, 35.233479, 39.302559>,  <31.900270, 35.318378, 39.117973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.772520, 35.233479, 39.302559>,  <31.559605, 35.091976, 39.610203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.772520, 35.233479, 39.302559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705592, -0.316608, -0.633955,
		-0.467769, 0.880124, 0.081077,
		0.532290, 0.353751, -0.769108,
		31.932207, 35.339603, 39.071827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.092777, 35.385590, 39.111355>,  <31.559605, 35.091976, 39.610203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.092777, 35.385590, 39.111355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.426420, 35.333805, 38.896877>,  <31.626606, 35.302734, 38.768192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.426420, 35.333805, 38.896877>,  <31.092777, 35.385590, 39.111355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.426420, 35.333805, 38.896877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548356, -0.299886, -0.780624,
		-0.059733, 0.945149, -0.321130,
		0.834109, -0.129464, -0.536191,
		31.676653, 35.294968, 38.736019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.980270, 35.737377, 38.458775>,  <31.092777, 35.385590, 39.111355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.980270, 35.737377, 38.458775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.282576, 35.484562, 38.390236>,  <31.463959, 35.332874, 38.349113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.282576, 35.484562, 38.390236>,  <30.980270, 35.737377, 38.458775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.282576, 35.484562, 38.390236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469145, -0.340030, -0.815035,
		0.456868, 0.696356, -0.553497,
		0.755761, -0.632034, -0.171344,
		31.509304, 35.294952, 38.338833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.043390, 35.832901, 37.803242>,  <30.980270, 35.737377, 38.458775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.043390, 35.832901, 37.803242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.210176, 35.479538, 37.888779>,  <31.310247, 35.267521, 37.940102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.210176, 35.479538, 37.888779>,  <31.043390, 35.832901, 37.803242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.210176, 35.479538, 37.888779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416659, -0.394865, -0.818827,
		0.807797, 0.252323, -0.532726,
		0.416963, -0.883411, 0.213838,
		31.335266, 35.214516, 37.952930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.138401, 35.557667, 37.211987>,  <31.043390, 35.832901, 37.803242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.138401, 35.557667, 37.211987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.174995, 35.239578, 37.451740>,  <31.196953, 35.048725, 37.595592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.174995, 35.239578, 37.451740>,  <31.138401, 35.557667, 37.211987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.174995, 35.239578, 37.451740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375497, -0.585025, -0.718852,
		0.922297, -0.159300, -0.352124,
		0.091488, -0.795217, 0.599383,
		31.202442, 35.001015, 37.631554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.487753, 35.023930, 36.806122>,  <31.138401, 35.557667, 37.211987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.487753, 35.023930, 36.806122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.288294, 34.827301, 37.091698>,  <31.168617, 34.709324, 37.263042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.288294, 34.827301, 37.091698>,  <31.487753, 35.023930, 36.806122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.288294, 34.827301, 37.091698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276195, -0.690609, -0.668413,
		0.821624, -0.530490, 0.208603,
		-0.498649, -0.491569, 0.713939,
		31.138699, 34.679829, 37.305878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.631311, 34.285652, 36.866528>,  <31.487753, 35.023930, 36.806122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.631311, 34.285652, 36.866528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.244389, 34.334236, 36.955574>,  <31.012234, 34.363388, 37.009003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.244389, 34.334236, 36.955574>,  <31.631311, 34.285652, 36.866528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.244389, 34.334236, 36.955574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244064, -0.684326, -0.687118,
		0.068887, -0.718989, 0.691599,
		-0.967309, 0.121461, 0.222620,
		30.954195, 34.370674, 37.022362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.403547, 33.655533, 36.908863>,  <31.631311, 34.285652, 36.866528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.403547, 33.655533, 36.908863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.075994, 33.869816, 36.826450>,  <30.879463, 33.998386, 36.777000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.075994, 33.869816, 36.826450>,  <31.403547, 33.655533, 36.908863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.075994, 33.869816, 36.826450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085779, -0.469161, -0.878937,
		-0.567516, -0.702072, 0.430140,
		-0.818882, 0.535708, -0.206034,
		30.830330, 34.030529, 36.764641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.924223, 33.188026, 37.307316>,  <31.403547, 33.655533, 36.908863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.924223, 33.188026, 37.307316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.197689, 33.034828, 37.058830>,  <32.361771, 32.942909, 36.909737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.197689, 33.034828, 37.058830>,  <31.924223, 33.188026, 37.307316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.197689, 33.034828, 37.058830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727006, 0.431743, 0.533910,
		0.063721, -0.816647, 0.573609,
		0.683668, -0.382997, -0.621219,
		32.402790, 32.919930, 36.872463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.486580, 32.866486, 37.712280>,  <31.924223, 33.188026, 37.307316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.486580, 32.866486, 37.712280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.650383, 32.958668, 37.359192>,  <32.748665, 33.013977, 37.147339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.650383, 32.958668, 37.359192>,  <32.486580, 32.866486, 37.712280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.650383, 32.958668, 37.359192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840247, 0.281621, 0.463330,
		0.355371, -0.931438, -0.078317,
		0.409508, 0.230459, -0.882718,
		32.773235, 33.027805, 37.094376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.164219, 32.667973, 37.675770>,  <32.486580, 32.866486, 37.712280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.164219, 32.667973, 37.675770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.152409, 32.929470, 37.373314>,  <33.145325, 33.086369, 37.191841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.152409, 32.929470, 37.373314>,  <33.164219, 32.667973, 37.675770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.152409, 32.929470, 37.373314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755467, 0.509934, 0.411384,
		0.654521, -0.559092, -0.508938,
		-0.029523, 0.653745, -0.756138,
		33.143551, 33.125595, 37.146473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.791256, 32.653618, 37.371918>,  <33.164219, 32.667973, 37.675770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.791256, 32.653618, 37.371918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.631313, 33.007095, 37.274597>,  <33.535347, 33.219181, 37.216206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.631313, 33.007095, 37.274597>,  <33.791256, 32.653618, 37.371918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.631313, 33.007095, 37.274597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742301, 0.467927, 0.479618,
		0.537684, 0.011176, -0.843072,
		-0.399856, 0.883696, -0.243301,
		33.511356, 33.272205, 37.201607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.295441, 33.021782, 36.880047>,  <33.791256, 32.653618, 37.371918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.295441, 33.021782, 36.880047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.062862, 33.306908, 37.036926>,  <33.923317, 33.477982, 37.131054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.062862, 33.306908, 37.036926>,  <34.295441, 33.021782, 36.880047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.062862, 33.306908, 37.036926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804659, 0.432630, 0.406639,
		0.120183, 0.552022, -0.825123,
		-0.581447, 0.712814, 0.392194,
		33.888428, 33.520752, 37.154583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.627789, 33.644375, 36.667900>,  <34.295441, 33.021782, 36.880047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.627789, 33.644375, 36.667900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.404667, 33.700218, 36.995159>,  <34.270794, 33.733723, 37.191513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.404667, 33.700218, 36.995159>,  <34.627789, 33.644375, 36.667900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.404667, 33.700218, 36.995159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788975, 0.395175, 0.470483,
		-0.257628, 0.907935, -0.330578,
		-0.557805, 0.139608, 0.818146,
		34.237324, 33.742100, 37.240604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.029533, 34.113758, 36.910130>,  <34.627789, 33.644375, 36.667900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.029533, 34.113758, 36.910130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.790287, 34.043724, 37.222950>,  <34.646740, 34.001705, 37.410645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.790287, 34.043724, 37.222950>,  <35.029533, 34.113758, 36.910130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.790287, 34.043724, 37.222950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651050, 0.462892, 0.601552,
		-0.467326, 0.868952, -0.162875,
		-0.598113, -0.175081, 0.782053,
		34.610851, 33.991199, 37.457565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.952862, 34.779919, 37.256203>,  <35.029533, 34.113758, 36.910130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.952862, 34.779919, 37.256203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.838219, 34.525452, 37.542740>,  <34.769432, 34.372772, 37.714664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.838219, 34.525452, 37.542740>,  <34.952862, 34.779919, 37.256203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.838219, 34.525452, 37.542740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505396, 0.534816, 0.677160,
		-0.813899, 0.556117, 0.168234,
		-0.286606, -0.636165, 0.716346,
		34.752235, 34.334602, 37.757645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.820339, 35.243820, 37.868073>,  <34.952862, 34.779919, 37.256203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.820339, 35.243820, 37.868073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.907303, 34.887283, 38.027187>,  <34.959480, 34.673359, 38.122658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.907303, 34.887283, 38.027187>,  <34.820339, 35.243820, 37.868073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.907303, 34.887283, 38.027187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549125, 0.448620, 0.705126,
		-0.806967, 0.065135, 0.586994,
		0.217409, -0.891346, 0.397789,
		34.972527, 34.619881, 38.146523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.628208, 35.231449, 38.659149>,  <34.820339, 35.243820, 37.868073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.628208, 35.231449, 38.659149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.860924, 34.909752, 38.610611>,  <35.000553, 34.716736, 38.581490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.860924, 34.909752, 38.610611>,  <34.628208, 35.231449, 38.659149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.860924, 34.909752, 38.610611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476307, 0.215957, 0.852347,
		-0.659287, -0.553678, 0.508705,
		0.581784, -0.804241, -0.121343,
		35.035458, 34.668480, 38.574207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.572708, 34.962860, 39.270267>,  <34.628208, 35.231449, 38.659149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.572708, 34.962860, 39.270267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.907372, 34.828793, 39.096985>,  <35.108170, 34.748352, 38.993015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.907372, 34.828793, 39.096985>,  <34.572708, 34.962860, 39.270267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.907372, 34.828793, 39.096985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474255, 0.047596, 0.879100,
		-0.274029, -0.940954, 0.198778,
		0.836654, -0.335170, -0.433210,
		35.158367, 34.728241, 38.967022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.792347, 34.487804, 39.708050>,  <34.572708, 34.962860, 39.270267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.792347, 34.487804, 39.708050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.121662, 34.590736, 39.505676>,  <35.319252, 34.652496, 39.384251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.121662, 34.590736, 39.505676>,  <34.792347, 34.487804, 39.708050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.121662, 34.590736, 39.505676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457647, 0.226348, 0.859841,
		0.335783, -0.939439, 0.068582,
		0.823291, 0.257334, -0.505936,
		35.368649, 34.667934, 39.353897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.254681, 34.169426, 40.040359>,  <34.792347, 34.487804, 39.708050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.254681, 34.169426, 40.040359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.440857, 34.459728, 39.837723>,  <35.552563, 34.633911, 39.716141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.440857, 34.459728, 39.837723>,  <35.254681, 34.169426, 40.040359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.440857, 34.459728, 39.837723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485629, 0.269109, 0.831712,
		0.739951, -0.633131, -0.227194,
		0.465443, 0.725758, -0.506594,
		35.580490, 34.677456, 39.685745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.936478, 34.192890, 40.293537>,  <35.254681, 34.169426, 40.040359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.936478, 34.192890, 40.293537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.918621, 34.547218, 40.108784>,  <35.907909, 34.759815, 39.997932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.918621, 34.547218, 40.108784>,  <35.936478, 34.192890, 40.293537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.918621, 34.547218, 40.108784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497489, 0.420647, 0.758656,
		0.866320, -0.195915, -0.459463,
		-0.044640, 0.885818, -0.461881,
		35.905228, 34.812965, 39.970219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.371368, 34.564316, 40.579655>,  <35.936478, 34.192890, 40.293537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.371368, 34.564316, 40.579655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.241215, 34.874157, 40.362724>,  <36.163124, 35.060062, 40.232567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.241215, 34.874157, 40.362724>,  <36.371368, 34.564316, 40.579655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.241215, 34.874157, 40.362724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576278, 0.617164, 0.535735,
		0.749686, -0.138211, -0.647201,
		-0.325385, 0.774600, -0.542327,
		36.143600, 35.106537, 40.200027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.945702, 35.029575, 40.291622>,  <36.371368, 34.564316, 40.579655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.945702, 35.029575, 40.291622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.611286, 35.236900, 40.363625>,  <36.410637, 35.361294, 40.406826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.611286, 35.236900, 40.363625>,  <36.945702, 35.029575, 40.291622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.611286, 35.236900, 40.363625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488056, 0.552606, 0.675595,
		0.250696, 0.652672, -0.714962,
		-0.836034, 0.518310, 0.180004,
		36.360477, 35.392395, 40.417625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.248898, 35.689793, 40.512077>,  <36.945702, 35.029575, 40.291622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.248898, 35.689793, 40.512077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.873741, 35.672916, 40.649822>,  <36.648647, 35.662788, 40.732468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.873741, 35.672916, 40.649822>,  <37.248898, 35.689793, 40.512077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.873741, 35.672916, 40.649822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228645, 0.671354, 0.704986,
		-0.260936, 0.739935, -0.620007,
		-0.937888, -0.042195, 0.344363,
		36.592373, 35.660259, 40.753132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.061630, 36.411095, 40.584782>,  <37.248898, 35.689793, 40.512077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.061630, 36.411095, 40.584782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.798073, 36.189621, 40.788467>,  <36.639938, 36.056736, 40.910679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.798073, 36.189621, 40.788467>,  <37.061630, 36.411095, 40.584782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.798073, 36.189621, 40.788467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057226, 0.711858, 0.699988,
		-0.750059, 0.432075, -0.500722,
		-0.658890, -0.553687, 0.509210,
		36.600407, 36.023514, 40.941231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.503304, 36.839176, 40.837711>,  <37.061630, 36.411095, 40.584782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.503304, 36.839176, 40.837711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.514977, 36.520802, 41.079582>,  <36.521980, 36.329777, 41.224705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.514977, 36.520802, 41.079582>,  <36.503304, 36.839176, 40.837711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.514977, 36.520802, 41.079582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047780, 0.603128, 0.796212,
		-0.998432, -0.052127, -0.020428,
		0.029184, -0.795939, 0.604673,
		36.523731, 36.282021, 41.260983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.003052, 37.040073, 41.270012>,  <36.503304, 36.839176, 40.837711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.003052, 37.040073, 41.270012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.249485, 36.771461, 41.434692>,  <36.397346, 36.610294, 41.533501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.249485, 36.771461, 41.434692>,  <36.003052, 37.040073, 41.270012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.249485, 36.771461, 41.434692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035610, 0.545881, 0.837106,
		-0.786877, -0.501065, 0.360221,
		0.616081, -0.671527, 0.411698,
		36.434311, 36.570004, 41.558201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.759453, 36.927925, 41.957222>,  <36.003052, 37.040073, 41.270012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.759453, 36.927925, 41.957222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.143551, 36.816429, 41.951141>,  <36.374008, 36.749531, 41.947495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.143551, 36.816429, 41.951141>,  <35.759453, 36.927925, 41.957222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.143551, 36.816429, 41.951141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171301, 0.545385, 0.820494,
		-0.220414, -0.790481, 0.571453,
		0.960247, -0.278739, -0.015199,
		36.431625, 36.732807, 41.946583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.929131, 37.043766, 42.700813>,  <35.759453, 36.927925, 41.957222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.929131, 37.043766, 42.700813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.281456, 36.974087, 42.524708>,  <36.492851, 36.932281, 42.419044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.281456, 36.974087, 42.524708>,  <35.929131, 37.043766, 42.700813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.281456, 36.974087, 42.524708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464968, 0.493656, 0.734920,
		0.089317, -0.852032, 0.515813,
		0.880810, -0.174196, -0.440260,
		36.545700, 36.921829, 42.392632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.424633, 36.954960, 43.270996>,  <35.929131, 37.043766, 42.700813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.424633, 36.954960, 43.270996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.634495, 37.077541, 42.953300>,  <36.760414, 37.151089, 42.762684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.634495, 37.077541, 42.953300>,  <36.424633, 36.954960, 43.270996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.634495, 37.077541, 42.953300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561414, 0.576788, 0.593406,
		0.639960, -0.757234, 0.130569,
		0.524658, 0.306453, -0.794243,
		36.791893, 37.169476, 42.715027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.110611, 37.009521, 43.474041>,  <36.424633, 36.954960, 43.270996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.110611, 37.009521, 43.474041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.145840, 37.238678, 43.148087>,  <37.166977, 37.376171, 42.952515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.145840, 37.238678, 43.148087>,  <37.110611, 37.009521, 43.474041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.145840, 37.238678, 43.148087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411198, 0.724198, 0.553582,
		0.907281, -0.383835, -0.171790,
		0.088074, 0.572895, -0.814883,
		37.172260, 37.410545, 42.903622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.773220, 37.195213, 43.456902>,  <37.110611, 37.009521, 43.474041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.773220, 37.195213, 43.456902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.598476, 37.474419, 43.229946>,  <37.493629, 37.641941, 43.093773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.598476, 37.474419, 43.229946>,  <37.773220, 37.195213, 43.456902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.598476, 37.474419, 43.229946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476452, 0.714568, 0.512236,
		0.762987, -0.046559, -0.644735,
		-0.436858, 0.698015, -0.567389,
		37.467419, 37.683823, 43.059731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.335022, 37.678715, 43.253105>,  <37.773220, 37.195213, 43.456902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.335022, 37.678715, 43.253105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.991520, 37.880234, 43.215717>,  <37.785419, 38.001144, 43.193287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.991520, 37.880234, 43.215717>,  <38.335022, 37.678715, 43.253105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.991520, 37.880234, 43.215717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428446, 0.806058, 0.408294,
		0.281037, 0.310577, -0.908053,
		-0.858750, 0.503797, -0.093466,
		37.733894, 38.031372, 43.187679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.461819, 38.288685, 42.983807>,  <38.335022, 37.678715, 43.253105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.461819, 38.288685, 42.983807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.102978, 38.379520, 43.135406>,  <37.887672, 38.434021, 43.226368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.102978, 38.379520, 43.135406>,  <38.461819, 38.288685, 42.983807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.102978, 38.379520, 43.135406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371683, 0.851664, 0.369487,
		-0.238876, 0.472335, -0.848433,
		-0.897101, 0.227087, 0.379001,
		37.833847, 38.447647, 43.249107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.269741, 39.008694, 42.777561>,  <38.461819, 38.288685, 42.983807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.269741, 39.008694, 42.777561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.053207, 38.924786, 43.103249>,  <37.923286, 38.874439, 43.298660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.053207, 38.924786, 43.103249>,  <38.269741, 39.008694, 42.777561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.053207, 38.924786, 43.103249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411631, 0.778274, 0.474183,
		-0.733154, 0.591851, -0.334960,
		-0.541336, -0.209769, 0.814219,
		37.890808, 38.861855, 43.347515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.862141, 39.532799, 42.865730>,  <38.269741, 39.008694, 42.777561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.862141, 39.532799, 42.865730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.892216, 39.372822, 43.231110>,  <37.910259, 39.276836, 43.450336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.892216, 39.372822, 43.231110>,  <37.862141, 39.532799, 42.865730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.892216, 39.372822, 43.231110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552753, 0.779141, 0.295641,
		-0.829946, 0.482684, 0.279653,
		0.075188, -0.399945, 0.913450,
		37.914772, 39.252838, 43.505146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.725708, 40.083427, 43.301586>,  <37.862141, 39.532799, 42.865730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.725708, 40.083427, 43.301586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.883274, 39.823280, 43.561386>,  <37.977814, 39.667191, 43.717266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.883274, 39.823280, 43.561386>,  <37.725708, 40.083427, 43.301586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.883274, 39.823280, 43.561386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443282, 0.753446, 0.485614,
		-0.805192, 0.096622, 0.585089,
		0.393912, -0.650372, 0.649500,
		38.001450, 39.628170, 43.756237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.503239, 40.302906, 44.042995>,  <37.725708, 40.083427, 43.301586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.503239, 40.302906, 44.042995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.831554, 40.074703, 44.054447>,  <38.028545, 39.937782, 44.061317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.831554, 40.074703, 44.054447>,  <37.503239, 40.302906, 44.042995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.831554, 40.074703, 44.054447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500941, 0.742977, 0.443896,
		-0.274519, -0.350004, 0.895621,
		0.820791, -0.570511, 0.028630,
		38.077793, 39.903549, 44.063038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.777382, 40.388191, 44.647232>,  <37.503239, 40.302906, 44.042995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.777382, 40.388191, 44.647232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.079300, 40.265076, 44.415527>,  <38.260452, 40.191208, 44.276505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.079300, 40.265076, 44.415527>,  <37.777382, 40.388191, 44.647232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.079300, 40.265076, 44.415527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596491, 0.689459, 0.410908,
		0.272908, -0.655679, 0.703993,
		0.754798, -0.307786, -0.579266,
		38.305740, 40.172741, 44.241749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.426132, 40.158005, 45.096649>,  <37.777382, 40.388191, 44.647232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.426132, 40.158005, 45.096649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.562553, 40.240234, 44.729733>,  <38.644405, 40.289570, 44.509583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.562553, 40.240234, 44.729733>,  <38.426132, 40.158005, 45.096649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.562553, 40.240234, 44.729733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668775, 0.632690, 0.390440,
		0.660625, -0.746621, 0.078297,
		0.341048, 0.205571, -0.917293,
		38.664867, 40.301907, 44.454544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.037693, 40.047615, 45.110931>,  <38.426132, 40.158005, 45.096649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.037693, 40.047615, 45.110931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.032082, 40.277561, 44.783680>,  <39.028717, 40.415527, 44.587330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.032082, 40.277561, 44.783680>,  <39.037693, 40.047615, 45.110931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.032082, 40.277561, 44.783680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786559, 0.511521, 0.345936,
		0.617356, -0.638656, -0.459337,
		-0.014026, 0.574861, -0.818131,
		39.027874, 40.450020, 44.538242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.726986, 40.035919, 44.893398>,  <39.037693, 40.047615, 45.110931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.726986, 40.035919, 44.893398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.551796, 40.366402, 44.751656>,  <39.446682, 40.564690, 44.666611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.551796, 40.366402, 44.751656>,  <39.726986, 40.035919, 44.893398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.551796, 40.366402, 44.751656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649299, 0.563336, 0.510942,
		0.621764, -0.006304, -0.783179,
		-0.437972, 0.826203, -0.354356,
		39.420403, 40.614262, 44.645348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.315563, 40.529232, 44.599113>,  <39.726986, 40.035919, 44.893398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.315563, 40.529232, 44.599113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.000957, 40.763985, 44.676014>,  <39.812195, 40.904835, 44.722153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.000957, 40.763985, 44.676014>,  <40.315563, 40.529232, 44.599113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.000957, 40.763985, 44.676014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571618, 0.573987, 0.586338,
		0.233761, 0.571059, -0.786923,
		-0.786517, 0.586882, 0.192252,
		39.765003, 40.940048, 44.733688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.600365, 41.204155, 44.674179>,  <40.315563, 40.529232, 44.599113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.600365, 41.204155, 44.674179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.225018, 41.278175, 44.790947>,  <39.999809, 41.322586, 44.861008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.225018, 41.278175, 44.790947>,  <40.600365, 41.204155, 44.674179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.225018, 41.278175, 44.790947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332236, 0.715760, 0.614254,
		-0.095273, 0.673383, -0.733129,
		-0.938372, 0.185050, 0.291915,
		39.943504, 41.333691, 44.878521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.434574, 41.835396, 44.542553>,  <40.600365, 41.204155, 44.674179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.434574, 41.835396, 44.542553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.208015, 41.710064, 44.847450>,  <40.072079, 41.634865, 45.030388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.208015, 41.710064, 44.847450>,  <40.434574, 41.835396, 44.542553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.208015, 41.710064, 44.847450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312348, 0.774292, 0.550373,
		-0.762650, 0.549816, -0.340688,
		-0.566396, -0.313328, 0.762248,
		40.038097, 41.616066, 45.076126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.977207, 42.419716, 44.510372>,  <40.434574, 41.835396, 44.542553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.977207, 42.419716, 44.510372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.307312, 42.414139, 44.284538>,  <41.505375, 42.410793, 44.149040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.307312, 42.414139, 44.284538>,  <40.977207, 42.419716, 44.510372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.307312, 42.414139, 44.284538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491010, -0.511634, -0.705081,
		-0.279027, 0.859090, -0.429078,
		0.825260, -0.013945, -0.564582,
		41.554890, 42.409954, 44.115166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.794865, 42.581329, 43.842571>,  <40.977207, 42.419716, 44.510372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.794865, 42.581329, 43.842571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.141693, 42.390606, 43.784821>,  <41.349789, 42.276173, 43.750172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.141693, 42.390606, 43.784821>,  <40.794865, 42.581329, 43.842571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.141693, 42.390606, 43.784821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354137, -0.386084, -0.851778,
		0.350393, 0.789680, -0.503617,
		0.867071, -0.476807, -0.144374,
		41.401814, 42.247562, 43.741508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.877167, 42.593842, 43.024334>,  <40.794865, 42.581329, 43.842571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.877167, 42.593842, 43.024334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.109764, 42.307716, 43.179348>,  <41.249325, 42.136040, 43.272358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.109764, 42.307716, 43.179348>,  <40.877167, 42.593842, 43.024334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.109764, 42.307716, 43.179348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314303, -0.636894, -0.703974,
		0.750383, 0.287556, -0.595178,
		0.581497, -0.715316, 0.387534,
		41.284214, 42.093121, 43.295609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.207561, 42.334232, 42.419308>,  <40.877167, 42.593842, 43.024334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.207561, 42.334232, 42.419308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.194427, 42.077614, 42.725861>,  <41.186546, 41.923641, 42.909794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.194427, 42.077614, 42.725861>,  <41.207561, 42.334232, 42.419308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.194427, 42.077614, 42.725861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294066, -0.726654, -0.620886,
		0.955221, -0.245752, -0.164800,
		-0.032831, -0.641546, 0.766382,
		41.184578, 41.885151, 42.955776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.490173, 41.733059, 42.215801>,  <41.207561, 42.334232, 42.419308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.490173, 41.733059, 42.215801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.289146, 41.596878, 42.533672>,  <41.168530, 41.515167, 42.724396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.289146, 41.596878, 42.533672>,  <41.490173, 41.733059, 42.215801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.289146, 41.596878, 42.533672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247655, -0.823981, -0.509629,
		0.828308, -0.452929, 0.329790,
		-0.502567, -0.340455, 0.794680,
		41.138378, 41.494743, 42.772076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.643017, 41.033470, 42.258381>,  <41.490173, 41.733059, 42.215801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.643017, 41.033470, 42.258381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.308002, 41.032696, 42.476933>,  <41.106995, 41.032230, 42.608063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.308002, 41.032696, 42.476933>,  <41.643017, 41.033470, 42.258381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.308002, 41.032696, 42.476933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190448, -0.936247, -0.295248,
		0.512118, -0.351337, 0.783771,
		-0.837535, -0.001934, 0.546380,
		41.056744, 41.032116, 42.640846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.549683, 40.368317, 42.387764>,  <41.643017, 41.033470, 42.258381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.549683, 40.368317, 42.387764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.189175, 40.527477, 42.456322>,  <40.972870, 40.622974, 42.497456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.189175, 40.527477, 42.456322>,  <41.549683, 40.368317, 42.387764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.189175, 40.527477, 42.456322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430543, -0.866724, -0.251837,
		0.048345, -0.300767, 0.952471,
		-0.901274, 0.397905, 0.171395,
		40.918793, 40.646851, 42.507740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.065807, 39.833572, 42.819668>,  <41.549683, 40.368317, 42.387764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.065807, 39.833572, 42.819668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.792511, 40.094883, 42.689178>,  <40.628532, 40.251667, 42.610886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.792511, 40.094883, 42.689178>,  <41.065807, 39.833572, 42.819668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.792511, 40.094883, 42.689178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564711, -0.755957, -0.331106,
		-0.462910, -0.042004, 0.885409,
		-0.683239, 0.653273, -0.326220,
		40.587540, 40.290863, 42.591312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.379662, 39.574631, 43.027836>,  <41.065807, 39.833572, 42.819668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.379662, 39.574631, 43.027836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.312611, 39.827400, 42.725163>,  <40.272381, 39.979061, 42.543556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.312611, 39.827400, 42.725163>,  <40.379662, 39.574631, 43.027836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.312611, 39.827400, 42.725163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688451, -0.624427, -0.368954,
		-0.705645, 0.459093, 0.539720,
		-0.167631, 0.631921, -0.756687,
		40.262321, 40.016975, 42.498158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.683815, 39.546143, 42.923504>,  <40.379662, 39.574631, 43.027836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.683815, 39.546143, 42.923504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.826958, 39.692204, 42.579735>,  <39.912842, 39.779839, 42.373474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.826958, 39.692204, 42.579735>,  <39.683815, 39.546143, 42.923504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.826958, 39.692204, 42.579735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643894, -0.570066, -0.510320,
		-0.676270, 0.735996, 0.031118,
		0.357854, 0.365151, -0.859422,
		39.934315, 39.801750, 42.321907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.101570, 39.614162, 42.549675>,  <39.683815, 39.546143, 42.923504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.101570, 39.614162, 42.549675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.367680, 39.626289, 42.251282>,  <39.527344, 39.633564, 42.072247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.367680, 39.626289, 42.251282>,  <39.101570, 39.614162, 42.549675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.367680, 39.626289, 42.251282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640294, -0.490701, -0.590962,
		-0.383972, 0.870800, -0.307038,
		0.665274, 0.030318, -0.745984,
		39.567261, 39.635384, 42.027485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.683449, 39.857334, 41.982586>,  <39.101570, 39.614162, 42.549675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.683449, 39.857334, 41.982586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.001259, 39.650146, 41.855816>,  <39.191944, 39.525833, 41.779755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.001259, 39.650146, 41.855816>,  <38.683449, 39.857334, 41.982586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.001259, 39.650146, 41.855816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590376, -0.536795, -0.602750,
		0.142081, 0.666004, -0.732292,
		0.794525, -0.517966, -0.316924,
		39.239616, 39.494755, 41.760738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.607018, 39.841484, 41.299999>,  <38.683449, 39.857334, 41.982586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.607018, 39.841484, 41.299999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.880272, 39.554325, 41.353588>,  <39.044224, 39.382030, 41.385742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.880272, 39.554325, 41.353588>,  <38.607018, 39.841484, 41.299999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.880272, 39.554325, 41.353588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423717, -0.539041, -0.727941,
		0.594806, 0.440514, -0.672423,
		0.683132, -0.717901, 0.133972,
		39.085213, 39.338955, 41.393780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.875778, 39.686741, 40.591362>,  <38.607018, 39.841484, 41.299999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.875778, 39.686741, 40.591362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.946083, 39.374660, 40.831490>,  <38.988266, 39.187412, 40.975567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.946083, 39.374660, 40.831490>,  <38.875778, 39.686741, 40.591362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.946083, 39.374660, 40.831490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436969, -0.608281, -0.662611,
		0.882137, -0.145860, -0.447838,
		0.175763, -0.780205, 0.600323,
		38.998814, 39.140598, 41.011585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.191620, 39.190914, 40.177757>,  <38.875778, 39.686741, 40.591362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.191620, 39.190914, 40.177757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.057301, 38.977673, 40.488380>,  <38.976707, 38.849728, 40.674755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.057301, 38.977673, 40.488380>,  <39.191620, 39.190914, 40.177757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.057301, 38.977673, 40.488380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350539, -0.694485, -0.628341,
		0.874278, -0.483210, 0.046334,
		-0.335799, -0.533103, 0.776557,
		38.956562, 38.817741, 40.721348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.628098, 38.493549, 40.169266>,  <39.191620, 39.190914, 40.177757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.628098, 38.493549, 40.169266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.262856, 38.427895, 40.318554>,  <39.043709, 38.388500, 40.408127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.262856, 38.427895, 40.318554>,  <39.628098, 38.493549, 40.169266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.262856, 38.427895, 40.318554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121969, -0.763501, -0.634185,
		0.389053, -0.624599, 0.677136,
		-0.913105, -0.164142, 0.373224,
		38.988922, 38.378651, 40.430523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.674854, 37.789848, 40.180725>,  <39.628098, 38.493549, 40.169266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.674854, 37.789848, 40.180725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.293003, 37.891296, 40.243168>,  <39.063892, 37.952168, 40.280632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.293003, 37.891296, 40.243168>,  <39.674854, 37.789848, 40.180725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.293003, 37.891296, 40.243168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275070, -0.549987, -0.788575,
		-0.114145, -0.795732, 0.594795,
		-0.954624, 0.253623, 0.156104,
		39.006615, 37.967384, 40.289997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.331806, 37.139866, 40.208332>,  <39.674854, 37.789848, 40.180725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.331806, 37.139866, 40.208332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.024052, 37.393250, 40.175388>,  <38.839401, 37.545280, 40.155621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.024052, 37.393250, 40.175388>,  <39.331806, 37.139866, 40.208332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.024052, 37.393250, 40.175388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369624, -0.546633, -0.751379,
		-0.520985, -0.547657, 0.654711,
		-0.769385, 0.633455, -0.082360,
		38.793236, 37.583286, 40.150681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.665890, 36.723537, 40.234772>,  <39.331806, 37.139866, 40.208332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.665890, 36.723537, 40.234772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.563896, 37.074726, 40.072704>,  <38.502701, 37.285439, 39.975464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.563896, 37.074726, 40.072704>,  <38.665890, 36.723537, 40.234772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.563896, 37.074726, 40.072704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626245, -0.469205, -0.622626,
		-0.736751, 0.094975, 0.669461,
		-0.254981, 0.877967, -0.405165,
		38.487400, 37.338116, 39.951157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.991577, 36.629902, 40.166344>,  <38.665890, 36.723537, 40.234772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.991577, 36.629902, 40.166344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.089607, 36.900543, 39.888596>,  <38.148426, 37.062927, 39.721947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.089607, 36.900543, 39.888596>,  <37.991577, 36.629902, 40.166344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.089607, 36.900543, 39.888596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641150, -0.424128, -0.639564,
		-0.727231, 0.601938, 0.329858,
		0.245075, 0.676599, -0.694372,
		38.163128, 37.103523, 39.680283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.422581, 37.002064, 39.840267>,  <37.991577, 36.629902, 40.166344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.422581, 37.002064, 39.840267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.695244, 37.044830, 39.550743>,  <37.858841, 37.070488, 39.377029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.695244, 37.044830, 39.550743>,  <37.422581, 37.002064, 39.840267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.695244, 37.044830, 39.550743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637818, -0.397895, -0.659445,
		-0.358506, 0.911181, -0.203038,
		0.681661, 0.106913, -0.723815,
		37.899742, 37.076904, 39.333599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.069305, 36.910515, 39.238495>,  <37.422581, 37.002064, 39.840267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.069305, 36.910515, 39.238495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.435200, 36.917831, 39.077042>,  <37.654736, 36.922222, 38.980171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.435200, 36.917831, 39.077042>,  <37.069305, 36.910515, 39.238495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.435200, 36.917831, 39.077042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351272, -0.457622, -0.816817,
		-0.199654, 0.888959, -0.412178,
		0.914738, 0.018294, -0.403633,
		37.709621, 36.923321, 38.955952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.993309, 37.171432, 38.597607>,  <37.069305, 36.910515, 39.238495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.993309, 37.171432, 38.597607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.338657, 36.969627, 38.594738>,  <37.545868, 36.848545, 38.593018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.338657, 36.969627, 38.594738>,  <36.993309, 37.171432, 38.597607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.338657, 36.969627, 38.594738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288430, -0.481825, -0.827437,
		0.413995, 0.716458, -0.561512,
		0.863375, -0.504512, -0.007175,
		37.597672, 36.818275, 38.592587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.003067, 36.924999, 37.914982>,  <36.993309, 37.171432, 38.597607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.003067, 36.924999, 37.914982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.288464, 36.712074, 38.097221>,  <37.459702, 36.584320, 38.206566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.288464, 36.712074, 38.097221>,  <37.003067, 36.924999, 37.914982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.288464, 36.712074, 38.097221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046369, -0.684694, -0.727354,
		0.699125, 0.497838, -0.513208,
		0.713495, -0.532308, 0.455602,
		37.502514, 36.552383, 38.233902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.435516, 36.654209, 37.381123>,  <37.003067, 36.924999, 37.914982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.435516, 36.654209, 37.381123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.496868, 36.423695, 37.702213>,  <37.533680, 36.285385, 37.894867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.496868, 36.423695, 37.702213>,  <37.435516, 36.654209, 37.381123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.496868, 36.423695, 37.702213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042348, -0.815427, -0.577308,
		0.987259, 0.054554, -0.149476,
		0.153382, -0.576283, 0.802728,
		37.542881, 36.250809, 37.943031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.886089, 36.133335, 37.120693>,  <37.435516, 36.654209, 37.381123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.886089, 36.133335, 37.120693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.732704, 36.006020, 37.467484>,  <37.640675, 35.929630, 37.675560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.732704, 36.006020, 37.467484>,  <37.886089, 36.133335, 37.120693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.732704, 36.006020, 37.467484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120289, -0.947955, -0.294810,
		0.915690, -0.008760, 0.401789,
		-0.383460, -0.318285, 0.866979,
		37.617664, 35.910534, 37.727577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.349365, 35.683868, 37.472954>,  <37.886089, 36.133335, 37.120693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.349365, 35.683868, 37.472954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.000710, 35.588840, 37.644447>,  <37.791515, 35.531822, 37.747341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.000710, 35.588840, 37.644447>,  <38.349365, 35.683868, 37.472954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.000710, 35.588840, 37.644447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136701, -0.957806, -0.252824,
		0.470705, -0.161763, 0.867335,
		-0.871636, -0.237571, 0.428731,
		37.739220, 35.517570, 37.773067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.453148, 35.139572, 38.106049>,  <38.349365, 35.683868, 37.472954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.453148, 35.139572, 38.106049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.103485, 35.080757, 37.920910>,  <37.893688, 35.045467, 37.809826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.103485, 35.080757, 37.920910>,  <38.453148, 35.139572, 38.106049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.103485, 35.080757, 37.920910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290915, -0.921690, -0.256626,
		-0.388868, -0.358981, 0.848478,
		-0.874157, -0.147041, -0.462849,
		37.841240, 35.036644, 37.782055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.379158, 34.359787, 38.113201>,  <38.453148, 35.139572, 38.106049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.379158, 34.359787, 38.113201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.164650, 34.525467, 37.819031>,  <38.035946, 34.624874, 37.642529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.164650, 34.525467, 37.819031>,  <38.379158, 34.359787, 38.113201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.164650, 34.525467, 37.819031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148578, -0.811383, -0.565316,
		-0.830871, -0.412428, 0.373574,
		-0.536264, 0.414200, -0.735432,
		38.003769, 34.649727, 37.598404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.063145, 33.866341, 37.753090>,  <38.379158, 34.359787, 38.113201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.063145, 33.866341, 37.753090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.015724, 34.159798, 37.485447>,  <37.987274, 34.335873, 37.324860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.015724, 34.159798, 37.485447>,  <38.063145, 33.866341, 37.753090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.015724, 34.159798, 37.485447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178801, -0.647076, -0.741163,
		-0.976717, -0.207502, -0.054466,
		-0.118550, 0.733645, -0.669112,
		37.980160, 34.379890, 37.284714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.742310, 33.539406, 37.214153>,  <38.063145, 33.866341, 37.753090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.742310, 33.539406, 37.214153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.856255, 33.874802, 37.028343>,  <37.924622, 34.076038, 36.916855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.856255, 33.874802, 37.028343>,  <37.742310, 33.539406, 37.214153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.856255, 33.874802, 37.028343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268138, -0.534964, -0.801196,
		-0.920301, 0.103675, -0.377224,
		0.284865, 0.838490, -0.464529,
		37.941715, 34.126350, 36.888985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.443085, 33.563141, 36.601151>,  <37.742310, 33.539406, 37.214153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.443085, 33.563141, 36.601151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.776440, 33.779884, 36.557598>,  <37.976452, 33.909931, 36.531467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.776440, 33.779884, 36.557598>,  <37.443085, 33.563141, 36.601151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.776440, 33.779884, 36.557598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242137, -0.535046, -0.809380,
		-0.496821, 0.648165, -0.577105,
		0.833390, 0.541855, -0.108878,
		38.026455, 33.942440, 36.524937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.509541, 33.656387, 35.882858>,  <37.443085, 33.563141, 36.601151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.509541, 33.656387, 35.882858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.872307, 33.755878, 36.018883>,  <38.089966, 33.815575, 36.100498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.872307, 33.755878, 36.018883>,  <37.509541, 33.656387, 35.882858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.872307, 33.755878, 36.018883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405633, -0.297335, -0.864323,
		-0.113869, 0.921806, -0.370549,
		0.906915, 0.248727, 0.340058,
		38.144382, 33.830498, 36.120899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.769756, 33.950230, 35.253658>,  <37.509541, 33.656387, 35.882858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.769756, 33.950230, 35.253658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.098080, 33.914577, 35.479340>,  <38.295074, 33.893185, 35.614750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.098080, 33.914577, 35.479340>,  <37.769756, 33.950230, 35.253658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.098080, 33.914577, 35.479340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546984, -0.161915, -0.821336,
		0.164562, 0.982771, -0.084147,
		0.820809, -0.089133, 0.564205,
		38.344322, 33.887836, 35.648602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.419212, 34.401352, 34.918873>,  <37.769756, 33.950230, 35.253658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.419212, 34.401352, 34.918873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.553402, 34.112480, 35.160835>,  <38.633915, 33.939156, 35.306011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.553402, 34.112480, 35.160835>,  <38.419212, 34.401352, 34.918873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.553402, 34.112480, 35.160835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604190, -0.327720, -0.726330,
		0.722782, 0.609141, 0.326395,
		0.335471, -0.722182, 0.604906,
		38.654045, 33.895824, 35.342308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.092216, 34.420822, 34.847744>,  <38.419212, 34.401352, 34.918873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.092216, 34.420822, 34.847744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.036961, 34.043720, 34.969154>,  <39.003807, 33.817459, 35.042000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.036961, 34.043720, 34.969154>,  <39.092216, 34.420822, 34.847744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.036961, 34.043720, 34.969154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558497, -0.327238, -0.762231,
		0.817923, 0.064220, 0.571732,
		-0.138142, -0.942757, 0.303522,
		38.995518, 33.760895, 35.060211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.788990, 34.107143, 34.777191>,  <39.092216, 34.420822, 34.847744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.788990, 34.107143, 34.777191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.505669, 33.826107, 34.749844>,  <39.335678, 33.657486, 34.733437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.505669, 33.826107, 34.749844>,  <39.788990, 34.107143, 34.777191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.505669, 33.826107, 34.749844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530737, -0.466176, -0.707812,
		0.465432, -0.537629, 0.703085,
		-0.708302, -0.702591, -0.068366,
		39.293179, 33.615330, 34.729332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.203262, 33.551636, 34.819283>,  <39.788990, 34.107143, 34.777191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.203262, 33.551636, 34.819283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.857697, 33.397339, 34.689754>,  <39.650356, 33.304760, 34.612038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.857697, 33.397339, 34.689754>,  <40.203262, 33.551636, 34.819283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.857697, 33.397339, 34.689754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497924, -0.557528, -0.664255,
		0.075688, -0.735098, 0.673723,
		-0.863912, -0.385739, -0.323824,
		39.598522, 33.281616, 34.592606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.227806, 32.835587, 34.672401>,  <40.203262, 33.551636, 34.819283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.227806, 32.835587, 34.672401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.908955, 32.906708, 34.441586>,  <39.717644, 32.949379, 34.303097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.908955, 32.906708, 34.441586>,  <40.227806, 32.835587, 34.672401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.908955, 32.906708, 34.441586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317921, -0.688876, -0.651442,
		-0.513333, -0.702736, 0.492597,
		-0.797129, 0.177800, -0.577037,
		39.669815, 32.960049, 34.268475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.022118, 32.806355, 34.702599>,  <40.227806, 32.835587, 34.672401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.022118, 32.806355, 34.702599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.143139, 33.169781, 34.587379>,  <41.215752, 33.387836, 34.518250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.143139, 33.169781, 34.587379>,  <41.022118, 32.806355, 34.702599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.143139, 33.169781, 34.587379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886235, -0.379384, -0.265809,
		-0.350785, -0.174856, -0.919986,
		0.302550, 0.908566, -0.288046,
		41.233902, 33.442352, 34.500965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.344173, 32.751938, 33.990379>,  <41.022118, 32.806355, 34.702599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.344173, 32.751938, 33.990379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.511974, 33.058693, 34.184658>,  <41.612656, 33.242748, 34.301224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.511974, 33.058693, 34.184658>,  <41.344173, 32.751938, 33.990379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.511974, 33.058693, 34.184658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907682, -0.347517, -0.235256,
		-0.011629, 0.539545, -0.841876,
		0.419498, 0.766892, 0.485694,
		41.637825, 33.288761, 34.330368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.748947, 33.288109, 33.646442>,  <41.344173, 32.751938, 33.990379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.748947, 33.288109, 33.646442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.886963, 33.290115, 34.021873>,  <41.969772, 33.291321, 34.247131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.886963, 33.290115, 34.021873>,  <41.748947, 33.288109, 33.646442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.886963, 33.290115, 34.021873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917606, -0.212066, -0.336195,
		0.197352, 0.977243, -0.077775,
		0.345037, 0.005018, 0.938576,
		41.990475, 33.291622, 34.303448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.314758, 33.718239, 33.722080>,  <41.748947, 33.288109, 33.646442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.314758, 33.718239, 33.722080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.330223, 33.405483, 33.970970>,  <42.339504, 33.217831, 34.120304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.330223, 33.405483, 33.970970>,  <42.314758, 33.718239, 33.722080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.330223, 33.405483, 33.970970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827180, -0.324298, -0.458915,
		0.560605, 0.532435, 0.634220,
		0.038666, -0.781885, 0.622223,
		42.341824, 33.170918, 34.157639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.105488, 33.538979, 33.553299>,  <42.314758, 33.718239, 33.722080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.105488, 33.538979, 33.553299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.479450, 33.511074, 33.692490>,  <43.703827, 33.494331, 33.776005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.479450, 33.511074, 33.692490>,  <43.105488, 33.538979, 33.553299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.479450, 33.511074, 33.692490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318192, -0.599015, 0.734803,
		0.157182, -0.797694, -0.582219,
		0.934905, -0.069760, 0.347974,
		43.759922, 33.490147, 33.796883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.237221, 32.828289, 33.484177>,  <43.105488, 33.538979, 33.553299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.237221, 32.828289, 33.484177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.445816, 33.004898, 33.776234>,  <43.570972, 33.110863, 33.951469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.445816, 33.004898, 33.776234>,  <43.237221, 32.828289, 33.484177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.445816, 33.004898, 33.776234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300836, -0.705625, 0.641554,
		0.798469, -0.554215, -0.235147,
		0.521484, 0.441520, 0.730147,
		43.602261, 33.137356, 33.995277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.597813, 32.276749, 33.719696>,  <43.237221, 32.828289, 33.484177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.597813, 32.276749, 33.719696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.547474, 32.567604, 33.989639>,  <43.517269, 32.742119, 34.151604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.547474, 32.567604, 33.989639>,  <43.597813, 32.276749, 33.719696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.547474, 32.567604, 33.989639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231903, -0.682979, 0.692648,
		0.964564, -0.069333, 0.254577,
		-0.125847, 0.727140, 0.674855,
		43.509720, 32.785748, 34.192097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.124264, 32.164616, 34.176727>,  <43.597813, 32.276749, 33.719696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.124264, 32.164616, 34.176727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.790268, 32.282887, 34.362358>,  <43.589870, 32.353851, 34.473736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.790268, 32.282887, 34.362358>,  <44.124264, 32.164616, 34.176727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.790268, 32.282887, 34.362358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070211, -0.779228, 0.622796,
		0.545771, 0.552611, 0.629885,
		-0.834988, 0.295679, 0.464079,
		43.539772, 32.371590, 34.501583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.741848, 31.985243, 33.916481>,  <44.124264, 32.164616, 34.176727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.741848, 31.985243, 33.916481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.042431, 32.086727, 33.672859>,  <45.222782, 32.147617, 33.526688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.042431, 32.086727, 33.672859>,  <44.741848, 31.985243, 33.916481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.042431, 32.086727, 33.672859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626982, -0.012845, -0.778928,
		-0.205444, 0.967195, 0.149418,
		0.751456, 0.253709, -0.609053,
		45.267868, 32.162838, 33.490143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.527493, 32.496937, 33.624878>,  <44.741848, 31.985243, 33.916481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.527493, 32.496937, 33.624878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.809849, 32.341061, 33.388279>,  <44.979263, 32.247536, 33.246319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.809849, 32.341061, 33.388279>,  <44.527493, 32.496937, 33.624878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.809849, 32.341061, 33.388279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607345, 0.096724, -0.788528,
		0.364496, 0.915851, -0.168402,
		0.705886, -0.389693, -0.591493,
		45.021614, 32.224152, 33.210831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.308804, 32.831936, 33.061535>,  <44.527493, 32.496937, 33.624878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.308804, 32.831936, 33.061535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.559776, 32.548363, 32.932697>,  <44.710361, 32.378220, 32.855392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.559776, 32.548363, 32.932697>,  <44.308804, 32.831936, 33.061535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.559776, 32.548363, 32.932697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574169, -0.141795, -0.806365,
		0.525985, 0.690877, -0.496012,
		0.627431, -0.708930, -0.322098,
		44.748005, 32.335682, 32.836067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.424858, 33.009964, 32.327560>,  <44.308804, 32.831936, 33.061535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.424858, 33.009964, 32.327560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.497471, 32.621048, 32.386471>,  <44.541039, 32.387699, 32.421818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.497471, 32.621048, 32.386471>,  <44.424858, 33.009964, 32.327560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.497471, 32.621048, 32.386471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541293, -0.223833, -0.810494,
		0.821004, 0.067413, -0.566929,
		0.181535, -0.972293, 0.147278,
		44.551929, 32.329361, 32.430653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.585155, 32.708660, 31.674234>,  <44.424858, 33.009964, 32.327560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.585155, 32.708660, 31.674234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.543865, 32.368073, 31.879894>,  <44.519089, 32.163719, 32.003288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.543865, 32.368073, 31.879894>,  <44.585155, 32.708660, 31.674234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.543865, 32.368073, 31.879894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622622, -0.347797, -0.700984,
		0.775684, -0.392481, -0.494240,
		-0.103228, -0.851467, 0.514148,
		44.512897, 32.112633, 32.034138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.713501, 32.203575, 31.252754>,  <44.585155, 32.708660, 31.674234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.713501, 32.203575, 31.252754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.480438, 32.045151, 31.536625>,  <44.340599, 31.950096, 31.706947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.480438, 32.045151, 31.536625>,  <44.713501, 32.203575, 31.252754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.480438, 32.045151, 31.536625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683645, -0.233332, -0.691509,
		0.439473, -0.888082, -0.134814,
		-0.582660, -0.396065, 0.709676,
		44.305641, 31.926331, 31.749527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.415176, 31.716871, 30.890499>,  <44.713501, 32.203575, 31.252754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.415176, 31.716871, 30.890499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.193962, 31.724047, 31.223686>,  <44.061234, 31.728352, 31.423599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.193962, 31.724047, 31.223686>,  <44.415176, 31.716871, 30.890499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.193962, 31.724047, 31.223686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806781, -0.261115, -0.530022,
		0.207994, -0.965141, 0.158875,
		-0.553031, 0.017936, 0.832968,
		44.028053, 31.729427, 31.473576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.114708, 31.050665, 30.990257>,  <44.415176, 31.716871, 30.890499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.114708, 31.050665, 30.990257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.885780, 31.315899, 31.183243>,  <43.748425, 31.475040, 31.299034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.885780, 31.315899, 31.183243>,  <44.114708, 31.050665, 30.990257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.885780, 31.315899, 31.183243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782488, -0.265596, -0.563180,
		-0.245290, -0.699847, 0.670856,
		-0.572316, 0.663079, 0.482474,
		43.714085, 31.514826, 31.327982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.476421, 30.696407, 31.171734>,  <44.114708, 31.050665, 30.990257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.476421, 30.696407, 31.171734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.363953, 31.080147, 31.162003>,  <43.296471, 31.310390, 31.156164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.363953, 31.080147, 31.162003>,  <43.476421, 30.696407, 31.171734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.363953, 31.080147, 31.162003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672800, -0.215141, -0.707852,
		-0.684310, -0.182664, 0.705941,
		-0.281176, 0.959348, -0.024327,
		43.279598, 31.367950, 31.154705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.811054, 30.689482, 31.113047>,  <43.476421, 30.696407, 31.171734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.811054, 30.689482, 31.113047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.904629, 31.061903, 31.001040>,  <42.960773, 31.285357, 30.933834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.904629, 31.061903, 31.001040>,  <42.811054, 30.689482, 31.113047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.904629, 31.061903, 31.001040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596777, -0.089862, -0.797359,
		-0.767547, 0.353644, 0.534609,
		0.233940, 0.931054, -0.280020,
		42.974812, 31.341219, 30.917034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.135063, 31.169395, 30.942554>,  <42.811054, 30.689482, 31.113047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.135063, 31.169395, 30.942554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.435284, 31.353571, 30.752960>,  <42.615417, 31.464077, 30.639204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.435284, 31.353571, 30.752960>,  <42.135063, 31.169395, 30.942554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.435284, 31.353571, 30.752960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618783, 0.238005, -0.748639,
		-0.231892, 0.855190, 0.463548,
		0.750555, 0.460439, -0.473986,
		42.660450, 31.491703, 30.610765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.846474, 31.627193, 30.463589>,  <42.135063, 31.169395, 30.942554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.846474, 31.627193, 30.463589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.215866, 31.585178, 30.315992>,  <42.437500, 31.559969, 30.227434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.215866, 31.585178, 30.315992>,  <41.846474, 31.627193, 30.463589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.215866, 31.585178, 30.315992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345724, 0.189118, -0.919081,
		0.166320, 0.976320, 0.138333,
		0.923479, -0.105036, -0.368991,
		42.492908, 31.553667, 30.205296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.789959, 32.017509, 29.863510>,  <41.846474, 31.627193, 30.463589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.789959, 32.017509, 29.863510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.142143, 31.837435, 29.804012>,  <42.353455, 31.729389, 29.768314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.142143, 31.837435, 29.804012>,  <41.789959, 32.017509, 29.863510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.142143, 31.837435, 29.804012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194949, -0.057767, -0.979111,
		0.432193, 0.891063, -0.138625,
		0.880457, -0.450189, -0.148745,
		42.406281, 31.702377, 29.759388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.998650, 32.372066, 29.324465>,  <41.789959, 32.017509, 29.863510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.998650, 32.372066, 29.324465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.207218, 32.030807, 29.318020>,  <42.332359, 31.826052, 29.314154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.207218, 32.030807, 29.318020>,  <41.998650, 32.372066, 29.324465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.207218, 32.030807, 29.318020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077673, -0.028653, -0.996567,
		0.849759, 0.520880, -0.081207,
		0.521419, -0.853149, -0.016110,
		42.363644, 31.774862, 29.313187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.547756, 32.455395, 28.922266>,  <41.998650, 32.372066, 29.324465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.547756, 32.455395, 28.922266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.442318, 32.069714, 28.933805>,  <42.379055, 31.838305, 28.940729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.442318, 32.069714, 28.933805>,  <42.547756, 32.455395, 28.922266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.442318, 32.069714, 28.933805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262071, 0.042801, -0.964099,
		0.928353, -0.261688, -0.263971,
		-0.263591, -0.964203, 0.028847,
		42.363239, 31.780453, 28.942459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.886383, 32.279728, 28.373552>,  <42.547756, 32.455395, 28.922266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.886383, 32.279728, 28.373552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.608139, 32.001934, 28.447100>,  <42.441193, 31.835257, 28.491228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.608139, 32.001934, 28.447100>,  <42.886383, 32.279728, 28.373552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.608139, 32.001934, 28.447100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207561, -0.050744, -0.976905,
		0.687779, -0.717713, -0.108850,
		-0.695614, -0.694488, 0.183870,
		42.399456, 31.793589, 28.502260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.940479, 31.760948, 27.939026>,  <42.886383, 32.279728, 28.373552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.940479, 31.760948, 27.939026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.555012, 31.714752, 28.035357>,  <42.323730, 31.687035, 28.093155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.555012, 31.714752, 28.035357>,  <42.940479, 31.760948, 27.939026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.555012, 31.714752, 28.035357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215475, -0.196623, -0.956509,
		0.157819, -0.973654, 0.164595,
		-0.963672, -0.115489, 0.240829,
		42.265911, 31.680105, 28.107605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.650646, 30.997181, 27.702179>,  <42.940479, 31.760948, 27.939026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.650646, 30.997181, 27.702179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.362709, 31.272758, 27.736084>,  <42.189945, 31.438105, 27.756428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.362709, 31.272758, 27.736084>,  <42.650646, 30.997181, 27.702179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.362709, 31.272758, 27.736084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356655, -0.262333, -0.896648,
		-0.595504, -0.675676, 0.434554,
		-0.719842, 0.688943, 0.084763,
		42.146755, 31.479441, 27.761513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.123219, 30.798914, 27.263960>,  <42.650646, 30.997181, 27.702179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.123219, 30.798914, 27.263960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.013432, 31.177891, 27.329712>,  <41.947559, 31.405277, 27.369164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.013432, 31.177891, 27.329712>,  <42.123219, 30.798914, 27.263960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.013432, 31.177891, 27.329712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456442, 0.022097, -0.889479,
		-0.846362, -0.319162, 0.426388,
		-0.274466, 0.947443, 0.164381,
		41.931091, 31.462124, 27.379026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.506634, 30.795828, 26.867056>,  <42.123219, 30.798914, 27.263960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.506634, 30.795828, 26.867056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.560200, 31.182089, 26.956121>,  <41.592339, 31.413845, 27.009562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.560200, 31.182089, 26.956121>,  <41.506634, 30.795828, 26.867056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.560200, 31.182089, 26.956121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390016, 0.257910, -0.883951,
		-0.911018, 0.031530, 0.411159,
		0.133913, 0.965654, 0.222663,
		41.600372, 31.471785, 27.022921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.826740, 31.082123, 26.851629>,  <41.506634, 30.795828, 26.867056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.826740, 31.082123, 26.851629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.132183, 31.325428, 26.764978>,  <41.315449, 31.471411, 26.712988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.132183, 31.325428, 26.764978>,  <40.826740, 31.082123, 26.851629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.132183, 31.325428, 26.764978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446756, 0.255495, -0.857398,
		-0.466175, 0.751492, 0.466841,
		0.763604, 0.608261, -0.216628,
		41.361263, 31.507906, 26.699989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.634823, 31.725058, 26.654678>,  <40.826740, 31.082123, 26.851629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.634823, 31.725058, 26.654678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.980476, 31.655416, 26.465801>,  <41.187866, 31.613632, 26.352474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.980476, 31.655416, 26.465801>,  <40.634823, 31.725058, 26.654678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.980476, 31.655416, 26.465801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420478, 0.265799, -0.867496,
		0.276542, 0.948177, 0.156478,
		0.864131, -0.174104, -0.472193,
		41.239716, 31.603186, 26.324144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.870689, 31.498476, 26.800943>,  <40.634823, 31.725058, 26.654678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.870689, 31.498476, 26.800943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.677799, 31.744114, 27.050854>,  <39.562065, 31.891497, 27.200800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.677799, 31.744114, 27.050854>,  <39.870689, 31.498476, 26.800943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.677799, 31.744114, 27.050854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866579, 0.438942, 0.237427,
		-0.128439, 0.655912, -0.743830,
		-0.482229, 0.614092, 0.624776,
		39.533131, 31.928341, 27.238287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.146461, 32.248199, 26.670847>,  <39.870689, 31.498476, 26.800943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.146461, 32.248199, 26.670847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.026760, 32.134129, 27.035072>,  <39.954941, 32.065685, 27.253607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.026760, 32.134129, 27.035072>,  <40.146461, 32.248199, 26.670847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.026760, 32.134129, 27.035072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701688, 0.580903, 0.412536,
		-0.646593, 0.762383, 0.026267,
		-0.299252, -0.285174, 0.910562,
		39.936985, 32.048576, 27.308241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.028122, 32.825615, 27.128040>,  <40.146461, 32.248199, 26.670847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.028122, 32.825615, 27.128040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.136475, 32.509563, 27.347975>,  <40.201485, 32.319931, 27.479935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.136475, 32.509563, 27.347975>,  <40.028122, 32.825615, 27.128040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.136475, 32.509563, 27.347975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634319, 0.576155, 0.515446,
		-0.724060, 0.209147, 0.657263,
		0.270881, -0.790129, 0.549837,
		40.217739, 32.272526, 27.512926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.080959, 33.335655, 27.721745>,  <40.028122, 32.825615, 27.128040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.080959, 33.335655, 27.721745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.937569, 33.666271, 27.548157>,  <39.851532, 33.864639, 27.444004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.937569, 33.666271, 27.548157>,  <40.080959, 33.335655, 27.721745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.937569, 33.666271, 27.548157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744728, 0.533508, 0.400936,
		0.562914, -0.179460, -0.806798,
		-0.358481, 0.826537, -0.433968,
		39.830025, 33.914230, 27.417967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.639824, 33.754490, 28.023113>,  <40.080959, 33.335655, 27.721745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.639824, 33.754490, 28.023113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.403454, 33.972569, 27.785267>,  <40.261631, 34.103416, 27.642559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.403454, 33.972569, 27.785267>,  <40.639824, 33.754490, 28.023113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.403454, 33.972569, 27.785267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392179, 0.838254, 0.378848,
		0.704985, -0.009325, -0.709160,
		-0.590924, 0.545200, -0.594614,
		40.226177, 34.136127, 27.606882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.980679, 34.328793, 27.839592>,  <40.639824, 33.754490, 28.023113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.980679, 34.328793, 27.839592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.605686, 34.453945, 27.778627>,  <40.380692, 34.529037, 27.742048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.605686, 34.453945, 27.778627>,  <40.980679, 34.328793, 27.839592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.605686, 34.453945, 27.778627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267158, 0.927628, 0.261024,
		0.223051, 0.203988, -0.953224,
		-0.937483, 0.312883, -0.152411,
		40.324440, 34.547810, 27.732904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.848045, 34.796425, 27.248358>,  <40.980679, 34.328793, 27.839592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.848045, 34.796425, 27.248358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.614239, 34.856766, 27.567253>,  <40.473953, 34.892971, 27.758591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.614239, 34.856766, 27.567253>,  <40.848045, 34.796425, 27.248358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.614239, 34.856766, 27.567253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618573, 0.718707, 0.317534,
		-0.525080, 0.678752, -0.513407,
		-0.584516, 0.150849, 0.797236,
		40.438885, 34.902020, 27.806423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.672611, 35.478809, 27.267982>,  <40.848045, 34.796425, 27.248358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.672611, 35.478809, 27.267982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.698090, 35.308319, 27.628931>,  <40.713379, 35.206024, 27.845501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.698090, 35.308319, 27.628931>,  <40.672611, 35.478809, 27.267982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.698090, 35.308319, 27.628931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739231, 0.627598, 0.244252,
		-0.670433, 0.651503, 0.355054,
		0.063700, -0.426221, 0.902373,
		40.717201, 35.180454, 27.899643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.674225, 36.028267, 27.751026>,  <40.672611, 35.478809, 27.267982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.674225, 36.028267, 27.751026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.844227, 35.700504, 27.904884>,  <40.946228, 35.503849, 27.997198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.844227, 35.700504, 27.904884>,  <40.674225, 36.028267, 27.751026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.844227, 35.700504, 27.904884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624356, 0.573034, 0.530860,
		-0.655402, 0.014537, 0.755140,
		0.425004, -0.819403, 0.384644,
		40.971729, 35.454685, 28.020277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.198360, 36.261482, 28.192118>,  <40.674225, 36.028267, 27.751026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.198360, 36.261482, 28.192118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.221420, 35.876022, 28.296467>,  <41.235256, 35.644745, 28.359076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.221420, 35.876022, 28.296467>,  <41.198360, 36.261482, 28.192118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.221420, 35.876022, 28.296467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793829, 0.202706, 0.573364,
		-0.605403, 0.174033, 0.776659,
		0.057649, -0.963651, 0.260871,
		41.238716, 35.586926, 28.374729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.265888, 36.287083, 28.842249>,  <41.198360, 36.261482, 28.192118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.265888, 36.287083, 28.842249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.397606, 35.923309, 28.740667>,  <41.476639, 35.705044, 28.679718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.397606, 35.923309, 28.740667>,  <41.265888, 36.287083, 28.842249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.397606, 35.923309, 28.740667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794245, 0.121339, 0.595358,
		-0.510624, -0.397753, 0.762270,
		0.329298, -0.909434, -0.253955,
		41.496395, 35.650478, 28.664480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.430962, 36.048203, 29.401089>,  <41.265888, 36.287083, 28.842249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.430962, 36.048203, 29.401089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.635380, 35.798546, 29.164692>,  <41.758030, 35.648750, 29.022854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.635380, 35.798546, 29.164692>,  <41.430962, 36.048203, 29.401089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.635380, 35.798546, 29.164692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787437, 0.064280, 0.613033,
		-0.344632, -0.778660, 0.524325,
		0.511048, -0.624144, -0.590993,
		41.788692, 35.611301, 28.987394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.766140, 35.504742, 29.778301>,  <41.430962, 36.048203, 29.401089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.766140, 35.504742, 29.778301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.961586, 35.502205, 29.429310>,  <42.078854, 35.500683, 29.219915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.961586, 35.502205, 29.429310>,  <41.766140, 35.504742, 29.778301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.961586, 35.502205, 29.429310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871102, 0.060141, 0.487406,
		0.049381, -0.998169, 0.034911,
		0.488613, -0.006343, -0.872477,
		42.108170, 35.500301, 29.167566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.100456, 34.967129, 29.801258>,  <41.766140, 35.504742, 29.778301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.100456, 34.967129, 29.801258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.299778, 35.182663, 29.529568>,  <42.419373, 35.311981, 29.366554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.299778, 35.182663, 29.529568>,  <42.100456, 34.967129, 29.801258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.299778, 35.182663, 29.529568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851706, -0.157729, 0.499718,
		0.162130, -0.827515, -0.537525,
		0.498307, 0.538833, -0.679227,
		42.449268, 35.344315, 29.325800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.721504, 34.563976, 29.762262>,  <42.100456, 34.967129, 29.801258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.721504, 34.563976, 29.762262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.795273, 34.914864, 29.584963>,  <42.839535, 35.125397, 29.478584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.795273, 34.914864, 29.584963>,  <42.721504, 34.563976, 29.762262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.795273, 34.914864, 29.584963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982121, -0.147147, 0.117417,
		0.037779, -0.456977, -0.888676,
		0.184423, 0.877223, -0.443247,
		42.850601, 35.178032, 29.451988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.242340, 34.469715, 29.267813>,  <42.721504, 34.563976, 29.762262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.242340, 34.469715, 29.267813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.242840, 34.846638, 29.401716>,  <43.243141, 35.072792, 29.482058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.242840, 34.846638, 29.401716>,  <43.242340, 34.469715, 29.267813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.242840, 34.846638, 29.401716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980693, -0.066621, 0.183858,
		0.195552, 0.328065, -0.924193,
		0.001253, 0.942303, 0.334758,
		43.243217, 35.129330, 29.502144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.914055, 34.627331, 29.077633>,  <43.242340, 34.469715, 29.267813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.914055, 34.627331, 29.077633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.797653, 34.916130, 29.328724>,  <43.727814, 35.089409, 29.479378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.797653, 34.916130, 29.328724>,  <43.914055, 34.627331, 29.077633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.797653, 34.916130, 29.328724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938995, 0.089816, 0.331997,
		0.183320, 0.686045, -0.704085,
		-0.291003, 0.721994, 0.627728,
		43.710354, 35.132729, 29.517042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.418331, 35.066704, 29.056599>,  <43.914055, 34.627331, 29.077633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.418331, 35.066704, 29.056599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.262627, 35.150341, 29.415430>,  <44.169205, 35.200523, 29.630730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.262627, 35.150341, 29.415430>,  <44.418331, 35.066704, 29.056599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.262627, 35.150341, 29.415430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900419, -0.118964, 0.418441,
		0.194212, 0.970633, -0.141960,
		-0.389265, 0.209090, 0.897081,
		44.145847, 35.213066, 29.684555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.801132, 35.569843, 29.340361>,  <44.418331, 35.066704, 29.056599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.801132, 35.569843, 29.340361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.630913, 35.412785, 29.666487>,  <44.528782, 35.318550, 29.862162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.630913, 35.412785, 29.666487>,  <44.801132, 35.569843, 29.340361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.630913, 35.412785, 29.666487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901980, -0.111293, 0.417188,
		-0.073067, 0.912932, 0.401518,
		-0.425550, -0.392644, 0.815314,
		44.503246, 35.294991, 29.911081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.090702, 35.885292, 29.835766>,  <44.801132, 35.569843, 29.340361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.090702, 35.885292, 29.835766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.925079, 35.584957, 30.041599>,  <44.825706, 35.404755, 30.165100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.925079, 35.584957, 30.041599>,  <45.090702, 35.885292, 29.835766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.925079, 35.584957, 30.041599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812346, -0.049758, 0.581050,
		-0.410670, 0.658609, 0.630543,
		-0.414059, -0.750839, 0.514584,
		44.800861, 35.359707, 30.195974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.256706, 36.014435, 30.563530>,  <45.090702, 35.885292, 29.835766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.256706, 36.014435, 30.563530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.148579, 35.629345, 30.559620>,  <45.083702, 35.398293, 30.557274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.148579, 35.629345, 30.559620>,  <45.256706, 36.014435, 30.563530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.148579, 35.629345, 30.559620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724807, -0.210183, 0.656108,
		-0.633704, 0.170275, 0.754603,
		-0.270324, -0.962720, -0.009777,
		45.067482, 35.340530, 30.556686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.332481, 35.804752, 31.276384>,  <45.256706, 36.014435, 30.563530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.332481, 35.804752, 31.276384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.329815, 35.463215, 31.068188>,  <45.328217, 35.258293, 30.943270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.329815, 35.463215, 31.068188>,  <45.332481, 35.804752, 31.276384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.329815, 35.463215, 31.068188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643771, -0.401957, 0.651145,
		-0.765189, -0.330739, 0.552356,
		-0.006665, -0.853840, -0.520493,
		45.327816, 35.207062, 30.912041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.263851, 35.330936, 31.791805>,  <45.332481, 35.804752, 31.276384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.263851, 35.330936, 31.791805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.389648, 35.104504, 31.487005>,  <45.465126, 34.968643, 31.304125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.389648, 35.104504, 31.487005>,  <45.263851, 35.330936, 31.791805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.389648, 35.104504, 31.487005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638137, -0.468208, 0.611198,
		-0.702765, -0.678475, 0.213994,
		0.314489, -0.566086, -0.761999,
		45.483994, 34.934677, 31.258406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.238304, 34.674480, 32.015930>,  <45.263851, 35.330936, 31.791805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.238304, 34.674480, 32.015930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.491474, 34.668026, 31.706310>,  <45.643375, 34.664154, 31.520538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.491474, 34.668026, 31.706310>,  <45.238304, 34.674480, 32.015930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.491474, 34.668026, 31.706310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660194, -0.510997, 0.550478,
		-0.404416, -0.859431, -0.312770,
		0.632923, -0.016133, -0.774047,
		45.681351, 34.663185, 31.474096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.405293, 33.983253, 31.845707>,  <45.238304, 34.674480, 32.015930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.405293, 33.983253, 31.845707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.705360, 34.205379, 31.702110>,  <45.885403, 34.338654, 31.615953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.705360, 34.205379, 31.702110>,  <45.405293, 33.983253, 31.845707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.705360, 34.205379, 31.702110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658842, -0.581466, 0.477310,
		0.056315, -0.594582, -0.802060,
		0.750171, 0.555311, -0.358991,
		45.930412, 34.371971, 31.594414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.813774, 33.418171, 31.482721>,  <45.405293, 33.983253, 31.845707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.813774, 33.418171, 31.482721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.032642, 33.736408, 31.586742>,  <46.163963, 33.927353, 31.649155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.032642, 33.736408, 31.586742>,  <45.813774, 33.418171, 31.482721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.032642, 33.736408, 31.586742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676573, -0.603320, 0.422202,
		0.492798, -0.055072, -0.868399,
		0.547173, 0.795596, 0.260055,
		46.196793, 33.975086, 31.664759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.350777, 33.041401, 31.591110>,  <45.813774, 33.418171, 31.482721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.350777, 33.041401, 31.591110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.454578, 33.402142, 31.729279>,  <46.516861, 33.618587, 31.812180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.454578, 33.402142, 31.729279>,  <46.350777, 33.041401, 31.591110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.454578, 33.402142, 31.729279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649375, -0.427693, 0.628800,
		0.714821, 0.061132, -0.696630,
		0.259504, 0.901854, 0.345422,
		46.532429, 33.672699, 31.832905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.174717, 33.140068, 31.639896>,  <46.350777, 33.041401, 31.591110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.174717, 33.140068, 31.639896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.985535, 33.378605, 31.899338>,  <46.872025, 33.521729, 32.055004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.985535, 33.378605, 31.899338>,  <47.174717, 33.140068, 31.639896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.985535, 33.378605, 31.899338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604000, -0.316509, 0.731441,
		0.641480, 0.737695, -0.210498,
		-0.472956, 0.596345, 0.648602,
		46.843647, 33.557510, 32.093918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.655487, 33.627495, 31.817135>,  <47.174717, 33.140068, 31.639896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.655487, 33.627495, 31.817135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.389484, 33.659973, 32.114098>,  <47.229881, 33.679459, 32.292274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.389484, 33.659973, 32.114098>,  <47.655487, 33.627495, 31.817135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.389484, 33.659973, 32.114098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734944, -0.105520, 0.669868,
		0.132730, 0.991097, 0.010497,
		-0.665011, 0.081197, 0.742406,
		47.189980, 33.684334, 32.336819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.966019, 34.084251, 32.296356>,  <47.655487, 33.627495, 31.817135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.966019, 34.084251, 32.296356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.690186, 33.884014, 32.505695>,  <47.524685, 33.763874, 32.631298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.690186, 33.884014, 32.505695>,  <47.966019, 34.084251, 32.296356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.690186, 33.884014, 32.505695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708466, -0.316442, 0.630825,
		-0.150176, 0.805776, 0.572863,
		-0.689581, -0.500589, 0.523344,
		47.483311, 33.733837, 32.662697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.017231, 34.256935, 33.069321>,  <47.966019, 34.084251, 32.296356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.017231, 34.256935, 33.069321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.859898, 33.893700, 33.011810>,  <47.765499, 33.675758, 32.977303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.859898, 33.893700, 33.011810>,  <48.017231, 34.256935, 33.069321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.859898, 33.893700, 33.011810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594453, -0.370484, 0.713700,
		-0.701368, 0.195250, 0.685536,
		-0.393330, -0.908085, -0.143778,
		47.741898, 33.621273, 32.968678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.685318, 34.004025, 33.725704>,  <48.017231, 34.256935, 33.069321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.685318, 34.004025, 33.725704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.847198, 33.736217, 33.476559>,  <47.944328, 33.575531, 33.327072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.847198, 33.736217, 33.476559>,  <47.685318, 34.004025, 33.725704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.847198, 33.736217, 33.476559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610093, -0.309696, 0.729297,
		-0.681178, -0.675152, 0.283136,
		0.404700, -0.669521, -0.622864,
		47.968609, 33.535362, 33.289700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.006126, 34.242596, 34.146107>,  <47.685318, 34.004025, 33.725704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.006126, 34.242596, 34.146107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.143860, 33.867935, 34.171772>,  <47.226501, 33.643139, 34.187172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.143860, 33.867935, 34.171772>,  <47.006126, 34.242596, 34.146107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.143860, 33.867935, 34.171772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763291, -0.319085, -0.561758,
		0.546644, 0.144461, -0.824810,
		0.344336, -0.936652, 0.064160,
		47.247162, 33.586941, 34.191021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.479946, 34.389946, 34.690685>,  <47.006126, 34.242596, 34.146107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.479946, 34.389946, 34.690685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.620480, 34.758015, 34.759792>,  <47.704800, 34.978855, 34.801258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.620480, 34.758015, 34.759792>,  <47.479946, 34.389946, 34.690685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.620480, 34.758015, 34.759792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.931309, 0.324535, 0.165353,
		0.096084, -0.218993, 0.970984,
		0.351329, 0.920174, 0.172768,
		47.725880, 35.034065, 34.811623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.726284, 41.255753, 39.087147> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.374428, 41.445541, 39.100521>,  <37.163315, 41.559414, 39.108543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.374428, 41.445541, 39.100521>,  <37.726284, 41.255753, 39.087147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.374428, 41.445541, 39.100521> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341480, -0.581024, -0.738785,
		-0.331106, -0.661279, 0.673112,
		-0.879636, 0.474470, 0.033433,
		37.110538, 41.587883, 39.110550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.236347, 40.743023, 39.071751>,  <37.726284, 41.255753, 39.087147>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.236347, 40.743023, 39.071751> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.008884, 41.057449, 38.974812>,  <36.872406, 41.246105, 38.916649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.008884, 41.057449, 38.974812>,  <37.236347, 40.743023, 39.071751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.008884, 41.057449, 38.974812> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322934, -0.484307, -0.813118,
		-0.756530, -0.384127, 0.529253,
		-0.568661, 0.786062, -0.242346,
		36.838287, 41.293266, 38.902107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.491550, 40.627789, 39.140289>,  <37.236347, 40.743023, 39.071751>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.491550, 40.627789, 39.140289> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.521954, 40.934799, 38.885689>,  <36.540195, 41.119003, 38.732929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.521954, 40.934799, 38.885689>,  <36.491550, 40.627789, 39.140289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.521954, 40.934799, 38.885689> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618510, -0.464404, -0.633857,
		-0.782093, 0.441857, 0.439424,
		0.076004, 0.767523, -0.636500,
		36.544754, 41.165054, 38.694740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.870449, 40.711266, 38.894402>,  <36.491550, 40.627789, 39.140289>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.870449, 40.711266, 38.894402> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.068920, 40.936222, 38.629818>,  <36.188004, 41.071194, 38.471069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.068920, 40.936222, 38.629818>,  <35.870449, 40.711266, 38.894402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.068920, 40.936222, 38.629818> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591679, -0.338519, -0.731657,
		-0.635390, 0.754404, 0.164787,
		0.496181, 0.562388, -0.661456,
		36.217773, 41.104939, 38.431381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.387386, 40.854298, 38.488026>,  <35.870449, 40.711266, 38.894402>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.387386, 40.854298, 38.488026> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.717529, 40.915516, 38.270638>,  <35.915615, 40.952248, 38.140205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.717529, 40.915516, 38.270638>,  <35.387386, 40.854298, 38.488026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.717529, 40.915516, 38.270638> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431273, -0.450349, -0.781786,
		-0.364404, 0.879637, -0.305693,
		0.825356, 0.153049, -0.543473,
		35.965137, 40.961430, 38.107597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.167194, 41.094925, 37.830616>,  <35.387386, 40.854298, 38.488026>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.167194, 41.094925, 37.830616> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.530560, 40.942745, 37.761284>,  <35.748577, 40.851437, 37.719685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.530560, 40.942745, 37.761284>,  <35.167194, 41.094925, 37.830616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.530560, 40.942745, 37.761284> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370339, -0.539892, -0.755887,
		0.193993, 0.750851, -0.631340,
		0.908414, -0.380447, -0.173334,
		35.803085, 40.828609, 37.709282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.243225, 41.025784, 37.078728>,  <35.167194, 41.094925, 37.830616>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.243225, 41.025784, 37.078728> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.501163, 40.749706, 37.210064>,  <35.655926, 40.584061, 37.288864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.501163, 40.749706, 37.210064>,  <35.243225, 41.025784, 37.078728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.501163, 40.749706, 37.210064> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143982, -0.531589, -0.834675,
		0.750630, 0.490960, -0.442168,
		0.644844, -0.690196, 0.328338,
		35.694618, 40.542648, 37.308567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.552124, 40.651386, 36.571667>,  <35.243225, 41.025784, 37.078728>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.552124, 40.651386, 36.571667> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.642426, 40.368607, 36.839775>,  <35.696606, 40.198940, 37.000641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.642426, 40.368607, 36.839775>,  <35.552124, 40.651386, 36.571667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.642426, 40.368607, 36.839775> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165439, -0.705860, -0.688761,
		0.960034, 0.044603, -0.276308,
		0.225756, -0.706946, 0.670270,
		35.710152, 40.156525, 37.040855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.069790, 40.232849, 36.377899>,  <35.552124, 40.651386, 36.571667>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.069790, 40.232849, 36.377899> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.927979, 39.987217, 36.659954>,  <35.842892, 39.839840, 36.829189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.927979, 39.987217, 36.659954>,  <36.069790, 40.232849, 36.377899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.927979, 39.987217, 36.659954> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049878, -0.765468, -0.641539,
		0.933716, -0.192270, 0.302006,
		-0.354524, -0.614078, 0.705139,
		35.821621, 39.802994, 36.871494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.433910, 39.654102, 36.336658>,  <36.069790, 40.232849, 36.377899>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.433910, 39.654102, 36.336658> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.123253, 39.524261, 36.552605>,  <35.936859, 39.446358, 36.682171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.123253, 39.524261, 36.552605>,  <36.433910, 39.654102, 36.336658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.123253, 39.524261, 36.552605> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123273, -0.918757, -0.375086,
		0.617756, -0.224759, 0.753565,
		-0.776647, -0.324606, 0.539861,
		35.890259, 39.426880, 36.714561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.554230, 38.920399, 36.558929>,  <36.433910, 39.654102, 36.336658>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.554230, 38.920399, 36.558929> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.156521, 38.953739, 36.585663>,  <35.917896, 38.973743, 36.601704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.156521, 38.953739, 36.585663>,  <36.554230, 38.920399, 36.558929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.156521, 38.953739, 36.585663> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103705, -0.903320, -0.416244,
		0.025676, -0.420792, 0.906793,
		-0.994277, 0.083352, 0.066832,
		35.858238, 38.978745, 36.605713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.319366, 38.271236, 36.706409>,  <36.554230, 38.920399, 36.558929>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.319366, 38.271236, 36.706409> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.985630, 38.451000, 36.578720>,  <35.785389, 38.558861, 36.502106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.985630, 38.451000, 36.578720>,  <36.319366, 38.271236, 36.706409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.985630, 38.451000, 36.578720> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252461, -0.826312, -0.503460,
		-0.490042, -0.339465, 0.802884,
		-0.834339, 0.449413, -0.319226,
		35.735329, 38.585823, 36.482952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.620975, 37.824394, 36.848465>,  <36.319366, 38.271236, 36.706409>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.620975, 37.824394, 36.848465> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.594246, 38.067265, 36.531761>,  <35.578209, 38.212986, 36.341740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.594246, 38.067265, 36.531761>,  <35.620975, 37.824394, 36.848465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.594246, 38.067265, 36.531761> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306374, -0.767680, -0.562852,
		-0.949563, 0.204962, 0.237320,
		-0.066823, 0.607172, -0.791755,
		35.574200, 38.249416, 36.294235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.441349, 37.351433, 36.469254>,  <35.620975, 37.824394, 36.848465>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.441349, 37.351433, 36.469254> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.465618, 37.657497, 36.212864>,  <35.480179, 37.841137, 36.059029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.465618, 37.657497, 36.212864>,  <35.441349, 37.351433, 36.469254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.465618, 37.657497, 36.212864> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057782, -0.638391, -0.767540,
		-0.996484, 0.083604, 0.005481,
		0.060670, 0.765158, -0.640977,
		35.483818, 37.887047, 36.020573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.899982, 37.268661, 35.990719>,  <35.441349, 37.351433, 36.469254>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.899982, 37.268661, 35.990719> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.160282, 37.492443, 35.785378>,  <35.316463, 37.626713, 35.662174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.160282, 37.492443, 35.785378>,  <34.899982, 37.268661, 35.990719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.160282, 37.492443, 35.785378> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041996, -0.648538, -0.760023,
		-0.758127, 0.516146, -0.398543,
		0.650753, 0.559457, -0.513351,
		35.355507, 37.660278, 35.631371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.723637, 37.234493, 35.269146>,  <34.899982, 37.268661, 35.990719>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.723637, 37.234493, 35.269146> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.094646, 37.383568, 35.257862>,  <35.317253, 37.473015, 35.251091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.094646, 37.383568, 35.257862>,  <34.723637, 37.234493, 35.269146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.094646, 37.383568, 35.257862> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203690, -0.567325, -0.797905,
		-0.313375, 0.734333, -0.602122,
		0.927527, 0.372690, -0.028209,
		35.372906, 37.495377, 35.249401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.777302, 37.462917, 34.653442>,  <34.723637, 37.234493, 35.269146>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.777302, 37.462917, 34.653442> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.143978, 37.392284, 34.796829>,  <35.363983, 37.349907, 34.882862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.143978, 37.392284, 34.796829>,  <34.777302, 37.462917, 34.653442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.143978, 37.392284, 34.796829> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227679, -0.506413, -0.831690,
		0.328392, 0.844018, -0.424020,
		0.916690, -0.176580, 0.358467,
		35.418983, 37.339310, 34.904369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.198093, 37.548828, 34.088467>,  <34.777302, 37.462917, 34.653442>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.198093, 37.548828, 34.088467> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.421520, 37.335880, 34.342896>,  <35.555576, 37.208111, 34.495552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.421520, 37.335880, 34.342896>,  <35.198093, 37.548828, 34.088467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.421520, 37.335880, 34.342896> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262162, -0.614231, -0.744306,
		0.786937, 0.582501, -0.203525,
		0.558571, -0.532366, 0.636071,
		35.589092, 37.176170, 34.533718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.709290, 37.345024, 33.655754>,  <35.198093, 37.548828, 34.088467>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.709290, 37.345024, 33.655754> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.752831, 37.087612, 33.958809>,  <35.778957, 36.933163, 34.140644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.752831, 37.087612, 33.958809>,  <35.709290, 37.345024, 33.655754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.752831, 37.087612, 33.958809> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215277, -0.728819, -0.649984,
		0.970467, 0.233856, 0.059202,
		0.108855, -0.643532, 0.757639,
		35.785488, 36.894554, 34.186100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.304996, 36.971680, 33.471008>,  <35.709290, 37.345024, 33.655754>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.304996, 36.971680, 33.471008> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.072514, 36.749386, 33.708782>,  <35.933022, 36.616009, 33.851448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.072514, 36.749386, 33.708782>,  <36.304996, 36.971680, 33.471008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.072514, 36.749386, 33.708782> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107569, -0.776542, -0.620815,
		0.806613, -0.296881, 0.511114,
		-0.581209, -0.555738, 0.594434,
		35.898151, 36.582664, 33.887112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.739864, 36.331154, 33.573517>,  <36.304996, 36.971680, 33.471008>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.739864, 36.331154, 33.573517> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.360851, 36.230900, 33.652889>,  <36.133446, 36.170750, 33.700512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.360851, 36.230900, 33.652889>,  <36.739864, 36.331154, 33.573517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.360851, 36.230900, 33.652889> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044640, -0.718382, -0.694215,
		0.316539, -0.648931, 0.691876,
		-0.947528, -0.250632, 0.198428,
		36.076591, 36.155712, 33.712418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.731220, 35.629490, 33.568851>,  <36.739864, 36.331154, 33.573517>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.731220, 35.629490, 33.568851> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.358521, 35.756618, 33.498619>,  <36.134899, 35.832897, 33.456478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.358521, 35.756618, 33.498619>,  <36.731220, 35.629490, 33.568851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.358521, 35.756618, 33.498619> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100975, -0.691298, -0.715479,
		-0.348777, -0.648918, 0.676210,
		-0.931751, 0.317823, -0.175584,
		36.078995, 35.851967, 33.445942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.942493, 34.921352, 33.597454>,  <36.731220, 35.629490, 33.568851>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.942493, 34.921352, 33.597454> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.340134, 34.938080, 33.557442>,  <37.578720, 34.948116, 33.533432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.340134, 34.938080, 33.557442>,  <36.942493, 34.921352, 33.597454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.340134, 34.938080, 33.557442> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008319, 0.890502, 0.454904,
		0.108104, -0.453054, 0.884904,
		0.994105, 0.041816, -0.100035,
		37.638367, 34.950626, 33.527431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.265808, 35.051590, 34.253189>,  <36.942493, 34.921352, 33.597454>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.265808, 35.051590, 34.253189> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.553101, 35.175884, 34.004162>,  <37.725475, 35.250462, 33.854744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.553101, 35.175884, 34.004162>,  <37.265808, 35.051590, 34.253189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.553101, 35.175884, 34.004162> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133016, 0.816922, 0.561200,
		0.682976, -0.485880, 0.545403,
		0.718227, 0.310739, -0.622567,
		37.768570, 35.269108, 33.817390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.745060, 35.097908, 34.671638>,  <37.265808, 35.051590, 34.253189>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.745060, 35.097908, 34.671638> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.853001, 35.327637, 34.362492>,  <37.917767, 35.465473, 34.177002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.853001, 35.327637, 34.362492>,  <37.745060, 35.097908, 34.671638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.853001, 35.327637, 34.362492> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261426, 0.728799, 0.632857,
		0.926733, -0.372828, 0.046526,
		0.269856, 0.574326, -0.772870,
		37.933956, 35.499935, 34.130630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.412022, 35.339531, 34.766724>,  <37.745060, 35.097908, 34.671638>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.412022, 35.339531, 34.766724> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.238083, 35.612335, 34.531517>,  <38.133720, 35.776020, 34.390392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.238083, 35.612335, 34.531517>,  <38.412022, 35.339531, 34.766724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.238083, 35.612335, 34.531517> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184453, 0.706602, 0.683148,
		0.881412, 0.188601, -0.433062,
		-0.434845, 0.682014, -0.588019,
		38.107628, 35.816940, 34.355110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.992722, 35.734970, 34.618584>,  <38.412022, 35.339531, 34.766724>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.992722, 35.734970, 34.618584> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.659615, 35.939919, 34.534710>,  <38.459751, 36.062889, 34.484386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.659615, 35.939919, 34.534710>,  <38.992722, 35.734970, 34.618584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.659615, 35.939919, 34.534710> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316795, 0.751643, 0.578510,
		0.454018, 0.415341, -0.788263,
		-0.832771, 0.512372, -0.209682,
		38.409782, 36.093632, 34.471806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.182518, 36.371258, 34.363773>,  <38.992722, 35.734970, 34.618584>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.182518, 36.371258, 34.363773> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.809956, 36.427776, 34.497952>,  <38.586418, 36.461689, 34.578457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.809956, 36.427776, 34.497952>,  <39.182518, 36.371258, 34.363773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.809956, 36.427776, 34.497952> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246452, 0.923003, 0.295510,
		-0.267864, 0.357910, -0.894511,
		-0.931402, 0.141298, 0.335447,
		38.530537, 36.470165, 34.598587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.114010, 36.956303, 34.112072>,  <39.182518, 36.371258, 34.363773>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.114010, 36.956303, 34.112072> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.813251, 36.929714, 34.374443>,  <38.632797, 36.913761, 34.531864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.813251, 36.929714, 34.374443>,  <39.114010, 36.956303, 34.112072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.813251, 36.929714, 34.374443> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232649, 0.904150, 0.358310,
		-0.616873, 0.422012, -0.664360,
		-0.751892, -0.066469, 0.655927,
		38.587685, 36.909775, 34.571220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.827969, 37.598717, 34.123413>,  <39.114010, 36.956303, 34.112072>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.827969, 37.598717, 34.123413> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.719120, 37.438385, 34.473335>,  <38.653812, 37.342186, 34.683289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.719120, 37.438385, 34.473335>,  <38.827969, 37.598717, 34.123413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.719120, 37.438385, 34.473335> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314899, 0.821962, 0.474571,
		-0.909280, 0.404615, -0.097451,
		-0.272120, -0.400830, 0.874806,
		38.637486, 37.318134, 34.735779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.529392, 38.160885, 34.496014>,  <38.827969, 37.598717, 34.123413>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.529392, 38.160885, 34.496014> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.589176, 37.897430, 34.791000>,  <38.625046, 37.739357, 34.967991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.589176, 37.897430, 34.791000>,  <38.529392, 38.160885, 34.496014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.589176, 37.897430, 34.791000> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207816, 0.750109, 0.627812,
		-0.966682, 0.059423, 0.248988,
		0.149462, -0.658639, 0.737466,
		38.634014, 37.699841, 35.012241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.062344, 38.346504, 34.993122>,  <38.529392, 38.160885, 34.496014>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.062344, 38.346504, 34.993122> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.342190, 38.133175, 35.183319>,  <38.510098, 38.005177, 35.297440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.342190, 38.133175, 35.183319>,  <38.062344, 38.346504, 34.993122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.342190, 38.133175, 35.183319> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068105, 0.612674, 0.787396,
		-0.711264, -0.583260, 0.392316,
		0.699618, -0.533328, 0.475495,
		38.552074, 37.973175, 35.325966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.778484, 38.253601, 35.692532>,  <38.062344, 38.346504, 34.993122>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.778484, 38.253601, 35.692532> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.169174, 38.176342, 35.729855>,  <38.403587, 38.129986, 35.752247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.169174, 38.176342, 35.729855>,  <37.778484, 38.253601, 35.692532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.169174, 38.176342, 35.729855> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070979, 0.701508, 0.709118,
		-0.202419, -0.685989, 0.698889,
		0.976723, -0.193145, 0.093307,
		38.462193, 38.118397, 35.757847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.910000, 38.308418, 36.376770>,  <37.778484, 38.253601, 35.692532>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.910000, 38.308418, 36.376770> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.263672, 38.358360, 36.196712>,  <38.475876, 38.388325, 36.088676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.263672, 38.358360, 36.196712>,  <37.910000, 38.308418, 36.376770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.263672, 38.358360, 36.196712> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272515, 0.644794, 0.714126,
		0.379411, -0.754091, 0.536092,
		0.884185, 0.124854, -0.450143,
		38.528927, 38.395817, 36.061668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.472431, 38.170341, 36.768444>,  <37.910000, 38.308418, 36.376770>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.472431, 38.170341, 36.768444> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.629295, 38.437321, 36.515232>,  <38.723415, 38.597507, 36.363304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.629295, 38.437321, 36.515232>,  <38.472431, 38.170341, 36.768444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.629295, 38.437321, 36.515232> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294071, 0.561078, 0.773766,
		0.871625, -0.489597, 0.023758,
		0.392163, 0.667448, -0.633026,
		38.746944, 38.637554, 36.325325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.920570, 38.462337, 37.190769>,  <38.472431, 38.170341, 36.768444>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.920570, 38.462337, 37.190769> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.915554, 38.712799, 36.878929>,  <38.912544, 38.863075, 36.691826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.915554, 38.712799, 36.878929>,  <38.920570, 38.462337, 37.190769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.915554, 38.712799, 36.878929> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550849, 0.655011, 0.517230,
		0.834511, -0.422957, -0.353128,
		-0.012537, 0.626154, -0.779599,
		38.911793, 38.900646, 36.645050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.560585, 38.730850, 37.115818>,  <38.920570, 38.462337, 37.190769>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.560585, 38.730850, 37.115818> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.345085, 39.014103, 36.933254>,  <39.215786, 39.184055, 36.823715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.345085, 39.014103, 36.933254>,  <39.560585, 38.730850, 37.115818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.345085, 39.014103, 36.933254> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466058, 0.701814, 0.538746,
		0.701814, 0.077535, -0.708128,
		-0.538746, 0.708128, -0.456407,
		39.183460, 39.226540, 36.796333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.032505, 39.253799, 36.935249>,  <39.560585, 38.730850, 37.115818>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.032505, 39.253799, 36.935249> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.664291, 39.408363, 36.958275>,  <39.443363, 39.501102, 36.972092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.664291, 39.408363, 36.958275>,  <40.032505, 39.253799, 36.935249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.664291, 39.408363, 36.958275> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328064, 0.684568, 0.650954,
		0.212124, 0.618109, -0.756931,
		-0.920531, 0.386405, 0.057566,
		39.388130, 39.524284, 36.975544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.101990, 39.976566, 36.880062>,  <40.032505, 39.253799, 36.935249>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.101990, 39.976566, 36.880062> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.722691, 39.940788, 37.001926>,  <39.495110, 39.919323, 37.075047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.722691, 39.940788, 37.001926>,  <40.101990, 39.976566, 36.880062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.722691, 39.940788, 37.001926> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123074, 0.780954, 0.612343,
		-0.292699, 0.618151, -0.729532,
		-0.948251, -0.089446, 0.304663,
		39.438217, 39.913956, 37.093327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.671116, 40.587578, 36.767750>,  <40.101990, 39.976566, 36.880062>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.671116, 40.587578, 36.767750> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.555771, 40.361427, 37.076862>,  <39.486565, 40.225735, 37.262329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.555771, 40.361427, 37.076862>,  <39.671116, 40.587578, 36.767750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.555771, 40.361427, 37.076862> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348771, 0.689604, 0.634669,
		-0.891743, 0.452540, -0.001669,
		-0.288364, -0.565379, 0.772782,
		39.469261, 40.191814, 37.308697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.363335, 41.018471, 37.638802> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.605812, 40.727943, 37.768414>,  <38.751297, 40.553627, 37.846180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.605812, 40.727943, 37.768414>,  <38.363335, 41.018471, 37.638802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.605812, 40.727943, 37.768414> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153193, 0.506429, 0.848565,
		-0.780424, -0.464755, 0.418260,
		0.606193, -0.726315, 0.324032,
		38.787670, 40.510048, 37.865623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.149464, 40.859444, 38.253922>,  <38.363335, 41.018471, 37.638802>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.149464, 40.859444, 38.253922> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.526962, 40.728188, 38.237545>,  <38.753460, 40.649433, 38.227718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.526962, 40.728188, 38.237545>,  <38.149464, 40.859444, 38.253922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.526962, 40.728188, 38.237545> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180848, 0.408510, 0.894659,
		-0.276846, -0.851731, 0.444871,
		0.943743, -0.328137, -0.040939,
		38.810085, 40.629745, 38.225262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.279037, 40.570278, 38.965832>,  <38.149464, 40.859444, 38.253922>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.279037, 40.570278, 38.965832> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.621655, 40.680050, 38.791008>,  <38.827225, 40.745914, 38.686115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.621655, 40.680050, 38.791008>,  <38.279037, 40.570278, 38.965832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.621655, 40.680050, 38.791008> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253184, 0.514506, 0.819256,
		0.449696, -0.812387, 0.371217,
		0.856546, 0.274430, -0.437055,
		38.878616, 40.762379, 38.659893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.717617, 40.450668, 39.586262>,  <38.279037, 40.570278, 38.965832>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.717617, 40.450668, 39.586262> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.921089, 40.668236, 39.319309>,  <39.043171, 40.798775, 39.159138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.921089, 40.668236, 39.319309>,  <38.717617, 40.450668, 39.586262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.921089, 40.668236, 39.319309> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405516, 0.532432, 0.743016,
		0.759475, -0.648591, 0.050270,
		0.508678, 0.543917, -0.667383,
		39.073692, 40.831409, 39.119095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.337372, 40.592991, 39.933788>,  <38.717617, 40.450668, 39.586262>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.337372, 40.592991, 39.933788> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.327484, 40.859428, 39.635605>,  <39.321552, 41.019291, 39.456696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.327484, 40.859428, 39.635605>,  <39.337372, 40.592991, 39.933788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.327484, 40.859428, 39.635605> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333287, 0.708518, 0.622030,
		0.942501, -0.233075, -0.239515,
		-0.024721, 0.666092, -0.745460,
		39.320068, 41.059258, 39.411968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.040451, 40.995049, 40.066944>,  <39.337372, 40.592991, 39.933788>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.040451, 40.995049, 40.066944> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.836700, 41.211845, 39.799580>,  <39.714451, 41.341923, 39.639160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.836700, 41.211845, 39.799580>,  <40.040451, 40.995049, 40.066944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.836700, 41.211845, 39.799580> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262991, 0.837618, 0.478782,
		0.819370, 0.068096, -0.569207,
		-0.509381, 0.541996, -0.668410,
		39.683887, 41.374443, 39.599056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.488152, 41.529461, 39.883469>,  <40.040451, 40.995049, 40.066944>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.488152, 41.529461, 39.883469> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.116196, 41.661762, 39.819080>,  <39.893024, 41.741142, 39.780449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.116196, 41.661762, 39.819080>,  <40.488152, 41.529461, 39.883469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.116196, 41.661762, 39.819080> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188907, 0.804874, 0.562576,
		0.315633, 0.492724, -0.810924,
		-0.929887, 0.330757, -0.160966,
		39.837231, 41.760990, 39.770790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.553036, 42.154945, 39.615170>,  <40.488152, 41.529461, 39.883469>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.553036, 42.154945, 39.615170> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.182323, 42.130848, 39.763462>,  <39.959896, 42.116390, 39.852440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.182323, 42.130848, 39.763462>,  <40.553036, 42.154945, 39.615170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.182323, 42.130848, 39.763462> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146277, 0.851232, 0.503991,
		-0.345942, 0.521321, -0.780096,
		-0.926783, -0.060241, 0.370734,
		39.904289, 42.112774, 39.874683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.320156, 42.809677, 39.384640>,  <40.553036, 42.154945, 39.615170>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.320156, 42.809677, 39.384640> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.085777, 42.677841, 39.680759>,  <39.945152, 42.598740, 39.858429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.085777, 42.677841, 39.680759>,  <40.320156, 42.809677, 39.384640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.085777, 42.677841, 39.680759> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111204, 0.872204, 0.476334,
		-0.802685, 0.361429, -0.474411,
		-0.585944, -0.329590, 0.740297,
		39.909992, 42.578964, 39.902847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.005280, 43.419220, 39.605919>,  <40.320156, 42.809677, 39.384640>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.005280, 43.419220, 39.605919> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.902596, 43.173824, 39.904644>,  <39.840984, 43.026585, 40.083878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.902596, 43.173824, 39.904644>,  <40.005280, 43.419220, 39.605919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.902596, 43.173824, 39.904644> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166146, 0.733190, 0.659415,
		-0.952101, 0.293356, -0.086286,
		-0.256707, -0.613494, 0.746811,
		39.825584, 42.989777, 40.128689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.587849, 43.884293, 40.064793>,  <40.005280, 43.419220, 39.605919>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.587849, 43.884293, 40.064793> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.709454, 43.572319, 40.283619>,  <39.782417, 43.385136, 40.414917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.709454, 43.572319, 40.283619>,  <39.587849, 43.884293, 40.064793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.709454, 43.572319, 40.283619> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288390, 0.622650, 0.727419,
		-0.907968, -0.063378, 0.414219,
		0.304015, -0.779930, 0.547069,
		39.800659, 43.338341, 40.447739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.376862, 44.025589, 40.797405>,  <39.587849, 43.884293, 40.064793>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.376862, 44.025589, 40.797405> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.699528, 43.789333, 40.788971>,  <39.893127, 43.647579, 40.783909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.699528, 43.789333, 40.788971>,  <39.376862, 44.025589, 40.797405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.699528, 43.789333, 40.788971> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456267, 0.599674, 0.657428,
		-0.375653, -0.539945, 0.753222,
		0.806663, -0.590635, -0.021089,
		39.941528, 43.612144, 40.782642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.525593, 43.786186, 41.508656>,  <39.376862, 44.025589, 40.797405>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.525593, 43.786186, 41.508656> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.874855, 43.732246, 41.321289>,  <40.084412, 43.699883, 41.208870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.874855, 43.732246, 41.321289>,  <39.525593, 43.786186, 41.508656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.874855, 43.732246, 41.321289> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468879, 0.495004, 0.731521,
		0.133225, -0.858363, 0.495443,
		0.873157, -0.134846, -0.468416,
		40.136803, 43.691792, 41.180763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.910950, 43.375622, 41.954823>,  <39.525593, 43.786186, 41.508656>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.910950, 43.375622, 41.954823> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.178997, 43.568665, 41.729244>,  <40.339825, 43.684490, 41.593899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.178997, 43.568665, 41.729244>,  <39.910950, 43.375622, 41.954823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.178997, 43.568665, 41.729244> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458295, 0.328633, 0.825812,
		0.583873, -0.811845, -0.000953,
		0.670118, 0.482606, -0.563944,
		40.380032, 43.713448, 41.560062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.442280, 43.379356, 42.308834>,  <39.910950, 43.375622, 41.954823>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.442280, 43.379356, 42.308834> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.559780, 43.643265, 42.032162>,  <40.630280, 43.801609, 41.866158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.559780, 43.643265, 42.032162>,  <40.442280, 43.379356, 42.308834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.559780, 43.643265, 42.032162> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525646, 0.492875, 0.693376,
		0.798378, -0.567256, -0.202023,
		0.293749, 0.659769, -0.691677,
		40.647903, 43.841194, 41.824657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.293278, 43.392616, 42.422127>,  <40.442280, 43.379356, 42.308834>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.293278, 43.392616, 42.422127> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.172020, 43.706600, 42.206001>,  <41.099266, 43.894993, 42.076328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.172020, 43.706600, 42.206001>,  <41.293278, 43.392616, 42.422127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.172020, 43.706600, 42.206001> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473151, 0.616147, 0.629675,
		0.827184, -0.064768, -0.558187,
		-0.303142, 0.784964, -0.540312,
		41.081078, 43.942089, 42.043907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.831120, 43.717934, 42.120338>,  <41.293278, 43.392616, 42.422127>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.831120, 43.717934, 42.120338> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.533234, 43.981045, 42.165462>,  <41.354504, 44.138912, 42.192535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.533234, 43.981045, 42.165462>,  <41.831120, 43.717934, 42.120338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.533234, 43.981045, 42.165462> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468763, 0.395234, 0.789969,
		0.475039, 0.641183, -0.602679,
		-0.744714, 0.657780, 0.112811,
		41.309818, 44.178379, 42.199306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.223392, 44.329147, 42.230427>,  <41.831120, 43.717934, 42.120338>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.223392, 44.329147, 42.230427> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.851654, 44.378181, 42.369732>,  <41.628613, 44.407600, 42.453316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.851654, 44.378181, 42.369732>,  <42.223392, 44.329147, 42.230427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.851654, 44.378181, 42.369732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367440, 0.399300, 0.839969,
		-0.036094, 0.908588, -0.416131,
		-0.929347, 0.122586, 0.348264,
		41.572849, 44.414959, 42.474213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.276749, 44.837036, 42.800014>,  <42.223392, 44.329147, 42.230427>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.276749, 44.837036, 42.800014> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.900623, 44.721577, 42.872124>,  <41.674950, 44.652302, 42.915390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.900623, 44.721577, 42.872124>,  <42.276749, 44.837036, 42.800014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.900623, 44.721577, 42.872124> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021216, 0.478969, 0.877575,
		-0.339658, 0.829017, -0.444255,
		-0.940310, -0.288650, 0.180275,
		41.618530, 44.634983, 42.926205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.982311, 45.416180, 42.909863>,  <42.276749, 44.837036, 42.800014>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.982311, 45.416180, 42.909863> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.792610, 45.115345, 43.092922>,  <41.678791, 44.934845, 43.202759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.792610, 45.115345, 43.092922>,  <41.982311, 45.416180, 42.909863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.792610, 45.115345, 43.092922> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183454, 0.423995, 0.886889,
		-0.861063, 0.504567, -0.063106,
		-0.474252, -0.752091, 0.457652,
		41.650333, 44.889717, 43.230217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.618641, 45.726391, 43.364365>,  <41.982311, 45.416180, 42.909863>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.618641, 45.726391, 43.364365> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.613197, 45.355747, 43.514679>,  <41.609932, 45.133362, 43.604866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.613197, 45.355747, 43.514679>,  <41.618641, 45.726391, 43.364365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.613197, 45.355747, 43.514679> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067209, 0.374124, 0.924940,
		-0.997646, 0.037841, 0.057186,
		-0.013606, -0.926606, 0.375787,
		41.609116, 45.077766, 43.627415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.326454, 45.848236, 43.948341>,  <41.618641, 45.726391, 43.364365>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.326454, 45.848236, 43.948341> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.448582, 45.471504, 44.004547>,  <41.521858, 45.245464, 44.038273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.448582, 45.471504, 44.004547>,  <41.326454, 45.848236, 43.948341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.448582, 45.471504, 44.004547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062882, 0.167181, 0.983919,
		-0.950171, -0.291574, 0.110268,
		0.305320, -0.941825, 0.140516,
		41.540176, 45.188957, 44.046703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.015789, 45.558292, 44.501968>,  <41.326454, 45.848236, 43.948341>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.015789, 45.558292, 44.501968> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.369003, 45.373714, 44.467762>,  <41.580933, 45.262970, 44.447239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.369003, 45.373714, 44.467762>,  <41.015789, 45.558292, 44.501968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.369003, 45.373714, 44.467762> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154143, 0.113064, 0.981558,
		-0.443262, -0.879937, 0.170968,
		0.883039, -0.461441, -0.085519,
		41.633915, 45.235283, 44.442108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.353790, 45.390087, 45.004921>,  <41.015789, 45.558292, 44.501968>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.353790, 45.390087, 45.004921> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.126942, 45.226158, 45.290695>,  <39.990833, 45.127800, 45.462158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.126942, 45.226158, 45.290695>,  <40.353790, 45.390087, 45.004921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.126942, 45.226158, 45.290695> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823300, 0.257435, -0.505870,
		0.023396, -0.875085, -0.483404,
		-0.567124, -0.409822, 0.714434,
		39.956806, 45.103210, 45.505024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.023045, 44.728817, 44.764931>,  <40.353790, 45.390087, 45.004921>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.023045, 44.728817, 44.764931> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.779240, 44.940697, 45.000870>,  <39.632957, 45.067825, 45.142433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.779240, 44.940697, 45.000870>,  <40.023045, 44.728817, 44.764931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.779240, 44.940697, 45.000870> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754094, -0.157807, -0.637525,
		-0.244617, -0.833375, 0.495629,
		-0.609511, 0.529701, 0.589841,
		39.596386, 45.099606, 45.177822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.482674, 44.338844, 44.971710>,  <40.023045, 44.728817, 44.764931>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.482674, 44.338844, 44.971710> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.325439, 44.703312, 45.021111>,  <39.231098, 44.921993, 45.050751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.325439, 44.703312, 45.021111>,  <39.482674, 44.338844, 44.971710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.325439, 44.703312, 45.021111> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764048, -0.248941, -0.595197,
		-0.511583, -0.328320, 0.794033,
		-0.393082, 0.911172, 0.123498,
		39.207516, 44.976662, 45.058159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.815319, 44.255638, 45.043526>,  <39.482674, 44.338844, 44.971710>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.815319, 44.255638, 45.043526> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.845177, 44.641281, 44.941601>,  <38.863091, 44.872665, 44.880444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.845177, 44.641281, 44.941601>,  <38.815319, 44.255638, 45.043526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.845177, 44.641281, 44.941601> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747555, -0.115019, -0.654165,
		-0.659992, 0.239319, 0.712135,
		0.074645, 0.964104, -0.254816,
		38.867569, 44.930511, 44.865154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.158104, 44.519112, 44.917858>,  <38.815319, 44.255638, 45.043526>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.158104, 44.519112, 44.917858> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.392822, 44.758945, 44.700172>,  <38.533653, 44.902847, 44.569561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.392822, 44.758945, 44.700172>,  <38.158104, 44.519112, 44.917858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.392822, 44.758945, 44.700172> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606145, -0.120378, -0.786191,
		-0.536899, 0.791207, 0.292798,
		0.586794, 0.599584, -0.544217,
		38.568859, 44.938820, 44.536907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.731110, 45.006435, 44.634621>,  <38.158104, 44.519112, 44.917858>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.731110, 45.006435, 44.634621> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.042950, 45.018021, 44.384377>,  <38.230053, 45.024971, 44.234230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.042950, 45.018021, 44.384377>,  <37.731110, 45.006435, 44.634621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.042950, 45.018021, 44.384377> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620753, -0.096651, -0.778026,
		-0.083002, 0.994896, -0.057368,
		0.779600, 0.028967, -0.625608,
		38.276829, 45.026711, 44.196693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.587139, 45.557503, 44.178253>,  <37.731110, 45.006435, 44.634621>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.587139, 45.557503, 44.178253> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.847336, 45.296925, 44.022053>,  <38.003452, 45.140579, 43.928333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.847336, 45.296925, 44.022053>,  <37.587139, 45.557503, 44.178253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.847336, 45.296925, 44.022053> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569936, -0.078825, -0.817899,
		0.502033, 0.754593, -0.422555,
		0.650489, -0.651441, -0.390497,
		38.042484, 45.101494, 43.904903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.551792, 45.663258, 43.415230>,  <37.587139, 45.557503, 44.178253>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.551792, 45.663258, 43.415230> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.730827, 45.307594, 43.453308>,  <37.838249, 45.094196, 43.476154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.730827, 45.307594, 43.453308>,  <37.551792, 45.663258, 43.415230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.730827, 45.307594, 43.453308> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585049, -0.371682, -0.720812,
		0.676298, 0.266932, -0.686562,
		0.447591, -0.889156, 0.095200,
		37.865105, 45.040848, 43.481869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.575512, 45.474091, 42.774292>,  <37.551792, 45.663258, 43.415230>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.575512, 45.474091, 42.774292> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.660912, 45.135887, 42.970062>,  <37.712151, 44.932964, 43.087524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.660912, 45.135887, 42.970062>,  <37.575512, 45.474091, 42.774292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.660912, 45.135887, 42.970062> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345328, -0.533952, -0.771779,
		0.913875, -0.004241, -0.405974,
		0.213497, -0.845504, 0.489430,
		37.724960, 44.882236, 43.116890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.889877, 45.030277, 42.270218>,  <37.575512, 45.474091, 42.774292>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.889877, 45.030277, 42.270218> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.749348, 44.790295, 42.557724>,  <37.665028, 44.646305, 42.730228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.749348, 44.790295, 42.557724>,  <37.889877, 45.030277, 42.270218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.749348, 44.790295, 42.557724> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215722, -0.695176, -0.685707,
		0.911062, -0.395961, 0.114810,
		-0.351326, -0.599955, 0.718766,
		37.643951, 44.610310, 42.773354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.305786, 44.395935, 42.376545>,  <37.889877, 45.030277, 42.270218>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.305786, 44.395935, 42.376545> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.921181, 44.329010, 42.463726>,  <37.690418, 44.288853, 42.516037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.921181, 44.329010, 42.463726>,  <38.305786, 44.395935, 42.376545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.921181, 44.329010, 42.463726> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071795, -0.612682, -0.787062,
		0.265226, -0.772416, 0.577087,
		-0.961510, -0.167317, 0.217955,
		37.632729, 44.278816, 42.529114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.279377, 43.728260, 42.522205>,  <38.305786, 44.395935, 42.376545>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.279377, 43.728260, 42.522205> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.902046, 43.826786, 42.433247>,  <37.675648, 43.885902, 42.379871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.902046, 43.826786, 42.433247>,  <38.279377, 43.728260, 42.522205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.902046, 43.826786, 42.433247> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074131, -0.809618, -0.582258,
		-0.323481, -0.532772, 0.781994,
		-0.943327, 0.246319, -0.222401,
		37.619049, 43.900681, 42.366528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.978111, 43.138012, 42.398979>,  <38.279377, 43.728260, 42.522205>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.978111, 43.138012, 42.398979> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.709118, 43.387539, 42.239674>,  <37.547722, 43.537254, 42.144089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.709118, 43.387539, 42.239674>,  <37.978111, 43.138012, 42.398979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.709118, 43.387539, 42.239674> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150159, -0.641923, -0.751922,
		-0.724720, -0.445851, 0.525355,
		-0.672483, 0.623820, -0.398266,
		37.507374, 43.574684, 42.120193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.394703, 42.742321, 42.186203>,  <37.978111, 43.138012, 42.398979>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.394703, 42.742321, 42.186203> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.390408, 43.070385, 41.957390>,  <37.387829, 43.267223, 41.820103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.390408, 43.070385, 41.957390>,  <37.394703, 42.742321, 42.186203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.390408, 43.070385, 41.957390> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275568, -0.552338, -0.786756,
		-0.961221, 0.149182, 0.231944,
		-0.010741, 0.820163, -0.572029,
		37.387184, 43.316433, 41.785782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.779076, 42.642994, 41.769741>,  <37.394703, 42.742321, 42.186203>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.779076, 42.642994, 41.769741> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.988010, 42.922543, 41.574299>,  <37.113373, 43.090271, 41.457035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.988010, 42.922543, 41.574299>,  <36.779076, 42.642994, 41.769741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.988010, 42.922543, 41.574299> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146328, -0.491028, -0.858766,
		-0.840088, 0.520066, -0.154220,
		0.522342, 0.698872, -0.488607,
		37.144714, 43.132206, 41.427715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.449890, 42.692276, 41.092373>,  <36.779076, 42.642994, 41.769741>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.449890, 42.692276, 41.092373> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.807713, 42.861759, 41.035465>,  <37.022408, 42.963448, 41.001320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.807713, 42.861759, 41.035465>,  <36.449890, 42.692276, 41.092373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.807713, 42.861759, 41.035465> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051039, -0.219377, -0.974304,
		-0.444030, 0.878832, -0.174620,
		0.894557, 0.423708, -0.142265,
		37.076080, 42.988873, 40.992786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.410877, 43.132465, 40.561710>,  <36.449890, 42.692276, 41.092373>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.410877, 43.132465, 40.561710> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.796902, 43.035118, 40.600548>,  <37.028515, 42.976711, 40.623852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.796902, 43.035118, 40.600548>,  <36.410877, 43.132465, 40.561710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.796902, 43.035118, 40.600548> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034145, -0.484219, -0.874280,
		0.259786, 0.840420, -0.475611,
		0.965062, -0.243365, 0.097097,
		37.086422, 42.962109, 40.629677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.823933, 43.391247, 39.924824>,  <36.410877, 43.132465, 40.561710>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.823933, 43.391247, 39.924824> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.027000, 43.083328, 40.079582>,  <37.148842, 42.898579, 40.172436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.027000, 43.083328, 40.079582>,  <36.823933, 43.391247, 39.924824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.027000, 43.083328, 40.079582> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101021, -0.499158, -0.860602,
		0.855610, 0.397815, -0.331172,
		0.507667, -0.769795, 0.386896,
		37.179302, 42.852390, 40.195652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.310455, 43.251705, 39.413666>,  <36.823933, 43.391247, 39.924824>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.310455, 43.251705, 39.413666> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.304672, 42.918098, 39.634289>,  <37.301201, 42.717934, 39.766663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.304672, 42.918098, 39.634289>,  <37.310455, 43.251705, 39.413666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.304672, 42.918098, 39.634289> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125317, -0.545751, -0.828523,
		0.992011, -0.081099, -0.096625,
		-0.014459, -0.834013, 0.551555,
		37.300335, 42.667896, 39.799755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.668056, 42.762917, 39.065300>,  <37.310455, 43.251705, 39.413666>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.668056, 42.762917, 39.065300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.459629, 42.541733, 39.325367>,  <37.334572, 42.409023, 39.481407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.459629, 42.541733, 39.325367>,  <37.668056, 42.762917, 39.065300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.459629, 42.541733, 39.325367> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130784, -0.701030, -0.701037,
		0.843435, -0.450320, 0.292966,
		-0.521069, -0.552964, 0.650168,
		37.303307, 42.375843, 39.520416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.897552, 42.151577, 38.936832>,  <37.668056, 42.762917, 39.065300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.897552, 42.151577, 38.936832> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.559067, 42.062950, 39.130669>,  <37.355976, 42.009773, 39.246971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.559067, 42.062950, 39.130669>,  <37.897552, 42.151577, 38.936832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.559067, 42.062950, 39.130669> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254672, -0.630657, -0.733085,
		0.468038, -0.743760, 0.477244,
		-0.846217, -0.221571, 0.484587,
		37.305202, 41.996479, 39.276043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.131420, 32.542606, 26.506973> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.888554, 32.233105, 26.579250>,  <41.742836, 32.047401, 26.622618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.888554, 32.233105, 26.579250>,  <42.131420, 32.542606, 26.506973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.888554, 32.233105, 26.579250> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137131, 0.121956, 0.983016,
		-0.782654, 0.621631, 0.032059,
		-0.607163, -0.773758, 0.180694,
		41.706406, 32.000977, 26.633459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.733135, 32.760773, 26.993273>,  <42.131420, 32.542606, 26.506973>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.733135, 32.760773, 26.993273> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.717007, 32.361641, 27.014072>,  <41.707329, 32.122162, 27.026552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.717007, 32.361641, 27.014072>,  <41.733135, 32.760773, 26.993273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.717007, 32.361641, 27.014072> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100940, 0.047707, 0.993748,
		-0.994075, 0.045317, 0.098797,
		-0.040321, -0.997833, 0.051998,
		41.704910, 32.062290, 27.029673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.582119, 32.678890, 27.673323>,  <41.733135, 32.760773, 26.993273>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.582119, 32.678890, 27.673323> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.676147, 32.303783, 27.571072>,  <41.732563, 32.078720, 27.509722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.676147, 32.303783, 27.571072>,  <41.582119, 32.678890, 27.673323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.676147, 32.303783, 27.571072> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221723, -0.204327, 0.953462,
		-0.946352, -0.280805, 0.159893,
		0.235066, -0.937763, -0.255626,
		41.746666, 32.022453, 27.494385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.195389, 32.275452, 28.107719>,  <41.582119, 32.678890, 27.673323>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.195389, 32.275452, 28.107719> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.481640, 32.022171, 27.989788>,  <41.653389, 31.870201, 27.919029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.481640, 32.022171, 27.989788>,  <41.195389, 32.275452, 28.107719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.481640, 32.022171, 27.989788> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125420, -0.298752, 0.946054,
		-0.687128, -0.714001, -0.134379,
		0.715629, -0.633206, -0.294831,
		41.696327, 31.832209, 27.901339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.121746, 31.536993, 28.563990>,  <41.195389, 32.275452, 28.107719>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.121746, 31.536993, 28.563990> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.486061, 31.561255, 28.400629>,  <41.704651, 31.575811, 28.302612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.486061, 31.561255, 28.400629>,  <41.121746, 31.536993, 28.563990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.486061, 31.561255, 28.400629> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409652, -0.256199, 0.875527,
		-0.051526, -0.964719, -0.258190,
		0.910785, 0.060656, -0.408400,
		41.759296, 31.579451, 28.278109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.531914, 30.917789, 28.771515>,  <41.121746, 31.536993, 28.563990>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.531914, 30.917789, 28.771515> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.814342, 31.185209, 28.678127>,  <41.983799, 31.345661, 28.622095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.814342, 31.185209, 28.678127>,  <41.531914, 30.917789, 28.771515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.814342, 31.185209, 28.678127> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495931, -0.231485, 0.836939,
		0.505492, -0.706720, -0.494999,
		0.706067, 0.668551, -0.233470,
		42.026161, 31.385775, 28.608086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.185101, 30.526548, 28.950850>,  <41.531914, 30.917789, 28.771515>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.185101, 30.526548, 28.950850> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.257103, 30.920010, 28.948957>,  <42.300304, 31.156086, 28.947823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.257103, 30.920010, 28.948957>,  <42.185101, 30.526548, 28.950850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.257103, 30.920010, 28.948957> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452023, -0.078448, 0.888550,
		0.873655, -0.162083, -0.458756,
		0.180007, 0.983654, -0.004729,
		42.311104, 31.215105, 28.947538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.879284, 30.573133, 29.237385>,  <42.185101, 30.526548, 28.950850>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.879284, 30.573133, 29.237385> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.755417, 30.953394, 29.245054>,  <42.681095, 31.181551, 29.249657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.755417, 30.953394, 29.245054>,  <42.879284, 30.573133, 29.237385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.755417, 30.953394, 29.245054> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520735, 0.152683, 0.839954,
		0.795576, 0.270092, -0.542318,
		-0.309668, 0.950651, 0.019175,
		42.662518, 31.238590, 29.250807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.484283, 31.080114, 29.290623>,  <42.879284, 30.573133, 29.237385>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.484283, 31.080114, 29.290623> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.156082, 31.241343, 29.452765>,  <42.959160, 31.338079, 29.550049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.156082, 31.241343, 29.452765>,  <43.484283, 31.080114, 29.290623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.156082, 31.241343, 29.452765> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516115, 0.217480, 0.828449,
		0.245768, 0.888952, -0.386474,
		-0.820502, 0.403071, 0.405352,
		42.909931, 31.362265, 29.574369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.771439, 31.489090, 29.819075>,  <43.484283, 31.080114, 29.290623>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.771439, 31.489090, 29.819075> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.386822, 31.495197, 29.928766>,  <43.156052, 31.498861, 29.994581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.386822, 31.495197, 29.928766>,  <43.771439, 31.489090, 29.819075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.386822, 31.495197, 29.928766> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265061, 0.313174, 0.911956,
		-0.071960, 0.949573, -0.305177,
		-0.961543, 0.015266, 0.274231,
		43.098358, 31.499777, 30.011036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.635242, 32.142448, 30.058018>,  <43.771439, 31.489090, 29.819075>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.635242, 32.142448, 30.058018> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.340046, 31.930082, 30.224632>,  <43.162930, 31.802664, 30.324600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.340046, 31.930082, 30.224632>,  <43.635242, 32.142448, 30.058018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.340046, 31.930082, 30.224632> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310306, 0.281136, 0.908115,
		-0.599232, 0.799434, -0.042730,
		-0.737991, -0.530912, 0.416535,
		43.118649, 31.770809, 30.349592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.286728, 32.506367, 30.510603>,  <43.635242, 32.142448, 30.058018>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.286728, 32.506367, 30.510603> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.207657, 32.133911, 30.633183>,  <43.160213, 31.910439, 30.706730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.207657, 32.133911, 30.633183>,  <43.286728, 32.506367, 30.510603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.207657, 32.133911, 30.633183> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437856, 0.195827, 0.877459,
		-0.877043, 0.307636, 0.368992,
		-0.197680, -0.931135, 0.306449,
		43.148354, 31.854570, 30.725117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.902721, 32.575596, 31.178722>,  <43.286728, 32.506367, 30.510603>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.902721, 32.575596, 31.178722> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.077217, 32.216415, 31.155466>,  <43.181915, 32.000908, 31.141512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.077217, 32.216415, 31.155466>,  <42.902721, 32.575596, 31.178722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.077217, 32.216415, 31.155466> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371462, 0.120859, 0.920549,
		-0.819579, -0.423179, 0.386277,
		0.436242, -0.897949, -0.058141,
		43.208088, 31.947031, 31.138023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.993443, 32.443840, 31.893164>,  <42.902721, 32.575596, 31.178722>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.993443, 32.443840, 31.893164> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.205372, 32.152142, 31.719961>,  <43.332527, 31.977123, 31.616039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.205372, 32.152142, 31.719961>,  <42.993443, 32.443840, 31.893164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.205372, 32.152142, 31.719961> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638839, 0.007344, 0.769306,
		-0.557830, -0.684216, 0.469760,
		0.529821, -0.729242, -0.433007,
		43.364319, 31.933369, 31.590059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.105274, 31.909971, 32.371864>,  <42.993443, 32.443840, 31.893164>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.105274, 31.909971, 32.371864> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.399136, 31.830431, 32.112408>,  <43.575455, 31.782707, 31.956734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.399136, 31.830431, 32.112408>,  <43.105274, 31.909971, 32.371864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.399136, 31.830431, 32.112408> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650885, -0.063131, 0.756546,
		-0.191391, -0.977994, 0.083051,
		0.734655, -0.198853, -0.648645,
		43.619534, 31.770775, 31.917814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.556934, 31.322536, 32.593559>,  <43.105274, 31.909971, 32.371864>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.556934, 31.322536, 32.593559> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.788719, 31.508827, 32.326031>,  <43.927792, 31.620602, 32.165512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.788719, 31.508827, 32.326031>,  <43.556934, 31.322536, 32.593559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.788719, 31.508827, 32.326031> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691376, 0.153621, 0.705974,
		0.431537, -0.871492, -0.232976,
		0.579461, 0.465728, -0.668822,
		43.962559, 31.648546, 32.125385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.287582, 31.020226, 32.645390>,  <43.556934, 31.322536, 32.593559>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.287582, 31.020226, 32.645390> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.338108, 31.371523, 32.460896>,  <44.368423, 31.582302, 32.350201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.338108, 31.371523, 32.460896>,  <44.287582, 31.020226, 32.645390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.338108, 31.371523, 32.460896> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742842, 0.224408, 0.630735,
		0.657443, -0.422291, -0.624051,
		0.126311, 0.878244, -0.461231,
		44.376003, 31.634996, 32.322525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.877739, 31.115847, 32.470646>,  <44.287582, 31.020226, 32.645390>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.877739, 31.115847, 32.470646> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.809517, 31.509287, 32.447163>,  <44.768585, 31.745350, 32.433071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.809517, 31.509287, 32.447163>,  <44.877739, 31.115847, 32.470646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.809517, 31.509287, 32.447163> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816411, 0.174420, 0.550500,
		0.551711, 0.045956, -0.832768,
		-0.170550, 0.983598, -0.058710,
		44.758350, 31.804367, 32.429550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.552956, 31.314789, 32.407452>,  <44.877739, 31.115847, 32.470646>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.552956, 31.314789, 32.407452> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.321266, 31.623293, 32.513023>,  <45.182251, 31.808395, 32.576366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.321266, 31.623293, 32.513023>,  <45.552956, 31.314789, 32.407452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.321266, 31.623293, 32.513023> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734555, 0.353448, 0.579226,
		0.353448, 0.529373, -0.771258,
		-0.579226, 0.771258, 0.263928,
		45.147499, 31.854670, 32.592201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.011250, 31.993832, 32.376316>,  <45.552956, 31.314789, 32.407452>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.011250, 31.993832, 32.376316> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.707397, 32.028263, 32.634171>,  <45.525085, 32.048920, 32.788883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.707397, 32.028263, 32.634171>,  <46.011250, 31.993832, 32.376316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.707397, 32.028263, 32.634171> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642487, 0.253085, 0.723297,
		-0.100889, 0.963607, -0.247553,
		-0.759626, 0.086076, 0.644638,
		45.479511, 32.054085, 32.827560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.150749, 32.546692, 32.681007>,  <46.011250, 31.993832, 32.376316>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.150749, 32.546692, 32.681007> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.893986, 32.387436, 32.943134>,  <45.739929, 32.291882, 33.100410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.893986, 32.387436, 32.943134>,  <46.150749, 32.546692, 32.681007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.893986, 32.387436, 32.943134> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524871, 0.394879, 0.754043,
		-0.558988, 0.827981, -0.044500,
		-0.641905, -0.398144, 0.655316,
		45.701416, 32.267994, 33.139729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.569450, 32.988758, 33.263237>,  <46.150749, 32.546692, 32.681007>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.569450, 32.988758, 33.263237> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.844322, 33.239075, 33.115639>,  <47.009247, 33.389267, 33.027081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.844322, 33.239075, 33.115639>,  <46.569450, 32.988758, 33.263237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.844322, 33.239075, 33.115639> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712660, 0.482069, -0.509633,
		-0.141045, 0.613180, 0.777250,
		0.687184, 0.625796, -0.368995,
		47.050476, 33.426815, 33.004940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.232471, 33.655094, 33.189922>,  <46.569450, 32.988758, 33.263237>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.232471, 33.655094, 33.189922> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.544369, 33.672146, 32.940063>,  <46.731506, 33.682377, 32.790150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.544369, 33.672146, 32.940063>,  <46.232471, 33.655094, 33.189922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.544369, 33.672146, 32.940063> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570493, 0.459411, -0.680793,
		0.257945, 0.887200, 0.382545,
		0.779745, 0.042632, -0.624644,
		46.778294, 33.684937, 32.752670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.419846, 34.377190, 32.938316>,  <46.232471, 33.655094, 33.189922>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.419846, 34.377190, 32.938316> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.559803, 34.128113, 32.658367>,  <46.643780, 33.978668, 32.490398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.559803, 34.128113, 32.658367>,  <46.419846, 34.377190, 32.938316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.559803, 34.128113, 32.658367> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519946, 0.492375, -0.698014,
		0.779249, 0.608131, -0.151486,
		0.349896, -0.622691, -0.699878,
		46.664772, 33.941307, 32.448402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.632351, 34.786491, 32.522209>,  <46.419846, 34.377190, 32.938316>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.632351, 34.786491, 32.522209> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.612335, 34.457382, 32.295742>,  <46.600327, 34.259918, 32.159863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.612335, 34.457382, 32.295742>,  <46.632351, 34.786491, 32.522209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.612335, 34.457382, 32.295742> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295204, 0.553729, -0.778613,
		0.954123, 0.128175, -0.270593,
		-0.050036, -0.822773, -0.566163,
		46.597324, 34.210548, 32.125893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.973213, 34.953846, 31.858681>,  <46.632351, 34.786491, 32.522209>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.973213, 34.953846, 31.858681> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.740948, 34.634708, 31.793835>,  <46.601589, 34.443226, 31.754927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.740948, 34.634708, 31.793835>,  <46.973213, 34.953846, 31.858681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.740948, 34.634708, 31.793835> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351941, 0.425539, -0.833699,
		0.734145, -0.427043, -0.527887,
		-0.580662, -0.797841, -0.162114,
		46.566750, 34.395355, 31.745201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.981167, 34.896748, 31.064955>,  <46.973213, 34.953846, 31.858681>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.981167, 34.896748, 31.064955> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.652943, 34.724403, 31.215178>,  <46.456009, 34.620998, 31.305311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.652943, 34.724403, 31.215178>,  <46.981167, 34.896748, 31.064955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.652943, 34.724403, 31.215178> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486185, 0.180704, -0.854968,
		0.300503, -0.884144, -0.357754,
		-0.820562, -0.430855, 0.375555,
		46.406773, 34.595146, 31.327845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.591694, 34.680611, 30.497366>,  <46.981167, 34.896748, 31.064955>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.591694, 34.680611, 30.497366> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.301533, 34.649284, 30.770906>,  <46.127434, 34.630489, 30.935032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.301533, 34.649284, 30.770906>,  <46.591694, 34.680611, 30.497366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.301533, 34.649284, 30.770906> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668028, 0.319567, -0.672024,
		-0.165911, -0.944322, -0.284129,
		-0.725405, -0.078310, 0.683852,
		46.083912, 34.625790, 30.976063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.991081, 34.416088, 30.171631>,  <46.591694, 34.680611, 30.497366>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.991081, 34.416088, 30.171631> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.844021, 34.567547, 30.511385>,  <45.755783, 34.658421, 30.715239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.844021, 34.567547, 30.511385>,  <45.991081, 34.416088, 30.171631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.844021, 34.567547, 30.511385> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786707, 0.360417, -0.501191,
		-0.495908, -0.852482, 0.165378,
		-0.367651, 0.378648, 0.849387,
		45.733727, 34.681141, 30.766201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.366821, 34.151905, 30.160345>,  <45.991081, 34.416088, 30.171631>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.366821, 34.151905, 30.160345> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.347183, 34.470905, 30.400871>,  <45.335400, 34.662304, 30.545187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.347183, 34.470905, 30.400871>,  <45.366821, 34.151905, 30.160345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.347183, 34.470905, 30.400871> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.921574, 0.195947, -0.335121,
		-0.385086, -0.570611, 0.725336,
		-0.049097, 0.797501, 0.601317,
		45.332455, 34.710155, 30.581266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.778263, 34.073013, 30.502279>,  <45.366821, 34.151905, 30.160345>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.778263, 34.073013, 30.502279> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.866272, 34.462345, 30.528238>,  <44.919079, 34.695946, 30.543814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.866272, 34.462345, 30.528238>,  <44.778263, 34.073013, 30.502279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.866272, 34.462345, 30.528238> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.894032, 0.227819, -0.385754,
		-0.390251, 0.026857, 0.920317,
		0.220026, 0.973333, 0.064895,
		44.932281, 34.754345, 30.547707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.229149, 34.328430, 30.777794>,  <44.778263, 34.073013, 30.502279>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.229149, 34.328430, 30.777794> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.415474, 34.637089, 30.604551>,  <44.527271, 34.822285, 30.500607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.415474, 34.637089, 30.604551>,  <44.229149, 34.328430, 30.777794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.415474, 34.637089, 30.604551> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.884199, 0.386661, -0.262080,
		-0.034767, 0.505033, 0.862399,
		0.465815, 0.771644, -0.433107,
		44.555218, 34.868584, 30.474619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.947006, 34.970963, 31.082527>,  <44.229149, 34.328430, 30.777794>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.947006, 34.970963, 31.082527> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.121647, 35.055561, 30.732750>,  <44.226429, 35.106319, 30.522884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.121647, 35.055561, 30.732750>,  <43.947006, 34.970963, 31.082527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.121647, 35.055561, 30.732750> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872023, 0.338532, -0.353513,
		0.221262, 0.916879, 0.332230,
		0.436599, 0.211493, -0.874444,
		44.252628, 35.119007, 30.470417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.614456, 35.496208, 30.786734>,  <43.947006, 34.970963, 31.082527>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.614456, 35.496208, 30.786734> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.795738, 35.406757, 30.441574>,  <43.904507, 35.353088, 30.234478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.795738, 35.406757, 30.441574>,  <43.614456, 35.496208, 30.786734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.795738, 35.406757, 30.441574> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795921, 0.334373, -0.504683,
		0.401392, 0.915525, -0.026451,
		0.453205, -0.223629, -0.862900,
		43.931698, 35.339668, 30.182705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.533123, 36.116463, 30.355684>,  <43.614456, 35.496208, 30.786734>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.533123, 36.116463, 30.355684> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.566151, 35.810917, 30.099657>,  <43.585968, 35.627590, 29.946041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.566151, 35.810917, 30.099657>,  <43.533123, 36.116463, 30.355684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.566151, 35.810917, 30.099657> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863500, 0.265810, -0.428617,
		0.497544, 0.588092, -0.637650,
		0.082573, -0.763867, -0.640070,
		43.590923, 35.581757, 29.907637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.367760, 36.432220, 29.724258>,  <43.533123, 36.116463, 30.355684>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.367760, 36.432220, 29.724258> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.321922, 36.035931, 29.695042>,  <43.294422, 35.798157, 29.677511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.321922, 36.035931, 29.695042>,  <43.367760, 36.432220, 29.724258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.321922, 36.035931, 29.695042> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723540, 0.133617, -0.677227,
		0.680705, -0.024752, -0.732140,
		-0.114589, -0.990724, -0.073044,
		43.287544, 35.738712, 29.673128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.312382, 36.309479, 29.001595>,  <43.367760, 36.432220, 29.724258>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.312382, 36.309479, 29.001595> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.169365, 35.960743, 29.135494>,  <43.083553, 35.751503, 29.215834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.169365, 35.960743, 29.135494>,  <43.312382, 36.309479, 29.001595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.169365, 35.960743, 29.135494> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683188, -0.000204, -0.730242,
		0.636722, -0.489791, -0.595558,
		-0.357545, -0.871840, 0.334750,
		43.062103, 35.699192, 29.235920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.219181, 35.893856, 28.418468>,  <43.312382, 36.309479, 29.001595>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.219181, 35.893856, 28.418468> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.979462, 35.754353, 28.706694>,  <42.835629, 35.670650, 28.879629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.979462, 35.754353, 28.706694>,  <43.219181, 35.893856, 28.418468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.979462, 35.754353, 28.706694> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695670, -0.218472, -0.684335,
		0.396088, -0.911395, -0.111689,
		-0.599298, -0.348755, 0.720564,
		42.799671, 35.649727, 28.922863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.734909, 35.569832, 27.975882>,  <43.219181, 35.893856, 28.418468>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.734909, 35.569832, 27.975882> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.582417, 35.514641, 28.341532>,  <42.490921, 35.481525, 28.560923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.582417, 35.514641, 28.341532>,  <42.734909, 35.569832, 27.975882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.582417, 35.514641, 28.341532> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905483, -0.143696, -0.399314,
		0.186451, -0.979957, -0.070152,
		-0.381230, -0.137974, 0.914127,
		42.468048, 35.473248, 28.615770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.433506, 34.869118, 28.030478>,  <42.734909, 35.569832, 27.975882>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.433506, 34.869118, 28.030478> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.247528, 35.092747, 28.305073>,  <42.135941, 35.226925, 28.469830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.247528, 35.092747, 28.305073>,  <42.433506, 34.869118, 28.030478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.247528, 35.092747, 28.305073> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883843, -0.248065, -0.396592,
		-0.051428, -0.791142, 0.609466,
		-0.464948, 0.559068, 0.686488,
		42.108044, 35.260468, 28.511019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.902630, 34.454777, 28.311401>,  <42.433506, 34.869118, 28.030478>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.902630, 34.454777, 28.311401> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.780125, 34.822182, 28.411430>,  <41.706623, 35.042625, 28.471447>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.780125, 34.822182, 28.411430>,  <41.902630, 34.454777, 28.311401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.780125, 34.822182, 28.411430> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899735, -0.193494, -0.391199,
		-0.310935, -0.344807, 0.885679,
		-0.306262, 0.918514, 0.250070,
		41.688248, 35.097736, 28.486452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.228813, 34.349716, 28.662920>,  <41.902630, 34.454777, 28.311401>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.228813, 34.349716, 28.662920> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.235962, 34.731312, 28.543203>,  <41.240253, 34.960270, 28.471373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.235962, 34.731312, 28.543203>,  <41.228813, 34.349716, 28.662920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.235962, 34.731312, 28.543203> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.987889, -0.029293, -0.152373,
		-0.154130, 0.298393, 0.941916,
		0.017875, 0.953993, -0.299294,
		41.241325, 35.017509, 28.453415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.687992, 38.648682, 35.504444> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.340908, 38.543308, 35.673054>,  <39.132660, 38.480083, 35.774220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.340908, 38.543308, 35.673054>,  <39.687992, 38.648682, 35.504444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.340908, 38.543308, 35.673054> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056149, -0.894536, -0.443455,
		0.493892, -0.361122, 0.790988,
		-0.867708, -0.263432, 0.421528,
		39.080597, 38.464279, 35.799511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.729404, 37.938137, 35.603401>,  <39.687992, 38.648682, 35.504444>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.729404, 37.938137, 35.603401> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.341053, 38.000179, 35.676430>,  <39.108040, 38.037403, 35.720245>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.341053, 38.000179, 35.676430>,  <39.729404, 37.938137, 35.603401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.341053, 38.000179, 35.676430> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232368, -0.795035, -0.560290,
		0.058246, -0.586399, 0.807926,
		-0.970883, 0.155101, 0.182568,
		39.049789, 38.046711, 35.731201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.438931, 37.387146, 36.023907>,  <39.729404, 37.938137, 35.603401>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.438931, 37.387146, 36.023907> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.153534, 37.536804, 35.786942>,  <38.982296, 37.626598, 35.644764>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.153534, 37.536804, 35.786942>,  <39.438931, 37.387146, 36.023907>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.153534, 37.536804, 35.786942> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229453, -0.923641, -0.306984,
		-0.662031, -0.083098, 0.744855,
		-0.713488, 0.374142, -0.592412,
		38.939487, 37.649048, 35.609219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.047066, 36.788712, 35.801533>,  <39.438931, 37.387146, 36.023907>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.047066, 36.788712, 35.801533> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.889271, 37.080647, 35.578209>,  <38.794594, 37.255806, 35.444214>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.889271, 37.080647, 35.578209>,  <39.047066, 36.788712, 35.801533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.889271, 37.080647, 35.578209> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440651, -0.683423, -0.582030,
		-0.806353, 0.016418, 0.591206,
		-0.394488, 0.729838, -0.558315,
		38.770924, 37.299599, 35.410713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.257946, 36.869808, 35.868484>,  <39.047066, 36.788712, 35.801533>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.257946, 36.869808, 35.868484> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.364159, 37.010929, 35.509594>,  <38.427887, 37.095600, 35.294258>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.364159, 37.010929, 35.509594>,  <38.257946, 36.869808, 35.868484>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.364159, 37.010929, 35.509594> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463656, -0.769221, -0.439685,
		-0.845289, 0.532758, -0.040678,
		0.265536, 0.352800, -0.897231,
		38.443821, 37.116768, 35.240425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.634155, 36.877544, 35.423817>,  <38.257946, 36.869808, 35.868484>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.634155, 36.877544, 35.423817> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.953377, 36.863686, 35.183182>,  <38.144909, 36.855370, 35.038803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.953377, 36.863686, 35.183182>,  <37.634155, 36.877544, 35.423817>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.953377, 36.863686, 35.183182> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414002, -0.756940, -0.505613,
		-0.437843, 0.652565, -0.618428,
		0.798058, -0.034651, -0.601584,
		38.192795, 36.853291, 35.002708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.298332, 36.662323, 34.899368>,  <37.634155, 36.877544, 35.423817>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.298332, 36.662323, 34.899368> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.686794, 36.619057, 34.814369>,  <37.919872, 36.593098, 34.763371>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.686794, 36.619057, 34.814369>,  <37.298332, 36.662323, 34.899368>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.686794, 36.619057, 34.814369> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235423, -0.576326, -0.782575,
		-0.037815, 0.810029, -0.585169,
		0.971157, -0.108169, -0.212494,
		37.978142, 36.586605, 34.750622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.365582, 36.833015, 34.133053>,  <37.298332, 36.662323, 34.899368>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.365582, 36.833015, 34.133053> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.693409, 36.631027, 34.241352>,  <37.890106, 36.509834, 34.306332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.693409, 36.631027, 34.241352>,  <37.365582, 36.833015, 34.133053>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.693409, 36.631027, 34.241352> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041075, -0.523093, -0.851285,
		0.571504, 0.686567, -0.449454,
		0.819571, -0.504974, 0.270749,
		37.939281, 36.479534, 34.322578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.811260, 36.681492, 33.457428>,  <37.365582, 36.833015, 34.133053>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.811260, 36.681492, 33.457428> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.908073, 36.398067, 33.722569>,  <37.966160, 36.228012, 33.881653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.908073, 36.398067, 33.722569>,  <37.811260, 36.681492, 33.457428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.908073, 36.398067, 33.722569> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014928, -0.685797, -0.727640,
		0.970154, 0.166216, -0.176561,
		0.242030, -0.708558, 0.662847,
		37.980682, 36.185501, 33.921421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.240635, 36.282246, 33.092670>,  <37.811260, 36.681492, 33.457428>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.240635, 36.282246, 33.092670> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.141804, 36.051994, 33.404465>,  <38.082504, 35.913841, 33.591541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.141804, 36.051994, 33.404465>,  <38.240635, 36.282246, 33.092670>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.141804, 36.051994, 33.404465> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216397, -0.816891, -0.534661,
		0.944523, 0.036575, 0.326401,
		-0.247079, -0.575631, 0.779487,
		38.067680, 35.879303, 33.638309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.668468, 35.724079, 33.029800>,  <38.240635, 36.282246, 33.092670>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.668468, 35.724079, 33.029800> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.407928, 35.569382, 33.290928>,  <38.251602, 35.476562, 33.447605>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.407928, 35.569382, 33.290928>,  <38.668468, 35.724079, 33.029800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.407928, 35.569382, 33.290928> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135339, -0.905777, -0.401562,
		0.746609, -0.173206, 0.642320,
		-0.651351, -0.386740, 0.652820,
		38.212524, 35.453362, 33.486774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.913292, 35.086811, 33.249180>,  <38.668468, 35.724079, 33.029800>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.913292, 35.086811, 33.249180> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.518787, 35.069038, 33.312832>,  <38.282085, 35.058376, 33.351025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.518787, 35.069038, 33.312832>,  <38.913292, 35.086811, 33.249180>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.518787, 35.069038, 33.312832> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048764, -0.841973, -0.537311,
		0.157857, -0.537686, 0.828236,
		-0.986257, -0.044430, 0.159131,
		38.222912, 35.055710, 33.360573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.723309, 34.380623, 33.461178>,  <38.913292, 35.086811, 33.249180>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.723309, 34.380623, 33.461178> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.430969, 34.551666, 33.248386>,  <38.255566, 34.654293, 33.120712>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.430969, 34.551666, 33.248386>,  <38.723309, 34.380623, 33.461178>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.430969, 34.551666, 33.248386> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084309, -0.830010, -0.551340,
		-0.677307, -0.358098, 0.642667,
		-0.730853, 0.427609, -0.531981,
		38.211712, 34.679951, 33.088791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.116936, 33.940044, 33.932320>,  <38.723309, 34.380623, 33.461178>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.116936, 33.940044, 33.932320> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.851753, 33.914600, 34.230701>,  <38.692646, 33.899334, 34.409729>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.851753, 33.914600, 34.230701>,  <39.116936, 33.940044, 33.932320>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.851753, 33.914600, 34.230701> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437932, 0.775183, 0.455310,
		-0.607215, 0.628526, -0.486050,
		-0.662952, -0.063614, 0.745954,
		38.652866, 33.895515, 34.454487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.114746, 33.536148, 33.212929>,  <39.116936, 33.940044, 33.932320>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.114746, 33.536148, 33.212929> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.282059, 33.228622, 33.406410>,  <39.382446, 33.044106, 33.522499>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.282059, 33.228622, 33.406410>,  <39.114746, 33.536148, 33.212929>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.282059, 33.228622, 33.406410> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393055, 0.326878, 0.859453,
		-0.818870, -0.549614, -0.165459,
		0.418282, -0.768815, 0.483699,
		39.407543, 32.997978, 33.551521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.590210, 33.143215, 33.591797>,  <39.114746, 33.536148, 33.212929>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.590210, 33.143215, 33.591797> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.936008, 33.090313, 33.785767>,  <39.143486, 33.058571, 33.902149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.936008, 33.090313, 33.785767>,  <38.590210, 33.143215, 33.591797>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.936008, 33.090313, 33.785767> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445943, 0.243294, 0.861361,
		-0.231902, -0.960893, 0.151347,
		0.864498, -0.132259, 0.484924,
		39.195358, 33.050636, 33.931244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.440407, 32.881138, 34.154522>,  <38.590210, 33.143215, 33.591797>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.440407, 32.881138, 34.154522> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.800163, 33.011425, 34.271149>,  <39.016018, 33.089596, 34.341125>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.800163, 33.011425, 34.271149>,  <38.440407, 32.881138, 34.154522>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.800163, 33.011425, 34.271149> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392761, 0.309225, 0.866094,
		0.191940, -0.893471, 0.406041,
		0.899387, 0.325715, 0.291568,
		39.069981, 33.109138, 34.358620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.528904, 32.592010, 34.860935>,  <38.440407, 32.881138, 34.154522>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.528904, 32.592010, 34.860935> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.760719, 32.914036, 34.810333>,  <38.899811, 33.107250, 34.779972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.760719, 32.914036, 34.810333>,  <38.528904, 32.592010, 34.860935>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.760719, 32.914036, 34.810333> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310149, 0.361435, 0.879302,
		0.753618, -0.470356, 0.459156,
		0.579541, 0.805065, -0.126504,
		38.934582, 33.155556, 34.772381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.992371, 32.549103, 35.449993>,  <38.528904, 32.592010, 34.860935>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.992371, 32.549103, 35.449993> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.979572, 32.927536, 35.321056>,  <38.971893, 33.154594, 35.243694>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.979572, 32.927536, 35.321056>,  <38.992371, 32.549103, 35.449993>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.979572, 32.927536, 35.321056> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117697, 0.316700, 0.941195,
		0.992534, 0.068056, 0.101218,
		-0.031998, 0.946081, -0.322345,
		38.969975, 33.211361, 35.224354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.147331, 32.915779, 35.976833>,  <38.992371, 32.549103, 35.449993>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.147331, 32.915779, 35.976833> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.973442, 33.213566, 35.774136>,  <38.869110, 33.392239, 35.652519>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.973442, 33.213566, 35.774136>,  <39.147331, 32.915779, 35.976833>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.973442, 33.213566, 35.774136> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266698, 0.431026, 0.862026,
		0.860168, 0.509889, 0.011171,
		-0.434722, 0.744466, -0.506741,
		38.843025, 33.436905, 35.622112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.472668, 33.575104, 36.181103>,  <39.147331, 32.915779, 35.976833>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.472668, 33.575104, 36.181103> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.120544, 33.690704, 36.030617>,  <38.909271, 33.760063, 35.940327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.120544, 33.690704, 36.030617>,  <39.472668, 33.575104, 36.181103>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.120544, 33.690704, 36.030617> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170631, 0.547070, 0.819512,
		0.442653, 0.785617, -0.432279,
		-0.880309, 0.288999, -0.376213,
		38.856453, 33.777405, 35.917751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.336353, 34.286774, 36.397385>,  <39.472668, 33.575104, 36.181103>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.336353, 34.286774, 36.397385> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.974209, 34.140190, 36.311577>,  <38.756920, 34.052238, 36.260090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.974209, 34.140190, 36.311577>,  <39.336353, 34.286774, 36.397385>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.974209, 34.140190, 36.311577> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390253, 0.518939, 0.760530,
		-0.167381, 0.772275, -0.612842,
		-0.905365, -0.366462, -0.214521,
		38.702599, 34.030251, 36.247219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.998314, 34.877384, 36.442093>,  <39.336353, 34.286774, 36.397385>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.998314, 34.877384, 36.442093> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.722309, 34.587967, 36.449825>,  <38.556705, 34.414318, 36.454464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.722309, 34.587967, 36.449825>,  <38.998314, 34.877384, 36.442093>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.722309, 34.587967, 36.449825> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559407, 0.550055, 0.620083,
		-0.459291, 0.417048, -0.784297,
		-0.690011, -0.723540, 0.019336,
		38.515305, 34.370903, 36.455627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.447666, 35.231339, 36.362686>,  <38.998314, 34.877384, 36.442093>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.447666, 35.231339, 36.362686> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.291809, 34.891991, 36.506042>,  <38.198296, 34.688381, 36.592056>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.291809, 34.891991, 36.506042>,  <38.447666, 35.231339, 36.362686>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.291809, 34.891991, 36.506042> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607421, 0.529242, 0.592404,
		-0.692255, 0.013130, -0.721533,
		-0.389644, -0.848369, 0.358395,
		38.174915, 34.637482, 36.613560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.694954, 35.246143, 36.411465>,  <38.447666, 35.231339, 36.362686>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.694954, 35.246143, 36.411465> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.804180, 34.984627, 36.693737>,  <37.869717, 34.827717, 36.863102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.804180, 34.984627, 36.693737>,  <37.694954, 35.246143, 36.411465>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.804180, 34.984627, 36.693737> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684512, 0.383375, 0.620054,
		-0.675929, -0.652364, -0.342843,
		0.273063, -0.653793, 0.705685,
		37.886101, 34.788490, 36.905441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.116917, 35.139011, 36.711018>,  <37.694954, 35.246143, 36.411465>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.116917, 35.139011, 36.711018> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.390789, 35.010399, 36.972649>,  <37.555115, 34.933231, 37.129627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.390789, 35.010399, 36.972649>,  <37.116917, 35.139011, 36.711018>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.390789, 35.010399, 36.972649> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545863, 0.368440, 0.752520,
		-0.482951, -0.872277, 0.076751,
		0.684684, -0.321534, 0.654082,
		37.596195, 34.913940, 37.168873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.670742, 34.983440, 37.280300>,  <37.116917, 35.139011, 36.711018>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.670742, 34.983440, 37.280300> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.043968, 35.000710, 37.423138>,  <37.267906, 35.011070, 37.508842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.043968, 35.000710, 37.423138>,  <36.670742, 34.983440, 37.280300>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.043968, 35.000710, 37.423138> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334991, 0.465907, 0.818970,
		-0.131014, -0.883780, 0.449187,
		0.933068, 0.043177, 0.357099,
		37.323887, 35.013664, 37.530266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.561218, 35.120731, 38.046532>,  <36.670742, 34.983440, 37.280300>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.561218, 35.120731, 38.046532> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.929279, 35.260593, 37.976044>,  <37.150116, 35.344509, 37.933750>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.929279, 35.260593, 37.976044>,  <36.561218, 35.120731, 38.046532>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.929279, 35.260593, 37.976044> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137462, 0.709891, 0.690767,
		0.366629, -0.611389, 0.701275,
		0.920156, 0.349653, -0.176224,
		37.205326, 35.365490, 37.923176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.488552, 34.849743, 38.708672>,  <36.561218, 35.120731, 38.046532>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.488552, 34.849743, 38.708672> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.139767, 34.806076, 38.899570>,  <35.930496, 34.779877, 39.014111>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.139767, 34.806076, 38.899570>,  <36.488552, 34.849743, 38.708672>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.139767, 34.806076, 38.899570> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390387, -0.433227, -0.812350,
		0.295441, -0.894649, 0.335138,
		-0.871960, -0.109168, 0.477252,
		35.878178, 34.773327, 39.042747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.230141, 34.315071, 38.366409>,  <36.488552, 34.849743, 38.708672>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.230141, 34.315071, 38.366409> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.898106, 34.425156, 38.560406>,  <35.698883, 34.491207, 38.676804>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.898106, 34.425156, 38.560406>,  <36.230141, 34.315071, 38.366409>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.898106, 34.425156, 38.560406> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557111, -0.446932, -0.699914,
		0.024131, -0.851182, 0.524316,
		-0.830087, 0.275213, 0.484987,
		35.649078, 34.507721, 38.705902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.842587, 33.654289, 38.592823>,  <36.230141, 34.315071, 38.366409>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.842587, 33.654289, 38.592823> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.580555, 33.956001, 38.575260>,  <35.423336, 34.137028, 38.564720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.580555, 33.956001, 38.575260>,  <35.842587, 33.654289, 38.592823>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.580555, 33.956001, 38.575260> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608416, -0.561077, -0.561268,
		-0.447989, -0.340962, 0.826469,
		-0.655084, 0.754279, -0.043910,
		35.384029, 34.182285, 38.562088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.156063, 33.353889, 38.523876>,  <35.842587, 33.654289, 38.592823>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.156063, 33.353889, 38.523876> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.098572, 33.729721, 38.399601>,  <35.064079, 33.955219, 38.325035>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.098572, 33.729721, 38.399601>,  <35.156063, 33.353889, 38.523876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.098572, 33.729721, 38.399601> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586407, -0.333753, -0.738062,
		-0.797163, 0.076110, 0.598947,
		-0.143726, 0.939583, -0.310687,
		35.055454, 34.011597, 38.306396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.521309, 33.338554, 38.566570>,  <35.156063, 33.353889, 38.523876>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.521309, 33.338554, 38.566570> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.594131, 33.637291, 38.310730>,  <34.637825, 33.816532, 38.157227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.594131, 33.637291, 38.310730>,  <34.521309, 33.338554, 38.566570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.594131, 33.637291, 38.310730> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736451, -0.327440, -0.591966,
		-0.651533, 0.578803, 0.490399,
		0.182055, 0.746840, -0.639598,
		34.648746, 33.861343, 38.118851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.843552, 33.602978, 38.447922>,  <34.521309, 33.338554, 38.566570>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.843552, 33.602978, 38.447922> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.073238, 33.712219, 38.139198>,  <34.211052, 33.777763, 37.953964>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.073238, 33.712219, 38.139198>,  <33.843552, 33.602978, 38.447922>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.073238, 33.712219, 38.139198> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760463, -0.171282, -0.626385,
		-0.303263, 0.946614, 0.109330,
		0.574219, 0.273101, -0.771809,
		34.245502, 33.794151, 37.907654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.451176, 34.175293, 38.158333>,  <33.843552, 33.602978, 38.447922>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.451176, 34.175293, 38.158333> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.695499, 34.018520, 37.883148>,  <33.842094, 33.924458, 37.718037>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.695499, 34.018520, 37.883148>,  <33.451176, 34.175293, 38.158333>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.695499, 34.018520, 37.883148> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777772, -0.134312, -0.614028,
		0.148257, 0.910136, -0.386875,
		0.610811, -0.391935, -0.687966,
		33.878742, 33.900940, 37.676758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.128780, 34.474117, 37.531086>,  <33.451176, 34.175293, 38.158333>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.128780, 34.474117, 37.531086> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.379623, 34.185444, 37.413841>,  <33.530128, 34.012241, 37.343494>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.379623, 34.185444, 37.413841>,  <33.128780, 34.474117, 37.531086>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.379623, 34.185444, 37.413841> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718583, -0.390760, -0.575278,
		0.300628, 0.571388, -0.763635,
		0.627105, -0.721680, -0.293116,
		33.567757, 33.968941, 37.325905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.061153, 34.441383, 36.821518>,  <33.128780, 34.474117, 37.531086>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.061153, 34.441383, 36.821518> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.205502, 34.088821, 36.943436>,  <33.292110, 33.877285, 37.016586>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.205502, 34.088821, 36.943436>,  <33.061153, 34.441383, 36.821518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.205502, 34.088821, 36.943436> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606136, -0.470042, -0.641607,
		0.708781, 0.046792, -0.703875,
		0.360873, -0.881403, 0.304794,
		33.313763, 33.824402, 37.034874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.231457, 34.032810, 36.229279>,  <33.061153, 34.441383, 36.821518>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.231457, 34.032810, 36.229279> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.199242, 33.752850, 36.513149>,  <33.179913, 33.584873, 36.683472>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.199242, 33.752850, 36.513149>,  <33.231457, 34.032810, 36.229279>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.199242, 33.752850, 36.513149> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423149, -0.620642, -0.660113,
		0.902474, -0.353462, -0.246181,
		-0.080535, -0.699906, 0.709680,
		33.175079, 33.542877, 36.726055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.136681, 33.386860, 35.852844>,  <33.231457, 34.032810, 36.229279>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.136681, 33.386860, 35.852844> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.005474, 33.291477, 36.218479>,  <32.926750, 33.234249, 36.437859>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.005474, 33.291477, 36.218479>,  <33.136681, 33.386860, 35.852844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.005474, 33.291477, 36.218479> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659966, -0.634483, -0.402339,
		0.675909, -0.735236, 0.050746,
		-0.328012, -0.238454, 0.914083,
		32.907070, 33.219940, 36.492702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.070236, 32.682426, 35.797806>,  <33.136681, 33.386860, 35.852844>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.070236, 32.682426, 35.797806> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.844830, 32.799622, 36.106766>,  <32.709583, 32.869938, 36.292141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.844830, 32.799622, 36.106766>,  <33.070236, 32.682426, 35.797806>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.844830, 32.799622, 36.106766> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657753, -0.724817, -0.204940,
		0.499805, -0.623537, 0.601163,
		-0.563521, 0.292987, 0.772400,
		32.675774, 32.887516, 36.338486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.558735, 36.172020, 42.080307> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.201321, 36.349651, 42.053829>,  <36.986870, 36.456230, 42.037945>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.201321, 36.349651, 42.053829>,  <37.558735, 36.172020, 42.080307>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.201321, 36.349651, 42.053829> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326538, -0.743933, -0.583040,
		-0.308159, -0.499355, 0.809742,
		-0.893538, 0.444081, -0.066192,
		36.933258, 36.482876, 42.033970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.109173, 35.612423, 42.231331>,  <37.558735, 36.172020, 42.080307>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.109173, 35.612423, 42.231331> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.922806, 35.892689, 42.015182>,  <36.810986, 36.060848, 41.885494>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.922806, 35.892689, 42.015182>,  <37.109173, 35.612423, 42.231331>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.922806, 35.892689, 42.015182> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460643, -0.713490, -0.527959,
		-0.755470, 0.002936, 0.655177,
		-0.465912, 0.700660, -0.540372,
		36.783031, 36.102886, 41.853073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.385620, 35.342613, 42.133339>,  <37.109173, 35.612423, 42.231331>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.385620, 35.342613, 42.133339> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.412285, 35.618195, 41.844646>,  <36.428284, 35.783543, 41.671432>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.412285, 35.618195, 41.844646>,  <36.385620, 35.342613, 42.133339>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.412285, 35.618195, 41.844646> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511036, -0.597687, -0.617747,
		-0.856970, 0.410013, 0.312237,
		0.066665, 0.688956, -0.721732,
		36.432285, 35.824883, 41.628128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.730156, 35.267281, 41.664181>,  <36.385620, 35.342613, 42.133339>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.730156, 35.267281, 41.664181> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.989754, 35.490246, 41.457069>,  <36.145512, 35.624023, 41.332802>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.989754, 35.490246, 41.457069>,  <35.730156, 35.267281, 41.664181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.989754, 35.490246, 41.457069> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299812, -0.438116, -0.847447,
		-0.699226, 0.705226, -0.117216,
		0.648996, 0.557414, -0.517778,
		36.184452, 35.657471, 41.301735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.398430, 35.669655, 41.189358>,  <35.730156, 35.267281, 41.664181>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.398430, 35.669655, 41.189358> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.769703, 35.667301, 41.040524>,  <35.992466, 35.665890, 40.951221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.769703, 35.667301, 41.040524>,  <35.398430, 35.669655, 41.189358>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.769703, 35.667301, 41.040524> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359805, -0.269449, -0.893273,
		-0.094999, 0.962997, -0.252216,
		0.928179, -0.005888, -0.372089,
		36.048157, 35.665535, 40.928898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.255646, 36.031025, 40.582359>,  <35.398430, 35.669655, 41.189358>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.255646, 36.031025, 40.582359> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.614063, 35.858379, 40.540768>,  <35.829113, 35.754791, 40.515812>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.614063, 35.858379, 40.540768>,  <35.255646, 36.031025, 40.582359>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.614063, 35.858379, 40.540768> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265089, -0.332267, -0.905167,
		0.356129, 0.838637, -0.412142,
		0.896047, -0.431610, -0.103983,
		35.882877, 35.728897, 40.509571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.355156, 36.004845, 39.874355>,  <35.255646, 36.031025, 40.582359>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.355156, 36.004845, 39.874355> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.650135, 35.747707, 39.957230>,  <35.827122, 35.593426, 40.006954>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.650135, 35.747707, 39.957230>,  <35.355156, 36.004845, 39.874355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.650135, 35.747707, 39.957230> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248910, -0.543833, -0.801430,
		0.627869, 0.539440, -0.561057,
		0.737445, -0.642846, 0.207184,
		35.871368, 35.554855, 40.019386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.693066, 35.936878, 39.349033>,  <35.355156, 36.004845, 39.874355>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.693066, 35.936878, 39.349033> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.759819, 35.595886, 39.547199>,  <35.799870, 35.391293, 39.666100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.759819, 35.595886, 39.547199>,  <35.693066, 35.936878, 39.349033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.759819, 35.595886, 39.547199> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253950, -0.522668, -0.813835,
		0.952712, 0.010004, -0.303711,
		0.166881, -0.852478, 0.495411,
		35.809883, 35.340141, 39.695824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.257397, 35.493855, 38.998344>,  <35.693066, 35.936878, 39.349033>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.257397, 35.493855, 38.998344> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.037411, 35.241730, 39.217525>,  <35.905418, 35.090454, 39.349033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.037411, 35.241730, 39.217525>,  <36.257397, 35.493855, 38.998344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.037411, 35.241730, 39.217525> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162626, -0.562707, -0.810502,
		0.819203, -0.534857, 0.206963,
		-0.549962, -0.630309, 0.547953,
		35.872421, 35.052639, 39.381912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.944637, 35.391594, 38.685944>,  <36.257397, 35.493855, 38.998344>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.944637, 35.391594, 38.685944> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.174606, 35.562340, 38.406731>,  <37.312588, 35.664787, 38.239204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.174606, 35.562340, 38.406731>,  <36.944637, 35.391594, 38.685944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.174606, 35.562340, 38.406731> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282549, 0.697066, 0.658988,
		0.767873, -0.576096, 0.280150,
		0.574923, 0.426863, -0.698033,
		37.347084, 35.690399, 38.197319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.614220, 35.519791, 38.990704>,  <36.944637, 35.391594, 38.685944>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.614220, 35.519791, 38.990704> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.639366, 35.741859, 38.658962>,  <37.654453, 35.875103, 38.459919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.639366, 35.741859, 38.658962>,  <37.614220, 35.519791, 38.990704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.639366, 35.741859, 38.658962> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310691, 0.778817, 0.544899,
		0.948429, -0.291931, -0.123524,
		0.062871, 0.555176, -0.829353,
		37.658226, 35.908413, 38.410156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.274940, 35.828426, 38.965183>,  <37.614220, 35.519791, 38.990704>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.274940, 35.828426, 38.965183> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.047550, 36.049465, 38.721390>,  <37.911118, 36.182087, 38.575115>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.047550, 36.049465, 38.721390>,  <38.274940, 35.828426, 38.965183>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.047550, 36.049465, 38.721390> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363540, 0.833310, 0.416453,
		0.738021, 0.015172, -0.674607,
		-0.568475, 0.552598, -0.609484,
		37.877007, 36.215244, 38.538544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.777428, 36.248283, 38.644875>,  <38.274940, 35.828426, 38.965183>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.777428, 36.248283, 38.644875> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.414101, 36.415371, 38.636139>,  <38.196106, 36.515625, 38.630898>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.414101, 36.415371, 38.636139>,  <38.777428, 36.248283, 38.644875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.414101, 36.415371, 38.636139> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352017, 0.791561, 0.499515,
		0.225947, 0.446027, -0.866030,
		-0.908313, 0.417721, -0.021841,
		38.141605, 36.540688, 38.629585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.965919, 36.886055, 38.634201>,  <38.777428, 36.248283, 38.644875>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.965919, 36.886055, 38.634201> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.575066, 36.912842, 38.714912>,  <38.340553, 36.928913, 38.763340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.575066, 36.912842, 38.714912>,  <38.965919, 36.886055, 38.634201>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.575066, 36.912842, 38.714912> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168905, 0.820922, 0.545489,
		-0.129118, 0.567100, -0.813465,
		-0.977139, 0.066966, 0.201781,
		38.281925, 36.932930, 38.775448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.815781, 37.562515, 38.508972>,  <38.965919, 36.886055, 38.634201>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.815781, 37.562515, 38.508972> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.526562, 37.427212, 38.749901>,  <38.353031, 37.346031, 38.894459>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.526562, 37.427212, 38.749901>,  <38.815781, 37.562515, 38.508972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.526562, 37.427212, 38.749901> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273437, 0.660563, 0.699206,
		-0.634380, 0.670254, -0.385125,
		-0.723045, -0.338255, 0.602320,
		38.309647, 37.325737, 38.930595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.487568, 38.095142, 38.838337>,  <38.815781, 37.562515, 38.508972>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.487568, 38.095142, 38.838337> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.377960, 37.792671, 39.076031>,  <38.312195, 37.611191, 39.218647>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.377960, 37.792671, 39.076031>,  <38.487568, 38.095142, 38.838337>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.377960, 37.792671, 39.076031> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249751, 0.540732, 0.803264,
		-0.928729, 0.368520, 0.040684,
		-0.274020, -0.756176, 0.594232,
		38.295753, 37.565819, 39.254299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.140770, 38.465488, 39.340656>,  <38.487568, 38.095142, 38.838337>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.140770, 38.465488, 39.340656> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.217377, 38.114338, 39.516228>,  <38.263340, 37.903648, 39.621571>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.217377, 38.114338, 39.516228>,  <38.140770, 38.465488, 39.340656>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.217377, 38.114338, 39.516228> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191016, 0.471990, 0.860661,
		-0.962722, -0.080991, 0.258084,
		0.191519, -0.877876, 0.438925,
		38.274834, 37.850975, 39.647903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.736965, 38.415901, 39.929310>,  <38.140770, 38.465488, 39.340656>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.736965, 38.415901, 39.929310> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.044689, 38.167538, 39.989487>,  <38.229324, 38.018520, 40.025593>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.044689, 38.167538, 39.989487>,  <37.736965, 38.415901, 39.929310>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.044689, 38.167538, 39.989487> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279498, 0.538853, 0.794681,
		-0.574491, -0.569309, 0.588089,
		0.769312, -0.620906, 0.150446,
		38.275482, 37.981266, 40.034622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.791340, 38.334694, 40.590916>,  <37.736965, 38.415901, 39.929310>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.791340, 38.334694, 40.590916> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.158512, 38.218502, 40.482826>,  <38.378815, 38.148788, 40.417973>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.158512, 38.218502, 40.482826>,  <37.791340, 38.334694, 40.590916>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.158512, 38.218502, 40.482826> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378400, 0.436350, 0.816341,
		-0.119220, -0.851598, 0.510457,
		0.917933, -0.290481, -0.270223,
		38.433891, 38.131359, 40.401760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.073807, 38.016724, 41.144424>,  <37.791340, 38.334694, 40.590916>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.073807, 38.016724, 41.144424> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.419083, 38.100239, 40.960545>,  <38.626247, 38.150349, 40.850216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.419083, 38.100239, 40.960545>,  <38.073807, 38.016724, 41.144424>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.419083, 38.100239, 40.960545> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353639, 0.399814, 0.845629,
		0.360346, -0.892501, 0.271280,
		0.863186, 0.208784, -0.459695,
		38.678040, 38.162876, 40.822636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.651234, 37.968872, 41.659550>,  <38.073807, 38.016724, 41.144424>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.651234, 37.968872, 41.659550> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.763287, 38.216999, 41.366501>,  <38.830517, 38.365875, 41.190670>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.763287, 38.216999, 41.366501>,  <38.651234, 37.968872, 41.659550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.763287, 38.216999, 41.366501> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558369, 0.515506, 0.649983,
		0.780867, -0.591152, -0.201957,
		0.280129, 0.620317, -0.732622,
		38.847324, 38.403095, 41.146713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.355442, 38.103912, 41.743969>,  <38.651234, 37.968872, 41.659550>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.355442, 38.103912, 41.743969> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.232925, 38.417702, 41.528271>,  <39.159416, 38.605976, 41.398853>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.232925, 38.417702, 41.528271>,  <39.355442, 38.103912, 41.743969>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.232925, 38.417702, 41.528271> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634019, 0.590659, 0.499142,
		0.710073, -0.189007, -0.678287,
		-0.306295, 0.784474, -0.539245,
		39.141037, 38.653046, 41.366497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.968521, 38.346020, 41.507980>,  <39.355442, 38.103912, 41.743969>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.968521, 38.346020, 41.507980> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.709694, 38.649689, 41.479828>,  <39.554398, 38.831890, 41.462936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.709694, 38.649689, 41.479828>,  <39.968521, 38.346020, 41.507980>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.709694, 38.649689, 41.479828> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703831, 0.630274, 0.327684,
		0.293130, 0.162498, -0.942162,
		-0.647068, 0.759177, -0.070381,
		39.515572, 38.877441, 41.458714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.576050, 42.668480, 41.827118> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.898270, 42.436134, 41.873901>,  <34.091602, 42.296726, 41.901970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.898270, 42.436134, 41.873901>,  <33.576050, 42.668480, 41.827118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.898270, 42.436134, 41.873901> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289923, -0.558553, -0.777151,
		0.516747, 0.592128, -0.618350,
		0.805554, -0.580864, 0.116959,
		34.139935, 42.261875, 41.908989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.003849, 42.703342, 41.197079>,  <33.576050, 42.668480, 41.827118>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.003849, 42.703342, 41.197079> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.076015, 42.354607, 41.379219>,  <34.119316, 42.145367, 41.488503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.076015, 42.354607, 41.379219>,  <34.003849, 42.703342, 41.197079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.076015, 42.354607, 41.379219> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341365, -0.489677, -0.802301,
		0.922453, -0.010692, -0.385961,
		0.180418, -0.871838, 0.455354,
		34.130142, 42.093056, 41.515827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.381264, 42.401855, 40.689331>,  <34.003849, 42.703342, 41.197079>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.381264, 42.401855, 40.689331> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.264492, 42.106091, 40.931999>,  <34.194431, 41.928631, 41.077602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.264492, 42.106091, 40.931999>,  <34.381264, 42.401855, 40.689331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.264492, 42.106091, 40.931999> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078876, -0.650754, -0.755180,
		0.953183, -0.172604, 0.248293,
		-0.291924, -0.739409, 0.606674,
		34.176914, 41.884266, 41.114002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.931686, 41.890099, 40.734890>,  <34.381264, 42.401855, 40.689331>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.931686, 41.890099, 40.734890> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.579868, 41.713581, 40.806065>,  <34.368778, 41.607670, 40.848770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.579868, 41.713581, 40.806065>,  <34.931686, 41.890099, 40.734890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.579868, 41.713581, 40.806065> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131937, -0.585489, -0.799872,
		0.457159, -0.680046, 0.573186,
		-0.879544, -0.441294, 0.177938,
		34.316006, 41.581192, 40.859447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.022427, 41.308315, 40.319065>,  <34.931686, 41.890099, 40.734890>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.022427, 41.308315, 40.319065> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.637268, 41.289394, 40.425346>,  <34.406174, 41.278042, 40.489117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.637268, 41.289394, 40.425346>,  <35.022427, 41.308315, 40.319065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.637268, 41.289394, 40.425346> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183601, -0.606782, -0.773373,
		0.197809, -0.793459, 0.575581,
		-0.962893, -0.047303, 0.265707,
		34.348400, 41.275204, 40.505058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.965691, 40.605854, 40.386063>,  <35.022427, 41.308315, 40.319065>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.965691, 40.605854, 40.386063> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.622486, 40.803211, 40.328957>,  <34.416565, 40.921627, 40.294693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.622486, 40.803211, 40.328957>,  <34.965691, 40.605854, 40.386063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.622486, 40.803211, 40.328957> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256079, -0.651854, -0.713800,
		-0.445246, -0.575888, 0.685645,
		-0.858009, 0.493395, -0.142762,
		34.365082, 40.951229, 40.286129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.564449, 40.113682, 40.528374>,  <34.965691, 40.605854, 40.386063>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.564449, 40.113682, 40.528374> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.364170, 40.383144, 40.310940>,  <34.244003, 40.544823, 40.180481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.364170, 40.383144, 40.310940>,  <34.564449, 40.113682, 40.528374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.364170, 40.383144, 40.310940> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371225, -0.734399, -0.568199,
		-0.781980, -0.082705, 0.617793,
		-0.500699, 0.673660, -0.543583,
		34.213959, 40.585243, 40.147865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.872833, 39.867146, 40.353703>,  <34.564449, 40.113682, 40.528374>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.872833, 39.867146, 40.353703> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.896473, 40.156071, 40.078087>,  <33.910656, 40.329426, 39.912716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.896473, 40.156071, 40.078087>,  <33.872833, 39.867146, 40.353703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.896473, 40.156071, 40.078087> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423101, -0.607056, -0.672658,
		-0.904153, 0.331284, 0.269737,
		0.059095, 0.722311, -0.689038,
		33.914200, 40.372765, 39.871376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.118103, 39.908577, 39.976460>,  <33.872833, 39.867146, 40.353703>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.118103, 39.908577, 39.976460> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.420200, 40.061111, 39.763222>,  <33.601460, 40.152630, 39.635281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.420200, 40.061111, 39.763222>,  <33.118103, 39.908577, 39.976460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.420200, 40.061111, 39.763222> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286884, -0.538963, -0.791970,
		-0.589321, 0.751068, -0.297652,
		0.755247, 0.381333, -0.533092,
		33.646774, 40.175510, 39.603294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.844540, 40.088207, 39.294052>,  <33.118103, 39.908577, 39.976460>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.844540, 40.088207, 39.294052> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.236931, 40.093048, 39.216560>,  <33.472366, 40.095951, 39.170063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.236931, 40.093048, 39.216560>,  <32.844540, 40.088207, 39.294052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.236931, 40.093048, 39.216560> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171979, -0.408635, -0.896348,
		-0.090014, 0.912618, -0.398782,
		0.980979, 0.012101, -0.193734,
		33.531223, 40.096680, 39.158440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.884865, 40.140999, 38.511784>,  <32.844540, 40.088207, 39.294052>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.884865, 40.140999, 38.511784> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.244766, 40.004635, 38.620762>,  <33.460705, 39.922817, 38.686150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.244766, 40.004635, 38.620762>,  <32.884865, 40.140999, 38.511784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.244766, 40.004635, 38.620762> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050370, -0.539006, -0.840795,
		0.433489, 0.770228, -0.467799,
		0.899750, -0.340912, 0.272449,
		33.514690, 39.902363, 38.702496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.382137, 40.282646, 38.012344>,  <32.884865, 40.140999, 38.511784>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.382137, 40.282646, 38.012344> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.531948, 39.964214, 38.202499>,  <33.621834, 39.773155, 38.316593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.531948, 39.964214, 38.202499>,  <33.382137, 40.282646, 38.012344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.531948, 39.964214, 38.202499> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118990, -0.467195, -0.876111,
		0.919551, 0.384690, -0.080250,
		0.374524, -0.796079, 0.475383,
		33.644306, 39.725391, 38.345116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.754875, 40.074814, 37.505863>,  <33.382137, 40.282646, 38.012344>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.754875, 40.074814, 37.505863> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.731964, 39.766304, 37.759434>,  <33.718220, 39.581200, 37.911575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.731964, 39.766304, 37.759434>,  <33.754875, 40.074814, 37.505863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.731964, 39.766304, 37.759434> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138630, -0.634959, -0.760006,
		0.988687, 0.044352, 0.143287,
		-0.057273, -0.771272, 0.633924,
		33.714783, 39.534924, 37.949612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.300507, 39.682316, 37.323883>,  <33.754875, 40.074814, 37.505863>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.300507, 39.682316, 37.323883> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.006462, 39.473072, 37.496384>,  <33.830036, 39.347527, 37.599884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.006462, 39.473072, 37.496384>,  <34.300507, 39.682316, 37.323883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.006462, 39.473072, 37.496384> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126015, -0.519588, -0.845073,
		0.666137, -0.675563, 0.316033,
		-0.735107, -0.523110, 0.431248,
		33.785931, 39.316139, 37.625759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.788662, 39.124958, 37.385925>,  <34.300507, 39.682316, 37.323883>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.788662, 39.124958, 37.385925> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.123310, 39.197369, 37.179123>,  <35.324100, 39.240814, 37.055042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.123310, 39.197369, 37.179123>,  <34.788662, 39.124958, 37.385925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.123310, 39.197369, 37.179123> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210137, 0.765548, 0.608095,
		0.505875, -0.617386, 0.602432,
		0.836620, 0.181027, -0.517007,
		35.374294, 39.251678, 37.024021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.409687, 39.125355, 37.876068>,  <34.788662, 39.124958, 37.385925>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.409687, 39.125355, 37.876068> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.505184, 39.331181, 37.546650>,  <35.562481, 39.454678, 37.348999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.505184, 39.331181, 37.546650>,  <35.409687, 39.125355, 37.876068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.505184, 39.331181, 37.546650> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396972, 0.722254, 0.566360,
		0.886237, -0.462138, -0.031835,
		0.238743, 0.514566, -0.823543,
		35.576809, 39.485550, 37.299587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.149582, 39.281399, 37.921101>,  <35.409687, 39.125355, 37.876068>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.149582, 39.281399, 37.921101> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.993626, 39.555012, 37.674496>,  <35.900051, 39.719181, 37.526531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.993626, 39.555012, 37.674496>,  <36.149582, 39.281399, 37.921101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.993626, 39.555012, 37.674496> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373351, 0.729421, 0.573196,
		0.841782, -0.006694, -0.539776,
		-0.389887, 0.684032, -0.616513,
		35.876659, 39.760220, 37.489540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.643120, 39.819714, 37.929047>,  <36.149582, 39.281399, 37.921101>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.643120, 39.819714, 37.929047> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.317982, 39.986359, 37.766216>,  <36.122898, 40.086346, 37.668518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.317982, 39.986359, 37.766216>,  <36.643120, 39.819714, 37.929047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.317982, 39.986359, 37.766216> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202128, 0.857196, 0.473666,
		0.546280, 0.302736, -0.780979,
		-0.812848, 0.416612, -0.407077,
		36.074127, 40.111343, 37.644093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.954899, 40.396370, 37.501041>,  <36.643120, 39.819714, 37.929047>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.954899, 40.396370, 37.501041> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.583042, 40.514011, 37.589825>,  <36.359928, 40.584595, 37.643097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.583042, 40.514011, 37.589825>,  <36.954899, 40.396370, 37.501041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.583042, 40.514011, 37.589825> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365634, 0.810816, 0.457044,
		-0.045551, 0.506044, -0.861304,
		-0.929643, 0.294104, 0.221960,
		36.304150, 40.602242, 37.656414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.054516, 41.091747, 37.425961>,  <36.954899, 40.396370, 37.501041>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.054516, 41.091747, 37.425961> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.717777, 41.055782, 37.638832>,  <36.515736, 41.034203, 37.766556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.717777, 41.055782, 37.638832>,  <37.054516, 41.091747, 37.425961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.717777, 41.055782, 37.638832> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321837, 0.707920, 0.628706,
		-0.433267, 0.700547, -0.567022,
		-0.841844, -0.089909, 0.532180,
		36.465225, 41.028809, 37.798485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.921001, 41.783779, 37.556274>,  <37.054516, 41.091747, 37.425961>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.921001, 41.783779, 37.556274> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.705780, 41.579922, 37.824833>,  <36.576649, 41.457607, 37.985966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.705780, 41.579922, 37.824833>,  <36.921001, 41.783779, 37.556274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.705780, 41.579922, 37.824833> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202885, 0.694797, 0.689996,
		-0.818131, 0.507469, -0.270438,
		-0.538051, -0.509640, 0.671393,
		36.544365, 41.427029, 38.026249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.566898, 42.206726, 37.926334>,  <36.921001, 41.783779, 37.556274>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.566898, 42.206726, 37.926334> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.560131, 41.888081, 38.168034>,  <36.556072, 41.696892, 38.313053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.560131, 41.888081, 38.168034>,  <36.566898, 42.206726, 37.926334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.560131, 41.888081, 38.168034> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066991, 0.602073, 0.795626,
		-0.997610, 0.053938, 0.043182,
		-0.016916, -0.796617, 0.604247,
		36.555058, 41.649094, 38.349308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.175655, 42.354404, 38.519768>,  <36.566898, 42.206726, 37.926334>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.175655, 42.354404, 38.519768> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.400776, 42.040852, 38.624676>,  <36.535847, 41.852718, 38.687622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.400776, 42.040852, 38.624676>,  <36.175655, 42.354404, 38.519768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.400776, 42.040852, 38.624676> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249305, 0.463484, 0.850311,
		-0.788103, -0.413168, 0.456273,
		0.562797, -0.783884, 0.262269,
		36.569614, 41.805687, 38.703358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.005116, 42.268822, 39.161663>,  <36.175655, 42.354404, 38.519768>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.005116, 42.268822, 39.161663> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.349335, 42.065655, 39.146263>,  <36.555866, 41.943752, 39.137024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.349335, 42.065655, 39.146263>,  <36.005116, 42.268822, 39.161663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.349335, 42.065655, 39.146263> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317329, 0.475438, 0.820525,
		-0.398457, -0.718315, 0.570312,
		0.860543, -0.507921, -0.038500,
		36.607498, 41.913280, 39.134712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.105370, 41.831894, 39.755230>,  <36.005116, 42.268822, 39.161663>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.105370, 41.831894, 39.755230> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.483379, 41.859753, 39.627438>,  <36.710186, 41.876469, 39.550762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.483379, 41.859753, 39.627438>,  <36.105370, 41.831894, 39.755230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.483379, 41.859753, 39.627438> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287108, 0.290868, 0.912669,
		0.156493, -0.954225, 0.254882,
		0.945028, 0.069648, -0.319484,
		36.766888, 41.880646, 39.531593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.565582, 41.687561, 40.310242>,  <36.105370, 41.831894, 39.755230>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.565582, 41.687561, 40.310242> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.836830, 41.883987, 40.091515>,  <36.999577, 42.001842, 39.960278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.836830, 41.883987, 40.091515>,  <36.565582, 41.687561, 40.310242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.836830, 41.883987, 40.091515> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330189, 0.461144, 0.823603,
		0.656608, -0.739051, 0.150563,
		0.678116, 0.491070, -0.546817,
		37.040264, 42.031307, 39.927471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.247318, 41.608082, 40.587212>,  <36.565582, 41.687561, 40.310242>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.247318, 41.608082, 40.587212> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.281769, 41.923813, 40.344048>,  <37.302441, 42.113251, 40.198151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.281769, 41.923813, 40.344048>,  <37.247318, 41.608082, 40.587212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.281769, 41.923813, 40.344048> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392604, 0.533910, 0.748867,
		0.915666, -0.303165, -0.263907,
		0.086128, 0.789323, -0.607907,
		37.307606, 42.160610, 40.161674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.013664, 41.949554, 40.507870>,  <37.247318, 41.608082, 40.587212>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.013664, 41.949554, 40.507870> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.714966, 42.208611, 40.447300>,  <37.535748, 42.364044, 40.410957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.714966, 42.208611, 40.447300>,  <38.013664, 41.949554, 40.507870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.714966, 42.208611, 40.447300> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313085, 0.543150, 0.779080,
		0.586815, 0.534363, -0.608362,
		-0.746743, 0.647645, -0.151427,
		37.490944, 42.402905, 40.401871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.698872, 42.030811, 40.272266>,  <38.013664, 41.949554, 40.507870>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.698872, 42.030811, 40.272266> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.080437, 42.065319, 40.157299>,  <39.309376, 42.086025, 40.088318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.080437, 42.065319, 40.157299>,  <38.698872, 42.030811, 40.272266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.080437, 42.065319, 40.157299> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188856, -0.571749, -0.798396,
		-0.233209, 0.815880, -0.529106,
		0.953911, 0.086268, -0.287421,
		39.366611, 42.091198, 40.071072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.660015, 42.248882, 39.605049>,  <38.698872, 42.030811, 40.272266>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.660015, 42.248882, 39.605049> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.029541, 42.099598, 39.639194>,  <39.251255, 42.010029, 39.659679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.029541, 42.099598, 39.639194>,  <38.660015, 42.248882, 39.605049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.029541, 42.099598, 39.639194> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186459, -0.633337, -0.751077,
		0.334369, 0.677939, -0.654673,
		0.923813, -0.373207, 0.085361,
		39.306686, 41.987637, 39.664803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.910164, 42.182911, 38.974827>,  <38.660015, 42.248882, 39.605049>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.910164, 42.182911, 38.974827> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.148643, 41.913986, 39.150345>,  <39.291733, 41.752632, 39.255657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.148643, 41.913986, 39.150345>,  <38.910164, 42.182911, 38.974827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.148643, 41.913986, 39.150345> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197859, -0.652745, -0.731283,
		0.778074, 0.349169, -0.522189,
		0.596198, -0.672313, 0.438798,
		39.327503, 41.712292, 39.281982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.312099, 41.890602, 38.466080>,  <38.910164, 42.182911, 38.974827>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.312099, 41.890602, 38.466080> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.322491, 41.623569, 38.763714>,  <39.328724, 41.463352, 38.942295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.322491, 41.623569, 38.763714>,  <39.312099, 41.890602, 38.466080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.322491, 41.623569, 38.763714> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087393, -0.743005, -0.663556,
		0.995835, -0.047790, -0.077645,
		0.025979, -0.667578, 0.744087,
		39.330284, 41.423298, 38.986938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.785728, 41.549435, 38.279839>,  <39.312099, 41.890602, 38.466080>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.785728, 41.549435, 38.279839> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.584137, 41.321636, 38.539585>,  <39.463181, 41.184956, 38.695435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.584137, 41.321636, 38.539585>,  <39.785728, 41.549435, 38.279839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.584137, 41.321636, 38.539585> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069393, -0.776095, -0.626786,
		0.860924, -0.270825, 0.430654,
		-0.503978, -0.569500, 0.649366,
		39.432945, 41.150787, 38.734394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.143265, 40.845932, 38.278133>,  <39.785728, 41.549435, 38.279839>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.143265, 40.845932, 38.278133> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.757889, 40.813103, 38.380146>,  <39.526661, 40.793407, 38.441353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.757889, 40.813103, 38.380146>,  <40.143265, 40.845932, 38.278133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.757889, 40.813103, 38.380146> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155730, -0.603049, -0.782356,
		0.218006, -0.793472, 0.568222,
		-0.963443, -0.082069, 0.255036,
		39.468857, 40.788483, 38.456657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.055649, 40.126610, 38.176071>,  <40.143265, 40.845932, 38.278133>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.055649, 40.126610, 38.176071> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.688328, 40.281563, 38.208687>,  <39.467934, 40.374535, 38.228256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.688328, 40.281563, 38.208687>,  <40.055649, 40.126610, 38.176071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.688328, 40.281563, 38.208687> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322564, -0.612809, -0.721399,
		-0.229495, -0.688765, 0.687703,
		-0.918305, 0.387385, 0.081534,
		39.412838, 40.397778, 38.233147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.497551, 39.528812, 38.279640>,  <40.055649, 40.126610, 38.176071>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.497551, 39.528812, 38.279640> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.301830, 39.849140, 38.141499>,  <39.184399, 40.041336, 38.058613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.301830, 39.849140, 38.141499>,  <39.497551, 39.528812, 38.279640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.301830, 39.849140, 38.141499> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367759, -0.548530, -0.750911,
		-0.790780, -0.240419, 0.562908,
		-0.489305, 0.800820, -0.345350,
		39.155037, 40.089386, 38.037895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.820377, 39.390442, 38.049671>,  <39.497551, 39.528812, 38.279640>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.820377, 39.390442, 38.049671> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.924019, 39.706459, 37.827431>,  <38.986206, 39.896069, 37.694084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.924019, 39.706459, 37.827431>,  <38.820377, 39.390442, 38.049671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.924019, 39.706459, 37.827431> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216840, -0.512983, -0.830559,
		-0.941193, 0.335682, 0.038395,
		0.259108, 0.790042, -0.555605,
		39.001751, 39.943470, 37.660748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.301319, 39.763538, 37.664589>,  <38.820377, 39.390442, 38.049671>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.301319, 39.763538, 37.664589> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.645878, 39.804600, 37.465607>,  <38.852612, 39.829239, 37.346218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.645878, 39.804600, 37.465607>,  <38.301319, 39.763538, 37.664589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.645878, 39.804600, 37.465607> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271799, -0.734190, -0.622165,
		-0.429094, 0.671138, -0.604527,
		0.861396, 0.102657, -0.497451,
		38.904297, 39.835396, 37.316372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.162128, 39.992905, 36.985542>,  <38.301319, 39.763538, 37.664589>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.162128, 39.992905, 36.985542> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.526966, 39.829407, 36.972790>,  <38.745869, 39.731308, 36.965137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.526966, 39.829407, 36.972790>,  <38.162128, 39.992905, 36.985542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.526966, 39.829407, 36.972790> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265528, -0.529687, -0.805560,
		0.312381, 0.743210, -0.591656,
		0.912093, -0.408743, -0.031879,
		38.800594, 39.706783, 36.963226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.310558, 40.016300, 36.257599>,  <38.162128, 39.992905, 36.985542>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.310558, 40.016300, 36.257599> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.581917, 39.769096, 36.416515>,  <38.744732, 39.620773, 36.511864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.581917, 39.769096, 36.416515>,  <38.310558, 40.016300, 36.257599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.581917, 39.769096, 36.416515> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170877, -0.658651, -0.732789,
		0.714547, 0.429234, -0.552431,
		0.678398, -0.618010, 0.397291,
		38.785435, 39.583694, 36.535702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.731705, 39.732090, 35.684898>,  <38.310558, 40.016300, 36.257599>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.731705, 39.732090, 35.684898> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.786552, 39.458042, 35.971062>,  <38.819462, 39.293613, 36.142757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.786552, 39.458042, 35.971062>,  <38.731705, 39.732090, 35.684898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.786552, 39.458042, 35.971062> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109544, -0.707310, -0.698364,
		0.984479, 0.174127, -0.021935,
		0.137119, -0.685122, 0.715406,
		38.827686, 39.252506, 36.185684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.332947, 39.371609, 35.462303>,  <38.731705, 39.732090, 35.684898>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.332947, 39.371609, 35.462303> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.089233, 39.166653, 35.704369>,  <38.943005, 39.043678, 35.849609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.089233, 39.166653, 35.704369>,  <39.332947, 39.371609, 35.462303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.089233, 39.166653, 35.704369> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196797, -0.837016, -0.510564,
		0.768144, -0.191983, 0.610817,
		-0.609283, -0.512393, 0.605168,
		38.906448, 39.012936, 35.885918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.023619, 38.492050, 26.937151> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.661995, 38.418846, 26.782654>,  <27.445021, 38.374924, 26.689955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.661995, 38.418846, 26.782654>,  <28.023619, 38.492050, 26.937151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.661995, 38.418846, 26.782654> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420877, 0.223803, 0.879076,
		-0.074441, 0.957298, -0.279357,
		-0.904058, -0.183014, -0.386244,
		27.390778, 38.363941, 26.666780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.548489, 39.120293, 27.087572>,  <28.023619, 38.492050, 26.937151>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.548489, 39.120293, 27.087572> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.308687, 38.811672, 27.002428>,  <27.164806, 38.626499, 26.951342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.308687, 38.811672, 27.002428>,  <27.548489, 39.120293, 27.087572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.308687, 38.811672, 27.002428> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584217, 0.240054, 0.775284,
		-0.547072, 0.589140, -0.594665,
		-0.599502, -0.771550, -0.212859,
		27.128838, 38.580208, 26.938570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.837662, 39.341896, 27.255238>,  <27.548489, 39.120293, 27.087572>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.837662, 39.341896, 27.255238> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.825914, 38.942070, 27.256773>,  <26.818865, 38.702175, 27.257694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.825914, 38.942070, 27.256773>,  <26.837662, 39.341896, 27.255238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.825914, 38.942070, 27.256773> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308283, 0.012711, 0.951210,
		-0.950841, 0.026754, -0.308521,
		-0.029370, -0.999561, 0.003838,
		26.817102, 38.642200, 27.257925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.275581, 39.179520, 27.731886>,  <26.837662, 39.341896, 27.255238>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.275581, 39.179520, 27.731886> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.428970, 38.813251, 27.683710>,  <26.521004, 38.593491, 27.654804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.428970, 38.813251, 27.683710>,  <26.275581, 39.179520, 27.731886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.428970, 38.813251, 27.683710> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469820, -0.305682, 0.828148,
		-0.795123, -0.260986, -0.547418,
		0.383470, -0.915667, -0.120438,
		26.544012, 38.538551, 27.647579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.711950, 38.690567, 27.973833>,  <26.275581, 39.179520, 27.731886>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.711950, 38.690567, 27.973833> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.056400, 38.487209, 27.973881>,  <26.263069, 38.365196, 27.973909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.056400, 38.487209, 27.973881>,  <25.711950, 38.690567, 27.973833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.056400, 38.487209, 27.973881> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251425, -0.425662, 0.869251,
		-0.441880, -0.748559, -0.494371,
		0.861120, -0.508401, 0.000115,
		26.314737, 38.334690, 27.973917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.496979, 38.003666, 28.380543>,  <25.711950, 38.690567, 27.973833>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.496979, 38.003666, 28.380543> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.885029, 38.096916, 28.407406>,  <26.117859, 38.152866, 28.423523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.885029, 38.096916, 28.407406>,  <25.496979, 38.003666, 28.380543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.885029, 38.096916, 28.407406> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030213, -0.390755, 0.919999,
		0.240713, -0.890486, -0.386125,
		0.970126, 0.233122, 0.067156,
		26.176067, 38.166851, 28.427553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.913502, 37.374298, 28.589367>,  <25.496979, 38.003666, 28.380543>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.913502, 37.374298, 28.589367> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.127884, 37.697552, 28.687082>,  <26.256514, 37.891502, 28.745710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.127884, 37.697552, 28.687082>,  <25.913502, 37.374298, 28.589367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.127884, 37.697552, 28.687082> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195422, -0.400251, 0.895326,
		0.821316, -0.432117, -0.372444,
		0.535957, 0.808130, 0.244288,
		26.288671, 37.939991, 28.760368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.580524, 37.120312, 28.758156>,  <25.913502, 37.374298, 28.589367>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.580524, 37.120312, 28.758156> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.546669, 37.469578, 28.950165>,  <26.526356, 37.679138, 29.065371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.546669, 37.469578, 28.950165>,  <26.580524, 37.120312, 28.758156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.546669, 37.469578, 28.950165> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091700, -0.472882, 0.876341,
		0.992183, 0.118192, -0.040044,
		-0.084640, 0.873163, 0.480023,
		26.521276, 37.731525, 29.094172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.113361, 37.223541, 29.317909>,  <26.580524, 37.120312, 28.758156>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.113361, 37.223541, 29.317909> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.813457, 37.463287, 29.430069>,  <26.633514, 37.607136, 29.497366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.813457, 37.463287, 29.430069>,  <27.113361, 37.223541, 29.317909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.813457, 37.463287, 29.430069> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124288, -0.288652, 0.949332,
		0.649933, 0.746622, 0.141927,
		-0.749760, 0.599363, 0.280401,
		26.588530, 37.643097, 29.514189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.296488, 37.424397, 29.966557>,  <27.113361, 37.223541, 29.317909>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.296488, 37.424397, 29.966557> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.907177, 37.515820, 29.957640>,  <26.673592, 37.570671, 29.952290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.907177, 37.515820, 29.957640>,  <27.296488, 37.424397, 29.966557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.907177, 37.515820, 29.957640> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031148, -0.035218, 0.998894,
		0.227517, 0.972894, 0.041396,
		-0.973276, 0.228555, -0.022291,
		26.615194, 37.584385, 29.950953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.145472, 37.865707, 30.402534>,  <27.296488, 37.424397, 29.966557>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.145472, 37.865707, 30.402534> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.773098, 37.730831, 30.346443>,  <26.549673, 37.649906, 30.312788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.773098, 37.730831, 30.346443>,  <27.145472, 37.865707, 30.402534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.773098, 37.730831, 30.346443> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182965, 0.098337, 0.978189,
		-0.316047, 0.936286, -0.153240,
		-0.930934, -0.337191, -0.140228,
		26.493818, 37.629673, 30.304375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.768394, 38.274868, 30.852228>,  <27.145472, 37.865707, 30.402534>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.768394, 38.274868, 30.852228> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.515356, 37.976395, 30.769245>,  <26.363533, 37.797310, 30.719456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.515356, 37.976395, 30.769245>,  <26.768394, 38.274868, 30.852228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.515356, 37.976395, 30.769245> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281769, -0.027772, 0.959080,
		-0.721409, 0.665164, -0.192682,
		-0.632595, -0.746181, -0.207458,
		26.325577, 37.752541, 30.707008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.172684, 38.401352, 31.228706>,  <26.768394, 38.274868, 30.852228>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.172684, 38.401352, 31.228706> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.167007, 38.008320, 31.154594>,  <26.163601, 37.772499, 31.110128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.167007, 38.008320, 31.154594>,  <26.172684, 38.401352, 31.228706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.167007, 38.008320, 31.154594> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249805, -0.175937, 0.952178,
		-0.968192, 0.059796, -0.242957,
		-0.014192, -0.982584, -0.185278,
		26.162750, 37.713543, 31.099010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.594690, 38.208462, 31.541788>,  <26.172684, 38.401352, 31.228706>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.594690, 38.208462, 31.541788> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.760960, 37.846542, 31.504795>,  <25.860722, 37.629391, 31.482599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.760960, 37.846542, 31.504795>,  <25.594690, 38.208462, 31.541788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.760960, 37.846542, 31.504795> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144008, -0.165877, 0.975575,
		-0.898040, -0.392204, -0.199249,
		0.415675, -0.904799, -0.092484,
		25.885662, 37.575104, 31.477051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.116411, 37.735352, 31.865038>,  <25.594690, 38.208462, 31.541788>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.116411, 37.735352, 31.865038> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.452438, 37.518608, 31.854645>,  <25.654055, 37.388561, 31.848408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.452438, 37.518608, 31.854645>,  <25.116411, 37.735352, 31.865038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.452438, 37.518608, 31.854645> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086617, -0.181263, 0.979613,
		-0.535521, -0.820691, -0.199207,
		0.840068, -0.541858, -0.025984,
		25.704458, 37.356052, 31.846849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.928268, 37.154877, 32.131073>,  <25.116411, 37.735352, 31.865038>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.928268, 37.154877, 32.131073> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.322699, 37.177479, 32.193634>,  <25.559357, 37.191040, 32.231171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.322699, 37.177479, 32.193634>,  <24.928268, 37.154877, 32.131073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.322699, 37.177479, 32.193634> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118345, -0.422273, 0.898710,
		0.116826, -0.904706, -0.409706,
		0.986076, 0.056506, 0.156400,
		25.618521, 37.194431, 32.240555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.176155, 36.559654, 32.339180>,  <24.928268, 37.154877, 32.131073>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.176155, 36.559654, 32.339180> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.437326, 36.814705, 32.502697>,  <25.594030, 36.967735, 32.600807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.437326, 36.814705, 32.502697>,  <25.176155, 36.559654, 32.339180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.437326, 36.814705, 32.502697> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102281, -0.460551, 0.881720,
		0.750480, -0.617514, -0.235491,
		0.652930, 0.637628, 0.408794,
		25.633205, 37.005993, 32.625336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.524467, 36.223625, 32.904793>,  <25.176155, 36.559654, 32.339180>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.524467, 36.223625, 32.904793> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.620287, 36.606846, 32.967724>,  <25.677778, 36.836777, 33.005482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.620287, 36.606846, 32.967724>,  <25.524467, 36.223625, 32.904793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.620287, 36.606846, 32.967724> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111798, -0.188192, 0.975748,
		0.964426, -0.216152, -0.152190,
		0.239551, 0.958051, 0.157332,
		25.692152, 36.894260, 33.014923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.002356, 36.192303, 33.377396>,  <25.524467, 36.223625, 32.904793>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.002356, 36.192303, 33.377396> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.918791, 36.582912, 33.398373>,  <25.868652, 36.817280, 33.410957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.918791, 36.582912, 33.398373>,  <26.002356, 36.192303, 33.377396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.918791, 36.582912, 33.398373> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029201, -0.059832, 0.997781,
		0.977499, 0.206916, 0.041015,
		-0.208911, 0.976528, 0.052443,
		25.856117, 36.875870, 33.414104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.456919, 36.384823, 33.848785>,  <26.002356, 36.192303, 33.377396>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.456919, 36.384823, 33.848785> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.156969, 36.649174, 33.836617>,  <25.976999, 36.807785, 33.829315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.156969, 36.649174, 33.836617>,  <26.456919, 36.384823, 33.848785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.156969, 36.649174, 33.836617> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162933, -0.139909, 0.976667,
		0.641202, 0.737335, 0.212593,
		-0.749875, 0.660880, -0.030426,
		25.932007, 36.847439, 33.827488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.953575, 36.613663, 33.427383>,  <26.456919, 36.384823, 33.848785>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.953575, 36.613663, 33.427383> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.310177, 36.474644, 33.543606>,  <27.524139, 36.391232, 33.613338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.310177, 36.474644, 33.543606>,  <26.953575, 36.613663, 33.427383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.310177, 36.474644, 33.543606> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312454, 0.007341, -0.949905,
		0.328007, 0.937633, 0.115138,
		0.891507, -0.347551, 0.290559,
		27.577629, 36.370380, 33.630772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.534014, 37.099144, 33.272236>,  <26.953575, 36.613663, 33.427383>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.534014, 37.099144, 33.272236> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.667658, 36.722233, 33.281090>,  <27.747845, 36.496086, 33.286404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.667658, 36.722233, 33.281090>,  <27.534014, 37.099144, 33.272236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.667658, 36.722233, 33.281090> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312081, 0.088432, -0.945931,
		0.889369, 0.322952, 0.323612,
		0.334108, -0.942275, 0.022138,
		27.767891, 36.439548, 33.287731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.144016, 37.353565, 32.958290>,  <27.534014, 37.099144, 33.272236>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.144016, 37.353565, 32.958290> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.180079, 36.955524, 32.974464>,  <28.201715, 36.716698, 32.984169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.180079, 36.955524, 32.974464>,  <28.144016, 37.353565, 32.958290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.180079, 36.955524, 32.974464> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583570, 0.019883, -0.811820,
		0.807043, 0.096787, 0.582506,
		0.090156, -0.995107, 0.040435,
		28.207125, 36.656994, 32.986595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.835621, 37.191742, 32.862698>,  <28.144016, 37.353565, 32.958290>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.835621, 37.191742, 32.862698> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.625341, 36.873013, 32.743561>,  <28.499174, 36.681774, 32.672077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.625341, 36.873013, 32.743561>,  <28.835621, 37.191742, 32.862698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.625341, 36.873013, 32.743561> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565673, -0.065948, -0.821989,
		0.635340, -0.600598, 0.485411,
		-0.525697, -0.796827, -0.297843,
		28.467632, 36.633965, 32.654209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.336157, 36.717712, 32.634296>,  <28.835621, 37.191742, 32.862698>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.336157, 36.717712, 32.634296> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.008522, 36.589462, 32.444016>,  <28.811941, 36.512512, 32.329849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.008522, 36.589462, 32.444016>,  <29.336157, 36.717712, 32.634296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.008522, 36.589462, 32.444016> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506220, -0.013869, -0.862293,
		0.269879, -0.947103, 0.173668,
		-0.819089, -0.320629, -0.475700,
		28.762794, 36.493275, 32.301304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.611265, 36.111603, 32.247967>,  <29.336157, 36.717712, 32.634296>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.611265, 36.111603, 32.247967> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.272511, 36.242134, 32.080017>,  <29.069258, 36.320454, 31.979248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.272511, 36.242134, 32.080017>,  <29.611265, 36.111603, 32.247967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.272511, 36.242134, 32.080017> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414443, -0.089695, -0.905644,
		-0.333197, -0.940992, -0.059282,
		-0.846886, 0.326327, -0.419874,
		29.018444, 36.340031, 31.954056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.554935, 35.725056, 31.603750>,  <29.611265, 36.111603, 32.247967>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.554935, 35.725056, 31.603750> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.283943, 36.012070, 31.539055>,  <29.121347, 36.184280, 31.500237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.283943, 36.012070, 31.539055>,  <29.554935, 35.725056, 31.603750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.283943, 36.012070, 31.539055> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308131, 0.077194, -0.948207,
		-0.667889, -0.692229, -0.273393,
		-0.677481, 0.717538, -0.161740,
		29.080698, 36.227329, 31.490534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.066450, 35.478069, 31.103220>,  <29.554935, 35.725056, 31.603750>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.066450, 35.478069, 31.103220> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.021105, 35.875389, 31.094166>,  <28.993898, 36.113781, 31.088734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.021105, 35.875389, 31.094166>,  <29.066450, 35.478069, 31.103220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.021105, 35.875389, 31.094166> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189876, -0.000706, -0.981808,
		-0.975242, -0.115598, -0.188523,
		-0.113361, 0.993296, -0.022638,
		28.987097, 36.173378, 31.087374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.641298, 35.599163, 30.469170>,  <29.066450, 35.478069, 31.103220>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.641298, 35.599163, 30.469170> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.801546, 35.954494, 30.558950>,  <28.897696, 36.167694, 30.612820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.801546, 35.954494, 30.558950>,  <28.641298, 35.599163, 30.469170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.801546, 35.954494, 30.558950> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088281, 0.206407, -0.974476,
		-0.911982, 0.410208, 0.004268,
		0.400619, 0.888327, 0.224453,
		28.921732, 36.220993, 30.626286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.151339, 36.190960, 30.208809>,  <28.641298, 35.599163, 30.469170>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.151339, 36.190960, 30.208809> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.526403, 36.327194, 30.236481>,  <28.751442, 36.408936, 30.253084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.526403, 36.327194, 30.236481>,  <28.151339, 36.190960, 30.208809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.526403, 36.327194, 30.236481> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027809, 0.271942, -0.961912,
		-0.346430, 0.900026, 0.264461,
		0.937664, 0.340589, 0.069180,
		28.807703, 36.429371, 30.257235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.106068, 36.820084, 29.849773>,  <28.151339, 36.190960, 30.208809>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.106068, 36.820084, 29.849773> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.499327, 36.746983, 29.847851>,  <28.735283, 36.703121, 29.846697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.499327, 36.746983, 29.847851>,  <28.106068, 36.820084, 29.849773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.499327, 36.746983, 29.847851> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068846, 0.394468, -0.916327,
		0.169358, 0.900553, 0.400402,
		0.983147, -0.182753, -0.004807,
		28.794271, 36.692158, 29.846409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.481905, 37.465527, 29.652060>,  <28.106068, 36.820084, 29.849773>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.481905, 37.465527, 29.652060> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.714218, 37.151024, 29.567682>,  <28.853605, 36.962322, 29.517056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.714218, 37.151024, 29.567682>,  <28.481905, 37.465527, 29.652060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.714218, 37.151024, 29.567682> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036573, 0.233665, -0.971629,
		0.813236, 0.572021, 0.106953,
		0.580783, -0.786252, -0.210946,
		28.888453, 36.915150, 29.504398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.114529, 37.686989, 29.045113>,  <28.481905, 37.465527, 29.652060>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.114529, 37.686989, 29.045113> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.080122, 37.289642, 29.075619>,  <29.059479, 37.051235, 29.093922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.080122, 37.289642, 29.075619>,  <29.114529, 37.686989, 29.045113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.080122, 37.289642, 29.075619> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153958, -0.088883, -0.984071,
		0.984326, -0.072904, 0.160583,
		-0.086016, -0.993370, 0.076266,
		29.054317, 36.991631, 29.098499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.681608, 37.468563, 28.628736>,  <29.114529, 37.686989, 29.045113>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.681608, 37.468563, 28.628736> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.426893, 37.160900, 28.650242>,  <29.274063, 36.976303, 28.663145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.426893, 37.160900, 28.650242>,  <29.681608, 37.468563, 28.628736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.426893, 37.160900, 28.650242> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175483, -0.212475, -0.961281,
		0.750803, -0.602698, 0.270276,
		-0.636789, -0.769161, 0.053763,
		29.235857, 36.930153, 28.666370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.996956, 36.929447, 28.160181>,  <29.681608, 37.468563, 28.628736>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.996956, 36.929447, 28.160181> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.617350, 36.812416, 28.207123>,  <29.389585, 36.742199, 28.235289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.617350, 36.812416, 28.207123>,  <29.996956, 36.929447, 28.160181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.617350, 36.812416, 28.207123> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019052, -0.318370, -0.947775,
		0.314658, -0.901688, 0.296564,
		-0.949014, -0.292575, 0.117356,
		29.332645, 36.724644, 28.242331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.079426, 36.294003, 27.909998>,  <29.996956, 36.929447, 28.160181>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.079426, 36.294003, 27.909998> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.692509, 36.391685, 27.882549>,  <29.460358, 36.450294, 27.866079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.692509, 36.391685, 27.882549>,  <30.079426, 36.294003, 27.909998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.692509, 36.391685, 27.882549> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007077, -0.296396, -0.955039,
		-0.253558, -0.923318, 0.288431,
		-0.967294, 0.244199, -0.068620,
		29.402321, 36.464947, 27.861963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.613749, 35.759693, 27.531229>,  <30.079426, 36.294003, 27.909998>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.613749, 35.759693, 27.531229> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.427485, 36.112370, 27.500807>,  <29.315725, 36.323975, 27.482553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.427485, 36.112370, 27.500807>,  <29.613749, 35.759693, 27.531229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.427485, 36.112370, 27.500807> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143504, -0.160038, -0.976624,
		-0.873251, -0.443860, 0.201049,
		-0.465660, 0.881690, -0.076057,
		29.287786, 36.376877, 27.477989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.135439, 35.641380, 26.945532>,  <29.613749, 35.759693, 27.531229>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.135439, 35.641380, 26.945532> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.145350, 36.035107, 27.015408>,  <29.151297, 36.271343, 27.057333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.145350, 36.035107, 27.015408>,  <29.135439, 35.641380, 26.945532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.145350, 36.035107, 27.015408> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157152, 0.176406, -0.971691,
		-0.987264, -0.003378, 0.159057,
		0.024776, 0.984312, 0.174690,
		29.152782, 36.330399, 27.067814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.522284, 35.861725, 26.600426>,  <29.135439, 35.641380, 26.945532>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.522284, 35.861725, 26.600426> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.743776, 36.192650, 26.638245>,  <28.876673, 36.391205, 26.660936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.743776, 36.192650, 26.638245>,  <28.522284, 35.861725, 26.600426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.743776, 36.192650, 26.638245> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174135, 0.226080, -0.958418,
		-0.814283, 0.514244, 0.269252,
		0.553733, 0.827310, 0.094546,
		28.909897, 36.440842, 26.666609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.250662, 36.395061, 26.154156>,  <28.522284, 35.861725, 26.600426>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.250662, 36.395061, 26.154156> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.627974, 36.517498, 26.205584>,  <28.854361, 36.590961, 26.236441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.627974, 36.517498, 26.205584>,  <28.250662, 36.395061, 26.154156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.627974, 36.517498, 26.205584> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023592, 0.324479, -0.945599,
		-0.331161, 0.894997, 0.298853,
		0.943280, 0.306094, 0.128569,
		28.910957, 36.609325, 26.244154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.274076, 36.988571, 25.719542>,  <28.250662, 36.395061, 26.154156>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.274076, 36.988571, 25.719542> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.654613, 36.903904, 25.809109>,  <28.882936, 36.853104, 25.862848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.654613, 36.903904, 25.809109>,  <28.274076, 36.988571, 25.719542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.654613, 36.903904, 25.809109> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277580, 0.273267, -0.921018,
		0.133764, 0.938360, 0.318727,
		0.951344, -0.211671, 0.223917,
		28.940018, 36.840401, 25.876284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.629278, 37.534538, 25.803066>,  <28.274076, 36.988571, 25.719542>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.629278, 37.534538, 25.803066> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.869083, 37.241169, 25.674892>,  <29.012966, 37.065147, 25.597988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.869083, 37.241169, 25.674892>,  <28.629278, 37.534538, 25.803066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.869083, 37.241169, 25.674892> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030042, 0.420700, -0.906702,
		0.799801, 0.533954, 0.274249,
		0.599513, -0.733420, -0.320435,
		29.048937, 37.021141, 25.578762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<40.347492, 38.909935, 41.221169> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.023750, 39.075436, 41.387901>,  <39.829506, 39.174736, 41.487942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.023750, 39.075436, 41.387901>,  <40.347492, 38.909935, 41.221169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.023750, 39.075436, 41.387901> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570645, 0.721896, 0.391447,
		-0.138945, 0.554682, -0.820379,
		-0.809357, 0.413756, 0.416830,
		39.780945, 39.199562, 41.512951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.384007, 39.560825, 41.036106>,  <40.347492, 38.909935, 41.221169>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.384007, 39.560825, 41.036106> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.157581, 39.587769, 41.364750>,  <40.021725, 39.603935, 41.561935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.157581, 39.587769, 41.364750>,  <40.384007, 39.560825, 41.036106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.157581, 39.587769, 41.364750> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532046, 0.791138, 0.301709,
		-0.629682, 0.607918, -0.483670,
		-0.566064, 0.067354, 0.821605,
		39.987762, 39.607975, 41.611233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.266125, 40.220188, 41.162674>,  <40.384007, 39.560825, 41.036106>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.266125, 40.220188, 41.162674> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.157131, 40.090698, 41.525101>,  <40.091736, 40.013004, 41.742558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.157131, 40.090698, 41.525101>,  <40.266125, 40.220188, 41.162674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.157131, 40.090698, 41.525101> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347402, 0.845070, 0.406409,
		-0.897255, 0.425508, -0.117803,
		-0.272482, -0.323728, 0.906065,
		40.075386, 39.993580, 41.796921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.204681, 40.866680, 41.483044>,  <40.266125, 40.220188, 41.162674>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.204681, 40.866680, 41.483044> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.211853, 40.606033, 41.786377>,  <40.216156, 40.449646, 41.968376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.211853, 40.606033, 41.786377>,  <40.204681, 40.866680, 41.483044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.211853, 40.606033, 41.786377> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324697, 0.721142, 0.611985,
		-0.945648, 0.235259, 0.224506,
		0.017926, -0.651619, 0.758335,
		40.217232, 40.410549, 42.013878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.808369, 41.182648, 42.019566>,  <40.204681, 40.866680, 41.483044>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.808369, 41.182648, 42.019566> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.056713, 40.918751, 42.188927>,  <40.205719, 40.760410, 42.290543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.056713, 40.918751, 42.188927>,  <39.808369, 41.182648, 42.019566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.056713, 40.918751, 42.188927> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329800, 0.709808, 0.622418,
		-0.711173, -0.246794, 0.658274,
		0.620858, -0.659746, 0.423404,
		40.242970, 40.720825, 42.315948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.815678, 41.214634, 42.833759>,  <39.808369, 41.182648, 42.019566>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.815678, 41.214634, 42.833759> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.161057, 41.034077, 42.743698>,  <40.368286, 40.925743, 42.689659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.161057, 41.034077, 42.743698>,  <39.815678, 41.214634, 42.833759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.161057, 41.034077, 42.743698> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476815, 0.584692, 0.656341,
		-0.164624, -0.674075, 0.720085,
		0.863450, -0.451396, -0.225155,
		40.420094, 40.898659, 42.676151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.101509, 41.044670, 43.441872>,  <39.815678, 41.214634, 42.833759>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.101509, 41.044670, 43.441872> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.419380, 41.037556, 43.199162>,  <40.610104, 41.033287, 43.053535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.419380, 41.037556, 43.199162>,  <40.101509, 41.044670, 43.441872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.419380, 41.037556, 43.199162> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531259, 0.503988, 0.680999,
		0.293698, -0.863527, 0.409953,
		0.794673, -0.017783, -0.606777,
		40.657784, 41.032223, 43.017128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.661499, 40.825184, 43.829605>,  <40.101509, 41.044670, 43.441872>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.661499, 40.825184, 43.829605> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.798988, 41.049351, 43.528198>,  <40.881481, 41.183849, 43.347355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.798988, 41.049351, 43.528198>,  <40.661499, 40.825184, 43.829605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.798988, 41.049351, 43.528198> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504070, 0.566905, 0.651561,
		0.792318, -0.603782, -0.087631,
		0.343723, 0.560416, -0.753517,
		40.902103, 41.217476, 43.302143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.247009, 41.038288, 44.081280>,  <40.661499, 40.825184, 43.829605>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.247009, 41.038288, 44.081280> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.225880, 41.258774, 43.748203>,  <41.213203, 41.391064, 43.548359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.225880, 41.258774, 43.748203>,  <41.247009, 41.038288, 44.081280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.225880, 41.258774, 43.748203> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688001, 0.624462, 0.369730,
		0.723784, -0.553361, -0.412223,
		-0.052823, 0.551215, -0.832690,
		41.210033, 41.424137, 43.498398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.940834, 41.075958, 43.785732>,  <41.247009, 41.038288, 44.081280>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.940834, 41.075958, 43.785732> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.739845, 41.397175, 43.657578>,  <41.619251, 41.589905, 43.580685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.739845, 41.397175, 43.657578>,  <41.940834, 41.075958, 43.785732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.739845, 41.397175, 43.657578> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646361, 0.595018, 0.477673,
		0.574225, 0.032934, -0.818035,
		-0.502477, 0.803038, -0.320387,
		41.589104, 41.638084, 43.561462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.474152, 41.515335, 43.544598>,  <41.940834, 41.075958, 43.785732>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.474152, 41.515335, 43.544598> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.156300, 41.743027, 43.629013>,  <41.965588, 41.879642, 43.679665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.156300, 41.743027, 43.629013>,  <42.474152, 41.515335, 43.544598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.156300, 41.743027, 43.629013> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580368, 0.610275, 0.539201,
		0.178133, 0.550949, -0.815306,
		-0.794633, 0.569227, 0.211043,
		41.917912, 41.913795, 43.692326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.775867, 42.119034, 43.578690>,  <42.474152, 41.515335, 43.544598>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.775867, 42.119034, 43.578690> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.418793, 42.217712, 43.729549>,  <42.204548, 42.276920, 43.820065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.418793, 42.217712, 43.729549>,  <42.775867, 42.119034, 43.578690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.418793, 42.217712, 43.729549> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450545, 0.508229, 0.733970,
		-0.010608, 0.825132, -0.564841,
		-0.892690, 0.246701, 0.377150,
		42.150986, 42.291721, 43.842693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.669109, 42.801559, 43.856514>,  <42.775867, 42.119034, 43.578690>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.669109, 42.801559, 43.856514> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.386261, 42.623466, 44.076241>,  <42.216553, 42.516613, 44.208076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.386261, 42.623466, 44.076241>,  <42.669109, 42.801559, 43.856514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.386261, 42.623466, 44.076241> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485840, 0.258509, 0.834945,
		-0.513745, 0.857288, 0.033512,
		-0.707125, -0.445230, 0.549312,
		42.174122, 42.489899, 44.241035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.298962, 43.239620, 44.188034>,  <42.669109, 42.801559, 43.856514>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.298962, 43.239620, 44.188034> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.302402, 42.911434, 44.416687>,  <42.304466, 42.714523, 44.553879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.302402, 42.911434, 44.416687>,  <42.298962, 43.239620, 44.188034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.302402, 42.911434, 44.416687> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444963, 0.515080, 0.732599,
		-0.895508, 0.248054, 0.369506,
		0.008601, -0.820464, 0.571633,
		42.304981, 42.665295, 44.588177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.086838, 44.000507, 44.162815>,  <42.298962, 43.239620, 44.188034>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.086838, 44.000507, 44.162815> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.896034, 44.352005, 44.156178>,  <41.781551, 44.562904, 44.152195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.896034, 44.352005, 44.156178>,  <42.086838, 44.000507, 44.162815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.896034, 44.352005, 44.156178> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373688, -0.219863, -0.901120,
		-0.795502, -0.423639, 0.433252,
		-0.477006, 0.878743, -0.016593,
		41.752934, 44.615627, 44.151199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.365540, 43.862438, 44.043896>,  <42.086838, 44.000507, 44.162815>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.365540, 43.862438, 44.043896> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.442410, 44.233276, 43.915176>,  <41.488529, 44.455780, 43.837944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.442410, 44.233276, 43.915176>,  <41.365540, 43.862438, 44.043896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.442410, 44.233276, 43.915176> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479272, -0.197485, -0.855159,
		-0.856369, 0.318568, 0.406382,
		0.192172, 0.927100, -0.321801,
		41.500061, 44.511406, 43.818638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.746040, 44.225731, 43.892567>,  <41.365540, 43.862438, 44.043896>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.746040, 44.225731, 43.892567> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.053509, 44.373684, 43.683823>,  <41.237991, 44.462456, 43.558578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.053509, 44.373684, 43.683823>,  <40.746040, 44.225731, 43.892567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.053509, 44.373684, 43.683823> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480183, -0.205306, -0.852804,
		-0.422573, 0.906113, 0.019796,
		0.768672, 0.369878, -0.521856,
		41.284111, 44.484646, 43.527267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.479359, 44.081398, 43.282951>,  <40.746040, 44.225731, 43.892567>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.479359, 44.081398, 43.282951> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.798561, 44.290489, 43.162991>,  <40.990082, 44.415943, 43.091015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.798561, 44.290489, 43.162991>,  <40.479359, 44.081398, 43.282951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.798561, 44.290489, 43.162991> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292277, -0.099502, -0.951143,
		-0.527034, 0.846671, 0.073379,
		0.798004, 0.522732, -0.299903,
		41.037964, 44.447308, 43.073021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.351910, 44.668114, 42.858608>,  <40.479359, 44.081398, 43.282951>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.351910, 44.668114, 42.858608> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.725803, 44.564022, 42.761810>,  <40.950138, 44.501568, 42.703732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.725803, 44.564022, 42.761810>,  <40.351910, 44.668114, 42.858608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.725803, 44.564022, 42.761810> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276952, -0.106790, -0.954931,
		0.222654, 0.959624, -0.171890,
		0.934731, -0.260224, -0.241993,
		41.006222, 44.485954, 42.689213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.387180, 45.068352, 42.256847>,  <40.351910, 44.668114, 42.858608>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.387180, 45.068352, 42.256847> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.662666, 44.778912, 42.238632>,  <40.827957, 44.605247, 42.227703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.662666, 44.778912, 42.238632>,  <40.387180, 45.068352, 42.256847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.662666, 44.778912, 42.238632> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278550, -0.206084, -0.938051,
		0.669388, 0.658736, -0.343492,
		0.688716, -0.723599, -0.045540,
		40.869282, 44.561832, 42.224972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.647789, 45.119057, 41.491474>,  <40.387180, 45.068352, 42.256847>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.647789, 45.119057, 41.491474> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.733101, 44.767864, 41.662891>,  <40.784290, 44.557148, 41.765743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.733101, 44.767864, 41.662891>,  <40.647789, 45.119057, 41.491474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.733101, 44.767864, 41.662891> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211961, -0.469776, -0.856962,
		0.953720, 0.091941, -0.286294,
		0.213284, -0.877985, 0.428547,
		40.797085, 44.504467, 41.791454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.024437, 44.741825, 40.969433>,  <40.647789, 45.119057, 41.491474>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.024437, 44.741825, 40.969433> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.935829, 44.445114, 41.222637>,  <40.882664, 44.267090, 41.374561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.935829, 44.445114, 41.222637>,  <41.024437, 44.741825, 40.969433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.935829, 44.445114, 41.222637> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193270, -0.602865, -0.774080,
		0.955813, -0.293812, -0.009819,
		-0.221515, -0.741773, 0.633012,
		40.869373, 44.222584, 41.412540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.217747, 44.173626, 40.689781>,  <41.024437, 44.741825, 40.969433>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.217747, 44.173626, 40.689781> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.978764, 44.027336, 40.975239>,  <40.835373, 43.939564, 41.146515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.978764, 44.027336, 40.975239>,  <41.217747, 44.173626, 40.689781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.978764, 44.027336, 40.975239> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394699, -0.640559, -0.658708,
		0.698035, -0.675227, 0.238360,
		-0.597461, -0.365721, 0.713644,
		40.799526, 43.917622, 41.189331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.251438, 43.402946, 40.668934>,  <41.217747, 44.173626, 40.689781>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.251438, 43.402946, 40.668934> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.902138, 43.487850, 40.844379>,  <40.692558, 43.538792, 40.949646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.902138, 43.487850, 40.844379>,  <41.251438, 43.402946, 40.668934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.902138, 43.487850, 40.844379> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459573, -0.657936, -0.596584,
		0.161953, -0.722542, 0.672089,
		-0.873249, 0.212255, 0.438616,
		40.640163, 43.551525, 40.975964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.905060, 42.782604, 40.910870>,  <41.251438, 43.402946, 40.668934>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.905060, 42.782604, 40.910870> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.595333, 43.034294, 40.884007>,  <40.409496, 43.185307, 40.867889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.595333, 43.034294, 40.884007>,  <40.905060, 42.782604, 40.910870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.595333, 43.034294, 40.884007> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497212, -0.670619, -0.550500,
		-0.391428, -0.392868, 0.832129,
		-0.774316, 0.629226, -0.067160,
		40.363037, 43.223061, 40.863857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.315594, 42.352589, 41.096367>,  <40.905060, 42.782604, 40.910870>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.315594, 42.352589, 41.096367> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.159294, 42.661327, 40.895741>,  <40.065514, 42.846569, 40.775364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.159294, 42.661327, 40.895741>,  <40.315594, 42.352589, 41.096367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.159294, 42.661327, 40.895741> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549302, -0.632754, -0.545794,
		-0.738636, 0.062241, 0.671225,
		-0.390749, 0.771848, -0.501564,
		40.042068, 42.892883, 40.745270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.721340, 42.219967, 41.180004>,  <40.315594, 42.352589, 41.096367>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.721340, 42.219967, 41.180004> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.749207, 42.451214, 40.854816>,  <39.765926, 42.589962, 40.659702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.749207, 42.451214, 40.854816>,  <39.721340, 42.219967, 41.180004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.749207, 42.451214, 40.854816> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499462, -0.685236, -0.530084,
		-0.863530, 0.442978, 0.241010,
		0.069667, 0.578119, -0.812973,
		39.770107, 42.624649, 40.610924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.072357, 42.302090, 40.825287>,  <39.721340, 42.219967, 41.180004>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.072357, 42.302090, 40.825287> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.359077, 42.354271, 40.551300>,  <39.531109, 42.385578, 40.386906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.359077, 42.354271, 40.551300>,  <39.072357, 42.302090, 40.825287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.359077, 42.354271, 40.551300> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407772, -0.718429, -0.563545,
		-0.565618, 0.683258, -0.461773,
		0.716797, 0.130453, -0.684970,
		39.574116, 42.393406, 40.345810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.344528, 42.596481, 40.720848>,  <39.072357, 42.302090, 40.825287>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.344528, 42.596481, 40.720848> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.956425, 42.693260, 40.723682>,  <37.723560, 42.751328, 40.725384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.956425, 42.693260, 40.723682>,  <38.344528, 42.596481, 40.720848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.956425, 42.693260, 40.723682> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181549, 0.708059, 0.682417,
		0.160095, 0.663410, -0.730929,
		-0.970263, 0.241951, 0.007085,
		37.665344, 42.765846, 40.725807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.316982, 43.290012, 40.774612>,  <38.344528, 42.596481, 40.720848>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.316982, 43.290012, 40.774612> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.940952, 43.208019, 40.883602>,  <37.715336, 43.158821, 40.948997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.940952, 43.208019, 40.883602>,  <38.316982, 43.290012, 40.774612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.940952, 43.208019, 40.883602> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000864, 0.797676, 0.603086,
		-0.340969, 0.567181, -0.749697,
		-0.940074, -0.204986, 0.272473,
		37.658932, 43.146523, 40.965343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.888149, 43.958668, 40.759010>,  <38.316982, 43.290012, 40.774612>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.888149, 43.958668, 40.759010> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.660759, 43.709087, 40.973495>,  <37.524326, 43.559338, 41.102188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.660759, 43.709087, 40.973495>,  <37.888149, 43.958668, 40.759010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.660759, 43.709087, 40.973495> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134271, 0.713396, 0.687777,
		-0.811670, 0.318985, -0.489326,
		-0.568474, -0.623950, 0.536212,
		37.490215, 43.521904, 41.134357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.351379, 44.387344, 41.117123>,  <37.888149, 43.958668, 40.759010>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.351379, 44.387344, 41.117123> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.393036, 44.042416, 41.315338>,  <37.418030, 43.835457, 41.434265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.393036, 44.042416, 41.315338>,  <37.351379, 44.387344, 41.117123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.393036, 44.042416, 41.315338> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139268, 0.480692, 0.865759,
		-0.984764, -0.159172, -0.070035,
		0.104139, -0.862322, 0.495536,
		37.424278, 43.783718, 41.464001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.734615, 44.472374, 41.579807>,  <37.351379, 44.387344, 41.117123>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.734615, 44.472374, 41.579807> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.947388, 44.175339, 41.742588>,  <37.075050, 43.997116, 41.840256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.947388, 44.175339, 41.742588>,  <36.734615, 44.472374, 41.579807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.947388, 44.175339, 41.742588> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107964, 0.417184, 0.902386,
		-0.839875, -0.523947, 0.141742,
		0.531935, -0.742588, 0.406950,
		37.106968, 43.952560, 41.864674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.417751, 44.274914, 42.256325>,  <36.734615, 44.472374, 41.579807>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.417751, 44.274914, 42.256325> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.794212, 44.142120, 42.281685>,  <37.020088, 44.062443, 42.296902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.794212, 44.142120, 42.281685>,  <36.417751, 44.274914, 42.256325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.794212, 44.142120, 42.281685> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098744, 0.449482, 0.887815,
		-0.323241, -0.829308, 0.455812,
		0.941151, -0.331987, 0.063402,
		37.076557, 44.042526, 42.300705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.473621, 43.907024, 42.919579>,  <36.417751, 44.274914, 42.256325>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.473621, 43.907024, 42.919579> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.815132, 44.060936, 42.779289>,  <37.020039, 44.153282, 42.695118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.815132, 44.060936, 42.779289>,  <36.473621, 43.907024, 42.919579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.815132, 44.060936, 42.779289> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126943, 0.499456, 0.856988,
		0.504930, -0.776196, 0.377577,
		0.853774, 0.384788, -0.350723,
		37.071266, 44.176369, 42.674072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.350910, 43.366894, 43.446213>,  <36.473621, 43.907024, 42.919579>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.350910, 43.366894, 43.446213> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.148079, 43.219822, 43.758030>,  <36.026382, 43.131577, 43.945122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.148079, 43.219822, 43.758030>,  <36.350910, 43.366894, 43.446213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.148079, 43.219822, 43.758030> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451776, -0.656858, -0.603686,
		0.734013, -0.658292, 0.166966,
		-0.507074, -0.367682, 0.779542,
		35.995956, 43.109516, 43.991894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.458576, 42.595047, 43.522057>,  <36.350910, 43.366894, 43.446213>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.458576, 42.595047, 43.522057> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.107391, 42.716629, 43.670002>,  <35.896679, 42.789577, 43.758770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.107391, 42.716629, 43.670002>,  <36.458576, 42.595047, 43.522057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.107391, 42.716629, 43.670002> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478556, -0.536368, -0.695193,
		-0.012922, -0.787352, 0.616368,
		-0.877961, 0.303950, 0.369861,
		35.844002, 42.807816, 43.780960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.107430, 42.031216, 43.422729>,  <36.458576, 42.595047, 43.522057>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.107430, 42.031216, 43.422729> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.833355, 42.317734, 43.475559>,  <35.668911, 42.489643, 43.507256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.833355, 42.317734, 43.475559>,  <36.107430, 42.031216, 43.422729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.833355, 42.317734, 43.475559> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498395, -0.328849, -0.802160,
		-0.531150, -0.615454, 0.582320,
		-0.685188, 0.716292, 0.132071,
		35.627800, 42.532623, 43.515182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.449207, 41.741508, 43.474243>,  <36.107430, 42.031216, 43.422729>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.449207, 41.741508, 43.474243> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.341038, 42.110828, 43.365150>,  <35.276138, 42.332420, 43.299694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.341038, 42.110828, 43.365150>,  <35.449207, 41.741508, 43.474243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.341038, 42.110828, 43.365150> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622824, -0.383797, -0.681756,
		-0.734142, -0.014495, 0.678841,
		-0.270419, 0.923304, -0.272734,
		35.259911, 42.387821, 43.283329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.751938, 41.753868, 43.349628>,  <35.449207, 41.741508, 43.474243>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.751938, 41.753868, 43.349628> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.812260, 42.096180, 43.151676>,  <34.848454, 42.301567, 43.032906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.812260, 42.096180, 43.151676>,  <34.751938, 41.753868, 43.349628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.812260, 42.096180, 43.151676> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655599, -0.288105, -0.697986,
		-0.739897, 0.429703, 0.517598,
		0.150804, 0.855775, -0.494881,
		34.857502, 42.352913, 43.003212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.037571, 41.981548, 43.110802>,  <34.751938, 41.753868, 43.349628>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.037571, 41.981548, 43.110802> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.311615, 42.155876, 42.877327>,  <34.476040, 42.260471, 42.737240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.311615, 42.155876, 42.877327>,  <34.037571, 41.981548, 43.110802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.311615, 42.155876, 42.877327> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580326, -0.157770, -0.798956,
		-0.440286, 0.886100, 0.144826,
		0.685106, 0.435816, -0.583691,
		34.517147, 42.286621, 42.702221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.704376, 42.451115, 42.711674>,  <34.037571, 41.981548, 43.110802>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.704376, 42.451115, 42.711674> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.043304, 42.392338, 42.507538>,  <34.246662, 42.357071, 42.385056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.043304, 42.392338, 42.507538>,  <33.704376, 42.451115, 42.711674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.043304, 42.392338, 42.507538> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528517, -0.139119, -0.837446,
		0.052060, 0.979313, -0.195542,
		0.847325, -0.146945, -0.510341,
		34.297501, 42.348255, 42.354435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<39.216618, 41.290981, 46.007767> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.474216, 41.391846, 45.718857>,  <39.628777, 41.452366, 45.545509>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.474216, 41.391846, 45.718857>,  <39.216618, 41.290981, 46.007767>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.474216, 41.391846, 45.718857> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595890, -0.426749, -0.680294,
		-0.479774, 0.868505, -0.124566,
		0.643997, 0.252159, -0.722276,
		39.667416, 41.467495, 45.502174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.789978, 41.489517, 45.425564>,  <39.216618, 41.290981, 46.007767>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.789978, 41.489517, 45.425564> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.152771, 41.428078, 45.268696>,  <39.370445, 41.391216, 45.174576>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.152771, 41.428078, 45.268696>,  <38.789978, 41.489517, 45.425564>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.152771, 41.428078, 45.268696> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420854, -0.294113, -0.858126,
		0.016463, 0.943348, -0.331396,
		0.906979, -0.153597, -0.392170,
		39.424866, 41.382000, 45.151043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.766449, 41.750732, 44.743797>,  <38.789978, 41.489517, 45.425564>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.766449, 41.750732, 44.743797> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.079762, 41.502068, 44.743092>,  <39.267750, 41.352867, 44.742668>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.079762, 41.502068, 44.743092>,  <38.766449, 41.750732, 44.743797>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.079762, 41.502068, 44.743092> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392413, -0.492228, -0.776997,
		0.482160, 0.609302, -0.629502,
		0.783284, -0.621661, -0.001766,
		39.314747, 41.315571, 44.742561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.895103, 41.657787, 44.031166>,  <38.766449, 41.750732, 44.743797>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.895103, 41.657787, 44.031166> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.049103, 41.345901, 44.228680>,  <39.141502, 41.158768, 44.347187>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.049103, 41.345901, 44.228680>,  <38.895103, 41.657787, 44.031166>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.049103, 41.345901, 44.228680> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438447, -0.625313, -0.645560,
		0.812121, 0.032042, -0.582609,
		0.384998, -0.779716, 0.493781,
		39.164600, 41.111988, 44.376816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.978855, 41.164661, 43.485165>,  <38.895103, 41.657787, 44.031166>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.978855, 41.164661, 43.485165> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.968788, 40.965965, 43.832176>,  <38.962749, 40.846748, 44.040382>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.968788, 40.965965, 43.832176>,  <38.978855, 41.164661, 43.485165>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.968788, 40.965965, 43.832176> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539676, -0.723738, -0.430062,
		0.841497, -0.479010, -0.249865,
		-0.025168, -0.496742, 0.867533,
		38.961239, 40.816944, 44.092438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.207905, 40.515766, 43.301830>,  <38.978855, 41.164661, 43.485165>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.207905, 40.515766, 43.301830> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.030872, 40.453037, 43.654995>,  <38.924652, 40.415398, 43.866894>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.030872, 40.453037, 43.654995>,  <39.207905, 40.515766, 43.301830>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.030872, 40.453037, 43.654995> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416140, -0.836232, -0.357132,
		0.794326, -0.525473, 0.304835,
		-0.442576, -0.156825, 0.882911,
		38.898098, 40.405991, 43.919868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.332870, 39.735641, 43.556259>,  <39.207905, 40.515766, 43.301830>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.332870, 39.735641, 43.556259> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.026863, 39.863323, 43.779991>,  <38.843258, 39.939934, 43.914230>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.026863, 39.863323, 43.779991>,  <39.332870, 39.735641, 43.556259>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.026863, 39.863323, 43.779991> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496934, -0.845033, -0.197420,
		0.409635, -0.428981, 0.805093,
		-0.765020, 0.319208, 0.559331,
		38.797356, 39.959087, 43.947792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.190849, 39.201408, 44.041142>,  <39.332870, 39.735641, 43.556259>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.190849, 39.201408, 44.041142> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.850327, 39.410801, 44.055206>,  <38.646011, 39.536438, 44.063644>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.850327, 39.410801, 44.055206>,  <39.190849, 39.201408, 44.041142>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.850327, 39.410801, 44.055206> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522501, -0.839813, -0.147332,
		-0.047596, -0.143797, 0.988462,
		-0.851309, 0.523485, 0.035162,
		38.594933, 39.567848, 44.065754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.719410, 38.758827, 44.441189>,  <39.190849, 39.201408, 44.041142>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.719410, 38.758827, 44.441189> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.503460, 39.022030, 44.231213>,  <38.373890, 39.179951, 44.105228>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.503460, 39.022030, 44.231213>,  <38.719410, 38.758827, 44.441189>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.503460, 39.022030, 44.231213> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628437, -0.729979, -0.268698,
		-0.559999, 0.184826, 0.807614,
		-0.539878, 0.658005, -0.524938,
		38.341496, 39.219433, 44.073730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.958099, 38.658188, 44.660259>,  <38.719410, 38.758827, 44.441189>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.958099, 38.658188, 44.660259> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.943100, 38.858524, 44.314369>,  <37.934101, 38.978725, 44.106834>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.943100, 38.858524, 44.314369>,  <37.958099, 38.658188, 44.660259>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.943100, 38.858524, 44.314369> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637598, -0.678296, -0.365217,
		-0.769457, 0.537653, 0.344769,
		-0.037496, 0.500843, -0.864726,
		37.931850, 39.008778, 44.054951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.278915, 38.650143, 44.438038>,  <37.958099, 38.658188, 44.660259>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.278915, 38.650143, 44.438038> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.461288, 38.740578, 44.093712>,  <37.570713, 38.794838, 43.887115>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.461288, 38.740578, 44.093712>,  <37.278915, 38.650143, 44.438038>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.461288, 38.740578, 44.093712> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561797, -0.677049, -0.475382,
		-0.690294, 0.700349, -0.181675,
		0.455936, 0.226089, -0.860817,
		37.598068, 38.808403, 43.835468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.755775, 38.872284, 43.812019>,  <37.278915, 38.650143, 44.438038>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.755775, 38.872284, 43.812019> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.076492, 38.699142, 43.647209>,  <37.268925, 38.595257, 43.548325>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.076492, 38.699142, 43.647209>,  <36.755775, 38.872284, 43.812019>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.076492, 38.699142, 43.647209> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592811, -0.488980, -0.639902,
		0.075511, 0.757323, -0.648661,
		0.801794, -0.432852, -0.412026,
		37.317032, 38.569286, 43.523602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.287033, 39.464348, 43.603790>,  <36.755775, 38.872284, 43.812019>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.287033, 39.464348, 43.603790> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.902115, 39.483074, 43.710968>,  <35.671165, 39.494312, 43.775272>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.902115, 39.483074, 43.710968>,  <36.287033, 39.464348, 43.603790>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.902115, 39.483074, 43.710968> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234432, 0.642306, 0.729715,
		-0.137935, 0.765017, -0.629065,
		-0.962297, 0.046820, 0.267941,
		35.613426, 39.497120, 43.791351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.052853, 40.180126, 43.652317>,  <36.287033, 39.464348, 43.603790>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.052853, 40.180126, 43.652317> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.810135, 39.962643, 43.884239>,  <35.664505, 39.832153, 44.023392>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.810135, 39.962643, 43.884239>,  <36.052853, 40.180126, 43.652317>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.810135, 39.962643, 43.884239> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214966, 0.590014, 0.778250,
		-0.765238, 0.596878, -0.241139,
		-0.606795, -0.543709, 0.579810,
		35.628098, 39.799530, 44.058182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.651691, 40.635094, 44.065907>,  <36.052853, 40.180126, 43.652317>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.651691, 40.635094, 44.065907> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.630795, 40.287277, 44.262341>,  <35.618256, 40.078587, 44.380199>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.630795, 40.287277, 44.262341>,  <35.651691, 40.635094, 44.065907>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.630795, 40.287277, 44.262341> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298570, 0.455664, 0.838586,
		-0.952957, 0.190431, 0.235816,
		-0.052240, -0.869544, 0.491085,
		35.615124, 40.026413, 44.409664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.343372, 40.806236, 44.737816>,  <35.651691, 40.635094, 44.065907>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.343372, 40.806236, 44.737816> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.528698, 40.453953, 44.777180>,  <35.639893, 40.242580, 44.800797>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.528698, 40.453953, 44.777180>,  <35.343372, 40.806236, 44.737816>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.528698, 40.453953, 44.777180> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500995, 0.351904, 0.790675,
		-0.730987, -0.317033, 0.604276,
		0.463317, -0.880712, 0.098406,
		35.667694, 40.189739, 44.806702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.211533, 40.545753, 45.466396>,  <35.343372, 40.806236, 44.737816>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.211533, 40.545753, 45.466396> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.526169, 40.335567, 45.336681>,  <35.714951, 40.209457, 45.258850>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.526169, 40.335567, 45.336681>,  <35.211533, 40.545753, 45.466396>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.526169, 40.335567, 45.336681> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485076, 0.200881, 0.851086,
		-0.382072, -0.826761, 0.412901,
		0.786589, -0.525464, -0.324291,
		35.762146, 40.177929, 45.239395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.501816, 40.237362, 46.086742>,  <35.211533, 40.545753, 45.466396>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.501816, 40.237362, 46.086742> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.797977, 40.186611, 45.822712>,  <35.975674, 40.156162, 45.664295>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.797977, 40.186611, 45.822712>,  <35.501816, 40.237362, 46.086742>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.797977, 40.186611, 45.822712> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671591, 0.179931, 0.718742,
		0.027576, -0.975463, 0.218432,
		0.740409, -0.126877, -0.660074,
		36.020100, 40.148548, 45.624691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.974346, 39.700199, 46.334213>,  <35.501816, 40.237362, 46.086742>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.974346, 39.700199, 46.334213> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.203041, 39.889721, 46.066296>,  <36.340260, 40.003433, 45.905544>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.203041, 39.889721, 46.066296>,  <35.974346, 39.700199, 46.334213>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.203041, 39.889721, 46.066296> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674917, 0.192555, 0.712326,
		0.466478, -0.859318, -0.209690,
		0.571738, 0.473808, -0.669792,
		36.374561, 40.031864, 45.865356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.637787, 39.473030, 46.399620>,  <35.974346, 39.700199, 46.334213>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.637787, 39.473030, 46.399620> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.653473, 39.839550, 46.240196>,  <36.662884, 40.059464, 46.144543>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.653473, 39.839550, 46.240196>,  <36.637787, 39.473030, 46.399620>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.653473, 39.839550, 46.240196> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687606, 0.264661, 0.676131,
		0.725025, -0.300568, -0.619676,
		0.039219, 0.916304, -0.398559,
		36.665237, 40.114441, 46.120628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.232834, 39.682426, 46.561195>,  <36.637787, 39.473030, 46.399620>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.232834, 39.682426, 46.561195> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.076550, 40.039055, 46.469589>,  <36.982780, 40.253033, 46.414627>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.076550, 40.039055, 46.469589>,  <37.232834, 39.682426, 46.561195>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.076550, 40.039055, 46.469589> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616919, 0.438262, 0.653711,
		0.683198, 0.114127, -0.721259,
		-0.390706, 0.891573, -0.229012,
		36.959339, 40.306526, 46.400887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.777767, 40.128956, 46.659904>,  <37.232834, 39.682426, 46.561195>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.777767, 40.128956, 46.659904> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.462181, 40.374660, 46.665718>,  <37.272827, 40.522083, 46.669209>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.462181, 40.374660, 46.665718>,  <37.777767, 40.128956, 46.659904>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.462181, 40.374660, 46.665718> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476765, 0.597099, 0.645111,
		0.387588, 0.515903, -0.763951,
		-0.788968, 0.614262, 0.014536,
		37.225491, 40.558941, 46.670078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.048714, 40.779266, 46.782555>,  <37.777767, 40.128956, 46.659904>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.048714, 40.779266, 46.782555> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.667091, 40.851139, 46.878471>,  <37.438118, 40.894260, 46.936020>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.667091, 40.851139, 46.878471>,  <38.048714, 40.779266, 46.782555>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.667091, 40.851139, 46.878471> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290862, 0.747637, 0.597024,
		-0.072005, 0.639338, -0.765547,
		-0.954052, 0.179680, 0.239793,
		37.380875, 40.905045, 46.950409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.892281, 41.516251, 46.678894>,  <38.048714, 40.779266, 46.782555>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.892281, 41.516251, 46.678894> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.631069, 41.361263, 46.939178>,  <37.474342, 41.268272, 47.095348>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.631069, 41.361263, 46.939178>,  <37.892281, 41.516251, 46.678894>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.631069, 41.361263, 46.939178> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134816, 0.786014, 0.603330,
		-0.745237, 0.481718, -0.461053,
		-0.653029, -0.387466, 0.650710,
		37.435162, 41.245022, 47.134392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467476, 42.097378, 46.785698>,  <37.892281, 41.516251, 46.678894>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.467476, 42.097378, 46.785698> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.457016, 41.844120, 47.095135>,  <37.450741, 41.692165, 47.280796>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.457016, 41.844120, 47.095135>,  <37.467476, 42.097378, 46.785698>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.457016, 41.844120, 47.095135> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130261, 0.765104, 0.630593,
		-0.991135, 0.117258, 0.062467,
		-0.026149, -0.633140, 0.773596,
		37.449173, 41.654179, 47.327213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.965939, 42.419159, 47.310669>,  <37.467476, 42.097378, 46.785698>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.965939, 42.419159, 47.310669> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.237942, 42.181278, 47.482208>,  <37.401146, 42.038551, 47.585133>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.237942, 42.181278, 47.482208>,  <36.965939, 42.419159, 47.310669>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.237942, 42.181278, 47.482208> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221892, 0.724397, 0.652697,
		-0.698819, -0.348683, 0.624558,
		0.680012, -0.594701, 0.428852,
		37.441944, 42.002869, 47.610863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.023521, 43.071095, 46.806957>,  <36.965939, 42.419159, 47.310669>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.023521, 43.071095, 46.806957> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.999565, 43.462765, 46.729362>,  <36.985191, 43.697765, 46.682804>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.999565, 43.462765, 46.729362>,  <37.023521, 43.071095, 46.806957>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.999565, 43.462765, 46.729362> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428095, -0.200753, -0.881154,
		-0.901747, 0.030272, 0.431203,
		-0.059891, 0.979174, -0.193988,
		36.981598, 43.756516, 46.671165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.326870, 43.306866, 46.739075>,  <37.023521, 43.071095, 46.806957>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.326870, 43.306866, 46.739075> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.584118, 43.518520, 46.517658>,  <36.738468, 43.645512, 46.384808>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.584118, 43.518520, 46.517658>,  <36.326870, 43.306866, 46.739075>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.584118, 43.518520, 46.517658> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507354, -0.247010, -0.825577,
		-0.573571, 0.811790, 0.109600,
		0.643123, 0.529134, -0.553543,
		36.777054, 43.677261, 46.351597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.860626, 43.700058, 46.312046>,  <36.326870, 43.306866, 46.739075>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.860626, 43.700058, 46.312046> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.222393, 43.682972, 46.142242>,  <36.439453, 43.672718, 46.040359>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.222393, 43.682972, 46.142242>,  <35.860626, 43.700058, 46.312046>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.222393, 43.682972, 46.142242> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425900, -0.149505, -0.892333,
		-0.025347, 0.987838, -0.153409,
		0.904415, -0.042719, -0.424509,
		36.493717, 43.670155, 46.014889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.743149, 44.135857, 45.778275>,  <35.860626, 43.700058, 46.312046>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.743149, 44.135857, 45.778275> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.041588, 43.897896, 45.658653>,  <36.220650, 43.755119, 45.586880>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.041588, 43.897896, 45.658653>,  <35.743149, 44.135857, 45.778275>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.041588, 43.897896, 45.658653> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439911, -0.103274, -0.892083,
		0.499821, 0.797134, -0.338757,
		0.746095, -0.594905, -0.299050,
		36.265415, 43.719425, 45.568939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.702972, 44.279465, 45.068272>,  <35.743149, 44.135857, 45.778275>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.702972, 44.279465, 45.068272> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.936394, 43.958008, 45.114956>,  <36.076447, 43.765133, 45.142967>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.936394, 43.958008, 45.114956>,  <35.702972, 44.279465, 45.068272>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.936394, 43.958008, 45.114956> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302404, -0.348439, -0.887210,
		0.753667, 0.482441, -0.446358,
		0.583556, -0.803642, 0.116715,
		36.111462, 43.716915, 45.149971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.031315, 44.292244, 44.410328>,  <35.702972, 44.279465, 45.068272>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.031315, 44.292244, 44.410328> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.085644, 43.928391, 44.567364>,  <36.118240, 43.710079, 44.661587>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.085644, 43.928391, 44.567364>,  <36.031315, 44.292244, 44.410328>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.085644, 43.928391, 44.567364> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272735, -0.415281, -0.867847,
		0.952454, 0.010796, -0.304490,
		0.135818, -0.909630, 0.392591,
		36.126389, 43.655502, 44.685143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.358105, 44.006336, 43.903042>,  <36.031315, 44.292244, 44.410328>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.358105, 44.006336, 43.903042> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.219612, 43.716450, 44.141342>,  <36.136517, 43.542519, 44.284321>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.219612, 43.716450, 44.141342>,  <36.358105, 44.006336, 43.903042>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.219612, 43.716450, 44.141342> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161177, -0.579633, -0.798779,
		0.924201, -0.372580, 0.083878,
		-0.346228, -0.724713, 0.595749,
		36.115746, 43.499035, 44.320068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.073303, 43.862232, 43.672066>,  <36.358105, 44.006336, 43.903042>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.073303, 43.862232, 43.672066> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.249538, 44.034565, 43.357037>,  <37.355278, 44.137962, 43.168018>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.249538, 44.034565, 43.357037>,  <37.073303, 43.862232, 43.672066>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.249538, 44.034565, 43.357037> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819556, 0.164988, 0.548732,
		0.366349, -0.887224, -0.280396,
		0.440586, 0.430828, -0.787573,
		37.381714, 44.163815, 43.120766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.823425, 43.685459, 43.634022>,  <37.073303, 43.862232, 43.672066>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.823425, 43.685459, 43.634022> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.805309, 44.049049, 43.468266>,  <37.794441, 44.267204, 43.368813>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.805309, 44.049049, 43.468266>,  <37.823425, 43.685459, 43.634022>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.805309, 44.049049, 43.468266> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842430, 0.257696, 0.473186,
		0.536899, -0.327664, -0.777416,
		-0.045291, 0.908971, -0.414391,
		37.791721, 44.321739, 43.343948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.540421, 43.872120, 43.466148>,  <37.823425, 43.685459, 43.634022>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.540421, 43.872120, 43.466148> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.344223, 44.220665, 43.470753>,  <38.226505, 44.429794, 43.473515>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.344223, 44.220665, 43.470753>,  <38.540421, 43.872120, 43.466148>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.344223, 44.220665, 43.470753> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813153, 0.452897, 0.365603,
		0.313359, 0.188691, -0.930700,
		-0.490498, 0.871366, 0.011515,
		38.197075, 44.482075, 43.474209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.930889, 44.377796, 43.221992>,  <38.540421, 43.872120, 43.466148>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.930889, 44.377796, 43.221992> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.682560, 44.592003, 43.451012>,  <38.533562, 44.720528, 43.588421>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.682560, 44.592003, 43.451012>,  <38.930889, 44.377796, 43.221992>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.682560, 44.592003, 43.451012> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781519, 0.365239, 0.505795,
		0.061747, 0.761460, -0.645264,
		-0.620818, 0.535517, 0.572544,
		38.496315, 44.752659, 43.622776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.303074, 45.014763, 43.415791>,  <38.930889, 44.377796, 43.221992>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.303074, 45.014763, 43.415791> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.986633, 45.025936, 43.660210>,  <38.796768, 45.032639, 43.806862>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.986633, 45.025936, 43.660210>,  <39.303074, 45.014763, 43.415791>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.986633, 45.025936, 43.660210> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589886, 0.299172, 0.750020,
		-0.161861, 0.953790, -0.253150,
		-0.791098, 0.027931, 0.611052,
		38.749306, 45.034317, 43.843525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.271019, 45.788933, 43.789825>,  <39.303074, 45.014763, 43.415791>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.271019, 45.788933, 43.789825> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.060600, 45.535316, 44.016544>,  <38.934349, 45.383144, 44.152576>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.060600, 45.535316, 44.016544>,  <39.271019, 45.788933, 43.789825>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.060600, 45.535316, 44.016544> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482827, 0.325987, 0.812780,
		-0.700108, 0.701227, 0.134649,
		-0.526049, -0.634046, 0.566797,
		38.902786, 45.345104, 44.186584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.069756, 46.182678, 44.479172>,  <39.271019, 45.788933, 43.789825>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.069756, 46.182678, 44.479172> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.985126, 45.808773, 44.593334>,  <38.934349, 45.584431, 44.661831>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.985126, 45.808773, 44.593334>,  <39.069756, 46.182678, 44.479172>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.985126, 45.808773, 44.593334> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321253, 0.209281, 0.923579,
		-0.923058, 0.287087, 0.256019,
		-0.211568, -0.934763, 0.285406,
		38.921658, 45.528343, 44.678955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.740593, 46.222878, 45.167873>,  <39.069756, 46.182678, 44.479172>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.740593, 46.222878, 45.167873> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.883308, 45.851166, 45.129627>,  <38.968937, 45.628139, 45.106678>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.883308, 45.851166, 45.129627>,  <38.740593, 46.222878, 45.167873>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.883308, 45.851166, 45.129627> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372608, 0.047699, 0.926762,
		-0.856659, -0.366287, 0.363275,
		0.356789, -0.929279, -0.095619,
		38.990345, 45.572384, 45.100941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.781273, 45.884129, 45.798073>,  <38.740593, 46.222878, 45.167873>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.781273, 45.884129, 45.798073> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.052143, 45.656548, 45.611427>,  <39.214664, 45.520000, 45.499439>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.052143, 45.656548, 45.611427>,  <38.781273, 45.884129, 45.798073>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.052143, 45.656548, 45.611427> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505049, -0.101788, 0.857067,
		-0.535126, -0.816047, 0.218421,
		0.677174, -0.568953, -0.466613,
		39.255295, 45.485863, 45.471443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<34.921085, 36.265980, 33.368240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.238487, 36.043583, 33.467220>,  <35.428928, 35.910145, 33.526608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.238487, 36.043583, 33.467220>,  <34.921085, 36.265980, 33.368240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.238487, 36.043583, 33.467220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091254, 0.510710, 0.854896,
		-0.601690, -0.655780, 0.455985,
		0.793500, -0.555993, 0.247447,
		35.476536, 35.876785, 33.541454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.872601, 35.908863, 34.110374>,  <34.921085, 36.265980, 33.368240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.872601, 35.908863, 34.110374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.243732, 35.987442, 33.983547>,  <35.466412, 36.034588, 33.907452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.243732, 35.987442, 33.983547>,  <34.872601, 35.908863, 34.110374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.243732, 35.987442, 33.983547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087583, 0.711560, 0.697145,
		0.362566, -0.674604, 0.643005,
		0.927834, 0.196445, -0.317072,
		35.522083, 36.046375, 33.888424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.250526, 35.880741, 34.718559>,  <34.872601, 35.908863, 34.110374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.250526, 35.880741, 34.718559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.459759, 36.090233, 34.449608>,  <35.585300, 36.215927, 34.288239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.459759, 36.090233, 34.449608>,  <35.250526, 35.880741, 34.718559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.459759, 36.090233, 34.449608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221131, 0.678501, 0.700527,
		0.823093, -0.515119, 0.239102,
		0.523085, 0.523726, -0.672379,
		35.616684, 36.247349, 34.247894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.751835, 36.051975, 35.171822>,  <35.250526, 35.880741, 34.718559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.751835, 36.051975, 35.171822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.752087, 36.314381, 34.869923>,  <35.752235, 36.471825, 34.688782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.752087, 36.314381, 34.869923>,  <35.751835, 36.051975, 35.171822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.752087, 36.314381, 34.869923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127020, 0.748586, 0.650757,
		0.991900, -0.096276, -0.082858,
		0.000626, 0.656011, -0.754751,
		35.752274, 36.511185, 34.643497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.214993, 36.461533, 35.396801>,  <35.751835, 36.051975, 35.171822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.214993, 36.461533, 35.396801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.030418, 36.675152, 35.113430>,  <35.919674, 36.803326, 34.943409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.030418, 36.675152, 35.113430>,  <36.214993, 36.461533, 35.396801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.030418, 36.675152, 35.113430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077411, 0.819711, 0.567522,
		0.883791, 0.207033, -0.419584,
		-0.461433, 0.534052, -0.708426,
		35.891987, 36.835369, 34.900902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.652027, 37.108299, 35.211346>,  <36.214993, 36.461533, 35.396801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.652027, 37.108299, 35.211346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.277615, 37.196373, 35.101540>,  <36.052967, 37.249218, 35.035656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.277615, 37.196373, 35.101540>,  <36.652027, 37.108299, 35.211346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.277615, 37.196373, 35.101540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063064, 0.872398, 0.484711,
		0.346213, 0.436394, -0.830480,
		-0.936034, 0.220187, -0.274514,
		35.996803, 37.262428, 35.019184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.606956, 37.906918, 34.972855>,  <36.652027, 37.108299, 35.211346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.606956, 37.906918, 34.972855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.251003, 37.775547, 35.099495>,  <36.037430, 37.696724, 35.175480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.251003, 37.775547, 35.099495>,  <36.606956, 37.906918, 34.972855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.251003, 37.775547, 35.099495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114650, 0.832770, 0.541617,
		-0.441539, 0.445680, -0.778725,
		-0.889887, -0.328426, 0.316604,
		35.984035, 37.677021, 35.194477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.339214, 38.404194, 35.196960>,  <36.606956, 37.906918, 34.972855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.339214, 38.404194, 35.196960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.023029, 38.184513, 35.305439>,  <35.833321, 38.052704, 35.370525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.023029, 38.184513, 35.305439>,  <36.339214, 38.404194, 35.196960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.023029, 38.184513, 35.305439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258430, 0.700457, 0.665263,
		-0.555327, 0.455778, -0.695614,
		-0.790459, -0.549205, 0.271196,
		35.785892, 38.019753, 35.386799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.771488, 38.803158, 35.103691>,  <36.339214, 38.404194, 35.196960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.771488, 38.803158, 35.103691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.668022, 38.541531, 35.388023>,  <35.605942, 38.384552, 35.558624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.668022, 38.541531, 35.388023>,  <35.771488, 38.803158, 35.103691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.668022, 38.541531, 35.388023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211720, 0.756373, 0.618931,
		-0.942480, 0.009596, -0.334125,
		-0.258662, -0.654071, 0.710834,
		35.590424, 38.345310, 35.601273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.232437, 39.098572, 35.375458>,  <35.771488, 38.803158, 35.103691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.232437, 39.098572, 35.375458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.346855, 38.839420, 35.657856>,  <35.415508, 38.683929, 35.827293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.346855, 38.839420, 35.657856>,  <35.232437, 39.098572, 35.375458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.346855, 38.839420, 35.657856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313482, 0.632962, 0.707876,
		-0.905486, -0.423804, -0.022041,
		0.286049, -0.647881, 0.705993,
		35.432671, 38.645058, 35.869656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.737965, 39.034698, 35.859032>,  <35.232437, 39.098572, 35.375458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.737965, 39.034698, 35.859032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.057549, 38.908627, 36.063904>,  <35.249298, 38.832985, 36.186829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.057549, 38.908627, 36.063904>,  <34.737965, 39.034698, 35.859032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.057549, 38.908627, 36.063904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158977, 0.710679, 0.685318,
		-0.579997, -0.628964, 0.517695,
		0.798956, -0.315181, 0.512182,
		35.297234, 38.814072, 36.217560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.592384, 39.045818, 36.654186>,  <34.737965, 39.034698, 35.859032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.592384, 39.045818, 36.654186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.989399, 39.049469, 36.605556>,  <35.227608, 39.051659, 36.576378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.989399, 39.049469, 36.605556>,  <34.592384, 39.045818, 36.654186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.989399, 39.049469, 36.605556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085094, 0.662239, 0.744445,
		0.087307, -0.749237, 0.656522,
		0.992540, 0.009129, -0.121574,
		35.287163, 39.052208, 36.569084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.122898, 38.414722, 37.026157>,  <34.592384, 39.045818, 36.654186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.122898, 38.414722, 37.026157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.784004, 38.466988, 37.232117>,  <33.580666, 38.498344, 37.355690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.784004, 38.466988, 37.232117>,  <34.122898, 38.414722, 37.026157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.784004, 38.466988, 37.232117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474909, -0.620590, -0.623963,
		0.238011, -0.773173, 0.587839,
		-0.847238, 0.130660, 0.514894,
		33.529831, 38.506187, 37.386585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.780769, 37.808010, 37.004974>,  <34.122898, 38.414722, 37.026157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.780769, 37.808010, 37.004974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.489250, 38.063683, 37.103203>,  <33.314339, 38.217087, 37.162140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.489250, 38.063683, 37.103203>,  <33.780769, 37.808010, 37.004974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.489250, 38.063683, 37.103203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621387, -0.466715, -0.629329,
		-0.287642, -0.611248, 0.737318,
		-0.728793, 0.639181, 0.245575,
		33.270611, 38.255436, 37.176876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.314461, 37.361008, 37.318913>,  <33.780769, 37.808010, 37.004974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.314461, 37.361008, 37.318913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.138794, 37.690197, 37.174774>,  <33.033394, 37.887711, 37.088291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.138794, 37.690197, 37.174774>,  <33.314461, 37.361008, 37.318913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.138794, 37.690197, 37.174774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523212, -0.560344, -0.642078,
		-0.730328, -0.093444, 0.676675,
		-0.439169, 0.822972, -0.360344,
		33.007042, 37.937088, 37.066669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.760094, 37.189926, 37.350098>,  <33.314461, 37.361008, 37.318913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.760094, 37.189926, 37.350098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.716698, 37.491619, 37.091064>,  <32.690662, 37.672634, 36.935646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.716698, 37.491619, 37.091064>,  <32.760094, 37.189926, 37.350098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.716698, 37.491619, 37.091064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772754, -0.473780, -0.422355,
		-0.625365, 0.454600, 0.634238,
		-0.108487, 0.754236, -0.647580,
		32.684151, 37.717892, 36.896790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.110973, 37.450993, 37.390034>,  <32.760094, 37.189926, 37.350098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.110973, 37.450993, 37.390034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.254406, 37.546661, 37.029099>,  <32.340466, 37.604065, 36.812538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.254406, 37.546661, 37.029099>,  <32.110973, 37.450993, 37.390034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.254406, 37.546661, 37.029099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800176, -0.419077, -0.429060,
		-0.480770, 0.875882, 0.041110,
		0.358578, 0.239175, -0.902340,
		32.361980, 37.618412, 36.758396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.439671, 37.591957, 37.120701>,  <32.110973, 37.450993, 37.390034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.439671, 37.591957, 37.120701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.689598, 37.611664, 36.809013>,  <31.839554, 37.623489, 36.622002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.689598, 37.611664, 36.809013>,  <31.439671, 37.591957, 37.120701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.689598, 37.611664, 36.809013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665574, -0.488140, -0.564561,
		-0.408183, 0.871373, -0.272205,
		0.624818, 0.049271, -0.779214,
		31.877043, 37.626446, 36.575249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.048838, 37.908993, 36.581329>,  <31.439671, 37.591957, 37.120701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.048838, 37.908993, 36.581329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.352297, 37.697674, 36.428825>,  <31.534372, 37.570885, 36.337322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.352297, 37.697674, 36.428825>,  <31.048838, 37.908993, 36.581329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.352297, 37.697674, 36.428825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623974, -0.420882, -0.658419,
		0.187376, 0.737403, -0.648944,
		0.758648, -0.528296, -0.381257,
		31.579891, 37.539185, 36.314449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.948400, 37.957073, 35.931381>,  <31.048838, 37.908993, 36.581329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.948400, 37.957073, 35.931381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.192495, 37.640671, 35.948902>,  <31.338953, 37.450829, 35.959415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.192495, 37.640671, 35.948902>,  <30.948400, 37.957073, 35.931381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.192495, 37.640671, 35.948902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632758, -0.519928, -0.573840,
		0.476686, 0.322462, -0.817795,
		0.610236, -0.791007, 0.043802,
		31.375566, 37.403370, 35.962044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.165234, 37.695610, 35.174164>,  <30.948400, 37.957073, 35.931381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.165234, 37.695610, 35.174164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.187477, 37.391174, 35.432671>,  <31.200823, 37.208515, 35.587772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.187477, 37.391174, 35.432671>,  <31.165234, 37.695610, 35.174164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.187477, 37.391174, 35.432671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516668, -0.575801, -0.633646,
		0.854378, -0.298666, -0.425250,
		0.055611, -0.761086, 0.646263,
		31.204161, 37.162849, 35.626549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.863710, 37.177113, 34.851273>,  <31.165234, 37.695610, 35.174164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.863710, 37.177113, 34.851273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.912037, 36.980648, 35.196335>,  <30.941032, 36.862770, 35.403370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.912037, 36.980648, 35.196335>,  <30.863710, 37.177113, 34.851273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.912037, 36.980648, 35.196335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667747, -0.683231, -0.295483,
		0.734518, -0.540333, -0.410515,
		0.120818, -0.491158, 0.862651,
		30.948282, 36.833302, 35.455132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.136782, 36.360809, 34.681374>,  <30.863710, 37.177113, 34.851273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.136782, 36.360809, 34.681374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.964785, 36.417572, 35.038017>,  <30.861586, 36.451630, 35.252003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.964785, 36.417572, 35.038017>,  <31.136782, 36.360809, 34.681374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.964785, 36.417572, 35.038017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581066, -0.799344, -0.153010,
		0.690990, -0.583878, 0.426169,
		-0.429995, 0.141903, 0.891610,
		30.835787, 36.460144, 35.305500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.286648, 35.714108, 35.095177>,  <31.136782, 36.360809, 34.681374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.286648, 35.714108, 35.095177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.971462, 35.892601, 35.264877>,  <30.782351, 35.999699, 35.366699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.971462, 35.892601, 35.264877>,  <31.286648, 35.714108, 35.095177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.971462, 35.892601, 35.264877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522315, -0.849286, -0.076812,
		0.326034, -0.282118, 0.902281,
		-0.787965, 0.446232, 0.424250,
		30.735073, 36.026470, 35.392151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.007547, 35.231747, 35.586487>,  <31.286648, 35.714108, 35.095177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.007547, 35.231747, 35.586487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.708448, 35.490891, 35.528309>,  <30.528990, 35.646378, 35.493404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.708448, 35.490891, 35.528309>,  <31.007547, 35.231747, 35.586487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.708448, 35.490891, 35.528309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643875, -0.760991, -0.079477,
		-0.162170, 0.034219, 0.986169,
		-0.747747, 0.647859, -0.145443,
		30.484125, 35.685249, 35.484676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.483730, 35.098652, 35.997002>,  <31.007547, 35.231747, 35.586487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.483730, 35.098652, 35.997002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.287128, 35.284988, 35.702679>,  <30.169167, 35.396790, 35.526085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.287128, 35.284988, 35.702679>,  <30.483730, 35.098652, 35.997002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.287128, 35.284988, 35.702679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605396, -0.790133, -0.095847,
		-0.626035, 0.398345, 0.670375,
		-0.491505, 0.465845, -0.735807,
		30.139677, 35.424744, 35.481937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.935301, 34.656967, 35.636776>,  <30.483730, 35.098652, 35.997002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.935301, 34.656967, 35.636776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.328516, 34.724510, 35.608143>,  <30.564445, 34.765034, 35.590965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.328516, 34.724510, 35.608143>,  <29.935301, 34.656967, 35.636776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.328516, 34.724510, 35.608143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130844, 0.372229, -0.918872,
		-0.128510, 0.912652, 0.388009,
		0.983039, 0.168853, -0.071580,
		30.623428, 34.775166, 35.586670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.980963, 34.429546, 36.336323>,  <29.935301, 34.656967, 35.636776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.980963, 34.429546, 36.336323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.078079, 34.099308, 36.540062>,  <30.136349, 33.901165, 36.662308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.078079, 34.099308, 36.540062>,  <29.980963, 34.429546, 36.336323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.078079, 34.099308, 36.540062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571343, 0.546030, 0.612714,
		-0.783977, 0.142253, 0.604271,
		0.242789, -0.825600, 0.509350,
		30.150917, 33.851627, 36.692867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.887817, 34.584866, 37.038155>,  <29.980963, 34.429546, 36.336323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.887817, 34.584866, 37.038155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.175201, 34.310944, 36.989391>,  <30.347631, 34.146591, 36.960133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.175201, 34.310944, 36.989391>,  <29.887817, 34.584866, 37.038155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.175201, 34.310944, 36.989391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528538, 0.423545, 0.735702,
		-0.452179, -0.593004, 0.666244,
		0.718458, -0.684804, -0.121907,
		30.390739, 34.105503, 36.952820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.036188, 34.372410, 37.755802>,  <29.887817, 34.584866, 37.038155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.036188, 34.372410, 37.755802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.359781, 34.275284, 37.541668>,  <30.553938, 34.217007, 37.413185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.359781, 34.275284, 37.541668>,  <30.036188, 34.372410, 37.755802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.359781, 34.275284, 37.541668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583909, 0.436995, 0.684168,
		0.067811, -0.866068, 0.495305,
		0.808982, -0.242819, -0.535338,
		30.602476, 34.202438, 37.381065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.511354, 34.180595, 38.294872>,  <30.036188, 34.372410, 37.755802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.511354, 34.180595, 38.294872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.715462, 34.298271, 37.971619>,  <30.837927, 34.368877, 37.777668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.715462, 34.298271, 37.971619>,  <30.511354, 34.180595, 38.294872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.715462, 34.298271, 37.971619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683748, 0.431190, 0.588697,
		0.521647, -0.852953, 0.018872,
		0.510268, 0.294189, -0.808133,
		30.868542, 34.386528, 37.729179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.196760, 33.923080, 38.316761>,  <30.511354, 34.180595, 38.294872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.196760, 33.923080, 38.316761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.218681, 34.266689, 38.113167>,  <31.231834, 34.472855, 37.991009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.218681, 34.266689, 38.113167>,  <31.196760, 33.923080, 38.316761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.218681, 34.266689, 38.113167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622136, 0.369337, 0.690316,
		0.780989, -0.354492, -0.514191,
		0.054802, 0.859026, -0.508990,
		31.235123, 34.524399, 37.960468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.917332, 34.014889, 38.133812>,  <31.196760, 33.923080, 38.316761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.917332, 34.014889, 38.133812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.760035, 34.381710, 38.107384>,  <31.665657, 34.601803, 38.091526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.760035, 34.381710, 38.107384>,  <31.917332, 34.014889, 38.133812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.760035, 34.381710, 38.107384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700582, 0.345403, 0.624406,
		0.595437, 0.199254, -0.778301,
		-0.393243, 0.917058, -0.066072,
		31.642061, 34.656826, 38.087563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.479389, 34.456451, 38.032215>,  <31.917332, 34.014889, 38.133812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.479389, 34.456451, 38.032215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.189701, 34.703415, 38.155056>,  <32.015888, 34.851593, 38.228760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.189701, 34.703415, 38.155056>,  <32.479389, 34.456451, 38.032215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.189701, 34.703415, 38.155056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666333, 0.511953, 0.542129,
		0.177492, 0.597254, -0.782166,
		-0.724221, 0.617407, 0.307102,
		31.972435, 34.888638, 38.247185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.821270, 35.084030, 38.075371>,  <32.479389, 34.456451, 38.032215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.821270, 35.084030, 38.075371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.479416, 35.150829, 38.272026>,  <32.274303, 35.190910, 38.390018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.479416, 35.150829, 38.272026>,  <32.821270, 35.084030, 38.075371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.479416, 35.150829, 38.272026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468088, 0.657561, 0.590345,
		-0.224693, 0.734660, -0.640147,
		-0.854638, 0.166999, 0.491635,
		32.223022, 35.200928, 38.419518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.824154, 35.746555, 38.328068>,  <32.821270, 35.084030, 38.075371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.824154, 35.746555, 38.328068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.519112, 35.618210, 38.552734>,  <32.336086, 35.541203, 38.687534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.519112, 35.618210, 38.552734>,  <32.824154, 35.746555, 38.328068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.519112, 35.618210, 38.552734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169688, 0.738660, 0.652370,
		-0.624205, 0.592812, -0.508863,
		-0.762610, -0.320865, 0.561669,
		32.290329, 35.521950, 38.721233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.482662, 36.345619, 38.540894>,  <32.824154, 35.746555, 38.328068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.482662, 36.345619, 38.540894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.393379, 36.045357, 38.789631>,  <32.339809, 35.865200, 38.938873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.393379, 36.045357, 38.789631>,  <32.482662, 36.345619, 38.540894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.393379, 36.045357, 38.789631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134010, 0.608253, 0.782349,
		-0.965515, 0.257960, -0.035171,
		-0.223208, -0.750656, 0.621846,
		32.326416, 35.820160, 38.976185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.037491, 36.631088, 39.091972>,  <32.482662, 36.345619, 38.540894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.037491, 36.631088, 39.091972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.197479, 36.292667, 39.232956>,  <32.293472, 36.089615, 39.317547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.197479, 36.292667, 39.232956>,  <32.037491, 36.631088, 39.091972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.197479, 36.292667, 39.232956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359526, 0.498566, 0.788780,
		-0.843069, -0.188771, 0.503588,
		0.399970, -0.846048, 0.352457,
		32.317471, 36.038853, 39.338692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.027252, 36.777794, 39.775028>,  <32.037491, 36.631088, 39.091972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.027252, 36.777794, 39.775028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.278942, 36.470821, 39.725834>,  <32.429958, 36.286640, 39.696320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.278942, 36.470821, 39.725834>,  <32.027252, 36.777794, 39.775028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.278942, 36.470821, 39.725834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581677, 0.360039, 0.729400,
		-0.515483, -0.530496, 0.672942,
		0.629229, -0.767428, -0.122983,
		32.467712, 36.240593, 39.688938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.125153, 36.518253, 40.402889>,  <32.027252, 36.777794, 39.775028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.125153, 36.518253, 40.402889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.430893, 36.392471, 40.177719>,  <32.614338, 36.317001, 40.042618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.430893, 36.392471, 40.177719>,  <32.125153, 36.518253, 40.402889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.430893, 36.392471, 40.177719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644800, 0.374700, 0.666208,
		0.001440, -0.872193, 0.489160,
		0.764350, -0.314450, -0.562929,
		32.660198, 36.298138, 40.008839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.650143, 36.272617, 40.825607>,  <32.125153, 36.518253, 40.402889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.650143, 36.272617, 40.825607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.843811, 36.354176, 40.485252>,  <32.960011, 36.403111, 40.281040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.843811, 36.354176, 40.485252>,  <32.650143, 36.272617, 40.825607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.843811, 36.354176, 40.485252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703276, 0.487877, 0.517087,
		0.520562, -0.848764, 0.092815,
		0.484167, 0.203901, -0.850885,
		32.989063, 36.415344, 40.229988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.417255, 35.993275, 40.917591>,  <32.650143, 36.272617, 40.825607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.417255, 35.993275, 40.917591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.442623, 36.279884, 40.639721>,  <33.457844, 36.451851, 40.473000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.442623, 36.279884, 40.639721>,  <33.417255, 35.993275, 40.917591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.442623, 36.279884, 40.639721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599492, 0.529143, 0.600514,
		0.797865, -0.454532, -0.395995,
		0.063415, 0.716525, -0.694673,
		33.461647, 36.494843, 40.431320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.048992, 36.231850, 40.862923>,  <33.417255, 35.993275, 40.917591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.048992, 36.231850, 40.862923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.831848, 36.534958, 40.718098>,  <33.701561, 36.716824, 40.631203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.831848, 36.534958, 40.718098>,  <34.048992, 36.231850, 40.862923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.831848, 36.534958, 40.718098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528653, 0.643313, 0.553782,
		0.652558, 0.109221, -0.749826,
		-0.542857, 0.757773, -0.362059,
		33.668991, 36.762291, 40.609482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.479298, 36.713223, 40.878044>,  <34.048992, 36.231850, 40.862923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.479298, 36.713223, 40.878044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.132214, 36.908550, 40.840919>,  <33.923962, 37.025749, 40.818645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.132214, 36.908550, 40.840919>,  <34.479298, 36.713223, 40.878044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.132214, 36.908550, 40.840919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360339, 0.746592, 0.559245,
		0.342386, 0.451820, -0.823790,
		-0.867714, 0.488322, -0.092814,
		33.871899, 37.055046, 40.813076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.692921, 37.368561, 40.856762>,  <34.479298, 36.713223, 40.878044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.692921, 37.368561, 40.856762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.306412, 37.385651, 40.958336>,  <34.074505, 37.395905, 41.019279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.306412, 37.385651, 40.958336>,  <34.692921, 37.368561, 40.856762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.306412, 37.385651, 40.958336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202526, 0.735134, 0.646963,
		-0.159036, 0.676574, -0.718996,
		-0.966277, 0.042725, 0.253936,
		34.016529, 37.398468, 41.034515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.395630, 38.135864, 40.742100>,  <34.692921, 37.368561, 40.856762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.395630, 38.135864, 40.742100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.196884, 37.924820, 41.017708>,  <34.077637, 37.798195, 41.183075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.196884, 37.924820, 41.017708>,  <34.395630, 38.135864, 40.742100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.196884, 37.924820, 41.017708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270467, 0.660274, 0.700632,
		-0.824602, 0.534480, -0.185369,
		-0.496868, -0.527606, 0.689023,
		34.047825, 37.766537, 41.224415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.000446, 38.655663, 41.004723>,  <34.395630, 38.135864, 40.742100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.000446, 38.655663, 41.004723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.030239, 38.336369, 41.243809>,  <34.048115, 38.144791, 41.387260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.030239, 38.336369, 41.243809>,  <34.000446, 38.655663, 41.004723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.030239, 38.336369, 41.243809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218756, 0.597861, 0.771173,
		-0.972933, 0.073319, 0.219147,
		0.074477, -0.798240, 0.597718,
		34.052582, 38.096897, 41.423122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.670856, 38.853020, 41.557556>,  <34.000446, 38.655663, 41.004723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.670856, 38.853020, 41.557556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.878967, 38.543804, 41.702728>,  <34.003834, 38.358273, 41.789829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.878967, 38.543804, 41.702728>,  <33.670856, 38.853020, 41.557556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.878967, 38.543804, 41.702728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124949, 0.489309, 0.863113,
		-0.844806, -0.403713, 0.351168,
		0.520280, -0.773041, 0.362927,
		34.035049, 38.311893, 41.811607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.494728, 38.808048, 42.325783>,  <33.670856, 38.853020, 41.557556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.494728, 38.808048, 42.325783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.825253, 38.584858, 42.295105>,  <34.023567, 38.450943, 42.276699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.825253, 38.584858, 42.295105>,  <33.494728, 38.808048, 42.325783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.825253, 38.584858, 42.295105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388658, 0.466340, 0.794652,
		-0.407630, -0.686433, 0.602202,
		0.826306, -0.557975, -0.076694,
		34.073143, 38.417465, 42.272099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.661037, 38.563187, 42.963181>,  <33.494728, 38.808048, 42.325783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.661037, 38.563187, 42.963181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.000984, 38.534077, 42.754402>,  <34.204952, 38.516609, 42.629135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.000984, 38.534077, 42.754402>,  <33.661037, 38.563187, 42.963181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.000984, 38.534077, 42.754402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509607, 0.365780, 0.778785,
		0.134240, -0.927852, 0.347952,
		0.849871, -0.072775, -0.521942,
		34.255947, 38.512245, 42.597820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.186699, 38.209877, 43.388222>,  <33.661037, 38.563187, 42.963181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.186699, 38.209877, 43.388222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.425533, 38.391350, 43.123596>,  <34.568832, 38.500233, 42.964821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.425533, 38.391350, 43.123596>,  <34.186699, 38.209877, 43.388222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.425533, 38.391350, 43.123596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525911, 0.401355, 0.749888,
		0.605731, -0.795669, 0.001047,
		0.597082, 0.453680, -0.661564,
		34.604656, 38.527454, 42.925125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.840771, 38.207912, 43.697582>,  <34.186699, 38.209877, 43.388222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.840771, 38.207912, 43.697582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.869526, 38.496490, 43.422089>,  <34.886780, 38.669636, 43.256794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.869526, 38.496490, 43.422089>,  <34.840771, 38.207912, 43.697582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.869526, 38.496490, 43.422089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515092, 0.564458, 0.645033,
		0.854115, -0.401131, -0.331031,
		0.071890, 0.721444, -0.688731,
		34.891094, 38.712925, 43.215469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.444607, 38.323254, 43.719780>,  <34.840771, 38.207912, 43.697582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.444607, 38.323254, 43.719780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.265556, 38.647003, 43.567707>,  <35.158127, 38.841255, 43.476463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.265556, 38.647003, 43.567707>,  <35.444607, 38.323254, 43.719780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.265556, 38.647003, 43.567707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497712, 0.578719, 0.646040,
		0.742911, 0.099960, -0.661885,
		-0.447623, 0.809378, -0.380185,
		35.131268, 38.889816, 43.453651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.028316, 38.795139, 43.561092>,  <35.444607, 38.323254, 43.719780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.028316, 38.795139, 43.561092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.696682, 39.018272, 43.576279>,  <35.497700, 39.152153, 43.585388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.696682, 39.018272, 43.576279>,  <36.028316, 38.795139, 43.561092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.696682, 39.018272, 43.576279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447520, 0.621368, 0.643138,
		0.335174, 0.550205, -0.764809,
		-0.829086, 0.557831, 0.037961,
		35.447956, 39.185623, 43.587666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.551632, 38.687195, 42.965736>,  <36.028316, 38.795139, 43.561092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.551632, 38.687195, 42.965736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.902981, 38.506020, 43.026810>,  <37.113789, 38.397316, 43.063454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.902981, 38.506020, 43.026810>,  <36.551632, 38.687195, 42.965736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.902981, 38.506020, 43.026810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305116, -0.777219, -0.550304,
		0.367923, 0.436785, -0.820885,
		0.878372, -0.452934, 0.152687,
		37.166492, 38.370140, 43.072617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.842678, 38.506271, 42.304981>,  <36.551632, 38.687195, 42.965736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.842678, 38.506271, 42.304981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.046852, 38.257782, 42.542816>,  <37.169357, 38.108688, 42.685516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.046852, 38.257782, 42.542816>,  <36.842678, 38.506271, 42.304981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.046852, 38.257782, 42.542816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233816, -0.765666, -0.599238,
		0.827516, 0.166850, -0.536077,
		0.510439, -0.621222, 0.594588,
		37.199986, 38.071415, 42.721191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.007019, 38.090363, 41.891117>,  <36.842678, 38.506271, 42.304981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.007019, 38.090363, 41.891117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.084312, 37.871983, 42.217209>,  <37.130688, 37.740955, 42.412865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.084312, 37.871983, 42.217209>,  <37.007019, 38.090363, 41.891117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.084312, 37.871983, 42.217209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175403, -0.836728, -0.518767,
		0.965346, -0.042750, -0.257447,
		0.193236, -0.545947, 0.815231,
		37.142284, 37.708199, 42.461777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.460030, 37.485027, 41.653557>,  <37.007019, 38.090363, 41.891117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.460030, 37.485027, 41.653557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.250820, 37.365807, 41.972958>,  <37.125294, 37.294273, 42.164597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.250820, 37.365807, 41.972958>,  <37.460030, 37.485027, 41.653557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.250820, 37.365807, 41.972958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293795, -0.816399, -0.497169,
		0.800079, -0.494630, 0.339434,
		-0.523028, -0.298050, 0.798503,
		37.093910, 37.276390, 42.212509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.634140, 36.866055, 41.724495>,  <37.460030, 37.485027, 41.653557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.634140, 36.866055, 41.724495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.286533, 36.914417, 41.916409>,  <37.077969, 36.943436, 42.031555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.286533, 36.914417, 41.916409>,  <37.634140, 36.866055, 41.724495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.286533, 36.914417, 41.916409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373357, -0.796546, -0.475519,
		0.324679, -0.592365, 0.737352,
		-0.869015, 0.120904, 0.479785,
		37.025829, 36.950687, 42.060345>
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
