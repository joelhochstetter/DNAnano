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
	<24.142487, 35.294571, 35.186478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.166098, 35.064552, 34.860085>,  <24.180265, 34.926540, 34.664246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.166098, 35.064552, 34.860085>,  <24.142487, 35.294571, 35.186478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.166098, 35.064552, 34.860085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494067, 0.727107, -0.476669,
		0.867418, -0.375015, 0.327033,
		0.059030, -0.575048, -0.815987,
		24.183807, 34.892036, 34.615288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.801945, 35.015396, 35.070511>,  <24.142487, 35.294571, 35.186478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.801945, 35.015396, 35.070511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.641327, 35.057495, 34.706604>,  <24.544956, 35.082756, 34.488258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.641327, 35.057495, 34.706604>,  <24.801945, 35.015396, 35.070511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.641327, 35.057495, 34.706604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685916, 0.692799, -0.222596,
		0.606861, -0.713410, -0.350381,
		-0.401546, 0.105247, -0.909771,
		24.520863, 35.089069, 34.433674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.368702, 35.020950, 34.529121>,  <24.801945, 35.015396, 35.070511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.368702, 35.020950, 34.529121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.047085, 35.205902, 34.379601>,  <24.854115, 35.316872, 34.289890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.047085, 35.205902, 34.379601>,  <25.368702, 35.020950, 34.529121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.047085, 35.205902, 34.379601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571266, 0.775060, -0.270070,
		0.164841, -0.430685, -0.887321,
		-0.804042, 0.462377, -0.373797,
		24.805872, 35.344616, 34.267460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.464254, 35.170639, 33.784981>,  <25.368702, 35.020950, 34.529121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.464254, 35.170639, 33.784981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.240074, 35.437767, 33.980904>,  <25.105566, 35.598042, 34.098457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.240074, 35.437767, 33.980904>,  <25.464254, 35.170639, 33.784981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.240074, 35.437767, 33.980904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533968, 0.743460, -0.402673,
		-0.633066, 0.035864, -0.773266,
		-0.560451, 0.667818, 0.489810,
		25.071939, 35.638111, 34.127846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.113659, 35.630558, 33.331867>,  <25.464254, 35.170639, 33.784981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.113659, 35.630558, 33.331867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.143631, 35.831150, 33.676636>,  <25.161613, 35.951504, 33.883495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.143631, 35.831150, 33.676636>,  <25.113659, 35.630558, 33.331867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.143631, 35.831150, 33.676636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414996, 0.770261, -0.484228,
		-0.906733, 0.393975, -0.150397,
		0.074928, 0.501479, 0.861919,
		25.166109, 35.981594, 33.935211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.817732, 36.271965, 33.185505>,  <25.113659, 35.630558, 33.331867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.817732, 36.271965, 33.185505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.095005, 36.269581, 33.473801>,  <25.261370, 36.268150, 33.646778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.095005, 36.269581, 33.473801>,  <24.817732, 36.271965, 33.185505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.095005, 36.269581, 33.473801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357825, 0.870877, -0.336949,
		-0.625666, 0.491465, 0.605809,
		0.693184, -0.005956, 0.720736,
		25.302959, 36.267796, 33.690022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.714834, 36.911907, 33.611629>,  <24.817732, 36.271965, 33.185505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.714834, 36.911907, 33.611629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.096161, 36.797810, 33.651279>,  <25.324957, 36.729351, 33.675068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.096161, 36.797810, 33.651279>,  <24.714834, 36.911907, 33.611629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.096161, 36.797810, 33.651279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301865, 0.891303, -0.338314,
		0.008156, 0.352441, 0.935798,
		0.953316, -0.285244, 0.099120,
		25.382156, 36.712234, 33.681015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.107033, 37.490135, 33.801327>,  <24.714834, 36.911907, 33.611629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.107033, 37.490135, 33.801327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.406483, 37.263729, 33.663231>,  <25.586153, 37.127888, 33.580372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.406483, 37.263729, 33.663231>,  <25.107033, 37.490135, 33.801327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.406483, 37.263729, 33.663231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364487, 0.786339, -0.498819,
		0.553815, 0.247592, 0.794976,
		0.748624, -0.566012, -0.345243,
		25.631069, 37.093925, 33.559658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.712936, 37.901836, 33.897732>,  <25.107033, 37.490135, 33.801327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.712936, 37.901836, 33.897732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.782545, 37.616074, 33.626633>,  <25.824310, 37.444614, 33.463974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.782545, 37.616074, 33.626633>,  <25.712936, 37.901836, 33.897732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.782545, 37.616074, 33.626633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480853, 0.662262, -0.574620,
		0.859358, -0.225899, 0.458774,
		0.174023, -0.714408, -0.677745,
		25.834751, 37.401752, 33.423309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.411612, 37.859127, 33.690338>,  <25.712936, 37.901836, 33.897732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.411612, 37.859127, 33.690338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.205301, 37.705879, 33.383823>,  <26.081516, 37.613930, 33.199913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.205301, 37.705879, 33.383823>,  <26.411612, 37.859127, 33.690338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.205301, 37.705879, 33.383823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456028, 0.634424, -0.624135,
		0.725271, -0.671360, -0.152506,
		-0.515773, -0.383120, -0.766288,
		26.050570, 37.590942, 33.153938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.840878, 37.952290, 33.198399>,  <26.411612, 37.859127, 33.690338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.840878, 37.952290, 33.198399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.509499, 37.869308, 32.990307>,  <26.310671, 37.819519, 32.865452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.509499, 37.869308, 32.990307>,  <26.840878, 37.952290, 33.198399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.509499, 37.869308, 32.990307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308761, 0.605793, -0.733268,
		0.467270, -0.768100, -0.437814,
		-0.828447, -0.207455, -0.520228,
		26.260963, 37.807072, 32.834240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.101429, 37.983608, 32.495270>,  <26.840878, 37.952290, 33.198399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.101429, 37.983608, 32.495270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.703384, 37.990620, 32.456390>,  <26.464558, 37.994827, 32.433064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.703384, 37.990620, 32.456390>,  <27.101429, 37.983608, 32.495270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.703384, 37.990620, 32.456390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092268, 0.516113, -0.851536,
		0.035236, -0.856341, -0.515207,
		-0.995111, 0.017532, -0.097199,
		26.404852, 37.995880, 32.427231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.022932, 37.742283, 31.778456>,  <27.101429, 37.983608, 32.495270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.022932, 37.742283, 31.778456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.708946, 37.940559, 31.927116>,  <26.520555, 38.059525, 32.016312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.708946, 37.940559, 31.927116>,  <27.022932, 37.742283, 31.778456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.708946, 37.940559, 31.927116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057310, 0.539214, -0.840216,
		-0.616886, -0.680838, -0.394856,
		-0.784963, 0.495689, 0.371652,
		26.473457, 38.089268, 32.038612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.550634, 37.844490, 31.189426>,  <27.022932, 37.742283, 31.778456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.550634, 37.844490, 31.189426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.428043, 38.126938, 31.444757>,  <26.354488, 38.296406, 31.597956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.428043, 38.126938, 31.444757>,  <26.550634, 37.844490, 31.189426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.428043, 38.126938, 31.444757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082404, 0.648401, -0.756827,
		-0.948304, -0.284552, -0.140534,
		-0.306478, 0.706121, 0.638329,
		26.336100, 38.338776, 31.636255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.916273, 38.135277, 30.913242>,  <26.550634, 37.844490, 31.189426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.916273, 38.135277, 30.913242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.055109, 38.428032, 31.147802>,  <26.138411, 38.603687, 31.288538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.055109, 38.428032, 31.147802>,  <25.916273, 38.135277, 30.913242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.055109, 38.428032, 31.147802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058738, 0.641010, -0.765281,
		-0.935990, 0.231178, 0.265479,
		0.347091, 0.731890, 0.586400,
		26.159237, 38.647598, 31.323723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.507128, 38.712780, 30.691427>,  <25.916273, 38.135277, 30.913242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.507128, 38.712780, 30.691427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.780094, 38.898121, 30.917564>,  <25.943874, 39.009327, 31.053247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.780094, 38.898121, 30.917564>,  <25.507128, 38.712780, 30.691427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.780094, 38.898121, 30.917564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110046, 0.699484, -0.706124,
		-0.722633, 0.544084, 0.426349,
		0.682415, 0.463351, 0.565345,
		25.984819, 39.037125, 31.087168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.357281, 39.443806, 30.887989>,  <25.507128, 38.712780, 30.691427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.357281, 39.443806, 30.887989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.754234, 39.408916, 30.922777>,  <25.992407, 39.387981, 30.943649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.754234, 39.408916, 30.922777>,  <25.357281, 39.443806, 30.887989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.754234, 39.408916, 30.922777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123171, 0.707962, -0.695427,
		-0.000912, 0.700844, 0.713314,
		0.992385, -0.087225, 0.086970,
		26.051950, 39.382748, 30.948868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.588741, 40.125546, 30.869528>,  <25.357281, 39.443806, 30.887989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.588741, 40.125546, 30.869528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.917927, 39.927185, 30.758667>,  <26.115438, 39.808170, 30.692150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.917927, 39.927185, 30.758667>,  <25.588741, 40.125546, 30.869528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.917927, 39.927185, 30.758667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208919, 0.717862, -0.664099,
		0.528284, 0.488627, 0.694378,
		0.822964, -0.495901, -0.277151,
		26.164816, 39.778416, 30.675522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.072979, 40.679234, 30.812702>,  <25.588741, 40.125546, 30.869528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.072979, 40.679234, 30.812702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.280659, 40.396538, 30.620476>,  <26.405266, 40.226921, 30.505140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.280659, 40.396538, 30.620476>,  <26.072979, 40.679234, 30.812702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.280659, 40.396538, 30.620476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117837, 0.616122, -0.778786,
		0.846491, 0.347716, 0.403171,
		0.519199, -0.706744, -0.480568,
		26.436419, 40.184513, 30.476305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.739594, 40.981922, 30.652689>,  <26.072979, 40.679234, 30.812702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.739594, 40.981922, 30.652689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.650778, 40.679413, 30.406519>,  <26.597488, 40.497906, 30.258818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.650778, 40.679413, 30.406519>,  <26.739594, 40.981922, 30.652689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.650778, 40.679413, 30.406519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191665, 0.585010, -0.788053,
		0.956014, -0.292934, 0.015057,
		-0.222039, -0.756275, -0.615423,
		26.584166, 40.452530, 30.221891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.190569, 40.938274, 30.092695>,  <26.739594, 40.981922, 30.652689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.190569, 40.938274, 30.092695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.889759, 40.725792, 29.936602>,  <26.709272, 40.598305, 29.842945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.889759, 40.725792, 29.936602>,  <27.190569, 40.938274, 30.092695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.889759, 40.725792, 29.936602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060322, 0.534088, -0.843274,
		0.656368, -0.657703, -0.369605,
		-0.752026, -0.531202, -0.390233,
		26.664152, 40.566433, 29.819532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.388624, 40.943657, 29.448586>,  <27.190569, 40.938274, 30.092695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.388624, 40.943657, 29.448586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.995054, 40.872707, 29.456903>,  <26.758913, 40.830135, 29.461895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.995054, 40.872707, 29.456903>,  <27.388624, 40.943657, 29.448586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.995054, 40.872707, 29.456903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109708, 0.508429, -0.854087,
		0.140922, -0.842637, -0.519715,
		-0.983924, -0.177376, 0.020795,
		26.699877, 40.819496, 29.463142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.231243, 40.600124, 28.821739>,  <27.388624, 40.943657, 29.448586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.231243, 40.600124, 28.821739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.890778, 40.763798, 28.953245>,  <26.686499, 40.862003, 29.032148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.890778, 40.763798, 28.953245>,  <27.231243, 40.600124, 28.821739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.890778, 40.763798, 28.953245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033095, 0.583256, -0.811614,
		-0.523854, -0.701698, -0.482905,
		-0.851165, 0.409185, 0.328764,
		26.635427, 40.886555, 29.051874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.942341, 40.862236, 28.232271>,  <27.231243, 40.600124, 28.821739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.942341, 40.862236, 28.232271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.716053, 41.036537, 28.512295>,  <26.580280, 41.141117, 28.680309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.716053, 41.036537, 28.512295>,  <26.942341, 40.862236, 28.232271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.716053, 41.036537, 28.512295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173498, 0.767062, -0.617668,
		-0.806140, -0.470884, -0.358338,
		-0.565718, 0.435756, 0.700057,
		26.546337, 41.167263, 28.722311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.391373, 41.207447, 27.893751>,  <26.942341, 40.862236, 28.232271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.391373, 41.207447, 27.893751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.408398, 41.408592, 28.239079>,  <26.418613, 41.529278, 28.446276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.408398, 41.408592, 28.239079>,  <26.391373, 41.207447, 27.893751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.408398, 41.408592, 28.239079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144592, 0.858105, -0.492696,
		-0.988576, -0.103858, 0.109233,
		0.042563, 0.502861, 0.863318,
		26.421167, 41.559452, 28.498074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.849838, 41.677261, 27.893183>,  <26.391373, 41.207447, 27.893751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.849838, 41.677261, 27.893183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.114565, 41.809994, 28.162073>,  <26.273401, 41.889633, 28.323406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.114565, 41.809994, 28.162073>,  <25.849838, 41.677261, 27.893183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.114565, 41.809994, 28.162073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124421, 0.835644, -0.534994,
		-0.739268, 0.437707, 0.511758,
		0.661818, 0.331830, 0.672225,
		26.313110, 41.909542, 28.363741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.684566, 42.350163, 28.130085>,  <25.849838, 41.677261, 27.893183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.684566, 42.350163, 28.130085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.079899, 42.294182, 28.154146>,  <26.317099, 42.260593, 28.168583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.079899, 42.294182, 28.154146>,  <25.684566, 42.350163, 28.130085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.079899, 42.294182, 28.154146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141530, 0.697546, -0.702424,
		0.056347, 0.702739, 0.709213,
		0.988329, -0.139955, 0.060154,
		26.376398, 42.252197, 28.172192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.093515, 42.987389, 28.094093>,  <25.684566, 42.350163, 28.130085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.093515, 42.987389, 28.094093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.360653, 42.726208, 27.951189>,  <26.520935, 42.569500, 27.865446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.360653, 42.726208, 27.951189>,  <26.093515, 42.987389, 28.094093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.360653, 42.726208, 27.951189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198586, 0.618912, -0.759942,
		0.717320, 0.436575, 0.543004,
		0.667844, -0.652954, -0.357260,
		26.561007, 42.530323, 27.844011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.621861, 43.062443, 27.606791>,  <26.093515, 42.987389, 28.094093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.621861, 43.062443, 27.606791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.695538, 43.135040, 27.993185>,  <26.739744, 43.178600, 28.225021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.695538, 43.135040, 27.993185>,  <26.621861, 43.062443, 27.606791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.695538, 43.135040, 27.993185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217377, -0.965989, 0.140044,
		0.958551, 0.184188, -0.217382,
		0.184194, 0.181493, 0.965988,
		26.750795, 43.189487, 28.282982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.180405, 42.663532, 27.804476>,  <26.621861, 43.062443, 27.606791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.180405, 42.663532, 27.804476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.987597, 42.736317, 28.147299>,  <26.871912, 42.779987, 28.352993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.987597, 42.736317, 28.147299>,  <27.180405, 42.663532, 27.804476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.987597, 42.736317, 28.147299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029069, -0.980978, 0.191928,
		0.875677, 0.067600, 0.478142,
		-0.482021, 0.181966, 0.857055,
		26.842991, 42.790905, 28.404415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.536629, 42.305164, 28.434568>,  <27.180405, 42.663532, 27.804476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.536629, 42.305164, 28.434568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.144547, 42.361237, 28.490488>,  <26.909296, 42.394878, 28.524040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.144547, 42.361237, 28.490488>,  <27.536629, 42.305164, 28.434568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.144547, 42.361237, 28.490488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072987, -0.912276, 0.403020,
		0.184029, 0.384840, 0.904451,
		-0.980207, 0.140180, 0.139797,
		26.850485, 42.403290, 28.532427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.341824, 42.220345, 29.131153>,  <27.536629, 42.305164, 28.434568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.341824, 42.220345, 29.131153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.028816, 42.127102, 28.900215>,  <26.841011, 42.071156, 28.761652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.028816, 42.127102, 28.900215>,  <27.341824, 42.220345, 29.131153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.028816, 42.127102, 28.900215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017787, -0.935263, 0.353505,
		-0.622372, 0.266356, 0.736008,
		-0.782519, -0.233103, -0.577345,
		26.794060, 42.057171, 28.727013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.649097, 42.901169, 29.528194>,  <27.341824, 42.220345, 29.131153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.649097, 42.901169, 29.528194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.861223, 43.230064, 29.610836>,  <27.988499, 43.427402, 29.660421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.861223, 43.230064, 29.610836>,  <27.649097, 42.901169, 29.528194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.861223, 43.230064, 29.610836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094012, -0.185158, 0.978201,
		0.842572, -0.538178, -0.020892,
		0.530315, 0.822241, 0.206604,
		28.020317, 43.476738, 29.672817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.191755, 42.589062, 29.935102>,  <27.649097, 42.901169, 29.528194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.191755, 42.589062, 29.935102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.130960, 42.964790, 30.058117>,  <28.094484, 43.190228, 30.131926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.130960, 42.964790, 30.058117>,  <28.191755, 42.589062, 29.935102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.130960, 42.964790, 30.058117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239359, -0.266907, 0.933524,
		0.958962, 0.215495, -0.184268,
		-0.151987, 0.939320, 0.307534,
		28.085365, 43.246586, 30.150377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.846642, 42.820000, 30.294506>,  <28.191755, 42.589062, 29.935102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.846642, 42.820000, 30.294506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.481485, 42.949474, 30.393993>,  <28.262392, 43.027161, 30.453686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.481485, 42.949474, 30.393993>,  <28.846642, 42.820000, 30.294506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.481485, 42.949474, 30.393993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100252, -0.412851, 0.905264,
		0.395706, 0.851340, 0.344437,
		-0.912889, 0.323688, 0.248716,
		28.207619, 43.046581, 30.468609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.921843, 42.790394, 31.027971>,  <28.846642, 42.820000, 30.294506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.921843, 42.790394, 31.027971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.537256, 42.891022, 30.983620>,  <28.306503, 42.951397, 30.957008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.537256, 42.891022, 30.983620>,  <28.921843, 42.790394, 31.027971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.537256, 42.891022, 30.983620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180745, -0.274522, 0.944441,
		0.207152, 0.928090, 0.309413,
		-0.961467, 0.251567, -0.110880,
		28.248816, 42.966492, 30.950356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.731604, 43.278568, 31.614141>,  <28.921843, 42.790394, 31.027971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.731604, 43.278568, 31.614141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.394667, 43.119591, 31.468538>,  <28.192505, 43.024204, 31.381176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.394667, 43.119591, 31.468538>,  <28.731604, 43.278568, 31.614141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.394667, 43.119591, 31.468538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365420, -0.075269, 0.927795,
		-0.396144, 0.914535, -0.081832,
		-0.842341, -0.397444, -0.364006,
		28.141964, 43.000359, 31.359337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.087101, 43.527744, 32.171112>,  <28.731604, 43.278568, 31.614141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.087101, 43.527744, 32.171112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.957504, 43.207226, 31.969936>,  <27.879745, 43.014915, 31.849232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.957504, 43.207226, 31.969936>,  <28.087101, 43.527744, 32.171112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.957504, 43.207226, 31.969936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495968, -0.308841, 0.811562,
		-0.805633, 0.512381, -0.297356,
		-0.323993, -0.801300, -0.502937,
		27.860306, 42.966835, 31.819056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.378799, 43.354427, 32.308384>,  <28.087101, 43.527744, 32.171112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.378799, 43.354427, 32.308384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.486063, 42.990261, 32.182377>,  <27.550421, 42.771763, 32.106773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.486063, 42.990261, 32.182377>,  <27.378799, 43.354427, 32.308384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.486063, 42.990261, 32.182377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335634, -0.394793, 0.855271,
		-0.903017, -0.123620, -0.411434,
		0.268160, -0.910416, -0.315013,
		27.566511, 42.717136, 32.087872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.884611, 42.938747, 32.458202>,  <27.378799, 43.354427, 32.308384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.884611, 42.938747, 32.458202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.172993, 42.664055, 32.421043>,  <27.346022, 42.499241, 32.398750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.172993, 42.664055, 32.421043>,  <26.884611, 42.938747, 32.458202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.172993, 42.664055, 32.421043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326870, -0.455195, 0.828223,
		-0.611049, -0.566747, -0.552646,
		0.720954, -0.686728, -0.092894,
		27.389278, 42.458038, 32.393177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.619816, 42.330109, 32.666996>,  <26.884611, 42.938747, 32.458202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.619816, 42.330109, 32.666996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.003553, 42.217682, 32.677296>,  <27.233795, 42.150227, 32.683475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.003553, 42.217682, 32.677296>,  <26.619816, 42.330109, 32.666996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.003553, 42.217682, 32.677296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221816, -0.694403, 0.684545,
		-0.174518, -0.662426, -0.728516,
		0.959344, -0.281062, 0.025751,
		27.291357, 42.133362, 32.685020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.651463, 41.624981, 32.796944>,  <26.619816, 42.330109, 32.666996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.651463, 41.624981, 32.796944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.025467, 41.745628, 32.871544>,  <27.249868, 41.818016, 32.916306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.025467, 41.745628, 32.871544>,  <26.651463, 41.624981, 32.796944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.025467, 41.745628, 32.871544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018404, -0.566481, 0.823869,
		0.354147, -0.766892, -0.535216,
		0.935009, 0.301620, 0.186504,
		27.305969, 41.836113, 32.927494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.131227, 41.013950, 32.767502>,  <26.651463, 41.624981, 32.796944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.131227, 41.013950, 32.767502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.289423, 41.293133, 33.006313>,  <27.384340, 41.460644, 33.149601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.289423, 41.293133, 33.006313>,  <27.131227, 41.013950, 32.767502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.289423, 41.293133, 33.006313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007982, -0.647391, 0.762116,
		0.918437, -0.306172, -0.250464,
		0.395486, 0.697957, 0.597032,
		27.408070, 41.502522, 33.185425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.705708, 40.634212, 33.041019>,  <27.131227, 41.013950, 32.767502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.705708, 40.634212, 33.041019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.620743, 40.952164, 33.268368>,  <27.569763, 41.142933, 33.404778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.620743, 40.952164, 33.268368>,  <27.705708, 40.634212, 33.041019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.620743, 40.952164, 33.268368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035831, -0.574922, 0.817423,
		0.976523, 0.193997, 0.093640,
		-0.212414, 0.794877, 0.568375,
		27.557018, 41.190628, 33.438881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.254248, 40.685562, 33.415157>,  <27.705708, 40.634212, 33.041019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.254248, 40.685562, 33.415157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.993069, 40.894562, 33.634483>,  <27.836361, 41.019962, 33.766079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.993069, 40.894562, 33.634483>,  <28.254248, 40.685562, 33.415157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.993069, 40.894562, 33.634483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120327, -0.643191, 0.756192,
		0.747785, 0.559730, 0.357098,
		-0.652946, 0.522501, 0.548320,
		27.797184, 41.051311, 33.798981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.460865, 40.682716, 34.191463>,  <28.254248, 40.685562, 33.415157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.460865, 40.682716, 34.191463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.070616, 40.764771, 34.160282>,  <27.836466, 40.814003, 34.141575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.070616, 40.764771, 34.160282>,  <28.460865, 40.682716, 34.191463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.070616, 40.764771, 34.160282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189124, -0.605813, 0.772802,
		0.111305, 0.768707, 0.629842,
		-0.975625, 0.205135, -0.077951,
		27.777929, 40.826309, 34.136898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.284906, 40.872383, 34.907646>,  <28.460865, 40.682716, 34.191463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.284906, 40.872383, 34.907646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.936447, 40.771572, 34.739082>,  <27.727371, 40.711086, 34.637943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.936447, 40.771572, 34.739082>,  <28.284906, 40.872383, 34.907646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.936447, 40.771572, 34.739082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024503, -0.834839, 0.549948,
		-0.490410, 0.489411, 0.721093,
		-0.871147, -0.252031, -0.421405,
		27.675102, 40.695961, 34.612659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.789837, 40.767803, 35.494396>,  <28.284906, 40.872383, 34.907646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.789837, 40.767803, 35.494396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.618101, 40.568890, 35.192833>,  <27.515060, 40.449543, 35.011894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.618101, 40.568890, 35.192833>,  <27.789837, 40.767803, 35.494396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.618101, 40.568890, 35.192833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187751, -0.767377, 0.613093,
		-0.883412, 0.404772, 0.236100,
		-0.429340, -0.497285, -0.753906,
		27.489300, 40.419704, 34.966660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.129709, 40.282703, 35.776230>,  <27.789837, 40.767803, 35.494396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.129709, 40.282703, 35.776230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.228842, 40.127384, 35.421196>,  <27.288321, 40.034191, 35.208176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.228842, 40.127384, 35.421196>,  <27.129709, 40.282703, 35.776230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.228842, 40.127384, 35.421196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336428, -0.893644, 0.297013,
		-0.908513, 0.224999, -0.352107,
		0.247831, -0.388299, -0.887583,
		27.303192, 40.010895, 35.154922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.712626, 39.752495, 35.727669>,  <27.129709, 40.282703, 35.776230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.712626, 39.752495, 35.727669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.965816, 39.659321, 35.432350>,  <27.117731, 39.603416, 35.255157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.965816, 39.659321, 35.432350>,  <26.712626, 39.752495, 35.727669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.965816, 39.659321, 35.432350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040052, -0.962236, 0.269254,
		-0.773134, -0.140861, -0.618402,
		0.632976, -0.232938, -0.738296,
		27.155710, 39.589439, 35.210861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.455339, 39.126896, 35.441799>,  <26.712626, 39.752495, 35.727669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.455339, 39.126896, 35.441799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.843117, 39.152130, 35.346973>,  <27.075783, 39.167271, 35.290077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.843117, 39.152130, 35.346973>,  <26.455339, 39.126896, 35.441799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.843117, 39.152130, 35.346973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103208, -0.981568, 0.160846,
		-0.222549, -0.180398, -0.958086,
		0.969443, 0.063087, -0.237065,
		27.133949, 39.171055, 35.275852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.574665, 38.613636, 34.922127>,  <26.455339, 39.126896, 35.441799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.574665, 38.613636, 34.922127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.931318, 38.691643, 35.085571>,  <27.145309, 38.738445, 35.183640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.931318, 38.691643, 35.085571>,  <26.574665, 38.613636, 34.922127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.931318, 38.691643, 35.085571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153436, -0.979230, 0.132534,
		0.425972, -0.055475, -0.903034,
		0.891631, 0.195014, 0.408613,
		27.198807, 38.750149, 35.208157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.045742, 38.081425, 34.514187>,  <26.574665, 38.613636, 34.922127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.045742, 38.081425, 34.514187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.236738, 38.202438, 34.844151>,  <27.351336, 38.275047, 35.042130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.236738, 38.202438, 34.844151>,  <27.045742, 38.081425, 34.514187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.236738, 38.202438, 34.844151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245948, -0.947341, 0.205073,
		0.843513, 0.104965, -0.526753,
		0.477489, 0.302536, 0.824910,
		27.379986, 38.293198, 35.091625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.821934, 37.866928, 34.464500>,  <27.045742, 38.081425, 34.514187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.821934, 37.866928, 34.464500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.699345, 37.874908, 34.845169>,  <27.625792, 37.879696, 35.073570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.699345, 37.874908, 34.845169>,  <27.821934, 37.866928, 34.464500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.699345, 37.874908, 34.845169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317033, -0.940559, 0.121818,
		0.897532, 0.339045, 0.281929,
		-0.306473, 0.019954, 0.951670,
		27.607403, 37.880894, 35.130669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.145576, 37.287392, 34.555180>,  <27.821934, 37.866928, 34.464500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.145576, 37.287392, 34.555180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.901154, 37.349510, 34.865662>,  <27.754499, 37.386780, 35.051952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.901154, 37.349510, 34.865662>,  <28.145576, 37.287392, 34.555180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.901154, 37.349510, 34.865662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187109, -0.924444, 0.332255,
		0.769156, 0.348262, 0.535829,
		-0.611056, 0.155298, 0.776204,
		27.717836, 37.396099, 35.098522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.438536, 37.035233, 35.120041>,  <28.145576, 37.287392, 34.555180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.438536, 37.035233, 35.120041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.068275, 37.057014, 35.269817>,  <27.846119, 37.070084, 35.359684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.068275, 37.057014, 35.269817>,  <28.438536, 37.035233, 35.120041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.068275, 37.057014, 35.269817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072081, -0.946093, 0.315772,
		0.371454, 0.319284, 0.871825,
		-0.925649, 0.054453, 0.374445,
		27.790581, 37.073349, 35.382153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.390907, 36.754433, 35.868198>,  <28.438536, 37.035233, 35.120041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.390907, 36.754433, 35.868198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.030758, 36.709377, 35.700085>,  <27.814669, 36.682343, 35.599216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.030758, 36.709377, 35.700085>,  <28.390907, 36.754433, 35.868198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.030758, 36.709377, 35.700085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071757, -0.914249, 0.398747,
		-0.429160, 0.389180, 0.815083,
		-0.900373, -0.112638, -0.420286,
		27.760645, 36.675587, 35.573997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.851511, 36.525185, 36.378109>,  <28.390907, 36.754433, 35.868198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.851511, 36.525185, 36.378109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.709198, 36.398701, 36.026329>,  <27.623810, 36.322811, 35.815262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.709198, 36.398701, 36.026329>,  <27.851511, 36.525185, 36.378109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.709198, 36.398701, 36.026329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107823, -0.920850, 0.374712,
		-0.928328, 0.228141, 0.293529,
		-0.355783, -0.316206, -0.879450,
		27.602463, 36.303841, 35.762493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.885698, 37.232605, 36.648312>,  <27.851511, 36.525185, 36.378109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.885698, 37.232605, 36.648312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.124849, 37.541286, 36.735050>,  <28.268339, 37.726494, 36.787094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.124849, 37.541286, 36.735050>,  <27.885698, 37.232605, 36.648312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.124849, 37.541286, 36.735050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749505, -0.442268, -0.492587,
		-0.284227, 0.457032, -0.842815,
		0.597878, 0.771700, 0.216843,
		28.304213, 37.772797, 36.800102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.203354, 37.519272, 35.984688>,  <27.885698, 37.232605, 36.648312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.203354, 37.519272, 35.984688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.440624, 37.600060, 36.296417>,  <28.582987, 37.648533, 36.483456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.440624, 37.600060, 36.296417>,  <28.203354, 37.519272, 35.984688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.440624, 37.600060, 36.296417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770680, -0.422371, -0.477132,
		0.232798, 0.883635, -0.406195,
		0.593175, 0.201971, 0.779327,
		28.618576, 37.660652, 36.530216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.667871, 38.153130, 35.943203>,  <28.203354, 37.519272, 35.984688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.667871, 38.153130, 35.943203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.797564, 37.830360, 36.140686>,  <28.875380, 37.636700, 36.259174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.797564, 37.830360, 36.140686>,  <28.667871, 38.153130, 35.943203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.797564, 37.830360, 36.140686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622994, -0.210596, -0.753345,
		0.711866, 0.551832, 0.434429,
		0.324231, -0.806927, 0.493704,
		28.894833, 37.588284, 36.288795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.457888, 37.976635, 35.760384>,  <28.667871, 38.153130, 35.943203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.457888, 37.976635, 35.760384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.325069, 37.629890, 35.909134>,  <29.245378, 37.421844, 35.998383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.325069, 37.629890, 35.909134>,  <29.457888, 37.976635, 35.760384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.325069, 37.629890, 35.909134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585318, -0.498515, -0.639441,
		0.739694, 0.005340, 0.672922,
		-0.332047, -0.866865, 0.371874,
		29.225454, 37.369831, 36.020695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.348377, 38.318615, 36.357861>,  <29.457888, 37.976635, 35.760384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.348377, 38.318615, 36.357861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.306492, 38.713326, 36.308365>,  <29.281361, 38.950150, 36.278667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.306492, 38.713326, 36.308365>,  <29.348377, 38.318615, 36.357861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.306492, 38.713326, 36.308365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971834, 0.127944, 0.197911,
		0.211125, -0.099529, -0.972379,
		-0.104712, 0.986775, -0.123738,
		29.275078, 39.009357, 36.271244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.948002, 38.526066, 35.921276>,  <29.348377, 38.318615, 36.357861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.948002, 38.526066, 35.921276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.797216, 38.816086, 36.151825>,  <29.706745, 38.990097, 36.290154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.797216, 38.816086, 36.151825>,  <29.948002, 38.526066, 35.921276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.797216, 38.816086, 36.151825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924025, 0.251494, 0.287971,
		0.063838, 0.641138, -0.764766,
		-0.376964, 0.725047, 0.576373,
		29.684128, 39.033600, 36.324738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.374361, 38.302872, 35.288425>,  <29.948002, 38.526066, 35.921276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.374361, 38.302872, 35.288425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.663923, 38.073051, 35.135666>,  <30.837660, 37.935158, 35.044010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.663923, 38.073051, 35.135666>,  <30.374361, 38.302872, 35.288425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.663923, 38.073051, 35.135666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093319, -0.630022, 0.770950,
		-0.683560, -0.522455, -0.509692,
		0.723904, -0.574554, -0.381903,
		30.881096, 37.900684, 35.021095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.130392, 37.601448, 35.168247>,  <30.374361, 38.302872, 35.288425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.130392, 37.601448, 35.168247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.526615, 37.588898, 35.221638>,  <30.764349, 37.581367, 35.253674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.526615, 37.588898, 35.221638>,  <30.130392, 37.601448, 35.168247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.526615, 37.588898, 35.221638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129601, -0.532042, 0.836741,
		0.044761, -0.846136, -0.531083,
		0.990555, -0.031375, 0.133475,
		30.823782, 37.579487, 35.261681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.261311, 36.958321, 35.217499>,  <30.130392, 37.601448, 35.168247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.261311, 36.958321, 35.217499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.539387, 37.178162, 35.402821>,  <30.706232, 37.310066, 35.514011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.539387, 37.178162, 35.402821>,  <30.261311, 36.958321, 35.217499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.539387, 37.178162, 35.402821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097093, -0.566823, 0.818098,
		0.712237, -0.613718, -0.340688,
		0.695191, 0.549601, 0.463300,
		30.747944, 37.343040, 35.541809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.823692, 36.449146, 35.536839>,  <30.261311, 36.958321, 35.217499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.823692, 36.449146, 35.536839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.875481, 36.784534, 35.748577>,  <30.906553, 36.985767, 35.875622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.875481, 36.784534, 35.748577>,  <30.823692, 36.449146, 35.536839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.875481, 36.784534, 35.748577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173961, -0.544766, 0.820346,
		0.976204, -0.014126, -0.216392,
		0.129471, 0.838469, 0.529346,
		30.914322, 37.036076, 35.907379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.441917, 36.402534, 35.886494>,  <30.823692, 36.449146, 35.536839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.441917, 36.402534, 35.886494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.235962, 36.682446, 36.084568>,  <31.112389, 36.850391, 36.203411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.235962, 36.682446, 36.084568>,  <31.441917, 36.402534, 35.886494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.235962, 36.682446, 36.084568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249271, -0.430463, 0.867505,
		0.820216, 0.570102, 0.047206,
		-0.514887, 0.699775, 0.495183,
		31.081495, 36.892380, 36.233124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.884647, 36.639561, 36.433762>,  <31.441917, 36.402534, 35.886494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.884647, 36.639561, 36.433762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.522427, 36.752060, 36.560806>,  <31.305094, 36.819561, 36.637032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.522427, 36.752060, 36.560806>,  <31.884647, 36.639561, 36.433762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.522427, 36.752060, 36.560806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122845, -0.542748, 0.830863,
		0.406065, 0.791405, 0.456935,
		-0.905550, 0.281253, 0.317611,
		31.250761, 36.836437, 36.656090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.987720, 36.684048, 37.174709>,  <31.884647, 36.639561, 36.433762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.987720, 36.684048, 37.174709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.592447, 36.649948, 37.123756>,  <31.355284, 36.629490, 37.093185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.592447, 36.649948, 37.123756>,  <31.987720, 36.684048, 37.174709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.592447, 36.649948, 37.123756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066812, -0.508380, 0.858537,
		-0.137947, 0.856903, 0.496677,
		-0.988183, -0.085249, -0.127381,
		31.295992, 36.624374, 37.085541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.727022, 36.673794, 37.806465>,  <31.987720, 36.684048, 37.174709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.727022, 36.673794, 37.806465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.420263, 36.511852, 37.607281>,  <31.236208, 36.414688, 37.487770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.420263, 36.511852, 37.607281>,  <31.727022, 36.673794, 37.806465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.420263, 36.511852, 37.607281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257272, -0.516904, 0.816469,
		-0.587946, 0.754259, 0.292255,
		-0.766896, -0.404851, -0.497961,
		31.190195, 36.390396, 37.457893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.161743, 36.648521, 38.295746>,  <31.727022, 36.673794, 37.806465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.161743, 36.648521, 38.295746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.059664, 36.368923, 38.028530>,  <30.998417, 36.201164, 37.868198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.059664, 36.368923, 38.028530>,  <31.161743, 36.648521, 38.295746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.059664, 36.368923, 38.028530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244812, -0.621693, 0.744019,
		-0.935383, 0.353417, -0.012468,
		-0.255198, -0.698995, -0.668042,
		30.983105, 36.159225, 37.828117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.599945, 36.406040, 38.537281>,  <31.161743, 36.648521, 38.295746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.599945, 36.406040, 38.537281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.715553, 36.125538, 38.276600>,  <30.784918, 35.957237, 38.120193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.715553, 36.125538, 38.276600>,  <30.599945, 36.406040, 38.537281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.715553, 36.125538, 38.276600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432419, -0.702977, 0.564656,
		-0.854097, 0.118612, -0.506409,
		0.289019, -0.701252, -0.651701,
		30.802259, 35.915161, 38.081089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.128664, 35.861519, 38.532566>,  <30.599945, 36.406040, 38.537281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.128664, 35.861519, 38.532566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.448303, 35.678959, 38.376034>,  <30.640087, 35.569424, 38.282116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.448303, 35.678959, 38.376034>,  <30.128664, 35.861519, 38.532566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.448303, 35.678959, 38.376034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208937, -0.821167, 0.531065,
		-0.563727, -0.342610, -0.751552,
		0.799098, -0.456402, -0.391330,
		30.688032, 35.542038, 38.258633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.877119, 35.194435, 38.525925>,  <30.128664, 35.861519, 38.532566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.877119, 35.194435, 38.525925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.272713, 35.160831, 38.477184>,  <30.510069, 35.140667, 38.447941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.272713, 35.160831, 38.477184>,  <29.877119, 35.194435, 38.525925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.272713, 35.160831, 38.477184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015757, -0.878379, 0.477706,
		-0.147168, -0.470524, -0.870028,
		0.988986, -0.084012, -0.121855,
		30.569408, 35.135628, 38.440628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.040178, 34.425957, 38.385246>,  <29.877119, 35.194435, 38.525925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.040178, 34.425957, 38.385246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.371851, 34.602947, 38.521873>,  <30.570854, 34.709141, 38.603851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.371851, 34.602947, 38.521873>,  <30.040178, 34.425957, 38.385246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.371851, 34.602947, 38.521873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122003, -0.739586, 0.661913,
		0.545503, -0.507173, -0.667234,
		0.829182, 0.442480, 0.341570,
		30.620605, 34.735691, 38.624344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.542505, 33.920258, 38.341904>,  <30.040178, 34.425957, 38.385246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.542505, 33.920258, 38.341904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.641880, 34.191116, 38.618961>,  <30.701506, 34.353630, 38.785194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.641880, 34.191116, 38.618961>,  <30.542505, 33.920258, 38.341904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.641880, 34.191116, 38.618961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128418, -0.731771, 0.669343,
		0.960098, -0.077342, -0.268757,
		0.248437, 0.677148, 0.692640,
		30.716412, 34.394260, 38.826752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.181150, 33.736835, 38.523918>,  <30.542505, 33.920258, 38.341904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.181150, 33.736835, 38.523918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.062149, 33.944504, 38.844406>,  <30.990749, 34.069103, 39.036701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.062149, 33.944504, 38.844406>,  <31.181150, 33.736835, 38.523918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.062149, 33.944504, 38.844406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210449, -0.782918, 0.585448,
		0.931238, 0.342789, 0.123661,
		-0.297502, 0.519167, 0.801223,
		30.972898, 34.100254, 39.084774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.581396, 33.508640, 38.991936>,  <31.181150, 33.736835, 38.523918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.581396, 33.508640, 38.991936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.294014, 33.679775, 39.211308>,  <31.121584, 33.782455, 39.342930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.294014, 33.679775, 39.211308>,  <31.581396, 33.508640, 38.991936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.294014, 33.679775, 39.211308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172876, -0.653883, 0.736580,
		0.673745, 0.624012, 0.395824,
		-0.718458, 0.427839, 0.548428,
		31.078476, 33.808128, 39.375835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.823097, 33.672390, 39.676731>,  <31.581396, 33.508640, 38.991936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.823097, 33.672390, 39.676731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.424421, 33.648136, 39.698380>,  <31.185215, 33.633583, 39.711369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.424421, 33.648136, 39.698380>,  <31.823097, 33.672390, 39.676731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.424421, 33.648136, 39.698380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080480, -0.643295, 0.761377,
		-0.011345, 0.763214, 0.646046,
		-0.996692, -0.060632, 0.054125,
		31.125414, 33.629948, 39.714619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.745804, 33.737492, 40.344757>,  <31.823097, 33.672390, 39.676731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.745804, 33.737492, 40.344757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.405600, 33.565208, 40.224010>,  <31.201477, 33.461838, 40.151562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.405600, 33.565208, 40.224010>,  <31.745804, 33.737492, 40.344757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.405600, 33.565208, 40.224010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002195, -0.576845, 0.816851,
		-0.525953, 0.694078, 0.491558,
		-0.850511, -0.430704, -0.301870,
		31.150446, 33.435997, 40.133450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.343555, 33.693489, 40.939705>,  <31.745804, 33.737492, 40.344757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.343555, 33.693489, 40.939705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.132107, 33.458904, 40.694229>,  <31.005238, 33.318153, 40.546944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.132107, 33.458904, 40.694229>,  <31.343555, 33.693489, 40.939705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.132107, 33.458904, 40.694229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243937, -0.587513, 0.771572,
		-0.813052, 0.557572, 0.167511,
		-0.528622, -0.586466, -0.613691,
		30.973520, 33.282963, 40.510120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.674829, 33.513058, 41.225403>,  <31.343555, 33.693489, 40.939705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.674829, 33.513058, 41.225403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.728638, 33.231548, 40.946377>,  <30.760921, 33.062641, 40.778961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.728638, 33.231548, 40.946377>,  <30.674829, 33.513058, 41.225403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.728638, 33.231548, 40.946377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245731, -0.705670, 0.664564,
		-0.959959, 0.082018, -0.267865,
		0.134518, -0.703777, -0.697569,
		30.768993, 33.020416, 40.737106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.029491, 33.178070, 41.199654>,  <30.674829, 33.513058, 41.225403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.029491, 33.178070, 41.199654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.318554, 32.928253, 41.081188>,  <30.491991, 32.778362, 41.010109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.318554, 32.928253, 41.081188>,  <30.029491, 33.178070, 41.199654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.318554, 32.928253, 41.081188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360727, -0.706263, 0.609154,
		-0.589615, -0.333373, -0.735674,
		0.722655, -0.624544, -0.296167,
		30.535351, 32.740891, 40.992336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.779581, 32.651794, 40.907887>,  <30.029491, 33.178070, 41.199654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.779581, 32.651794, 40.907887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.136309, 32.507969, 41.017708>,  <30.350346, 32.421673, 41.083599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.136309, 32.507969, 41.017708>,  <29.779581, 32.651794, 40.907887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.136309, 32.507969, 41.017708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452359, -0.701137, 0.551161,
		-0.005677, -0.615731, -0.787936,
		0.891818, -0.359559, 0.274551,
		30.403854, 32.400101, 41.100075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.691061, 31.984818, 40.898220>,  <29.779581, 32.651794, 40.907887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.691061, 31.984818, 40.898220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.058741, 31.974247, 41.055386>,  <30.279348, 31.967905, 41.149685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.058741, 31.974247, 41.055386>,  <29.691061, 31.984818, 40.898220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.058741, 31.974247, 41.055386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271416, -0.765425, 0.583487,
		0.285324, -0.642982, -0.710749,
		0.919197, -0.026426, 0.392910,
		30.334499, 31.966320, 41.173260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.787941, 31.296528, 41.035690>,  <29.691061, 31.984818, 40.898220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.787941, 31.296528, 41.035690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.073565, 31.453936, 41.267296>,  <30.244938, 31.548380, 41.406261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.073565, 31.453936, 41.267296>,  <29.787941, 31.296528, 41.035690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.073565, 31.453936, 41.267296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169985, -0.704861, 0.688677,
		0.679136, -0.590181, -0.436419,
		0.714059, 0.393520, 0.579018,
		30.287783, 31.571991, 41.441002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.182508, 30.784101, 41.316975>,  <29.787941, 31.296528, 41.035690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.182508, 30.784101, 41.316975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.242483, 31.063110, 41.597256>,  <30.278467, 31.230516, 41.765423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.242483, 31.063110, 41.597256>,  <30.182508, 30.784101, 41.316975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.242483, 31.063110, 41.597256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042886, -0.703457, 0.709443,
		0.987765, -0.136421, -0.075559,
		0.149936, 0.697523, 0.700701,
		30.287464, 31.272367, 41.807465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.586002, 30.523289, 41.760849>,  <30.182508, 30.784101, 41.316975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.586002, 30.523289, 41.760849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.424826, 30.825205, 41.967896>,  <30.328119, 31.006355, 42.092125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.424826, 30.825205, 41.967896>,  <30.586002, 30.523289, 41.760849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.424826, 30.825205, 41.967896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080088, -0.592473, 0.801599,
		0.911715, 0.281543, 0.299182,
		-0.402942, 0.754791, 0.517618,
		30.303944, 31.051641, 42.123180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.973553, 30.580494, 42.300423>,  <30.586002, 30.523289, 41.760849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.973553, 30.580494, 42.300423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.617979, 30.731281, 42.404491>,  <30.404634, 30.821753, 42.466934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.617979, 30.731281, 42.404491>,  <30.973553, 30.580494, 42.300423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.617979, 30.731281, 42.404491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120989, -0.741103, 0.660400,
		0.441766, 0.555574, 0.704401,
		-0.888934, 0.376967, 0.260176,
		30.351299, 30.844372, 42.482544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.053335, 30.810184, 42.954544>,  <30.973553, 30.580494, 42.300423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.053335, 30.810184, 42.954544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.660063, 30.755865, 42.905689>,  <30.424099, 30.723272, 42.876377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.660063, 30.755865, 42.905689>,  <31.053335, 30.810184, 42.954544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.660063, 30.755865, 42.905689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035677, -0.513051, 0.857616,
		-0.179128, 0.847548, 0.499576,
		-0.983179, -0.135800, -0.122139,
		30.365108, 30.715126, 42.869049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.732674, 30.915674, 43.633072>,  <31.053335, 30.810184, 42.954544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.732674, 30.915674, 43.633072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.453915, 30.721777, 43.421654>,  <30.286659, 30.605438, 43.294804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.453915, 30.721777, 43.421654>,  <30.732674, 30.915674, 43.633072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.453915, 30.721777, 43.421654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272420, -0.502818, 0.820342,
		-0.663414, 0.715682, 0.218360,
		-0.696900, -0.484741, -0.528543,
		30.244844, 30.576355, 43.263092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.236891, 30.793545, 44.111118>,  <30.732674, 30.915674, 43.633072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.236891, 30.793545, 44.111118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.130531, 30.557392, 43.806290>,  <30.066715, 30.415701, 43.623394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.130531, 30.557392, 43.806290>,  <30.236891, 30.793545, 44.111118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.130531, 30.557392, 43.806290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413972, -0.643996, 0.643348,
		-0.870589, 0.486540, -0.073164,
		-0.265897, -0.590379, -0.762070,
		30.050762, 30.380278, 43.577667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.566072, 30.504784, 44.173725>,  <30.236891, 30.793545, 44.111118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.566072, 30.504784, 44.173725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.727436, 30.237293, 43.923904>,  <29.824253, 30.076799, 43.774010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.727436, 30.237293, 43.923904>,  <29.566072, 30.504784, 44.173725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.727436, 30.237293, 43.923904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275442, -0.739648, 0.614046,
		-0.872579, -0.075681, -0.482574,
		0.403406, -0.668725, -0.624556,
		29.848457, 30.036676, 43.736538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.965214, 29.967022, 43.941204>,  <29.566072, 30.504784, 44.173725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.965214, 29.967022, 43.941204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.311594, 29.780506, 43.868874>,  <29.519423, 29.668596, 43.825474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.311594, 29.780506, 43.868874>,  <28.965214, 29.967022, 43.941204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.311594, 29.780506, 43.868874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305237, -0.779168, 0.547474,
		-0.396177, -0.418891, -0.817052,
		0.865953, -0.466291, -0.180828,
		29.571381, 29.640619, 43.814625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.806107, 29.313793, 43.772217>,  <28.965214, 29.967022, 43.941204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.806107, 29.313793, 43.772217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.181759, 29.277559, 43.904774>,  <29.407150, 29.255819, 43.984310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.181759, 29.277559, 43.904774>,  <28.806107, 29.313793, 43.772217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.181759, 29.277559, 43.904774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247232, -0.847984, 0.468828,
		0.238550, -0.522224, -0.818765,
		0.939133, -0.090586, 0.331397,
		29.463499, 29.250383, 44.004192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.888447, 28.622768, 43.802490>,  <28.806107, 29.313793, 43.772217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.888447, 28.622768, 43.802490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.220579, 28.740206, 43.991955>,  <29.419859, 28.810669, 44.105633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.220579, 28.740206, 43.991955>,  <28.888447, 28.622768, 43.802490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.220579, 28.740206, 43.991955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191042, -0.648490, 0.736861,
		0.523499, -0.702328, -0.482373,
		0.830332, 0.293593, 0.473658,
		29.469679, 28.828283, 44.134052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.328650, 27.986412, 44.014683>,  <28.888447, 28.622768, 43.802490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.328650, 27.986412, 44.014683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.456196, 28.249510, 44.287651>,  <29.532722, 28.407370, 44.451431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.456196, 28.249510, 44.287651>,  <29.328650, 27.986412, 44.014683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.456196, 28.249510, 44.287651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195963, -0.658695, 0.726443,
		0.927321, -0.365365, -0.081140,
		0.318864, 0.657746, 0.682420,
		29.551855, 28.446833, 44.492378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.771294, 27.612309, 44.406048>,  <29.328650, 27.986412, 44.014683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.771294, 27.612309, 44.406048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.669270, 27.932289, 44.623310>,  <29.608055, 28.124279, 44.753666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.669270, 27.932289, 44.623310>,  <29.771294, 27.612309, 44.406048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.669270, 27.932289, 44.623310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019092, -0.557459, 0.829985,
		0.966737, 0.222065, 0.126913,
		-0.255060, 0.799954, 0.543156,
		29.592752, 28.172276, 44.786259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.260675, 27.642717, 44.971249>,  <29.771294, 27.612309, 44.406048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.260675, 27.642717, 44.971249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.930164, 27.838787, 45.082241>,  <29.731857, 27.956429, 45.148834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.930164, 27.838787, 45.082241>,  <30.260675, 27.642717, 44.971249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.930164, 27.838787, 45.082241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047324, -0.551297, 0.832965,
		0.561270, 0.675130, 0.478722,
		-0.826278, 0.490174, 0.277477,
		29.682281, 27.985840, 45.165485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.308947, 27.662621, 45.635014>,  <30.260675, 27.642717, 44.971249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.308947, 27.662621, 45.635014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.919422, 27.745966, 45.598618>,  <29.685707, 27.795973, 45.576778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.919422, 27.745966, 45.598618>,  <30.308947, 27.662621, 45.635014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.919422, 27.745966, 45.598618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211392, -0.682384, 0.699761,
		0.083715, 0.700669, 0.708558,
		-0.973810, 0.208364, -0.090990,
		29.627279, 27.808475, 45.571320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.063694, 27.640491, 46.360382>,  <30.308947, 27.662621, 45.635014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.063694, 27.640491, 46.360382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.752241, 27.607191, 46.111607>,  <29.565369, 27.587212, 45.962341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.752241, 27.607191, 46.111607>,  <30.063694, 27.640491, 46.360382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.752241, 27.607191, 46.111607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369200, -0.740650, 0.561363,
		-0.507370, 0.666713, 0.545958,
		-0.778632, -0.083251, -0.621934,
		29.518652, 27.582216, 45.925026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.501816, 27.661507, 46.852463>,  <30.063694, 27.640491, 46.360382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.501816, 27.661507, 46.852463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.361191, 27.479074, 46.525440>,  <29.276815, 27.369616, 46.329227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.361191, 27.479074, 46.525440>,  <29.501816, 27.661507, 46.852463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.361191, 27.479074, 46.525440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473447, -0.666771, 0.575555,
		-0.807621, 0.589412, 0.018480,
		-0.351561, -0.456081, -0.817554,
		29.255722, 27.342251, 46.280174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.807547, 27.589737, 46.931267>,  <29.501816, 27.661507, 46.852463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.807547, 27.589737, 46.931267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.943735, 27.290850, 46.702972>,  <29.025448, 27.111517, 46.565994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.943735, 27.290850, 46.702972>,  <28.807547, 27.589737, 46.931267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.943735, 27.290850, 46.702972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549012, -0.650769, 0.524486,
		-0.763325, 0.134771, -0.631800,
		0.340470, -0.747219, -0.570740,
		29.045877, 27.066685, 46.531750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.236160, 27.188269, 46.643993>,  <28.807547, 27.589737, 46.931267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.236160, 27.188269, 46.643993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.578671, 26.986532, 46.688587>,  <28.784178, 26.865490, 46.715343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.578671, 26.986532, 46.688587>,  <28.236160, 27.188269, 46.643993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.578671, 26.986532, 46.688587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452659, -0.628766, 0.632260,
		-0.248775, -0.591856, -0.766693,
		0.856277, -0.504340, 0.111488,
		28.835554, 26.835230, 46.722034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.294838, 26.474749, 46.591522>,  <28.236160, 27.188269, 46.643993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.294838, 26.474749, 46.591522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.578201, 26.559126, 46.860939>,  <28.748220, 26.609753, 47.022591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.578201, 26.559126, 46.860939>,  <28.294838, 26.474749, 46.591522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.578201, 26.559126, 46.860939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459401, -0.586661, 0.666918,
		0.535824, -0.781877, -0.318688,
		0.708409, 0.210946, 0.673541,
		28.790724, 26.622410, 47.063000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.621271, 25.859964, 46.848820>,  <28.294838, 26.474749, 46.591522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.621271, 25.859964, 46.848820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.624002, 26.148815, 47.125511>,  <28.625641, 26.322126, 47.291527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.624002, 26.148815, 47.125511>,  <28.621271, 25.859964, 46.848820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.624002, 26.148815, 47.125511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372971, -0.639988, 0.671795,
		0.927818, -0.262581, 0.264962,
		0.006827, 0.722126, 0.691727,
		28.626051, 26.365454, 47.333031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.911448, 25.986235, 46.945271>,  <28.621271, 25.859964, 46.848820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.911448, 25.986235, 46.945271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.825066, 25.709745, 47.221119>,  <27.773237, 25.543852, 47.386627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.825066, 25.709745, 47.221119>,  <27.911448, 25.986235, 46.945271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.825066, 25.709745, 47.221119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844343, -0.486903, -0.223632,
		0.490356, 0.533979, 0.688780,
		-0.215954, -0.691225, 0.689617,
		27.760279, 25.502378, 47.428005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.378410, 25.860098, 47.584919>,  <27.911448, 25.986235, 46.945271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.378410, 25.860098, 47.584919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.202475, 25.529728, 47.443844>,  <28.096912, 25.331505, 47.359200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.202475, 25.529728, 47.443844>,  <28.378410, 25.860098, 47.584919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.202475, 25.529728, 47.443844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897995, -0.399188, -0.185077,
		0.012072, -0.398114, 0.917256,
		-0.439840, -0.825926, -0.352686,
		28.070522, 25.281950, 47.338039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.390835, 25.271999, 48.009361>,  <28.378410, 25.860098, 47.584919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.390835, 25.271999, 48.009361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.371500, 25.120417, 47.639702>,  <28.359900, 25.029467, 47.417904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.371500, 25.120417, 47.639702>,  <28.390835, 25.271999, 48.009361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.371500, 25.120417, 47.639702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991720, -0.128416, 0.000786,
		-0.118973, -0.916461, 0.382027,
		-0.048338, -0.378958, -0.924151,
		28.356998, 25.006729, 47.362457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.838142, 24.604109, 47.799370>,  <28.390835, 25.271999, 48.009361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.838142, 24.604109, 47.799370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.822794, 24.876482, 47.506832>,  <28.813585, 25.039906, 47.331310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.822794, 24.876482, 47.506832>,  <28.838142, 24.604109, 47.799370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.822794, 24.876482, 47.506832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997563, 0.068786, 0.011703,
		0.058276, -0.729110, -0.681911,
		-0.038373, 0.680931, -0.731342,
		28.811281, 25.080761, 47.287430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.255888, 24.281202, 47.319595>,  <28.838142, 24.604109, 47.799370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.255888, 24.281202, 47.319595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.228012, 24.679647, 47.298058>,  <29.211287, 24.918715, 47.285137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.228012, 24.679647, 47.298058>,  <29.255888, 24.281202, 47.319595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.228012, 24.679647, 47.298058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992181, 0.063612, -0.107383,
		-0.103541, -0.060903, -0.992759,
		-0.069691, 0.996115, -0.053841,
		29.207104, 24.978481, 47.281906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.564386, 24.661478, 46.732876>,  <29.255888, 24.281202, 47.319595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.564386, 24.661478, 46.732876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.616064, 24.888290, 47.058277>,  <29.647072, 25.024378, 47.253517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.616064, 24.888290, 47.058277>,  <29.564386, 24.661478, 46.732876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.616064, 24.888290, 47.058277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970337, 0.096762, -0.221549,
		-0.204341, 0.817994, -0.537708,
		0.129196, 0.567029, 0.813502,
		29.654823, 25.058399, 47.302326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.690903, 24.407770, 45.977482>,  <29.564386, 24.661478, 46.732876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.690903, 24.407770, 45.977482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.421543, 24.684273, 45.872643>,  <29.259928, 24.850174, 45.809738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.421543, 24.684273, 45.872643>,  <29.690903, 24.407770, 45.977482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.421543, 24.684273, 45.872643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685212, 0.450524, -0.572288,
		-0.277517, -0.564971, -0.777041,
		-0.673401, 0.691257, -0.262096,
		29.219522, 24.891649, 45.794014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.639034, 24.422903, 45.255680>,  <29.690903, 24.407770, 45.977482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.639034, 24.422903, 45.255680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.540611, 24.773834, 45.420483>,  <29.481558, 24.984394, 45.519363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.540611, 24.773834, 45.420483>,  <29.639034, 24.422903, 45.255680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.540611, 24.773834, 45.420483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666780, 0.461725, -0.584991,
		-0.703463, 0.130773, -0.698597,
		-0.246059, 0.877330, 0.412003,
		29.466793, 25.037033, 45.544083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.432976, 24.836031, 44.718922>,  <29.639034, 24.422903, 45.255680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.432976, 24.836031, 44.718922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.563581, 25.066973, 45.018269>,  <29.641945, 25.205538, 45.197876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.563581, 25.066973, 45.018269>,  <29.432976, 24.836031, 44.718922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.563581, 25.066973, 45.018269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728827, 0.350347, -0.588276,
		-0.601831, 0.737508, -0.306399,
		0.326512, 0.577355, 0.748366,
		29.661535, 25.240179, 45.242779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.491697, 25.467146, 44.421135>,  <29.432976, 24.836031, 44.718922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.491697, 25.467146, 44.421135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.703686, 25.526892, 44.755039>,  <29.830879, 25.562738, 44.955379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.703686, 25.526892, 44.755039>,  <29.491697, 25.467146, 44.421135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.703686, 25.526892, 44.755039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660847, 0.544129, -0.516919,
		-0.531425, 0.825599, 0.189666,
		0.529971, 0.149363, 0.834759,
		29.862677, 25.571701, 45.005466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.682556, 26.156282, 44.381458>,  <29.491697, 25.467146, 44.421135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.682556, 26.156282, 44.381458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.918968, 25.974855, 44.648277>,  <30.060816, 25.865999, 44.808369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.918968, 25.974855, 44.648277>,  <29.682556, 26.156282, 44.381458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.918968, 25.974855, 44.648277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802760, 0.249632, -0.541535,
		0.079105, 0.855547, 0.511646,
		0.591032, -0.453567, 0.667052,
		30.096277, 25.838785, 44.848392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.110716, 26.634670, 44.911026>,  <29.682556, 26.156282, 44.381458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.110716, 26.634670, 44.911026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.311413, 26.291338, 44.868092>,  <30.431831, 26.085339, 44.842331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.311413, 26.291338, 44.868092>,  <30.110716, 26.634670, 44.911026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.311413, 26.291338, 44.868092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763988, 0.497911, -0.410374,
		0.405681, 0.123898, 0.905578,
		0.501741, -0.858332, -0.107337,
		30.461935, 26.033838, 44.835892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.726429, 26.824751, 45.023861>,  <30.110716, 26.634670, 44.911026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.726429, 26.824751, 45.023861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.795153, 26.466141, 44.860535>,  <30.836388, 26.250975, 44.762539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.795153, 26.466141, 44.860535>,  <30.726429, 26.824751, 45.023861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.795153, 26.466141, 44.860535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817464, 0.361047, -0.448773,
		0.549758, -0.256679, 0.794910,
		0.171809, -0.896527, -0.408314,
		30.846695, 26.197182, 44.738041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.468016, 26.876770, 44.969440>,  <30.726429, 26.824751, 45.023861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.468016, 26.876770, 44.969440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.346338, 26.575630, 44.735966>,  <31.273333, 26.394947, 44.595882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.346338, 26.575630, 44.735966>,  <31.468016, 26.876770, 44.969440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.346338, 26.575630, 44.735966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728106, 0.211353, -0.652067,
		0.614271, -0.623337, 0.483861,
		-0.304192, -0.752849, -0.583683,
		31.255081, 26.349775, 44.560860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.075348, 26.496826, 44.835052>,  <31.468016, 26.876770, 44.969440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.075348, 26.496826, 44.835052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.797768, 26.425255, 44.556080>,  <31.631220, 26.382313, 44.388695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.797768, 26.425255, 44.556080>,  <32.075348, 26.496826, 44.835052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.797768, 26.425255, 44.556080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663089, 0.218689, -0.715883,
		0.280613, -0.959250, -0.033114,
		-0.693952, -0.178928, -0.697434,
		31.589582, 26.371576, 44.346851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.412472, 26.229877, 44.298534>,  <32.075348, 26.496826, 44.835052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.412472, 26.229877, 44.298534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.083302, 26.351652, 44.106651>,  <31.885799, 26.424717, 43.991524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.083302, 26.351652, 44.106651>,  <32.412472, 26.229877, 44.298534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.083302, 26.351652, 44.106651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561208, 0.303974, -0.769834,
		-0.088547, -0.902729, -0.420999,
		-0.822924, 0.304435, -0.479703,
		31.836424, 26.442982, 43.962742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.548141, 26.150215, 43.578491>,  <32.412472, 26.229877, 44.298534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.548141, 26.150215, 43.578491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.233379, 26.397022, 43.575138>,  <32.044521, 26.545107, 43.573128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.233379, 26.397022, 43.575138>,  <32.548141, 26.150215, 43.578491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.233379, 26.397022, 43.575138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425812, 0.533122, -0.731071,
		-0.446613, -0.578854, -0.682250,
		-0.786906, 0.617016, -0.008384,
		31.997307, 26.582127, 43.572624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.320419, 26.208494, 42.871704>,  <32.548141, 26.150215, 43.578491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.320419, 26.208494, 42.871704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.173912, 26.540287, 43.040375>,  <32.086010, 26.739363, 43.141579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.173912, 26.540287, 43.040375>,  <32.320419, 26.208494, 42.871704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.173912, 26.540287, 43.040375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314590, 0.536868, -0.782819,
		-0.875719, -0.154063, -0.457582,
		-0.366265, 0.829480, 0.421679,
		32.064034, 26.789131, 43.166878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.975708, 26.567545, 42.373707>,  <32.320419, 26.208494, 42.871704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.975708, 26.567545, 42.373707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.018024, 26.887075, 42.610580>,  <32.043415, 27.078794, 42.752705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.018024, 26.887075, 42.610580>,  <31.975708, 26.567545, 42.373707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.018024, 26.887075, 42.610580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121167, 0.580734, -0.805026,
		-0.986979, 0.156917, -0.035356,
		0.105790, 0.798828, 0.592185,
		32.049763, 27.126724, 42.788235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.529505, 26.950434, 42.118076>,  <31.975708, 26.567545, 42.373707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.529505, 26.950434, 42.118076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.743248, 27.213240, 42.330788>,  <31.871494, 27.370924, 42.458416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.743248, 27.213240, 42.330788>,  <31.529505, 26.950434, 42.118076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.743248, 27.213240, 42.330788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099232, 0.673546, -0.732454,
		-0.839412, 0.338625, 0.425113,
		0.534360, 0.657015, 0.531780,
		31.903557, 27.410345, 42.490322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.250795, 27.619028, 42.035290>,  <31.529505, 26.950434, 42.118076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.250795, 27.619028, 42.035290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.632122, 27.700323, 42.124630>,  <31.860918, 27.749100, 42.178234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.632122, 27.700323, 42.124630>,  <31.250795, 27.619028, 42.035290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.632122, 27.700323, 42.124630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004070, 0.730908, -0.682464,
		-0.301947, 0.651513, 0.695959,
		0.953316, 0.203236, 0.223347,
		31.918118, 27.761293, 42.191635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.243795, 28.321676, 42.029053>,  <31.250795, 27.619028, 42.035290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.243795, 28.321676, 42.029053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.630850, 28.224213, 42.002800>,  <31.863083, 28.165735, 41.987049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.630850, 28.224213, 42.002800>,  <31.243795, 28.321676, 42.029053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.630850, 28.224213, 42.002800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139959, 0.734630, -0.663876,
		0.209971, 0.633206, 0.744958,
		0.967638, -0.243659, -0.065628,
		31.921141, 28.151115, 41.983112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.773565, 28.963650, 42.165405>,  <31.243795, 28.321676, 42.029053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.773565, 28.963650, 42.165405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.955198, 28.706373, 41.918793>,  <32.064178, 28.552008, 41.770824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.955198, 28.706373, 41.918793>,  <31.773565, 28.963650, 42.165405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.955198, 28.706373, 41.918793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195563, 0.747067, -0.635331,
		0.869232, 0.167921, 0.465015,
		0.454082, -0.643190, -0.616536,
		32.091423, 28.513416, 41.733833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.461639, 29.220299, 41.954132>,  <31.773565, 28.963650, 42.165405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.461639, 29.220299, 41.954132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.359272, 28.980631, 41.650684>,  <32.297852, 28.836830, 41.468616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.359272, 28.980631, 41.650684>,  <32.461639, 29.220299, 41.954132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.359272, 28.980631, 41.650684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139536, 0.753635, -0.642311,
		0.956574, -0.270236, -0.109266,
		-0.255922, -0.599172, -0.758615,
		32.282494, 28.800879, 41.423100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.729008, 29.497416, 41.354649>,  <32.461639, 29.220299, 41.954132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.729008, 29.497416, 41.354649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.478218, 29.243797, 41.173592>,  <32.327744, 29.091625, 41.064957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.478218, 29.243797, 41.173592>,  <32.729008, 29.497416, 41.354649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.478218, 29.243797, 41.173592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071883, 0.531463, -0.844026,
		0.775715, -0.561722, -0.287637,
		-0.626976, -0.634047, -0.452642,
		32.290127, 29.053583, 41.037800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.081535, 29.324991, 40.785252>,  <32.729008, 29.497416, 41.354649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.081535, 29.324991, 40.785252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.698269, 29.230917, 40.720001>,  <32.468311, 29.174473, 40.680851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.698269, 29.230917, 40.720001>,  <33.081535, 29.324991, 40.785252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.698269, 29.230917, 40.720001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021584, 0.508924, -0.860541,
		0.285404, -0.828060, -0.482556,
		-0.958164, -0.235186, -0.163122,
		32.410820, 29.160360, 40.671066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.103249, 29.127495, 40.083954>,  <33.081535, 29.324991, 40.785252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.103249, 29.127495, 40.083954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.719719, 29.189171, 40.179352>,  <32.489601, 29.226177, 40.236591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.719719, 29.189171, 40.179352>,  <33.103249, 29.127495, 40.083954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.719719, 29.189171, 40.179352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106845, 0.582228, -0.805974,
		-0.263131, -0.798270, -0.541781,
		-0.958826, 0.154190, 0.238493,
		32.432072, 29.235428, 40.250900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.683804, 28.942158, 39.443645>,  <33.103249, 29.127495, 40.083954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.683804, 28.942158, 39.443645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.485001, 29.204975, 39.670368>,  <32.365719, 29.362665, 39.806404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.485001, 29.204975, 39.670368>,  <32.683804, 28.942158, 39.443645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.485001, 29.204975, 39.670368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115121, 0.597498, -0.793564,
		-0.860075, -0.459660, -0.221322,
		-0.497010, 0.657046, 0.566809,
		32.335899, 29.402088, 39.840412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.064579, 29.067343, 38.996075>,  <32.683804, 28.942158, 39.443645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.064579, 29.067343, 38.996075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.122406, 29.354725, 39.268227>,  <32.157101, 29.527155, 39.431519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.122406, 29.354725, 39.268227>,  <32.064579, 29.067343, 38.996075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.122406, 29.354725, 39.268227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144759, 0.695564, -0.703729,
		-0.978849, 0.003242, 0.204557,
		0.144564, 0.718457, 0.680383,
		32.165775, 29.570261, 39.472343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.468233, 29.611622, 38.856770>,  <32.064579, 29.067343, 38.996075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.468233, 29.611622, 38.856770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.737696, 29.804153, 39.081093>,  <31.899374, 29.919672, 39.215687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.737696, 29.804153, 39.081093>,  <31.468233, 29.611622, 38.856770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.737696, 29.804153, 39.081093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112759, 0.816891, -0.565663,
		-0.730391, 0.317827, 0.604579,
		0.673658, 0.481327, 0.560811,
		31.939793, 29.948551, 39.249336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.261763, 30.361567, 38.884216>,  <31.468233, 29.611622, 38.856770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.261763, 30.361567, 38.884216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.643030, 30.394188, 39.000713>,  <31.871790, 30.413761, 39.070610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.643030, 30.394188, 39.000713>,  <31.261763, 30.361567, 38.884216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.643030, 30.394188, 39.000713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126559, 0.767043, -0.628989,
		-0.274692, 0.636391, 0.720799,
		0.953167, 0.081555, 0.291241,
		31.928980, 30.418653, 39.088085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.338024, 30.951670, 39.108021>,  <31.261763, 30.361567, 38.884216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.338024, 30.951670, 39.108021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.710821, 30.846788, 39.007912>,  <31.934500, 30.783859, 38.947845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.710821, 30.846788, 39.007912>,  <31.338024, 30.951670, 39.108021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.710821, 30.846788, 39.007912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058862, 0.790775, -0.609269,
		0.357666, 0.553102, 0.752431,
		0.931992, -0.262205, -0.250277,
		31.990419, 30.768127, 38.932827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.658897, 31.546618, 39.191265>,  <31.338024, 30.951670, 39.108021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.658897, 31.546618, 39.191265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.877941, 31.308287, 38.956280>,  <32.009369, 31.165289, 38.815289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.877941, 31.308287, 38.956280>,  <31.658897, 31.546618, 39.191265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.877941, 31.308287, 38.956280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220366, 0.780005, -0.585689,
		0.807194, 0.191271, 0.558438,
		0.547609, -0.595825, -0.587466,
		32.042225, 31.129539, 38.780041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.303890, 31.957470, 39.053593>,  <31.658897, 31.546618, 39.191265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.303890, 31.957470, 39.053593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.279495, 31.680037, 38.766476>,  <32.264858, 31.513577, 38.594208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.279495, 31.680037, 38.766476>,  <32.303890, 31.957470, 39.053593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.279495, 31.680037, 38.766476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242153, 0.687362, -0.684760,
		0.968320, -0.215576, 0.126034,
		-0.060987, -0.693586, -0.717788,
		32.261200, 31.471960, 38.551140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.987980, 31.811041, 38.705868>,  <32.303890, 31.957470, 39.053593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.987980, 31.811041, 38.705868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.686676, 31.769526, 38.446075>,  <32.505894, 31.744616, 38.290199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.686676, 31.769526, 38.446075>,  <32.987980, 31.811041, 38.705868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.686676, 31.769526, 38.446075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369164, 0.750541, -0.548093,
		0.544347, -0.652623, -0.527039,
		-0.753263, -0.103789, -0.649480,
		32.460697, 31.738388, 38.251232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.272900, 32.181965, 38.197857>,  <32.987980, 31.811041, 38.705868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.272900, 32.181965, 38.197857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.901974, 32.097202, 38.074448>,  <32.679417, 32.046345, 38.000404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.901974, 32.097202, 38.074448>,  <33.272900, 32.181965, 38.197857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.901974, 32.097202, 38.074448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090456, 0.672979, -0.734110,
		0.363190, -0.708658, -0.604894,
		-0.927314, -0.211905, -0.308521,
		32.623779, 32.033630, 37.981892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.255646, 32.279831, 37.486290>,  <33.272900, 32.181965, 38.197857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.255646, 32.279831, 37.486290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.862419, 32.282974, 37.559521>,  <32.626484, 32.284859, 37.603458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.862419, 32.282974, 37.559521>,  <33.255646, 32.279831, 37.486290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.862419, 32.282974, 37.559521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125926, 0.696844, -0.706082,
		-0.133126, -0.717180, -0.684055,
		-0.983066, 0.007857, 0.183079,
		32.567497, 32.285332, 37.614445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.843060, 32.012817, 36.938675>,  <33.255646, 32.279831, 37.486290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.843060, 32.012817, 36.938675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.590595, 32.258419, 37.128262>,  <32.439117, 32.405781, 37.242012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.590595, 32.258419, 37.128262>,  <32.843060, 32.012817, 36.938675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.590595, 32.258419, 37.128262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111154, 0.533146, -0.838690,
		-0.767647, -0.582031, -0.268252,
		-0.631161, 0.614000, 0.473963,
		32.401249, 32.442619, 37.270451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.310307, 32.167175, 36.433208>,  <32.843060, 32.012817, 36.938675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.310307, 32.167175, 36.433208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.237381, 32.433826, 36.722309>,  <32.193626, 32.593815, 36.895771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.237381, 32.433826, 36.722309>,  <32.310307, 32.167175, 36.433208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.237381, 32.433826, 36.722309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220631, 0.688592, -0.690770,
		-0.958167, -0.285397, 0.021540,
		-0.182311, 0.666626, 0.722754,
		32.182686, 32.633816, 36.939137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.672371, 32.598221, 36.300743>,  <32.310307, 32.167175, 36.433208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.672371, 32.598221, 36.300743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.885042, 32.819359, 36.557392>,  <32.012646, 32.952042, 36.711380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.885042, 32.819359, 36.557392>,  <31.672371, 32.598221, 36.300743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.885042, 32.819359, 36.557392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019352, 0.765304, -0.643378,
		-0.846725, 0.329654, 0.417595,
		0.531679, 0.552846, 0.641622,
		32.044544, 32.985214, 36.749878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.435038, 33.264236, 36.151699>,  <31.672371, 32.598221, 36.300743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.435038, 33.264236, 36.151699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.775194, 33.329868, 36.351665>,  <31.979288, 33.369247, 36.471645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.775194, 33.329868, 36.351665>,  <31.435038, 33.264236, 36.151699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.775194, 33.329868, 36.351665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214988, 0.758838, -0.614772,
		-0.480224, 0.630272, 0.610034,
		0.850391, 0.164078, 0.499914,
		32.030312, 33.379093, 36.501640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.356976, 33.919094, 36.376965>,  <31.435038, 33.264236, 36.151699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.356976, 33.919094, 36.376965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.751976, 33.856068, 36.375416>,  <31.988976, 33.818253, 36.374489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.751976, 33.856068, 36.375416>,  <31.356976, 33.919094, 36.376965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.751976, 33.856068, 36.375416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136362, 0.866418, -0.480338,
		0.079037, 0.473807, 0.877075,
		0.987501, -0.157564, -0.003870,
		32.048225, 33.808800, 36.374256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.557711, 34.512199, 36.528706>,  <31.356976, 33.919094, 36.376965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.557711, 34.512199, 36.528706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.845980, 34.313583, 36.335182>,  <32.018940, 34.194412, 36.219067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.845980, 34.313583, 36.335182>,  <31.557711, 34.512199, 36.528706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.845980, 34.313583, 36.335182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196433, 0.815516, -0.544378,
		0.664862, 0.297283, 0.685259,
		0.720675, -0.496544, -0.483810,
		32.062183, 34.164619, 36.190041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.951595, 35.157616, 36.489044>,  <31.557711, 34.512199, 36.528706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.951595, 35.157616, 36.489044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.168568, 34.899864, 36.273438>,  <32.298752, 34.745213, 36.144073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.168568, 34.899864, 36.273438>,  <31.951595, 35.157616, 36.489044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.168568, 34.899864, 36.273438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330410, 0.753540, -0.568337,
		0.772398, 0.130186, 0.621653,
		0.542430, -0.644383, -0.539018,
		32.331295, 34.706551, 36.111732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.697693, 35.466911, 36.382465>,  <31.951595, 35.157616, 36.489044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.697693, 35.466911, 36.382465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.615173, 35.191330, 36.104534>,  <32.565662, 35.025982, 35.937775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.615173, 35.191330, 36.104534>,  <32.697693, 35.466911, 36.382465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.615173, 35.191330, 36.104534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185345, 0.669731, -0.719101,
		0.960775, -0.277132, -0.010470,
		-0.206298, -0.688954, -0.694826,
		32.553284, 34.984642, 35.896088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.299133, 35.541637, 35.921402>,  <32.697693, 35.466911, 36.382465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.299133, 35.541637, 35.921402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.991074, 35.366276, 35.736076>,  <32.806236, 35.261059, 35.624882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.991074, 35.366276, 35.736076>,  <33.299133, 35.541637, 35.921402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.991074, 35.366276, 35.736076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099183, 0.635223, -0.765934,
		0.630089, -0.635846, -0.445744,
		-0.770163, -0.438397, -0.463312,
		32.760029, 35.234753, 35.597080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.478664, 35.586708, 35.184528>,  <33.299133, 35.541637, 35.921402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.478664, 35.586708, 35.184528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.086517, 35.509544, 35.200886>,  <32.851231, 35.463245, 35.210701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.086517, 35.509544, 35.200886>,  <33.478664, 35.586708, 35.184528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.086517, 35.509544, 35.200886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174512, 0.752152, -0.635463,
		0.091830, -0.630121, -0.771048,
		-0.980364, -0.192912, 0.040893,
		32.792408, 35.451672, 35.213154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.736885, 34.897575, 35.217545>,  <33.478664, 35.586708, 35.184528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.736885, 34.897575, 35.217545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.123341, 34.964485, 35.138958>,  <34.355213, 35.004631, 35.091808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.123341, 34.964485, 35.138958>,  <33.736885, 34.897575, 35.217545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.123341, 34.964485, 35.138958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255161, -0.732588, 0.631037,
		-0.038369, -0.659798, -0.750463,
		0.966137, 0.167277, -0.196463,
		34.413181, 35.014668, 35.080021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.181419, 34.239346, 35.022648>,  <33.736885, 34.897575, 35.217545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.181419, 34.239346, 35.022648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.457249, 34.506893, 35.133720>,  <34.622746, 34.667423, 35.200363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.457249, 34.506893, 35.133720>,  <34.181419, 34.239346, 35.022648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.457249, 34.506893, 35.133720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384845, -0.663236, 0.641882,
		0.613504, -0.335759, -0.714758,
		0.689571, 0.668868, 0.277682,
		34.664120, 34.707554, 35.217026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.827961, 33.955311, 34.903912>,  <34.181419, 34.239346, 35.022648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.827961, 33.955311, 34.903912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.881569, 34.224178, 35.195179>,  <34.913734, 34.385498, 35.369938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.881569, 34.224178, 35.195179>,  <34.827961, 33.955311, 34.903912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.881569, 34.224178, 35.195179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426680, -0.702338, 0.569794,
		0.894418, 0.234330, -0.380928,
		0.134020, 0.672168, 0.728168,
		34.921776, 34.425827, 35.413628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.441975, 33.799683, 35.199753>,  <34.827961, 33.955311, 34.903912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.441975, 33.799683, 35.199753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.256962, 34.006927, 35.487541>,  <35.145954, 34.131275, 35.660213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.256962, 34.006927, 35.487541>,  <35.441975, 33.799683, 35.199753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.256962, 34.006927, 35.487541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305331, -0.668763, 0.677886,
		0.832371, 0.533216, 0.151127,
		-0.462528, 0.518108, 0.719466,
		35.118202, 34.162361, 35.703381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.952602, 33.645924, 35.822483>,  <35.441975, 33.799683, 35.199753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.952602, 33.645924, 35.822483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.609772, 33.777061, 35.981453>,  <35.404076, 33.855743, 36.076836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.609772, 33.777061, 35.981453>,  <35.952602, 33.645924, 35.822483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.609772, 33.777061, 35.981453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164627, -0.556683, 0.814250,
		0.488186, 0.763297, 0.423146,
		-0.857072, 0.327844, 0.397424,
		35.352650, 33.875416, 36.100681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.072361, 33.756073, 36.591732>,  <35.952602, 33.645924, 35.822483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.072361, 33.756073, 36.591732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.673859, 33.741634, 36.560322>,  <35.434757, 33.732971, 36.541473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.673859, 33.741634, 36.560322>,  <36.072361, 33.756073, 36.591732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.673859, 33.741634, 36.560322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042676, -0.584638, 0.810171,
		-0.075158, 0.810491, 0.580910,
		-0.996258, -0.036100, -0.078528,
		35.374981, 33.730804, 36.536762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.889477, 33.703148, 37.247253>,  <36.072361, 33.756073, 36.591732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.889477, 33.703148, 37.247253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.559174, 33.558983, 37.073715>,  <35.360992, 33.472485, 36.969593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.559174, 33.558983, 37.073715>,  <35.889477, 33.703148, 37.247253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.559174, 33.558983, 37.073715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078224, -0.688584, 0.720925,
		-0.558572, 0.629248, 0.540412,
		-0.825759, -0.360416, -0.433845,
		35.311447, 33.450859, 36.943562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.393570, 33.724812, 37.739994>,  <35.889477, 33.703148, 37.247253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.393570, 33.724812, 37.739994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.274895, 33.436623, 37.489269>,  <35.203690, 33.263710, 37.338837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.274895, 33.436623, 37.489269>,  <35.393570, 33.724812, 37.739994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.274895, 33.436623, 37.489269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049155, -0.643972, 0.763468,
		-0.953707, 0.257326, 0.155646,
		-0.296692, -0.720475, -0.626809,
		35.185886, 33.220482, 37.301228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.918018, 33.339085, 38.196091>,  <35.393570, 33.724812, 37.739994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.918018, 33.339085, 38.196091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.019665, 33.111061, 37.883564>,  <35.080654, 32.974247, 37.696049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.019665, 33.111061, 37.883564>,  <34.918018, 33.339085, 38.196091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.019665, 33.111061, 37.883564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091214, -0.818363, 0.567417,
		-0.962862, -0.072925, -0.259958,
		0.254119, -0.570057, -0.781319,
		35.095901, 32.940044, 37.649170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.500374, 32.711182, 38.165131>,  <34.918018, 33.339085, 38.196091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.500374, 32.711182, 38.165131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.835190, 32.596420, 37.978775>,  <35.036079, 32.527561, 37.866962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.835190, 32.596420, 37.978775>,  <34.500374, 32.711182, 38.165131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.835190, 32.596420, 37.978775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050023, -0.807798, 0.587333,
		-0.544855, -0.514924, -0.661805,
		0.837036, -0.286906, -0.465891,
		35.086300, 32.510349, 37.839008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.381275, 31.941446, 37.985542>,  <34.500374, 32.711182, 38.165131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.381275, 31.941446, 37.985542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.778053, 31.978470, 37.950974>,  <35.016121, 32.000683, 37.930233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.778053, 31.978470, 37.950974>,  <34.381275, 31.941446, 37.985542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.778053, 31.978470, 37.950974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124486, -0.837831, 0.531547,
		-0.023205, -0.538026, -0.842608,
		0.991950, 0.092558, -0.086419,
		35.075638, 32.006237, 37.925049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.726887, 31.270573, 37.775925>,  <34.381275, 31.941446, 37.985542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.726887, 31.270573, 37.775925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.032845, 31.471104, 37.937714>,  <35.216419, 31.591423, 38.034786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.032845, 31.471104, 37.937714>,  <34.726887, 31.270573, 37.775925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.032845, 31.471104, 37.937714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246000, -0.807670, 0.535867,
		0.595327, -0.310383, -0.741113,
		0.764899, 0.501330, 0.404473,
		35.262314, 31.621502, 38.059055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.302181, 30.952209, 37.673508>,  <34.726887, 31.270573, 37.775925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.302181, 30.952209, 37.673508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.382309, 31.156837, 38.007732>,  <35.430386, 31.279615, 38.208267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.382309, 31.156837, 38.007732>,  <35.302181, 30.952209, 37.673508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.382309, 31.156837, 38.007732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155586, -0.858638, 0.488399,
		0.967297, 0.032165, -0.251597,
		0.200322, 0.511572, 0.835563,
		35.442406, 31.310308, 38.258400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.792946, 30.493347, 38.059254>,  <35.302181, 30.952209, 37.673508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.792946, 30.493347, 38.059254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.646244, 30.761921, 38.316833>,  <35.558224, 30.923065, 38.471382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.646244, 30.761921, 38.316833>,  <35.792946, 30.493347, 38.059254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.646244, 30.761921, 38.316833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096569, -0.660965, 0.744177,
		0.925291, 0.335118, 0.177574,
		-0.366758, 0.671432, 0.643947,
		35.536217, 30.963350, 38.510017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.352600, 30.544565, 38.629211>,  <35.792946, 30.493347, 38.059254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.352600, 30.544565, 38.629211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.005466, 30.688467, 38.766285>,  <35.797184, 30.774809, 38.848530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.005466, 30.688467, 38.766285>,  <36.352600, 30.544565, 38.629211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.005466, 30.688467, 38.766285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014737, -0.708056, 0.706002,
		0.496632, 0.607644, 0.619778,
		-0.867836, 0.359757, 0.342689,
		35.745117, 30.796394, 38.869091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.404987, 30.510185, 39.354866>,  <36.352600, 30.544565, 38.629211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.404987, 30.510185, 39.354866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.011105, 30.546480, 39.295364>,  <35.774776, 30.568256, 39.259663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.011105, 30.546480, 39.295364>,  <36.404987, 30.510185, 39.354866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.011105, 30.546480, 39.295364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169492, -0.696833, 0.696919,
		-0.040421, 0.711470, 0.701552,
		-0.984702, 0.090737, -0.148756,
		35.715694, 30.573702, 39.250736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.068787, 30.540174, 39.959896>,  <36.404987, 30.510185, 39.354866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.068787, 30.540174, 39.959896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.766346, 30.426638, 39.724014>,  <35.584881, 30.358515, 39.582485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.766346, 30.426638, 39.724014>,  <36.068787, 30.540174, 39.959896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.766346, 30.426638, 39.724014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357754, -0.575255, 0.735591,
		-0.548022, 0.767147, 0.333403,
		-0.756098, -0.283844, -0.589703,
		35.539516, 30.341484, 39.547104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.518021, 30.756535, 40.267647>,  <36.068787, 30.540174, 39.959896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.518021, 30.756535, 40.267647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.446041, 30.436459, 40.038803>,  <35.402851, 30.244413, 39.901497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.446041, 30.436459, 40.038803>,  <35.518021, 30.756535, 40.267647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.446041, 30.436459, 40.038803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353896, -0.489998, 0.796655,
		-0.917810, 0.345829, -0.195008,
		-0.179953, -0.800190, -0.572112,
		35.392056, 30.196402, 39.867168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.837868, 30.455284, 40.509571>,  <35.518021, 30.756535, 40.267647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.837868, 30.455284, 40.509571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.020653, 30.161482, 40.308895>,  <35.130325, 29.985201, 40.188492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.020653, 30.161482, 40.308895>,  <34.837868, 30.455284, 40.509571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.020653, 30.161482, 40.308895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462349, -0.677976, 0.571473,
		-0.759880, -0.029188, -0.649407,
		0.456963, -0.734504, -0.501686,
		35.157742, 29.941132, 40.158390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.397934, 29.995640, 40.776207>,  <34.837868, 30.455284, 40.509571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.397934, 29.995640, 40.776207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.665249, 29.784679, 40.566353>,  <34.825638, 29.658104, 40.440441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.665249, 29.784679, 40.566353>,  <34.397934, 29.995640, 40.776207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.665249, 29.784679, 40.566353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143642, -0.783457, 0.604618,
		-0.729898, -0.328704, -0.599335,
		0.668293, -0.527399, -0.524628,
		34.865734, 29.626459, 40.408962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.043140, 29.521807, 40.507523>,  <34.397934, 29.995640, 40.776207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.043140, 29.521807, 40.507523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.414787, 29.375244, 40.527454>,  <34.637775, 29.287308, 40.539413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.414787, 29.375244, 40.527454>,  <34.043140, 29.521807, 40.507523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.414787, 29.375244, 40.527454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264206, -0.563526, 0.782709,
		-0.258709, -0.740396, -0.620390,
		0.929120, -0.366404, 0.049828,
		34.693523, 29.265322, 40.542404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.026684, 28.756670, 40.495907>,  <34.043140, 29.521807, 40.507523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.026684, 28.756670, 40.495907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.357132, 28.890686, 40.677135>,  <34.555401, 28.971096, 40.785873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.357132, 28.890686, 40.677135>,  <34.026684, 28.756670, 40.495907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.357132, 28.890686, 40.677135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166173, -0.623432, 0.764015,
		0.538438, -0.706456, -0.459353,
		0.826118, 0.335042, 0.453073,
		34.604969, 28.991199, 40.813057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.384892, 28.144424, 40.692921>,  <34.026684, 28.756670, 40.495907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.384892, 28.144424, 40.692921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.529579, 28.429325, 40.933537>,  <34.616394, 28.600266, 41.077908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.529579, 28.429325, 40.933537>,  <34.384892, 28.144424, 40.692921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.529579, 28.429325, 40.933537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216320, -0.563503, 0.797289,
		0.906842, -0.418523, -0.049757,
		0.361722, 0.712252, 0.601543,
		34.638096, 28.643002, 41.113998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.012127, 27.839640, 41.136784>,  <34.384892, 28.144424, 40.692921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.012127, 27.839640, 41.136784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.842518, 28.156078, 41.313133>,  <34.740753, 28.345942, 41.418945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.842518, 28.156078, 41.313133>,  <35.012127, 27.839640, 41.136784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.842518, 28.156078, 41.313133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066481, -0.512681, 0.856001,
		0.903210, 0.333650, 0.269979,
		-0.424018, 0.791098, 0.440877,
		34.715313, 28.393408, 41.445396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.385406, 27.886597, 41.787403>,  <35.012127, 27.839640, 41.136784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.385406, 27.886597, 41.787403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.051373, 28.101099, 41.836494>,  <34.850952, 28.229799, 41.865948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.051373, 28.101099, 41.836494>,  <35.385406, 27.886597, 41.787403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.051373, 28.101099, 41.836494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016214, -0.246992, 0.968882,
		0.549880, 0.807110, 0.214954,
		-0.835087, 0.536254, 0.122729,
		34.800846, 28.261974, 41.873314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.454300, 28.375990, 42.393620>,  <35.385406, 27.886597, 41.787403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.454300, 28.375990, 42.393620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.062428, 28.323126, 42.333271>,  <34.827305, 28.291407, 42.297062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.062428, 28.323126, 42.333271>,  <35.454300, 28.375990, 42.393620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.062428, 28.323126, 42.333271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129456, -0.157920, 0.978929,
		-0.153202, 0.978568, 0.137602,
		-0.979679, -0.132160, -0.150875,
		34.768524, 28.283478, 42.288010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.137039, 28.710779, 42.894253>,  <35.454300, 28.375990, 42.393620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.137039, 28.710779, 42.894253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.835186, 28.477264, 42.774437>,  <34.654076, 28.337154, 42.702545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.835186, 28.477264, 42.774437>,  <35.137039, 28.710779, 42.894253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.835186, 28.477264, 42.774437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343786, -0.037057, 0.938317,
		-0.558878, 0.811060, -0.172734,
		-0.754630, -0.583788, -0.299541,
		34.608795, 28.302128, 42.684574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.618286, 28.837519, 43.382587>,  <35.137039, 28.710779, 42.894253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.618286, 28.837519, 43.382587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.458092, 28.521004, 43.197773>,  <34.361977, 28.331095, 43.086884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.458092, 28.521004, 43.197773>,  <34.618286, 28.837519, 43.382587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.458092, 28.521004, 43.197773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439983, -0.276242, 0.854462,
		-0.803759, 0.545485, -0.237523,
		-0.400482, -0.791288, -0.462037,
		34.337948, 28.283617, 43.059162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.841301, 28.787733, 43.338341>,  <34.618286, 28.837519, 43.382587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.841301, 28.787733, 43.338341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.012882, 28.426645, 43.351593>,  <34.115829, 28.209993, 43.359543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.012882, 28.426645, 43.351593>,  <33.841301, 28.787733, 43.338341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.012882, 28.426645, 43.351593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408841, -0.161307, 0.898237,
		-0.805512, -0.398844, -0.438262,
		0.428951, -0.902720, 0.033128,
		34.141567, 28.155828, 43.361530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.338867, 28.311935, 43.550091>,  <33.841301, 28.787733, 43.338341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.338867, 28.311935, 43.550091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.661884, 28.081560, 43.600964>,  <33.855694, 27.943335, 43.631489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.661884, 28.081560, 43.600964>,  <33.338867, 28.311935, 43.550091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.661884, 28.081560, 43.600964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388807, -0.357659, 0.849064,
		-0.443518, -0.735103, -0.512752,
		0.807540, -0.575937, 0.127185,
		33.904148, 27.908779, 43.639118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.077091, 27.700397, 43.788826>,  <33.338867, 28.311935, 43.550091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.077091, 27.700397, 43.788826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.457085, 27.670477, 43.910103>,  <33.685081, 27.652525, 43.982868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.457085, 27.670477, 43.910103>,  <33.077091, 27.700397, 43.788826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.457085, 27.670477, 43.910103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311592, -0.291816, 0.904297,
		0.020834, -0.953545, -0.300529,
		0.949987, -0.074803, 0.303197,
		33.742081, 27.648035, 44.001060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.229099, 26.997881, 44.130440>,  <33.077091, 27.700397, 43.788826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.229099, 26.997881, 44.130440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.541252, 27.205456, 44.269985>,  <33.728542, 27.330002, 44.353714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.541252, 27.205456, 44.269985>,  <33.229099, 26.997881, 44.130440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.541252, 27.205456, 44.269985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125138, -0.417018, 0.900243,
		0.612654, -0.746189, -0.260494,
		0.780382, 0.518939, 0.348864,
		33.775368, 27.361137, 44.374645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.728962, 26.541262, 44.573776>,  <33.229099, 26.997881, 44.130440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.728962, 26.541262, 44.573776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.804195, 26.910015, 44.709278>,  <33.849335, 27.131268, 44.790581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.804195, 26.910015, 44.709278>,  <33.728962, 26.541262, 44.573776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.804195, 26.910015, 44.709278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069890, -0.331472, 0.940873,
		0.979664, -0.200636, 0.002087,
		0.188081, 0.921885, 0.338754,
		33.860619, 27.186581, 44.810905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.207623, 26.506462, 45.180836>,  <33.728962, 26.541262, 44.573776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.207623, 26.506462, 45.180836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.045204, 26.866253, 45.245415>,  <33.947754, 27.082127, 45.284164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.045204, 26.866253, 45.245415>,  <34.207623, 26.506462, 45.180836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.045204, 26.866253, 45.245415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193118, -0.257139, 0.946882,
		0.893213, 0.353301, 0.278116,
		-0.406049, 0.899476, 0.161451,
		33.923389, 27.136095, 45.293850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.415619, 26.665092, 45.775780>,  <34.207623, 26.506462, 45.180836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.415619, 26.665092, 45.775780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.119617, 26.933409, 45.756042>,  <33.942017, 27.094398, 45.744202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.119617, 26.933409, 45.756042>,  <34.415619, 26.665092, 45.775780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.119617, 26.933409, 45.756042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257705, -0.215002, 0.941999,
		0.621274, 0.709800, 0.331968,
		-0.740004, 0.670789, -0.049344,
		33.897617, 27.134645, 45.741238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.472260, 27.158739, 46.335232>,  <34.415619, 26.665092, 45.775780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.472260, 27.158739, 46.335232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.088806, 27.170517, 46.221985>,  <33.858734, 27.177584, 46.154037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.088806, 27.170517, 46.221985>,  <34.472260, 27.158739, 46.335232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.088806, 27.170517, 46.221985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283131, -0.200992, 0.937784,
		-0.029291, 0.979150, 0.201014,
		-0.958634, 0.029445, -0.283115,
		33.801216, 27.179350, 46.137051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.219460, 27.541691, 46.913120>,  <34.472260, 27.158739, 46.335232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.219460, 27.541691, 46.913120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.891712, 27.404152, 46.729645>,  <33.695065, 27.321629, 46.619560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.891712, 27.404152, 46.729645>,  <34.219460, 27.541691, 46.913120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.891712, 27.404152, 46.729645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458974, -0.085918, 0.884285,
		-0.343469, 0.935086, -0.087418,
		-0.819373, -0.343847, -0.458691,
		33.645901, 27.300997, 46.592037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.648518, 27.921431, 47.116184>,  <34.219460, 27.541691, 46.913120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.648518, 27.921431, 47.116184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.515305, 27.564081, 46.995541>,  <33.435375, 27.349670, 46.923153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.515305, 27.564081, 46.995541>,  <33.648518, 27.921431, 47.116184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.515305, 27.564081, 46.995541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504156, -0.101595, 0.857616,
		-0.796814, 0.437676, -0.416565,
		-0.333037, -0.893375, -0.301610,
		33.415394, 27.296068, 46.905056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.927906, 28.056698, 47.845177>,  <33.648518, 27.921431, 47.116184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.927906, 28.056698, 47.845177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.965405, 28.406693, 48.035168>,  <33.987904, 28.616690, 48.149162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.965405, 28.406693, 48.035168>,  <33.927906, 28.056698, 47.845177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.965405, 28.406693, 48.035168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055796, 0.480949, -0.874971,
		-0.994031, 0.055527, 0.093910,
		0.093750, 0.874989, 0.474980,
		33.993530, 28.669189, 48.177662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.381916, 28.469957, 47.523788>,  <33.927906, 28.056698, 47.845177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.381916, 28.469957, 47.523788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.644203, 28.721355, 47.691135>,  <33.801575, 28.872194, 47.791542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.644203, 28.721355, 47.691135>,  <33.381916, 28.469957, 47.523788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.644203, 28.721355, 47.691135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023073, 0.570542, -0.820944,
		-0.754655, 0.528653, 0.388615,
		0.655716, 0.628496, 0.418365,
		33.840919, 28.909904, 47.816647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.155540, 29.111214, 47.295528>,  <33.381916, 28.469957, 47.523788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.155540, 29.111214, 47.295528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.527832, 29.190096, 47.418720>,  <33.751205, 29.237425, 47.492634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.527832, 29.190096, 47.418720>,  <33.155540, 29.111214, 47.295528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.527832, 29.190096, 47.418720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076803, 0.717966, -0.691828,
		-0.357552, 0.667558, 0.653087,
		0.930730, 0.197206, 0.307981,
		33.807053, 29.249258, 47.511116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.243423, 29.833965, 47.206364>,  <33.155540, 29.111214, 47.295528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.243423, 29.833965, 47.206364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.603283, 29.659346, 47.209560>,  <33.819199, 29.554573, 47.211479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.603283, 29.659346, 47.209560>,  <33.243423, 29.833965, 47.206364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.603283, 29.659346, 47.209560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272837, 0.547788, -0.790878,
		0.340882, 0.713689, 0.611921,
		0.899644, -0.436551, 0.007990,
		33.873177, 29.528379, 47.211956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.705273, 30.362917, 46.971432>,  <33.243423, 29.833965, 47.206364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.705273, 30.362917, 46.971432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.923237, 30.030460, 46.927105>,  <34.054016, 29.830986, 46.900509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.923237, 30.030460, 46.927105>,  <33.705273, 30.362917, 46.971432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.923237, 30.030460, 46.927105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208565, 0.262362, -0.942161,
		0.812144, 0.490276, 0.316309,
		0.544906, -0.831141, -0.110821,
		34.086708, 29.781118, 46.893860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.274288, 30.644348, 46.700294>,  <33.705273, 30.362917, 46.971432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.274288, 30.644348, 46.700294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.223995, 30.257723, 46.610897>,  <34.193821, 30.025747, 46.557259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.223995, 30.257723, 46.610897>,  <34.274288, 30.644348, 46.700294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.223995, 30.257723, 46.610897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050250, 0.218787, -0.974478,
		0.990791, -0.133753, 0.021061,
		-0.125732, -0.966562, -0.223493,
		34.186275, 29.967754, 46.543850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.619564, 30.611431, 46.151020>,  <34.274288, 30.644348, 46.700294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.619564, 30.611431, 46.151020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.390465, 30.284515, 46.125736>,  <34.253006, 30.088366, 46.110565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.390465, 30.284515, 46.125736>,  <34.619564, 30.611431, 46.151020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.390465, 30.284515, 46.125736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081544, 0.133537, -0.987684,
		0.815664, -0.560542, -0.143128,
		-0.572751, -0.817289, -0.063212,
		34.218639, 30.039330, 46.106773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.951138, 30.309235, 45.603611>,  <34.619564, 30.611431, 46.151020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.951138, 30.309235, 45.603611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.585751, 30.154268, 45.653400>,  <34.366520, 30.061289, 45.683273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.585751, 30.154268, 45.653400>,  <34.951138, 30.309235, 45.603611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.585751, 30.154268, 45.653400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220375, 0.213852, -0.951684,
		0.342077, -0.896760, -0.280723,
		-0.913465, -0.387413, 0.124469,
		34.311710, 30.038044, 45.690742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.953526, 29.819139, 45.059933>,  <34.951138, 30.309235, 45.603611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.953526, 29.819139, 45.059933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.580631, 29.908554, 45.173759>,  <34.356895, 29.962202, 45.242054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.580631, 29.908554, 45.173759>,  <34.953526, 29.819139, 45.059933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.580631, 29.908554, 45.173759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230355, 0.239885, -0.943076,
		-0.279073, -0.944715, -0.172136,
		-0.932231, 0.223535, 0.284566,
		34.300961, 29.975615, 45.259129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.501560, 29.450220, 44.612564>,  <34.953526, 29.819139, 45.059933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.501560, 29.450220, 44.612564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.310867, 29.768316, 44.762402>,  <34.196453, 29.959173, 44.852303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.310867, 29.768316, 44.762402>,  <34.501560, 29.450220, 44.612564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.310867, 29.768316, 44.762402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152549, 0.344825, -0.926188,
		-0.865712, -0.498685, -0.043075,
		-0.476729, 0.795241, 0.374594,
		34.167847, 30.006889, 44.874779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.778721, 29.582537, 44.290695>,  <34.501560, 29.450220, 44.612564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.778721, 29.582537, 44.290695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.907524, 29.935034, 44.429100>,  <33.984806, 30.146532, 44.512142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.907524, 29.935034, 44.429100>,  <33.778721, 29.582537, 44.290695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.907524, 29.935034, 44.429100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104065, 0.396213, -0.912242,
		-0.941000, 0.257740, 0.219290,
		0.322007, 0.881240, 0.346015,
		34.004128, 30.199406, 44.532906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.377934, 30.130577, 44.014820>,  <33.778721, 29.582537, 44.290695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.377934, 30.130577, 44.014820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.691216, 30.332748, 44.159672>,  <33.879185, 30.454052, 44.246582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.691216, 30.332748, 44.159672>,  <33.377934, 30.130577, 44.014820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.691216, 30.332748, 44.159672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061284, 0.516831, -0.853891,
		-0.618740, 0.690962, 0.373808,
		0.783202, 0.505428, 0.362128,
		33.926178, 30.484377, 44.268311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.289204, 30.824305, 43.709351>,  <33.377934, 30.130577, 44.014820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.289204, 30.824305, 43.709351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.673122, 30.825640, 43.821625>,  <33.903473, 30.826441, 43.888988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.673122, 30.825640, 43.821625>,  <33.289204, 30.824305, 43.709351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.673122, 30.825640, 43.821625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215552, 0.631776, -0.744578,
		-0.179816, 0.775144, 0.605655,
		0.959793, 0.003337, 0.280688,
		33.961060, 30.826641, 43.905830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.497032, 31.452648, 43.321838>,  <33.289204, 30.824305, 43.709351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.497032, 31.452648, 43.321838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.830803, 31.283751, 43.463516>,  <34.031063, 31.182413, 43.548523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.830803, 31.283751, 43.463516>,  <33.497032, 31.452648, 43.321838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.830803, 31.283751, 43.463516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534145, 0.461294, -0.708447,
		0.135751, 0.780333, 0.610453,
		0.834422, -0.422243, 0.354190,
		34.081131, 31.157078, 43.569775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.953159, 31.983702, 43.425449>,  <33.497032, 31.452648, 43.321838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.953159, 31.983702, 43.425449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.208687, 31.676357, 43.409782>,  <34.362003, 31.491951, 43.400383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.208687, 31.676357, 43.409782>,  <33.953159, 31.983702, 43.425449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.208687, 31.676357, 43.409782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509999, 0.461032, -0.726189,
		0.576030, 0.443930, 0.686378,
		0.638820, -0.768359, -0.039165,
		34.400333, 31.445850, 43.398033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.660679, 32.175190, 43.438911>,  <33.953159, 31.983702, 43.425449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.660679, 32.175190, 43.438911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.669220, 31.833662, 43.230862>,  <34.674347, 31.628744, 43.106030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.669220, 31.833662, 43.230862>,  <34.660679, 32.175190, 43.438911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.669220, 31.833662, 43.230862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420230, 0.479723, -0.770242,
		0.907167, -0.202124, 0.369046,
		0.021355, -0.853822, -0.520127,
		34.675625, 31.577515, 43.074825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.280289, 32.163334, 43.205391>,  <34.660679, 32.175190, 43.438911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.280289, 32.163334, 43.205391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.087639, 31.893156, 42.982033>,  <34.972050, 31.731049, 42.848019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.087639, 31.893156, 42.982033>,  <35.280289, 32.163334, 43.205391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.087639, 31.893156, 42.982033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327538, 0.452261, -0.829566,
		0.812867, -0.582440, 0.003412,
		-0.481629, -0.675444, -0.558399,
		34.943150, 31.690523, 42.814514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.706474, 31.923138, 42.652946>,  <35.280289, 32.163334, 43.205391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.706474, 31.923138, 42.652946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.340740, 31.834923, 42.517086>,  <35.121300, 31.781994, 42.435570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.340740, 31.834923, 42.517086>,  <35.706474, 31.923138, 42.652946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.340740, 31.834923, 42.517086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235873, 0.391748, -0.889324,
		0.329183, -0.893252, -0.306170,
		-0.914332, -0.220533, -0.339650,
		35.066441, 31.768763, 42.415192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.857800, 31.674786, 42.036289>,  <35.706474, 31.923138, 42.652946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.857800, 31.674786, 42.036289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.467587, 31.759472, 42.012566>,  <35.233459, 31.810284, 41.998329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.467587, 31.759472, 42.012566>,  <35.857800, 31.674786, 42.036289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.467587, 31.759472, 42.012566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135847, 0.368293, -0.919732,
		-0.172877, -0.905283, -0.388042,
		-0.975530, 0.211715, -0.059311,
		35.174927, 31.822987, 41.994774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.591919, 31.446545, 41.426052>,  <35.857800, 31.674786, 42.036289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.591919, 31.446545, 41.426052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.344830, 31.744879, 41.525764>,  <35.196575, 31.923880, 41.585594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.344830, 31.744879, 41.525764>,  <35.591919, 31.446545, 41.426052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.344830, 31.744879, 41.525764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124660, 0.405859, -0.905394,
		-0.776450, -0.528210, -0.343685,
		-0.617726, 0.745837, 0.249283,
		35.159512, 31.968630, 41.600548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.499207, 31.581352, 40.753651>,  <35.591919, 31.446545, 41.426052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.499207, 31.581352, 40.753651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.331852, 31.879234, 40.961639>,  <35.231438, 32.057964, 41.086433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.331852, 31.879234, 40.961639>,  <35.499207, 31.581352, 40.753651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.331852, 31.879234, 40.961639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060569, 0.594083, -0.802121,
		-0.906248, -0.304101, -0.293661,
		-0.418385, 0.744707, 0.519967,
		35.206337, 32.102646, 41.117630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.053791, 31.835876, 40.384907>,  <35.499207, 31.581352, 40.753651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.053791, 31.835876, 40.384907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.135742, 32.137051, 40.635063>,  <35.184914, 32.317757, 40.785156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.135742, 32.137051, 40.635063>,  <35.053791, 31.835876, 40.384907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.135742, 32.137051, 40.635063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106444, 0.618015, -0.778927,
		-0.972982, 0.226156, 0.046474,
		0.204880, 0.752935, 0.625390,
		35.197205, 32.362930, 40.822681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.779293, 32.413631, 40.038757>,  <35.053791, 31.835876, 40.384907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.779293, 32.413631, 40.038757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.030334, 32.562508, 40.312279>,  <35.180958, 32.651833, 40.476391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.030334, 32.562508, 40.312279>,  <34.779293, 32.413631, 40.038757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.030334, 32.562508, 40.312279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349578, 0.650081, -0.674677,
		-0.695635, 0.662474, 0.277885,
		0.627604, 0.372186, 0.683806,
		35.218616, 32.674164, 40.517422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.759171, 33.168755, 39.939896>,  <34.779293, 32.413631, 40.038757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.759171, 33.168755, 39.939896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.108627, 33.104076, 40.123466>,  <35.318302, 33.065269, 40.233608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.108627, 33.104076, 40.123466>,  <34.759171, 33.168755, 39.939896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.108627, 33.104076, 40.123466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430168, 0.697452, -0.573164,
		-0.227403, 0.698153, 0.678875,
		0.873638, -0.161691, 0.458925,
		35.370720, 33.055569, 40.261143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.052891, 33.848930, 40.057957>,  <34.759171, 33.168755, 39.939896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.052891, 33.848930, 40.057957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.356773, 33.589352, 40.074509>,  <35.539104, 33.433605, 40.084442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.356773, 33.589352, 40.074509>,  <35.052891, 33.848930, 40.057957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.356773, 33.589352, 40.074509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542407, 0.597307, -0.590778,
		0.358666, 0.471264, 0.805772,
		0.759706, -0.648948, 0.041384,
		35.584686, 33.394669, 40.086926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.698524, 34.205666, 40.164238>,  <35.052891, 33.848930, 40.057957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.698524, 34.205666, 40.164238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.797394, 33.855801, 39.997448>,  <35.856716, 33.645882, 39.897373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.797394, 33.855801, 39.997448>,  <35.698524, 34.205666, 40.164238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.797394, 33.855801, 39.997448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649260, 0.468936, -0.598799,
		0.719282, -0.122715, 0.683794,
		0.247174, -0.874665, -0.416972,
		35.871548, 33.593403, 39.872356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.400036, 34.230938, 40.173569>,  <35.698524, 34.205666, 40.164238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.400036, 34.230938, 40.173569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.323288, 33.956860, 39.892517>,  <36.277241, 33.792412, 39.723885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.323288, 33.956860, 39.892517>,  <36.400036, 34.230938, 40.173569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.323288, 33.956860, 39.892517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630525, 0.462572, -0.623270,
		0.752081, -0.562611, 0.343283,
		-0.191865, -0.685198, -0.702632,
		36.265728, 33.751301, 39.681728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.046555, 34.017284, 39.848503>,  <36.400036, 34.230938, 40.173569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.046555, 34.017284, 39.848503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.766972, 33.912598, 39.582283>,  <36.599220, 33.849785, 39.422550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.766972, 33.912598, 39.582283>,  <37.046555, 34.017284, 39.848503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.766972, 33.912598, 39.582283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577765, 0.341822, -0.741178,
		0.421479, -0.902587, -0.087709,
		-0.698958, -0.261715, -0.665554,
		36.557285, 33.834084, 39.382618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.383530, 33.531551, 39.249866>,  <37.046555, 34.017284, 39.848503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.383530, 33.531551, 39.249866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.045128, 33.685963, 39.102757>,  <36.842087, 33.778610, 39.014492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.045128, 33.685963, 39.102757>,  <37.383530, 33.531551, 39.249866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.045128, 33.685963, 39.102757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522505, 0.462934, -0.716017,
		-0.106150, -0.797917, -0.593348,
		-0.846003, 0.386032, -0.367774,
		36.791328, 33.801773, 38.992424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.361603, 33.380135, 38.591785>,  <37.383530, 33.531551, 39.249866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.361603, 33.380135, 38.591785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.130733, 33.704945, 38.626400>,  <36.992210, 33.899830, 38.647171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.130733, 33.704945, 38.626400>,  <37.361603, 33.380135, 38.591785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.130733, 33.704945, 38.626400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484525, 0.425830, -0.764136,
		-0.657347, -0.399109, -0.639224,
		-0.577174, 0.812022, 0.086540,
		36.957581, 33.948551, 38.652363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.469597, 33.670227, 37.900146>,  <37.361603, 33.380135, 38.591785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.469597, 33.670227, 37.900146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.278721, 33.973999, 38.077034>,  <37.164196, 34.156261, 38.183167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.278721, 33.973999, 38.077034>,  <37.469597, 33.670227, 37.900146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.278721, 33.973999, 38.077034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297173, 0.613011, -0.732056,
		-0.827032, -0.217910, -0.518202,
		-0.477186, 0.759429, 0.442223,
		37.135567, 34.201828, 38.209702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.157372, 33.972816, 37.309200>,  <37.469597, 33.670227, 37.900146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.157372, 33.972816, 37.309200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.210083, 34.219925, 37.619293>,  <37.241711, 34.368191, 37.805351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.210083, 34.219925, 37.619293>,  <37.157372, 33.972816, 37.309200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.210083, 34.219925, 37.619293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455267, 0.656980, -0.600924,
		-0.880550, 0.432125, -0.194679,
		0.131774, 0.617774, 0.775236,
		37.249615, 34.405258, 37.851864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.023232, 34.683865, 36.990456>,  <37.157372, 33.972816, 37.309200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.023232, 34.683865, 36.990456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.212933, 34.769604, 37.332016>,  <37.326756, 34.821045, 37.536953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.212933, 34.769604, 37.332016>,  <37.023232, 34.683865, 36.990456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.212933, 34.769604, 37.332016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525606, 0.709155, -0.469933,
		-0.706272, 0.671681, 0.223660,
		0.474255, 0.214343, 0.853896,
		37.355209, 34.833908, 37.588184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.997311, 35.379646, 37.070107>,  <37.023232, 34.683865, 36.990456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.997311, 35.379646, 37.070107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.297806, 35.282604, 37.315639>,  <37.478104, 35.224380, 37.462959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.297806, 35.282604, 37.315639>,  <36.997311, 35.379646, 37.070107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.297806, 35.282604, 37.315639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407842, 0.901830, -0.142712,
		-0.518947, 0.357556, 0.776432,
		0.751238, -0.242602, 0.613829,
		37.523178, 35.209824, 37.499786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.125896, 35.991589, 37.492840>,  <36.997311, 35.379646, 37.070107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.125896, 35.991589, 37.492840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.464710, 35.778976, 37.493149>,  <37.667999, 35.651409, 37.493336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.464710, 35.778976, 37.493149>,  <37.125896, 35.991589, 37.492840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.464710, 35.778976, 37.493149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527773, 0.840867, -0.119993,
		0.063132, 0.102045, 0.992775,
		0.847036, -0.531534, 0.000771,
		37.718822, 35.619514, 37.493382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.599907, 36.317890, 37.990257>,  <37.125896, 35.991589, 37.492840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.599907, 36.317890, 37.990257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.843079, 36.112583, 37.747944>,  <37.988983, 35.989399, 37.602554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.843079, 36.112583, 37.747944>,  <37.599907, 36.317890, 37.990257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.843079, 36.112583, 37.747944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643162, 0.765723, -0.003334,
		0.465576, -0.387593, 0.795619,
		0.607932, -0.513265, -0.605788,
		38.025459, 35.958603, 37.566208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.272549, 36.480431, 38.301113>,  <37.599907, 36.317890, 37.990257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.272549, 36.480431, 38.301113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.389759, 36.292274, 37.968159>,  <38.460087, 36.179382, 37.768387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.389759, 36.292274, 37.968159>,  <38.272549, 36.480431, 38.301113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.389759, 36.292274, 37.968159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669149, 0.722743, -0.172865,
		0.682916, -0.506336, 0.526545,
		0.293029, -0.470389, -0.832387,
		38.477669, 36.151157, 37.718441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.032310, 36.298664, 38.311779>,  <38.272549, 36.480431, 38.301113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.032310, 36.298664, 38.311779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.932045, 36.326931, 37.925583>,  <38.871883, 36.343891, 37.693867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.932045, 36.326931, 37.925583>,  <39.032310, 36.298664, 38.311779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.932045, 36.326931, 37.925583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774925, 0.612405, -0.156368,
		0.580222, -0.787379, -0.208270,
		-0.250667, 0.070666, -0.965491,
		38.856846, 36.348129, 37.635937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.716728, 36.357193, 38.021252>,  <39.032310, 36.298664, 38.311779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.716728, 36.357193, 38.021252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.479828, 36.476250, 37.721745>,  <39.337688, 36.547684, 37.542042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.479828, 36.476250, 37.721745>,  <39.716728, 36.357193, 38.021252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.479828, 36.476250, 37.721745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730870, 0.589658, -0.343705,
		0.339214, -0.750809, -0.566763,
		-0.592253, 0.297640, -0.748763,
		39.302151, 36.565540, 37.497116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.135323, 36.346241, 37.342499>,  <39.716728, 36.357193, 38.021252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.135323, 36.346241, 37.342499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.834599, 36.595554, 37.256428>,  <39.654163, 36.745144, 37.204784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.834599, 36.595554, 37.256428>,  <40.135323, 36.346241, 37.342499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.834599, 36.595554, 37.256428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610417, 0.534466, -0.584583,
		-0.249354, -0.570844, -0.782279,
		-0.751807, 0.623285, -0.215182,
		39.609058, 36.782539, 37.191872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.000126, 36.355278, 36.610771>,  <40.135323, 36.346241, 37.342499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.000126, 36.355278, 36.610771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.904034, 36.697964, 36.793339>,  <39.846378, 36.903576, 36.902882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.904034, 36.697964, 36.793339>,  <40.000126, 36.355278, 36.610771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.904034, 36.697964, 36.793339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728502, 0.469864, -0.498510,
		-0.641540, 0.212746, -0.736998,
		-0.240233, 0.856719, 0.456423,
		39.831963, 36.954979, 36.930267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.043785, 36.905113, 36.149883>,  <40.000126, 36.355278, 36.610771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.043785, 36.905113, 36.149883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.111454, 37.057995, 36.513268>,  <40.152054, 37.149723, 36.731297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.111454, 37.057995, 36.513268>,  <40.043785, 36.905113, 36.149883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.111454, 37.057995, 36.513268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831475, 0.439554, -0.339766,
		-0.529178, 0.812841, -0.243435,
		0.169173, 0.382207, 0.908459,
		40.162205, 37.172657, 36.785805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.897629, 37.678787, 36.182903>,  <40.043785, 36.905113, 36.149883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.897629, 37.678787, 36.182903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.178696, 37.583210, 36.450985>,  <40.347336, 37.525864, 36.611832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.178696, 37.583210, 36.450985>,  <39.897629, 37.678787, 36.182903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.178696, 37.583210, 36.450985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597605, 0.709414, -0.373630,
		-0.386175, 0.663052, 0.641272,
		0.702664, -0.238941, 0.670202,
		40.389496, 37.511528, 36.652046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.047543, 38.306099, 36.633694>,  <39.897629, 37.678787, 36.182903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.047543, 38.306099, 36.633694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.353298, 38.053631, 36.581024>,  <40.536751, 37.902149, 36.549423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.353298, 38.053631, 36.581024>,  <40.047543, 38.306099, 36.633694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.353298, 38.053631, 36.581024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584564, 0.764582, -0.271475,
		0.272019, 0.130543, 0.953396,
		0.764389, -0.631168, -0.131670,
		40.582615, 37.864281, 36.541523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.612091, 38.485260, 36.935791>,  <40.047543, 38.306099, 36.633694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.612091, 38.485260, 36.935791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.813789, 38.275013, 36.661720>,  <40.934807, 38.148865, 36.497280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.813789, 38.275013, 36.661720>,  <40.612091, 38.485260, 36.935791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.813789, 38.275013, 36.661720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605649, 0.780830, -0.153278,
		0.615569, -0.337684, 0.712071,
		0.504247, -0.525618, -0.685173,
		40.965065, 38.117329, 36.456169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.342194, 38.560158, 37.069778>,  <40.612091, 38.485260, 36.935791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.342194, 38.560158, 37.069778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.323818, 38.469307, 36.680668>,  <41.312794, 38.414795, 36.447201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.323818, 38.469307, 36.680668>,  <41.342194, 38.560158, 37.069778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.323818, 38.469307, 36.680668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455094, 0.862123, -0.222786,
		0.889258, -0.452940, 0.063762,
		-0.045938, -0.227132, -0.972780,
		41.310036, 38.401169, 36.388832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.936947, 38.406826, 36.747452>,  <41.342194, 38.560158, 37.069778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.936947, 38.406826, 36.747452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.680111, 38.606808, 36.514980>,  <41.526009, 38.726799, 36.375500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.680111, 38.606808, 36.514980>,  <41.936947, 38.406826, 36.747452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.680111, 38.606808, 36.514980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664708, 0.740762, -0.097131,
		0.381951, -0.448678, -0.807961,
		-0.642088, 0.499959, -0.581175,
		41.487484, 38.756794, 36.340630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.491997, 38.015060, 36.504314>,  <41.936947, 38.406826, 36.747452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.491997, 38.015060, 36.504314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.811554, 37.833271, 36.346718>,  <43.003288, 37.724197, 36.252159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.811554, 37.833271, 36.346718>,  <42.491997, 38.015060, 36.504314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.811554, 37.833271, 36.346718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152847, -0.480143, 0.863771,
		-0.581733, -0.750279, -0.314117,
		0.798890, -0.454472, -0.393993,
		43.051220, 37.696930, 36.228519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.470989, 37.276718, 36.778614>,  <42.491997, 38.015060, 36.504314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.470989, 37.276718, 36.778614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.853764, 37.302010, 36.665287>,  <43.083427, 37.317184, 36.597290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.853764, 37.302010, 36.665287>,  <42.470989, 37.276718, 36.778614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.853764, 37.302010, 36.665287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276552, -0.495215, 0.823578,
		-0.088231, -0.866467, -0.491377,
		0.956940, 0.063226, -0.283317,
		43.140846, 37.320976, 36.580292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.789356, 36.647980, 36.946121>,  <42.470989, 37.276718, 36.778614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.789356, 36.647980, 36.946121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.096184, 36.902458, 36.912994>,  <43.280281, 37.055145, 36.893120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.096184, 36.902458, 36.912994>,  <42.789356, 36.647980, 36.946121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.096184, 36.902458, 36.912994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467249, -0.465517, 0.751646,
		0.439646, -0.615258, -0.654346,
		0.767066, 0.636201, -0.082816,
		43.326305, 37.093319, 36.888149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.456703, 36.314732, 36.796963>,  <42.789356, 36.647980, 36.946121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.456703, 36.314732, 36.796963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.539623, 36.662407, 36.976536>,  <43.589375, 36.871010, 37.084282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.539623, 36.662407, 36.976536>,  <43.456703, 36.314732, 36.796963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.539623, 36.662407, 36.976536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576142, -0.479348, 0.662032,
		0.790625, 0.121414, -0.600142,
		0.207297, 0.869186, 0.448936,
		43.601810, 36.923164, 37.111217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.001606, 36.153461, 37.213799>,  <43.456703, 36.314732, 36.796963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.001606, 36.153461, 37.213799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.946503, 36.520256, 37.363548>,  <43.913441, 36.740334, 37.453400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.946503, 36.520256, 37.363548>,  <44.001606, 36.153461, 37.213799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.946503, 36.520256, 37.363548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439743, -0.282058, 0.852684,
		0.887495, 0.282093, -0.364383,
		-0.137759, 0.916988, 0.374374,
		43.905174, 36.795353, 37.475861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.685921, 36.419849, 37.352043>,  <44.001606, 36.153461, 37.213799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.685921, 36.419849, 37.352043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.407177, 36.597122, 37.577602>,  <44.239929, 36.703484, 37.712936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.407177, 36.597122, 37.577602>,  <44.685921, 36.419849, 37.352043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.407177, 36.597122, 37.577602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546662, -0.180748, 0.817613,
		0.464271, 0.878022, -0.116313,
		-0.696859, 0.443178, 0.563898,
		44.198120, 36.730076, 37.746773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.082848, 36.716263, 37.858891>,  <44.685921, 36.419849, 37.352043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.082848, 36.716263, 37.858891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.725433, 36.760490, 38.032959>,  <44.510986, 36.787025, 38.137402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.725433, 36.760490, 38.032959>,  <45.082848, 36.716263, 37.858891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.725433, 36.760490, 38.032959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426677, -0.092688, 0.899642,
		0.139808, 0.989537, 0.035642,
		-0.893532, 0.110569, 0.435172,
		44.457375, 36.793659, 38.163509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.069801, 37.348606, 38.448898>,  <45.082848, 36.716263, 37.858891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.069801, 37.348606, 38.448898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.803333, 37.063923, 38.538067>,  <44.643452, 36.893112, 38.591568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.803333, 37.063923, 38.538067>,  <45.069801, 37.348606, 38.448898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.803333, 37.063923, 38.538067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405389, -0.094667, 0.909229,
		-0.626002, 0.696068, 0.351582,
		-0.666169, -0.711707, 0.222917,
		44.603481, 36.850410, 38.604942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.941525, 37.384987, 39.194176>,  <45.069801, 37.348606, 38.448898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.941525, 37.384987, 39.194176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.813354, 37.018784, 39.096874>,  <44.736454, 36.799061, 39.038494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.813354, 37.018784, 39.096874>,  <44.941525, 37.384987, 39.194176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.813354, 37.018784, 39.096874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067574, -0.278234, 0.958133,
		-0.944861, 0.290570, 0.151017,
		-0.320422, -0.915508, -0.243257,
		44.717228, 36.744133, 39.023895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.429367, 37.239128, 39.687210>,  <44.941525, 37.384987, 39.194176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.429367, 37.239128, 39.687210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.550049, 36.881538, 39.554680>,  <44.622459, 36.666985, 39.475163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.550049, 36.881538, 39.554680>,  <44.429367, 37.239128, 39.687210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.550049, 36.881538, 39.554680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001743, -0.347006, 0.937861,
		-0.953400, -0.283534, -0.103135,
		0.301704, -0.893978, -0.331330,
		44.640560, 36.613346, 39.455280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.980206, 36.753799, 39.991470>,  <44.429367, 37.239128, 39.687210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.980206, 36.753799, 39.991470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.289124, 36.542141, 39.850861>,  <44.474476, 36.415146, 39.766495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.289124, 36.542141, 39.850861>,  <43.980206, 36.753799, 39.991470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.289124, 36.542141, 39.850861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026466, -0.526065, 0.850033,
		-0.634713, -0.665779, -0.392273,
		0.772295, -0.529145, -0.351520,
		44.520813, 36.383396, 39.745403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.755905, 35.999813, 40.092960>,  <43.980206, 36.753799, 39.991470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.755905, 35.999813, 40.092960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.152630, 36.030548, 40.052147>,  <44.390663, 36.048988, 40.027660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.152630, 36.030548, 40.052147>,  <43.755905, 35.999813, 40.092960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.152630, 36.030548, 40.052147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127579, -0.556756, 0.820821,
		0.006266, -0.827114, -0.561999,
		0.991808, 0.076842, -0.102034,
		44.450172, 36.053600, 40.021538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.027927, 35.307247, 40.212677>,  <43.755905, 35.999813, 40.092960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.027927, 35.307247, 40.212677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.322456, 35.566612, 40.290024>,  <44.499176, 35.722229, 40.336430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.322456, 35.566612, 40.290024>,  <44.027927, 35.307247, 40.212677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.322456, 35.566612, 40.290024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162532, -0.446905, 0.879693,
		0.656817, -0.616312, -0.434455,
		0.736325, 0.648410, 0.193365,
		44.543354, 35.761135, 40.348034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.514519, 34.917114, 40.545444>,  <44.027927, 35.307247, 40.212677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.514519, 34.917114, 40.545444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.669785, 35.273994, 40.637794>,  <44.762943, 35.488121, 40.693207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.669785, 35.273994, 40.637794>,  <44.514519, 34.917114, 40.545444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.669785, 35.273994, 40.637794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309378, -0.362136, 0.879285,
		0.868109, -0.269878, -0.416595,
		0.388164, 0.892201, 0.230879,
		44.786232, 35.541656, 40.707058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.236843, 34.889317, 40.690586>,  <44.514519, 34.917114, 40.545444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.236843, 34.889317, 40.690586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.106514, 35.218857, 40.876102>,  <45.028316, 35.416580, 40.987411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.106514, 35.218857, 40.876102>,  <45.236843, 34.889317, 40.690586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.106514, 35.218857, 40.876102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393064, -0.328116, 0.858976,
		0.859848, 0.462178, -0.216918,
		-0.325825, 0.823852, 0.463795,
		45.008766, 35.466011, 41.015240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.550259, 34.924076, 41.403561>,  <45.236843, 34.889317, 40.690586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.550259, 34.924076, 41.403561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.299347, 35.233028, 41.443447>,  <45.148800, 35.418400, 41.467377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.299347, 35.233028, 41.443447>,  <45.550259, 34.924076, 41.403561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.299347, 35.233028, 41.443447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127438, -0.024511, 0.991544,
		0.768298, 0.634682, -0.083056,
		-0.627279, 0.772385, 0.099714,
		45.111164, 35.464745, 41.473362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.798378, 35.452698, 41.817234>,  <45.550259, 34.924076, 41.403561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.798378, 35.452698, 41.817234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.403572, 35.502243, 41.858139>,  <45.166687, 35.531971, 41.882683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.403572, 35.502243, 41.858139>,  <45.798378, 35.452698, 41.817234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.403572, 35.502243, 41.858139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089631, -0.103617, 0.990570,
		0.133290, 0.986875, 0.091170,
		-0.987016, 0.123862, 0.102266,
		45.107468, 35.539402, 41.888821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.680389, 35.903881, 42.443321>,  <45.798378, 35.452698, 41.817234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.680389, 35.903881, 42.443321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.336464, 35.715214, 42.365101>,  <45.130108, 35.602013, 42.318169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.336464, 35.715214, 42.365101>,  <45.680389, 35.903881, 42.443321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.336464, 35.715214, 42.365101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091439, -0.234546, 0.967795,
		-0.502348, 0.850007, 0.158538,
		-0.859817, -0.471673, -0.195548,
		45.078518, 35.573711, 42.306435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.208679, 36.082214, 42.968033>,  <45.680389, 35.903881, 42.443321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.208679, 36.082214, 42.968033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.052319, 35.739853, 42.832611>,  <44.958504, 35.534435, 42.751358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.052319, 35.739853, 42.832611>,  <45.208679, 36.082214, 42.968033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.052319, 35.739853, 42.832611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009767, -0.371660, 0.928317,
		-0.920380, 0.359575, 0.153642,
		-0.390902, -0.855906, -0.338557,
		44.935047, 35.483082, 42.731045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.734043, 35.868580, 43.517925>,  <45.208679, 36.082214, 42.968033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.734043, 35.868580, 43.517925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.815018, 35.564140, 43.271427>,  <44.863602, 35.381477, 43.123528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.815018, 35.564140, 43.271427>,  <44.734043, 35.868580, 43.517925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.815018, 35.564140, 43.271427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141317, -0.599980, 0.787434,
		-0.969045, -0.246494, -0.013904,
		0.202440, -0.761094, -0.616242,
		44.875751, 35.335812, 43.086555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.334465, 35.356884, 43.739353>,  <44.734043, 35.868580, 43.517925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.334465, 35.356884, 43.739353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.635174, 35.192059, 43.533421>,  <44.815598, 35.093163, 43.409863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.635174, 35.192059, 43.533421>,  <44.334465, 35.356884, 43.739353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.635174, 35.192059, 43.533421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123093, -0.679312, 0.723452,
		-0.647842, -0.607238, -0.459960,
		0.751764, -0.412064, -0.514833,
		44.860703, 35.068439, 43.378971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.214035, 34.635239, 43.626301>,  <44.334465, 35.356884, 43.739353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.214035, 34.635239, 43.626301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.609001, 34.696045, 43.643764>,  <44.845982, 34.732529, 43.654243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.609001, 34.696045, 43.643764>,  <44.214035, 34.635239, 43.626301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.609001, 34.696045, 43.643764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077606, -0.706208, 0.703738,
		0.137814, -0.691492, -0.709117,
		0.987413, 0.152017, 0.043662,
		44.905224, 34.741650, 43.656864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.476700, 34.127129, 44.058060>,  <44.214035, 34.635239, 43.626301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.476700, 34.127129, 44.058060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.858475, 34.160397, 43.943424>,  <45.087540, 34.180355, 43.874641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.858475, 34.160397, 43.943424>,  <44.476700, 34.127129, 44.058060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.858475, 34.160397, 43.943424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248507, -0.753219, 0.609020,
		-0.165217, -0.652491, -0.739567,
		0.954436, 0.083167, -0.286593,
		45.144806, 34.185345, 43.857445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.435463, 33.375755, 43.666187>,  <44.476700, 34.127129, 44.058060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.435463, 33.375755, 43.666187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.235229, 33.568699, 43.378647>,  <44.115089, 33.684464, 43.206123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.235229, 33.568699, 43.378647>,  <44.435463, 33.375755, 43.666187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.235229, 33.568699, 43.378647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288415, -0.875867, -0.386878,
		-0.816229, 0.013660, 0.577567,
		-0.500587, 0.482360, -0.718847,
		44.085052, 33.713406, 43.162994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.589329, 32.826183, 43.113110>,  <44.435463, 33.375755, 43.666187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.589329, 32.826183, 43.113110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.773079, 32.505470, 43.266010>,  <44.883327, 32.313042, 43.357750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.773079, 32.505470, 43.266010>,  <44.589329, 32.826183, 43.113110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.773079, 32.505470, 43.266010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517226, -0.591320, -0.618723,
		0.722116, 0.086514, -0.686341,
		0.459375, -0.801783, 0.382255,
		44.910892, 32.264935, 43.380688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.166149, 32.528694, 42.762066>,  <44.589329, 32.826183, 43.113110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.166149, 32.528694, 42.762066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.995537, 32.235039, 42.973392>,  <44.893169, 32.058846, 43.100189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.995537, 32.235039, 42.973392>,  <45.166149, 32.528694, 42.762066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.995537, 32.235039, 42.973392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373030, -0.389338, -0.842178,
		0.823967, -0.556292, -0.107791,
		-0.426530, -0.734136, 0.528315,
		44.867577, 32.014797, 43.131886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.156162, 32.020489, 42.277344>,  <45.166149, 32.528694, 42.762066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.156162, 32.020489, 42.277344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.843590, 31.980455, 42.523708>,  <44.656048, 31.956434, 42.671528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.843590, 31.980455, 42.523708>,  <45.156162, 32.020489, 42.277344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.843590, 31.980455, 42.523708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539686, -0.387057, -0.747614,
		0.313220, -0.916607, 0.248443,
		-0.781430, -0.100086, 0.615914,
		44.609161, 31.950430, 42.708481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.736000, 31.430050, 42.115627>,  <45.156162, 32.020489, 42.277344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.736000, 31.430050, 42.115627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.474033, 31.648563, 42.324493>,  <44.316853, 31.779673, 42.449814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.474033, 31.648563, 42.324493>,  <44.736000, 31.430050, 42.115627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.474033, 31.648563, 42.324493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714567, -0.222801, -0.663140,
		-0.245936, -0.807414, 0.536282,
		-0.654913, 0.546299, 0.522156,
		44.277557, 31.812449, 42.481144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.647236, 30.709393, 41.790020>,  <44.736000, 31.430050, 42.115627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.647236, 30.709393, 41.790020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.252178, 30.681347, 41.846073>,  <44.015144, 30.664518, 41.879707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.252178, 30.681347, 41.846073>,  <44.647236, 30.709393, 41.790020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.252178, 30.681347, 41.846073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153101, 0.241267, -0.958306,
		0.033381, -0.967923, -0.249021,
		-0.987646, -0.070115, 0.140136,
		43.955883, 30.660313, 41.888115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.363106, 30.063669, 41.449749>,  <44.647236, 30.709393, 41.790020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.363106, 30.063669, 41.449749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.985474, 29.952751, 41.521095>,  <43.758896, 29.886200, 41.563904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.985474, 29.952751, 41.521095>,  <44.363106, 30.063669, 41.449749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.985474, 29.952751, 41.521095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178371, -0.025437, -0.983634,
		0.277296, -0.960447, -0.025447,
		-0.944082, -0.277297, 0.178369,
		43.702248, 29.869562, 41.574608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.215500, 29.491827, 40.996933>,  <44.363106, 30.063669, 41.449749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.215500, 29.491827, 40.996933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.892529, 29.707891, 41.091835>,  <43.698746, 29.837530, 41.148777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.892529, 29.707891, 41.091835>,  <44.215500, 29.491827, 40.996933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.892529, 29.707891, 41.091835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121194, 0.241709, -0.962751,
		-0.577385, -0.806105, -0.129698,
		-0.807427, 0.540159, 0.237254,
		43.650299, 29.869940, 41.163010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.633995, 29.341402, 40.508999>,  <44.215500, 29.491827, 40.996933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.633995, 29.341402, 40.508999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.617878, 29.710066, 40.663361>,  <43.608208, 29.931265, 40.755978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.617878, 29.710066, 40.663361>,  <43.633995, 29.341402, 40.508999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.617878, 29.710066, 40.663361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015962, 0.385575, -0.922539,
		-0.999061, -0.043329, -0.000824,
		-0.040290, 0.921659, 0.385904,
		43.605789, 29.986563, 40.779133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.071297, 29.684111, 40.158512>,  <43.633995, 29.341402, 40.508999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.071297, 29.684111, 40.158512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.253304, 30.001160, 40.320850>,  <43.362507, 30.191389, 40.418255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.253304, 30.001160, 40.320850>,  <43.071297, 29.684111, 40.158512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.253304, 30.001160, 40.320850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142809, 0.514816, -0.845323,
		-0.878959, 0.326675, 0.347442,
		0.455014, 0.792621, 0.405850,
		43.389809, 30.238947, 40.442604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.639538, 30.293474, 39.984234>,  <43.071297, 29.684111, 40.158512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.639538, 30.293474, 39.984234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.003704, 30.442913, 40.055313>,  <43.222202, 30.532576, 40.097961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.003704, 30.442913, 40.055313>,  <42.639538, 30.293474, 39.984234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.003704, 30.442913, 40.055313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101287, 0.617748, -0.779826,
		-0.401113, 0.691964, 0.600246,
		0.910412, 0.373595, 0.177699,
		43.276829, 30.554991, 40.108624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.577427, 30.998499, 39.811234>,  <42.639538, 30.293474, 39.984234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.577427, 30.998499, 39.811234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.975193, 30.965672, 39.837803>,  <43.213852, 30.945976, 39.853745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.975193, 30.965672, 39.837803>,  <42.577427, 30.998499, 39.811234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.975193, 30.965672, 39.837803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104753, 0.688325, -0.717799,
		0.013185, 0.720745, 0.693075,
		0.994411, -0.082066, 0.066425,
		43.273518, 30.941051, 39.857731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.882393, 31.651917, 39.941422>,  <42.577427, 30.998499, 39.811234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.882393, 31.651917, 39.941422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.176815, 31.454498, 39.756107>,  <43.353470, 31.336048, 39.644920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.176815, 31.454498, 39.756107>,  <42.882393, 31.651917, 39.941422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.176815, 31.454498, 39.756107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183129, 0.804065, -0.565635,
		0.651676, 0.331500, 0.682221,
		0.736059, -0.493546, -0.463282,
		43.397633, 31.306435, 39.617123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.322197, 32.169327, 39.698792>,  <42.882393, 31.651917, 39.941422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.322197, 32.169327, 39.698792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.486408, 31.871302, 39.488518>,  <43.584934, 31.692486, 39.362354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.486408, 31.871302, 39.488518>,  <43.322197, 32.169327, 39.698792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.486408, 31.871302, 39.488518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211036, 0.638488, -0.740133,
		0.887090, 0.192908, 0.419354,
		0.410530, -0.745064, -0.525686,
		43.609566, 31.647783, 39.330811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.973507, 32.392929, 39.491825>,  <43.322197, 32.169327, 39.698792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.973507, 32.392929, 39.491825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.861420, 32.109161, 39.233150>,  <43.794167, 31.938902, 39.077946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.861420, 32.109161, 39.233150>,  <43.973507, 32.392929, 39.491825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.861420, 32.109161, 39.233150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367290, 0.543180, -0.755020,
		0.886891, -0.449094, 0.108351,
		-0.280220, -0.709416, -0.646688,
		43.777355, 31.896336, 39.039143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.362942, 32.489059, 38.980389>,  <43.973507, 32.392929, 39.491825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.362942, 32.489059, 38.980389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.086319, 32.271084, 38.790741>,  <43.920345, 32.140297, 38.676952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.086319, 32.271084, 38.790741>,  <44.362942, 32.489059, 38.980389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.086319, 32.271084, 38.790741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283865, 0.398531, -0.872120,
		0.664204, -0.737707, -0.120918,
		-0.691559, -0.544942, -0.474116,
		43.878853, 32.107601, 38.648506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.721481, 32.243855, 38.397861>,  <44.362942, 32.489059, 38.980389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.721481, 32.243855, 38.397861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.327168, 32.254978, 38.331581>,  <44.090580, 32.261654, 38.291813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.327168, 32.254978, 38.331581>,  <44.721481, 32.243855, 38.397861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.327168, 32.254978, 38.331581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156808, 0.506518, -0.847851,
		0.060355, -0.861781, -0.503678,
		-0.985783, 0.027809, -0.165705,
		44.031433, 32.263321, 38.281868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.809952, 32.099064, 37.816715>,  <44.721481, 32.243855, 38.397861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.809952, 32.099064, 37.816715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.435551, 32.239693, 37.823711>,  <44.210911, 32.324070, 37.827908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.435551, 32.239693, 37.823711>,  <44.809952, 32.099064, 37.816715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.435551, 32.239693, 37.823711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253769, 0.708379, -0.658635,
		-0.243943, -0.612044, -0.752259,
		-0.935998, 0.351569, 0.017487,
		44.154751, 32.345165, 37.828957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.664272, 32.108097, 37.147446>,  <44.809952, 32.099064, 37.816715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.664272, 32.108097, 37.147446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.417618, 32.369122, 37.323593>,  <44.269623, 32.525734, 37.429279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.417618, 32.369122, 37.323593>,  <44.664272, 32.108097, 37.147446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.417618, 32.369122, 37.323593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383007, 0.737389, -0.556384,
		-0.687794, -0.174425, -0.704638,
		-0.616639, 0.652559, 0.440366,
		44.232624, 32.564888, 37.455704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.218021, 32.440369, 36.572575>,  <44.664272, 32.108097, 37.147446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.218021, 32.440369, 36.572575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.161762, 32.679031, 36.888607>,  <44.128006, 32.822227, 37.078224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.161762, 32.679031, 36.888607>,  <44.218021, 32.440369, 36.572575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.161762, 32.679031, 36.888607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187843, 0.799597, -0.570402,
		-0.972077, 0.068185, -0.224539,
		-0.140648, 0.596653, 0.790078,
		44.119568, 32.858028, 37.125629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.796280, 32.971264, 36.309216>,  <44.218021, 32.440369, 36.572575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.796280, 32.971264, 36.309216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.989002, 33.114758, 36.629009>,  <44.104637, 33.200855, 36.820885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.989002, 33.114758, 36.629009>,  <43.796280, 32.971264, 36.309216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.989002, 33.114758, 36.629009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308015, 0.784806, -0.537779,
		-0.820358, 0.505359, 0.267630,
		0.481809, 0.358737, 0.799480,
		44.133545, 33.222378, 36.868855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.576870, 33.654247, 36.356861>,  <43.796280, 32.971264, 36.309216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.576870, 33.654247, 36.356861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.944439, 33.628696, 36.512558>,  <44.164978, 33.613365, 36.605976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.944439, 33.628696, 36.512558>,  <43.576870, 33.654247, 36.356861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.944439, 33.628696, 36.512558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228656, 0.890348, -0.393697,
		-0.321408, 0.450778, 0.832764,
		0.918920, -0.063879, 0.389238,
		44.220116, 33.609531, 36.629330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.813782, 34.315762, 36.283154>,  <43.576870, 33.654247, 36.356861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.813782, 34.315762, 36.283154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.158073, 34.147518, 36.397858>,  <44.364651, 34.046574, 36.466679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.158073, 34.147518, 36.397858>,  <43.813782, 34.315762, 36.283154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.158073, 34.147518, 36.397858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500618, 0.801525, -0.327016,
		-0.092297, 0.425029, 0.900462,
		0.860734, -0.420604, 0.286756,
		44.416294, 34.021336, 36.483883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.035583, 34.817089, 36.712902>,  <43.813782, 34.315762, 36.283154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.035583, 34.817089, 36.712902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.306957, 34.584202, 36.533680>,  <44.469784, 34.444469, 36.426147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.306957, 34.584202, 36.533680>,  <44.035583, 34.817089, 36.712902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.306957, 34.584202, 36.533680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361862, 0.795592, -0.485890,
		0.639359, 0.167513, 0.750440,
		0.678437, -0.582214, -0.448052,
		44.510487, 34.409538, 36.399265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.523212, 35.267052, 36.822540>,  <44.035583, 34.817089, 36.712902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.523212, 35.267052, 36.822540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.651340, 34.999374, 36.554340>,  <44.728218, 34.838768, 36.393421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.651340, 34.999374, 36.554340>,  <44.523212, 35.267052, 36.822540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.651340, 34.999374, 36.554340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343458, 0.741679, -0.576151,
		0.882855, -0.045738, 0.467414,
		0.320319, -0.669194, -0.670503,
		44.747437, 34.798615, 36.353188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.333714, 35.364697, 36.763126>,  <44.523212, 35.267052, 36.822540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.333714, 35.364697, 36.763126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.202351, 35.193775, 36.426186>,  <45.123535, 35.091221, 36.224022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.202351, 35.193775, 36.426186>,  <45.333714, 35.364697, 36.763126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.202351, 35.193775, 36.426186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332999, 0.782175, -0.526605,
		0.883890, -0.453442, -0.114578,
		-0.328405, -0.427307, -0.842353,
		45.103828, 35.065582, 36.173481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.921730, 35.449741, 36.336746>,  <45.333714, 35.364697, 36.763126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.921730, 35.449741, 36.336746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.600201, 35.390507, 36.106289>,  <45.407284, 35.354965, 35.968014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.600201, 35.390507, 36.106289>,  <45.921730, 35.449741, 36.336746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.600201, 35.390507, 36.106289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313943, 0.717055, -0.622312,
		0.505284, -0.681104, -0.529893,
		-0.803821, -0.148088, -0.576143,
		45.359055, 35.346081, 35.933445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.229858, 35.607777, 35.695995>,  <45.921730, 35.449741, 36.336746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.229858, 35.607777, 35.695995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.836250, 35.597626, 35.625511>,  <45.600086, 35.591534, 35.583221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.836250, 35.597626, 35.625511>,  <46.229858, 35.607777, 35.695995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.836250, 35.597626, 35.625511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098265, 0.747943, -0.656449,
		0.148458, -0.663278, -0.733500,
		-0.984024, -0.025378, -0.176215,
		45.541042, 35.590012, 35.572647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.192947, 35.444691, 35.058460>,  <46.229858, 35.607777, 35.695995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.192947, 35.444691, 35.058460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.844913, 35.624092, 35.140247>,  <45.636093, 35.731731, 35.189320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.844913, 35.624092, 35.140247>,  <46.192947, 35.444691, 35.058460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.844913, 35.624092, 35.140247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185283, 0.681994, -0.707499,
		-0.456761, -0.577696, -0.676489,
		-0.870080, 0.448499, 0.204471,
		45.583889, 35.758640, 35.201588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.606049, 34.995129, 35.476433>,  <46.192947, 35.444691, 35.058460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.606049, 34.995129, 35.476433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.207523, 34.966797, 35.495770>,  <45.968407, 34.949799, 35.507370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.207523, 34.966797, 35.495770>,  <46.606049, 34.995129, 35.476433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.207523, 34.966797, 35.495770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074239, -0.430259, 0.899648,
		-0.042924, 0.899922, 0.433932,
		-0.996316, -0.070832, 0.048341,
		45.908630, 34.945549, 35.510273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.046921, 35.119164, 36.076729>,  <46.606049, 34.995129, 35.476433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.046921, 35.119164, 36.076729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.400578, 34.932590, 36.065819>,  <47.612770, 34.820648, 36.059273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.400578, 34.932590, 36.065819>,  <47.046921, 35.119164, 36.076729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.400578, 34.932590, 36.065819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186020, -0.297864, -0.936309,
		0.428597, 0.832900, -0.350118,
		0.884139, -0.466428, -0.027272,
		47.665817, 34.792664, 36.057636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.539494, 35.284943, 35.489269>,  <47.046921, 35.119164, 36.076729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.539494, 35.284943, 35.489269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.617378, 34.909145, 35.602005>,  <47.664108, 34.683666, 35.669647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.617378, 34.909145, 35.602005>,  <47.539494, 35.284943, 35.489269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.617378, 34.909145, 35.602005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091464, -0.303480, -0.948438,
		0.976586, 0.158898, -0.145022,
		0.194716, -0.939495, 0.281841,
		47.675793, 34.627296, 35.686558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.851685, 35.023094, 34.879036>,  <47.539494, 35.284943, 35.489269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.851685, 35.023094, 34.879036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.676212, 34.742493, 35.103699>,  <47.570930, 34.574131, 35.238495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.676212, 34.742493, 35.103699>,  <47.851685, 35.023094, 34.879036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.676212, 34.742493, 35.103699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319036, -0.462717, -0.827109,
		0.840104, -0.542026, -0.020818,
		-0.438681, -0.701500, 0.561656,
		47.544609, 34.532043, 35.272194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<31.803535, 34.571117, 43.865166> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.470385, 34.424919, 43.698925>,  <31.270494, 34.337200, 43.599178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.470385, 34.424919, 43.698925>,  <31.803535, 34.571117, 43.865166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.470385, 34.424919, 43.698925> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240297, 0.437652, -0.866440,
		0.498571, -0.821507, -0.276683,
		-0.832877, -0.365496, -0.415606,
		31.220522, 34.315269, 43.574242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.006561, 34.219982, 43.244827>,  <31.803535, 34.571117, 43.865166>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.006561, 34.219982, 43.244827> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.622921, 34.315861, 43.184608>,  <31.392736, 34.373390, 43.148476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.622921, 34.315861, 43.184608>,  <32.006561, 34.219982, 43.244827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.622921, 34.315861, 43.184608> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240607, 0.410229, -0.879670,
		-0.149096, -0.879918, -0.451125,
		-0.959103, 0.239699, -0.150551,
		31.335190, 34.387772, 43.139442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.949329, 34.336464, 42.493584>,  <32.006561, 34.219982, 43.244827>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.949329, 34.336464, 42.493584> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.594378, 34.474377, 42.616013>,  <31.381407, 34.557125, 42.689468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.594378, 34.474377, 42.616013>,  <31.949329, 34.336464, 42.493584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.594378, 34.474377, 42.616013> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076502, 0.544551, -0.835232,
		-0.454645, -0.764584, -0.456847,
		-0.887381, 0.344784, 0.306069,
		31.328163, 34.577812, 42.707832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.444395, 34.112549, 41.975529>,  <31.949329, 34.336464, 42.493584>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.444395, 34.112549, 41.975529> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.329264, 34.449043, 42.158604>,  <31.260185, 34.650940, 42.268448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.329264, 34.449043, 42.158604>,  <31.444395, 34.112549, 41.975529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.329264, 34.449043, 42.158604> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150859, 0.432113, -0.889112,
		-0.945725, -0.324959, 0.002533,
		-0.287830, 0.841237, 0.457683,
		31.242914, 34.701416, 42.295910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.976742, 34.412365, 41.504753>,  <31.444395, 34.112549, 41.975529>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.976742, 34.412365, 41.504753> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.080208, 34.723896, 41.733318>,  <31.142288, 34.910816, 41.870457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.080208, 34.723896, 41.733318>,  <30.976742, 34.412365, 41.504753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.080208, 34.723896, 41.733318> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206288, 0.533363, -0.820347,
		-0.943682, 0.330073, -0.022700,
		0.258667, 0.778830, 0.571415,
		31.157808, 34.957546, 41.904743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.733690, 34.930126, 41.156052>,  <30.976742, 34.412365, 41.504753>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.733690, 34.930126, 41.156052> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.995590, 35.090958, 41.412064>,  <31.152731, 35.187454, 41.565670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.995590, 35.090958, 41.412064>,  <30.733690, 34.930126, 41.156052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.995590, 35.090958, 41.412064> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219512, 0.709125, -0.670042,
		-0.723268, 0.579204, 0.376040,
		0.654750, 0.402074, 0.640030,
		31.192015, 35.211578, 41.604073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.533724, 35.596676, 41.090618>,  <30.733690, 34.930126, 41.156052>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.533724, 35.596676, 41.090618> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.906179, 35.555714, 41.230614>,  <31.129652, 35.531136, 41.314610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.906179, 35.555714, 41.230614>,  <30.533724, 35.596676, 41.090618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.906179, 35.555714, 41.230614> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343882, 0.565964, -0.749286,
		-0.121350, 0.818044, 0.562208,
		0.931139, -0.102408, 0.349991,
		31.185520, 35.524990, 41.335609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.852255, 36.252743, 40.956299>,  <30.533724, 35.596676, 41.090618>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.852255, 36.252743, 40.956299> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.166460, 36.013115, 41.018368>,  <31.354984, 35.869339, 41.055611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.166460, 36.013115, 41.018368>,  <30.852255, 36.252743, 40.956299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.166460, 36.013115, 41.018368> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553607, 0.568200, -0.608825,
		0.276560, 0.564147, 0.777980,
		0.785515, -0.599072, 0.155174,
		31.402115, 35.833393, 41.064919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.391228, 36.703339, 40.810673>,  <30.852255, 36.252743, 40.956299>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.391228, 36.703339, 40.810673> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.592918, 36.357914, 40.809231>,  <31.713932, 36.150658, 40.808365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.592918, 36.357914, 40.809231>,  <31.391228, 36.703339, 40.810673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.592918, 36.357914, 40.809231> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701718, 0.412153, -0.581138,
		0.503335, 0.290496, 0.813797,
		0.504227, -0.863564, -0.003605,
		31.744186, 36.098846, 40.808147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.049934, 36.753105, 41.194630>,  <31.391228, 36.703339, 40.810673>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.049934, 36.753105, 41.194630> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.081482, 36.470852, 40.912960>,  <32.100410, 36.301498, 40.743958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.081482, 36.470852, 40.912960>,  <32.049934, 36.753105, 41.194630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.081482, 36.470852, 40.912960> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688215, 0.549574, -0.473634,
		0.721208, -0.447271, 0.528968,
		0.078864, -0.705633, -0.704175,
		32.105141, 36.259163, 40.701706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.761940, 36.563587, 41.094196>,  <32.049934, 36.753105, 41.194630>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.761940, 36.563587, 41.094196> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.583591, 36.433586, 40.760593>,  <32.476582, 36.355583, 40.560432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.583591, 36.433586, 40.760593>,  <32.761940, 36.563587, 41.094196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.583591, 36.433586, 40.760593> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821212, 0.222159, -0.525601,
		0.356107, -0.919248, 0.167845,
		-0.445869, -0.325007, -0.834010,
		32.449829, 36.336082, 40.510391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.291412, 36.141495, 40.782501>,  <32.761940, 36.563587, 41.094196>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.291412, 36.141495, 40.782501> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.023869, 36.192291, 40.489517>,  <32.863342, 36.222767, 40.313725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.023869, 36.192291, 40.489517>,  <33.291412, 36.141495, 40.782501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.023869, 36.192291, 40.489517> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743279, 0.131122, -0.656006,
		0.012737, -0.983199, -0.182091,
		-0.668860, 0.126989, -0.732461,
		32.823212, 36.230389, 40.269779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.517445, 35.766087, 40.140419>,  <33.291412, 36.141495, 40.782501>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.517445, 35.766087, 40.140419> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.274910, 36.066090, 40.034706>,  <33.129387, 36.246090, 39.971279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.274910, 36.066090, 40.034706>,  <33.517445, 35.766087, 40.140419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.274910, 36.066090, 40.034706> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528384, 0.131620, -0.838741,
		-0.594276, -0.648203, -0.476097,
		-0.606339, 0.750006, -0.264282,
		33.093010, 36.291092, 39.955421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.546791, 35.656723, 39.480614>,  <33.517445, 35.766087, 40.140419>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.546791, 35.656723, 39.480614> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.426201, 36.035545, 39.524803>,  <33.353848, 36.262836, 39.551319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.426201, 36.035545, 39.524803>,  <33.546791, 35.656723, 39.480614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.426201, 36.035545, 39.524803> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486293, 0.252387, -0.836552,
		-0.820143, -0.198471, -0.536633,
		-0.301471, 0.947053, 0.110478,
		33.335758, 36.319660, 39.557945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.331394, 36.010872, 38.753193>,  <33.546791, 35.656723, 39.480614>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.331394, 36.010872, 38.753193> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.432423, 36.313553, 38.994392>,  <33.493038, 36.495159, 39.139114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.432423, 36.313553, 38.994392>,  <33.331394, 36.010872, 38.753193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.432423, 36.313553, 38.994392> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538843, 0.407624, -0.737218,
		-0.803652, 0.511124, -0.304788,
		0.252571, 0.756700, 0.603003,
		33.508194, 36.540562, 39.175293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.278210, 36.535473, 38.368866>,  <33.331394, 36.010872, 38.753193>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.278210, 36.535473, 38.368866> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.517666, 36.654396, 38.666386>,  <33.661339, 36.725750, 38.844898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.517666, 36.654396, 38.666386>,  <33.278210, 36.535473, 38.368866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.517666, 36.654396, 38.666386> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609922, 0.432750, -0.663870,
		-0.519255, 0.851078, 0.077725,
		0.598640, 0.297311, 0.743798,
		33.697258, 36.743587, 38.889526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.521744, 37.231148, 38.162167>,  <33.278210, 36.535473, 38.368866>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.521744, 37.231148, 38.162167> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.793358, 37.145687, 38.443096>,  <33.956326, 37.094410, 38.611656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.793358, 37.145687, 38.443096>,  <33.521744, 37.231148, 38.162167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.793358, 37.145687, 38.443096> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682296, 0.536707, -0.496405,
		-0.270888, 0.816273, 0.510215,
		0.679037, -0.213648, 0.702327,
		33.997070, 37.081593, 38.653793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.852314, 37.856770, 38.350193>,  <33.521744, 37.231148, 38.162167>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.852314, 37.856770, 38.350193> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.104427, 37.566757, 38.461235>,  <34.255695, 37.392750, 38.527863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.104427, 37.566757, 38.461235>,  <33.852314, 37.856770, 38.350193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.104427, 37.566757, 38.461235> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769809, 0.537283, -0.344557,
		0.100660, 0.430876, 0.896779,
		0.630286, -0.725032, 0.277610,
		34.293514, 37.349247, 38.544518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.422642, 38.235657, 38.625381>,  <33.852314, 37.856770, 38.350193>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.422642, 38.235657, 38.625381> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.583748, 37.880959, 38.534641>,  <34.680412, 37.668140, 38.480198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.583748, 37.880959, 38.534641>,  <34.422642, 38.235657, 38.625381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.583748, 37.880959, 38.534641> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798734, 0.461544, -0.386007,
		0.446992, -0.025725, 0.894168,
		0.402768, -0.886744, -0.226854,
		34.704578, 37.614937, 38.466583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.042919, 38.327518, 38.824505>,  <34.422642, 38.235657, 38.625381>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.042919, 38.327518, 38.824505> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.089409, 38.009602, 38.586243>,  <35.117302, 37.818851, 38.443287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.089409, 38.009602, 38.586243>,  <35.042919, 38.327518, 38.824505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.089409, 38.009602, 38.586243> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848055, 0.391584, -0.357023,
		0.517006, -0.463649, 0.719538,
		0.116226, -0.794790, -0.595651,
		35.124275, 37.771164, 38.407547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.693256, 38.241791, 38.900848>,  <35.042919, 38.327518, 38.824505>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.693256, 38.241791, 38.900848> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.615368, 38.050171, 38.558483>,  <35.568634, 37.935200, 38.353062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.615368, 38.050171, 38.558483>,  <35.693256, 38.241791, 38.900848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.615368, 38.050171, 38.558483> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787118, 0.444357, -0.427776,
		0.585259, -0.757005, 0.290544,
		-0.194723, -0.479052, -0.855916,
		35.556950, 37.906456, 38.301708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.357784, 37.987255, 38.692329>,  <35.693256, 38.241791, 38.900848>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.357784, 37.987255, 38.692329> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.108479, 38.017437, 38.380985>,  <35.958893, 38.035545, 38.194180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.108479, 38.017437, 38.380985>,  <36.357784, 37.987255, 38.692329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.108479, 38.017437, 38.380985> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694776, 0.510257, -0.506877,
		0.358918, -0.856706, -0.370449,
		-0.623268, 0.075452, -0.778359,
		35.921497, 38.040073, 38.147476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.140488, 37.883263, 38.606396>,  <36.357784, 37.987255, 38.692329>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.140488, 37.883263, 38.606396> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.539444, 37.858631, 38.621426>,  <37.778820, 37.843853, 38.630444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.539444, 37.858631, 38.621426>,  <37.140488, 37.883263, 38.606396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.539444, 37.858631, 38.621426> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046248, -0.146133, 0.988183,
		-0.055357, -0.987347, -0.148600,
		0.997395, -0.061575, 0.037573,
		37.838661, 37.840157, 38.632698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.179485, 37.298042, 38.884991>,  <37.140488, 37.883263, 38.606396>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.179485, 37.298042, 38.884991> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.530983, 37.481045, 38.939392>,  <37.741882, 37.590847, 38.972034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.530983, 37.481045, 38.939392>,  <37.179485, 37.298042, 38.884991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.530983, 37.481045, 38.939392> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102648, -0.097139, 0.989963,
		0.466123, -0.883886, -0.038399,
		0.878745, 0.457503, 0.136008,
		37.794605, 37.618294, 38.980194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.532249, 36.870693, 39.476421>,  <37.179485, 37.298042, 38.884991>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.532249, 36.870693, 39.476421> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.673332, 37.244831, 39.487270>,  <37.757980, 37.469315, 39.493778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.673332, 37.244831, 39.487270>,  <37.532249, 36.870693, 39.476421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.673332, 37.244831, 39.487270> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094533, -0.064454, 0.993433,
		0.930948, -0.347823, -0.111154,
		0.352703, 0.935342, 0.027122,
		37.779144, 37.525433, 39.495407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.133457, 36.750149, 39.932587>,  <37.532249, 36.870693, 39.476421>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.133457, 36.750149, 39.932587> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.058685, 37.143093, 39.934475>,  <38.013821, 37.378860, 39.935608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.058685, 37.143093, 39.934475>,  <38.133457, 36.750149, 39.932587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.058685, 37.143093, 39.934475> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061278, -0.016453, 0.997985,
		0.980460, 0.186264, 0.063273,
		-0.186930, 0.982362, 0.004718,
		38.002605, 37.437801, 39.935890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.542828, 36.961624, 40.535107>,  <38.133457, 36.750149, 39.932587>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.542828, 36.961624, 40.535107> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.278198, 37.240479, 40.424606>,  <38.119419, 37.407791, 40.358307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.278198, 37.240479, 40.424606>,  <38.542828, 36.961624, 40.535107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.278198, 37.240479, 40.424606> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285205, 0.106789, 0.952499,
		0.693524, 0.708940, 0.128178,
		-0.661576, 0.697138, -0.276254,
		38.079727, 37.449619, 40.341732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.616035, 37.351734, 41.046963>,  <38.542828, 36.961624, 40.535107>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.616035, 37.351734, 41.046963> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.261192, 37.452271, 40.892109>,  <38.048286, 37.512592, 40.799194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.261192, 37.452271, 40.892109>,  <38.616035, 37.351734, 41.046963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.261192, 37.452271, 40.892109> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366357, 0.126779, 0.921797,
		0.280763, 0.959561, -0.020387,
		-0.887105, 0.251338, -0.387136,
		37.995060, 37.527672, 40.775967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.272907, 37.712120, 41.610966>,  <38.616035, 37.351734, 41.046963>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.272907, 37.712120, 41.610966> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.960194, 37.653042, 41.368641>,  <37.772568, 37.617596, 41.223248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.960194, 37.653042, 41.368641>,  <38.272907, 37.712120, 41.610966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.960194, 37.653042, 41.368641> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581650, -0.177416, 0.793855,
		-0.224727, 0.972990, 0.052794,
		-0.781780, -0.147693, -0.605810,
		37.725658, 37.608734, 41.186897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.701477, 38.122734, 41.895374>,  <38.272907, 37.712120, 41.610966>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.701477, 38.122734, 41.895374> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.533546, 37.849873, 41.655903>,  <37.432789, 37.686157, 41.512218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.533546, 37.849873, 41.655903>,  <37.701477, 38.122734, 41.895374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.533546, 37.849873, 41.655903> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744754, -0.118086, 0.656808,
		-0.518737, 0.721614, -0.458459,
		-0.419825, -0.682150, -0.598681,
		37.407600, 37.645229, 41.476299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.978374, 38.272606, 41.997074>,  <37.701477, 38.122734, 41.895374>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.978374, 38.272606, 41.997074> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.980473, 37.906555, 41.835819>,  <36.981731, 37.686924, 41.739067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.980473, 37.906555, 41.835819>,  <36.978374, 38.272606, 41.997074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.980473, 37.906555, 41.835819> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768025, -0.261860, 0.584437,
		-0.640399, 0.306554, -0.704212,
		0.005244, -0.915125, -0.403136,
		36.982044, 37.632019, 41.714878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.312473, 38.169849, 41.674675>,  <36.978374, 38.272606, 41.997074>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.312473, 38.169849, 41.674675> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.500118, 37.828869, 41.766983>,  <36.612705, 37.624279, 41.822369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.500118, 37.828869, 41.766983>,  <36.312473, 38.169849, 41.674675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.500118, 37.828869, 41.766983> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861690, -0.384575, 0.331048,
		-0.193452, -0.354156, -0.914959,
		0.469112, -0.852453, 0.230775,
		36.640854, 37.573132, 41.836216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.849030, 37.589092, 41.591160>,  <36.312473, 38.169849, 41.674675>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.849030, 37.589092, 41.591160> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.121838, 37.375488, 41.791035>,  <36.285522, 37.247326, 41.910957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.121838, 37.375488, 41.791035>,  <35.849030, 37.589092, 41.591160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.121838, 37.375488, 41.791035> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731036, -0.517230, 0.445039,
		0.020799, -0.668813, -0.743139,
		0.682022, -0.534006, 0.499684,
		36.326443, 37.215286, 41.940941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.741940, 36.811817, 41.472301>,  <35.849030, 37.589092, 41.591160>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.741940, 36.811817, 41.472301> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.923904, 36.874741, 41.822914>,  <36.033085, 36.912495, 42.033283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.923904, 36.874741, 41.822914>,  <35.741940, 36.811817, 41.472301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.923904, 36.874741, 41.822914> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692053, -0.557009, 0.459134,
		0.560460, -0.815473, -0.144527,
		0.454914, 0.157306, 0.876531,
		36.060379, 36.921932, 42.085873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.832806, 36.100628, 41.808693>,  <35.741940, 36.811817, 41.472301>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.832806, 36.100628, 41.808693> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.845325, 36.378181, 42.096455>,  <35.852837, 36.544712, 42.269112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.845325, 36.378181, 42.096455>,  <35.832806, 36.100628, 41.808693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.845325, 36.378181, 42.096455> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572933, -0.577321, 0.581763,
		0.819004, -0.430382, 0.379478,
		0.031300, 0.693882, 0.719409,
		35.854717, 36.586346, 42.312279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.063610, 35.826408, 42.509426>,  <35.832806, 36.100628, 41.808693>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.063610, 35.826408, 42.509426> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.808769, 36.126160, 42.581577>,  <35.655865, 36.306011, 42.624870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.808769, 36.126160, 42.581577>,  <36.063610, 35.826408, 42.509426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.808769, 36.126160, 42.581577> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444026, -0.548113, 0.708811,
		0.630036, 0.371490, 0.681946,
		-0.637099, 0.749378, 0.180380,
		35.617638, 36.350971, 42.635693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.989048, 35.832123, 43.220711>,  <36.063610, 35.826408, 42.509426>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.989048, 35.832123, 43.220711> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.665882, 36.036510, 43.103283>,  <35.471981, 36.159142, 43.032825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.665882, 36.036510, 43.103283>,  <35.989048, 35.832123, 43.220711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.665882, 36.036510, 43.103283> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569151, -0.547440, 0.613496,
		0.152764, 0.662739, 0.733103,
		-0.807917, 0.510966, -0.293569,
		35.423508, 36.189800, 43.015213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.588799, 35.941246, 43.818947>,  <35.989048, 35.832123, 43.220711>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.588799, 35.941246, 43.818947> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.341751, 35.958279, 43.504818>,  <35.193523, 35.968498, 43.316341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.341751, 35.958279, 43.504818>,  <35.588799, 35.941246, 43.818947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.341751, 35.958279, 43.504818> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695912, -0.494792, 0.520468,
		-0.366410, 0.867968, 0.335226,
		-0.617616, 0.042583, -0.785326,
		35.156467, 35.971054, 43.269218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.960922, 36.193169, 44.016773>,  <35.588799, 35.941246, 43.818947>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.960922, 36.193169, 44.016773> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.849094, 35.992466, 43.689339>,  <34.781998, 35.872044, 43.492878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.849094, 35.992466, 43.689339>,  <34.960922, 36.193169, 44.016773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.849094, 35.992466, 43.689339> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695975, -0.481417, 0.532782,
		-0.661406, 0.718667, -0.214617,
		-0.279572, -0.501753, -0.818586,
		34.765224, 35.841942, 43.443764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.229618, 36.022449, 44.122211>,  <34.960922, 36.193169, 44.016773>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.229618, 36.022449, 44.122211> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.318714, 35.774841, 43.820957>,  <34.372169, 35.626278, 43.640205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.318714, 35.774841, 43.820957>,  <34.229618, 36.022449, 44.122211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.318714, 35.774841, 43.820957> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765802, -0.589158, 0.257759,
		-0.603271, 0.519339, -0.605269,
		0.222734, -0.619015, -0.753133,
		34.385536, 35.589138, 43.595016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<33.604298, 35.799335, 43.713547> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.853416, 35.495045, 43.640427>,  <34.002888, 35.312469, 43.596554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.853416, 35.495045, 43.640427>,  <33.604298, 35.799335, 43.713547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.853416, 35.495045, 43.640427> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657786, -0.635623, 0.404105,
		-0.423607, -0.131431, -0.896260,
		0.622796, -0.760730, -0.182801,
		34.040257, 35.266827, 43.585587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.153831, 35.232834, 43.563568>,  <33.604298, 35.799335, 43.713547>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.153831, 35.232834, 43.563568> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.509655, 35.067383, 43.641117>,  <33.723152, 34.968113, 43.687645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.509655, 35.067383, 43.641117>,  <33.153831, 35.232834, 43.563568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.509655, 35.067383, 43.641117> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454599, -0.759859, 0.464707,
		-0.044900, -0.501522, -0.863979,
		0.889564, -0.413630, 0.193874,
		33.776524, 34.943295, 43.699280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.124027, 34.600357, 43.312080>,  <33.153831, 35.232834, 43.563568>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.124027, 34.600357, 43.312080> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.420273, 34.594631, 43.580791>,  <33.598019, 34.591198, 43.742020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.420273, 34.594631, 43.580791>,  <33.124027, 34.600357, 43.312080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.420273, 34.594631, 43.580791> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396697, -0.816253, 0.419954,
		0.542332, -0.577517, -0.610205,
		0.740613, -0.014312, 0.671780,
		33.642456, 34.590336, 43.782326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.308182, 33.853901, 43.425728>,  <33.124027, 34.600357, 43.312080>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.308182, 33.853901, 43.425728> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.485413, 34.023479, 43.741692>,  <33.591751, 34.125225, 43.931271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.485413, 34.023479, 43.741692>,  <33.308182, 33.853901, 43.425728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.485413, 34.023479, 43.741692> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415088, -0.683960, 0.599917,
		0.794595, -0.593693, -0.127076,
		0.443081, 0.423943, 0.789905,
		33.618336, 34.150661, 43.978664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.572407, 33.391243, 44.091114>,  <33.308182, 33.853901, 43.425728>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.572407, 33.391243, 44.091114> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.522682, 33.754269, 44.251549>,  <33.492847, 33.972084, 44.347809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.522682, 33.754269, 44.251549>,  <33.572407, 33.391243, 44.091114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.522682, 33.754269, 44.251549> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489656, -0.407688, 0.770732,
		0.863008, -0.100587, 0.495074,
		-0.124310, 0.907564, 0.401091,
		33.485390, 34.026539, 44.371876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.910507, 33.381645, 44.746204>,  <33.572407, 33.391243, 44.091114>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.910507, 33.381645, 44.746204> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.633839, 33.669846, 44.766090>,  <33.467838, 33.842766, 44.778023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.633839, 33.669846, 44.766090>,  <33.910507, 33.381645, 44.746204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.633839, 33.669846, 44.766090> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308281, -0.356796, 0.881850,
		0.653110, 0.594624, 0.468902,
		-0.691672, 0.720499, 0.049715,
		33.426338, 33.885994, 44.781006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.893238, 33.446934, 45.380367>,  <33.910507, 33.381645, 44.746204>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.893238, 33.446934, 45.380367> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.557991, 33.638702, 45.276279>,  <33.356842, 33.753765, 45.213825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.557991, 33.638702, 45.276279>,  <33.893238, 33.446934, 45.380367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.557991, 33.638702, 45.276279> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438680, -0.308837, 0.843907,
		0.324220, 0.821448, 0.469153,
		-0.838118, 0.479420, -0.260222,
		33.306557, 33.782528, 45.198212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.736099, 33.777950, 45.992107>,  <33.893238, 33.446934, 45.380367>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.736099, 33.777950, 45.992107> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.402187, 33.727852, 45.777649>,  <33.201839, 33.697792, 45.648975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.402187, 33.727852, 45.777649>,  <33.736099, 33.777950, 45.992107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.402187, 33.727852, 45.777649> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491840, -0.268006, 0.828412,
		-0.247446, 0.955241, 0.162126,
		-0.834784, -0.125247, -0.536143,
		33.151752, 33.690277, 45.616806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.236534, 34.041523, 46.396343>,  <33.736099, 33.777950, 45.992107>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.236534, 34.041523, 46.396343> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.050312, 33.783764, 46.153687>,  <32.938580, 33.629108, 46.008091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.050312, 33.783764, 46.153687>,  <33.236534, 34.041523, 46.396343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.050312, 33.783764, 46.153687> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391736, -0.464609, 0.794155,
		-0.793599, 0.607367, -0.036130,
		-0.465557, -0.644394, -0.606641,
		32.910645, 33.590446, 45.971695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.854839, 33.803158, 46.868420>,  <33.236534, 34.041523, 46.396343>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.854839, 33.803158, 46.868420> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.800194, 33.581791, 46.539772>,  <32.767406, 33.448971, 46.342583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.800194, 33.581791, 46.539772>,  <32.854839, 33.803158, 46.868420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.800194, 33.581791, 46.539772> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279671, -0.774111, 0.567922,
		-0.950327, 0.307370, -0.049021,
		-0.136614, -0.553421, -0.821621,
		32.759209, 33.415764, 46.293285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.194607, 33.495834, 46.991535>,  <32.854839, 33.803158, 46.868420>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.194607, 33.495834, 46.991535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.372837, 33.253479, 46.727909>,  <32.479774, 33.108067, 46.569733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.372837, 33.253479, 46.727909>,  <32.194607, 33.495834, 46.991535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.372837, 33.253479, 46.727909> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249439, -0.791049, 0.558590,
		-0.859795, -0.084495, -0.503600,
		0.445570, -0.605890, -0.659064,
		32.506508, 33.071712, 46.530190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.653688, 33.002079, 46.772400>,  <32.194607, 33.495834, 46.991535>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.653688, 33.002079, 46.772400> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.014713, 32.849159, 46.693176>,  <32.231327, 32.757408, 46.645641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.014713, 32.849159, 46.693176>,  <31.653688, 33.002079, 46.772400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.014713, 32.849159, 46.693176> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240270, -0.828935, 0.505111,
		-0.357280, -0.408308, -0.840021,
		0.902564, -0.382298, -0.198058,
		32.285480, 32.734470, 46.633759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.581757, 32.247749, 46.496346>,  <31.653688, 33.002079, 46.772400>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.581757, 32.247749, 46.496346> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.959578, 32.275753, 46.624672>,  <32.186272, 32.292553, 46.701668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.959578, 32.275753, 46.624672>,  <31.581757, 32.247749, 46.496346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.959578, 32.275753, 46.624672> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155650, -0.764819, 0.625160,
		0.289131, -0.640431, -0.711514,
		0.944551, 0.070005, 0.320816,
		32.242943, 32.296753, 46.720917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.773689, 31.613132, 46.629059>,  <31.581757, 32.247749, 46.496346>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.773689, 31.613132, 46.629059> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.077923, 31.803734, 46.805450>,  <32.260464, 31.918095, 46.911285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.077923, 31.803734, 46.805450>,  <31.773689, 31.613132, 46.629059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.077923, 31.803734, 46.805450> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142122, -0.784942, 0.603049,
		0.633495, -0.395995, -0.664734,
		0.760582, 0.476502, 0.440977,
		32.306099, 31.946684, 46.937744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.365097, 31.081760, 46.542465>,  <31.773689, 31.613132, 46.629059>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.365097, 31.081760, 46.542465> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.442074, 31.323299, 46.851875>,  <32.488258, 31.468222, 47.037521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.442074, 31.323299, 46.851875>,  <32.365097, 31.081760, 46.542465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.442074, 31.323299, 46.851875> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013041, -0.786613, 0.617309,
		0.981222, -0.128882, -0.143500,
		0.192439, 0.603846, 0.773522,
		32.499805, 31.504454, 47.083931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.904808, 30.669188, 46.961235>,  <32.365097, 31.081760, 46.542465>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.904808, 30.669188, 46.961235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.770954, 30.965935, 47.193665>,  <32.690643, 31.143984, 47.333122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.770954, 30.965935, 47.193665>,  <32.904808, 30.669188, 46.961235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.770954, 30.965935, 47.193665> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090926, -0.588331, 0.803492,
		0.937951, 0.321712, 0.129421,
		-0.334635, 0.741868, 0.581078,
		32.670563, 31.188496, 47.367989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.405853, 30.815857, 47.523903>,  <32.904808, 30.669188, 46.961235>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.405853, 30.815857, 47.523903> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.040165, 30.927736, 47.641178>,  <32.820751, 30.994864, 47.711544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.040165, 30.927736, 47.641178>,  <33.405853, 30.815857, 47.523903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.040165, 30.927736, 47.641178> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022340, -0.757251, 0.652742,
		0.404591, 0.590203, 0.698547,
		-0.914225, 0.279699, 0.293192,
		32.765896, 31.011646, 47.729137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.413864, 30.904541, 48.315392>,  <33.405853, 30.815857, 47.523903>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.413864, 30.904541, 48.315392> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.026855, 30.859945, 48.224636>,  <32.794651, 30.833189, 48.170181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.026855, 30.859945, 48.224636>,  <33.413864, 30.904541, 48.315392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.026855, 30.859945, 48.224636> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054601, -0.784163, 0.618148,
		-0.246834, 0.610458, 0.752605,
		-0.967518, -0.111487, -0.226890,
		32.736599, 30.826500, 48.156570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.100067, 30.714857, 48.903820>,  <33.413864, 30.904541, 48.315392>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.100067, 30.714857, 48.903820> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.810066, 30.598137, 48.654270>,  <32.636066, 30.528105, 48.504539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.810066, 30.598137, 48.654270>,  <33.100067, 30.714857, 48.903820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.810066, 30.598137, 48.654270> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181782, -0.792626, 0.581978,
		-0.664322, 0.535346, 0.521614,
		-0.725005, -0.291801, -0.623875,
		32.592564, 30.510597, 48.467106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.565075, 30.636992, 49.269997>,  <33.100067, 30.714857, 48.903820>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.565075, 30.636992, 49.269997> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.481682, 30.418209, 48.945683>,  <32.431648, 30.286940, 48.751095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.481682, 30.418209, 48.945683>,  <32.565075, 30.636992, 49.269997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.481682, 30.418209, 48.945683> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289050, -0.757511, 0.585343,
		-0.934338, 0.356389, -0.000172,
		-0.208479, -0.546958, -0.810786,
		32.419140, 30.254122, 48.702446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.979219, 30.194044, 49.476013>,  <32.565075, 30.636992, 49.269997>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.979219, 30.194044, 49.476013> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.097996, 29.992834, 49.151348>,  <32.169262, 29.872108, 48.956551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.097996, 29.992834, 49.151348>,  <31.979219, 30.194044, 49.476013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.097996, 29.992834, 49.151348> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240465, -0.861997, 0.446249,
		-0.924123, 0.062667, -0.376921,
		0.296939, -0.503025, -0.811660,
		32.187077, 29.841927, 48.907848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.436142, 29.857431, 49.404377>,  <31.979219, 30.194044, 49.476013>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.436142, 29.857431, 49.404377> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.720284, 29.648943, 49.215179>,  <31.890768, 29.523849, 49.101662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.720284, 29.648943, 49.215179>,  <31.436142, 29.857431, 49.404377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.720284, 29.648943, 49.215179> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241668, -0.811784, 0.531604,
		-0.661053, -0.263320, -0.702617,
		0.710356, -0.521219, -0.472997,
		31.933390, 29.492577, 49.073280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.154808, 29.171442, 49.279591>,  <31.436142, 29.857431, 49.404377>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.154808, 29.171442, 49.279591> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.552397, 29.127741, 49.275833>,  <31.790949, 29.101521, 49.273579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.552397, 29.127741, 49.275833>,  <31.154808, 29.171442, 49.279591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.552397, 29.127741, 49.275833> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082517, -0.801633, 0.592095,
		-0.072217, -0.587749, -0.805814,
		0.993970, -0.109252, -0.009393,
		31.850588, 29.094965, 49.273014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.538645, 28.622982, 49.131256>,  <31.154808, 29.171442, 49.279591>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.538645, 28.622982, 49.131256> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.578316, 28.262890, 48.961670>,  <30.602118, 28.046835, 48.859917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.578316, 28.262890, 48.961670>,  <30.538645, 28.622982, 49.131256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.578316, 28.262890, 48.961670> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202796, 0.398840, -0.894315,
		0.974186, 0.174673, -0.143008,
		0.099175, -0.900231, -0.423968,
		30.608068, 27.992821, 48.834480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.069067, 28.790966, 48.661655>,  <30.538645, 28.622982, 49.131256>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.069067, 28.790966, 48.661655> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.811075, 28.496063, 48.581200>,  <30.656281, 28.319122, 48.532928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.811075, 28.496063, 48.581200>,  <31.069067, 28.790966, 48.661655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.811075, 28.496063, 48.581200> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197751, 0.415248, -0.887955,
		0.738172, -0.532937, -0.413619,
		-0.644978, -0.737257, -0.201135,
		30.617582, 28.274887, 48.520859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.281839, 28.410370, 47.978020>,  <31.069067, 28.790966, 48.661655>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.281839, 28.410370, 47.978020> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.888899, 28.361979, 48.035076>,  <30.653133, 28.332943, 48.069309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.888899, 28.361979, 48.035076>,  <31.281839, 28.410370, 47.978020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.888899, 28.361979, 48.035076> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182721, 0.457795, -0.870078,
		0.039959, -0.880788, -0.471822,
		-0.982352, -0.120979, 0.142645,
		30.594193, 28.325686, 48.077869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.094898, 28.314018, 47.300644>,  <31.281839, 28.410370, 47.978020>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.094898, 28.314018, 47.300644> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.772738, 28.367296, 47.531670>,  <30.579441, 28.399263, 47.670284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.772738, 28.367296, 47.531670>,  <31.094898, 28.314018, 47.300644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.772738, 28.367296, 47.531670> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434546, 0.530010, -0.728190,
		-0.403107, -0.837466, -0.368992,
		-0.805403, 0.133195, 0.577568,
		30.531116, 28.407255, 47.704941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.475592, 28.066084, 46.881657>,  <31.094898, 28.314018, 47.300644>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.475592, 28.066084, 46.881657> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.386986, 28.337305, 47.161991>,  <30.333822, 28.500038, 47.330193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.386986, 28.337305, 47.161991>,  <30.475592, 28.066084, 46.881657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.386986, 28.337305, 47.161991> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357695, 0.612101, -0.705256,
		-0.907186, -0.406910, 0.106948,
		-0.221513, 0.678054, 0.700839,
		30.320532, 28.540722, 47.372242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.867962, 28.308142, 46.653023>,  <30.475592, 28.066084, 46.881657>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.867962, 28.308142, 46.653023> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.970926, 28.577414, 46.930317>,  <30.032705, 28.738976, 47.096691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.970926, 28.577414, 46.930317>,  <29.867962, 28.308142, 46.653023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.970926, 28.577414, 46.930317> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295386, 0.737884, -0.606856,
		-0.920048, -0.048561, 0.388785,
		0.257409, 0.673178, 0.693233,
		30.048149, 28.779367, 47.138287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.370623, 28.802893, 46.690979>,  <29.867962, 28.308142, 46.653023>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.370623, 28.802893, 46.690979> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.695923, 28.985649, 46.835129>,  <29.891104, 29.095303, 46.921619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.695923, 28.985649, 46.835129>,  <29.370623, 28.802893, 46.690979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.695923, 28.985649, 46.835129> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251367, 0.834366, -0.490559,
		-0.524819, 0.308361, 0.793397,
		0.813252, 0.456889, 0.360379,
		29.939899, 29.122715, 46.943241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.131796, 29.472069, 46.831528>,  <29.370623, 28.802893, 46.690979>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.131796, 29.472069, 46.831528> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.531153, 29.492041, 46.820793>,  <29.770767, 29.504023, 46.814354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.531153, 29.492041, 46.820793>,  <29.131796, 29.472069, 46.831528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.531153, 29.492041, 46.820793> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056340, 0.822272, -0.566299,
		-0.006211, 0.566900, 0.823763,
		0.998392, 0.049928, -0.026832,
		29.830671, 29.507019, 46.812744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.271944, 30.113466, 46.926880>,  <29.131796, 29.472069, 46.831528>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.271944, 30.113466, 46.926880> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.604435, 29.969801, 46.757141>,  <29.803928, 29.883602, 46.655300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.604435, 29.969801, 46.757141>,  <29.271944, 30.113466, 46.926880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.604435, 29.969801, 46.757141> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126169, 0.865254, -0.485198,
		0.541428, 0.349770, 0.764537,
		0.831226, -0.359161, -0.424342,
		29.853804, 29.862053, 46.629837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.848488, 30.667192, 47.019169>,  <29.271944, 30.113466, 46.926880>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.848488, 30.667192, 47.019169> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.987890, 30.444986, 46.717190>,  <30.071531, 30.311663, 46.536003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.987890, 30.444986, 46.717190>,  <29.848488, 30.667192, 47.019169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.987890, 30.444986, 46.717190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129352, 0.826241, -0.548265,
		0.928338, 0.093420, 0.359808,
		0.348507, -0.555517, -0.754946,
		30.092442, 30.278332, 46.490707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.369183, 31.099047, 46.865704>,  <29.848488, 30.667192, 47.019169>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.369183, 31.099047, 46.865704> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.343983, 30.854849, 46.549900>,  <30.328863, 30.708330, 46.360416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.343983, 30.854849, 46.549900>,  <30.369183, 31.099047, 46.865704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.343983, 30.854849, 46.549900> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337312, 0.731504, -0.592556,
		0.939283, -0.303642, 0.159844,
		-0.062999, -0.610495, -0.789511,
		30.325083, 30.671700, 46.313046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.961861, 31.148010, 46.468433>,  <30.369183, 31.099047, 46.865704>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.961861, 31.148010, 46.468433> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.683342, 31.039917, 46.202457>,  <30.516232, 30.975061, 46.042873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.683342, 31.039917, 46.202457>,  <30.961861, 31.148010, 46.468433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.683342, 31.039917, 46.202457> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293818, 0.737923, -0.607569,
		0.654860, -0.618420, -0.434414,
		-0.696297, -0.270234, -0.664939,
		30.474453, 30.958847, 46.002975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.302462, 31.229973, 45.781612>,  <30.961861, 31.148010, 46.468433>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.302462, 31.229973, 45.781612> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.915831, 31.217632, 45.679806>,  <30.683853, 31.210228, 45.618721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.915831, 31.217632, 45.679806>,  <31.302462, 31.229973, 45.781612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.915831, 31.217632, 45.679806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145534, 0.751268, -0.643751,
		0.211070, -0.659275, -0.721668,
		-0.966576, -0.030849, -0.254518,
		30.625858, 31.208378, 45.603451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.245680, 31.190363, 45.055607>,  <31.302462, 31.229973, 45.781612>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.245680, 31.190363, 45.055607> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.897942, 31.347475, 45.175579>,  <30.689299, 31.441742, 45.247562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.897942, 31.347475, 45.175579>,  <31.245680, 31.190363, 45.055607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.897942, 31.347475, 45.175579> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098847, 0.732831, -0.673192,
		-0.484216, -0.555590, -0.675910,
		-0.869347, 0.392782, 0.299930,
		30.637138, 31.465309, 45.265556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.896536, 31.389498, 44.405952>,  <31.245680, 31.190363, 45.055607>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.896536, 31.389498, 44.405952> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.723036, 31.599207, 44.699074>,  <30.618937, 31.725033, 44.874947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.723036, 31.599207, 44.699074>,  <30.896536, 31.389498, 44.405952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.723036, 31.599207, 44.699074> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124741, 0.840399, -0.527417,
		-0.892357, -0.137357, -0.429921,
		-0.433750, 0.524273, 0.732802,
		30.592911, 31.756489, 44.918915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.467331, 31.786922, 44.095112>,  <30.896536, 31.389498, 44.405952>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.467331, 31.786922, 44.095112> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.446501, 31.977642, 44.446098>,  <30.434002, 32.092072, 44.656693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.446501, 31.977642, 44.446098>,  <30.467331, 31.786922, 44.095112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.446501, 31.977642, 44.446098> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079574, 0.873886, -0.479573,
		-0.995468, -0.094798, -0.007568,
		-0.052077, 0.476797, 0.877469,
		30.430878, 32.120682, 44.709339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.819773, 32.302841, 44.160423>,  <30.467331, 31.786922, 44.095112>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.819773, 32.302841, 44.160423> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.125607, 32.422127, 44.388977>,  <30.309107, 32.493698, 44.526108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.125607, 32.422127, 44.388977>,  <29.819773, 32.302841, 44.160423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.125607, 32.422127, 44.388977> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063497, 0.847356, -0.527215,
		-0.641388, 0.439382, 0.628940,
		0.764585, 0.298213, 0.571383,
		30.354982, 32.511589, 44.560390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.790037, 33.060154, 44.131100>,  <29.819773, 32.302841, 44.160423>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.790037, 33.060154, 44.131100> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.159056, 33.033566, 44.283146>,  <30.380466, 33.017612, 44.374374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.159056, 33.033566, 44.283146>,  <29.790037, 33.060154, 44.131100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.159056, 33.033566, 44.283146> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273189, 0.808202, -0.521705,
		-0.272533, 0.585142, 0.763764,
		0.922547, -0.066470, 0.380116,
		30.435820, 33.013626, 44.397182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.989611, 33.751041, 44.355606>,  <29.790037, 33.060154, 44.131100>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.989611, 33.751041, 44.355606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.327654, 33.540974, 44.315632>,  <30.530479, 33.414932, 44.291649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.327654, 33.540974, 44.315632>,  <29.989611, 33.751041, 44.355606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.327654, 33.540974, 44.315632> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348321, 0.682744, -0.642287,
		0.405541, 0.507992, 0.759921,
		0.845109, -0.525170, -0.099937,
		30.581186, 33.383423, 44.285652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.536451, 34.222919, 44.554916>,  <29.989611, 33.751041, 44.355606>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.536451, 34.222919, 44.554916> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.698164, 33.951305, 44.309814>,  <30.795191, 33.788338, 44.162754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.698164, 33.951305, 44.309814>,  <30.536451, 34.222919, 44.554916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.698164, 33.951305, 44.309814> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331851, 0.733189, -0.593556,
		0.852310, 0.036621, 0.521753,
		0.404280, -0.679038, -0.612752,
		30.819448, 33.747593, 44.125988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.210634, 34.544025, 44.402973>,  <30.536451, 34.222919, 44.554916>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.210634, 34.544025, 44.402973> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.095472, 34.279804, 44.125622>,  <31.026375, 34.121269, 43.959209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.095472, 34.279804, 44.125622>,  <31.210634, 34.544025, 44.402973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.095472, 34.279804, 44.125622> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213992, 0.661356, -0.718899,
		0.933445, -0.355352, -0.049054,
		-0.287904, -0.660555, -0.693382,
		31.009102, 34.081638, 43.917606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<45.655880, 34.334595, 42.656090> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.401928, 34.553062, 42.874676>,  <45.249557, 34.684143, 43.005829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.401928, 34.553062, 42.874676>,  <45.655880, 34.334595, 42.656090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.401928, 34.553062, 42.874676> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383330, 0.391431, -0.836564,
		-0.670810, -0.740595, -0.039149,
		-0.634880, 0.546168, 0.546468,
		45.211464, 34.716911, 43.038616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.192398, 34.416576, 42.145699>,  <45.655880, 34.334595, 42.656090>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.192398, 34.416576, 42.145699> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.101109, 34.670429, 42.441036>,  <45.046337, 34.822742, 42.618240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.101109, 34.670429, 42.441036>,  <45.192398, 34.416576, 42.145699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.101109, 34.670429, 42.441036> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614175, 0.494592, -0.614954,
		-0.755450, -0.593819, 0.276900,
		-0.228219, 0.634632, 0.738348,
		45.032642, 34.860817, 42.662540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.501965, 34.399353, 42.178917>,  <45.192398, 34.416576, 42.145699>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.501965, 34.399353, 42.178917> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.631557, 34.736279, 42.351215>,  <44.709312, 34.938435, 42.454594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.631557, 34.736279, 42.351215>,  <44.501965, 34.399353, 42.178917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.631557, 34.736279, 42.351215> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415949, 0.535756, -0.734814,
		-0.849718, 0.058902, 0.523937,
		0.323984, 0.842316, 0.430742,
		44.728752, 34.988972, 42.480438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.945599, 34.939690, 42.166252>,  <44.501965, 34.399353, 42.178917>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.945599, 34.939690, 42.166252> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.300468, 35.120628, 42.202713>,  <44.513390, 35.229191, 42.224590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.300468, 35.120628, 42.202713>,  <43.945599, 34.939690, 42.166252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.300468, 35.120628, 42.202713> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202127, 0.558536, -0.804476,
		-0.414812, 0.695286, 0.586949,
		0.887173, 0.452345, 0.091151,
		44.566620, 35.256332, 42.230057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.822655, 35.628830, 42.059097>,  <43.945599, 34.939690, 42.166252>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.822655, 35.628830, 42.059097> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.214603, 35.597931, 41.985458>,  <44.449772, 35.579391, 41.941277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.214603, 35.597931, 41.985458>,  <43.822655, 35.628830, 42.059097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.214603, 35.597931, 41.985458> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121267, 0.502216, -0.856197,
		0.158598, 0.861284, 0.482737,
		0.979868, -0.077251, -0.184096,
		44.508564, 35.574757, 41.930229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.149662, 36.349796, 41.614967>,  <43.822655, 35.628830, 42.059097>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.149662, 36.349796, 41.614967> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.419079, 36.055843, 41.583225>,  <44.580727, 35.879471, 41.564178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.419079, 36.055843, 41.583225>,  <44.149662, 36.349796, 41.614967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.419079, 36.055843, 41.583225> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237299, 0.316660, -0.918377,
		0.700024, 0.599733, 0.387669,
		0.673540, -0.734879, -0.079354,
		44.621140, 35.835381, 41.559418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.977322, 36.580719, 41.554131>,  <44.149662, 36.349796, 41.614967>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.977322, 36.580719, 41.554131> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.870651, 36.248417, 41.358688>,  <44.806648, 36.049034, 41.241425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.870651, 36.248417, 41.358688>,  <44.977322, 36.580719, 41.554131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.870651, 36.248417, 41.358688> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239328, 0.434001, -0.868542,
		0.933599, -0.348555, 0.083085,
		-0.266676, -0.830754, -0.488602,
		44.790649, 35.999191, 41.212109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.208614, 36.751392, 40.938618>,  <44.977322, 36.580719, 41.554131>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.208614, 36.751392, 40.938618> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.090919, 36.376682, 40.862854>,  <45.020302, 36.151855, 40.817394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.090919, 36.376682, 40.862854>,  <45.208614, 36.751392, 40.938618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.090919, 36.376682, 40.862854> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014631, 0.202578, -0.979157,
		0.955619, -0.285337, -0.073312,
		-0.294241, -0.936774, -0.189413,
		45.002647, 36.095650, 40.806030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.666157, 36.447174, 40.430351>,  <45.208614, 36.751392, 40.938618>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.666157, 36.447174, 40.430351> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.334858, 36.224178, 40.407650>,  <45.136078, 36.090382, 40.394028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.334858, 36.224178, 40.407650>,  <45.666157, 36.447174, 40.430351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.334858, 36.224178, 40.407650> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056725, 0.184169, -0.981256,
		0.557491, -0.809499, -0.184160,
		-0.828242, -0.557488, -0.056754,
		45.086384, 36.056931, 40.390625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.745140, 35.980984, 39.827221>,  <45.666157, 36.447174, 40.430351>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.745140, 35.980984, 39.827221> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.350147, 36.008842, 39.883827>,  <45.113152, 36.025558, 39.917789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.350147, 36.008842, 39.883827>,  <45.745140, 35.980984, 39.827221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.350147, 36.008842, 39.883827> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132200, 0.123887, -0.983451,
		-0.086029, -0.989849, -0.113129,
		-0.987483, 0.069649, 0.141516,
		45.053902, 36.029736, 39.926281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.445847, 35.658772, 39.204140>,  <45.745140, 35.980984, 39.827221>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.445847, 35.658772, 39.204140> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.152760, 35.860554, 39.386852>,  <44.976906, 35.981625, 39.496479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.152760, 35.860554, 39.386852>,  <45.445847, 35.658772, 39.204140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.152760, 35.860554, 39.386852> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286576, 0.380074, -0.879442,
		-0.617250, -0.775285, -0.133923,
		-0.732719, 0.504456, 0.456779,
		44.932945, 36.011890, 39.523888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.814480, 35.532383, 38.813416>,  <45.445847, 35.658772, 39.204140>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.814480, 35.532383, 38.813416> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.781372, 35.864769, 39.033470>,  <44.761509, 36.064201, 39.165501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.781372, 35.864769, 39.033470>,  <44.814480, 35.532383, 38.813416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.781372, 35.864769, 39.033470> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381838, 0.483457, -0.787699,
		-0.920516, -0.275258, 0.277279,
		-0.082768, 0.830965, 0.550134,
		44.756542, 36.114059, 39.198509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.094284, 35.649616, 38.803230>,  <44.814480, 35.532383, 38.813416>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.094284, 35.649616, 38.803230> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.303581, 35.984730, 38.865623>,  <44.429161, 36.185799, 38.903057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.303581, 35.984730, 38.865623>,  <44.094284, 35.649616, 38.803230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.303581, 35.984730, 38.865623> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469157, 0.435996, -0.767984,
		-0.711414, 0.328663, 0.621185,
		0.523242, 0.837788, 0.155979,
		44.460552, 36.236065, 38.912418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.593010, 36.099655, 38.911636>,  <44.094284, 35.649616, 38.803230>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.593010, 36.099655, 38.911636> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.904926, 36.323845, 38.800068>,  <44.092075, 36.458359, 38.733128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.904926, 36.323845, 38.800068>,  <43.593010, 36.099655, 38.911636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.904926, 36.323845, 38.800068> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552994, 0.407822, -0.726553,
		-0.293462, 0.720801, 0.627954,
		0.779793, 0.560471, -0.278919,
		44.138863, 36.491985, 38.716393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.319843, 36.798233, 38.851997>,  <43.593010, 36.099655, 38.911636>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.319843, 36.798233, 38.851997> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.664978, 36.799812, 38.649815>,  <43.872059, 36.800758, 38.528503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.664978, 36.799812, 38.649815>,  <43.319843, 36.798233, 38.851997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.664978, 36.799812, 38.649815> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441035, 0.494451, -0.749004,
		0.246968, 0.869197, 0.428374,
		0.862841, 0.003948, -0.505459,
		43.923832, 36.800999, 38.498177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.229992, 37.360630, 38.406216>,  <43.319843, 36.798233, 38.851997>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.229992, 37.360630, 38.406216> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.541073, 37.191265, 38.220352>,  <43.727722, 37.089645, 38.108833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.541073, 37.191265, 38.220352>,  <43.229992, 37.360630, 38.406216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.541073, 37.191265, 38.220352> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291843, 0.411489, -0.863426,
		0.556783, 0.807094, 0.196447,
		0.777702, -0.423409, -0.464655,
		43.774384, 37.064243, 38.080956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.581551, 37.943893, 37.968788>,  <43.229992, 37.360630, 38.406216>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.581551, 37.943893, 37.968788> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.685955, 37.592308, 37.809139>,  <43.748600, 37.381359, 37.713348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.685955, 37.592308, 37.809139>,  <43.581551, 37.943893, 37.968788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.685955, 37.592308, 37.809139> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262636, 0.333203, -0.905537,
		0.928921, 0.341183, -0.143875,
		0.261015, -0.878959, -0.399126,
		43.764259, 37.328621, 37.689400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.049503, 38.042545, 37.492325>,  <43.581551, 37.943893, 37.968788>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.049503, 38.042545, 37.492325> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.864429, 37.703026, 37.389984>,  <43.753384, 37.499313, 37.328579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.864429, 37.703026, 37.389984>,  <44.049503, 38.042545, 37.492325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.864429, 37.703026, 37.389984> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177157, 0.371310, -0.911452,
		0.868640, -0.376391, -0.322171,
		-0.462687, -0.848799, -0.255854,
		43.725624, 37.448387, 37.313229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.323898, 37.938721, 36.733997>,  <44.049503, 38.042545, 37.492325>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.323898, 37.938721, 36.733997> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.023293, 37.678135, 36.775600>,  <43.842930, 37.521782, 36.800564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.023293, 37.678135, 36.775600>,  <44.323898, 37.938721, 36.733997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.023293, 37.678135, 36.775600> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183453, 0.054924, -0.981493,
		0.633700, -0.756684, -0.160790,
		-0.751512, -0.651469, 0.104011,
		43.797840, 37.482693, 36.806805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.319794, 37.512993, 36.132088>,  <44.323898, 37.938721, 36.733997>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.319794, 37.512993, 36.132088> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.963234, 37.434860, 36.295677>,  <43.749298, 37.387981, 36.393829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.963234, 37.434860, 36.295677>,  <44.319794, 37.512993, 36.132088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.963234, 37.434860, 36.295677> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447310, 0.233886, -0.863256,
		0.072965, -0.952441, -0.295857,
		-0.891398, -0.195328, 0.408971,
		43.695816, 37.376263, 36.418369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.004013, 37.017776, 35.696289>,  <44.319794, 37.512993, 36.132088>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.004013, 37.017776, 35.696289> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.730595, 37.245827, 35.878597>,  <43.566544, 37.382656, 35.987980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.730595, 37.245827, 35.878597>,  <44.004013, 37.017776, 35.696289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.730595, 37.245827, 35.878597> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313282, 0.334819, -0.888679,
		-0.659261, -0.750233, -0.050252,
		-0.683542, 0.570128, 0.455768,
		43.525532, 37.416866, 36.015327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.563347, 36.428577, 35.586971>,  <44.004013, 37.017776, 35.696289>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.563347, 36.428577, 35.586971> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.898338, 36.230659, 35.494186>,  <45.099335, 36.111908, 35.438515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.898338, 36.230659, 35.494186>,  <44.563347, 36.428577, 35.586971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.898338, 36.230659, 35.494186> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434524, -0.860362, 0.266396,
		-0.331378, -0.122311, -0.935537,
		0.837483, -0.494791, -0.231958,
		45.149582, 36.082222, 35.424599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.219261, 35.779148, 35.347473>,  <44.563347, 36.428577, 35.586971>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.219261, 35.779148, 35.347473> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.611423, 35.711174, 35.387329>,  <44.846722, 35.670387, 35.411243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.611423, 35.711174, 35.387329>,  <44.219261, 35.779148, 35.347473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.611423, 35.711174, 35.387329> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188838, -0.954767, 0.229697,
		0.056100, -0.244012, -0.968148,
		0.980404, -0.169937, 0.099642,
		44.905544, 35.660194, 35.417221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.359703, 35.125584, 35.164131>,  <44.219261, 35.779148, 35.347473>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.359703, 35.125584, 35.164131> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.684452, 35.187519, 35.389305>,  <44.879299, 35.224678, 35.524410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.684452, 35.187519, 35.389305>,  <44.359703, 35.125584, 35.164131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.684452, 35.187519, 35.389305> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165211, -0.863856, 0.475876,
		0.559976, -0.479352, -0.675758,
		0.811869, 0.154837, 0.562933,
		44.928013, 35.233971, 35.558186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.739155, 34.417221, 35.106476>,  <44.359703, 35.125584, 35.164131>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.739155, 34.417221, 35.106476> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.862667, 34.608425, 35.435390>,  <44.936775, 34.723148, 35.632740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.862667, 34.608425, 35.435390>,  <44.739155, 34.417221, 35.106476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.862667, 34.608425, 35.435390> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023677, -0.868132, 0.495768,
		0.950839, -0.133613, -0.279379,
		0.308779, 0.478011, 0.822290,
		44.955299, 34.751827, 35.682079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.110943, 33.924446, 35.416080>,  <44.739155, 34.417221, 35.106476>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.110943, 33.924446, 35.416080> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.014969, 34.184708, 35.704269>,  <44.957386, 34.340866, 35.877182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.014969, 34.184708, 35.704269>,  <45.110943, 33.924446, 35.416080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.014969, 34.184708, 35.704269> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103609, -0.755073, 0.647403,
		0.965245, 0.080685, 0.248580,
		-0.239931, 0.650657, 0.720471,
		44.942989, 34.379906, 35.920410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.625942, 33.830807, 36.017139>,  <45.110943, 33.924446, 35.416080>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.625942, 33.830807, 36.017139> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.272190, 33.986012, 36.120922>,  <45.059940, 34.079132, 36.183193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.272190, 33.986012, 36.120922>,  <45.625942, 33.830807, 36.017139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.272190, 33.986012, 36.120922> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135800, -0.745707, 0.652288,
		0.446573, 0.541637, 0.712181,
		-0.884381, 0.388009, 0.259459,
		45.006874, 34.102413, 36.198761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.587086, 33.570869, 36.606236>,  <45.625942, 33.830807, 36.017139>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.587086, 33.570869, 36.606236> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.210350, 33.703220, 36.582703>,  <44.984310, 33.782631, 36.568581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.210350, 33.703220, 36.582703>,  <45.587086, 33.570869, 36.606236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.210350, 33.703220, 36.582703> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273291, -0.652179, 0.707089,
		0.195589, 0.682042, 0.704673,
		-0.941837, 0.330880, -0.058837,
		44.927799, 33.802483, 36.565052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.304207, 33.350391, 37.348064>,  <45.587086, 33.570869, 36.606236>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.304207, 33.350391, 37.348064> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.987209, 33.452492, 37.126507>,  <44.797012, 33.513752, 36.993572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.987209, 33.452492, 37.126507>,  <45.304207, 33.350391, 37.348064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.987209, 33.452492, 37.126507> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536183, -0.724385, 0.433329,
		-0.290628, 0.640400, 0.710931,
		-0.792492, 0.255252, -0.553898,
		44.749462, 33.529068, 36.960339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.853352, 33.624592, 37.920383>,  <45.304207, 33.350391, 37.348064>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.853352, 33.624592, 37.920383> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.629898, 33.499756, 37.612999>,  <44.495827, 33.424854, 37.428570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.629898, 33.499756, 37.612999>,  <44.853352, 33.624592, 37.920383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.629898, 33.499756, 37.612999> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491590, -0.621648, 0.609830,
		-0.668032, 0.718438, 0.193855,
		-0.558635, -0.312089, -0.768458,
		44.462307, 33.406128, 37.382462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.118645, 33.683815, 38.124084>,  <44.853352, 33.624592, 37.920383>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.118645, 33.683815, 38.124084> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.130272, 33.423389, 37.820698>,  <44.137249, 33.267136, 37.638664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.130272, 33.423389, 37.820698>,  <44.118645, 33.683815, 38.124084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.130272, 33.423389, 37.820698> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563740, -0.637274, 0.525432,
		-0.825441, 0.412306, -0.385553,
		0.029064, -0.651064, -0.758466,
		44.138992, 33.228069, 37.593159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.482742, 33.452576, 37.988258>,  <44.118645, 33.683815, 38.124084>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.482742, 33.452576, 37.988258> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.708466, 33.176720, 37.806728>,  <43.843899, 33.011204, 37.697811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.708466, 33.176720, 37.806728>,  <43.482742, 33.452576, 37.988258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.708466, 33.176720, 37.806728> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441575, -0.716604, 0.539899,
		-0.697537, -0.104283, -0.708919,
		0.564316, -0.689641, -0.453809,
		43.877758, 32.969826, 37.670582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.985882, 32.923622, 37.944641>,  <43.482742, 33.452576, 37.988258>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.985882, 32.923622, 37.944641> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.344467, 32.752506, 37.898418>,  <43.559620, 32.649837, 37.870686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.344467, 32.752506, 37.898418>,  <42.985882, 32.923622, 37.944641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.344467, 32.752506, 37.898418> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293241, -0.768223, 0.569072,
		-0.332213, -0.476267, -0.814128,
		0.896462, -0.427789, -0.115553,
		43.613407, 32.624168, 37.863754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.882107, 32.163208, 37.677269>,  <42.985882, 32.923622, 37.944641>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.882107, 32.163208, 37.677269> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.224548, 32.203049, 37.880112>,  <43.430016, 32.226952, 38.001820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.224548, 32.203049, 37.880112>,  <42.882107, 32.163208, 37.677269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.224548, 32.203049, 37.880112> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249256, -0.779998, 0.573999,
		0.452716, -0.617805, -0.642935,
		0.856107, 0.099603, 0.507109,
		43.481380, 32.232929, 38.032246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.938248, 31.408552, 38.056831>,  <42.882107, 32.163208, 37.677269>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.938248, 31.408552, 38.056831> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.246841, 31.614613, 38.206192>,  <43.431999, 31.738249, 38.295807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.246841, 31.614613, 38.206192>,  <42.938248, 31.408552, 38.056831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.246841, 31.614613, 38.206192> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090051, -0.669380, 0.737442,
		0.629841, -0.535301, -0.562807,
		0.771486, 0.515153, 0.373399,
		43.478287, 31.769159, 38.318211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.605431, 30.929192, 38.172680>,  <42.938248, 31.408552, 38.056831>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.605431, 30.929192, 38.172680> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.614586, 31.244339, 38.418846>,  <43.620079, 31.433428, 38.566547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.614586, 31.244339, 38.418846>,  <43.605431, 30.929192, 38.172680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.614586, 31.244339, 38.418846> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023329, -0.614993, 0.788188,
		0.999466, -0.032395, 0.004306,
		0.022886, 0.787867, 0.615420,
		43.621452, 31.480700, 38.603474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.869095, 30.559763, 38.756645>,  <43.605431, 30.929192, 38.172680>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.869095, 30.559763, 38.756645> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.767494, 30.919296, 38.899517>,  <43.706532, 31.135017, 38.985241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.767494, 30.919296, 38.899517>,  <43.869095, 30.559763, 38.756645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.767494, 30.919296, 38.899517> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060199, -0.383267, 0.921674,
		0.965328, 0.212609, 0.151461,
		-0.254006, 0.898835, 0.357179,
		43.691292, 31.188948, 39.006672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.389870, 30.630442, 39.267902>,  <43.869095, 30.559763, 38.756645>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.389870, 30.630442, 39.267902> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.059189, 30.841015, 39.347328>,  <43.860779, 30.967358, 39.394985>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.059189, 30.841015, 39.347328>,  <44.389870, 30.630442, 39.267902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.059189, 30.841015, 39.347328> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006908, -0.362396, 0.931999,
		0.562594, 0.769116, 0.303231,
		-0.826705, 0.526431, 0.198569,
		43.811176, 30.998943, 39.406898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.583992, 30.810759, 39.849224>,  <44.389870, 30.630442, 39.267902>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.583992, 30.810759, 39.849224> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.184502, 30.823345, 39.833427>,  <43.944809, 30.830896, 39.823952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.184502, 30.823345, 39.833427>,  <44.583992, 30.810759, 39.849224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.184502, 30.823345, 39.833427> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046500, -0.268455, 0.962169,
		0.019674, 0.962778, 0.269576,
		-0.998725, 0.031465, -0.039488,
		43.884884, 30.832785, 39.821583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.457226, 31.048462, 40.451660>,  <44.583992, 30.810759, 39.849224>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.457226, 31.048462, 40.451660> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.100460, 30.907948, 40.337761>,  <43.886402, 30.823639, 40.269421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.100460, 30.907948, 40.337761>,  <44.457226, 31.048462, 40.451660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.100460, 30.907948, 40.337761> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142323, -0.379630, 0.914125,
		-0.429222, 0.855849, 0.288601,
		-0.891915, -0.351288, -0.284753,
		43.832886, 30.802561, 40.252335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.076469, 31.212753, 40.945850>,  <44.457226, 31.048462, 40.451660>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.076469, 31.212753, 40.945850> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.848846, 30.932976, 40.772896>,  <43.712273, 30.765110, 40.669125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.848846, 30.932976, 40.772896>,  <44.076469, 31.212753, 40.945850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.848846, 30.932976, 40.772896> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362058, -0.258991, 0.895454,
		-0.738301, 0.666112, -0.105858,
		-0.569056, -0.699442, -0.432385,
		43.678131, 30.723143, 40.643181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.465996, 31.207767, 41.168221>,  <44.076469, 31.212753, 40.945850>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.465996, 31.207767, 41.168221> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.513245, 30.826118, 41.058167>,  <43.541595, 30.597130, 40.992134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.513245, 30.826118, 41.058167>,  <43.465996, 31.207767, 41.168221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.513245, 30.826118, 41.058167> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426738, -0.298958, 0.853533,
		-0.896628, 0.016587, -0.442475,
		0.118124, -0.954122, -0.275132,
		43.548683, 30.539883, 40.975628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.809868, 37.181973, 43.098949> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.614307, 37.025806, 42.786911>,  <36.496971, 36.932106, 42.599689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.614307, 37.025806, 42.786911>,  <36.809868, 37.181973, 43.098949>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.614307, 37.025806, 42.786911> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755574, 0.257420, -0.602364,
		0.435986, -0.883917, 0.169136,
		-0.488901, -0.390417, -0.780097,
		36.467636, 36.908680, 42.552883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.321026, 36.743633, 42.642544>,  <36.809868, 37.181973, 43.098949>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.321026, 36.743633, 42.642544> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.008850, 36.890453, 42.440079>,  <36.821545, 36.978546, 42.318600>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.008850, 36.890453, 42.440079>,  <37.321026, 36.743633, 42.642544>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.008850, 36.890453, 42.440079> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604236, 0.234724, -0.761448,
		-0.160679, -0.900101, -0.404969,
		-0.780436, 0.367046, -0.506158,
		36.774719, 37.000568, 42.288231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.265003, 36.419445, 41.982243>,  <37.321026, 36.743633, 42.642544>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.265003, 36.419445, 41.982243> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.060577, 36.760448, 41.938343>,  <36.937923, 36.965050, 41.912003>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.060577, 36.760448, 41.938343>,  <37.265003, 36.419445, 41.982243>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.060577, 36.760448, 41.938343> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505628, 0.194923, -0.840443,
		-0.695091, -0.485013, -0.530670,
		-0.511066, 0.852507, -0.109747,
		36.907257, 37.016201, 41.905418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.011890, 36.457729, 41.253212>,  <37.265003, 36.419445, 41.982243>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.011890, 36.457729, 41.253212> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.994541, 36.827999, 41.403542>,  <36.984131, 37.050159, 41.493740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.994541, 36.827999, 41.403542>,  <37.011890, 36.457729, 41.253212>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.994541, 36.827999, 41.403542> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432550, 0.356493, -0.828139,
		-0.900566, 0.126644, -0.415863,
		-0.043373, 0.925675, 0.375825,
		36.981529, 37.105701, 41.516289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.747250, 36.839653, 40.691765>,  <37.011890, 36.457729, 41.253212>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.747250, 36.839653, 40.691765> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.972553, 37.052448, 40.944660>,  <37.107735, 37.180126, 41.096397>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.972553, 37.052448, 40.944660>,  <36.747250, 36.839653, 40.691765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.972553, 37.052448, 40.944660> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517317, 0.369596, -0.771869,
		-0.644301, 0.761829, -0.067032,
		0.563257, 0.531993, 0.632238,
		37.141529, 37.212048, 41.134331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.609516, 37.479668, 40.524933>,  <36.747250, 36.839653, 40.691765>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.609516, 37.479668, 40.524933> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.962543, 37.496807, 40.712219>,  <37.174362, 37.507092, 40.824593>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.962543, 37.496807, 40.712219>,  <36.609516, 37.479668, 40.524933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.962543, 37.496807, 40.712219> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364287, 0.567278, -0.738573,
		-0.297255, 0.822411, 0.485056,
		0.882573, 0.042845, 0.468220,
		37.227314, 37.509659, 40.852684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.838409, 38.201195, 40.547054>,  <36.609516, 37.479668, 40.524933>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.838409, 38.201195, 40.547054> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.170898, 37.982273, 40.586105>,  <37.370392, 37.850922, 40.609535>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.170898, 37.982273, 40.586105>,  <36.838409, 38.201195, 40.547054>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.170898, 37.982273, 40.586105> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453882, 0.566668, -0.687662,
		0.321037, 0.615910, 0.719437,
		0.831220, -0.547305, 0.097629,
		37.420265, 37.818081, 40.615395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.347878, 38.557549, 40.186264>,  <36.838409, 38.201195, 40.547054>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.347878, 38.557549, 40.186264> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.528473, 38.201508, 40.211205>,  <37.636829, 37.987885, 40.226170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.528473, 38.201508, 40.211205>,  <37.347878, 38.557549, 40.186264>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.528473, 38.201508, 40.211205> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501800, 0.195502, -0.842601,
		0.737807, 0.411710, 0.534917,
		0.451484, -0.890098, 0.062353,
		37.663918, 37.934479, 40.229912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.038578, 38.737171, 39.990540>,  <37.347878, 38.557549, 40.186264>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.038578, 38.737171, 39.990540> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.996582, 38.341370, 39.950836>,  <37.971382, 38.103889, 39.927013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.996582, 38.341370, 39.950836>,  <38.038578, 38.737171, 39.990540>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.996582, 38.341370, 39.950836> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448008, 0.042047, -0.893040,
		0.887843, -0.138231, 0.438893,
		-0.104992, -0.989507, -0.099260,
		37.965084, 38.044518, 39.921059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.386940, 38.705624, 39.508430>,  <38.038578, 38.737171, 39.990540>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.386940, 38.705624, 39.508430> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.234520, 38.336082, 39.494064>,  <38.143066, 38.114357, 39.485443>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.234520, 38.336082, 39.494064>,  <38.386940, 38.705624, 39.508430>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.234520, 38.336082, 39.494064> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238446, -0.060666, -0.969259,
		0.893277, -0.377901, 0.243406,
		-0.381050, -0.923856, -0.035918,
		38.120205, 38.058926, 39.483288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.893757, 38.340664, 39.206547>,  <38.386940, 38.705624, 39.508430>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.893757, 38.340664, 39.206547> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.575020, 38.109596, 39.135731>,  <38.383778, 37.970955, 39.093243>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.575020, 38.109596, 39.135731>,  <38.893757, 38.340664, 39.206547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.575020, 38.109596, 39.135731> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253913, -0.054284, -0.965703,
		0.548249, -0.814462, 0.189934,
		-0.796839, -0.577672, -0.177041,
		38.335968, 37.936295, 39.082619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.099438, 37.780048, 38.751045>,  <38.893757, 38.340664, 39.206547>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.099438, 37.780048, 38.751045> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.700932, 37.782551, 38.716583>,  <38.461830, 37.784054, 38.695904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.700932, 37.782551, 38.716583>,  <39.099438, 37.780048, 38.751045>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.700932, 37.782551, 38.716583> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085356, -0.082171, -0.992956,
		-0.013296, -0.996599, 0.081330,
		-0.996262, 0.006261, -0.086158,
		38.402054, 37.784428, 38.690735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.011124, 37.596405, 38.071987>,  <39.099438, 37.780048, 38.751045>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.011124, 37.596405, 38.071987> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.643959, 37.711407, 38.181366>,  <38.423660, 37.780407, 38.246994>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.643959, 37.711407, 38.181366>,  <39.011124, 37.596405, 38.071987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.643959, 37.711407, 38.181366> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271881, 0.046204, -0.961221,
		-0.288986, -0.956665, 0.035754,
		-0.917915, 0.287501, 0.273452,
		38.368584, 37.797657, 38.263401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.470840, 37.102505, 37.731800>,  <39.011124, 37.596405, 38.071987>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.470840, 37.102505, 37.731800> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285431, 37.449722, 37.802952>,  <38.174187, 37.658054, 37.845642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285431, 37.449722, 37.802952>,  <38.470840, 37.102505, 37.731800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.285431, 37.449722, 37.802952> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288757, 0.041814, -0.956489,
		-0.837714, -0.494721, 0.231273,
		-0.463524, 0.868046, 0.177883,
		38.146374, 37.710136, 37.856316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.622860, 37.653923, 37.201157>,  <38.470840, 37.102505, 37.731800>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.622860, 37.653923, 37.201157> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.919571, 37.387177, 37.172729>,  <39.097599, 37.227127, 37.155674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.919571, 37.387177, 37.172729>,  <38.622860, 37.653923, 37.201157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.919571, 37.387177, 37.172729> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669872, -0.741840, -0.030747,
		-0.032214, 0.070411, -0.996998,
		0.741778, -0.666870, -0.071064,
		39.142105, 37.187115, 37.151409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.449417, 37.098175, 36.673885>,  <38.622860, 37.653923, 37.201157>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.449417, 37.098175, 36.673885> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.712284, 36.917397, 36.915173>,  <38.870007, 36.808929, 37.059944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.712284, 36.917397, 36.915173>,  <38.449417, 37.098175, 36.673885>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.712284, 36.917397, 36.915173> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493679, -0.862835, -0.108615,
		0.569566, -0.226418, -0.790145,
		0.657172, -0.451941, 0.603219,
		38.909435, 36.781815, 37.096138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.594433, 36.470531, 36.414227>,  <38.449417, 37.098175, 36.673885>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.594433, 36.470531, 36.414227> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.680805, 36.407539, 36.799675>,  <38.732628, 36.369743, 37.030945>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.680805, 36.407539, 36.799675>,  <38.594433, 36.470531, 36.414227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.680805, 36.407539, 36.799675> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686500, -0.726280, 0.035136,
		0.694329, -0.669116, -0.264936,
		0.215928, -0.157482, 0.963625,
		38.745583, 36.360294, 37.088764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.646435, 35.742188, 36.505547>,  <38.594433, 36.470531, 36.414227>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.646435, 35.742188, 36.505547> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.590248, 35.864750, 36.882137>,  <38.556538, 35.938286, 37.108093>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.590248, 35.864750, 36.882137>,  <38.646435, 35.742188, 36.505547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.590248, 35.864750, 36.882137> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540358, -0.820525, 0.186421,
		0.829628, -0.482550, 0.280827,
		-0.140468, 0.306407, 0.941480,
		38.548107, 35.956673, 37.164581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.766529, 35.149834, 36.940620>,  <38.646435, 35.742188, 36.505547>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.766529, 35.149834, 36.940620> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.548378, 35.410839, 37.151066>,  <38.417488, 35.567444, 37.277332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.548378, 35.410839, 37.151066>,  <38.766529, 35.149834, 36.940620>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.548378, 35.410839, 37.151066> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506850, -0.756646, 0.413024,
		0.667583, -0.041406, 0.743383,
		-0.545376, 0.652512, 0.526111,
		38.384766, 35.606594, 37.308899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.910370, 35.083443, 37.642982>,  <38.766529, 35.149834, 36.940620>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.910370, 35.083443, 37.642982> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.543274, 35.233334, 37.590332>,  <38.323017, 35.323269, 37.558743>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.543274, 35.233334, 37.590332>,  <38.910370, 35.083443, 37.642982>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.543274, 35.233334, 37.590332> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383166, -0.748111, 0.541768,
		0.104540, 0.547641, 0.830157,
		-0.917744, 0.374725, -0.131630,
		38.267952, 35.345753, 37.550842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.574429, 34.875668, 38.257084>,  <38.910370, 35.083443, 37.642982>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.574429, 34.875668, 38.257084> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.260490, 34.979591, 38.032043>,  <38.072128, 35.041946, 37.897018>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.260490, 34.979591, 38.032043>,  <38.574429, 34.875668, 38.257084>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.260490, 34.979591, 38.032043> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597558, -0.557783, 0.576022,
		-0.164150, 0.788273, 0.593026,
		-0.784843, 0.259813, -0.562600,
		38.025036, 35.057537, 37.863262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.061653, 35.079628, 38.649197>,  <38.574429, 34.875668, 38.257084>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.061653, 35.079628, 38.649197> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.858788, 34.983593, 38.318104>,  <37.737068, 34.925972, 38.119450>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.858788, 34.983593, 38.318104>,  <38.061653, 35.079628, 38.649197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.858788, 34.983593, 38.318104> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676246, -0.484542, 0.554896,
		-0.534295, 0.841175, 0.083385,
		-0.507168, -0.240090, -0.827730,
		37.706638, 34.911568, 38.069786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.438496, 35.257526, 38.825794>,  <38.061653, 35.079628, 38.649197>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.438496, 35.257526, 38.825794> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.366318, 35.008976, 38.520813>,  <37.323009, 34.859844, 38.337826>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.366318, 35.008976, 38.520813>,  <37.438496, 35.257526, 38.825794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.366318, 35.008976, 38.520813> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697996, -0.465260, 0.544367,
		-0.692994, 0.630416, -0.349764,
		-0.180446, -0.621377, -0.762450,
		37.312183, 34.822563, 38.292076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.758778, 35.206932, 38.983574>,  <37.438496, 35.257526, 38.825794>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.758778, 35.206932, 38.983574> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.865013, 34.902630, 38.746693>,  <36.928753, 34.720047, 38.604565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.865013, 34.902630, 38.746693>,  <36.758778, 35.206932, 38.983574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.865013, 34.902630, 38.746693> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540322, -0.626185, 0.562090,
		-0.798445, 0.170695, -0.577364,
		0.265590, -0.760760, -0.592204,
		36.944691, 34.674400, 38.569031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.064682, 34.923836, 38.709873>,  <36.758778, 35.206932, 38.983574>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.064682, 34.923836, 38.709873> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.353302, 34.647293, 38.694912>,  <36.526474, 34.481369, 38.685936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.353302, 34.647293, 38.694912>,  <36.064682, 34.923836, 38.709873>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.353302, 34.647293, 38.694912> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541559, -0.597215, 0.591649,
		-0.431376, -0.406648, -0.805328,
		0.721546, -0.691355, -0.037400,
		36.569767, 34.439888, 38.683693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.626541, 34.236946, 38.586681>,  <36.064682, 34.923836, 38.709873>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.626541, 34.236946, 38.586681> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.980896, 34.109955, 38.721981>,  <36.193508, 34.033760, 38.803162>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.980896, 34.109955, 38.721981>,  <35.626541, 34.236946, 38.586681>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.980896, 34.109955, 38.721981> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456107, -0.462967, 0.760018,
		-0.084688, -0.827569, -0.554939,
		0.885886, -0.317476, 0.338252,
		36.246662, 34.014713, 38.823456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.602676, 33.490170, 38.589577>,  <35.626541, 34.236946, 38.586681>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.602676, 33.490170, 38.589577> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.915783, 33.590271, 38.817486>,  <36.103649, 33.650333, 38.954231>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.915783, 33.590271, 38.817486>,  <35.602676, 33.490170, 38.589577>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.915783, 33.590271, 38.817486> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279547, -0.676597, 0.681226,
		0.555990, -0.692522, -0.459661,
		0.782770, 0.250258, 0.569774,
		36.150616, 33.665348, 38.988419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.856510, 32.828030, 38.801956>,  <35.602676, 33.490170, 38.589577>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.856510, 32.828030, 38.801956> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.952148, 33.110966, 39.068039>,  <36.009529, 33.280727, 39.227688>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.952148, 33.110966, 39.068039>,  <35.856510, 32.828030, 38.801956>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.952148, 33.110966, 39.068039> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300315, -0.597616, 0.743415,
		0.923388, -0.377516, 0.069540,
		0.239093, 0.707344, 0.665205,
		36.023876, 33.323170, 39.267601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.269337, 32.266884, 38.583076>,  <35.856510, 32.828030, 38.801956>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.269337, 32.266884, 38.583076> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.959366, 32.067547, 38.427570>,  <35.773384, 31.947945, 38.334267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.959366, 32.067547, 38.427570>,  <36.269337, 32.266884, 38.583076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.959366, 32.067547, 38.427570> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165921, 0.753911, -0.635679,
		0.609885, -0.428100, -0.666912,
		-0.774926, -0.498345, -0.388768,
		35.726887, 31.918043, 38.310940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.336029, 32.278725, 37.868862>,  <36.269337, 32.266884, 38.583076>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.336029, 32.278725, 37.868862> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.949253, 32.177181, 37.878574>,  <35.717190, 32.116257, 37.884403>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.949253, 32.177181, 37.878574>,  <36.336029, 32.278725, 37.868862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.949253, 32.177181, 37.878574> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166244, 0.555272, -0.814884,
		0.193377, -0.791979, -0.579115,
		-0.966938, -0.253855, 0.024285,
		35.659172, 32.101025, 37.885860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.111755, 32.256725, 37.184582>,  <36.336029, 32.278725, 37.868862>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.111755, 32.256725, 37.184582> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.784763, 32.323544, 37.405060>,  <35.588566, 32.363632, 37.537346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.784763, 32.323544, 37.405060>,  <36.111755, 32.256725, 37.184582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.784763, 32.323544, 37.405060> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261164, 0.745465, -0.613250,
		-0.513336, -0.645274, -0.565780,
		-0.817483, 0.167042, 0.551196,
		35.539516, 32.373657, 37.570419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.553440, 32.253605, 36.715984>,  <36.111755, 32.256725, 37.184582>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.553440, 32.253605, 36.715984> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.427780, 32.485836, 37.016449>,  <35.352386, 32.625175, 37.196728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.427780, 32.485836, 37.016449>,  <35.553440, 32.253605, 36.715984>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.427780, 32.485836, 37.016449> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490554, 0.578142, -0.652004,
		-0.812816, -0.573310, 0.103182,
		-0.314146, 0.580575, 0.751162,
		35.333538, 32.660007, 37.241798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.824173, 32.318424, 36.495285>,  <35.553440, 32.253605, 36.715984>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.824173, 32.318424, 36.495285> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.948135, 32.600056, 36.750858>,  <35.022511, 32.769035, 36.904202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.948135, 32.600056, 36.750858>,  <34.824173, 32.318424, 36.495285>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.948135, 32.600056, 36.750858> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220308, 0.706907, -0.672121,
		-0.924891, 0.067531, 0.374187,
		0.309904, 0.704075, 0.638934,
		35.041107, 32.811279, 36.942539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.335896, 32.859612, 36.342026>,  <34.824173, 32.318424, 36.495285>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.335896, 32.859612, 36.342026> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.643375, 33.050018, 36.512913>,  <34.827862, 33.164261, 36.615444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.643375, 33.050018, 36.512913>,  <34.335896, 32.859612, 36.342026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.643375, 33.050018, 36.512913> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211760, 0.819663, -0.532269,
		-0.603542, 0.318686, 0.730874,
		0.768697, 0.476016, 0.427216,
		34.873985, 33.192822, 36.641079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.184322, 33.562160, 36.160103>,  <34.335896, 32.859612, 36.342026>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.184322, 33.562160, 36.160103> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.547138, 33.624615, 36.316517>,  <34.764828, 33.662086, 36.410366>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.547138, 33.624615, 36.316517>,  <34.184322, 33.562160, 36.160103>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.547138, 33.624615, 36.316517> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073498, 0.855731, -0.512175,
		-0.414586, 0.493301, 0.764704,
		0.907037, 0.156137, 0.391031,
		34.819248, 33.671455, 36.433826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.215141, 34.281517, 36.491268>,  <34.184322, 33.562160, 36.160103>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.215141, 34.281517, 36.491268> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.580578, 34.163754, 36.379074>,  <34.799839, 34.093098, 36.311756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.580578, 34.163754, 36.379074>,  <34.215141, 34.281517, 36.491268>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.580578, 34.163754, 36.379074> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081981, 0.808979, -0.582092,
		0.398280, 0.508801, 0.763214,
		0.913593, -0.294405, -0.280488,
		34.854656, 34.075432, 36.294930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.634926, 34.845917, 36.650913>,  <34.215141, 34.281517, 36.491268>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.634926, 34.845917, 36.650913> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.770977, 34.630478, 36.342567>,  <34.852608, 34.501213, 36.157562>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.770977, 34.630478, 36.342567>,  <34.634926, 34.845917, 36.650913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.770977, 34.630478, 36.342567> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030822, 0.812908, -0.581576,
		0.939875, 0.221568, 0.259891,
		0.340126, -0.538598, -0.770861,
		34.873016, 34.468899, 36.111309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.103832, 35.307701, 36.322056>,  <34.634926, 34.845917, 36.650913>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.103832, 35.307701, 36.322056> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.034008, 35.023476, 36.049400>,  <34.992111, 34.852940, 35.885807>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.034008, 35.023476, 36.049400>,  <35.103832, 35.307701, 36.322056>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.034008, 35.023476, 36.049400> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166515, 0.660993, -0.731684,
		0.970464, -0.241229, 0.002933,
		-0.174565, -0.710561, -0.681638,
		34.981640, 34.810307, 35.844910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.544205, 35.424229, 35.741241>,  <35.103832, 35.307701, 36.322056>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.544205, 35.424229, 35.741241> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.253662, 35.211315, 35.567307>,  <35.079338, 35.083569, 35.462944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.253662, 35.211315, 35.567307>,  <35.544205, 35.424229, 35.741241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.253662, 35.211315, 35.567307> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031005, 0.606642, -0.794370,
		0.686621, -0.590477, -0.424134,
		-0.726355, -0.532281, -0.434841,
		35.035755, 35.051632, 35.436855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.738609, 35.281174, 34.937668>,  <35.544205, 35.424229, 35.741241>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.738609, 35.281174, 34.937668> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.345627, 35.227909, 34.989895>,  <35.109837, 35.195950, 35.021233>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.345627, 35.227909, 34.989895>,  <35.738609, 35.281174, 34.937668>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.345627, 35.227909, 34.989895> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185338, 0.619408, -0.762878,
		0.020708, -0.773694, -0.633221,
		-0.982457, -0.133158, 0.130569,
		35.050888, 35.187962, 35.029064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.928993, 28.895014, 40.570393> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.541092, 28.990978, 40.552437>,  <35.308350, 29.048557, 40.541664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.541092, 28.990978, 40.552437>,  <35.928993, 28.895014, 40.570393>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.541092, 28.990978, 40.552437> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151734, 0.448514, -0.880802,
		-0.191178, -0.860975, -0.471352,
		-0.969757, 0.239910, -0.044893,
		35.250164, 29.062952, 40.538967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.763950, 28.818203, 39.847328>,  <35.928993, 28.895014, 40.570393>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.763950, 28.818203, 39.847328> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.496834, 29.072737, 40.001801>,  <35.336563, 29.225456, 40.094482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.496834, 29.072737, 40.001801>,  <35.763950, 28.818203, 39.847328>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.496834, 29.072737, 40.001801> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133315, 0.612673, -0.779012,
		-0.732312, -0.468734, -0.493971,
		-0.667791, 0.636334, 0.386178,
		35.296497, 29.263638, 40.117653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.472038, 29.049870, 39.316093>,  <35.763950, 28.818203, 39.847328>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.472038, 29.049870, 39.316093> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.346832, 29.324116, 39.578987>,  <35.271709, 29.488663, 39.736725>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.346832, 29.324116, 39.578987>,  <35.472038, 29.049870, 39.316093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.346832, 29.324116, 39.578987> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020084, 0.696630, -0.717150,
		-0.949537, -0.211275, -0.231822,
		-0.313010, 0.685616, 0.657233,
		35.252930, 29.529800, 39.776157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.937187, 29.369329, 38.992207>,  <35.472038, 29.049870, 39.316093>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.937187, 29.369329, 38.992207> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.072548, 29.628668, 39.265007>,  <35.153767, 29.784271, 39.428688>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.072548, 29.628668, 39.265007>,  <34.937187, 29.369329, 38.992207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.072548, 29.628668, 39.265007> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052921, 0.736732, -0.674111,
		-0.939511, 0.192031, 0.283625,
		0.338406, 0.648344, 0.682005,
		35.174068, 29.823172, 39.469608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.524628, 29.997322, 38.775455>,  <34.937187, 29.369329, 38.992207>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.524628, 29.997322, 38.775455> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.828655, 30.103184, 39.012859>,  <35.011074, 30.166700, 39.155300>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.828655, 30.103184, 39.012859>,  <34.524628, 29.997322, 38.775455>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.828655, 30.103184, 39.012859> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063169, 0.878897, -0.472811,
		-0.646761, 0.396862, 0.651307,
		0.760072, 0.264653, 0.593506,
		35.056679, 30.182579, 39.190910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.446556, 30.684402, 38.964165>,  <34.524628, 29.997322, 38.775455>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.446556, 30.684402, 38.964165> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.835381, 30.635075, 39.044056>,  <35.068676, 30.605478, 39.091991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.835381, 30.635075, 39.044056>,  <34.446556, 30.684402, 38.964165>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.835381, 30.635075, 39.044056> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212323, 0.824754, -0.524118,
		-0.100097, 0.551881, 0.827893,
		0.972059, -0.123319, 0.199732,
		35.126999, 30.598080, 39.103977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.592926, 31.288862, 39.305740>,  <34.446556, 30.684402, 38.964165>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.592926, 31.288862, 39.305740> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.938572, 31.133194, 39.178082>,  <35.145958, 31.039793, 39.101486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.938572, 31.133194, 39.178082>,  <34.592926, 31.288862, 39.305740>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.938572, 31.133194, 39.178082> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240535, 0.876336, -0.417347,
		0.442095, 0.283871, 0.850864,
		0.864115, -0.389170, -0.319142,
		35.197807, 31.016443, 39.082340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.147854, 31.836584, 39.429886>,  <34.592926, 31.288862, 39.305740>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.147854, 31.836584, 39.429886> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.269981, 31.571758, 39.156113>,  <35.343258, 31.412863, 38.991848>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.269981, 31.571758, 39.156113>,  <35.147854, 31.836584, 39.429886>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.269981, 31.571758, 39.156113> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308127, 0.748776, -0.586850,
		0.901022, -0.031719, 0.432612,
		0.305315, -0.662064, -0.684437,
		35.361576, 31.373138, 38.950783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.788166, 32.030781, 39.244213>,  <35.147854, 31.836584, 39.429886>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.788166, 32.030781, 39.244213> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.667675, 31.805674, 38.936302>,  <35.595379, 31.670609, 38.751556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.667675, 31.805674, 38.936302>,  <35.788166, 32.030781, 39.244213>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.667675, 31.805674, 38.936302> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277431, 0.720625, -0.635398,
		0.912302, -0.404959, -0.060942,
		-0.301227, -0.562768, -0.769776,
		35.577309, 31.636843, 38.705368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.304756, 32.473713, 39.397350>,  <35.788166, 32.030781, 39.244213>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.304756, 32.473713, 39.397350> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.175980, 32.820587, 39.549324>,  <36.098713, 33.028709, 39.640507>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.175980, 32.820587, 39.549324>,  <36.304756, 32.473713, 39.397350>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.175980, 32.820587, 39.549324> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277212, -0.470053, 0.837976,
		0.905265, 0.164460, 0.391724,
		-0.321945, 0.867181, 0.379932,
		36.079395, 33.080742, 39.663303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.530483, 32.555069, 40.068359>,  <36.304756, 32.473713, 39.397350>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.530483, 32.555069, 40.068359> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.243240, 32.832851, 40.086452>,  <36.070892, 32.999519, 40.097309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.243240, 32.832851, 40.086452>,  <36.530483, 32.555069, 40.068359>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.243240, 32.832851, 40.086452> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371270, -0.437274, 0.819116,
		0.588621, 0.571421, 0.571842,
		-0.718112, 0.694456, 0.045237,
		36.027805, 33.041187, 40.100025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.548981, 32.801968, 40.723782>,  <36.530483, 32.555069, 40.068359>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.548981, 32.801968, 40.723782> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.174427, 32.887451, 40.612423>,  <35.949696, 32.938744, 40.545609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.174427, 32.887451, 40.612423>,  <36.548981, 32.801968, 40.723782>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.174427, 32.887451, 40.612423> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345649, -0.424022, 0.837097,
		0.060852, 0.880075, 0.470919,
		-0.936389, 0.213712, -0.278395,
		35.893509, 32.951565, 40.528904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.196095, 33.086533, 41.261345>,  <36.548981, 32.801968, 40.723782>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.196095, 33.086533, 41.261345> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.901005, 32.942265, 41.033070>,  <35.723953, 32.855705, 40.896103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.901005, 32.942265, 41.033070>,  <36.196095, 33.086533, 41.261345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.901005, 32.942265, 41.033070> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375492, -0.483307, 0.790835,
		-0.561048, 0.797705, 0.221117,
		-0.737720, -0.360668, -0.570690,
		35.679688, 32.834064, 40.861862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.554085, 33.320190, 41.574139>,  <36.196095, 33.086533, 41.261345>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.554085, 33.320190, 41.574139> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.440502, 33.011700, 41.346252>,  <35.372353, 32.826607, 41.209518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.440502, 33.011700, 41.346252>,  <35.554085, 33.320190, 41.574139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.440502, 33.011700, 41.346252> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478013, -0.401210, 0.781366,
		-0.831188, 0.494206, -0.254731,
		-0.283955, -0.771227, -0.569718,
		35.355316, 32.780331, 41.175339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.934757, 33.069427, 41.961075>,  <35.554085, 33.320190, 41.574139>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.934757, 33.069427, 41.961075> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.980160, 32.785328, 41.683182>,  <35.007401, 32.614868, 41.516445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.980160, 32.785328, 41.683182>,  <34.934757, 33.069427, 41.961075>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.980160, 32.785328, 41.683182> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454844, -0.658821, 0.599226,
		-0.883308, 0.247981, -0.397834,
		0.113504, -0.710253, -0.694735,
		35.014210, 32.572250, 41.474762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.221848, 32.784538, 41.801216>,  <34.934757, 33.069427, 41.961075>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.221848, 32.784538, 41.801216> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.503136, 32.510033, 41.726898>,  <34.671909, 32.345329, 41.682308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.503136, 32.510033, 41.726898>,  <34.221848, 32.784538, 41.801216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.503136, 32.510033, 41.726898> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360008, -0.569056, 0.739303,
		-0.613086, -0.453006, -0.647233,
		0.703221, -0.686266, -0.185795,
		34.714104, 32.304153, 41.671162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.902439, 32.217552, 41.899853>,  <34.221848, 32.784538, 41.801216>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.902439, 32.217552, 41.899853> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.287853, 32.111874, 41.916794>,  <34.519104, 32.048466, 41.926960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.287853, 32.111874, 41.916794>,  <33.902439, 32.217552, 41.899853>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.287853, 32.111874, 41.916794> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209458, -0.646258, 0.733810,
		-0.166503, -0.715925, -0.678033,
		0.963537, -0.264201, 0.042352,
		34.576916, 32.032612, 41.929501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.884056, 31.496613, 41.897549>,  <33.902439, 32.217552, 41.899853>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.884056, 31.496613, 41.897549> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.235977, 31.595383, 42.060020>,  <34.447128, 31.654644, 42.157505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.235977, 31.595383, 42.060020>,  <33.884056, 31.496613, 41.897549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.235977, 31.595383, 42.060020> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133720, -0.691419, 0.709971,
		0.456150, -0.678946, -0.575291,
		0.879799, 0.246925, 0.406180,
		34.499916, 31.669460, 42.181873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.123707, 30.933590, 42.128395>,  <33.884056, 31.496613, 41.897549>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.123707, 30.933590, 42.128395> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.390137, 31.160805, 42.321754>,  <34.549995, 31.297134, 42.437771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.390137, 31.160805, 42.321754>,  <34.123707, 30.933590, 42.128395>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.390137, 31.160805, 42.321754> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009842, -0.641342, 0.767192,
		0.745819, -0.515766, -0.421593,
		0.666076, 0.568037, 0.483401,
		34.589958, 31.331215, 42.466774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.711109, 30.496433, 42.394051>,  <34.123707, 30.933590, 42.128395>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.711109, 30.496433, 42.394051> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.694431, 30.830750, 42.613037>,  <34.684425, 31.031340, 42.744427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.694431, 30.830750, 42.613037>,  <34.711109, 30.496433, 42.394051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.694431, 30.830750, 42.613037> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051928, -0.545386, 0.836575,
		0.997780, 0.063311, -0.020660,
		-0.041697, 0.835791, 0.547462,
		34.681923, 31.081488, 42.777275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.111984, 30.401608, 43.126358>,  <34.711109, 30.496433, 42.394051>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.111984, 30.401608, 43.126358> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.869282, 30.707645, 43.212593>,  <34.723660, 30.891268, 43.264332>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.869282, 30.707645, 43.212593>,  <35.111984, 30.401608, 43.126358>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.869282, 30.707645, 43.212593> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068793, -0.320741, 0.944665,
		0.791905, 0.558352, 0.247245,
		-0.606757, 0.765094, 0.215586,
		34.687256, 30.937174, 43.277267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.218655, 30.602505, 43.801773>,  <35.111984, 30.401608, 43.126358>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.218655, 30.602505, 43.801773> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.866463, 30.783819, 43.746227>,  <34.655148, 30.892609, 43.712898>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.866463, 30.783819, 43.746227>,  <35.218655, 30.602505, 43.801773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.866463, 30.783819, 43.746227> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281068, -0.263226, 0.922883,
		0.381778, 0.851612, 0.359170,
		-0.880481, 0.453287, -0.138867,
		34.602318, 30.919806, 43.704567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.142097, 30.882690, 44.364311>,  <35.218655, 30.602505, 43.801773>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.142097, 30.882690, 44.364311> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.769608, 30.852077, 44.221783>,  <34.546116, 30.833710, 44.136265>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.769608, 30.852077, 44.221783>,  <35.142097, 30.882690, 44.364311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.769608, 30.852077, 44.221783> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311468, -0.340549, 0.887138,
		-0.189240, 0.937107, 0.293290,
		-0.931223, -0.076531, -0.356325,
		34.490242, 30.829119, 44.114883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<29.250328, 31.495790, 42.746979> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.572535, 31.278217, 42.652935>,  <29.765860, 31.147675, 42.596508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.572535, 31.278217, 42.652935>,  <29.250328, 31.495790, 42.746979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.572535, 31.278217, 42.652935> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227825, 0.650548, -0.724488,
		0.547024, 0.530024, 0.647950,
		0.805519, -0.543931, -0.235113,
		29.814190, 31.115038, 42.582401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.814411, 31.974447, 42.862820>,  <29.250328, 31.495790, 42.746979>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.814411, 31.974447, 42.862820> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.966732, 31.688576, 42.628136>,  <30.058125, 31.517054, 42.487328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.966732, 31.688576, 42.628136>,  <29.814411, 31.974447, 42.862820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.966732, 31.688576, 42.628136> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515273, 0.690877, -0.507132,
		0.767778, -0.109196, 0.631343,
		0.380804, -0.714679, -0.586706,
		30.080973, 31.474173, 42.452126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.504480, 32.163708, 42.760403>,  <29.814411, 31.974447, 42.862820>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.504480, 32.163708, 42.760403> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.425606, 31.917227, 42.455402>,  <30.378281, 31.769337, 42.272404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.425606, 31.917227, 42.455402>,  <30.504480, 32.163708, 42.760403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.425606, 31.917227, 42.455402> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568369, 0.561869, -0.601050,
		0.798796, -0.551901, 0.239439,
		-0.197187, -0.616205, -0.762502,
		30.366449, 31.732365, 42.226650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.993038, 32.302208, 42.302742>,  <30.504480, 32.163708, 42.760403>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.993038, 32.302208, 42.302742> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.790257, 32.063644, 42.053810>,  <30.668589, 31.920506, 41.904449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.790257, 32.063644, 42.053810>,  <30.993038, 32.302208, 42.302742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.790257, 32.063644, 42.053810> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478822, 0.405494, -0.778655,
		0.716749, -0.692726, 0.080008,
		-0.506952, -0.596410, -0.622330,
		30.638170, 31.884722, 41.867111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.463045, 32.052414, 41.827816>,  <30.993038, 32.302208, 42.302742>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.463045, 32.052414, 41.827816> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.108496, 32.027168, 41.644356>,  <30.895767, 32.012020, 41.534279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.108496, 32.027168, 41.644356>,  <31.463045, 32.052414, 41.827816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.108496, 32.027168, 41.644356> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356799, 0.538168, -0.763590,
		0.295024, -0.840471, -0.454498,
		-0.886372, -0.063113, -0.458652,
		30.842585, 32.008236, 41.506760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.605619, 31.938141, 41.120735>,  <31.463045, 32.052414, 41.827816>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.605619, 31.938141, 41.120735> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.223152, 32.054874, 41.111103>,  <30.993671, 32.124916, 41.105324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.223152, 32.054874, 41.111103>,  <31.605619, 31.938141, 41.120735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.223152, 32.054874, 41.111103> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173356, 0.497861, -0.849754,
		-0.235996, -0.816681, -0.526629,
		-0.956166, 0.291833, -0.024084,
		30.936302, 32.142426, 41.103878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.305592, 31.814964, 40.446342>,  <31.605619, 31.938141, 41.120735>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.305592, 31.814964, 40.446342> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.049276, 32.088932, 40.585068>,  <30.895487, 32.253311, 40.668301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.049276, 32.088932, 40.585068>,  <31.305592, 31.814964, 40.446342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.049276, 32.088932, 40.585068> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124777, 0.538649, -0.833239,
		-0.757510, -0.490656, -0.430622,
		-0.640788, 0.684919, 0.346810,
		30.857040, 32.294407, 40.689110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.010015, 32.025368, 39.931431>,  <31.305592, 31.814964, 40.446342>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.010015, 32.025368, 39.931431> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.937794, 32.333828, 40.175636>,  <30.894461, 32.518902, 40.322159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.937794, 32.333828, 40.175636>,  <31.010015, 32.025368, 39.931431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.937794, 32.333828, 40.175636> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084169, 0.630555, -0.771567,
		-0.979957, -0.087922, -0.178756,
		-0.180553, 0.771149, 0.610517,
		30.883629, 32.565174, 40.358791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.412086, 32.484924, 39.638161>,  <31.010015, 32.025368, 39.931431>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.412086, 32.484924, 39.638161> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.594681, 32.709335, 39.914383>,  <30.704239, 32.843983, 40.080116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.594681, 32.709335, 39.914383>,  <30.412086, 32.484924, 39.638161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.594681, 32.709335, 39.914383> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080355, 0.798968, -0.595980,
		-0.886094, 0.216568, 0.409800,
		0.456488, 0.561024, 0.690558,
		30.731627, 32.877644, 40.121552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.012463, 33.022224, 39.562218>,  <30.412086, 32.484924, 39.638161>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.012463, 33.022224, 39.562218> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.346584, 33.140892, 39.747368>,  <30.547056, 33.212093, 39.858459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.346584, 33.140892, 39.747368>,  <30.012463, 33.022224, 39.562218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.346584, 33.140892, 39.747368> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029064, 0.816910, -0.576033,
		-0.549021, 0.494615, 0.673745,
		0.835303, 0.296672, 0.462876,
		30.597176, 33.229893, 39.886230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.831949, 33.670456, 39.811707>,  <30.012463, 33.022224, 39.562218>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.831949, 33.670456, 39.811707> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.231613, 33.658714, 39.800266>,  <30.471411, 33.651669, 39.793404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.231613, 33.658714, 39.800266>,  <29.831949, 33.670456, 39.811707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.231613, 33.658714, 39.800266> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012553, 0.883481, -0.468298,
		0.039011, 0.467546, 0.883108,
		0.999160, -0.029355, -0.028597,
		30.531361, 33.649906, 39.791687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.986635, 34.335777, 39.950253>,  <29.831949, 33.670456, 39.811707>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.986635, 34.335777, 39.950253> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.331324, 34.205555, 39.794586>,  <30.538137, 34.127422, 39.701187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.331324, 34.205555, 39.794586>,  <29.986635, 34.335777, 39.950253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.331324, 34.205555, 39.794586> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118467, 0.874905, -0.469581,
		0.493359, 0.358544, 0.792492,
		0.861721, -0.325556, -0.389167,
		30.589840, 34.107887, 39.677837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.545290, 34.851971, 40.031517>,  <29.986635, 34.335777, 39.950253>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.545290, 34.851971, 40.031517> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.650282, 34.620777, 39.722443>,  <30.713276, 34.482059, 39.536999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.650282, 34.620777, 39.722443>,  <30.545290, 34.851971, 40.031517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.650282, 34.620777, 39.722443> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238703, 0.814763, -0.528377,
		0.934947, -0.045754, 0.351824,
		0.262478, -0.577986, -0.772682,
		30.729025, 34.447380, 39.490639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.151646, 35.211689, 39.728573>,  <30.545290, 34.851971, 40.031517>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.151646, 35.211689, 39.728573> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.022881, 34.957733, 39.447636>,  <30.945621, 34.805359, 39.279072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.022881, 34.957733, 39.447636>,  <31.151646, 35.211689, 39.728573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.022881, 34.957733, 39.447636> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123938, 0.707190, -0.696076,
		0.938623, -0.311122, -0.148966,
		-0.321911, -0.634890, -0.702344,
		30.926308, 34.767265, 39.236931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.912317, 35.270061, 39.912426>,  <31.151646, 35.211689, 39.728573>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.912317, 35.270061, 39.912426> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.009274, 35.567081, 40.162182>,  <32.067448, 35.745293, 40.312035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.009274, 35.567081, 40.162182>,  <31.912317, 35.270061, 39.912426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.009274, 35.567081, 40.162182> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425750, -0.496891, 0.756198,
		0.871771, -0.449130, 0.195699,
		0.242390, 0.742551, 0.624392,
		32.081989, 35.789848, 40.349499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.282387, 34.995216, 40.594234>,  <31.912317, 35.270061, 39.912426>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.282387, 34.995216, 40.594234> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.110088, 35.346027, 40.679352>,  <32.006710, 35.556515, 40.730423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.110088, 35.346027, 40.679352>,  <32.282387, 34.995216, 40.594234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.110088, 35.346027, 40.679352> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369051, -0.386353, 0.845300,
		0.823564, 0.285579, 0.490088,
		-0.430747, 0.877027, 0.212793,
		31.980864, 35.609135, 40.743191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.495705, 35.164520, 41.352539>,  <32.282387, 34.995216, 40.594234>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.495705, 35.164520, 41.352539> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.145599, 35.326931, 41.247425>,  <31.935535, 35.424377, 41.184357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.145599, 35.326931, 41.247425>,  <32.495705, 35.164520, 41.352539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.145599, 35.326931, 41.247425> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395659, -0.288628, 0.871865,
		0.278151, 0.867086, 0.413273,
		-0.875263, 0.406025, -0.262788,
		31.883020, 35.448738, 41.168587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.388420, 35.512634, 41.933716>,  <32.495705, 35.164520, 41.352539>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.388420, 35.512634, 41.933716> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.038906, 35.504501, 41.739365>,  <31.829197, 35.499622, 41.622753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.038906, 35.504501, 41.739365>,  <32.388420, 35.512634, 41.933716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.038906, 35.504501, 41.739365> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479633, -0.128921, 0.867946,
		-0.080289, 0.991446, 0.102897,
		-0.873788, -0.020333, -0.485882,
		31.776770, 35.498402, 41.593601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.017464, 35.851551, 42.338310>,  <32.388420, 35.512634, 41.933716>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.017464, 35.851551, 42.338310> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.754076, 35.655209, 42.110107>,  <31.596043, 35.537403, 41.973186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.754076, 35.655209, 42.110107>,  <32.017464, 35.851551, 42.338310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.754076, 35.655209, 42.110107> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493311, -0.290990, 0.819737,
		-0.568385, 0.821209, -0.050537,
		-0.658470, -0.490856, -0.570506,
		31.556536, 35.507950, 41.938957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.334251, 36.013950, 42.651062>,  <32.017464, 35.851551, 42.338310>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.334251, 36.013950, 42.651062> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.293301, 35.681408, 42.432571>,  <31.268730, 35.481884, 42.301476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.293301, 35.681408, 42.432571>,  <31.334251, 36.013950, 42.651062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.293301, 35.681408, 42.432571> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368479, -0.478359, 0.797117,
		-0.923982, 0.282881, -0.257364,
		-0.102376, -0.831355, -0.546231,
		31.262589, 35.432003, 42.268703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.751343, 35.752640, 42.877586>,  <31.334251, 36.013950, 42.651062>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.751343, 35.752640, 42.877586> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.897442, 35.425812, 42.699150>,  <30.985102, 35.229717, 42.592087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.897442, 35.425812, 42.699150>,  <30.751343, 35.752640, 42.877586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.897442, 35.425812, 42.699150> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350037, -0.564574, 0.747483,
		-0.862594, -0.116869, -0.492213,
		0.365248, -0.817067, -0.446090,
		31.007017, 35.180691, 42.565323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.223389, 35.222595, 42.985798>,  <30.751343, 35.752640, 42.877586>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.223389, 35.222595, 42.985798> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.556530, 35.018322, 42.900417>,  <30.756414, 34.895760, 42.849190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.556530, 35.018322, 42.900417>,  <30.223389, 35.222595, 42.985798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.556530, 35.018322, 42.900417> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169061, -0.601918, 0.780457,
		-0.527045, -0.613919, -0.587645,
		0.832852, -0.510683, -0.213448,
		30.806385, 34.865116, 42.836384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.052313, 34.578831, 43.095539>,  <30.223389, 35.222595, 42.985798>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.052313, 34.578831, 43.095539> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.450480, 34.544678, 43.112774>,  <30.689379, 34.524185, 43.123116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.450480, 34.544678, 43.112774>,  <30.052313, 34.578831, 43.095539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.450480, 34.544678, 43.112774> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091503, -0.719224, 0.688726,
		-0.027816, -0.689512, -0.723740,
		0.995416, -0.085382, 0.043086,
		30.749104, 34.519062, 43.125698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.180265, 33.865204, 42.950752>,  <30.052313, 34.578831, 43.095539>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.180265, 33.865204, 42.950752> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.494810, 34.011642, 43.149796>,  <30.683537, 34.099506, 43.269222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.494810, 34.011642, 43.149796>,  <30.180265, 33.865204, 42.950752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.494810, 34.011642, 43.149796> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095003, -0.867573, 0.488151,
		0.610420, -0.336589, -0.717004,
		0.786360, 0.366095, 0.497607,
		30.730719, 34.121471, 43.299076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.764545, 33.239292, 42.966606>,  <30.180265, 33.865204, 42.950752>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.764545, 33.239292, 42.966606> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.834356, 33.503811, 43.258423>,  <30.876244, 33.662521, 43.433514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.834356, 33.503811, 43.258423>,  <30.764545, 33.239292, 42.966606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.834356, 33.503811, 43.258423> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082734, -0.748137, 0.658366,
		0.981170, -0.054546, -0.185283,
		0.174529, 0.661298, 0.729537,
		30.886715, 33.702202, 43.477283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.315290, 32.950752, 43.316433>,  <30.764545, 33.239292, 42.966606>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.315290, 32.950752, 43.316433> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.135141, 33.196404, 43.575668>,  <31.027052, 33.343792, 43.731209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.135141, 33.196404, 43.575668>,  <31.315290, 32.950752, 43.316433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.135141, 33.196404, 43.575668> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058424, -0.744584, 0.664968,
		0.890928, 0.261618, 0.371219,
		-0.450371, 0.614126, 0.648085,
		31.000031, 33.380642, 43.770096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.650101, 32.771687, 43.965614>,  <31.315290, 32.950752, 43.316433>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.650101, 32.771687, 43.965614> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.297762, 32.940117, 44.052151>,  <31.086359, 33.041176, 44.104073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.297762, 32.940117, 44.052151>,  <31.650101, 32.771687, 43.965614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.297762, 32.940117, 44.052151> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154293, -0.687394, 0.709706,
		0.447547, 0.591765, 0.670459,
		-0.880849, 0.421074, 0.216337,
		31.033506, 33.066441, 44.117050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.680395, 32.913929, 44.658543>,  <31.650101, 32.771687, 43.965614>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.680395, 32.913929, 44.658543> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.288292, 32.935272, 44.582394>,  <31.053030, 32.948078, 44.536705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.288292, 32.935272, 44.582394>,  <31.680395, 32.913929, 44.658543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.288292, 32.935272, 44.582394> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180527, -0.634187, 0.751809,
		-0.080623, 0.771336, 0.631300,
		-0.980260, 0.053354, -0.190377,
		30.994213, 32.951279, 44.525280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.100449, 33.546677, 44.862118>,  <31.680395, 32.913929, 44.658543>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.100449, 33.546677, 44.862118> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.409370, 33.606064, 45.109180>,  <32.594723, 33.641697, 45.257416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.409370, 33.606064, 45.109180>,  <32.100449, 33.546677, 44.862118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.409370, 33.606064, 45.109180> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285858, 0.787074, -0.546626,
		-0.567297, 0.598725, 0.565422,
		0.772308, 0.148469, 0.617655,
		32.641064, 33.650604, 45.294476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.162460, 34.233517, 44.861946>,  <32.100449, 33.546677, 44.862118>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.162460, 34.233517, 44.861946> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.529572, 34.115395, 44.968132>,  <32.749840, 34.044521, 45.031845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.529572, 34.115395, 44.968132>,  <32.162460, 34.233517, 44.861946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.529572, 34.115395, 44.968132> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396972, 0.666216, -0.631323,
		0.009577, 0.684799, 0.728669,
		0.917781, -0.295307, 0.265466,
		32.804905, 34.026802, 45.047771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.602848, 34.909016, 44.727139>,  <32.162460, 34.233517, 44.861946>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.602848, 34.909016, 44.727139> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.840134, 34.588051, 44.753147>,  <32.982506, 34.395470, 44.768753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.840134, 34.588051, 44.753147>,  <32.602848, 34.909016, 44.727139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.840134, 34.588051, 44.753147> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700967, 0.475111, -0.531897,
		0.395910, 0.361107, 0.844309,
		0.593212, -0.802416, 0.065023,
		33.018097, 34.347324, 44.772655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.281864, 35.155899, 44.924034>,  <32.602848, 34.909016, 44.727139>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.281864, 35.155899, 44.924034> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.340275, 34.798889, 44.753357>,  <33.375320, 34.584682, 44.650951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.340275, 34.798889, 44.753357>,  <33.281864, 35.155899, 44.924034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.340275, 34.798889, 44.753357> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732129, 0.387579, -0.560152,
		0.665330, -0.230600, 0.710042,
		0.146026, -0.892528, -0.426697,
		33.384083, 34.531132, 44.625347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.908073, 34.965012, 44.965981>,  <33.281864, 35.155899, 44.924034>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.908073, 34.965012, 44.965981> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.799866, 34.720390, 44.668571>,  <33.734940, 34.573616, 44.490128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.799866, 34.720390, 44.668571>,  <33.908073, 34.965012, 44.965981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.799866, 34.720390, 44.668571> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741042, 0.360734, -0.566328,
		0.614552, -0.704184, 0.355599,
		-0.270522, -0.611552, -0.743520,
		33.718708, 34.536926, 44.445515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.561947, 34.568375, 44.646240>,  <33.908073, 34.965012, 44.965981>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.561947, 34.568375, 44.646240> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.272743, 34.577370, 44.370049>,  <34.099220, 34.582767, 44.204334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.272743, 34.577370, 44.370049>,  <34.561947, 34.568375, 44.646240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.272743, 34.577370, 44.370049> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644981, 0.380054, -0.662992,
		0.247509, -0.924691, -0.289285,
		-0.723007, 0.022487, -0.690475,
		34.055840, 34.584114, 44.162907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.909683, 34.340355, 43.966526>,  <34.561947, 34.568375, 44.646240>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.909683, 34.340355, 43.966526> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.568840, 34.536350, 43.892960>,  <34.364334, 34.653946, 43.848820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.568840, 34.536350, 43.892960>,  <34.909683, 34.340355, 43.966526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.568840, 34.536350, 43.892960> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451009, 0.509174, -0.733030,
		-0.265528, -0.707569, -0.654859,
		-0.852106, 0.489988, -0.183920,
		34.313210, 34.683346, 43.837784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.910721, 34.353756, 43.238636>,  <34.909683, 34.340355, 43.966526>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.910721, 34.353756, 43.238636> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.641518, 34.626530, 43.353195>,  <34.479996, 34.790195, 43.421928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.641518, 34.626530, 43.353195>,  <34.910721, 34.353756, 43.238636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.641518, 34.626530, 43.353195> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339940, 0.629079, -0.699071,
		-0.656887, -0.373124, -0.655193,
		-0.673008, 0.681937, 0.286394,
		34.439613, 34.831112, 43.439114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.814541, 34.719315, 42.698708>,  <34.910721, 34.353756, 43.238636>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.814541, 34.719315, 42.698708> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.694904, 34.979847, 42.977654>,  <34.623123, 35.136166, 43.145020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.694904, 34.979847, 42.977654>,  <34.814541, 34.719315, 42.698708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.694904, 34.979847, 42.977654> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459977, 0.738711, -0.492674,
		-0.836043, 0.173418, -0.520536,
		-0.299087, 0.651331, 0.697362,
		34.605179, 35.175247, 43.186863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.639259, 35.321625, 42.255711>,  <34.814541, 34.719315, 42.698708>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.639259, 35.321625, 42.255711> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.651703, 35.482601, 42.621677>,  <34.659168, 35.579185, 42.841259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.651703, 35.482601, 42.621677>,  <34.639259, 35.321625, 42.255711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.651703, 35.482601, 42.621677> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385205, 0.839824, -0.382508,
		-0.922306, 0.364330, -0.128897,
		0.031108, 0.402441, 0.914917,
		34.661034, 35.603333, 42.896152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.441708, 35.979179, 42.234161>,  <34.639259, 35.321625, 42.255711>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.441708, 35.979179, 42.234161> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.653568, 35.981304, 42.573441>,  <34.780685, 35.982578, 42.777008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.653568, 35.981304, 42.573441>,  <34.441708, 35.979179, 42.234161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.653568, 35.981304, 42.573441> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609430, 0.693147, -0.384892,
		-0.589972, 0.720776, 0.363887,
		0.529648, 0.005311, 0.848201,
		34.812462, 35.982899, 42.827900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.361115, 36.740028, 42.525089>,  <34.441708, 35.979179, 42.234161>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.361115, 36.740028, 42.525089> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.703438, 36.580643, 42.657040>,  <34.908833, 36.485012, 42.736210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.703438, 36.580643, 42.657040>,  <34.361115, 36.740028, 42.525089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.703438, 36.580643, 42.657040> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511168, 0.749234, -0.421136,
		-0.079345, 0.529034, 0.844883,
		0.855810, -0.398463, 0.329873,
		34.960182, 36.461105, 42.756001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.744640, 37.252964, 42.872272>,  <34.361115, 36.740028, 42.525089>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.744640, 37.252964, 42.872272> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.030464, 36.984398, 42.793671>,  <35.201958, 36.823257, 42.746510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.030464, 36.984398, 42.793671>,  <34.744640, 37.252964, 42.872272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.030464, 36.984398, 42.793671> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621452, 0.738194, -0.262425,
		0.321254, 0.065399, 0.944732,
		0.714558, -0.671411, -0.196505,
		35.244831, 36.782974, 42.734718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.398968, 37.489857, 43.135429>,  <34.744640, 37.252964, 42.872272>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.398968, 37.489857, 43.135429> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.497963, 37.217064, 42.860142>,  <35.557362, 37.053387, 42.694969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.497963, 37.217064, 42.860142>,  <35.398968, 37.489857, 43.135429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.497963, 37.217064, 42.860142> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682419, 0.626932, -0.375846,
		0.687787, -0.376635, 0.620560,
		0.247492, -0.681984, -0.688219,
		35.572212, 37.012470, 42.653675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<26.492020, 41.950016, 29.686333> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.457430, 41.834591, 29.304913>,  <26.436676, 41.765335, 29.076061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.457430, 41.834591, 29.304913>,  <26.492020, 41.950016, 29.686333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.457430, 41.834591, 29.304913> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297694, -0.905920, 0.301143,
		-0.950737, 0.309907, -0.007563,
		-0.086475, -0.288559, -0.953549,
		26.431488, 41.748024, 29.018848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.834961, 41.720047, 29.657188>,  <26.492020, 41.950016, 29.686333>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.834961, 41.720047, 29.657188> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.049255, 41.553310, 29.363461>,  <26.177832, 41.453270, 29.187223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.049255, 41.553310, 29.363461>,  <25.834961, 41.720047, 29.657188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.049255, 41.553310, 29.363461> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261840, -0.908796, 0.324853,
		-0.802760, 0.018239, -0.596023,
		0.535739, -0.416842, -0.734321,
		26.209976, 41.428257, 29.143164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.428516, 41.242489, 29.312485>,  <25.834961, 41.720047, 29.657188>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.428516, 41.242489, 29.312485> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.814653, 41.141602, 29.285650>,  <26.046335, 41.081070, 29.269548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.814653, 41.141602, 29.285650>,  <25.428516, 41.242489, 29.312485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.814653, 41.141602, 29.285650> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211167, -0.905874, 0.367152,
		-0.153377, -0.340260, -0.927738,
		0.965341, -0.252221, -0.067088,
		26.104256, 41.065937, 29.265524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.366613, 40.482861, 29.441910>,  <25.428516, 41.242489, 29.312485>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.366613, 40.482861, 29.441910> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.757425, 40.563332, 29.413803>,  <25.991913, 40.611614, 29.396940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.757425, 40.563332, 29.413803>,  <25.366613, 40.482861, 29.441910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.757425, 40.563332, 29.413803> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203363, -0.781749, 0.589501,
		0.063664, -0.590250, -0.804706,
		0.977031, 0.201178, -0.070266,
		26.050535, 40.623684, 29.392723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.743786, 39.861774, 29.304440>,  <25.366613, 40.482861, 29.441910>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.743786, 39.861774, 29.304440> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.020494, 40.095322, 29.474401>,  <26.186520, 40.235451, 29.576380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.020494, 40.095322, 29.474401>,  <25.743786, 39.861774, 29.304440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.020494, 40.095322, 29.474401> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248351, -0.744893, 0.619238,
		0.678065, -0.322845, -0.660302,
		0.691772, 0.583870, 0.424907,
		26.228025, 40.270481, 29.601873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.349045, 39.491585, 29.363621>,  <25.743786, 39.861774, 29.304440>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.349045, 39.491585, 29.363621> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.443581, 39.778599, 29.625700>,  <26.500301, 39.950806, 29.782948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.443581, 39.778599, 29.625700>,  <26.349045, 39.491585, 29.363621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.443581, 39.778599, 29.625700> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301016, -0.695195, 0.652758,
		0.923869, 0.042953, -0.380291,
		0.236339, 0.717536, 0.655199,
		26.514482, 39.993858, 29.822260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.006462, 39.278522, 29.777056>,  <26.349045, 39.491585, 29.363621>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.006462, 39.278522, 29.777056> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.813492, 39.546501, 30.002775>,  <26.697710, 39.707291, 30.138206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.813492, 39.546501, 30.002775>,  <27.006462, 39.278522, 29.777056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.813492, 39.546501, 30.002775> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022597, -0.634489, 0.772601,
		0.875645, 0.385475, 0.290956,
		-0.482427, 0.669949, 0.564298,
		26.668764, 39.747486, 30.172064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.311205, 39.228447, 30.466196>,  <27.006462, 39.278522, 29.777056>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.311205, 39.228447, 30.466196> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.959297, 39.405891, 30.534565>,  <26.748152, 39.512360, 30.575586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.959297, 39.405891, 30.534565>,  <27.311205, 39.228447, 30.466196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.959297, 39.405891, 30.534565> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146928, -0.595653, 0.789690,
		0.452124, 0.669632, 0.589217,
		-0.879770, 0.443611, 0.170921,
		26.695366, 39.538975, 30.585842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.312210, 39.561039, 31.177263>,  <27.311205, 39.228447, 30.466196>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.312210, 39.561039, 31.177263> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.923998, 39.500614, 31.102163>,  <26.691071, 39.464359, 31.057104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.923998, 39.500614, 31.102163>,  <27.312210, 39.561039, 31.177263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.923998, 39.500614, 31.102163> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125633, -0.347673, 0.929161,
		-0.205635, 0.925367, 0.318449,
		-0.970531, -0.151060, -0.187750,
		26.632839, 39.455296, 31.045837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.973038, 39.567371, 31.748314>,  <27.312210, 39.561039, 31.177263>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.973038, 39.567371, 31.748314> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.667889, 39.410271, 31.542879>,  <26.484800, 39.316010, 31.419619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.667889, 39.410271, 31.542879>,  <26.973038, 39.567371, 31.748314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.667889, 39.410271, 31.542879> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293062, -0.498012, 0.816148,
		-0.576317, 0.773129, 0.264819,
		-0.762872, -0.392752, -0.513588,
		26.439028, 39.292446, 31.388803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.294886, 39.591698, 32.138508>,  <26.973038, 39.567371, 31.748314>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.294886, 39.591698, 32.138508> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.272488, 39.288082, 31.879055>,  <26.259048, 39.105911, 31.723385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.272488, 39.288082, 31.879055>,  <26.294886, 39.591698, 32.138508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.272488, 39.288082, 31.879055> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232696, -0.621837, 0.747777,
		-0.970936, 0.192806, -0.141806,
		-0.055996, -0.759042, -0.648629,
		26.255690, 39.060371, 31.684465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.769083, 39.239784, 32.396317>,  <26.294886, 39.591698, 32.138508>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.769083, 39.239784, 32.396317> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.941635, 38.965427, 32.161892>,  <26.045166, 38.800812, 32.021236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.941635, 38.965427, 32.161892>,  <25.769083, 39.239784, 32.396317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.941635, 38.965427, 32.161892> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095046, -0.680547, 0.726514,
		-0.897150, -0.257700, -0.358765,
		0.431379, -0.685891, -0.586060,
		26.071049, 38.759659, 31.986074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.368837, 38.667255, 32.524929>,  <25.769083, 39.239784, 32.396317>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.368837, 38.667255, 32.524929> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.703047, 38.517136, 32.364403>,  <25.903572, 38.427063, 32.268089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.703047, 38.517136, 32.364403>,  <25.368837, 38.667255, 32.524929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.703047, 38.517136, 32.364403> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143247, -0.853912, 0.500314,
		-0.530452, -0.360537, -0.767225,
		0.835525, -0.375295, -0.401313,
		25.953705, 38.404549, 32.244007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.169247, 38.072876, 32.255047>,  <25.368837, 38.667255, 32.524929>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.169247, 38.072876, 32.255047> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.563736, 38.037273, 32.310814>,  <25.800430, 38.015911, 32.344276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.563736, 38.037273, 32.310814>,  <25.169247, 38.072876, 32.255047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.563736, 38.037273, 32.310814> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145788, -0.865934, 0.478440,
		0.078144, -0.492176, -0.866981,
		0.986225, -0.089008, 0.139421,
		25.859604, 38.010571, 32.352638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.396181, 37.497570, 31.956890>,  <25.169247, 38.072876, 32.255047>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.396181, 37.497570, 31.956890> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.675180, 37.559254, 32.236809>,  <25.842581, 37.596264, 32.404758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.675180, 37.559254, 32.236809>,  <25.396181, 37.497570, 31.956890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.675180, 37.559254, 32.236809> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156315, -0.920311, 0.358599,
		0.699330, -0.359511, -0.617811,
		0.697498, 0.154206, 0.699798,
		25.884430, 37.605515, 32.446747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.594238, 36.842125, 32.212582>,  <25.396181, 37.497570, 31.956890>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.594238, 36.842125, 32.212582> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.743835, 37.079159, 32.497952>,  <25.833593, 37.221378, 32.669174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.743835, 37.079159, 32.497952>,  <25.594238, 36.842125, 32.212582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.743835, 37.079159, 32.497952> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086774, -0.743512, 0.663069,
		0.923364, -0.309888, -0.226646,
		0.373991, 0.592587, 0.713423,
		25.856033, 37.256935, 32.711979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.092144, 36.447678, 32.535545>,  <25.594238, 36.842125, 32.212582>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.092144, 36.447678, 32.535545> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.031540, 36.729679, 32.812679>,  <25.995178, 36.898880, 32.978958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.031540, 36.729679, 32.812679>,  <26.092144, 36.447678, 32.535545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.031540, 36.729679, 32.812679> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158895, -0.709180, 0.686889,
		0.975601, -0.006018, 0.219468,
		-0.151508, 0.705002, 0.692833,
		25.986088, 36.941181, 33.020531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.606663, 36.399315, 33.083374>,  <26.092144, 36.447678, 32.535545>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.606663, 36.399315, 33.083374> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.305166, 36.600372, 33.252712>,  <26.124268, 36.721008, 33.354313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.305166, 36.600372, 33.252712>,  <26.606663, 36.399315, 33.083374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.305166, 36.600372, 33.252712> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074630, -0.705493, 0.704776,
		0.652920, 0.499625, 0.569272,
		-0.753741, 0.502647, 0.423344,
		26.079044, 36.751167, 33.379715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.682938, 36.175610, 33.751144>,  <26.606663, 36.399315, 33.083374>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.682938, 36.175610, 33.751144> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.320808, 36.342068, 33.717175>,  <26.103531, 36.441940, 33.696793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.320808, 36.342068, 33.717175>,  <26.682938, 36.175610, 33.751144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.320808, 36.342068, 33.717175> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341181, -0.593475, 0.728960,
		0.252949, 0.688921, 0.679267,
		-0.905324, 0.416143, -0.084928,
		26.049212, 36.466911, 33.691696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.338203, 36.348217, 34.466919>,  <26.682938, 36.175610, 33.751144>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.338203, 36.348217, 34.466919> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.029789, 36.309872, 34.215107>,  <25.844740, 36.286865, 34.064018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.029789, 36.309872, 34.215107>,  <26.338203, 36.348217, 34.466919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.029789, 36.309872, 34.215107> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461640, -0.596806, 0.656286,
		-0.438626, 0.796638, 0.415903,
		-0.771036, -0.095867, -0.629534,
		25.798479, 36.281113, 34.026245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.550518, 36.632587, 35.127201>,  <26.338203, 36.348217, 34.466919>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.550518, 36.632587, 35.127201> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.924891, 36.656822, 35.265976>,  <27.149513, 36.671364, 35.349239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.924891, 36.656822, 35.265976>,  <26.550518, 36.632587, 35.127201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.924891, 36.656822, 35.265976> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083536, 0.995170, 0.051564,
		-0.342136, -0.077242, 0.936471,
		0.935930, 0.060588, 0.346935,
		27.205669, 36.674999, 35.370056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.517521, 37.206722, 35.585487>,  <26.550518, 36.632587, 35.127201>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.517521, 37.206722, 35.585487> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.907866, 37.151134, 35.518101>,  <27.142073, 37.117783, 35.477669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.907866, 37.151134, 35.518101>,  <26.517521, 37.206722, 35.585487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.907866, 37.151134, 35.518101> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146079, 0.988802, 0.030518,
		0.162342, -0.054391, 0.985234,
		0.975862, -0.138968, -0.168469,
		27.200624, 37.109444, 35.467560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.835403, 37.589554, 36.075062>,  <26.517521, 37.206722, 35.585487>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.835403, 37.589554, 36.075062> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.128756, 37.545979, 35.806648>,  <27.304768, 37.519833, 35.645599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.128756, 37.545979, 35.806648>,  <26.835403, 37.589554, 36.075062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.128756, 37.545979, 35.806648> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096195, 0.993774, -0.056204,
		0.672977, -0.023331, 0.739295,
		0.733381, -0.108940, -0.671032,
		27.348770, 37.513298, 35.605339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.362373, 38.053513, 36.375019>,  <26.835403, 37.589554, 36.075062>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.362373, 38.053513, 36.375019> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.406807, 38.004921, 35.980476>,  <27.433468, 37.975765, 35.743752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.406807, 38.004921, 35.980476>,  <27.362373, 38.053513, 36.375019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.406807, 38.004921, 35.980476> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065231, 0.991252, -0.114738,
		0.991668, -0.051596, 0.118038,
		0.111085, -0.121482, -0.986358,
		27.440132, 37.968475, 35.684570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.814442, 38.639042, 36.225689>,  <27.362373, 38.053513, 36.375019>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.814442, 38.639042, 36.225689> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.702087, 38.537758, 35.855396>,  <27.634674, 38.476986, 35.633221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.702087, 38.537758, 35.855396>,  <27.814442, 38.639042, 36.225689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.702087, 38.537758, 35.855396> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029309, 0.961854, -0.271987,
		0.959291, -0.103532, -0.262758,
		-0.280894, -0.253213, -0.925733,
		27.617823, 38.461792, 35.577675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.297321, 38.954868, 35.766323>,  <27.814442, 38.639042, 36.225689>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.297321, 38.954868, 35.766323> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.955616, 38.885639, 35.570251>,  <27.750593, 38.844101, 35.452606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.955616, 38.885639, 35.570251>,  <28.297321, 38.954868, 35.766323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.955616, 38.885639, 35.570251> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090779, 0.878792, -0.468491,
		0.511853, -0.444713, -0.735008,
		-0.854263, -0.173076, -0.490183,
		27.699337, 38.833717, 35.423195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.384638, 39.166111, 35.055519>,  <28.297321, 38.954868, 35.766323>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.384638, 39.166111, 35.055519> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.988512, 39.167320, 35.111042>,  <27.750837, 39.168045, 35.144356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.988512, 39.167320, 35.111042>,  <28.384638, 39.166111, 35.055519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.988512, 39.167320, 35.111042> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052413, 0.917646, -0.393928,
		-0.128567, -0.397389, -0.908599,
		-0.990315, 0.003023, 0.138807,
		27.691418, 39.168228, 35.152683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.134804, 39.329563, 34.448872>,  <28.384638, 39.166111, 35.055519>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.134804, 39.329563, 34.448872> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.827066, 39.412781, 34.690475>,  <27.642424, 39.462711, 34.835438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.827066, 39.412781, 34.690475>,  <28.134804, 39.329563, 34.448872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.827066, 39.412781, 34.690475> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140115, 0.867517, -0.477265,
		-0.623282, -0.451811, -0.638268,
		-0.769342, 0.208040, 0.604014,
		27.596264, 39.475193, 34.871681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.660275, 39.452950, 34.013889>,  <28.134804, 39.329563, 34.448872>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.660275, 39.452950, 34.013889> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.585302, 39.623093, 34.368050>,  <27.540319, 39.725178, 34.580547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.585302, 39.623093, 34.368050>,  <27.660275, 39.452950, 34.013889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.585302, 39.623093, 34.368050> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222499, 0.859566, -0.460044,
		-0.956747, -0.283227, -0.066465,
		-0.187428, 0.425358, 0.885405,
		27.529074, 39.750698, 34.633671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.041904, 39.777149, 33.939018>,  <27.660275, 39.452950, 34.013889>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.041904, 39.777149, 33.939018> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.192669, 39.963787, 34.259075>,  <27.283127, 40.075771, 34.451107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.192669, 39.963787, 34.259075>,  <27.041904, 39.777149, 33.939018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.192669, 39.963787, 34.259075> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140483, 0.882653, -0.448541,
		-0.915534, 0.056654, 0.398231,
		0.376911, 0.466599, 0.800140,
		27.305742, 40.103767, 34.499119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.537922, 40.405556, 34.073952>,  <27.041904, 39.777149, 33.939018>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.537922, 40.405556, 34.073952> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.897764, 40.464352, 34.238438>,  <27.113670, 40.499630, 34.337128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.897764, 40.464352, 34.238438>,  <26.537922, 40.405556, 34.073952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.897764, 40.464352, 34.238438> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077654, 0.872796, -0.481869,
		-0.429739, 0.465426, 0.773759,
		0.899608, 0.146992, 0.411216,
		27.167646, 40.508450, 34.361801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.503540, 41.045506, 34.237595>,  <26.537922, 40.405556, 34.073952>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.503540, 41.045506, 34.237595> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.898262, 40.984032, 34.217213>,  <27.135096, 40.947147, 34.204983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.898262, 40.984032, 34.217213>,  <26.503540, 41.045506, 34.237595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.898262, 40.984032, 34.217213> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109678, 0.866008, -0.487853,
		0.119100, 0.475827, 0.871437,
		0.986806, -0.153681, -0.050954,
		27.194304, 40.937927, 34.201927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.819094, 41.678047, 34.382648>,  <26.503540, 41.045506, 34.237595>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.819094, 41.678047, 34.382648> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.134670, 41.497658, 34.215706>,  <27.324017, 41.389423, 34.115540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.134670, 41.497658, 34.215706>,  <26.819094, 41.678047, 34.382648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.134670, 41.497658, 34.215706> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148704, 0.799164, -0.582430,
		0.596201, 0.397441, 0.697557,
		0.788944, -0.450974, -0.417361,
		27.371353, 41.362366, 34.090496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.292727, 42.167282, 34.288261>,  <26.819094, 41.678047, 34.382648>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.292727, 42.167282, 34.288261> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.363979, 41.882664, 34.016388>,  <27.406731, 41.711895, 33.853264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.363979, 41.882664, 34.016388>,  <27.292727, 42.167282, 34.288261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.363979, 41.882664, 34.016388> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154949, 0.702400, -0.694712,
		0.971730, 0.018435, 0.235374,
		0.178134, -0.711543, -0.679687,
		27.417419, 41.669201, 33.812481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.796801, 42.464466, 33.894257>,  <27.292727, 42.167282, 34.288261>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.796801, 42.464466, 33.894257> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.718309, 42.148617, 33.661713>,  <27.671215, 41.959106, 33.522186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.718309, 42.148617, 33.661713>,  <27.796801, 42.464466, 33.894257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.718309, 42.148617, 33.661713> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140554, 0.564117, -0.813644,
		0.970432, -0.241374, 0.000289,
		-0.196230, -0.789627, -0.581363,
		27.659441, 41.911728, 33.487305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.309069, 42.444553, 33.442097>,  <27.796801, 42.464466, 33.894257>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.309069, 42.444553, 33.442097> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.020821, 42.225243, 33.272346>,  <27.847872, 42.093655, 33.170498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.020821, 42.225243, 33.272346>,  <28.309069, 42.444553, 33.442097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.020821, 42.225243, 33.272346> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279845, 0.330001, -0.901547,
		0.634343, -0.768434, -0.084374,
		-0.720622, -0.548278, -0.424376,
		27.804634, 42.060760, 33.145035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.578281, 41.898052, 32.899273>,  <28.309069, 42.444553, 33.442097>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.578281, 41.898052, 32.899273> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.193182, 41.960049, 32.810646>,  <27.962122, 41.997246, 32.757469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.193182, 41.960049, 32.810646>,  <28.578281, 41.898052, 32.899273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.193182, 41.960049, 32.810646> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257453, 0.274973, -0.926341,
		-0.082651, -0.948877, -0.304633,
		-0.962750, 0.154992, -0.221565,
		27.904358, 42.006546, 32.744175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.382471, 41.609653, 32.251976>,  <28.578281, 41.898052, 32.899273>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.382471, 41.609653, 32.251976> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.096951, 41.887348, 32.288898>,  <27.925638, 42.053967, 32.311050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.096951, 41.887348, 32.288898>,  <28.382471, 41.609653, 32.251976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.096951, 41.887348, 32.288898> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001683, 0.133494, -0.991048,
		-0.700347, -0.707256, -0.096456,
		-0.713801, 0.694240, 0.092302,
		27.882811, 42.095619, 32.316589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.008732, 41.602715, 31.664789>,  <28.382471, 41.609653, 32.251976>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.008732, 41.602715, 31.664789> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.872881, 41.946129, 31.818447>,  <27.791370, 42.152180, 31.910643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.872881, 41.946129, 31.818447>,  <28.008732, 41.602715, 31.664789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.872881, 41.946129, 31.818447> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030575, 0.398129, -0.916820,
		-0.940064, -0.323120, -0.108965,
		-0.339625, 0.858537, 0.384146,
		27.770994, 42.203690, 31.933691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.408659, 41.870705, 31.218485>,  <28.008732, 41.602715, 31.664789>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.408659, 41.870705, 31.218485> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.554296, 42.204880, 31.383156>,  <27.641678, 42.405384, 31.481958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.554296, 42.204880, 31.383156>,  <27.408659, 41.870705, 31.218485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.554296, 42.204880, 31.383156> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072517, 0.466105, -0.881753,
		-0.928536, 0.291186, 0.230288,
		0.364092, 0.835439, 0.411679,
		27.663525, 42.455513, 31.506659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.019079, 42.508133, 30.992502>,  <27.408659, 41.870705, 31.218485>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.019079, 42.508133, 30.992502> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.366667, 42.663788, 31.114790>,  <27.575220, 42.757179, 31.188164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.366667, 42.663788, 31.114790>,  <27.019079, 42.508133, 30.992502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.366667, 42.663788, 31.114790> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036813, 0.565242, -0.824103,
		-0.493496, 0.727375, 0.476852,
		0.868969, 0.389137, 0.305721,
		27.627357, 42.780529, 31.206507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.037714, 43.206184, 30.974522>,  <27.019079, 42.508133, 30.992502>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.037714, 43.206184, 30.974522> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.426903, 43.115177, 30.958710>,  <27.660416, 43.060574, 30.949223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.426903, 43.115177, 30.958710>,  <27.037714, 43.206184, 30.974522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.426903, 43.115177, 30.958710> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061102, 0.418728, -0.906054,
		0.222696, 0.879149, 0.421312,
		0.972971, -0.227518, -0.039532,
		27.718794, 43.046921, 30.946850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.713646, 31.308081, 44.851929> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.475052, 31.055443, 44.653824>,  <34.331894, 30.903860, 44.534962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.475052, 31.055443, 44.653824>,  <34.713646, 31.308081, 44.851929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.475052, 31.055443, 44.653824> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357097, -0.343787, 0.868500,
		-0.718808, 0.694907, -0.020477,
		-0.596487, -0.631596, -0.495267,
		34.296104, 30.865963, 44.505245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.107922, 31.326923, 45.224224>,  <34.713646, 31.308081, 44.851929>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.107922, 31.326923, 45.224224> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.097488, 30.990671, 45.007832>,  <34.091228, 30.788919, 44.877998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.097488, 30.990671, 45.007832>,  <34.107922, 31.326923, 45.224224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.097488, 30.990671, 45.007832> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299015, -0.509825, 0.806641,
		-0.953892, 0.182803, -0.238061,
		-0.026087, -0.840632, -0.540978,
		34.089661, 30.738482, 44.845539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.489342, 31.013643, 45.324261>,  <34.107922, 31.326923, 45.224224>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.489342, 31.013643, 45.324261> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.711639, 30.707764, 45.193794>,  <33.845020, 30.524237, 45.115513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.711639, 30.707764, 45.193794>,  <33.489342, 31.013643, 45.324261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.711639, 30.707764, 45.193794> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175947, -0.491634, 0.852841,
		-0.812521, -0.416574, -0.407770,
		0.555745, -0.764697, -0.326168,
		33.878365, 30.478355, 45.095943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.103447, 30.427835, 45.544350>,  <33.489342, 31.013643, 45.324261>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.103447, 30.427835, 45.544350> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.464046, 30.272642, 45.467655>,  <33.680408, 30.179525, 45.421638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.464046, 30.272642, 45.467655>,  <33.103447, 30.427835, 45.544350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.464046, 30.272642, 45.467655> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000713, -0.444375, 0.895841,
		-0.432758, -0.807472, -0.400885,
		0.901510, -0.387968, -0.191732,
		33.734497, 30.156248, 45.410133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.079926, 29.772470, 45.846821>,  <33.103447, 30.427835, 45.544350>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.079926, 29.772470, 45.846821> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.470123, 29.848312, 45.802158>,  <33.704243, 29.893818, 45.775360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.470123, 29.848312, 45.802158>,  <33.079926, 29.772470, 45.846821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.470123, 29.848312, 45.802158> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182434, -0.413235, 0.892163,
		0.123019, -0.890667, -0.437698,
		0.975492, 0.189604, -0.111652,
		33.762772, 29.905193, 45.768661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.424271, 29.059361, 45.994011>,  <33.079926, 29.772470, 45.846821>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.424271, 29.059361, 45.994011> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.672173, 29.370312, 46.037052>,  <33.820915, 29.556883, 46.062878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.672173, 29.370312, 46.037052>,  <33.424271, 29.059361, 45.994011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.672173, 29.370312, 46.037052> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310289, -0.368668, 0.876245,
		0.720847, -0.509671, -0.469697,
		0.619759, 0.777380, 0.107607,
		33.858101, 29.603525, 46.069336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.025978, 28.683846, 46.272259>,  <33.424271, 29.059361, 45.994011>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.025978, 28.683846, 46.272259> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.076923, 29.074522, 46.341370>,  <34.107491, 29.308928, 46.382835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.076923, 29.074522, 46.341370>,  <34.025978, 28.683846, 46.272259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.076923, 29.074522, 46.341370> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231865, -0.198688, 0.952240,
		0.964374, -0.081222, -0.251767,
		0.127366, 0.976691, 0.172777,
		34.115131, 29.367529, 46.393204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.674438, 28.725063, 46.590107>,  <34.025978, 28.683846, 46.272259>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.674438, 28.725063, 46.590107> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.446438, 29.037769, 46.691250>,  <34.309635, 29.225393, 46.751934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.446438, 29.037769, 46.691250>,  <34.674438, 28.725063, 46.590107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.446438, 29.037769, 46.691250> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254761, -0.124414, 0.958967,
		0.781147, 0.611033, -0.128247,
		-0.570005, 0.781767, 0.252853,
		34.275436, 29.272299, 46.767105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.086559, 29.033524, 47.132145>,  <34.674438, 28.725063, 46.590107>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.086559, 29.033524, 47.132145> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.718998, 29.188986, 47.159184>,  <34.498463, 29.282263, 47.175407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.718998, 29.188986, 47.159184>,  <35.086559, 29.033524, 47.132145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.718998, 29.188986, 47.159184> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056390, -0.040190, 0.997600,
		0.390441, 0.920506, 0.015014,
		-0.918899, 0.388657, 0.067599,
		34.443329, 29.305582, 47.179462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.106407, 29.364819, 47.788696>,  <35.086559, 29.033524, 47.132145>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.106407, 29.364819, 47.788696> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.716412, 29.329746, 47.707008>,  <34.482414, 29.308702, 47.657997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.716412, 29.329746, 47.707008>,  <35.106407, 29.364819, 47.788696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.716412, 29.329746, 47.707008> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185355, -0.186189, 0.964872,
		-0.122626, 0.978594, 0.165280,
		-0.974990, -0.087683, -0.204219,
		34.423916, 29.303442, 47.645744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.706348, 29.715277, 48.377487>,  <35.106407, 29.364819, 47.788696>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.706348, 29.715277, 48.377487> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.436253, 29.479071, 48.200695>,  <34.274193, 29.337347, 48.094620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.436253, 29.479071, 48.200695>,  <34.706348, 29.715277, 48.377487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.436253, 29.479071, 48.200695> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336978, -0.286047, 0.897008,
		-0.656121, 0.754633, -0.005839,
		-0.675242, -0.590513, -0.441977,
		34.233681, 29.301916, 48.068104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.959026, 29.865286, 48.664093>,  <34.706348, 29.715277, 48.377487>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.959026, 29.865286, 48.664093> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.996468, 29.487858, 48.537022>,  <34.018932, 29.261402, 48.460781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.996468, 29.487858, 48.537022>,  <33.959026, 29.865286, 48.664093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.996468, 29.487858, 48.537022> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251452, -0.331138, 0.909461,
		-0.963332, -0.005252, -0.268259,
		0.093607, -0.943568, -0.317675,
		34.024551, 29.204788, 48.441719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.302574, 29.478691, 48.765099>,  <33.959026, 29.865286, 48.664093>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.302574, 29.478691, 48.765099> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.639427, 29.263359, 48.777771>,  <33.841541, 29.134159, 48.785374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.639427, 29.263359, 48.777771>,  <33.302574, 29.478691, 48.765099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.639427, 29.263359, 48.777771> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192654, -0.245464, 0.950069,
		-0.503677, -0.806192, -0.310427,
		0.842136, -0.538333, 0.031681,
		33.892067, 29.101860, 48.787277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.997322, 28.942078, 49.258389>,  <33.302574, 29.478691, 48.765099>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.997322, 28.942078, 49.258389> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.610451, 28.952883, 49.157322>,  <32.378326, 28.959366, 49.096684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.610451, 28.952883, 49.157322>,  <32.997322, 28.942078, 49.258389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.610451, 28.952883, 49.157322> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194541, 0.718394, -0.667881,
		0.163470, -0.695112, -0.700069,
		-0.967177, 0.027014, -0.252664,
		32.320297, 28.960987, 49.081524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.902393, 28.946411, 48.428291>,  <32.997322, 28.942078, 49.258389>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.902393, 28.946411, 48.428291> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.574314, 29.100224, 48.597721>,  <32.377468, 29.192511, 48.699379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.574314, 29.100224, 48.597721>,  <32.902393, 28.946411, 48.428291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.574314, 29.100224, 48.597721> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127336, 0.844542, -0.520129,
		-0.557732, -0.372671, -0.741654,
		-0.820196, 0.384531, 0.423574,
		32.328255, 29.215584, 48.724792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.604691, 29.186733, 47.889156>,  <32.902393, 28.946411, 48.428291>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.604691, 29.186733, 47.889156> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.471272, 29.394526, 48.203835>,  <32.391220, 29.519201, 48.392643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.471272, 29.394526, 48.203835>,  <32.604691, 29.186733, 47.889156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.471272, 29.394526, 48.203835> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010003, 0.832486, -0.553956,
		-0.942682, -0.192637, -0.272473,
		-0.333543, 0.519478, 0.786696,
		32.371208, 29.550369, 48.439842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.118450, 29.569239, 47.631439>,  <32.604691, 29.186733, 47.889156>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.118450, 29.569239, 47.631439> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.176800, 29.785822, 47.962631>,  <32.211811, 29.915771, 48.161346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.176800, 29.785822, 47.962631>,  <32.118450, 29.569239, 47.631439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.176800, 29.785822, 47.962631> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033953, 0.833696, -0.551178,
		-0.988720, 0.108516, 0.103233,
		0.145876, 0.541456, 0.827977,
		32.220562, 29.948259, 48.211025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.743687, 30.245674, 47.494881>,  <32.118450, 29.569239, 47.631439>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.743687, 30.245674, 47.494881> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.989849, 30.330963, 47.798409>,  <32.137547, 30.382137, 47.980526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.989849, 30.330963, 47.798409>,  <31.743687, 30.245674, 47.494881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.989849, 30.330963, 47.798409> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020539, 0.958051, -0.285862,
		-0.787941, 0.191507, 0.585212,
		0.615408, 0.213222, 0.758821,
		32.174473, 30.394930, 48.026054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.513422, 30.826036, 47.825188>,  <31.743687, 30.245674, 47.494881>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.513422, 30.826036, 47.825188> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.905657, 30.808573, 47.901657>,  <32.140999, 30.798096, 47.947540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.905657, 30.808573, 47.901657>,  <31.513422, 30.826036, 47.825188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.905657, 30.808573, 47.901657> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098879, 0.951973, -0.289778,
		-0.169340, 0.303055, 0.937807,
		0.980585, -0.043658, 0.191173,
		32.199833, 30.795475, 47.959007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.629620, 31.416945, 48.149429>,  <31.513422, 30.826036, 47.825188>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.629620, 31.416945, 48.149429> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.970884, 31.280605, 47.991470>,  <32.175644, 31.198803, 47.896694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.970884, 31.280605, 47.991470>,  <31.629620, 31.416945, 48.149429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.970884, 31.280605, 47.991470> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075627, 0.829831, -0.552867,
		0.516137, 0.441819, 0.733756,
		0.853161, -0.340847, -0.394893,
		32.226833, 31.178350, 47.873001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.027428, 31.944490, 48.230206>,  <31.629620, 31.416945, 48.149429>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.027428, 31.944490, 48.230206> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.216839, 31.719732, 47.958900>,  <32.330486, 31.584877, 47.796116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.216839, 31.719732, 47.958900>,  <32.027428, 31.944490, 48.230206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.216839, 31.719732, 47.958900> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082353, 0.794945, -0.601066,
		0.876918, 0.228766, 0.422706,
		0.473531, -0.561897, -0.678263,
		32.358898, 31.551163, 47.755421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.665562, 32.265156, 48.126568>,  <32.027428, 31.944490, 48.230206>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.665562, 32.265156, 48.126568> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.600525, 32.032558, 47.807713>,  <32.561501, 31.893000, 47.616398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.600525, 32.032558, 47.807713>,  <32.665562, 32.265156, 48.126568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.600525, 32.032558, 47.807713> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232727, 0.762494, -0.603689,
		0.958854, -0.283673, 0.011352,
		-0.162594, -0.581491, -0.797139,
		32.551746, 31.858110, 47.568569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.251804, 32.555389, 47.636627>,  <32.665562, 32.265156, 48.126568>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.251804, 32.555389, 47.636627> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.967503, 32.372162, 47.423084>,  <32.796921, 32.262226, 47.294960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.967503, 32.372162, 47.423084>,  <33.251804, 32.555389, 47.636627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.967503, 32.372162, 47.423084> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218605, 0.577511, -0.786570,
		0.668610, -0.675762, -0.310333,
		-0.710755, -0.458068, -0.533854,
		32.754276, 32.234741, 47.262928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.498756, 32.602829, 46.975849>,  <33.251804, 32.555389, 47.636627>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.498756, 32.602829, 46.975849> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.118835, 32.489429, 46.922924>,  <32.890884, 32.421391, 46.891171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.118835, 32.489429, 46.922924>,  <33.498756, 32.602829, 46.975849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.118835, 32.489429, 46.922924> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048334, 0.550803, -0.833235,
		0.309099, -0.785012, -0.536856,
		-0.949801, -0.283500, -0.132310,
		32.833897, 32.404381, 46.883232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.457790, 32.188007, 46.362244>,  <33.498756, 32.602829, 46.975849>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.457790, 32.188007, 46.362244> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.097412, 32.352985, 46.416191>,  <32.881187, 32.451973, 46.448559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.097412, 32.352985, 46.416191>,  <33.457790, 32.188007, 46.362244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.097412, 32.352985, 46.416191> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141140, 0.572424, -0.807719,
		-0.410343, -0.708674, -0.573934,
		-0.900943, 0.412447, 0.134868,
		32.827129, 32.476719, 46.456650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.155037, 32.340782, 45.708359>,  <33.457790, 32.188007, 46.362244>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.155037, 32.340782, 45.708359> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.953587, 32.566132, 45.970341>,  <32.832718, 32.701340, 46.127529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.953587, 32.566132, 45.970341>,  <33.155037, 32.340782, 45.708359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.953587, 32.566132, 45.970341> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079571, 0.785149, -0.614174,
		-0.860250, -0.257198, -0.440249,
		-0.503625, 0.563374, 0.654959,
		32.802498, 32.735146, 46.166828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.677910, 32.612045, 45.273716>,  <33.155037, 32.340782, 45.708359>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.677910, 32.612045, 45.273716> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.700855, 32.831383, 45.607430>,  <32.714622, 32.962986, 45.807659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.700855, 32.831383, 45.607430>,  <32.677910, 32.612045, 45.273716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.700855, 32.831383, 45.607430> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004274, 0.835517, -0.549448,
		-0.998344, 0.035084, 0.045585,
		0.057364, 0.548343, 0.834283,
		32.718063, 32.995884, 45.857716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.975348, 32.994564, 45.313393>,  <32.677910, 32.612045, 45.273716>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.975348, 32.994564, 45.313393> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.295403, 33.166058, 45.481186>,  <32.487434, 33.268955, 45.581860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.295403, 33.166058, 45.481186>,  <31.975348, 32.994564, 45.313393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.295403, 33.166058, 45.481186> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026484, 0.723919, -0.689376,
		-0.599231, 0.540486, 0.590590,
		0.800138, 0.428737, 0.419481,
		32.535442, 33.294678, 45.607029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.268446, 32.875095, 45.373158>,  <31.975348, 32.994564, 45.313393>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.268446, 32.875095, 45.373158> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.984467, 32.748245, 45.121632>,  <30.814079, 32.672134, 44.970715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.984467, 32.748245, 45.121632>,  <31.268446, 32.875095, 45.373158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.984467, 32.748245, 45.121632> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313157, -0.657594, 0.685203,
		-0.630800, 0.683375, 0.367546,
		-0.709947, -0.317126, -0.628814,
		30.771482, 32.653107, 44.932987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.683737, 32.729324, 45.806248>,  <31.268446, 32.875095, 45.373158>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.683737, 32.729324, 45.806248> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.615870, 32.541759, 45.459530>,  <30.575150, 32.429222, 45.251499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.615870, 32.541759, 45.459530>,  <30.683737, 32.729324, 45.806248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.615870, 32.541759, 45.459530> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320584, -0.805451, 0.498473,
		-0.931900, 0.362457, -0.013666,
		-0.169668, -0.468908, -0.866798,
		30.564970, 32.401089, 45.199490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.978809, 32.378044, 45.890076>,  <30.683737, 32.729324, 45.806248>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.978809, 32.378044, 45.890076> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.182178, 32.189182, 45.602028>,  <30.304199, 32.075867, 45.429199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.182178, 32.189182, 45.602028>,  <29.978809, 32.378044, 45.890076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.182178, 32.189182, 45.602028> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271740, -0.881515, 0.386119,
		-0.817107, -0.000625, -0.576486,
		0.508423, -0.472155, -0.720122,
		30.334705, 32.047535, 45.385990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.493076, 31.939301, 45.586651>,  <29.978809, 32.378044, 45.890076>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.493076, 31.939301, 45.586651> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.859262, 31.794149, 45.517086>,  <30.078974, 31.707060, 45.475349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.859262, 31.794149, 45.517086>,  <29.493076, 31.939301, 45.586651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.859262, 31.794149, 45.517086> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244963, -0.845438, 0.474582,
		-0.319244, -0.391862, -0.862860,
		0.915465, -0.362876, -0.173909,
		30.133902, 31.685287, 45.464912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.369802, 31.241003, 45.366928>,  <29.493076, 31.939301, 45.586651>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.369802, 31.241003, 45.366928> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.759384, 31.226934, 45.456528>,  <29.993134, 31.218493, 45.510288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.759384, 31.226934, 45.456528>,  <29.369802, 31.241003, 45.366928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.759384, 31.226934, 45.456528> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107076, -0.942150, 0.317628,
		0.199871, -0.333340, -0.921377,
		0.973954, -0.035173, 0.224002,
		30.051571, 31.216383, 45.523727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.740183, 30.583714, 45.051628>,  <29.369802, 31.241003, 45.366928>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.740183, 30.583714, 45.051628> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.974062, 30.690645, 45.358002>,  <30.114389, 30.754805, 45.541828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.974062, 30.690645, 45.358002>,  <29.740183, 30.583714, 45.051628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.974062, 30.690645, 45.358002> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099370, -0.913435, 0.394668,
		0.805141, -0.306873, -0.507520,
		0.584699, 0.267331, 0.765938,
		30.149471, 30.770845, 45.587784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.279816, 30.024363, 45.181179>,  <29.740183, 30.583714, 45.051628>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.279816, 30.024363, 45.181179> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.264425, 30.220312, 45.529556>,  <30.255192, 30.337881, 45.738583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.264425, 30.220312, 45.529556>,  <30.279816, 30.024363, 45.181179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.264425, 30.220312, 45.529556> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054115, -0.869290, 0.491332,
		0.997793, 0.066035, 0.006937,
		-0.038475, 0.489872, 0.870945,
		30.252882, 30.367273, 45.790840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.416548, 29.369665, 44.744640>,  <30.279816, 30.024363, 45.181179>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.416548, 29.369665, 44.744640> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.123003, 29.175575, 44.554482>,  <29.946877, 29.059122, 44.440384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.123003, 29.175575, 44.554482>,  <30.416548, 29.369665, 44.744640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.123003, 29.175575, 44.554482> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172004, 0.544302, -0.821066,
		0.657165, -0.684317, -0.315980,
		-0.733858, -0.485226, -0.475402,
		29.902845, 29.030008, 44.411861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.738726, 29.261189, 44.142124>,  <30.416548, 29.369665, 44.744640>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.738726, 29.261189, 44.142124> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.339069, 29.257719, 44.125923>,  <30.099276, 29.255636, 44.116203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.339069, 29.257719, 44.125923>,  <30.738726, 29.261189, 44.142124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.339069, 29.257719, 44.125923> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029729, 0.530604, -0.847098,
		0.028837, -0.847575, -0.529891,
		-0.999142, -0.008675, -0.040499,
		30.039328, 29.255116, 44.113773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.676220, 29.151901, 43.465195>,  <30.738726, 29.261189, 44.142124>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.676220, 29.151901, 43.465195> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.343267, 29.324945, 43.603752>,  <30.143496, 29.428772, 43.686886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.343267, 29.324945, 43.603752>,  <30.676220, 29.151901, 43.465195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.343267, 29.324945, 43.603752> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006356, 0.617536, -0.786517,
		-0.554165, -0.656885, -0.511276,
		-0.832382, 0.432611, 0.346392,
		30.093554, 29.454729, 43.707668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.208948, 29.198748, 42.862453>,  <30.676220, 29.151901, 43.465195>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.208948, 29.198748, 42.862453> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.102131, 29.475800, 43.130470>,  <30.038040, 29.642031, 43.291279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.102131, 29.475800, 43.130470>,  <30.208948, 29.198748, 42.862453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.102131, 29.475800, 43.130470> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011467, 0.697523, -0.716470,
		-0.963616, -0.183646, -0.194212,
		-0.267044, 0.692629, 0.670039,
		30.022018, 29.683588, 43.331482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.742327, 29.583830, 42.510082>,  <30.208948, 29.198748, 42.862453>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.742327, 29.583830, 42.510082> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.855389, 29.807236, 42.822021>,  <29.923225, 29.941280, 43.009186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.855389, 29.807236, 42.822021>,  <29.742327, 29.583830, 42.510082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.855389, 29.807236, 42.822021> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039703, 0.819118, -0.572249,
		-0.958400, 0.130785, 0.253701,
		0.282653, 0.558516, 0.779850,
		29.940184, 29.974791, 43.055977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.275229, 30.130793, 42.590088>,  <29.742327, 29.583830, 42.510082>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.275229, 30.130793, 42.590088> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.604719, 30.253071, 42.781094>,  <29.802414, 30.326437, 42.895699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.604719, 30.253071, 42.781094>,  <29.275229, 30.130793, 42.590088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.604719, 30.253071, 42.781094> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072449, 0.892050, -0.446092,
		-0.562336, 0.332863, 0.756954,
		0.823729, 0.305694, 0.477517,
		29.851837, 30.344778, 42.924347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.999012, 30.810564, 42.748974>,  <29.275229, 30.130793, 42.590088>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.999012, 30.810564, 42.748974> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.397001, 30.793320, 42.785122>,  <29.635796, 30.782972, 42.806812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.397001, 30.793320, 42.785122>,  <28.999012, 30.810564, 42.748974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.397001, 30.793320, 42.785122> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094041, 0.712196, -0.695653,
		-0.034370, 0.700656, 0.712671,
		0.994975, -0.043110, 0.090369,
		29.695494, 30.780386, 42.812233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<32.837784, 26.187334, 46.684185> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.002407, 26.548769, 46.731766>,  <33.101181, 26.765631, 46.760315>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.002407, 26.548769, 46.731766>,  <32.837784, 26.187334, 46.684185>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.002407, 26.548769, 46.731766> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380536, -0.051772, -0.923316,
		-0.828138, 0.425264, -0.365155,
		0.411557, 0.903588, 0.118954,
		33.125874, 26.819845, 46.767452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.652054, 26.652014, 46.068306>,  <32.837784, 26.187334, 46.684185>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.652054, 26.652014, 46.068306> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.967533, 26.842274, 46.224110>,  <33.156818, 26.956430, 46.317593>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.967533, 26.842274, 46.224110>,  <32.652054, 26.652014, 46.068306>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.967533, 26.842274, 46.224110> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330569, 0.206084, -0.921007,
		-0.518349, 0.855153, 0.005302,
		0.788694, 0.475650, 0.389511,
		33.204140, 26.984968, 46.340961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.541119, 27.388414, 45.993526>,  <32.652054, 26.652014, 46.068306>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.541119, 27.388414, 45.993526> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.935150, 27.320951, 46.007286>,  <33.171570, 27.280474, 46.015541>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.935150, 27.320951, 46.007286>,  <32.541119, 27.388414, 45.993526>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.935150, 27.320951, 46.007286> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090019, 0.334462, -0.938100,
		0.146714, 0.927195, 0.344652,
		0.985074, -0.168658, 0.034395,
		33.230671, 27.270353, 46.017605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.885075, 27.942581, 45.574181>,  <32.541119, 27.388414, 45.993526>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.885075, 27.942581, 45.574181> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.186775, 27.686613, 45.632984>,  <33.367794, 27.533031, 45.668266>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.186775, 27.686613, 45.632984>,  <32.885075, 27.942581, 45.574181>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.186775, 27.686613, 45.632984> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405551, 0.277956, -0.870786,
		0.516371, 0.716409, 0.469168,
		0.754247, -0.639921, 0.147012,
		33.413048, 27.494637, 45.677086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.547474, 28.367359, 45.442467>,  <32.885075, 27.942581, 45.574181>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.547474, 28.367359, 45.442467> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.640007, 27.982132, 45.387348>,  <33.695526, 27.750996, 45.354279>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.640007, 27.982132, 45.387348>,  <33.547474, 28.367359, 45.442467>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.640007, 27.982132, 45.387348> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433273, 0.228798, -0.871737,
		0.871069, 0.141957, 0.470200,
		0.231330, -0.963068, -0.137793,
		33.709408, 27.693213, 45.346012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.138935, 28.396252, 45.072758>,  <33.547474, 28.367359, 45.442467>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.138935, 28.396252, 45.072758> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.028378, 28.018585, 45.001026>,  <33.962044, 27.791985, 44.957989>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.028378, 28.018585, 45.001026>,  <34.138935, 28.396252, 45.072758>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.028378, 28.018585, 45.001026> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529419, 0.006147, -0.848338,
		0.802074, -0.329413, 0.498160,
		-0.276391, -0.944166, -0.179328,
		33.945461, 27.735336, 44.947227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.822876, 28.007324, 44.823700>,  <34.138935, 28.396252, 45.072758>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.822876, 28.007324, 44.823700> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.506336, 27.804922, 44.686459>,  <34.316410, 27.683481, 44.604115>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.506336, 27.804922, 44.686459>,  <34.822876, 28.007324, 44.823700>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.506336, 27.804922, 44.686459> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370874, 0.048808, -0.927400,
		0.486017, -0.861147, 0.149041,
		-0.791353, -0.506008, -0.343099,
		34.268929, 27.653120, 44.583530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.050770, 27.491386, 44.311363>,  <34.822876, 28.007324, 44.823700>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.050770, 27.491386, 44.311363> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.667465, 27.544285, 44.209972>,  <34.437485, 27.576025, 44.149139>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.667465, 27.544285, 44.209972>,  <35.050770, 27.491386, 44.311363>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.667465, 27.544285, 44.209972> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248895, -0.050361, -0.967220,
		-0.140678, -0.989936, 0.015343,
		-0.958259, 0.132248, -0.253475,
		34.379986, 27.583960, 44.133930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.927761, 27.101879, 43.727688>,  <35.050770, 27.491386, 44.311363>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.927761, 27.101879, 43.727688> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.628170, 27.366489, 43.712658>,  <34.448414, 27.525255, 43.703640>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.628170, 27.366489, 43.712658>,  <34.927761, 27.101879, 43.727688>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.628170, 27.366489, 43.712658> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111182, 0.069568, -0.991362,
		-0.653197, -0.746689, -0.125655,
		-0.748981, 0.661525, -0.037577,
		34.403477, 27.564947, 43.701385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.544846, 26.915937, 43.167042>,  <34.927761, 27.101879, 43.727688>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.544846, 26.915937, 43.167042> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.438946, 27.296165, 43.231945>,  <34.375404, 27.524302, 43.270885>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.438946, 27.296165, 43.231945>,  <34.544846, 26.915937, 43.167042>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.438946, 27.296165, 43.231945> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068921, 0.149180, -0.986405,
		-0.961851, -0.272333, 0.026019,
		-0.264749, 0.950568, 0.162259,
		34.359520, 27.581335, 43.280624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.051407, 27.076000, 42.612972>,  <34.544846, 26.915937, 43.167042>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.051407, 27.076000, 42.612972> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.128906, 27.441999, 42.754528>,  <34.175407, 27.661598, 42.839462>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.128906, 27.441999, 42.754528>,  <34.051407, 27.076000, 42.612972>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.128906, 27.441999, 42.754528> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006795, 0.361972, -0.932164,
		-0.981027, 0.178205, 0.076351,
		0.193753, 0.914997, 0.353893,
		34.187031, 27.716499, 42.860695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.583038, 27.593842, 42.360462>,  <34.051407, 27.076000, 42.612972>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.583038, 27.593842, 42.360462> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.914585, 27.794056, 42.460415>,  <34.113514, 27.914185, 42.520386>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.914585, 27.794056, 42.460415>,  <33.583038, 27.593842, 42.360462>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.914585, 27.794056, 42.460415> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089143, 0.322794, -0.942262,
		-0.552297, 0.803286, 0.222935,
		0.828868, 0.500535, 0.249886,
		34.163246, 27.944216, 42.535381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.084190, 28.009001, 42.809875>,  <33.583038, 27.593842, 42.360462>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.084190, 28.009001, 42.809875> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.721394, 27.988922, 42.642620>,  <32.503716, 27.976875, 42.542267>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.721394, 27.988922, 42.642620>,  <33.084190, 28.009001, 42.809875>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.721394, 27.988922, 42.642620> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380474, -0.327994, 0.864673,
		-0.180549, 0.943345, 0.278391,
		-0.906996, -0.050195, -0.418137,
		32.449295, 27.973864, 42.517178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.561543, 28.376799, 43.178677>,  <33.084190, 28.009001, 42.809875>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.561543, 28.376799, 43.178677> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.378216, 28.075258, 42.990356>,  <32.268219, 27.894333, 42.877365>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.378216, 28.075258, 42.990356>,  <32.561543, 28.376799, 43.178677>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.378216, 28.075258, 42.990356> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312023, -0.359525, 0.879423,
		-0.832220, 0.549952, -0.070444,
		-0.458314, -0.753853, -0.470801,
		32.240723, 27.849102, 42.849117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.112110, 28.106739, 43.661266>,  <32.561543, 28.376799, 43.178677>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.112110, 28.106739, 43.661266> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.061363, 27.831474, 43.375515>,  <32.030914, 27.666315, 43.204063>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.061363, 27.831474, 43.375515>,  <32.112110, 28.106739, 43.661266>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.061363, 27.831474, 43.375515> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252446, -0.674086, 0.694175,
		-0.959258, 0.268410, -0.088205,
		-0.126866, -0.688160, -0.714381,
		32.023304, 27.625027, 43.161201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.491407, 27.734945, 43.763374>,  <32.112110, 28.106739, 43.661266>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.491407, 27.734945, 43.763374> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.658068, 27.430380, 43.564716>,  <31.758064, 27.247641, 43.445522>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.658068, 27.430380, 43.564716>,  <31.491407, 27.734945, 43.763374>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.658068, 27.430380, 43.564716> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566095, -0.644780, 0.513610,
		-0.711295, 0.067153, -0.699679,
		0.416648, -0.761413, -0.496643,
		31.783062, 27.201956, 43.415722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.958055, 27.312651, 43.434566>,  <31.491407, 27.734945, 43.763374>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.958055, 27.312651, 43.434566> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.281876, 27.083366, 43.485256>,  <31.476168, 26.945797, 43.515671>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.281876, 27.083366, 43.485256>,  <30.958055, 27.312651, 43.434566>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.281876, 27.083366, 43.485256> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544198, -0.651804, 0.528205,
		-0.220171, -0.496573, -0.839607,
		0.809551, -0.573208, 0.126726,
		31.524740, 26.911404, 43.523273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.745502, 26.746445, 43.310997>,  <30.958055, 27.312651, 43.434566>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.745502, 26.746445, 43.310997> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.074863, 26.667603, 43.523849>,  <31.272480, 26.620296, 43.651562>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.074863, 26.667603, 43.523849>,  <30.745502, 26.746445, 43.310997>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.074863, 26.667603, 43.523849> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529953, -0.602365, 0.596913,
		0.202879, -0.773501, -0.600446,
		0.823401, -0.197108, 0.532127,
		31.321884, 26.608471, 43.683487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.708794, 26.056656, 43.442959>,  <30.745502, 26.746445, 43.310997>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.708794, 26.056656, 43.442959> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.974283, 26.164272, 43.722126>,  <31.133577, 26.228842, 43.889626>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.974283, 26.164272, 43.722126>,  <30.708794, 26.056656, 43.442959>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.974283, 26.164272, 43.722126> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449560, -0.602241, 0.659698,
		0.597799, -0.751613, -0.278772,
		0.663726, 0.269042, 0.697914,
		31.173401, 26.244986, 43.931499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.804352, 25.465357, 43.725605>,  <30.708794, 26.056656, 43.442959>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.804352, 25.465357, 43.725605> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.948610, 25.729586, 43.988991>,  <31.035166, 25.888123, 44.147022>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.948610, 25.729586, 43.988991>,  <30.804352, 25.465357, 43.725605>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.948610, 25.729586, 43.988991> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437616, -0.503604, 0.744900,
		0.823668, -0.556799, 0.107455,
		0.360644, 0.660574, 0.658466,
		31.056803, 25.927757, 44.186531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.962624, 24.970701, 44.330864>,  <30.804352, 25.465357, 43.725605>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.962624, 24.970701, 44.330864> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.945316, 25.345938, 44.468334>,  <30.934933, 25.571079, 44.550816>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.945316, 25.345938, 44.468334>,  <30.962624, 24.970701, 44.330864>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.945316, 25.345938, 44.468334> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506828, -0.317058, 0.801623,
		0.860961, -0.139502, 0.489169,
		-0.043267, 0.938091, 0.343678,
		30.932337, 25.627365, 44.571438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.102596, 24.907637, 45.046143>,  <30.962624, 24.970701, 44.330864>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.102596, 24.907637, 45.046143> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.902464, 25.235733, 44.935238>,  <30.782385, 25.432590, 44.868694>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.902464, 25.235733, 44.935238>,  <31.102596, 24.907637, 45.046143>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.902464, 25.235733, 44.935238> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556222, -0.059088, 0.828930,
		0.663540, 0.568957, 0.485800,
		-0.500331, 0.820241, -0.277259,
		30.752365, 25.481806, 44.852058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.939203, 25.229359, 45.659203>,  <31.102596, 24.907637, 45.046143>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.939203, 25.229359, 45.659203> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.688114, 25.408894, 45.404797>,  <30.537460, 25.516615, 45.252155>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.688114, 25.408894, 45.404797>,  <30.939203, 25.229359, 45.659203>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.688114, 25.408894, 45.404797> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741423, -0.095777, 0.664167,
		0.237188, 0.888466, 0.392899,
		-0.627721, 0.448837, -0.636013,
		30.499798, 25.543545, 45.213993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.578232, 25.584249, 46.071701>,  <30.939203, 25.229359, 45.659203>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.578232, 25.584249, 46.071701> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.359753, 25.586493, 45.736645>,  <30.228664, 25.587837, 45.535610>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.359753, 25.586493, 45.736645>,  <30.578232, 25.584249, 46.071701>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.359753, 25.586493, 45.736645> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837119, -0.039432, 0.545598,
		-0.029971, 0.999207, 0.026231,
		-0.546199, 0.005606, -0.837636,
		30.195892, 25.588175, 45.485355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.038778, 26.019342, 46.230667>,  <30.578232, 25.584249, 46.071701>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.038778, 26.019342, 46.230667> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.920715, 25.777967, 45.934357>,  <29.849878, 25.633142, 45.756573>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.920715, 25.777967, 45.934357>,  <30.038778, 26.019342, 46.230667>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.920715, 25.777967, 45.934357> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764597, -0.315755, 0.561863,
		-0.572952, 0.732231, -0.368190,
		-0.295155, -0.603438, -0.740774,
		29.832169, 25.596935, 45.712124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.398958, 26.167091, 46.137436>,  <30.038778, 26.019342, 46.230667>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.398958, 26.167091, 46.137436> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.425621, 25.799847, 45.981163>,  <29.441618, 25.579500, 45.887398>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.425621, 25.799847, 45.981163>,  <29.398958, 26.167091, 46.137436>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.425621, 25.799847, 45.981163> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803145, -0.281703, 0.524978,
		-0.592043, 0.278780, -0.756152,
		0.066657, -0.918109, -0.390681,
		29.445618, 25.524414, 45.863960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.497986, 26.596468, 45.492516>,  <29.398958, 26.167091, 46.137436>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.497986, 26.596468, 45.492516> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.199820, 26.676025, 45.747013>,  <29.020920, 26.723759, 45.899712>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.199820, 26.676025, 45.747013>,  <29.497986, 26.596468, 45.492516>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.199820, 26.676025, 45.747013> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033634, 0.942014, -0.333884,
		-0.665753, -0.270281, -0.695500,
		-0.745414, 0.198892, 0.636239,
		28.976196, 26.735693, 45.937885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.837194, 26.866205, 45.101215>,  <29.497986, 26.596468, 45.492516>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.837194, 26.866205, 45.101215> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.944889, 27.020836, 45.454048>,  <29.009506, 27.113615, 45.665749>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.944889, 27.020836, 45.454048>,  <28.837194, 26.866205, 45.101215>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.944889, 27.020836, 45.454048> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050238, 0.920294, -0.387990,
		-0.961762, 0.060148, 0.267199,
		0.269239, 0.386577, 0.882082,
		29.025661, 27.136808, 45.718674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.420633, 27.470015, 45.124458>,  <28.837194, 26.866205, 45.101215>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.420633, 27.470015, 45.124458> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.740150, 27.505745, 45.362434>,  <28.931860, 27.527184, 45.505219>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.740150, 27.505745, 45.362434>,  <28.420633, 27.470015, 45.124458>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.740150, 27.505745, 45.362434> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138795, 0.934876, -0.326717,
		-0.585377, 0.343554, 0.734374,
		0.798793, 0.089325, 0.594938,
		28.979788, 27.532543, 45.540916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.382975, 28.159252, 45.521751>,  <28.420633, 27.470015, 45.124458>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.382975, 28.159252, 45.521751> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.771132, 28.063402, 45.533909>,  <29.004025, 28.005892, 45.541203>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.771132, 28.063402, 45.533909>,  <28.382975, 28.159252, 45.521751>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.771132, 28.063402, 45.533909> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219242, 0.820990, -0.527170,
		0.101372, 0.518224, 0.849216,
		0.970390, -0.239624, 0.030391,
		29.062248, 27.991514, 45.543026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.695866, 28.807280, 45.378586>,  <28.382975, 28.159252, 45.521751>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.695866, 28.807280, 45.378586> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.005013, 28.553930, 45.363007>,  <29.190500, 28.401920, 45.353657>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.005013, 28.553930, 45.363007>,  <28.695866, 28.807280, 45.378586>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.005013, 28.553930, 45.363007> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435741, 0.574329, -0.693019,
		0.461309, 0.518639, 0.719866,
		0.772867, -0.633371, -0.038951,
		29.236872, 28.363918, 45.351322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.307024, 29.203220, 45.470562>,  <28.695866, 28.807280, 45.378586>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.307024, 29.203220, 45.470562> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.395077, 28.873644, 45.261692>,  <29.447908, 28.675898, 45.136372>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.395077, 28.873644, 45.261692>,  <29.307024, 29.203220, 45.470562>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.395077, 28.873644, 45.261692> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512706, 0.553126, -0.656646,
		0.829864, -0.123172, 0.544200,
		0.220131, -0.823942, -0.522170,
		29.461117, 28.626461, 45.105042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.000740, 29.316959, 45.321960>,  <29.307024, 29.203220, 45.470562>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.000740, 29.316959, 45.321960> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.856972, 29.057121, 45.053978>,  <29.770710, 28.901218, 44.893188>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.856972, 29.057121, 45.053978>,  <30.000740, 29.316959, 45.321960>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.856972, 29.057121, 45.053978> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325769, 0.585419, -0.742401,
		0.874466, -0.485085, 0.001206,
		-0.359422, -0.649597, -0.669955,
		29.749146, 28.862242, 44.852993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.643408, 29.503113, 45.598042>,  <30.000740, 29.316959, 45.321960>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.643408, 29.503113, 45.598042> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.498215, 29.756683, 45.871208>,  <30.411098, 29.908825, 46.035110>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.498215, 29.756683, 45.871208>,  <30.643408, 29.503113, 45.598042>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.498215, 29.756683, 45.871208> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009398, -0.735361, 0.677610,
		0.931748, 0.239543, 0.272881,
		-0.362983, 0.633927, 0.682920,
		30.389320, 29.946861, 46.076084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.065010, 29.460981, 46.212570>,  <30.643408, 29.503113, 45.598042>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.065010, 29.460981, 46.212570> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.694910, 29.580956, 46.305477>,  <30.472849, 29.652939, 46.361221>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.694910, 29.580956, 46.305477>,  <31.065010, 29.460981, 46.212570>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.694910, 29.580956, 46.305477> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016714, -0.579453, 0.814834,
		0.378987, 0.757808, 0.531126,
		-0.925251, 0.299934, 0.232271,
		30.417336, 29.670937, 46.375160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.111902, 29.621546, 46.851742>,  <31.065010, 29.460981, 46.212570>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.111902, 29.621546, 46.851742> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.714195, 29.583010, 46.833195>,  <30.475571, 29.559889, 46.822067>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.714195, 29.583010, 46.833195>,  <31.111902, 29.621546, 46.851742>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.714195, 29.583010, 46.833195> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018864, -0.584917, 0.810874,
		-0.105237, 0.805352, 0.583381,
		-0.994268, -0.096339, -0.046363,
		30.415915, 29.554108, 46.819286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.899950, 29.814220, 47.478165>,  <31.111902, 29.621546, 46.851742>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.899950, 29.814220, 47.478165> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.608957, 29.584883, 47.327408>,  <30.434362, 29.447281, 47.236954>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.608957, 29.584883, 47.327408>,  <30.899950, 29.814220, 47.478165>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.608957, 29.584883, 47.327408> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016760, -0.563992, 0.825610,
		-0.685925, 0.594298, 0.419902,
		-0.727480, -0.573344, -0.376896,
		30.390713, 29.412880, 47.214340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.453016, 29.603756, 48.029018>,  <30.899950, 29.814220, 47.478165>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.453016, 29.603756, 48.029018> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.330496, 29.355728, 47.740105>,  <30.256983, 29.206911, 47.566757>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.330496, 29.355728, 47.740105>,  <30.453016, 29.603756, 48.029018>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.330496, 29.355728, 47.740105> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056657, -0.745532, 0.664057,
		-0.950247, 0.244325, 0.193226,
		-0.306302, -0.620071, -0.722282,
		30.238605, 29.169706, 47.523418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.895302, 29.320724, 48.332481>,  <30.453016, 29.603756, 48.029018>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.895302, 29.320724, 48.332481> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.009554, 29.084328, 48.030716>,  <30.078106, 28.942490, 47.849655>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.009554, 29.084328, 48.030716>,  <29.895302, 29.320724, 48.332481>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.009554, 29.084328, 48.030716> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219834, -0.806625, 0.548660,
		-0.932785, 0.009132, -0.360318,
		0.285632, -0.590992, -0.754415,
		30.095243, 28.907030, 47.804390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.456867, 28.844566, 48.329613>,  <29.895302, 29.320724, 48.332481>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.456867, 28.844566, 48.329613> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.767529, 28.692799, 48.128475>,  <29.953926, 28.601738, 48.007793>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.767529, 28.692799, 48.128475>,  <29.456867, 28.844566, 48.329613>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.767529, 28.692799, 48.128475> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064971, -0.745749, 0.663051,
		-0.626566, -0.547633, -0.554538,
		0.776655, -0.379417, -0.502842,
		30.000525, 28.578974, 47.977623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.335712, 28.108826, 48.315002>,  <29.456867, 28.844566, 48.329613>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.335712, 28.108826, 48.315002> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.724854, 28.172886, 48.248173>,  <29.958338, 28.211323, 48.208076>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.724854, 28.172886, 48.248173>,  <29.335712, 28.108826, 48.315002>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.724854, 28.172886, 48.248173> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231010, -0.715681, 0.659118,
		-0.014011, -0.679818, -0.733247,
		0.972851, 0.160152, -0.167072,
		30.016708, 28.220932, 48.198051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.664875, 27.449926, 48.338631>,  <29.335712, 28.108826, 48.315002>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.664875, 27.449926, 48.338631> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.960699, 27.714336, 48.389381>,  <30.138193, 27.872982, 48.419834>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.960699, 27.714336, 48.389381>,  <29.664875, 27.449926, 48.338631>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.960699, 27.714336, 48.389381> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442108, -0.619194, 0.648952,
		0.507537, -0.423844, -0.750175,
		0.739558, 0.661026, 0.126879,
		30.182568, 27.912643, 48.427444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.216194, 37.973068, 37.033745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.451550, 37.957527, 37.356804>,  <35.592762, 37.948200, 37.550640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.451550, 37.957527, 37.356804>,  <35.216194, 37.973068, 37.033745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.451550, 37.957527, 37.356804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602666, -0.686990, 0.406003,
		0.539068, -0.725627, -0.427634,
		0.588387, -0.038856, 0.807645,
		35.628067, 37.945869, 37.599098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.406448, 37.249882, 37.151722>,  <35.216194, 37.973068, 37.033745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.406448, 37.249882, 37.151722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.433567, 37.425167, 37.510246>,  <35.449837, 37.530338, 37.725361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.433567, 37.425167, 37.510246>,  <35.406448, 37.249882, 37.151722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.433567, 37.425167, 37.510246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730707, -0.589881, 0.343668,
		0.679317, -0.678238, 0.280219,
		0.067793, 0.438217, 0.896309,
		35.453903, 37.556633, 37.779140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.218578, 36.795551, 37.566219>,  <35.406448, 37.249882, 37.151722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.218578, 36.795551, 37.566219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.189548, 37.103928, 37.819321>,  <35.172131, 37.288956, 37.971180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.189548, 37.103928, 37.819321>,  <35.218578, 36.795551, 37.566219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.189548, 37.103928, 37.819321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591647, -0.544023, 0.594974,
		0.802924, -0.331187, 0.495608,
		-0.072574, 0.770944, 0.632755,
		35.167778, 37.335209, 38.009148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.408710, 36.531277, 38.264568>,  <35.218578, 36.795551, 37.566219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.408710, 36.531277, 38.264568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.180046, 36.854355, 38.322292>,  <35.042847, 37.048203, 38.356926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.180046, 36.854355, 38.322292>,  <35.408710, 36.531277, 38.264568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.180046, 36.854355, 38.322292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665418, -0.559292, 0.494380,
		0.480018, 0.186595, 0.857184,
		-0.571665, 0.807697, 0.144306,
		35.008545, 37.096664, 38.365585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.239067, 36.553734, 39.027122>,  <35.408710, 36.531277, 38.264568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.239067, 36.553734, 39.027122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.956612, 36.797714, 38.883274>,  <34.787140, 36.944103, 38.796967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.956612, 36.797714, 38.883274>,  <35.239067, 36.553734, 39.027122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.956612, 36.797714, 38.883274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640537, -0.333796, 0.691587,
		0.301794, 0.718708, 0.626402,
		-0.706140, 0.609950, -0.359621,
		34.744770, 36.980698, 38.775387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.799362, 36.924744, 39.633450>,  <35.239067, 36.553734, 39.027122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.799362, 36.924744, 39.633450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.552174, 36.985607, 39.324913>,  <34.403862, 37.022125, 39.139790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.552174, 36.985607, 39.324913>,  <34.799362, 36.924744, 39.633450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.552174, 36.985607, 39.324913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778425, -0.256087, 0.573127,
		-0.110325, 0.954604, 0.276695,
		-0.617967, 0.152156, -0.771340,
		34.366783, 37.031254, 39.093510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.306583, 37.222382, 39.924595>,  <34.799362, 36.924744, 39.633450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.306583, 37.222382, 39.924595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.111023, 37.120461, 39.590878>,  <33.993687, 37.059307, 39.390648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.111023, 37.120461, 39.590878>,  <34.306583, 37.222382, 39.924595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.111023, 37.120461, 39.590878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838868, -0.125055, 0.529775,
		-0.239322, 0.958872, -0.152608,
		-0.488903, -0.254805, -0.834295,
		33.964352, 37.044018, 39.340588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.684376, 37.553982, 39.948792>,  <34.306583, 37.222382, 39.924595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.684376, 37.553982, 39.948792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.608620, 37.256001, 39.692924>,  <33.563164, 37.077213, 39.539402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.608620, 37.256001, 39.692924>,  <33.684376, 37.553982, 39.948792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.608620, 37.256001, 39.692924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809506, -0.250245, 0.531110,
		-0.555725, 0.618407, -0.555646,
		-0.189395, -0.744950, -0.639671,
		33.551800, 37.032516, 39.501022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.002926, 37.564922, 39.650139>,  <33.684376, 37.553982, 39.948792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.002926, 37.564922, 39.650139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.108494, 37.180046, 39.623219>,  <33.171833, 36.949120, 39.607067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.108494, 37.180046, 39.623219>,  <33.002926, 37.564922, 39.650139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.108494, 37.180046, 39.623219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766335, -0.251548, 0.591147,
		-0.585728, -0.104438, -0.803751,
		0.263920, -0.962194, -0.067304,
		33.187672, 36.891388, 39.603027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.373444, 37.241661, 39.541355>,  <33.002926, 37.564922, 39.650139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.373444, 37.241661, 39.541355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.599468, 36.929516, 39.648495>,  <32.735085, 36.742229, 39.712776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.599468, 36.929516, 39.648495>,  <32.373444, 37.241661, 39.541355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.599468, 36.929516, 39.648495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797039, -0.432447, 0.421566,
		-0.213143, -0.451696, -0.866337,
		0.565064, -0.780359, 0.267846,
		32.768986, 36.695408, 39.728848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.018471, 36.594933, 39.290058>,  <32.373444, 37.241661, 39.541355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.018471, 36.594933, 39.290058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.265194, 36.507046, 39.592388>,  <32.413227, 36.454311, 39.773785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.265194, 36.507046, 39.592388>,  <32.018471, 36.594933, 39.290058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.265194, 36.507046, 39.592388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743087, -0.479192, 0.467116,
		0.259549, -0.849764, -0.458842,
		0.616812, -0.219720, 0.755821,
		32.450237, 36.441132, 39.819134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.917028, 35.903259, 39.390797>,  <32.018471, 36.594933, 39.290058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.917028, 35.903259, 39.390797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.047016, 36.045517, 39.741318>,  <32.125008, 36.130871, 39.951630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.047016, 36.045517, 39.741318>,  <31.917028, 35.903259, 39.390797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.047016, 36.045517, 39.741318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724471, -0.501984, 0.472391,
		0.607896, -0.788370, 0.094527,
		0.324968, 0.355647, 0.876305,
		32.144508, 36.152210, 40.004208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.724007, 35.147739, 39.127357>,  <31.917028, 35.903259, 39.390797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.724007, 35.147739, 39.127357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.392586, 35.005890, 38.954037>,  <31.193733, 34.920780, 38.850044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.392586, 35.005890, 38.954037>,  <31.724007, 35.147739, 39.127357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.392586, 35.005890, 38.954037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160798, 0.590566, -0.790807,
		0.536323, -0.724899, -0.432294,
		-0.828554, -0.354616, -0.433297,
		31.144020, 34.899506, 38.824047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.921787, 35.116299, 38.348621>,  <31.724007, 35.147739, 39.127357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.921787, 35.116299, 38.348621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.523230, 35.101456, 38.379139>,  <31.284096, 35.092552, 38.397449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.523230, 35.101456, 38.379139>,  <31.921787, 35.116299, 38.348621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.523230, 35.101456, 38.379139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083438, 0.591226, -0.802178,
		-0.015344, -0.805652, -0.592190,
		-0.996395, -0.037103, 0.076293,
		31.224312, 35.090324, 38.402027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.672350, 34.954323, 37.685608>,  <31.921787, 35.116299, 38.348621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.672350, 34.954323, 37.685608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.349031, 35.103203, 37.868088>,  <31.155041, 35.192532, 37.977577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.349031, 35.103203, 37.868088>,  <31.672350, 34.954323, 37.685608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.349031, 35.103203, 37.868088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115581, 0.659449, -0.742811,
		-0.577321, -0.653139, -0.490010,
		-0.808296, 0.372204, 0.456204,
		31.106543, 35.214863, 38.004948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.272202, 35.024281, 37.182800>,  <31.672350, 34.954323, 37.685608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.272202, 35.024281, 37.182800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.119062, 35.278057, 37.451401>,  <31.027180, 35.430325, 37.612560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.119062, 35.278057, 37.451401>,  <31.272202, 35.024281, 37.182800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.119062, 35.278057, 37.451401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111812, 0.689710, -0.715401,
		-0.917020, -0.348971, -0.193116,
		-0.382848, 0.634444, 0.671496,
		31.004208, 35.468391, 37.652851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.658552, 35.264660, 36.953545>,  <31.272202, 35.024281, 37.182800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.658552, 35.264660, 36.953545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.764200, 35.546066, 37.217453>,  <30.827589, 35.714912, 37.375797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.764200, 35.546066, 37.217453>,  <30.658552, 35.264660, 36.953545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.764200, 35.546066, 37.217453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164115, 0.706872, -0.688040,
		-0.950425, 0.073445, 0.302155,
		0.264118, 0.703519, 0.659775,
		30.843435, 35.757122, 37.415386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.224112, 35.829262, 36.788288>,  <30.658552, 35.264660, 36.953545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.224112, 35.829262, 36.788288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.505484, 36.003429, 37.013000>,  <30.674307, 36.107929, 37.147827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.505484, 36.003429, 37.013000>,  <30.224112, 35.829262, 36.788288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.505484, 36.003429, 37.013000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001029, 0.791016, -0.611795,
		-0.710764, 0.429777, 0.556872,
		0.703430, 0.435414, 0.561783,
		30.716513, 36.134052, 37.181534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.984989, 36.528042, 36.964443>,  <30.224112, 35.829262, 36.788288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.984989, 36.528042, 36.964443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.380497, 36.561943, 37.013683>,  <30.617802, 36.582283, 37.043228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.380497, 36.561943, 37.013683>,  <29.984989, 36.528042, 36.964443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.380497, 36.561943, 37.013683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023622, 0.724694, -0.688666,
		-0.147573, 0.683839, 0.714553,
		0.988769, 0.084749, 0.123099,
		30.677128, 36.587368, 37.050613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.065329, 37.206635, 37.071774>,  <29.984989, 36.528042, 36.964443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.065329, 37.206635, 37.071774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.418983, 37.071148, 36.943047>,  <30.631176, 36.989857, 36.865810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.418983, 37.071148, 36.943047>,  <30.065329, 37.206635, 37.071774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.418983, 37.071148, 36.943047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018186, 0.713216, -0.700709,
		0.466869, 0.613671, 0.636742,
		0.884139, -0.338719, -0.321818,
		30.684225, 36.969532, 36.846500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.417812, 37.764702, 36.965454>,  <30.065329, 37.206635, 37.071774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.417812, 37.764702, 36.965454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.600084, 37.495346, 36.732594>,  <30.709448, 37.333733, 36.592876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.600084, 37.495346, 36.732594>,  <30.417812, 37.764702, 36.965454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.600084, 37.495346, 36.732594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032310, 0.666079, -0.745181,
		0.889558, 0.320753, 0.325275,
		0.455678, -0.673391, -0.582152,
		30.736788, 37.293327, 36.557949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.021673, 38.186378, 36.531754>,  <30.417812, 37.764702, 36.965454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.021673, 38.186378, 36.531754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.962221, 37.842678, 36.335957>,  <30.926550, 37.636459, 36.218479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.962221, 37.842678, 36.335957>,  <31.021673, 38.186378, 36.531754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.962221, 37.842678, 36.335957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090553, 0.481083, -0.871985,
		0.984738, -0.173929, 0.006303,
		-0.148631, -0.859248, -0.489491,
		30.917631, 37.584904, 36.189110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.691622, 38.017178, 36.154854>,  <31.021673, 38.186378, 36.531754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.691622, 38.017178, 36.154854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.406847, 37.813023, 35.961918>,  <31.235981, 37.690529, 35.846157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.406847, 37.813023, 35.961918>,  <31.691622, 38.017178, 36.154854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.406847, 37.813023, 35.961918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446215, 0.201582, -0.871927,
		0.542252, -0.835983, 0.084229,
		-0.711937, -0.510389, -0.482337,
		31.193266, 37.659904, 35.817215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.068783, 37.506340, 35.714649>,  <31.691622, 38.017178, 36.154854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.068783, 37.506340, 35.714649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.701788, 37.549126, 35.561398>,  <31.481592, 37.574799, 35.469448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.701788, 37.549126, 35.561398>,  <32.068783, 37.506340, 35.714649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.701788, 37.549126, 35.561398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392525, 0.087474, -0.915572,
		-0.064420, -0.990408, -0.122242,
		-0.917483, 0.106964, -0.383125,
		31.426542, 37.581215, 35.446461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.087433, 37.168472, 35.103756>,  <32.068783, 37.506340, 35.714649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.087433, 37.168472, 35.103756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.777367, 37.417583, 35.061298>,  <31.591326, 37.567051, 35.035824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.777367, 37.417583, 35.061298>,  <32.087433, 37.168472, 35.103756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.777367, 37.417583, 35.061298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330941, 0.257176, -0.907931,
		-0.538140, -0.738925, -0.405456,
		-0.775167, 0.622776, -0.106144,
		31.544817, 37.604416, 35.029453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.394114, 36.951546, 34.620125>,  <32.087433, 37.168472, 35.103756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.394114, 36.951546, 34.620125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.535309, 37.325356, 34.638287>,  <31.620026, 37.549641, 34.649181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.535309, 37.325356, 34.638287>,  <31.394114, 36.951546, 34.620125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.535309, 37.325356, 34.638287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424228, -0.116611, -0.898016,
		-0.833923, 0.336252, -0.437615,
		0.352990, 0.934525, 0.045403,
		31.641207, 37.605713, 34.651909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.356524, 36.444778, 34.055447>,  <31.394114, 36.951546, 34.620125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.356524, 36.444778, 34.055447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.730465, 36.512157, 33.930435>,  <31.954830, 36.552586, 33.855431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.730465, 36.512157, 33.930435>,  <31.356524, 36.444778, 34.055447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.730465, 36.512157, 33.930435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349225, -0.277748, 0.894929,
		0.063944, -0.945770, -0.318479,
		0.934855, 0.168447, -0.312527,
		32.010921, 36.562691, 33.836678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.713135, 36.025234, 34.505585>,  <31.356524, 36.444778, 34.055447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.713135, 36.025234, 34.505585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.050552, 36.174839, 34.351414>,  <32.253002, 36.264603, 34.258911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.050552, 36.174839, 34.351414>,  <31.713135, 36.025234, 34.505585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.050552, 36.174839, 34.351414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536321, -0.548997, 0.641063,
		0.028167, -0.747476, -0.663692,
		0.843544, 0.374009, -0.385423,
		32.303616, 36.287041, 34.235786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.553823, 35.478592, 35.027740>,  <31.713135, 36.025234, 34.505585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.553823, 35.478592, 35.027740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.944210, 35.391907, 35.036861>,  <32.178444, 35.339893, 35.042336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.944210, 35.391907, 35.036861>,  <31.553823, 35.478592, 35.027740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.944210, 35.391907, 35.036861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180098, -0.743271, 0.644293,
		-0.122681, -0.632916, -0.764439,
		0.975969, -0.216716, 0.022802,
		32.237000, 35.326893, 35.043701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.743027, 34.727600, 34.922340>,  <31.553823, 35.478592, 35.027740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.743027, 34.727600, 34.922340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.045040, 34.885189, 35.131992>,  <32.226246, 34.979744, 35.257782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.045040, 34.885189, 35.131992>,  <31.743027, 34.727600, 34.922340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.045040, 34.885189, 35.131992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031179, -0.776880, 0.628876,
		0.654947, -0.491163, -0.574285,
		0.755031, 0.393975, 0.524129,
		32.271549, 35.003380, 35.289230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.274708, 34.190701, 34.941006>,  <31.743027, 34.727600, 34.922340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.274708, 34.190701, 34.941006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.335701, 34.440723, 35.247223>,  <32.372295, 34.590736, 35.430954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.335701, 34.440723, 35.247223>,  <32.274708, 34.190701, 34.941006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.335701, 34.440723, 35.247223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146083, -0.780344, 0.608048,
		0.977450, 0.019115, -0.210299,
		0.152483, 0.625058, 0.765540,
		32.381447, 34.628242, 35.476887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.764233, 33.855049, 35.206261>,  <32.274708, 34.190701, 34.941006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.764233, 33.855049, 35.206261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.634903, 34.075138, 35.514214>,  <32.557304, 34.207191, 35.698986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.634903, 34.075138, 35.514214>,  <32.764233, 33.855049, 35.206261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.634903, 34.075138, 35.514214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299484, -0.712264, 0.634815,
		0.897646, 0.435820, 0.065513,
		-0.323328, 0.550219, 0.769882,
		32.537903, 34.240204, 35.745178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.141060, 33.533298, 35.806080>,  <32.764233, 33.855049, 35.206261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.141060, 33.533298, 35.806080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.817413, 33.733196, 35.929752>,  <32.623226, 33.853134, 36.003956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.817413, 33.733196, 35.929752>,  <33.141060, 33.533298, 35.806080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.817413, 33.733196, 35.929752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024670, -0.554549, 0.831785,
		0.587135, 0.665381, 0.461021,
		-0.809113, 0.499744, 0.309181,
		32.574680, 33.883118, 36.022507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.342484, 33.677475, 36.430798>,  <33.141060, 33.533298, 35.806080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.342484, 33.677475, 36.430798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.944340, 33.714405, 36.419895>,  <32.705456, 33.736565, 36.413353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.944340, 33.714405, 36.419895>,  <33.342484, 33.677475, 36.430798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.944340, 33.714405, 36.419895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075640, -0.574897, 0.814722,
		0.059551, 0.813000, 0.579211,
		-0.995355, 0.092329, -0.027260,
		32.645733, 33.742104, 36.411716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.157784, 33.617912, 37.102451>,  <33.342484, 33.677475, 36.430798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.157784, 33.617912, 37.102451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.797459, 33.553574, 36.941124>,  <32.581264, 33.514969, 36.844326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.797459, 33.553574, 36.941124>,  <33.157784, 33.617912, 37.102451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.797459, 33.553574, 36.941124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225119, -0.621268, 0.750565,
		-0.371299, 0.766912, 0.523434,
		-0.900810, -0.160849, -0.403323,
		32.527214, 33.505318, 36.820126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.600132, 33.761276, 37.598133>,  <33.157784, 33.617912, 37.102451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.600132, 33.761276, 37.598133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.426285, 33.514343, 37.335835>,  <32.321976, 33.366184, 37.178455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.426285, 33.514343, 37.335835>,  <32.600132, 33.761276, 37.598133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.426285, 33.514343, 37.335835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279621, -0.599631, 0.749837,
		-0.856106, 0.509255, 0.087992,
		-0.434621, -0.617335, -0.655745,
		32.295898, 33.329144, 37.139111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.959791, 33.572910, 37.836926>,  <32.600132, 33.761276, 37.598133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.959791, 33.572910, 37.836926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.047031, 33.285416, 37.572849>,  <32.099377, 33.112919, 37.414406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.047031, 33.285416, 37.572849>,  <31.959791, 33.572910, 37.836926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.047031, 33.285416, 37.572849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252901, -0.694990, 0.673075,
		-0.942589, 0.020165, -0.333347,
		0.218101, -0.718737, -0.660189,
		32.112461, 33.069794, 37.374794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.434519, 33.057781, 37.809437>,  <31.959791, 33.572910, 37.836926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.434519, 33.057781, 37.809437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.758995, 32.872200, 37.667049>,  <31.953680, 32.760849, 37.581615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.758995, 32.872200, 37.667049>,  <31.434519, 33.057781, 37.809437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.758995, 32.872200, 37.667049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122863, -0.730354, 0.671929,
		-0.571728, -0.501328, -0.649460,
		0.811192, -0.463955, -0.355969,
		32.002354, 32.733013, 37.560257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.279718, 32.373516, 37.970284>,  <31.434519, 33.057781, 37.809437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.279718, 32.373516, 37.970284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.663441, 32.363785, 37.857754>,  <31.893675, 32.357944, 37.790237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.663441, 32.363785, 37.857754>,  <31.279718, 32.373516, 37.970284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.663441, 32.363785, 37.857754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123016, -0.860754, 0.493932,
		-0.254166, -0.508438, -0.822733,
		0.959305, -0.024331, -0.281321,
		31.951233, 32.356487, 37.773357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.371613, 31.720434, 37.576385>,  <31.279718, 32.373516, 37.970284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.371613, 31.720434, 37.576385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.715197, 31.849880, 37.735107>,  <31.921347, 31.927547, 37.830341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.715197, 31.849880, 37.735107>,  <31.371613, 31.720434, 37.576385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.715197, 31.849880, 37.735107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079354, -0.849726, 0.521219,
		0.505853, -0.416219, -0.755563,
		0.858962, 0.323617, 0.396807,
		31.972885, 31.946966, 37.854149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.860968, 31.329128, 37.287891>,  <31.371613, 31.720434, 37.576385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.860968, 31.329128, 37.287891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.997639, 31.459749, 37.640396>,  <32.079639, 31.538122, 37.851898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.997639, 31.459749, 37.640396>,  <31.860968, 31.329128, 37.287891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.997639, 31.459749, 37.640396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108870, -0.945134, 0.308009,
		0.933490, -0.009296, -0.358482,
		0.341677, 0.326552, 0.881261,
		32.100143, 31.557714, 37.904774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.334732, 30.822300, 37.434776>,  <31.860968, 31.329128, 37.287891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.334732, 30.822300, 37.434776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.293671, 30.999289, 37.791130>,  <32.269035, 31.105482, 38.004944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.293671, 30.999289, 37.791130>,  <32.334732, 30.822300, 37.434776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.293671, 30.999289, 37.791130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167098, -0.875221, 0.453944,
		0.980582, 0.195463, 0.015906,
		-0.102650, 0.442472, 0.890888,
		32.262875, 31.132030, 38.058395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.699844, 30.421303, 37.870529>,  <32.334732, 30.822300, 37.434776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.699844, 30.421303, 37.870529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.501675, 30.634598, 38.144817>,  <32.382774, 30.762575, 38.309391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.501675, 30.634598, 38.144817>,  <32.699844, 30.421303, 37.870529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.501675, 30.634598, 38.144817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034593, -0.776670, 0.628957,
		0.867964, 0.335320, 0.366332,
		-0.495421, 0.533240, 0.685721,
		32.353046, 30.794569, 38.350533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.096867, 30.270519, 38.517105>,  <32.699844, 30.421303, 37.870529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.096867, 30.270519, 38.517105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.762825, 30.449492, 38.645115>,  <32.562401, 30.556875, 38.721920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.762825, 30.449492, 38.645115>,  <33.096867, 30.270519, 38.517105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.762825, 30.449492, 38.645115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094089, -0.689355, 0.718287,
		0.541993, 0.569731, 0.617779,
		-0.835099, 0.447433, 0.320020,
		32.512295, 30.583721, 38.741119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.200138, 30.399521, 39.195679>,  <33.096867, 30.270519, 38.517105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.200138, 30.399521, 39.195679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.802437, 30.395561, 39.153049>,  <32.563816, 30.393187, 39.127472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.802437, 30.395561, 39.153049>,  <33.200138, 30.399521, 39.195679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.802437, 30.395561, 39.153049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087371, -0.500086, 0.861557,
		-0.061823, 0.865919, 0.496348,
		-0.994256, -0.009897, -0.106573,
		32.504162, 30.392591, 39.121078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.918449, 30.512510, 39.881302>,  <33.200138, 30.399521, 39.195679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.918449, 30.512510, 39.881302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.623360, 30.336908, 39.676151>,  <32.446308, 30.231546, 39.553062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.623360, 30.336908, 39.676151>,  <32.918449, 30.512510, 39.881302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.623360, 30.336908, 39.676151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183413, -0.600791, 0.778081,
		-0.649712, 0.668075, 0.362697,
		-0.737722, -0.439005, -0.512875,
		32.402042, 30.205206, 39.522289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.255379, 30.505478, 40.389816>,  <32.918449, 30.512510, 39.881302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.255379, 30.505478, 40.389816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.220058, 30.223904, 40.107914>,  <32.198868, 30.054960, 39.938774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.220058, 30.223904, 40.107914>,  <32.255379, 30.505478, 40.389816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.220058, 30.223904, 40.107914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139634, -0.691785, 0.708474,
		-0.986258, 0.160966, -0.037208,
		-0.088301, -0.703934, -0.704755,
		32.193569, 30.012724, 39.896488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.629541, 30.281155, 40.596275>,  <32.255379, 30.505478, 40.389816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.629541, 30.281155, 40.596275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.807758, 30.010687, 40.361572>,  <31.914688, 29.848406, 40.220749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.807758, 30.010687, 40.361572>,  <31.629541, 30.281155, 40.596275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.807758, 30.010687, 40.361572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044872, -0.671448, 0.739692,
		-0.894136, -0.303234, -0.329499,
		0.445541, -0.676171, -0.586759,
		31.941420, 29.807835, 40.185543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.255140, 29.645161, 40.647068>,  <31.629541, 30.281155, 40.596275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.255140, 29.645161, 40.647068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.594131, 29.500370, 40.491760>,  <31.797527, 29.413496, 40.398575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.594131, 29.500370, 40.491760>,  <31.255140, 29.645161, 40.647068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.594131, 29.500370, 40.491760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046941, -0.779677, 0.624420,
		-0.528747, -0.510958, -0.677752,
		0.847480, -0.361975, -0.388267,
		31.848375, 29.391777, 40.375278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.141850, 28.869543, 40.446487>,  <31.255140, 29.645161, 40.647068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.141850, 28.869543, 40.446487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.521751, 28.968281, 40.523464>,  <31.749693, 29.027523, 40.569649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.521751, 28.968281, 40.523464>,  <31.141850, 28.869543, 40.446487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.521751, 28.968281, 40.523464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133442, -0.875501, 0.464427,
		0.283125, -0.415412, -0.864450,
		0.949754, 0.246845, 0.192442,
		31.806677, 29.042334, 40.581196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.536791, 28.286274, 40.356903>,  <31.141850, 28.869543, 40.446487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.536791, 28.286274, 40.356903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.791111, 28.498857, 40.580799>,  <31.943703, 28.626408, 40.715137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.791111, 28.498857, 40.580799>,  <31.536791, 28.286274, 40.356903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.791111, 28.498857, 40.580799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212439, -0.817674, 0.535051,
		0.742044, -0.221274, -0.632778,
		0.635799, 0.531458, 0.559743,
		31.981852, 28.658295, 40.748722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.108582, 27.890409, 40.522934>,  <31.536791, 28.286274, 40.356903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.108582, 27.890409, 40.522934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.144527, 28.175127, 40.801579>,  <32.166096, 28.345957, 40.968765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.144527, 28.175127, 40.801579>,  <32.108582, 27.890409, 40.522934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.144527, 28.175127, 40.801579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255883, -0.692468, 0.674545,
		0.962521, 0.117633, -0.244366,
		0.089867, 0.711794, 0.696616,
		32.171486, 28.388664, 41.010563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.666439, 27.670300, 40.968246>,  <32.108582, 27.890409, 40.522934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.666439, 27.670300, 40.968246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.465141, 27.921179, 41.206028>,  <32.344364, 28.071707, 41.348698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.465141, 27.921179, 41.206028>,  <32.666439, 27.670300, 40.968246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.465141, 27.921179, 41.206028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322314, -0.502030, 0.802546,
		0.801787, 0.595473, 0.050488,
		-0.503241, 0.627198, 0.594451,
		32.314171, 28.109339, 41.384365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.139950, 27.798351, 41.632050>,  <32.666439, 27.670300, 40.968246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.139950, 27.798351, 41.632050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.761658, 27.885778, 41.728241>,  <32.534683, 27.938234, 41.785957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.761658, 27.885778, 41.728241>,  <33.139950, 27.798351, 41.632050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.761658, 27.885778, 41.728241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131694, -0.418749, 0.898502,
		0.297082, 0.881407, 0.367238,
		-0.945726, 0.218566, 0.240479,
		32.477940, 27.951347, 41.800385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.519531, 28.282894, 42.139366>,  <33.139950, 27.798351, 41.632050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.519531, 28.282894, 42.139366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.913998, 28.288465, 42.205441>,  <34.150677, 28.291807, 42.245083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.913998, 28.288465, 42.205441>,  <33.519531, 28.282894, 42.139366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.913998, 28.288465, 42.205441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134143, 0.518392, -0.844556,
		-0.097393, 0.855030, 0.509351,
		0.986164, 0.013928, 0.165184,
		34.209846, 28.292645, 42.254997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.745102, 28.902872, 42.056271>,  <33.519531, 28.282894, 42.139366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.745102, 28.902872, 42.056271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.103615, 28.731031, 42.012222>,  <34.318722, 28.627926, 41.985794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.103615, 28.731031, 42.012222>,  <33.745102, 28.902872, 42.056271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.103615, 28.731031, 42.012222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200761, 0.614433, -0.762999,
		0.395451, 0.661750, 0.636950,
		0.896278, -0.429603, -0.110124,
		34.372498, 28.602150, 41.979183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.262863, 29.459888, 42.047913>,  <33.745102, 28.902872, 42.056271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.262863, 29.459888, 42.047913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.385368, 29.124508, 41.867603>,  <34.458874, 28.923279, 41.759418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.385368, 29.124508, 41.867603>,  <34.262863, 29.459888, 42.047913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.385368, 29.124508, 41.867603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271340, 0.530775, -0.802903,
		0.912456, 0.123589, 0.390065,
		0.306267, -0.838453, -0.450774,
		34.477249, 28.872972, 41.732372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.015751, 29.575933, 41.900688>,  <34.262863, 29.459888, 42.047913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.015751, 29.575933, 41.900688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.895668, 29.287836, 41.650528>,  <34.823620, 29.114977, 41.500431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.895668, 29.287836, 41.650528>,  <35.015751, 29.575933, 41.900688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.895668, 29.287836, 41.650528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525123, 0.422555, -0.738711,
		0.796317, -0.550178, 0.251362,
		-0.300208, -0.720244, -0.625399,
		34.805607, 29.071762, 41.462910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.593266, 29.409557, 41.538071>,  <35.015751, 29.575933, 41.900688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.593266, 29.409557, 41.538071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.272240, 29.298405, 41.326912>,  <35.079624, 29.231714, 41.200218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.272240, 29.298405, 41.326912>,  <35.593266, 29.409557, 41.538071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.272240, 29.298405, 41.326912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273012, 0.615712, -0.739164,
		0.530432, -0.737347, -0.418283,
		-0.802562, -0.277880, -0.527898,
		35.031471, 29.215040, 41.168541>
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
