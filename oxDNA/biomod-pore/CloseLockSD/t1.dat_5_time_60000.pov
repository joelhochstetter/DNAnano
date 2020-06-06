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
	<4.736723, 14.592612, 15.207451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.432768, 14.786598, 15.034300>,  <4.250396, 14.902989, 14.930409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.432768, 14.786598, 15.034300>,  <4.736723, 14.592612, 15.207451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.432768, 14.786598, 15.034300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475610, -0.868710, -0.138340,
		-0.443135, 0.100758, 0.890775,
		-0.759886, 0.484964, -0.432877,
		4.204803, 14.932088, 14.904437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.993640, 14.419538, 14.445843>,  <4.736723, 14.592612, 15.207451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.993640, 14.419538, 14.445843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.058324, 14.302279, 14.068926>,  <5.097135, 14.231922, 13.842776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.058324, 14.302279, 14.068926>,  <4.993640, 14.419538, 14.445843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.058324, 14.302279, 14.068926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930874, -0.271672, 0.244269,
		-0.327602, -0.916655, 0.228954,
		0.161711, -0.293151, -0.942291,
		5.106837, 14.214334, 13.786239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.265986, 13.750070, 14.505337>,  <4.993640, 14.419538, 14.445843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.265986, 13.750070, 14.505337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.361494, 13.955648, 14.175768>,  <5.418799, 14.078996, 13.978026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.361494, 13.955648, 14.175768>,  <5.265986, 13.750070, 14.505337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.361494, 13.955648, 14.175768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965922, -0.213002, 0.147055,
		-0.099918, -0.830956, -0.547292,
		0.238770, 0.513948, -0.823921,
		5.433125, 14.109833, 13.928592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.042914, 13.723482, 14.552448>,  <5.265986, 13.750070, 14.505337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.042914, 13.723482, 14.552448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.385550, 13.895085, 14.437761>,  <6.591132, 13.998047, 14.368949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.385550, 13.895085, 14.437761>,  <6.042914, 13.723482, 14.552448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.385550, 13.895085, 14.437761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338088, -0.886396, -0.316225,
		-0.389807, 0.173940, -0.904320,
		0.856590, 0.429007, -0.286717,
		6.642527, 14.023787, 14.351747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.266392, 13.392977, 13.988585>,  <6.042914, 13.723482, 14.552448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.266392, 13.392977, 13.988585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.599314, 13.575039, 14.115140>,  <6.799067, 13.684277, 14.191072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.599314, 13.575039, 14.115140>,  <6.266392, 13.392977, 13.988585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.599314, 13.575039, 14.115140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540090, -0.794360, -0.278021,
		0.124782, 0.402276, -0.906975,
		0.832306, 0.455156, 0.316387,
		6.849006, 13.711586, 14.210056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.842293, 13.359917, 13.504870>,  <6.266392, 13.392977, 13.988585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.842293, 13.359917, 13.504870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.016552, 13.357451, 13.864908>,  <7.121109, 13.355972, 14.080931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.016552, 13.357451, 13.864908>,  <6.842293, 13.359917, 13.504870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.016552, 13.357451, 13.864908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403494, -0.892540, -0.201405,
		0.804613, 0.450925, -0.386348,
		0.435650, -0.006164, 0.900095,
		7.147247, 13.355602, 14.134937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.549884, 13.315496, 13.354343>,  <6.842293, 13.359917, 13.504870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.549884, 13.315496, 13.354343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.521857, 13.237437, 13.745650>,  <7.505041, 13.190602, 13.980434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.521857, 13.237437, 13.745650>,  <7.549884, 13.315496, 13.354343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.521857, 13.237437, 13.745650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507009, -0.851531, -0.133551,
		0.859088, 0.486634, 0.158606,
		-0.070067, -0.195147, 0.978268,
		7.500837, 13.178893, 14.039131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.204457, 13.202209, 13.636507>,  <7.549884, 13.315496, 13.354343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.204457, 13.202209, 13.636507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.974737, 13.039389, 13.920616>,  <7.836904, 12.941697, 14.091082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.974737, 13.039389, 13.920616>,  <8.204457, 13.202209, 13.636507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.974737, 13.039389, 13.920616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499208, -0.861771, -0.090230,
		0.648821, 0.302755, 0.698120,
		-0.574302, -0.407050, 0.710273,
		7.802446, 12.917274, 14.133698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.625747, 12.719669, 13.963433>,  <8.204457, 13.202209, 13.636507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.625747, 12.719669, 13.963433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.274940, 12.585216, 14.100753>,  <8.064455, 12.504543, 14.183145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.274940, 12.585216, 14.100753>,  <8.625747, 12.719669, 13.963433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.274940, 12.585216, 14.100753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417631, -0.886598, 0.198815,
		0.237539, 0.317736, 0.917943,
		-0.877017, -0.336136, 0.343298,
		8.011834, 12.484375, 14.203742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.713238, 12.351124, 14.625592>,  <8.625747, 12.719669, 13.963433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.713238, 12.351124, 14.625592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.371483, 12.207783, 14.475071>,  <8.166430, 12.121778, 14.384758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.371483, 12.207783, 14.475071>,  <8.713238, 12.351124, 14.625592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.371483, 12.207783, 14.475071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327306, -0.933585, 0.145911,
		-0.403599, 0.001499, 0.914935,
		-0.854388, -0.358354, -0.376303,
		8.115167, 12.100277, 14.362180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.487545, 11.769674, 14.975445>,  <8.713238, 12.351124, 14.625592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.487545, 11.769674, 14.975445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.249792, 11.707138, 14.659909>,  <8.107141, 11.669617, 14.470588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.249792, 11.707138, 14.659909>,  <8.487545, 11.769674, 14.975445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.249792, 11.707138, 14.659909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240356, -0.970619, 0.011262,
		-0.767422, -0.182908, 0.614497,
		-0.594383, -0.156341, -0.788838,
		8.071477, 11.660235, 14.423258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.036018, 11.187904, 15.130512>,  <8.487545, 11.769674, 14.975445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.036018, 11.187904, 15.130512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.048599, 11.227508, 14.732677>,  <8.056148, 11.251269, 14.493975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.048599, 11.227508, 14.732677>,  <8.036018, 11.187904, 15.130512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.048599, 11.227508, 14.732677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141916, -0.985443, -0.093610,
		-0.989379, -0.138204, -0.045046,
		0.031452, 0.099009, -0.994589,
		8.058035, 11.257210, 14.434299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.714843, 10.553063, 14.893465>,  <8.036018, 11.187904, 15.130512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.714843, 10.553063, 14.893465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.911134, 10.700933, 14.577863>,  <8.028909, 10.789654, 14.388501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.911134, 10.700933, 14.577863>,  <7.714843, 10.553063, 14.893465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.911134, 10.700933, 14.577863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160715, -0.928401, -0.335026,
		-0.856363, 0.037601, -0.515004,
		0.490728, 0.369672, -0.789005,
		8.058352, 10.811834, 14.341161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.412546, 10.208941, 14.307835>,  <7.714843, 10.553063, 14.893465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.412546, 10.208941, 14.307835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.779941, 10.342608, 14.223253>,  <8.000378, 10.422810, 14.172504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.779941, 10.342608, 14.223253>,  <7.412546, 10.208941, 14.307835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.779941, 10.342608, 14.223253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254290, -0.908597, -0.331344,
		-0.302852, 0.250564, -0.919510,
		0.918486, 0.334171, -0.211455,
		8.055487, 10.442860, 14.159817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.575312, 9.915087, 13.690360>,  <7.412546, 10.208941, 14.307835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.575312, 9.915087, 13.690360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.917989, 10.012589, 13.872200>,  <8.123595, 10.071090, 13.981304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.917989, 10.012589, 13.872200>,  <7.575312, 9.915087, 13.690360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.917989, 10.012589, 13.872200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298670, -0.952945, -0.051877,
		0.420563, 0.180218, -0.889184,
		0.856693, 0.243755, 0.454600,
		8.174997, 10.085715, 14.008580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.036510, 9.849494, 13.176462>,  <7.575312, 9.915087, 13.690360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.036510, 9.849494, 13.176462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.248710, 9.799315, 13.511804>,  <8.376029, 9.769208, 13.713008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.248710, 9.799315, 13.511804>,  <8.036510, 9.849494, 13.176462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.248710, 9.799315, 13.511804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424516, -0.816720, -0.390838,
		0.733729, 0.563233, -0.380014,
		0.530498, -0.125447, 0.838353,
		8.407859, 9.761682, 13.763309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.727756, 9.761869, 12.972503>,  <8.036510, 9.849494, 13.176462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.727756, 9.761869, 12.972503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.699607, 9.591475, 13.333298>,  <8.682717, 9.489238, 13.549775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.699607, 9.591475, 13.333298>,  <8.727756, 9.761869, 12.972503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.699607, 9.591475, 13.333298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307794, -0.869381, -0.386574,
		0.948847, 0.250423, 0.192296,
		-0.070372, -0.425988, 0.901988,
		8.678495, 9.463678, 13.603894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.210739, 9.323793, 12.922844>,  <8.727756, 9.761869, 12.972503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.210739, 9.323793, 12.922844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.039821, 9.191095, 13.259264>,  <8.937270, 9.111477, 13.461116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.039821, 9.191095, 13.259264>,  <9.210739, 9.323793, 12.922844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.039821, 9.191095, 13.259264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366282, -0.914008, -0.174433,
		0.826593, 0.233527, 0.512063,
		-0.427295, -0.331744, 0.841050,
		8.911633, 9.091572, 13.511579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.762397, 9.010479, 13.267338>,  <9.210739, 9.323793, 12.922844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.762397, 9.010479, 13.267338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.407948, 8.873034, 13.391734>,  <9.195278, 8.790566, 13.466372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.407948, 8.873034, 13.391734>,  <9.762397, 9.010479, 13.267338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.407948, 8.873034, 13.391734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380083, -0.922776, 0.063412,
		0.265187, 0.174394, 0.948295,
		-0.886123, -0.343614, 0.310992,
		9.142111, 8.769949, 13.485032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.018091, 8.620029, 13.801227>,  <9.762397, 9.010479, 13.267338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.018091, 8.620029, 13.801227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.649888, 8.495687, 13.706541>,  <9.428966, 8.421082, 13.649730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.649888, 8.495687, 13.706541>,  <10.018091, 8.620029, 13.801227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.649888, 8.495687, 13.706541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321135, -0.947019, -0.005167,
		-0.222566, -0.080774, 0.971566,
		-0.920509, -0.310854, -0.236713,
		9.373735, 8.402431, 13.635527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.969198, 8.042569, 14.174164>,  <10.018091, 8.620029, 13.801227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.969198, 8.042569, 14.174164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.632723, 8.002795, 13.961556>,  <9.430838, 7.978931, 13.833992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.632723, 8.002795, 13.961556>,  <9.969198, 8.042569, 14.174164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.632723, 8.002795, 13.961556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095442, -0.994817, 0.035059,
		-0.532250, -0.021238, 0.846320,
		-0.841190, -0.099435, -0.531519,
		9.380366, 7.972965, 13.802101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.652229, 7.434057, 14.393414>,  <9.969198, 8.042569, 14.174164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.652229, 7.434057, 14.393414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.476162, 7.484240, 14.037770>,  <9.370522, 7.514350, 13.824385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.476162, 7.484240, 14.037770>,  <9.652229, 7.434057, 14.393414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.476162, 7.484240, 14.037770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092151, -0.978651, -0.183715,
		-0.893174, -0.162797, 0.419210,
		-0.440168, 0.125458, -0.889107,
		9.344111, 7.521878, 13.771038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.213331, 6.903085, 14.286117>,  <9.652229, 7.434057, 14.393414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.213331, 6.903085, 14.286117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.289247, 6.998942, 13.905265>,  <9.334796, 7.056456, 13.676754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.289247, 6.998942, 13.905265>,  <9.213331, 6.903085, 14.286117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.289247, 6.998942, 13.905265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061718, -0.970749, -0.232027,
		-0.979883, -0.014727, -0.199028,
		0.189789, 0.239643, -0.952130,
		9.346184, 7.070835, 13.619626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.867503, 6.475461, 13.851902>,  <9.213331, 6.903085, 14.286117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.867503, 6.475461, 13.851902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.156160, 6.604532, 13.606916>,  <9.329354, 6.681974, 13.459925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.156160, 6.604532, 13.606916>,  <8.867503, 6.475461, 13.851902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.156160, 6.604532, 13.606916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225309, -0.946031, -0.232941,
		-0.654574, 0.030107, -0.755398,
		0.721643, 0.322676, -0.612464,
		9.372653, 6.701334, 13.423177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.902966, 5.997792, 13.372361>,  <8.867503, 6.475461, 13.851902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.902966, 5.997792, 13.372361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.260478, 6.171351, 13.326945>,  <9.474985, 6.275486, 13.299696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.260478, 6.171351, 13.326945>,  <8.902966, 5.997792, 13.372361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.260478, 6.171351, 13.326945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419841, -0.898454, -0.128508,
		-0.157769, 0.067189, -0.985188,
		0.893780, 0.433896, -0.113539,
		9.528612, 6.301520, 13.292884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.164533, 5.752321, 12.790181>,  <8.902966, 5.997792, 13.372361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.164533, 5.752321, 12.790181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.437163, 5.843224, 13.068406>,  <9.600741, 5.897766, 13.235341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.437163, 5.843224, 13.068406>,  <9.164533, 5.752321, 12.790181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.437163, 5.843224, 13.068406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328906, -0.944262, -0.013780,
		0.653662, 0.238166, -0.718333,
		0.681576, 0.227256, 0.695563,
		9.641636, 5.911401, 13.277075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.608994, 5.261493, 12.733944>,  <9.164533, 5.752321, 12.790181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.608994, 5.261493, 12.733944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.733455, 5.404023, 13.086356>,  <9.808131, 5.489542, 13.297804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.733455, 5.404023, 13.086356>,  <9.608994, 5.261493, 12.733944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.733455, 5.404023, 13.086356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217120, -0.929185, 0.299122,
		0.925227, 0.098218, -0.366482,
		0.311151, 0.356326, 0.881032,
		9.826800, 5.510921, 13.350666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.048915, 4.572292, 12.635149>,  <9.608994, 5.261493, 12.733944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.048915, 4.572292, 12.635149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.656457, 4.624507, 12.578139>,  <9.420982, 4.655837, 12.543934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.656457, 4.624507, 12.578139>,  <10.048915, 4.572292, 12.635149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.656457, 4.624507, 12.578139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187443, 0.822417, -0.537117,
		0.047099, -0.553705, -0.831380,
		-0.981146, 0.130539, -0.142523,
		9.362113, 4.663669, 12.535382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.715757, 4.837269, 12.595304>,  <10.048915, 4.572292, 12.635149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.715757, 4.837269, 12.595304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.421163, 5.103719, 12.548206>,  <10.244406, 5.263589, 12.519948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.421163, 5.103719, 12.548206>,  <10.715757, 4.837269, 12.595304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.421163, 5.103719, 12.548206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092335, 0.271427, 0.958019,
		0.670120, 0.694697, -0.261409,
		-0.736487, 0.666125, -0.117744,
		10.200216, 5.303557, 12.512883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.899804, 5.385991, 12.755249>,  <10.715757, 4.837269, 12.595304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.899804, 5.385991, 12.755249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.506536, 5.426874, 12.815819>,  <10.270575, 5.451404, 12.852160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.506536, 5.426874, 12.815819>,  <10.899804, 5.385991, 12.755249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.506536, 5.426874, 12.815819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182309, 0.495394, 0.849322,
		0.011792, 0.862634, -0.505691,
		-0.983171, 0.102207, 0.151424,
		10.211584, 5.457536, 12.861246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.660134, 5.182934, 12.553700>,  <10.899804, 5.385991, 12.755249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.660134, 5.182934, 12.553700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.745930, 5.110862, 12.937686>,  <11.797407, 5.067619, 13.168077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.745930, 5.110862, 12.937686>,  <11.660134, 5.182934, 12.553700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.745930, 5.110862, 12.937686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677730, 0.680279, 0.279112,
		-0.703333, -0.710462, 0.023797,
		0.214487, -0.180180, 0.959964,
		11.810276, 5.056808, 13.225675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.084309, 5.494514, 13.104531>,  <11.660134, 5.182934, 12.553700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.084309, 5.494514, 13.104531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.352837, 5.720460, 12.912593>,  <12.513953, 5.856029, 12.797430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.352837, 5.720460, 12.912593>,  <12.084309, 5.494514, 13.104531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.352837, 5.720460, 12.912593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660777, 0.162892, -0.732694,
		-0.335712, 0.808944, 0.482604,
		0.671321, 0.564868, -0.479847,
		12.554233, 5.889921, 12.768639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.844960, 6.265928, 12.940958>,  <12.084309, 5.494514, 13.104531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.844960, 6.265928, 12.940958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.087330, 6.107111, 12.665215>,  <12.232752, 6.011821, 12.499770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.087330, 6.107111, 12.665215>,  <11.844960, 6.265928, 12.940958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.087330, 6.107111, 12.665215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714790, 0.108638, -0.690850,
		0.349187, 0.911348, -0.217975,
		0.605924, -0.397043, -0.689357,
		12.269107, 5.987998, 12.458408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.055416, 6.791722, 12.455469>,  <11.844960, 6.265928, 12.940958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.055416, 6.791722, 12.455469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.065286, 6.428758, 12.287662>,  <12.071208, 6.210979, 12.186977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.065286, 6.428758, 12.287662>,  <12.055416, 6.791722, 12.455469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.065286, 6.428758, 12.287662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779135, 0.245478, -0.576793,
		0.626371, 0.341093, -0.700939,
		0.024675, -0.907412, -0.419518,
		12.072688, 6.156534, 12.161806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.227870, 6.833739, 11.748455>,  <12.055416, 6.791722, 12.455469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.227870, 6.833739, 11.748455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.976631, 6.555758, 11.888475>,  <11.825888, 6.388969, 11.972487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.976631, 6.555758, 11.888475>,  <12.227870, 6.833739, 11.748455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.976631, 6.555758, 11.888475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735855, 0.384205, -0.557588,
		0.253006, -0.607806, -0.752702,
		-0.628097, -0.694952, 0.350051,
		11.788202, 6.347272, 11.993490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.486414, 7.474567, 12.203762>,  <12.227870, 6.833739, 11.748455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.486414, 7.474567, 12.203762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.169965, 7.618380, 12.401697>,  <11.980096, 7.704667, 12.520458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.169965, 7.618380, 12.401697>,  <12.486414, 7.474567, 12.203762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.169965, 7.618380, 12.401697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434284, 0.899865, 0.040505,
		-0.430724, 0.246944, -0.868041,
		-0.791122, 0.359530, 0.494838,
		11.932629, 7.726239, 12.550148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.545492, 8.062557, 12.012455>,  <12.486414, 7.474567, 12.203762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.545492, 8.062557, 12.012455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.280309, 8.090468, 12.310614>,  <12.121199, 8.107215, 12.489509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.280309, 8.090468, 12.310614>,  <12.545492, 8.062557, 12.012455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.280309, 8.090468, 12.310614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241667, 0.962293, 0.124859,
		-0.708578, 0.262915, -0.654823,
		-0.662959, 0.069777, 0.745397,
		12.081421, 8.111402, 12.534233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.136160, 8.663915, 11.912501>,  <12.545492, 8.062557, 12.012455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.136160, 8.663915, 11.912501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.067142, 8.601953, 12.301600>,  <12.025732, 8.564775, 12.535058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.067142, 8.601953, 12.301600>,  <12.136160, 8.663915, 11.912501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.067142, 8.601953, 12.301600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038187, 0.987866, 0.150540,
		-0.984261, -0.011171, -0.176366,
		-0.172545, -0.154906, 0.972745,
		12.015379, 8.555481, 12.593423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.688714, 9.196772, 12.066973>,  <12.136160, 8.663915, 11.912501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.688714, 9.196772, 12.066973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.841256, 9.051569, 12.407042>,  <11.932781, 8.964447, 12.611083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.841256, 9.051569, 12.407042>,  <11.688714, 9.196772, 12.066973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.841256, 9.051569, 12.407042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103887, 0.897020, 0.429609,
		-0.918573, -0.252155, 0.304372,
		0.381355, -0.363007, 0.850173,
		11.955663, 8.942667, 12.662093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.188507, 9.308711, 12.504286>,  <11.688714, 9.196772, 12.066973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.188507, 9.308711, 12.504286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.527749, 9.277947, 12.713972>,  <11.731295, 9.259489, 12.839784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.527749, 9.277947, 12.713972>,  <11.188507, 9.308711, 12.504286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.527749, 9.277947, 12.713972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241497, 0.824540, 0.511677,
		-0.471590, -0.560552, 0.680723,
		0.848105, -0.076910, 0.524217,
		11.782181, 9.254874, 12.871237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.027980, 9.394596, 13.220345>,  <11.188507, 9.308711, 12.504286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.027980, 9.394596, 13.220345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.419037, 9.478533, 13.214994>,  <11.653671, 9.528895, 13.211783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.419037, 9.478533, 13.214994>,  <11.027980, 9.394596, 13.220345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.419037, 9.478533, 13.214994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185332, 0.890011, 0.416573,
		0.099321, -0.404781, 0.909004,
		0.977644, 0.209842, -0.013378,
		11.712330, 9.541486, 13.210981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.090089, 9.788527, 13.868907>,  <11.027980, 9.394596, 13.220345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.090089, 9.788527, 13.868907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.410423, 9.892328, 13.653010>,  <11.602624, 9.954609, 13.523473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.410423, 9.892328, 13.653010>,  <11.090089, 9.788527, 13.868907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.410423, 9.892328, 13.653010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069438, 0.935401, 0.346705,
		0.594845, -0.240175, 0.767122,
		0.800836, 0.259503, -0.539741,
		11.650674, 9.970179, 13.491088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.688334, 10.092761, 14.317057>,  <11.090089, 9.788527, 13.868907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.688334, 10.092761, 14.317057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.745978, 10.227044, 13.944706>,  <11.780565, 10.307614, 13.721295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.745978, 10.227044, 13.944706>,  <11.688334, 10.092761, 14.317057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.745978, 10.227044, 13.944706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103063, 0.930489, 0.351523,
		0.984180, -0.146598, 0.099496,
		0.144112, 0.335708, -0.930877,
		11.789212, 10.327756, 13.665442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.221726, 10.592492, 14.375150>,  <11.688334, 10.092761, 14.317057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.221726, 10.592492, 14.375150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.067122, 10.703629, 14.023375>,  <11.974359, 10.770311, 13.812309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.067122, 10.703629, 14.023375>,  <12.221726, 10.592492, 14.375150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.067122, 10.703629, 14.023375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128946, 0.960458, 0.246768,
		0.913226, -0.018021, -0.407056,
		-0.386513, 0.277843, -0.879438,
		11.951168, 10.786983, 13.759543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.304069, 11.253614, 14.364355>,  <12.221726, 10.592492, 14.375150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.304069, 11.253614, 14.364355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.075405, 11.238175, 14.036522>,  <11.938208, 11.228912, 13.839822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.075405, 11.238175, 14.036522>,  <12.304069, 11.253614, 14.364355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.075405, 11.238175, 14.036522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161117, 0.984726, 0.066005,
		0.804517, 0.169781, -0.569145,
		-0.571658, -0.038597, -0.819584,
		11.903908, 11.226596, 13.790647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.541990, 11.817985, 13.811152>,  <12.304069, 11.253614, 14.364355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.541990, 11.817985, 13.811152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.156676, 11.727576, 13.753187>,  <11.925488, 11.673331, 13.718409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.156676, 11.727576, 13.753187>,  <12.541990, 11.817985, 13.811152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.156676, 11.727576, 13.753187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241827, 0.964881, 0.102586,
		0.116635, 0.133863, -0.984113,
		-0.963284, -0.226020, -0.144911,
		11.867691, 11.659770, 13.709714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.211998, 12.449756, 13.608497>,  <12.541990, 11.817985, 13.811152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.211998, 12.449756, 13.608497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.901578, 12.211041, 13.690073>,  <11.715326, 12.067813, 13.739019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.901578, 12.211041, 13.690073>,  <12.211998, 12.449756, 13.608497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.901578, 12.211041, 13.690073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510708, 0.784400, 0.351984,
		-0.370031, 0.169003, -0.913518,
		-0.776050, -0.596786, 0.203942,
		11.668763, 12.032005, 13.751255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.684407, 12.830479, 13.356066>,  <12.211998, 12.449756, 13.608497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.684407, 12.830479, 13.356066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.506623, 12.585392, 13.617457>,  <11.399953, 12.438340, 13.774292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.506623, 12.585392, 13.617457>,  <11.684407, 12.830479, 13.356066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.506623, 12.585392, 13.617457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618157, 0.737754, 0.271297,
		-0.648334, -0.283372, -0.706656,
		-0.444460, -0.612715, 0.653479,
		11.373285, 12.401577, 13.813501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.024779, 12.959592, 13.228054>,  <11.684407, 12.830479, 13.356066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.024779, 12.959592, 13.228054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.030524, 12.776110, 13.583443>,  <11.033971, 12.666020, 13.796676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.030524, 12.776110, 13.583443>,  <11.024779, 12.959592, 13.228054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.030524, 12.776110, 13.583443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640742, 0.677929, 0.360363,
		-0.767622, -0.574457, -0.284176,
		0.014362, -0.458706, 0.888472,
		11.034833, 12.638498, 13.849984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.358592, 13.032184, 13.411051>,  <11.024779, 12.959592, 13.228054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.358592, 13.032184, 13.411051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.531012, 12.930803, 13.757452>,  <10.634463, 12.869975, 13.965293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.531012, 12.930803, 13.757452>,  <10.358592, 13.032184, 13.411051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.531012, 12.930803, 13.757452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494163, 0.736714, 0.461579,
		-0.754984, -0.626909, 0.192313,
		0.431048, -0.253450, 0.866003,
		10.660326, 12.854768, 14.017253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.818056, 12.936889, 13.845830>,  <10.358592, 13.032184, 13.411051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.818056, 12.936889, 13.845830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.128995, 13.004376, 14.088240>,  <10.315558, 13.044869, 14.233685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.128995, 13.004376, 14.088240>,  <9.818056, 12.936889, 13.845830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.128995, 13.004376, 14.088240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564717, 0.611627, 0.554083,
		-0.277177, -0.772947, 0.570725,
		0.777347, 0.168719, 0.606025,
		10.362199, 13.054993, 14.270047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.591696, 12.834349, 14.562947>,  <9.818056, 12.936889, 13.845830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.591696, 12.834349, 14.562947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.916003, 13.062083, 14.617371>,  <10.110587, 13.198724, 14.650024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.916003, 13.062083, 14.617371>,  <9.591696, 12.834349, 14.562947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.916003, 13.062083, 14.617371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555484, 0.674989, 0.485620,
		0.184643, -0.469304, 0.863517,
		0.810768, 0.569336, 0.136059,
		10.159234, 13.232883, 14.658188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.531627, 12.835610, 15.259056>,  <9.591696, 12.834349, 14.562947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.531627, 12.835610, 15.259056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.743991, 13.143530, 15.117328>,  <9.871409, 13.328281, 15.032290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.743991, 13.143530, 15.117328>,  <9.531627, 12.835610, 15.259056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.743991, 13.143530, 15.117328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648789, 0.638210, 0.414441,
		0.545167, 0.009848, 0.838270,
		0.530910, 0.769799, -0.354320,
		9.903264, 13.374470, 15.011031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.752295, 13.327027, 15.897952>,  <9.531627, 12.835610, 15.259056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.752295, 13.327027, 15.897952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.740521, 13.521144, 15.548409>,  <9.733458, 13.637613, 15.338684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.740521, 13.521144, 15.548409>,  <9.752295, 13.327027, 15.897952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.740521, 13.521144, 15.548409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344213, 0.815844, 0.464668,
		0.938430, 0.314469, 0.143030,
		-0.029434, 0.485291, -0.873857,
		9.731691, 13.666731, 15.286252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.750519, 14.053981, 16.251369>,  <9.752295, 13.327027, 15.897952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.750519, 14.053981, 16.251369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.678462, 14.132536, 15.865834>,  <9.635228, 14.179669, 15.634514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.678462, 14.132536, 15.865834>,  <9.750519, 14.053981, 16.251369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.678462, 14.132536, 15.865834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422537, 0.869405, 0.256120,
		0.888263, 0.453394, -0.073635,
		-0.180142, 0.196389, -0.963836,
		9.624419, 14.191453, 15.576683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.875553, 14.745062, 16.138947>,  <9.750519, 14.053981, 16.251369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.875553, 14.745062, 16.138947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.652799, 14.672717, 15.814683>,  <9.519146, 14.629311, 15.620125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.652799, 14.672717, 15.814683>,  <9.875553, 14.745062, 16.138947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.652799, 14.672717, 15.814683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561370, 0.801293, 0.206864,
		0.612162, 0.570279, -0.547759,
		-0.556886, -0.180862, -0.810658,
		9.485733, 14.618459, 15.571486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.460851, 14.890837, 16.632986>,  <9.875553, 14.745062, 16.138947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.460851, 14.890837, 16.632986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.829706, 15.028153, 16.561644>,  <11.051020, 15.110543, 16.518839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.829706, 15.028153, 16.561644>,  <10.460851, 14.890837, 16.632986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.829706, 15.028153, 16.561644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227109, -0.107152, 0.967957,
		0.313181, -0.933096, -0.176774,
		0.922138, 0.343293, -0.178357,
		11.106348, 15.131142, 16.508137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.913305, 14.468305, 16.942379>,  <10.460851, 14.890837, 16.632986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.913305, 14.468305, 16.942379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.149199, 14.791206, 16.932968>,  <11.290736, 14.984947, 16.927322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.149199, 14.791206, 16.932968>,  <10.913305, 14.468305, 16.942379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.149199, 14.791206, 16.932968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140756, -0.074056, 0.987271,
		0.795235, -0.585541, -0.157299,
		0.589736, 0.807253, -0.023526,
		11.326120, 15.033382, 16.925911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.531711, 14.366910, 17.339825>,  <10.913305, 14.468305, 16.942379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.531711, 14.366910, 17.339825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.512660, 14.765461, 17.311647>,  <11.501230, 15.004592, 17.294741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.512660, 14.765461, 17.311647>,  <11.531711, 14.366910, 17.339825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.512660, 14.765461, 17.311647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203944, 0.078738, 0.975811,
		0.977824, 0.032107, -0.206955,
		-0.047626, 0.996378, -0.070444,
		11.498372, 15.064374, 17.290514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.260865, 14.593843, 17.484106>,  <11.531711, 14.366910, 17.339825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.260865, 14.593843, 17.484106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.947147, 14.824987, 17.574404>,  <11.758917, 14.963674, 17.628582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.947147, 14.824987, 17.574404>,  <12.260865, 14.593843, 17.484106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.947147, 14.824987, 17.574404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284338, 0.011414, 0.958656,
		0.551392, 0.816057, -0.173259,
		-0.784295, 0.577859, 0.225743,
		11.711859, 14.998345, 17.642126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.493614, 15.316882, 17.753101>,  <12.260865, 14.593843, 17.484106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.493614, 15.316882, 17.753101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.160726, 15.175570, 17.924028>,  <11.960993, 15.090782, 18.026585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.160726, 15.175570, 17.924028>,  <12.493614, 15.316882, 17.753101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.160726, 15.175570, 17.924028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470581, -0.042518, 0.881332,
		-0.293190, 0.934550, 0.201632,
		-0.832221, -0.353282, 0.427316,
		11.911059, 15.069585, 18.052223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.348080, 15.712248, 18.468985>,  <12.493614, 15.316882, 17.753101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.348080, 15.712248, 18.468985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.181426, 15.349617, 18.442047>,  <12.081433, 15.132039, 18.425884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.181426, 15.349617, 18.442047>,  <12.348080, 15.712248, 18.468985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.181426, 15.349617, 18.442047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306241, -0.209716, 0.928567,
		-0.855939, 0.366250, 0.365006,
		-0.416635, -0.906576, -0.067343,
		12.056436, 15.077644, 18.421844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.839498, 15.531424, 18.907207>,  <12.348080, 15.712248, 18.468985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.839498, 15.531424, 18.907207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.098186, 15.238957, 18.820356>,  <12.253400, 15.063478, 18.768246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.098186, 15.238957, 18.820356>,  <11.839498, 15.531424, 18.907207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.098186, 15.238957, 18.820356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157104, -0.150872, 0.975990,
		-0.746370, -0.665307, 0.017296,
		0.646723, -0.731166, -0.217129,
		12.292204, 15.019608, 18.755219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.703790, 14.823073, 19.282261>,  <11.839498, 15.531424, 18.907207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.703790, 14.823073, 19.282261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.095428, 14.869248, 19.215275>,  <12.330412, 14.896954, 19.175083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.095428, 14.869248, 19.215275>,  <11.703790, 14.823073, 19.282261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.095428, 14.869248, 19.215275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189765, -0.222096, 0.956380,
		0.073210, -0.968167, -0.239359,
		0.979096, 0.115439, -0.167465,
		12.389157, 14.903880, 19.165035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.012992, 14.189710, 19.632046>,  <11.703790, 14.823073, 19.282261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.012992, 14.189710, 19.632046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.303497, 14.458734, 19.575186>,  <12.477800, 14.620148, 19.541071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.303497, 14.458734, 19.575186>,  <12.012992, 14.189710, 19.632046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.303497, 14.458734, 19.575186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414078, -0.262963, 0.871430,
		0.548709, -0.691748, -0.469472,
		0.726263, 0.672559, -0.142147,
		12.521377, 14.660501, 19.532541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.610040, 13.818374, 19.745764>,  <12.012992, 14.189710, 19.632046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.610040, 13.818374, 19.745764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.731177, 14.198874, 19.769125>,  <12.803860, 14.427174, 19.783142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.731177, 14.198874, 19.769125>,  <12.610040, 13.818374, 19.745764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.731177, 14.198874, 19.769125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486481, -0.206994, 0.848817,
		0.819526, -0.228645, -0.525451,
		0.302843, 0.951249, 0.058405,
		12.822030, 14.484248, 19.786646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.240601, 13.824168, 20.180197>,  <12.610040, 13.818374, 19.745764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.240601, 13.824168, 20.180197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.085422, 14.192134, 20.203014>,  <12.992314, 14.412913, 20.216705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.085422, 14.192134, 20.203014>,  <13.240601, 13.824168, 20.180197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.085422, 14.192134, 20.203014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246051, 0.043724, 0.968270,
		0.888232, 0.389673, -0.243308,
		-0.387947, 0.919915, 0.057042,
		12.969038, 14.468108, 20.220127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.752760, 14.187183, 20.513475>,  <13.240601, 13.824168, 20.180197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.752760, 14.187183, 20.513475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.443697, 14.437872, 20.553915>,  <13.258259, 14.588285, 20.578178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.443697, 14.437872, 20.553915>,  <13.752760, 14.187183, 20.513475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.443697, 14.437872, 20.553915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185461, 0.070540, 0.980117,
		0.607128, 0.776044, -0.170735,
		-0.772657, 0.626721, 0.101099,
		13.211900, 14.625888, 20.584246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.011950, 14.716121, 20.816143>,  <13.752760, 14.187183, 20.513475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.011950, 14.716121, 20.816143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.624752, 14.731067, 20.915411>,  <13.392433, 14.740034, 20.974972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.624752, 14.731067, 20.915411>,  <14.011950, 14.716121, 20.816143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.624752, 14.731067, 20.915411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250897, 0.167601, 0.953394,
		-0.005971, 0.985147, -0.171612,
		-0.967995, 0.037364, 0.248171,
		13.334353, 14.742276, 20.989862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.989303, 15.221088, 21.370918>,  <14.011950, 14.716121, 20.816143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.989303, 15.221088, 21.370918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.625328, 15.055326, 21.377674>,  <13.406943, 14.955869, 21.381727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.625328, 15.055326, 21.377674>,  <13.989303, 15.221088, 21.370918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.625328, 15.055326, 21.377674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045541, 0.140313, 0.989059,
		-0.412242, 0.899211, -0.146548,
		-0.909936, -0.414405, 0.016892,
		13.352347, 14.931005, 21.382742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.579271, 15.642601, 21.868002>,  <13.989303, 15.221088, 21.370918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.579271, 15.642601, 21.868002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.352743, 15.313634, 21.846426>,  <13.216826, 15.116254, 21.833481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.352743, 15.313634, 21.846426>,  <13.579271, 15.642601, 21.868002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.352743, 15.313634, 21.846426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165162, 0.049124, 0.985042,
		-0.807466, 0.566760, -0.163652,
		-0.566321, -0.822417, -0.053941,
		13.182847, 15.066909, 21.830244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.930091, 15.819583, 22.285442>,  <13.579271, 15.642601, 21.868002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.930091, 15.819583, 22.285442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.022577, 15.430457, 22.280209>,  <13.078070, 15.196981, 22.277069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.022577, 15.430457, 22.280209>,  <12.930091, 15.819583, 22.285442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.022577, 15.430457, 22.280209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074966, -0.031223, 0.996697,
		-0.970010, -0.229472, -0.080147,
		0.231217, -0.972814, -0.013084,
		13.091943, 15.138613, 22.276283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.420981, 15.508278, 22.689121>,  <12.930091, 15.819583, 22.285442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.420981, 15.508278, 22.689121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.703003, 15.224617, 22.689726>,  <12.872216, 15.054420, 22.690088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.703003, 15.224617, 22.689726>,  <12.420981, 15.508278, 22.689121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.703003, 15.224617, 22.689726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060696, -0.058220, 0.996457,
		-0.706552, -0.702647, -0.084091,
		0.705053, -0.709153, 0.001513,
		12.914519, 15.011871, 22.690180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.111801, 14.909177, 23.136267>,  <12.420981, 15.508278, 22.689121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.111801, 14.909177, 23.136267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.508692, 14.860869, 23.124254>,  <12.746826, 14.831885, 23.117046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.508692, 14.860869, 23.124254>,  <12.111801, 14.909177, 23.136267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.508692, 14.860869, 23.124254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019880, -0.084393, 0.996234,
		-0.122847, -0.989087, -0.081336,
		0.992226, -0.120768, -0.030031,
		12.806359, 14.824638, 23.115246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.346889, 14.347939, 23.651533>,  <12.111801, 14.909177, 23.136267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.346889, 14.347939, 23.651533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.702564, 14.520502, 23.590567>,  <12.915970, 14.624040, 23.553988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.702564, 14.520502, 23.590567>,  <12.346889, 14.347939, 23.651533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.702564, 14.520502, 23.590567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271532, -0.229448, 0.934678,
		0.368257, -0.872491, -0.321164,
		0.889189, 0.431408, -0.152414,
		12.969321, 14.649924, 23.544842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.769725, 13.922890, 24.064507>,  <12.346889, 14.347939, 23.651533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.769725, 13.922890, 24.064507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.920917, 14.289591, 24.012823>,  <13.011632, 14.509611, 23.981813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.920917, 14.289591, 24.012823>,  <12.769725, 13.922890, 24.064507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.920917, 14.289591, 24.012823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335569, -0.005587, 0.941999,
		0.862858, -0.399415, -0.309746,
		0.377979, 0.916753, -0.129210,
		13.034310, 14.564617, 23.974060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.454842, 13.923283, 24.327440>,  <12.769725, 13.922890, 24.064507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.454842, 13.923283, 24.327440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.368069, 14.313668, 24.319084>,  <13.316005, 14.547899, 24.314070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.368069, 14.313668, 24.319084>,  <13.454842, 13.923283, 24.327440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.368069, 14.313668, 24.319084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399132, 0.108206, 0.910486,
		0.890861, 0.189177, -0.413012,
		-0.216933, 0.975963, -0.020890,
		13.302989, 14.606457, 24.312817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.045477, 14.185011, 24.520412>,  <13.454842, 13.923283, 24.327440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.045477, 14.185011, 24.520412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.768028, 14.470596, 24.558666>,  <13.601560, 14.641948, 24.581619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.768028, 14.470596, 24.558666>,  <14.045477, 14.185011, 24.520412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.768028, 14.470596, 24.558666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463902, 0.341172, 0.817555,
		0.551077, 0.611439, -0.567853,
		-0.693621, 0.713964, 0.095636,
		13.559942, 14.684786, 24.587357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.500471, 14.823165, 24.635691>,  <14.045477, 14.185011, 24.520412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.500471, 14.823165, 24.635691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.128229, 14.862961, 24.776588>,  <13.904884, 14.886839, 24.861128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.128229, 14.862961, 24.776588>,  <14.500471, 14.823165, 24.635691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.128229, 14.862961, 24.776588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361124, 0.406538, 0.839235,
		-0.059706, 0.908201, -0.414255,
		-0.930605, 0.099490, 0.352245,
		13.849048, 14.892808, 24.882261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.323889, 15.565874, 24.830786>,  <14.500471, 14.823165, 24.635691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.323889, 15.565874, 24.830786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.089929, 15.321006, 25.043631>,  <13.949553, 15.174086, 25.171337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.089929, 15.321006, 25.043631>,  <14.323889, 15.565874, 24.830786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.089929, 15.321006, 25.043631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351239, 0.400169, 0.846461,
		-0.731112, 0.681992, -0.019041,
		-0.584899, -0.612170, 0.532110,
		13.914459, 15.137355, 25.203264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.161124, 15.964016, 25.326004>,  <14.323889, 15.565874, 24.830786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.161124, 15.964016, 25.326004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.035298, 15.610312, 25.464067>,  <13.959803, 15.398090, 25.546906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.035298, 15.610312, 25.464067>,  <14.161124, 15.964016, 25.326004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.035298, 15.610312, 25.464067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235546, 0.279532, 0.930795,
		-0.919547, 0.374097, 0.120353,
		-0.314565, -0.884258, 0.345160,
		13.940928, 15.345035, 25.567616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.692310, 16.009636, 25.856306>,  <14.161124, 15.964016, 25.326004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.692310, 16.009636, 25.856306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.842449, 15.642918, 25.910852>,  <13.932532, 15.422886, 25.943581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.842449, 15.642918, 25.910852>,  <13.692310, 16.009636, 25.856306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.842449, 15.642918, 25.910852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067696, 0.173848, 0.982443,
		-0.924408, -0.359526, 0.127317,
		0.375348, -0.916797, 0.136368,
		13.955053, 15.367878, 25.951763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.351040, 15.888821, 26.413593>,  <13.692310, 16.009636, 25.856306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.351040, 15.888821, 26.413593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.652628, 15.626059, 26.412930>,  <13.833581, 15.468401, 26.412531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.652628, 15.626059, 26.412930>,  <13.351040, 15.888821, 26.413593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.652628, 15.626059, 26.412930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163425, 0.185129, 0.969030,
		-0.636255, -0.730892, 0.246937,
		0.753971, -0.656906, -0.001657,
		13.878819, 15.428987, 26.412432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.154701, 15.380866, 27.001282>,  <13.351040, 15.888821, 26.413593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.154701, 15.380866, 27.001282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.544095, 15.379820, 26.909788>,  <13.777732, 15.379192, 26.854893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.544095, 15.379820, 26.909788>,  <13.154701, 15.380866, 27.001282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.544095, 15.379820, 26.909788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225667, 0.174556, 0.958439,
		0.037417, -0.984644, 0.170518,
		0.973486, -0.002618, -0.228734,
		13.836141, 15.379035, 26.841167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.569484, 14.929646, 27.498392>,  <13.154701, 15.380866, 27.001282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.569484, 14.929646, 27.498392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.863914, 15.152087, 27.344021>,  <14.040573, 15.285552, 27.251398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.863914, 15.152087, 27.344021>,  <13.569484, 14.929646, 27.498392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.863914, 15.152087, 27.344021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439736, 0.040600, 0.897209,
		0.514609, -0.830121, -0.214654,
		0.736077, 0.556103, -0.385927,
		14.084738, 15.318918, 27.228243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.170153, 14.792004, 27.936054>,  <13.569484, 14.929646, 27.498392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.170153, 14.792004, 27.936054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.299573, 15.124483, 27.755201>,  <14.377225, 15.323971, 27.646690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.299573, 15.124483, 27.755201>,  <14.170153, 14.792004, 27.936054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.299573, 15.124483, 27.755201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614483, 0.178782, 0.768406,
		0.719531, -0.526446, -0.452912,
		0.323552, 0.831199, -0.452132,
		14.396639, 15.373842, 27.619562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.938112, 14.692224, 27.979637>,  <14.170153, 14.792004, 27.936054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.938112, 14.692224, 27.979637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.865330, 15.082584, 27.931459>,  <14.821660, 15.316801, 27.902552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.865330, 15.082584, 27.931459>,  <14.938112, 14.692224, 27.979637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.865330, 15.082584, 27.931459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569616, 0.204455, 0.796075,
		0.801517, 0.076243, -0.593091,
		-0.181956, 0.975902, -0.120446,
		14.810743, 15.375355, 27.895327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.544613, 15.032094, 28.026596>,  <14.938112, 14.692224, 27.979637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.544613, 15.032094, 28.026596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.310129, 15.351262, 28.082718>,  <15.169439, 15.542763, 28.116390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.310129, 15.351262, 28.082718>,  <15.544613, 15.032094, 28.026596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.310129, 15.351262, 28.082718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540450, 0.256131, 0.801443,
		0.603551, 0.545639, -0.581381,
		-0.586208, 0.797919, 0.140303,
		15.134267, 15.590638, 28.124809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.967775, 15.537100, 28.201103>,  <15.544613, 15.032094, 28.026596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.967775, 15.537100, 28.201103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.625642, 15.691567, 28.339251>,  <15.420362, 15.784248, 28.422138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.625642, 15.691567, 28.339251>,  <15.967775, 15.537100, 28.201103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.625642, 15.691567, 28.339251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504478, 0.469071, 0.724896,
		0.117931, 0.794258, -0.596026,
		-0.855333, 0.386169, 0.345368,
		15.369042, 15.807418, 28.442862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.126799, 16.244429, 28.177502>,  <15.967775, 15.537100, 28.201103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.126799, 16.244429, 28.177502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.831304, 16.182230, 28.439825>,  <15.654006, 16.144911, 28.597219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.831304, 16.182230, 28.439825>,  <16.126799, 16.244429, 28.177502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.831304, 16.182230, 28.439825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477306, 0.566290, 0.671933,
		-0.475860, 0.809405, -0.344123,
		-0.738740, -0.155495, 0.655809,
		15.609682, 16.135582, 28.636568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.913714, 16.913952, 28.445538>,  <16.126799, 16.244429, 28.177502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.913714, 16.913952, 28.445538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.748357, 16.687658, 28.730928>,  <15.649142, 16.551882, 28.902163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.748357, 16.687658, 28.730928>,  <15.913714, 16.913952, 28.445538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.748357, 16.687658, 28.730928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367623, 0.613167, 0.699199,
		-0.833042, 0.551336, -0.045502,
		-0.413394, -0.565734, 0.713477,
		15.624338, 16.517939, 28.944971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.689598, 17.406893, 29.019550>,  <15.913714, 16.913952, 28.445538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.689598, 17.406893, 29.019550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.683545, 17.042334, 29.184050>,  <15.679914, 16.823599, 29.282749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.683545, 17.042334, 29.184050>,  <15.689598, 17.406893, 29.019550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.683545, 17.042334, 29.184050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282762, 0.390606, 0.876055,
		-0.959071, 0.129542, 0.251798,
		-0.015132, -0.911398, 0.411248,
		15.679006, 16.768915, 29.307425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.287128, 17.539194, 29.680010>,  <15.689598, 17.406893, 29.019550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.287128, 17.539194, 29.680010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.532185, 17.223583, 29.698360>,  <15.679218, 17.034216, 29.709370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.532185, 17.223583, 29.698360>,  <15.287128, 17.539194, 29.680010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.532185, 17.223583, 29.698360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426913, 0.379207, 0.820943,
		-0.665144, -0.483358, 0.569165,
		0.612640, -0.789029, 0.045875,
		15.715977, 16.986874, 29.712124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.326391, 17.428827, 30.360785>,  <15.287128, 17.539194, 29.680010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.326391, 17.428827, 30.360785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.649535, 17.244120, 30.214287>,  <15.843422, 17.133295, 30.126389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.649535, 17.244120, 30.214287>,  <15.326391, 17.428827, 30.360785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.649535, 17.244120, 30.214287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580907, 0.518898, 0.627130,
		-0.099546, -0.719386, 0.687440,
		0.807860, -0.461767, -0.366242,
		15.891893, 17.105589, 30.104414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.763130, 17.233177, 30.943121>,  <15.326391, 17.428827, 30.360785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.763130, 17.233177, 30.943121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.019567, 17.195356, 30.638475>,  <16.173429, 17.172663, 30.455688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.019567, 17.195356, 30.638475>,  <15.763130, 17.233177, 30.943121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.019567, 17.195356, 30.638475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747625, 0.301115, 0.591935,
		0.173364, -0.948889, 0.263733,
		0.641094, -0.094553, -0.761615,
		16.211895, 17.166990, 30.409990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.262043, 16.793379, 31.272421>,  <15.763130, 17.233177, 30.943121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.262043, 16.793379, 31.272421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.433004, 16.988033, 30.967655>,  <16.535582, 17.104826, 30.784796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.433004, 16.988033, 30.967655>,  <16.262043, 16.793379, 31.272421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.433004, 16.988033, 30.967655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826103, 0.132142, 0.547807,
		0.367263, -0.863554, -0.345533,
		0.427401, 0.486635, -0.761915,
		16.561224, 17.134024, 30.739080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.989326, 16.495291, 31.279051>,  <16.262043, 16.793379, 31.272421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.989326, 16.495291, 31.279051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.976391, 16.837854, 31.072939>,  <16.968630, 17.043392, 30.949272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.976391, 16.837854, 31.072939>,  <16.989326, 16.495291, 31.279051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.976391, 16.837854, 31.072939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867034, 0.280504, 0.411788,
		0.497198, -0.433448, -0.751609,
		-0.032340, 0.856411, -0.515280,
		16.966688, 17.094778, 30.918354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.745686, 16.651653, 31.111864>,  <16.989326, 16.495291, 31.279051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.745686, 16.651653, 31.111864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.506987, 16.970638, 31.076208>,  <17.363768, 17.162029, 31.054815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.506987, 16.970638, 31.076208>,  <17.745686, 16.651653, 31.111864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.506987, 16.970638, 31.076208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678442, 0.560736, 0.474649,
		0.428499, 0.222770, -0.875650,
		-0.596745, 0.797464, -0.089138,
		17.327963, 17.209877, 31.049467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.216787, 17.221018, 30.973873>,  <17.745686, 16.651653, 31.111864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.216787, 17.221018, 30.973873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.874498, 17.355627, 31.131096>,  <17.669125, 17.436394, 31.225430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.874498, 17.355627, 31.131096>,  <18.216787, 17.221018, 30.973873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.874498, 17.355627, 31.131096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505620, 0.705247, 0.496966,
		-0.109961, 0.624001, -0.773648,
		-0.855721, 0.336525, 0.393057,
		17.617783, 17.456585, 31.249012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.167067, 17.902990, 30.856361>,  <18.216787, 17.221018, 30.973873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.167067, 17.902990, 30.856361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.982399, 17.801315, 31.196302>,  <17.871597, 17.740311, 31.400267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.982399, 17.801315, 31.196302>,  <18.167067, 17.902990, 30.856361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.982399, 17.801315, 31.196302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559628, 0.659876, 0.501378,
		-0.688242, 0.707073, -0.162394,
		-0.461670, -0.254189, 0.849852,
		17.843899, 17.725058, 31.451258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.171568, 18.477497, 31.134859>,  <18.167067, 17.902990, 30.856361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.171568, 18.477497, 31.134859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.101690, 18.238476, 31.447887>,  <18.059763, 18.095064, 31.635704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.101690, 18.238476, 31.447887>,  <18.171568, 18.477497, 31.134859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.101690, 18.238476, 31.447887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589154, 0.573374, 0.569333,
		-0.788911, 0.560512, 0.251885,
		-0.174693, -0.597552, 0.782569,
		18.049282, 18.059210, 31.682657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.902739, 18.847382, 31.710592>,  <18.171568, 18.477497, 31.134859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.902739, 18.847382, 31.710592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.065508, 18.538195, 31.905298>,  <18.163170, 18.352682, 32.022121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.065508, 18.538195, 31.905298>,  <17.902739, 18.847382, 31.710592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.065508, 18.538195, 31.905298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331505, 0.621511, 0.709809,
		-0.851187, -0.127471, 0.509147,
		0.406921, -0.772965, 0.486765,
		18.187584, 18.306305, 32.051327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.104649, 19.140484, 32.339703>,  <17.902739, 18.847382, 31.710592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.104649, 19.140484, 32.339703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.257036, 18.773737, 32.387398>,  <18.348469, 18.553690, 32.416016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.257036, 18.773737, 32.387398>,  <18.104649, 19.140484, 32.339703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.257036, 18.773737, 32.387398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485324, 0.308075, 0.818260,
		-0.786970, -0.253862, 0.562345,
		0.380970, -0.916866, 0.119241,
		18.371326, 18.498676, 32.423168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.913063, 18.866667, 32.970486>,  <18.104649, 19.140484, 32.339703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.913063, 18.866667, 32.970486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.258146, 18.731670, 32.819843>,  <18.465197, 18.650673, 32.729458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.258146, 18.731670, 32.819843>,  <17.913063, 18.866667, 32.970486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.258146, 18.731670, 32.819843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505180, 0.541349, 0.672112,
		-0.022955, -0.770092, 0.637520,
		0.862709, -0.337491, -0.376608,
		18.516958, 18.630423, 32.706860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.270477, 18.580484, 33.478817>,  <17.913063, 18.866667, 32.970486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.270477, 18.580484, 33.478817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.566595, 18.684195, 33.230709>,  <18.744267, 18.746420, 33.081844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.566595, 18.684195, 33.230709>,  <18.270477, 18.580484, 33.478817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.566595, 18.684195, 33.230709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475313, 0.450633, 0.755650,
		0.475435, -0.854229, 0.210366,
		0.740296, 0.259273, -0.620274,
		18.788683, 18.761976, 33.044628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.027618, 18.322592, 33.637661>,  <18.270477, 18.580484, 33.478817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.027618, 18.322592, 33.637661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.011713, 18.671211, 33.442184>,  <19.002169, 18.880383, 33.324898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.011713, 18.671211, 33.442184>,  <19.027618, 18.322592, 33.637661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.011713, 18.671211, 33.442184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291128, 0.477965, 0.828730,
		0.955857, -0.109317, -0.272739,
		-0.039766, 0.871550, -0.488692,
		18.999783, 18.932676, 33.295578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.642002, 18.585407, 33.596436>,  <19.027618, 18.322592, 33.637661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.642002, 18.585407, 33.596436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.396748, 18.899311, 33.632694>,  <19.249596, 19.087654, 33.654449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.396748, 18.899311, 33.632694>,  <19.642002, 18.585407, 33.596436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.396748, 18.899311, 33.632694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557883, 0.348890, 0.753022,
		0.559314, 0.512277, -0.651721,
		-0.613135, 0.784760, 0.090651,
		19.212807, 19.134739, 33.659889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.466599, 18.374304, 34.325672>,  <19.642002, 18.585407, 33.596436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.466599, 18.374304, 34.325672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.819841, 18.362097, 34.138401>,  <20.031788, 18.354773, 34.026039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.819841, 18.362097, 34.138401>,  <19.466599, 18.374304, 34.325672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.819841, 18.362097, 34.138401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448546, 0.347524, 0.823428,
		0.137575, -0.937175, 0.320588,
		0.883108, -0.030516, -0.468177,
		20.084774, 18.352942, 33.997948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.893261, 17.883171, 34.682487>,  <19.466599, 18.374304, 34.325672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.893261, 17.883171, 34.682487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.104284, 18.177485, 34.512642>,  <20.230898, 18.354073, 34.410732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.104284, 18.177485, 34.512642>,  <19.893261, 17.883171, 34.682487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.104284, 18.177485, 34.512642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483749, 0.150684, 0.862137,
		0.698331, -0.660238, -0.276441,
		0.527560, 0.735785, -0.424617,
		20.262552, 18.398220, 34.385258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.608112, 17.793890, 34.881752>,  <19.893261, 17.883171, 34.682487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.608112, 17.793890, 34.881752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.515882, 18.170860, 34.784863>,  <20.460545, 18.397041, 34.726730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.515882, 18.170860, 34.784863>,  <20.608112, 17.793890, 34.881752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.515882, 18.170860, 34.784863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569946, 0.332565, 0.751373,
		0.788667, 0.035194, -0.613812,
		-0.230576, 0.942424, -0.242224,
		20.446711, 18.453587, 34.712196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.964966, 17.886518, 34.200256>,  <20.608112, 17.793890, 34.881752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.964966, 17.886518, 34.200256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.084187, 18.262547, 34.266510>,  <21.155718, 18.488163, 34.306263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.084187, 18.262547, 34.266510>,  <20.964966, 17.886518, 34.200256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.084187, 18.262547, 34.266510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204422, 0.106636, -0.973057,
		-0.932404, 0.323880, -0.160388,
		0.298051, 0.940069, 0.165636,
		21.173601, 18.544567, 34.316200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.857969, 18.347958, 33.618816>,  <20.964966, 17.886518, 34.200256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.857969, 18.347958, 33.618816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.155943, 18.542706, 33.801258>,  <21.334726, 18.659554, 33.910725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.155943, 18.542706, 33.801258>,  <20.857969, 18.347958, 33.618816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.155943, 18.542706, 33.801258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351095, 0.295234, -0.888577,
		-0.567279, 0.822067, 0.048992,
		0.744934, 0.486870, 0.456104,
		21.379423, 18.688766, 33.938087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.844278, 18.952562, 33.425785>,  <20.857969, 18.347958, 33.618816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.844278, 18.952562, 33.425785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.222691, 18.865259, 33.521610>,  <21.449738, 18.812878, 33.579105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.222691, 18.865259, 33.521610>,  <20.844278, 18.952562, 33.425785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.222691, 18.865259, 33.521610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286098, 0.215239, -0.933713,
		0.152227, 0.951859, 0.266065,
		0.946031, -0.218257, 0.239560,
		21.506500, 18.799782, 33.593479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.167034, 19.512428, 33.176758>,  <20.844278, 18.952562, 33.425785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.167034, 19.512428, 33.176758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.409264, 19.195526, 33.206726>,  <21.554602, 19.005384, 33.224709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.409264, 19.195526, 33.206726>,  <21.167034, 19.512428, 33.176758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.409264, 19.195526, 33.206726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223686, 0.079114, -0.971445,
		0.763705, 0.605040, 0.225126,
		0.605573, -0.792255, 0.074919,
		21.590935, 18.957850, 33.229202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.850004, 19.613806, 32.833294>,  <21.167034, 19.512428, 33.176758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.850004, 19.613806, 32.833294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.743004, 19.229326, 32.806343>,  <21.678804, 18.998638, 32.790173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.743004, 19.229326, 32.806343>,  <21.850004, 19.613806, 32.833294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.743004, 19.229326, 32.806343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088514, 0.045115, -0.995053,
		0.959484, -0.272139, 0.073011,
		-0.267499, -0.961200, -0.067375,
		21.662754, 18.940966, 32.786129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.374180, 19.135122, 32.466637>,  <21.850004, 19.613806, 32.833294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.374180, 19.135122, 32.466637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.998234, 19.009277, 32.413467>,  <21.772665, 18.933771, 32.381565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.998234, 19.009277, 32.413467>,  <22.374180, 19.135122, 32.466637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.998234, 19.009277, 32.413467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134014, 0.018277, -0.990811,
		0.314149, -0.949045, 0.024984,
		-0.939867, -0.314611, -0.132927,
		21.716274, 18.914894, 32.373589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.305859, 18.761927, 31.985725>,  <22.374180, 19.135122, 32.466637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.305859, 18.761927, 31.985725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.910450, 18.814865, 31.956568>,  <21.673204, 18.846628, 31.939074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.910450, 18.814865, 31.956568>,  <22.305859, 18.761927, 31.985725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.910450, 18.814865, 31.956568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047669, -0.184641, -0.981649,
		-0.143375, -0.973855, 0.176213,
		-0.988520, 0.132344, -0.072896,
		21.613894, 18.854568, 31.934698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.963169, 18.123508, 31.604139>,  <22.305859, 18.761927, 31.985725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.963169, 18.123508, 31.604139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.724054, 18.442503, 31.571484>,  <21.580585, 18.633900, 31.551889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.724054, 18.442503, 31.571484>,  <21.963169, 18.123508, 31.604139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.724054, 18.442503, 31.571484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011553, -0.110398, -0.993820,
		-0.801571, -0.593151, 0.075208,
		-0.597788, 0.797487, -0.081639,
		21.544718, 18.681749, 31.546991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.426777, 18.015589, 31.152088>,  <21.963169, 18.123508, 31.604139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.426777, 18.015589, 31.152088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.435703, 18.415257, 31.165709>,  <21.441059, 18.655058, 31.173880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.435703, 18.415257, 31.165709>,  <21.426777, 18.015589, 31.152088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.435703, 18.415257, 31.165709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154022, 0.037088, -0.987371,
		-0.987815, 0.016792, 0.154722,
		0.022318, 0.999171, 0.034049,
		21.442398, 18.715008, 31.175924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.797974, 18.211252, 30.848263>,  <21.426777, 18.015589, 31.152088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.797974, 18.211252, 30.848263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.057722, 18.514977, 30.831470>,  <21.213572, 18.697212, 30.821396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.057722, 18.514977, 30.831470>,  <20.797974, 18.211252, 30.848263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.057722, 18.514977, 30.831470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285691, 0.192423, -0.938805,
		-0.704768, 0.621626, 0.341883,
		0.649371, 0.759312, -0.041980,
		21.252533, 18.742769, 30.818876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.364550, 18.797001, 30.549057>,  <20.797974, 18.211252, 30.848263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.364550, 18.797001, 30.549057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.748989, 18.898479, 30.505373>,  <20.979652, 18.959366, 30.479162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.748989, 18.898479, 30.505373>,  <20.364550, 18.797001, 30.549057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.748989, 18.898479, 30.505373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173448, 0.246649, -0.953457,
		-0.214951, 0.935309, 0.281057,
		0.961099, 0.253695, -0.109210,
		21.037319, 18.974588, 30.472610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.295517, 19.350939, 30.084312>,  <20.364550, 18.797001, 30.549057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.295517, 19.350939, 30.084312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.682125, 19.248312, 30.085577>,  <20.914089, 19.186735, 30.086336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.682125, 19.248312, 30.085577>,  <20.295517, 19.350939, 30.084312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.682125, 19.248312, 30.085577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116875, 0.429241, -0.895596,
		0.228424, 0.865982, 0.444857,
		0.966521, -0.256569, 0.003163,
		20.972082, 19.171341, 30.086525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.576313, 19.784163, 29.638575>,  <20.295517, 19.350939, 30.084312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.576313, 19.784163, 29.638575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.880014, 19.525570, 29.668493>,  <21.062235, 19.370415, 29.686445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.880014, 19.525570, 29.668493>,  <20.576313, 19.784163, 29.638575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.880014, 19.525570, 29.668493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091637, -0.007584, -0.995764,
		0.644311, 0.762891, 0.053484,
		0.759254, -0.646482, 0.074796,
		21.107790, 19.331625, 29.690931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.147247, 20.097687, 29.163237>,  <20.576313, 19.784163, 29.638575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.147247, 20.097687, 29.163237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.184156, 19.703274, 29.218697>,  <21.206303, 19.466625, 29.251972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.184156, 19.703274, 29.218697>,  <21.147247, 20.097687, 29.163237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.184156, 19.703274, 29.218697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036339, -0.142488, -0.989129,
		0.995071, 0.086231, -0.048979,
		0.092272, -0.986033, 0.138652,
		21.211838, 19.407463, 29.260292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.734385, 19.783279, 28.759481>,  <21.147247, 20.097687, 29.163237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.734385, 19.783279, 28.759481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.473349, 19.489990, 28.835913>,  <21.316727, 19.314016, 28.881771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.473349, 19.489990, 28.835913>,  <21.734385, 19.783279, 28.759481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.473349, 19.489990, 28.835913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084921, -0.321366, -0.943140,
		0.752938, -0.599257, 0.271986,
		-0.652590, -0.733223, 0.191079,
		21.277571, 19.270023, 28.893236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.934587, 19.146420, 28.416348>,  <21.734385, 19.783279, 28.759481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.934587, 19.146420, 28.416348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.546619, 19.066540, 28.472029>,  <21.313839, 19.018612, 28.505438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.546619, 19.066540, 28.472029>,  <21.934587, 19.146420, 28.416348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.546619, 19.066540, 28.472029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148067, 0.030076, -0.988520,
		0.193223, -0.979395, -0.058740,
		-0.969918, -0.199702, 0.139205,
		21.255644, 19.006630, 28.513790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.821653, 18.659260, 27.956055>,  <21.934587, 19.146420, 28.416348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.821653, 18.659260, 27.956055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.453209, 18.789675, 28.041143>,  <21.232141, 18.867924, 28.092196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.453209, 18.789675, 28.041143>,  <21.821653, 18.659260, 27.956055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.453209, 18.789675, 28.041143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275006, -0.158204, -0.948337,
		-0.275543, -0.932024, 0.235386,
		-0.921112, 0.326041, 0.212720,
		21.176874, 18.887486, 28.104959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.452538, 18.220938, 27.668461>,  <21.821653, 18.659260, 27.956055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.452538, 18.220938, 27.668461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.182898, 18.512260, 27.717718>,  <21.021114, 18.687054, 27.747272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.182898, 18.512260, 27.717718>,  <21.452538, 18.220938, 27.668461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.182898, 18.512260, 27.717718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350782, -0.168933, -0.921094,
		-0.650034, -0.664104, 0.369353,
		-0.674097, 0.728305, 0.123144,
		20.980669, 18.730751, 27.754662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.738497, 18.036415, 27.501188>,  <21.452538, 18.220938, 27.668461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.738497, 18.036415, 27.501188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.799006, 18.428274, 27.448412>,  <20.835310, 18.663389, 27.416746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.799006, 18.428274, 27.448412>,  <20.738497, 18.036415, 27.501188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.799006, 18.428274, 27.448412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343831, -0.072998, -0.936190,
		-0.926767, 0.186985, 0.325791,
		0.151271, 0.979647, -0.131943,
		20.844387, 18.722168, 27.408829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.141090, 18.255823, 27.103331>,  <20.738497, 18.036415, 27.501188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.141090, 18.255823, 27.103331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.433035, 18.524780, 27.054028>,  <20.608202, 18.686153, 27.024445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.433035, 18.524780, 27.054028>,  <20.141090, 18.255823, 27.103331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.433035, 18.524780, 27.054028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106747, -0.065996, -0.992094,
		-0.675210, 0.737248, 0.023608,
		0.729861, 0.672392, -0.123260,
		20.651993, 18.726498, 27.017050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.954887, 18.756376, 26.740593>,  <20.141090, 18.255823, 27.103331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.954887, 18.756376, 26.740593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.350847, 18.749178, 26.684345>,  <20.588423, 18.744860, 26.650597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.350847, 18.749178, 26.684345>,  <19.954887, 18.756376, 26.740593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.350847, 18.749178, 26.684345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141633, -0.082797, -0.986451,
		0.006108, 0.996404, -0.084509,
		0.989900, -0.017994, -0.140618,
		20.647818, 18.743780, 26.642160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.155455, 19.192192, 26.175013>,  <19.954887, 18.756376, 26.740593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.155455, 19.192192, 26.175013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.450914, 18.924215, 26.204880>,  <20.628189, 18.763430, 26.222799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.450914, 18.924215, 26.204880>,  <20.155455, 19.192192, 26.175013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.450914, 18.924215, 26.204880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007600, -0.119036, -0.992861,
		0.674048, 0.732808, -0.093017,
		0.738649, -0.669943, 0.074666,
		20.672508, 18.723232, 26.227280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.543686, 19.436247, 25.652672>,  <20.155455, 19.192192, 26.175013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.543686, 19.436247, 25.652672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.644302, 19.057230, 25.731558>,  <20.704672, 18.829821, 25.778889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.644302, 19.057230, 25.731558>,  <20.543686, 19.436247, 25.652672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.644302, 19.057230, 25.731558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170873, -0.244043, -0.954592,
		0.952644, 0.206421, -0.223296,
		0.251541, -0.947541, 0.197214,
		20.719765, 18.772968, 25.790722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.933355, 19.227612, 25.057877>,  <20.543686, 19.436247, 25.652672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.933355, 19.227612, 25.057877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.854828, 18.875420, 25.230486>,  <20.807711, 18.664104, 25.334051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.854828, 18.875420, 25.230486>,  <20.933355, 19.227612, 25.057877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.854828, 18.875420, 25.230486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222674, -0.388557, -0.894114,
		0.954921, -0.271622, -0.119779,
		-0.196320, -0.880480, 0.431524,
		20.795931, 18.611275, 25.359943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.217293, 18.731503, 24.547140>,  <20.933355, 19.227612, 25.057877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.217293, 18.731503, 24.547140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.954391, 18.536833, 24.777328>,  <20.796650, 18.420031, 24.915442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.954391, 18.536833, 24.777328>,  <21.217293, 18.731503, 24.547140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.954391, 18.536833, 24.777328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343755, -0.485929, -0.803558,
		0.670709, -0.725962, 0.152082,
		-0.657254, -0.486674, 0.575470,
		20.757215, 18.390831, 24.949970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.345179, 18.044298, 24.374468>,  <21.217293, 18.731503, 24.547140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.345179, 18.044298, 24.374468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.978603, 18.057291, 24.534008>,  <20.758657, 18.065086, 24.629732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.978603, 18.057291, 24.534008>,  <21.345179, 18.044298, 24.374468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.978603, 18.057291, 24.534008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351850, -0.540201, -0.764450,
		0.190629, -0.840909, 0.506491,
		-0.916440, 0.032483, 0.398852,
		20.703671, 18.067036, 24.653664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.068892, 17.376341, 24.184706>,  <21.345179, 18.044298, 24.374468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.068892, 17.376341, 24.184706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.756931, 17.617146, 24.253218>,  <20.569756, 17.761629, 24.294325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.756931, 17.617146, 24.253218>,  <21.068892, 17.376341, 24.184706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.756931, 17.617146, 24.253218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394764, -0.260753, -0.881005,
		-0.485713, -0.754711, 0.441014,
		-0.779899, 0.602012, 0.171282,
		20.522961, 17.797749, 24.304602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.527794, 17.028185, 23.964933>,  <21.068892, 17.376341, 24.184706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.527794, 17.028185, 23.964933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.353867, 17.387661, 23.987869>,  <20.249510, 17.603346, 24.001631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.353867, 17.387661, 23.987869>,  <20.527794, 17.028185, 23.964933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.353867, 17.387661, 23.987869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529090, -0.203429, -0.823821,
		-0.728695, -0.388550, 0.563943,
		-0.434818, 0.898691, 0.057340,
		20.223421, 17.657269, 24.005072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.879488, 16.858656, 23.996321>,  <20.527794, 17.028185, 23.964933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.879488, 16.858656, 23.996321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.870106, 17.234581, 23.859970>,  <19.864475, 17.460136, 23.778160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.870106, 17.234581, 23.859970>,  <19.879488, 16.858656, 23.996321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.870106, 17.234581, 23.859970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669383, -0.268022, -0.692885,
		-0.742547, 0.211925, 0.635383,
		-0.023457, 0.939814, -0.340878,
		19.863070, 17.516525, 23.757706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.162712, 17.035391, 24.023592>,  <19.879488, 16.858656, 23.996321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.162712, 17.035391, 24.023592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.346674, 17.259943, 23.748394>,  <19.457050, 17.394674, 23.583275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.346674, 17.259943, 23.748394>,  <19.162712, 17.035391, 24.023592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.346674, 17.259943, 23.748394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753410, -0.163369, -0.636933,
		-0.469961, 0.811271, 0.347817,
		0.459903, 0.561383, -0.687996,
		19.484644, 17.428358, 23.541996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.561045, 17.440996, 23.751404>,  <19.162712, 17.035391, 24.023592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.561045, 17.440996, 23.751404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.847603, 17.482119, 23.475372>,  <19.019539, 17.506792, 23.309753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.847603, 17.482119, 23.475372>,  <18.561045, 17.440996, 23.751404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.847603, 17.482119, 23.475372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682700, -0.100654, -0.723733,
		-0.143864, 0.989596, -0.001922,
		0.716396, 0.102807, -0.690078,
		19.062521, 17.512960, 23.268349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.203386, 17.849403, 23.232834>,  <18.561045, 17.440996, 23.751404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.203386, 17.849403, 23.232834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.536755, 17.682795, 23.087551>,  <18.736776, 17.582829, 23.000381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.536755, 17.682795, 23.087551>,  <18.203386, 17.849403, 23.232834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.536755, 17.682795, 23.087551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509821, -0.325823, -0.796192,
		0.213290, 0.848733, -0.483899,
		0.833420, -0.416522, -0.363208,
		18.786781, 17.557838, 22.978588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.222137, 18.060856, 22.594608>,  <18.203386, 17.849403, 23.232834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.222137, 18.060856, 22.594608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.422417, 17.719896, 22.654894>,  <18.542583, 17.515320, 22.691065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.422417, 17.719896, 22.654894>,  <18.222137, 18.060856, 22.594608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.422417, 17.719896, 22.654894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606619, -0.469729, -0.641380,
		0.617507, 0.229713, -0.752275,
		0.500698, -0.852401, 0.150712,
		18.572626, 17.464176, 22.700108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.245489, 17.890591, 21.983625>,  <18.222137, 18.060856, 22.594608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.245489, 17.890591, 21.983625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.369261, 17.550697, 22.154371>,  <18.443523, 17.346762, 22.256819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.369261, 17.550697, 22.154371>,  <18.245489, 17.890591, 21.983625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.369261, 17.550697, 22.154371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490640, -0.527190, -0.693789,
		0.814571, 0.005242, -0.580040,
		0.309428, -0.849731, 0.426862,
		18.462090, 17.295778, 22.282431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.627073, 17.412443, 21.408602>,  <18.245489, 17.890591, 21.983625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.627073, 17.412443, 21.408602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.484266, 17.172241, 21.694799>,  <18.398582, 17.028120, 21.866518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.484266, 17.172241, 21.694799>,  <18.627073, 17.412443, 21.408602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.484266, 17.172241, 21.694799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509176, -0.517058, -0.688034,
		0.783120, -0.609953, -0.121164,
		-0.357019, -0.600507, 0.715492,
		18.377161, 16.992088, 21.909447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.688953, 16.758301, 21.073780>,  <18.627073, 17.412443, 21.408602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.688953, 16.758301, 21.073780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.425665, 16.694515, 21.368076>,  <18.267693, 16.656244, 21.544655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.425665, 16.694515, 21.368076>,  <18.688953, 16.758301, 21.073780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.425665, 16.694515, 21.368076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522367, -0.607009, -0.598893,
		0.542105, -0.778531, 0.316247,
		-0.658221, -0.159466, 0.735741,
		18.228199, 16.646675, 21.588799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.597090, 16.110437, 21.054117>,  <18.688953, 16.758301, 21.073780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.597090, 16.110437, 21.054117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.281881, 16.266890, 21.244291>,  <18.092756, 16.360762, 21.358395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.281881, 16.266890, 21.244291>,  <18.597090, 16.110437, 21.054117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.281881, 16.266890, 21.244291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614565, -0.545526, -0.569834,
		0.036481, -0.741227, 0.670263,
		-0.788022, 0.391131, 0.475433,
		18.045475, 16.384230, 21.386921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.059294, 15.638389, 20.896305>,  <18.597090, 16.110437, 21.054117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.059294, 15.638389, 20.896305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.851067, 15.943705, 21.049353>,  <17.726130, 16.126894, 21.141182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.851067, 15.943705, 21.049353>,  <18.059294, 15.638389, 20.896305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.851067, 15.943705, 21.049353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746197, -0.188915, -0.638359,
		-0.414970, -0.617819, 0.667907,
		-0.520568, 0.763290, 0.382620,
		17.694897, 16.172691, 21.164139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.486639, 15.389198, 21.052361>,  <18.059294, 15.638389, 20.896305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.486639, 15.389198, 21.052361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.425520, 15.779712, 20.991011>,  <17.388849, 16.014019, 20.954201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.425520, 15.779712, 20.991011>,  <17.486639, 15.389198, 21.052361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.425520, 15.779712, 20.991011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770379, -0.214878, -0.600286,
		-0.619006, 0.026436, 0.784941,
		-0.152798, 0.976283, -0.153377,
		17.379681, 16.072598, 20.944998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.869862, 15.364618, 20.890440>,  <17.486639, 15.389198, 21.052361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.869862, 15.364618, 20.890440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.915133, 15.751965, 20.801483>,  <16.942295, 15.984372, 20.748110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.915133, 15.751965, 20.801483>,  <16.869862, 15.364618, 20.890440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.915133, 15.751965, 20.801483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673778, -0.089699, -0.733469,
		-0.730215, 0.232854, 0.642312,
		0.113176, 0.968366, -0.222391,
		16.949085, 16.042475, 20.734766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.230516, 15.694536, 20.927134>,  <16.869862, 15.364618, 20.890440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.230516, 15.694536, 20.927134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.467819, 15.875372, 20.660702>,  <16.610201, 15.983873, 20.500843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.467819, 15.875372, 20.660702>,  <16.230516, 15.694536, 20.927134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.467819, 15.875372, 20.660702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697229, -0.125028, -0.705861,
		-0.402391, 0.883166, 0.241036,
		0.593256, 0.452090, -0.666079,
		16.645796, 16.011000, 20.460878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.742821, 15.918899, 20.539913>,  <16.230516, 15.694536, 20.927134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.742821, 15.918899, 20.539913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.068924, 15.985007, 20.317907>,  <16.264585, 16.024673, 20.184704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.068924, 15.985007, 20.317907>,  <15.742821, 15.918899, 20.539913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.068924, 15.985007, 20.317907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554074, -0.056076, -0.830576,
		-0.168394, 0.984653, 0.045857,
		0.815258, 0.165272, -0.555014,
		16.313501, 16.034590, 20.151403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.630788, 16.523491, 20.085005>,  <15.742821, 15.918899, 20.539913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.630788, 16.523491, 20.085005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.927126, 16.306799, 19.926168>,  <16.104929, 16.176785, 19.830868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.927126, 16.306799, 19.926168>,  <15.630788, 16.523491, 20.085005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.927126, 16.306799, 19.926168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392082, 0.131223, -0.910523,
		0.545363, 0.830247, -0.115186,
		0.740844, -0.541728, -0.397089,
		16.149380, 16.144281, 19.807041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.873332, 16.892717, 19.598440>,  <15.630788, 16.523491, 20.085005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.873332, 16.892717, 19.598440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.956619, 16.510317, 19.515776>,  <16.006592, 16.280876, 19.466177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.956619, 16.510317, 19.515776>,  <15.873332, 16.892717, 19.598440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.956619, 16.510317, 19.515776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484247, 0.082816, -0.871003,
		0.849794, 0.281432, -0.445697,
		0.208217, -0.956001, -0.206659,
		16.019085, 16.223516, 19.453777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.142809, 16.894487, 18.870646>,  <15.873332, 16.892717, 19.598440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.142809, 16.894487, 18.870646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.056219, 16.505711, 18.907448>,  <16.004265, 16.272444, 18.929529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.056219, 16.505711, 18.907448>,  <16.142809, 16.894487, 18.870646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.056219, 16.505711, 18.907448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397999, 0.001801, -0.917384,
		0.891479, -0.235211, -0.387222,
		-0.216476, -0.971943, 0.092008,
		15.991277, 16.214128, 18.935051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.038691, 17.724667, 18.986553>,  <16.142809, 16.894487, 18.870646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.038691, 17.724667, 18.986553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.224855, 18.045542, 18.836948>,  <16.336554, 18.238068, 18.747185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.224855, 18.045542, 18.836948>,  <16.038691, 17.724667, 18.986553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.224855, 18.045542, 18.836948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828066, -0.245409, 0.504064,
		0.312569, -0.544303, -0.778482,
		0.465411, 0.802189, -0.374012,
		16.364479, 18.286198, 18.724745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.716051, 17.473888, 18.853191>,  <16.038691, 17.724667, 18.986553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.716051, 17.473888, 18.853191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.696558, 17.873049, 18.870251>,  <16.684862, 18.112545, 18.880486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.696558, 17.873049, 18.870251>,  <16.716051, 17.473888, 18.853191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.696558, 17.873049, 18.870251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817542, 0.015321, 0.575665,
		0.573804, 0.062921, -0.816572,
		-0.048732, 0.997901, 0.042649,
		16.681938, 18.172419, 18.883045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.389221, 17.801914, 18.737835>,  <16.716051, 17.473888, 18.853191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.389221, 17.801914, 18.737835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.183144, 18.071604, 18.949493>,  <17.059496, 18.233418, 19.076488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.183144, 18.071604, 18.949493>,  <17.389221, 17.801914, 18.737835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.183144, 18.071604, 18.949493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784517, 0.122370, 0.607914,
		0.345119, 0.728317, -0.591985,
		-0.515196, 0.674225, 0.529145,
		17.028585, 18.273870, 19.108236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.917549, 18.295017, 18.874653>,  <17.389221, 17.801914, 18.737835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.917549, 18.295017, 18.874653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.614773, 18.382576, 19.120945>,  <17.433107, 18.435112, 19.268721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.614773, 18.382576, 19.120945>,  <17.917549, 18.295017, 18.874653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.614773, 18.382576, 19.120945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644852, 0.402819, 0.649540,
		-0.105846, 0.888719, -0.446067,
		-0.756943, 0.218896, 0.615729,
		17.387690, 18.448244, 19.305664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.261662, 18.825863, 19.238947>,  <17.917549, 18.295017, 18.874653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.261662, 18.825863, 19.238947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.943361, 18.707867, 19.450518>,  <17.752382, 18.637070, 19.577461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.943361, 18.707867, 19.450518>,  <18.261662, 18.825863, 19.238947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.943361, 18.707867, 19.450518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396733, 0.405970, 0.823280,
		-0.457588, 0.864968, -0.206018,
		-0.795749, -0.294989, 0.528929,
		17.704638, 18.619370, 19.609196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.861719, 19.463289, 19.516027>,  <18.261662, 18.825863, 19.238947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.861719, 19.463289, 19.516027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.811794, 19.136557, 19.741312>,  <17.781839, 18.940517, 19.876482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.811794, 19.136557, 19.741312>,  <17.861719, 19.463289, 19.516027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.811794, 19.136557, 19.741312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433704, 0.465629, 0.771421,
		-0.892369, 0.340550, 0.296147,
		-0.124813, -0.816833, 0.563210,
		17.774351, 18.891506, 19.910275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.633650, 19.747925, 20.128761>,  <17.861719, 19.463289, 19.516027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.633650, 19.747925, 20.128761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.710869, 19.378792, 20.262094>,  <17.757200, 19.157312, 20.342094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.710869, 19.378792, 20.262094>,  <17.633650, 19.747925, 20.128761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.710869, 19.378792, 20.262094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193377, 0.368844, 0.909153,
		-0.961945, -0.111051, 0.249660,
		0.193048, -0.922834, 0.333333,
		17.768784, 19.101942, 20.362095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.342337, 19.727180, 20.840746>,  <17.633650, 19.747925, 20.128761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.342337, 19.727180, 20.840746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.624422, 19.445057, 20.811861>,  <17.793674, 19.275784, 20.794531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.624422, 19.445057, 20.811861>,  <17.342337, 19.727180, 20.840746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.624422, 19.445057, 20.811861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267651, 0.170527, 0.948306,
		-0.656533, -0.688086, 0.309034,
		0.705214, -0.705307, -0.072210,
		17.835987, 19.233465, 20.790197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.464300, 19.518036, 21.509281>,  <17.342337, 19.727180, 20.840746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.464300, 19.518036, 21.509281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.782101, 19.369129, 21.317369>,  <17.972780, 19.279785, 21.202223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.782101, 19.369129, 21.317369>,  <17.464300, 19.518036, 21.509281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.782101, 19.369129, 21.317369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557579, 0.134206, 0.819203,
		-0.240573, -0.918372, 0.314195,
		0.794500, -0.372267, -0.479779,
		18.020451, 19.257450, 21.173435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.891754, 19.197668, 22.053123>,  <17.464300, 19.518036, 21.509281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.891754, 19.197668, 22.053123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.146751, 19.243164, 21.748318>,  <18.299749, 19.270462, 21.565434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.146751, 19.243164, 21.748318>,  <17.891754, 19.197668, 22.053123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.146751, 19.243164, 21.748318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718537, 0.269161, 0.641293,
		0.278056, -0.956354, 0.089849,
		0.637487, 0.113756, -0.762017,
		18.337999, 19.277287, 21.519712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.464453, 19.024086, 22.336727>,  <17.891754, 19.197668, 22.053123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.464453, 19.024086, 22.336727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.535398, 19.231552, 22.002176>,  <18.577967, 19.356031, 21.801445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.535398, 19.231552, 22.002176>,  <18.464453, 19.024086, 22.336727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.535398, 19.231552, 22.002176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651825, 0.574813, 0.494686,
		0.737338, -0.632912, -0.236127,
		0.177364, 0.518664, -0.836379,
		18.588608, 19.387152, 21.751263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.153614, 19.053928, 22.237206>,  <18.464453, 19.024086, 22.336727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.153614, 19.053928, 22.237206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.007179, 19.375769, 22.050186>,  <18.919319, 19.568872, 21.937975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.007179, 19.375769, 22.050186>,  <19.153614, 19.053928, 22.237206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.007179, 19.375769, 22.050186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716640, 0.564264, 0.409918,
		0.593640, -0.184998, -0.783177,
		-0.366085, 0.804600, -0.467547,
		18.897354, 19.617149, 21.909922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.727684, 19.412245, 22.049833>,  <19.153614, 19.053928, 22.237206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.727684, 19.412245, 22.049833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.444939, 19.691618, 22.005041>,  <19.275291, 19.859241, 21.978165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.444939, 19.691618, 22.005041>,  <19.727684, 19.412245, 22.049833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.444939, 19.691618, 22.005041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614414, 0.684687, 0.392045,
		0.350489, 0.208318, -0.913105,
		-0.706861, 0.698432, -0.111982,
		19.232880, 19.901148, 21.971447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.095350, 19.943230, 21.727854>,  <19.727684, 19.412245, 22.049833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.095350, 19.943230, 21.727854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.772284, 20.079323, 21.920485>,  <19.578444, 20.160978, 22.036062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.772284, 20.079323, 21.920485>,  <20.095350, 19.943230, 21.727854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.772284, 20.079323, 21.920485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587398, 0.535401, 0.606884,
		-0.051353, 0.773037, -0.632279,
		-0.807667, 0.340234, 0.481575,
		19.529984, 20.181393, 22.064957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.249111, 20.654894, 21.817545>,  <20.095350, 19.943230, 21.727854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.249111, 20.654894, 21.817545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.950235, 20.579002, 22.072327>,  <19.770910, 20.533468, 22.225197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.950235, 20.579002, 22.072327>,  <20.249111, 20.654894, 21.817545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.950235, 20.579002, 22.072327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551415, 0.358040, 0.753491,
		-0.371015, 0.914227, -0.162904,
		-0.747188, -0.189729, 0.636956,
		19.726078, 20.522083, 22.263414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.145811, 21.210642, 22.231663>,  <20.249111, 20.654894, 21.817545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.145811, 21.210642, 22.231663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.973566, 20.924089, 22.451252>,  <19.870218, 20.752157, 22.583006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.973566, 20.924089, 22.451252>,  <20.145811, 21.210642, 22.231663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.973566, 20.924089, 22.451252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192816, 0.521191, 0.831373,
		-0.881700, 0.463850, -0.086302,
		-0.430612, -0.716382, 0.548972,
		19.844383, 20.709175, 22.615944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.796871, 21.585167, 22.830130>,  <20.145811, 21.210642, 22.231663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.796871, 21.585167, 22.830130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.826046, 21.208588, 22.961800>,  <19.843552, 20.982639, 23.040802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.826046, 21.208588, 22.961800>,  <19.796871, 21.585167, 22.830130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.826046, 21.208588, 22.961800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270232, 0.336362, 0.902128,
		-0.960028, 0.023153, 0.278944,
		0.072939, -0.941448, 0.329173,
		19.847927, 20.926153, 23.060551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.578640, 21.661491, 23.478828>,  <19.796871, 21.585167, 22.830130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.578640, 21.661491, 23.478828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.742428, 21.296757, 23.466919>,  <19.840700, 21.077915, 23.459772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.742428, 21.296757, 23.466919>,  <19.578640, 21.661491, 23.478828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.742428, 21.296757, 23.466919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393452, 0.147049, 0.907509,
		-0.823123, -0.383311, 0.418976,
		0.409469, -0.911838, -0.029775,
		19.865269, 21.023205, 23.457987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.319660, 21.358013, 24.138876>,  <19.578640, 21.661491, 23.478828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.319660, 21.358013, 24.138876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.648521, 21.167503, 24.014153>,  <19.845839, 21.053198, 23.939318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.648521, 21.167503, 24.014153>,  <19.319660, 21.358013, 24.138876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.648521, 21.167503, 24.014153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420424, 0.138714, 0.896662,
		-0.383804, -0.868287, 0.314281,
		0.822155, -0.476273, -0.311810,
		19.895168, 21.024622, 23.920610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.434284, 20.851900, 24.630507>,  <19.319660, 21.358013, 24.138876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.434284, 20.851900, 24.630507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.767345, 20.949612, 24.431702>,  <19.967182, 21.008240, 24.312420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.767345, 20.949612, 24.431702>,  <19.434284, 20.851900, 24.630507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.767345, 20.949612, 24.431702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511740, 0.003671, 0.859133,
		0.211694, -0.969697, -0.121951,
		0.832651, 0.244281, -0.497010,
		20.017141, 21.022896, 24.282598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.045145, 20.372522, 24.794250>,  <19.434284, 20.851900, 24.630507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.045145, 20.372522, 24.794250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.196791, 20.723890, 24.677872>,  <20.287779, 20.934711, 24.608044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.196791, 20.723890, 24.677872>,  <20.045145, 20.372522, 24.794250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.196791, 20.723890, 24.677872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631173, -0.015551, 0.775486,
		0.676677, -0.477638, -0.560331,
		0.379115, 0.878419, -0.290949,
		20.310526, 20.987415, 24.590588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.667488, 20.187531, 25.027056>,  <20.045145, 20.372522, 24.794250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.667488, 20.187531, 25.027056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.660440, 20.582022, 24.961277>,  <20.656212, 20.818716, 24.921810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.660440, 20.582022, 24.961277>,  <20.667488, 20.187531, 25.027056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.660440, 20.582022, 24.961277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488313, 0.152012, 0.859327,
		0.872491, -0.065161, -0.484266,
		-0.017620, 0.986228, -0.164448,
		20.655155, 20.877890, 24.911943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.342377, 20.485813, 25.276884>,  <20.667488, 20.187531, 25.027056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.342377, 20.485813, 25.276884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.104336, 20.807199, 25.270010>,  <20.961512, 21.000031, 25.265886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.104336, 20.807199, 25.270010>,  <21.342377, 20.485813, 25.276884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.104336, 20.807199, 25.270010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402283, 0.316335, 0.859128,
		0.695716, 0.504357, -0.511472,
		-0.595104, 0.803465, -0.017185,
		20.925804, 21.048239, 25.264854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.755047, 20.981524, 25.498188>,  <21.342377, 20.485813, 25.276884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.755047, 20.981524, 25.498188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.374565, 21.090565, 25.556009>,  <21.146276, 21.155991, 25.590702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.374565, 21.090565, 25.556009>,  <21.755047, 20.981524, 25.498188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.374565, 21.090565, 25.556009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176654, 0.097020, 0.979480,
		0.252986, 0.957222, -0.140442,
		-0.951205, 0.272604, 0.144552,
		21.089203, 21.172346, 25.599375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.758615, 21.574165, 25.847784>,  <21.755047, 20.981524, 25.498188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.758615, 21.574165, 25.847784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.391014, 21.448088, 25.942511>,  <21.170452, 21.372440, 25.999346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.391014, 21.448088, 25.942511>,  <21.758615, 21.574165, 25.847784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.391014, 21.448088, 25.942511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221905, 0.082939, 0.971534,
		-0.325863, 0.945396, -0.006278,
		-0.919006, -0.315194, 0.236815,
		21.115313, 21.353529, 26.013556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.562761, 21.984610, 26.349548>,  <21.758615, 21.574165, 25.847784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.562761, 21.984610, 26.349548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.341425, 21.655937, 26.404184>,  <21.208624, 21.458735, 26.436966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.341425, 21.655937, 26.404184>,  <21.562761, 21.984610, 26.349548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.341425, 21.655937, 26.404184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085793, 0.106889, 0.990563,
		-0.828525, 0.559837, 0.011348,
		-0.553341, -0.821679, 0.136591,
		21.175423, 21.409433, 26.445162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.991949, 22.224186, 26.838783>,  <21.562761, 21.984610, 26.349548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.991949, 22.224186, 26.838783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.041702, 21.828800, 26.873341>,  <21.071554, 21.591568, 26.894075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.041702, 21.828800, 26.873341>,  <20.991949, 22.224186, 26.838783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.041702, 21.828800, 26.873341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012641, 0.085485, 0.996259,
		-0.992154, -0.125008, -0.001862,
		0.124381, -0.988466, 0.086394,
		21.079016, 21.532261, 26.899260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.504129, 22.009275, 27.338020>,  <20.991949, 22.224186, 26.838783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.504129, 22.009275, 27.338020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.770327, 21.711578, 27.315311>,  <20.930044, 21.532961, 27.301685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.770327, 21.711578, 27.315311>,  <20.504129, 22.009275, 27.338020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.770327, 21.711578, 27.315311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131184, 0.041745, 0.990479,
		-0.734786, -0.666604, 0.125414,
		0.665493, -0.744242, -0.056774,
		20.969975, 21.488306, 27.298279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.466068, 21.702467, 27.962519>,  <20.504129, 22.009275, 27.338020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.466068, 21.702467, 27.962519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.812428, 21.571964, 27.810848>,  <21.020243, 21.493664, 27.719847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.812428, 21.571964, 27.810848>,  <20.466068, 21.702467, 27.962519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.812428, 21.571964, 27.810848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369910, -0.092629, 0.924438,
		-0.336726, -0.940732, 0.040478,
		0.865900, -0.326255, -0.379177,
		21.072197, 21.474089, 27.697096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.686893, 21.276690, 28.425474>,  <20.466068, 21.702467, 27.962519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.686893, 21.276690, 28.425474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.026577, 21.321394, 28.219036>,  <21.230387, 21.348217, 28.095173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.026577, 21.321394, 28.219036>,  <20.686893, 21.276690, 28.425474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.026577, 21.321394, 28.219036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514113, 0.048123, 0.856371,
		0.120545, -0.992569, -0.016591,
		0.849209, 0.111761, -0.516094,
		21.281340, 21.354921, 28.064207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.092060, 20.751905, 28.626537>,  <20.686893, 21.276690, 28.425474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.092060, 20.751905, 28.626537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.333014, 21.042797, 28.494917>,  <21.477585, 21.217333, 28.415945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.333014, 21.042797, 28.494917>,  <21.092060, 20.751905, 28.626537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.333014, 21.042797, 28.494917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467508, 0.012689, 0.883898,
		0.646971, -0.686278, -0.332341,
		0.602383, 0.727229, -0.329050,
		21.513729, 21.260965, 28.396202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.950422, 21.153189, 29.365587>,  <21.092060, 20.751905, 28.626537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.950422, 21.153189, 29.365587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.065107, 21.203701, 29.745451>,  <21.133919, 21.234009, 29.973370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.065107, 21.203701, 29.745451>,  <20.950422, 21.153189, 29.365587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.065107, 21.203701, 29.745451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868408, 0.384341, -0.313290,
		-0.404555, 0.914513, 0.000530,
		0.286711, 0.126283, 0.949657,
		21.151121, 21.241587, 30.030348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.103806, 21.908873, 29.705986>,  <20.950422, 21.153189, 29.365587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.103806, 21.908873, 29.705986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.326279, 21.640972, 29.902800>,  <21.459763, 21.480232, 30.020887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.326279, 21.640972, 29.902800>,  <21.103806, 21.908873, 29.705986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.326279, 21.640972, 29.902800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800429, 0.590965, -0.100368,
		-0.223553, 0.449660, 0.864772,
		0.556181, -0.669751, 0.492033,
		21.493134, 21.440046, 30.050409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.973362, 22.401829, 30.207195>,  <21.103806, 21.908873, 29.705986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.973362, 22.401829, 30.207195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.766787, 22.350792, 30.545902>,  <20.642841, 22.320169, 30.749126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.766787, 22.350792, 30.545902>,  <20.973362, 22.401829, 30.207195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.766787, 22.350792, 30.545902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821395, -0.353353, 0.447719,
		0.242081, 0.926748, 0.287290,
		-0.516437, -0.127594, 0.846766,
		20.611856, 22.312513, 30.799932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.389980, 22.599762, 30.786831>,  <20.973362, 22.401829, 30.207195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.389980, 22.599762, 30.786831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.097734, 22.351364, 30.900370>,  <20.922386, 22.202326, 30.968493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.097734, 22.351364, 30.900370>,  <21.389980, 22.599762, 30.786831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.097734, 22.351364, 30.900370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678577, -0.614295, 0.402709,
		-0.075714, 0.486837, 0.870205,
		-0.730616, -0.620992, 0.283846,
		20.878550, 22.165066, 30.985523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.341574, 22.333954, 31.399977>,  <21.389980, 22.599762, 30.786831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.341574, 22.333954, 31.399977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.137594, 22.047026, 31.210072>,  <21.015207, 21.874868, 31.096128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.137594, 22.047026, 31.210072>,  <21.341574, 22.333954, 31.399977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.137594, 22.047026, 31.210072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638521, -0.685485, 0.349860,
		-0.576406, -0.124735, 0.807588,
		-0.509949, -0.717323, -0.474763,
		20.984610, 21.831829, 31.067642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.879061, 21.877272, 31.832569>,  <21.341574, 22.333954, 31.399977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.879061, 21.877272, 31.832569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.041534, 21.676512, 31.527122>,  <21.139019, 21.556055, 31.343855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.041534, 21.676512, 31.527122>,  <20.879061, 21.877272, 31.832569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.041534, 21.676512, 31.527122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376018, -0.669827, 0.640267,
		-0.832841, -0.547200, -0.083350,
		0.406185, -0.501899, -0.763617,
		21.163389, 21.525942, 31.298037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.258116, 22.306656, 32.019958>,  <20.879061, 21.877272, 31.832569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.258116, 22.306656, 32.019958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.867781, 22.373489, 32.076275>,  <19.633579, 22.413589, 32.110065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.867781, 22.373489, 32.076275>,  <20.258116, 22.306656, 32.019958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.867781, 22.373489, 32.076275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130418, 0.071556, -0.988874,
		-0.175303, -0.983342, -0.048036,
		-0.975838, 0.167087, 0.140790,
		19.575029, 22.423615, 32.118511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.849024, 21.831678, 31.627008>,  <20.258116, 22.306656, 32.019958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.849024, 21.831678, 31.627008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.643829, 22.170053, 31.685299>,  <19.520712, 22.373079, 31.720272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.643829, 22.170053, 31.685299>,  <19.849024, 21.831678, 31.627008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.643829, 22.170053, 31.685299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169004, 0.066909, -0.983342,
		-0.841596, -0.529068, 0.108643,
		-0.512986, 0.845937, 0.145725,
		19.489933, 22.423834, 31.729017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.235365, 21.792536, 31.144363>,  <19.849024, 21.831678, 31.627008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.235365, 21.792536, 31.144363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.224459, 22.183872, 31.226439>,  <19.217915, 22.418674, 31.275684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.224459, 22.183872, 31.226439>,  <19.235365, 21.792536, 31.144363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.224459, 22.183872, 31.226439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142447, 0.199369, -0.969516,
		-0.989427, -0.055665, 0.133925,
		-0.027268, 0.978342, 0.205190,
		19.216278, 22.477375, 31.287996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.642454, 22.003428, 30.829386>,  <19.235365, 21.792536, 31.144363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.642454, 22.003428, 30.829386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.861994, 22.331923, 30.891783>,  <18.993717, 22.529020, 30.929220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.861994, 22.331923, 30.891783>,  <18.642454, 22.003428, 30.829386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.861994, 22.331923, 30.891783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251394, 0.340131, -0.906152,
		-0.797225, 0.458124, 0.393134,
		0.548847, 0.821239, 0.155992,
		19.026648, 22.578295, 30.938580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.244068, 22.545427, 30.705387>,  <18.642454, 22.003428, 30.829386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.244068, 22.545427, 30.705387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.618038, 22.671604, 30.640377>,  <18.842421, 22.747311, 30.601372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.618038, 22.671604, 30.640377>,  <18.244068, 22.545427, 30.705387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.618038, 22.671604, 30.640377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279049, 0.370638, -0.885867,
		-0.219201, 0.873570, 0.434541,
		0.934924, 0.315441, -0.162525,
		18.898516, 22.766237, 30.591619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.029814, 23.057711, 30.307430>,  <18.244068, 22.545427, 30.705387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.029814, 23.057711, 30.307430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.421446, 23.022314, 30.234138>,  <18.656425, 23.001076, 30.190165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.421446, 23.022314, 30.234138>,  <18.029814, 23.057711, 30.307430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.421446, 23.022314, 30.234138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161324, 0.211208, -0.964036,
		0.124006, 0.973428, 0.192514,
		0.979080, -0.088490, -0.183228,
		18.715170, 22.995768, 30.179171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.149214, 23.617924, 29.834335>,  <18.029814, 23.057711, 30.307430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.149214, 23.617924, 29.834335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.448299, 23.357475, 29.782236>,  <18.627750, 23.201206, 29.750977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.448299, 23.357475, 29.782236>,  <18.149214, 23.617924, 29.834335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.448299, 23.357475, 29.782236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130279, 0.048490, -0.990291,
		0.651115, 0.757423, -0.048570,
		0.747714, -0.651121, -0.130249,
		18.672613, 23.162138, 29.743162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.635609, 23.947161, 29.336782>,  <18.149214, 23.617924, 29.834335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.635609, 23.947161, 29.336782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.699907, 23.552549, 29.324629>,  <18.738487, 23.315783, 29.317337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.699907, 23.552549, 29.324629>,  <18.635609, 23.947161, 29.336782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.699907, 23.552549, 29.324629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009797, 0.032377, -0.999428,
		0.986947, 0.160359, 0.014870,
		0.160749, -0.986528, -0.030384,
		18.748133, 23.256592, 29.315514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.100328, 23.920574, 28.758917>,  <18.635609, 23.947161, 29.336782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.100328, 23.920574, 28.758917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.947111, 23.560671, 28.842546>,  <18.855181, 23.344728, 28.892723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.947111, 23.560671, 28.842546>,  <19.100328, 23.920574, 28.758917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.947111, 23.560671, 28.842546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213382, -0.134026, -0.967732,
		0.898746, -0.415298, -0.140654,
		-0.383045, -0.899758, 0.209072,
		18.832197, 23.290743, 28.905268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.477907, 23.487011, 28.359716>,  <19.100328, 23.920574, 28.758917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.477907, 23.487011, 28.359716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.138002, 23.288868, 28.431858>,  <18.934059, 23.169983, 28.475143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.138002, 23.288868, 28.431858>,  <19.477907, 23.487011, 28.359716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.138002, 23.288868, 28.431858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108529, -0.170403, -0.979379,
		0.515875, -0.851812, 0.091042,
		-0.849761, -0.495357, 0.180353,
		18.883074, 23.140261, 28.485964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.437685, 23.000505, 27.773430>,  <19.477907, 23.487011, 28.359716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.437685, 23.000505, 27.773430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.075090, 23.000832, 27.942322>,  <18.857533, 23.001028, 28.043657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.075090, 23.000832, 27.942322>,  <19.437685, 23.000505, 27.773430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.075090, 23.000832, 27.942322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411694, -0.223720, -0.883435,
		0.093740, -0.974653, 0.203136,
		-0.906488, 0.000817, 0.422230,
		18.803144, 23.001076, 28.068991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.152908, 22.393696, 27.788769>,  <19.437685, 23.000505, 27.773430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.152908, 22.393696, 27.788769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.838810, 22.641071, 27.776608>,  <18.650351, 22.789495, 27.769310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.838810, 22.641071, 27.776608>,  <19.152908, 22.393696, 27.788769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.838810, 22.641071, 27.776608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274799, -0.392080, -0.877929,
		-0.554866, -0.681034, 0.477825,
		-0.785245, 0.618438, -0.030404,
		18.603237, 22.826603, 27.767487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.629677, 22.006592, 27.402748>,  <19.152908, 22.393696, 27.788769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.629677, 22.006592, 27.402748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.482174, 22.378391, 27.399994>,  <18.393673, 22.601471, 27.398340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.482174, 22.378391, 27.399994>,  <18.629677, 22.006592, 27.402748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.482174, 22.378391, 27.399994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328908, -0.137410, -0.934312,
		-0.869389, -0.342269, 0.356391,
		-0.368757, 0.929500, -0.006888,
		18.371548, 22.657242, 27.397928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.901222, 21.951971, 27.241962>,  <18.629677, 22.006592, 27.402748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.901222, 21.951971, 27.241962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.009834, 22.326134, 27.151377>,  <18.075001, 22.550631, 27.097025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.009834, 22.326134, 27.151377>,  <17.901222, 21.951971, 27.241962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.009834, 22.326134, 27.151377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472894, -0.075271, -0.877898,
		-0.838238, 0.345470, 0.421910,
		0.271530, 0.935406, -0.226465,
		18.091293, 22.606756, 27.083437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.417833, 22.216736, 26.927092>,  <17.901222, 21.951971, 27.241962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.417833, 22.216736, 26.927092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.723064, 22.453014, 26.822178>,  <17.906202, 22.594782, 26.759230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.723064, 22.453014, 26.822178>,  <17.417833, 22.216736, 26.927092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.723064, 22.453014, 26.822178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217336, -0.147662, -0.964863,
		-0.608668, 0.793269, 0.015702,
		0.763078, 0.590694, -0.262284,
		17.951988, 22.630222, 26.743492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.158447, 22.764261, 26.519831>,  <17.417833, 22.216736, 26.927092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.158447, 22.764261, 26.519831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.538473, 22.702328, 26.411459>,  <17.766489, 22.665167, 26.346436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.538473, 22.702328, 26.411459>,  <17.158447, 22.764261, 26.519831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.538473, 22.702328, 26.411459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288567, -0.105466, -0.951633,
		0.118770, 0.982295, -0.144879,
		0.950065, -0.154833, -0.270932,
		17.823492, 22.655878, 26.330179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.104311, 22.849985, 25.791964>,  <17.158447, 22.764261, 26.519831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.104311, 22.849985, 25.791964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.481716, 22.718594, 25.809326>,  <17.708158, 22.639759, 25.819744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.481716, 22.718594, 25.809326>,  <17.104311, 22.849985, 25.791964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.481716, 22.718594, 25.809326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018729, -0.077917, -0.996784,
		0.330804, 0.941292, -0.067364,
		0.943514, -0.328478, 0.043405,
		17.764771, 22.620050, 25.822348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.353046, 23.193192, 25.324354>,  <17.104311, 22.849985, 25.791964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.353046, 23.193192, 25.324354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.601341, 22.885662, 25.385792>,  <17.750319, 22.701143, 25.422655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.601341, 22.885662, 25.385792>,  <17.353046, 23.193192, 25.324354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.601341, 22.885662, 25.385792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041267, -0.227674, -0.972863,
		0.782931, 0.597555, -0.173053,
		0.620739, -0.768825, 0.153594,
		17.787563, 22.655014, 25.431870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.857260, 23.292002, 24.824974>,  <17.353046, 23.193192, 25.324354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.857260, 23.292002, 24.824974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.831242, 22.909151, 24.937885>,  <17.815632, 22.679441, 25.005632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.831242, 22.909151, 24.937885>,  <17.857260, 23.292002, 24.824974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.831242, 22.909151, 24.937885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217237, -0.262510, -0.940158,
		0.973949, -0.122471, -0.190848,
		-0.065043, -0.957125, 0.282277,
		17.811729, 22.622013, 25.022568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.175135, 22.995562, 24.344301>,  <17.857260, 23.292002, 24.824974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.175135, 22.995562, 24.344301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.953753, 22.717876, 24.528368>,  <17.820923, 22.551266, 24.638809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.953753, 22.717876, 24.528368>,  <18.175135, 22.995562, 24.344301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.953753, 22.717876, 24.528368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275859, -0.368528, -0.887744,
		0.785867, -0.618270, 0.012460,
		-0.553457, -0.694212, 0.460169,
		17.787716, 22.509613, 24.666418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.484097, 22.419941, 24.081961>,  <18.175135, 22.995562, 24.344301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.484097, 22.419941, 24.081961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.133554, 22.282026, 24.216494>,  <17.923229, 22.199278, 24.297213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.133554, 22.282026, 24.216494>,  <18.484097, 22.419941, 24.081961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.133554, 22.282026, 24.216494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144827, -0.477337, -0.866703,
		0.459374, -0.808251, 0.368382,
		-0.876356, -0.344789, 0.336333,
		17.870647, 22.178589, 24.317394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.590918, 21.781517, 24.038311>,  <18.484097, 22.419941, 24.081961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.590918, 21.781517, 24.038311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.192430, 21.812122, 24.054768>,  <17.953339, 21.830486, 24.064642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.192430, 21.812122, 24.054768>,  <18.590918, 21.781517, 24.038311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.192430, 21.812122, 24.054768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069364, -0.415477, -0.906955,
		-0.052301, -0.906380, 0.419213,
		-0.996219, 0.076513, 0.041140,
		17.893564, 21.835075, 24.067110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.327452, 21.153595, 23.800407>,  <18.590918, 21.781517, 24.038311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.327452, 21.153595, 23.800407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.057020, 21.444725, 23.754475>,  <17.894762, 21.619404, 23.726915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.057020, 21.444725, 23.754475>,  <18.327452, 21.153595, 23.800407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.057020, 21.444725, 23.754475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231199, -0.357520, -0.904835,
		-0.699618, -0.585191, 0.409984,
		-0.676079, 0.727827, -0.114832,
		17.854197, 21.663073, 23.720024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.720995, 20.782816, 23.525190>,  <18.327452, 21.153595, 23.800407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.720995, 20.782816, 23.525190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.658651, 21.161160, 23.411308>,  <17.621244, 21.388166, 23.342979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.658651, 21.161160, 23.411308>,  <17.720995, 20.782816, 23.525190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.658651, 21.161160, 23.411308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339353, -0.321959, -0.883845,
		-0.927657, -0.041139, 0.371161,
		-0.155860, 0.945859, -0.284707,
		17.611893, 21.444918, 23.325895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.040981, 20.816269, 23.074434>,  <17.720995, 20.782816, 23.525190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.040981, 20.816269, 23.074434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.208254, 21.169266, 22.988333>,  <17.308619, 21.381063, 22.936672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.208254, 21.169266, 22.988333>,  <17.040981, 20.816269, 23.074434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.208254, 21.169266, 22.988333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213559, -0.134813, -0.967584,
		-0.882902, 0.450596, 0.132088,
		0.418182, 0.882490, -0.215255,
		17.333708, 21.434013, 22.923756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.605547, 21.161543, 22.722244>,  <17.040981, 20.816269, 23.074434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.605547, 21.161543, 22.722244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.954895, 21.335398, 22.634321>,  <17.164503, 21.439711, 22.581568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.954895, 21.335398, 22.634321>,  <16.605547, 21.161543, 22.722244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.954895, 21.335398, 22.634321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173905, -0.143277, -0.974284,
		-0.454954, 0.889136, -0.049548,
		0.873369, 0.434637, -0.219810,
		17.216906, 21.465790, 22.568378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.430473, 21.711620, 22.299414>,  <16.605547, 21.161543, 22.722244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.430473, 21.711620, 22.299414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.800062, 21.585194, 22.213270>,  <17.021814, 21.509336, 22.161585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.800062, 21.585194, 22.213270>,  <16.430473, 21.711620, 22.299414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.800062, 21.585194, 22.213270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256227, -0.093503, -0.962084,
		0.283948, 0.944118, -0.167379,
		0.923971, -0.316068, -0.215358,
		17.077253, 21.490374, 22.148663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.489109, 22.123011, 21.744673>,  <16.430473, 21.711620, 22.299414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.489109, 22.123011, 21.744673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.759127, 21.828167, 21.732117>,  <16.921137, 21.651260, 21.724583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.759127, 21.828167, 21.732117>,  <16.489109, 22.123011, 21.744673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.759127, 21.828167, 21.732117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253797, -0.192058, -0.947999,
		0.692751, 0.647906, -0.316724,
		0.675043, -0.737111, -0.031389,
		16.961639, 21.607033, 21.722700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.806751, 22.150255, 21.154150>,  <16.489109, 22.123011, 21.744673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.806751, 22.150255, 21.154150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.857578, 21.766619, 21.255339>,  <16.888075, 21.536436, 21.316051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.857578, 21.766619, 21.255339>,  <16.806751, 22.150255, 21.154150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.857578, 21.766619, 21.255339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307356, -0.280560, -0.909295,
		0.943072, 0.037791, -0.330433,
		0.127070, -0.959092, 0.252974,
		16.895699, 21.478891, 21.331230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.222023, 21.768898, 20.580589>,  <16.806751, 22.150255, 21.154150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.222023, 21.768898, 20.580589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.981071, 21.530581, 20.793068>,  <16.836500, 21.387590, 20.920555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.981071, 21.530581, 20.793068>,  <17.222023, 21.768898, 20.580589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.981071, 21.530581, 20.793068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291534, -0.455291, -0.841259,
		0.743065, -0.661620, 0.100565,
		-0.602381, -0.595792, 0.531196,
		16.800358, 21.351843, 20.952427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.128231, 21.206718, 20.155197>,  <17.222023, 21.768898, 20.580589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.128231, 21.206718, 20.155197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.833233, 21.144529, 20.418081>,  <16.656235, 21.107216, 20.575811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.833233, 21.144529, 20.418081>,  <17.128231, 21.206718, 20.155197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.833233, 21.144529, 20.418081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549449, -0.427716, -0.717750,
		0.392690, -0.890442, 0.230015,
		-0.737496, -0.155471, 0.657212,
		16.611984, 21.097889, 20.615246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.013680, 20.505339, 20.279959>,  <17.128231, 21.206718, 20.155197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.013680, 20.505339, 20.279959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.668343, 20.678305, 20.384007>,  <16.461142, 20.782084, 20.446436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.668343, 20.678305, 20.384007>,  <17.013680, 20.505339, 20.279959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.668343, 20.678305, 20.384007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480300, -0.546040, -0.686405,
		-0.154774, -0.717537, 0.679106,
		-0.863340, 0.432412, 0.260121,
		16.409340, 20.808029, 20.462042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.661314, 19.888845, 20.304289>,  <17.013680, 20.505339, 20.279959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.661314, 19.888845, 20.304289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.402058, 20.193398, 20.310112>,  <16.246504, 20.376129, 20.313606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.402058, 20.193398, 20.310112>,  <16.661314, 19.888845, 20.304289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.402058, 20.193398, 20.310112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519501, -0.428094, -0.739496,
		-0.556808, -0.486858, 0.673004,
		-0.648138, 0.761384, 0.014557,
		16.207615, 20.421812, 20.314480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.956318, 19.631348, 20.336260>,  <16.661314, 19.888845, 20.304289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.956318, 19.631348, 20.336260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.881017, 19.990236, 20.176485>,  <15.835836, 20.205570, 20.080620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.881017, 19.990236, 20.176485>,  <15.956318, 19.631348, 20.336260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.881017, 19.990236, 20.176485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656040, -0.417543, -0.628705,
		-0.730871, 0.143692, 0.667218,
		-0.188252, 0.897224, -0.399438,
		15.824541, 20.259403, 20.056654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.228783, 19.658848, 20.373457>,  <15.956318, 19.631348, 20.336260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.228783, 19.658848, 20.373457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.357277, 19.930737, 20.109705>,  <15.434374, 20.093870, 19.951454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.357277, 19.930737, 20.109705>,  <15.228783, 19.658848, 20.373457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.357277, 19.930737, 20.109705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753106, -0.238776, -0.613040,
		-0.574141, 0.693515, 0.435200,
		0.321237, 0.679723, -0.659381,
		15.453648, 20.134653, 19.911890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.635730, 19.983616, 20.203003>,  <15.228783, 19.658848, 20.373457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.635730, 19.983616, 20.203003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.891727, 20.065010, 19.906624>,  <15.045326, 20.113846, 19.728796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.891727, 20.065010, 19.906624>,  <14.635730, 19.983616, 20.203003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.891727, 20.065010, 19.906624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697889, -0.249530, -0.671331,
		-0.321495, 0.946746, -0.017687,
		0.639993, 0.203486, -0.740947,
		15.083726, 20.126057, 19.684340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.158895, 20.052420, 19.797636>,  <14.635730, 19.983616, 20.203003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.158895, 20.052420, 19.797636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.483410, 20.098059, 19.568274>,  <14.678119, 20.125443, 19.430656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.483410, 20.098059, 19.568274>,  <14.158895, 20.052420, 19.797636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.483410, 20.098059, 19.568274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576492, -0.007119, -0.817072,
		-0.097307, 0.993444, 0.060000,
		0.811288, 0.114096, -0.573405,
		14.726796, 20.132288, 19.396252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.934925, 20.418028, 19.238480>,  <14.158895, 20.052420, 19.797636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.934925, 20.418028, 19.238480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.267511, 20.232508, 19.116135>,  <14.467063, 20.121195, 19.042727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.267511, 20.232508, 19.116135>,  <13.934925, 20.418028, 19.238480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.267511, 20.232508, 19.116135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479570, -0.321210, -0.816601,
		0.280493, 0.825659, -0.489500,
		0.831466, -0.463801, -0.305864,
		14.516952, 20.093367, 19.024376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.068238, 20.607029, 18.593693>,  <13.934925, 20.418028, 19.238480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.068238, 20.607029, 18.593693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.257442, 20.254805, 18.605558>,  <14.370963, 20.043470, 18.612677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.257442, 20.254805, 18.605558>,  <14.068238, 20.607029, 18.593693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.257442, 20.254805, 18.605558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435873, -0.263130, -0.860684,
		0.765688, 0.394181, -0.508275,
		0.473007, -0.880559, 0.029663,
		14.399343, 19.990637, 18.614458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.278569, 20.394835, 17.863220>,  <14.068238, 20.607029, 18.593693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.278569, 20.394835, 17.863220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.248279, 20.056740, 18.074821>,  <14.230104, 19.853884, 18.201782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.248279, 20.056740, 18.074821>,  <14.278569, 20.394835, 17.863220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.248279, 20.056740, 18.074821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506386, -0.424421, -0.750626,
		0.858975, -0.324721, -0.395875,
		-0.075726, -0.845235, 0.529001,
		14.225560, 19.803169, 18.233522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.355217, 19.913750, 17.340460>,  <14.278569, 20.394835, 17.863220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.355217, 19.913750, 17.340460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.190395, 19.744762, 17.663380>,  <14.091502, 19.643370, 17.857132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.190395, 19.744762, 17.663380>,  <14.355217, 19.913750, 17.340460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.190395, 19.744762, 17.663380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552247, -0.588932, -0.590070,
		0.724730, -0.688969, 0.009364,
		-0.412055, -0.422470, 0.807298,
		14.066779, 19.618021, 17.905569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.199172, 19.226824, 17.339952>,  <14.355217, 19.913750, 17.340460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.199172, 19.226824, 17.339952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.920618, 19.362989, 17.592670>,  <13.753486, 19.444689, 17.744301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.920618, 19.362989, 17.592670>,  <14.199172, 19.226824, 17.339952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.920618, 19.362989, 17.592670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702809, -0.501693, -0.504345,
		0.145280, -0.795249, 0.588619,
		-0.696386, 0.340416, 0.631794,
		13.711702, 19.465115, 17.782209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.798264, 18.695480, 17.783493>,  <14.199172, 19.226824, 17.339952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.798264, 18.695480, 17.783493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.552879, 19.000893, 17.702810>,  <13.405649, 19.184139, 17.654400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.552879, 19.000893, 17.702810>,  <13.798264, 18.695480, 17.783493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.552879, 19.000893, 17.702810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654149, -0.634386, -0.411877,
		-0.442442, -0.120723, 0.888635,
		-0.613461, 0.763532, -0.201708,
		13.368841, 19.229952, 17.642298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.550048, 18.610060, 17.959719>,  <13.798264, 18.695480, 17.783493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.550048, 18.610060, 17.959719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.912932, 18.760279, 18.035542>,  <15.130663, 18.850410, 18.081036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.912932, 18.760279, 18.035542>,  <14.550048, 18.610060, 17.959719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.912932, 18.760279, 18.035542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411698, -0.700029, -0.583493,
		-0.086435, 0.607392, -0.789686,
		0.907212, 0.375546, 0.189555,
		15.185096, 18.872942, 18.092407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.010166, 18.462290, 17.416311>,  <14.550048, 18.610060, 17.959719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.010166, 18.462290, 17.416311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.273818, 18.573715, 17.695724>,  <15.432010, 18.640570, 17.863373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.273818, 18.573715, 17.695724>,  <15.010166, 18.462290, 17.416311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.273818, 18.573715, 17.695724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728565, -0.466751, -0.501335,
		0.186387, 0.839372, -0.510602,
		0.659131, 0.278564, 0.698533,
		15.471558, 18.657284, 17.905285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.665184, 18.756071, 17.068106>,  <15.010166, 18.462290, 17.416311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.665184, 18.756071, 17.068106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.702146, 18.612522, 17.439627>,  <15.724322, 18.526392, 17.662539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.702146, 18.612522, 17.439627>,  <15.665184, 18.756071, 17.068106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.702146, 18.612522, 17.439627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621899, -0.707681, -0.335307,
		0.777627, 0.608604, 0.157790,
		0.092404, -0.358873, 0.928801,
		15.729867, 18.504860, 17.718267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.399321, 18.613333, 17.282259>,  <15.665184, 18.756071, 17.068106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.399321, 18.613333, 17.282259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.151577, 18.376299, 17.488262>,  <16.002930, 18.234079, 17.611864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.151577, 18.376299, 17.488262>,  <16.399321, 18.613333, 17.282259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.151577, 18.376299, 17.488262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354366, -0.796357, -0.490143,
		0.700583, -0.121074, 0.703225,
		-0.619361, -0.592585, 0.515010,
		15.965769, 18.198523, 17.642765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.774273, 18.195755, 17.839205>,  <16.399321, 18.613333, 17.282259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.774273, 18.195755, 17.839205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.437637, 18.019394, 17.714413>,  <16.235655, 17.913578, 17.639538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.437637, 18.019394, 17.714413>,  <16.774273, 18.195755, 17.839205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.437637, 18.019394, 17.714413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511772, -0.835603, -0.199642,
		-0.172669, -0.327680, 0.928876,
		-0.841590, -0.440901, -0.311980,
		16.185160, 17.887123, 17.620819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.035793, 17.642862, 17.955088>,  <16.774273, 18.195755, 17.839205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.035793, 17.642862, 17.955088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.721607, 17.630072, 17.707855>,  <16.533096, 17.622398, 17.559515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.721607, 17.630072, 17.707855>,  <17.035793, 17.642862, 17.955088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.721607, 17.630072, 17.707855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390508, -0.800382, -0.454854,
		-0.480157, -0.598637, 0.641158,
		-0.785464, -0.031975, -0.618081,
		16.485968, 17.620480, 17.522430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.789457, 16.877228, 17.559879>,  <17.035793, 17.642862, 17.955088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.789457, 16.877228, 17.559879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.923908, 16.502823, 17.518124>,  <17.004578, 16.278179, 17.493071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.923908, 16.502823, 17.518124>,  <16.789457, 16.877228, 17.559879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.923908, 16.502823, 17.518124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041443, 0.125431, -0.991236,
		0.940905, 0.328853, 0.080952,
		0.336125, -0.936014, -0.104390,
		17.024746, 16.222019, 17.486807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.496031, 16.796560, 17.141220>,  <16.789457, 16.877228, 17.559879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.496031, 16.796560, 17.141220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.306377, 16.445702, 17.110727>,  <17.192585, 16.235186, 17.092432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.306377, 16.445702, 17.110727>,  <17.496031, 16.796560, 17.141220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.306377, 16.445702, 17.110727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002997, 0.084977, -0.996379,
		0.880449, -0.472643, -0.037661,
		-0.474132, -0.877148, -0.076234,
		17.164137, 16.182558, 17.087856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.817240, 16.402138, 16.547241>,  <17.496031, 16.796560, 17.141220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.817240, 16.402138, 16.547241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.467403, 16.215801, 16.601034>,  <17.257502, 16.104000, 16.633310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.467403, 16.215801, 16.601034>,  <17.817240, 16.402138, 16.547241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.467403, 16.215801, 16.601034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200979, 0.095887, -0.974891,
		0.441249, -0.879658, -0.177486,
		-0.874590, -0.465841, 0.134483,
		17.205027, 16.076050, 16.641378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.878260, 15.933410, 16.005178>,  <17.817240, 16.402138, 16.547241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.878260, 15.933410, 16.005178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.491636, 15.992191, 16.089247>,  <17.259663, 16.027460, 16.139687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.491636, 15.992191, 16.089247>,  <17.878260, 15.933410, 16.005178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.491636, 15.992191, 16.089247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187158, 0.156064, -0.969854,
		-0.175324, -0.976754, -0.123341,
		-0.966557, 0.146955, 0.210169,
		17.201670, 16.036278, 16.152298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.494478, 15.482348, 15.671654>,  <17.878260, 15.933410, 16.005178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.494478, 15.482348, 15.671654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.218227, 15.761436, 15.747785>,  <17.052477, 15.928889, 15.793463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.218227, 15.761436, 15.747785>,  <17.494478, 15.482348, 15.671654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.218227, 15.761436, 15.747785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281757, -0.017202, -0.959332,
		-0.666071, -0.716164, 0.208468,
		-0.690625, 0.697720, 0.190326,
		17.011040, 15.970753, 15.804882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.887777, 15.220296, 15.365732>,  <17.494478, 15.482348, 15.671654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.887777, 15.220296, 15.365732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.771727, 15.597931, 15.428372>,  <16.702095, 15.824512, 15.465957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.771727, 15.597931, 15.428372>,  <16.887777, 15.220296, 15.365732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.771727, 15.597931, 15.428372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464038, 0.004328, -0.885805,
		-0.836955, -0.329666, 0.436837,
		-0.290129, 0.944087, 0.156600,
		16.684689, 15.881157, 15.475352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.084032, 15.220624, 15.119147>,  <16.887777, 15.220296, 15.365732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.084032, 15.220624, 15.119147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.182829, 15.608202, 15.114415>,  <16.242107, 15.840749, 15.111576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.182829, 15.608202, 15.114415>,  <16.084032, 15.220624, 15.119147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.182829, 15.608202, 15.114415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254022, 0.052962, -0.965747,
		-0.935130, 0.241535, 0.259215,
		0.246990, 0.968946, -0.011829,
		16.256926, 15.898886, 15.110867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.483068, 15.564776, 14.971051>,  <16.084032, 15.220624, 15.119147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.483068, 15.564776, 14.971051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.801832, 15.785539, 14.872797>,  <15.993091, 15.917996, 14.813845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.801832, 15.785539, 14.872797>,  <15.483068, 15.564776, 14.971051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.801832, 15.785539, 14.872797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310608, 0.025592, -0.950194,
		-0.518131, 0.833513, 0.191821,
		0.796908, 0.551906, -0.245636,
		16.040905, 15.951111, 14.799107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.193133, 16.162386, 14.617175>,  <15.483068, 15.564776, 14.971051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.193133, 16.162386, 14.617175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.575813, 16.159664, 14.500775>,  <15.805421, 16.158031, 14.430936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.575813, 16.159664, 14.500775>,  <15.193133, 16.162386, 14.617175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.575813, 16.159664, 14.500775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279176, 0.261525, -0.923940,
		0.082388, 0.965173, 0.248301,
		0.956699, -0.006802, -0.290999,
		15.862823, 16.157623, 14.413476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.304588, 16.749832, 14.211394>,  <15.193133, 16.162386, 14.617175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.304588, 16.749832, 14.211394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.604522, 16.505619, 14.109413>,  <15.784482, 16.359091, 14.048224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.604522, 16.505619, 14.109413>,  <15.304588, 16.749832, 14.211394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.604522, 16.505619, 14.109413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045507, 0.336840, -0.940461,
		0.660059, 0.716792, 0.224791,
		0.749834, -0.610531, -0.254953,
		15.829472, 16.322460, 14.032928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.711854, 17.174030, 13.823380>,  <15.304588, 16.749832, 14.211394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.711854, 17.174030, 13.823380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.795299, 16.798927, 13.712317>,  <15.845366, 16.573866, 13.645680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.795299, 16.798927, 13.712317>,  <15.711854, 17.174030, 13.823380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.795299, 16.798927, 13.712317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201229, 0.236669, -0.950523,
		0.957073, 0.254162, -0.139332,
		0.208612, -0.937758, -0.277654,
		15.857882, 16.517599, 13.629022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.148329, 17.267811, 13.204632>,  <15.711854, 17.174030, 13.823380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.148329, 17.267811, 13.204632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.997564, 16.897406, 13.212965>,  <15.907105, 16.675161, 13.217965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.997564, 16.897406, 13.212965>,  <16.148329, 17.267811, 13.204632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.997564, 16.897406, 13.212965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018376, -0.015012, -0.999718,
		0.926066, -0.377190, -0.011358,
		-0.376913, -0.926014, 0.020834,
		15.884490, 16.619602, 13.219215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.275963, 17.089602, 12.548308>,  <16.148329, 17.267811, 13.204632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.275963, 17.089602, 12.548308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.996478, 16.828308, 12.664986>,  <15.828787, 16.671532, 12.734992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.996478, 16.828308, 12.664986>,  <16.275963, 17.089602, 12.548308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.996478, 16.828308, 12.664986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380747, -0.005641, -0.924662,
		0.605665, -0.757136, -0.244775,
		-0.698714, -0.653233, 0.291694,
		15.786864, 16.632338, 12.752494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.208515, 16.621511, 12.077015>,  <16.275963, 17.089602, 12.548308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.208515, 16.621511, 12.077015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.869436, 16.544962, 12.274918>,  <15.665989, 16.499031, 12.393660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.869436, 16.544962, 12.274918>,  <16.208515, 16.621511, 12.077015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.869436, 16.544962, 12.274918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481308, -0.114686, -0.869016,
		0.223050, -0.974794, 0.005108,
		-0.847698, -0.191375, 0.494757,
		15.615127, 16.487549, 12.423345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.770836, 16.173820, 11.632859>,  <16.208515, 16.621511, 12.077015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.770836, 16.173820, 11.632859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.503240, 16.327669, 11.887266>,  <15.342682, 16.419979, 12.039910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.503240, 16.327669, 11.887266>,  <15.770836, 16.173820, 11.632859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.503240, 16.327669, 11.887266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670637, 0.056590, -0.739624,
		-0.320468, -0.921338, 0.220083,
		-0.668990, 0.384622, 0.636018,
		15.302543, 16.443056, 12.078072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.180294, 15.952016, 11.459273>,  <15.770836, 16.173820, 11.632859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.180294, 15.952016, 11.459273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.058634, 16.272581, 11.665276>,  <14.985638, 16.464920, 11.788877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.058634, 16.272581, 11.665276>,  <15.180294, 15.952016, 11.459273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.058634, 16.272581, 11.665276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675679, 0.199608, -0.709658,
		-0.671528, -0.563821, 0.480786,
		-0.304151, 0.801413, 0.515005,
		14.967388, 16.513004, 11.819777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.448933, 15.930458, 11.424913>,  <15.180294, 15.952016, 11.459273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.448933, 15.930458, 11.424913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.575027, 16.305166, 11.485688>,  <14.650684, 16.529991, 11.522153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.575027, 16.305166, 11.485688>,  <14.448933, 15.930458, 11.424913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.575027, 16.305166, 11.485688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582588, 0.317406, -0.748228,
		-0.749144, 0.147352, 0.645810,
		0.315237, 0.936771, 0.151938,
		14.669599, 16.586197, 11.531269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.820712, 16.345615, 11.492270>,  <14.448933, 15.930458, 11.424913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.820712, 16.345615, 11.492270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.121831, 16.593523, 11.403558>,  <14.302502, 16.742268, 11.350330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.121831, 16.593523, 11.403558>,  <13.820712, 16.345615, 11.492270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.121831, 16.593523, 11.403558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568723, 0.442737, -0.693209,
		-0.331438, 0.647976, 0.685766,
		0.752797, 0.619767, -0.221780,
		14.347670, 16.779453, 11.337024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.503155, 16.994013, 11.417670>,  <13.820712, 16.345615, 11.492270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.503155, 16.994013, 11.417670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.859454, 17.019564, 11.237676>,  <14.073234, 17.034893, 11.129679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.859454, 17.019564, 11.237676>,  <13.503155, 16.994013, 11.417670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.859454, 17.019564, 11.237676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430842, 0.433915, -0.791260,
		0.144713, 0.898687, 0.414029,
		0.890748, 0.063876, -0.449986,
		14.126678, 17.038727, 11.102680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.489168, 17.707689, 11.159744>,  <13.503155, 16.994013, 11.417670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.489168, 17.707689, 11.159744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.801315, 17.552513, 10.963571>,  <13.988604, 17.459408, 10.845866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.801315, 17.552513, 10.963571>,  <13.489168, 17.707689, 11.159744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.801315, 17.552513, 10.963571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252450, 0.522087, -0.814674,
		0.572096, 0.759557, 0.309485,
		0.780369, -0.387942, -0.490434,
		14.035426, 17.436131, 10.816441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.800919, 18.205248, 10.715086>,  <13.489168, 17.707689, 11.159744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.800919, 18.205248, 10.715086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.933934, 17.876228, 10.530550>,  <14.013743, 17.678818, 10.419828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.933934, 17.876228, 10.530550>,  <13.800919, 18.205248, 10.715086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.933934, 17.876228, 10.530550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194504, 0.418844, -0.886982,
		0.922814, 0.384688, -0.020707,
		0.332538, -0.822548, -0.461339,
		14.033696, 17.629463, 10.392148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.289530, 18.402845, 10.205526>,  <13.800919, 18.205248, 10.715086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.289530, 18.402845, 10.205526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.132124, 18.048719, 10.106437>,  <14.037681, 17.836245, 10.046983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.132124, 18.048719, 10.106437>,  <14.289530, 18.402845, 10.205526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.132124, 18.048719, 10.106437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082122, 0.302239, -0.949688,
		0.915643, -0.353373, -0.191639,
		-0.393514, -0.885313, -0.247724,
		14.014070, 17.783125, 10.032120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.501181, 18.231089, 9.562575>,  <14.289530, 18.402845, 10.205526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.501181, 18.231089, 9.562575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.164833, 18.017368, 9.597135>,  <13.963024, 17.889137, 9.617870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.164833, 18.017368, 9.597135>,  <14.501181, 18.231089, 9.562575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.164833, 18.017368, 9.597135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171873, 0.112233, -0.978705,
		0.513224, -0.837812, -0.186205,
		-0.840869, -0.534298, 0.086397,
		13.912573, 17.857079, 9.623054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.088713, 18.269600, 10.054669>,  <14.501181, 18.231089, 9.562575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.088713, 18.269600, 10.054669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.877285, 18.566252, 10.219886>,  <14.750428, 18.744242, 10.319016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.877285, 18.566252, 10.219886>,  <15.088713, 18.269600, 10.054669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.877285, 18.566252, 10.219886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116967, -0.418297, 0.900748,
		0.840793, 0.524420, 0.134353,
		-0.528569, 0.741628, 0.413041,
		14.718714, 18.788740, 10.343798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.515046, 18.524918, 10.668160>,  <15.088713, 18.269600, 10.054669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.515046, 18.524918, 10.668160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.123089, 18.600441, 10.693956>,  <14.887915, 18.645756, 10.709434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.123089, 18.600441, 10.693956>,  <15.515046, 18.524918, 10.668160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.123089, 18.600441, 10.693956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002226, -0.333552, 0.942729,
		0.199507, 0.923631, 0.327266,
		-0.979894, 0.188810, 0.064490,
		14.829121, 18.657084, 10.713304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.545960, 18.936573, 11.176459>,  <15.515046, 18.524918, 10.668160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.545960, 18.936573, 11.176459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.160968, 18.828552, 11.165876>,  <14.929972, 18.763741, 11.159527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.160968, 18.828552, 11.165876>,  <15.545960, 18.936573, 11.176459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.160968, 18.828552, 11.165876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026367, -0.190124, 0.981406,
		-0.270060, 0.943888, 0.190112,
		-0.962483, -0.270051, -0.026457,
		14.872223, 18.747538, 11.157939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.377861, 18.458084, 11.645929>,  <15.545960, 18.936573, 11.176459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.377861, 18.458084, 11.645929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.293106, 18.608326, 12.006823>,  <15.242253, 18.698471, 12.223358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.293106, 18.608326, 12.006823>,  <15.377861, 18.458084, 11.645929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.293106, 18.608326, 12.006823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946234, -0.152050, 0.285520,
		0.244428, 0.914221, -0.323194,
		-0.211887, 0.375606, 0.902233,
		15.229540, 18.721008, 12.277493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.766589, 19.132927, 11.842671>,  <15.377861, 18.458084, 11.645929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.766589, 19.132927, 11.842671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.683329, 18.892828, 12.151573>,  <15.633372, 18.748768, 12.336914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.683329, 18.892828, 12.151573>,  <15.766589, 19.132927, 11.842671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.683329, 18.892828, 12.151573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971575, -0.035860, 0.234002,
		-0.112766, 0.799010, 0.590650,
		-0.208151, -0.600248, 0.772254,
		15.620883, 18.712753, 12.383249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.161495, 19.364733, 12.453173>,  <15.766589, 19.132927, 11.842671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.161495, 19.364733, 12.453173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.133480, 18.967806, 12.493968>,  <16.116671, 18.729650, 12.518445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.133480, 18.967806, 12.493968>,  <16.161495, 19.364733, 12.453173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.133480, 18.967806, 12.493968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997455, -0.068300, 0.020454,
		-0.013331, 0.103162, 0.994575,
		-0.070039, -0.992317, 0.101989,
		16.112469, 18.670111, 12.524565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.559059, 19.280624, 13.008202>,  <16.161495, 19.364733, 12.453173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.559059, 19.280624, 13.008202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.503933, 18.927633, 12.828319>,  <16.470858, 18.715837, 12.720388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.503933, 18.927633, 12.828319>,  <16.559059, 19.280624, 13.008202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.503933, 18.927633, 12.828319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934269, -0.266579, 0.236804,
		-0.328858, -0.387513, 0.861212,
		-0.137817, -0.882479, -0.449708,
		16.462587, 18.662889, 12.693406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.628584, 18.652428, 13.459747>,  <16.559059, 19.280624, 13.008202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.628584, 18.652428, 13.459747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.753967, 18.643848, 13.080004>,  <16.829197, 18.638700, 12.852158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.753967, 18.643848, 13.080004>,  <16.628584, 18.652428, 13.459747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.753967, 18.643848, 13.080004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948569, -0.039538, 0.314092,
		-0.044272, -0.998988, 0.007950,
		0.313460, -0.021447, -0.949359,
		16.848005, 18.637415, 12.795196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.958448, 17.961966, 13.223230>,  <16.628584, 18.652428, 13.459747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.958448, 17.961966, 13.223230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.099781, 18.315481, 13.100542>,  <17.184580, 18.527590, 13.026929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.099781, 18.315481, 13.100542>,  <16.958448, 17.961966, 13.223230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.099781, 18.315481, 13.100542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823975, -0.138758, 0.549374,
		0.442969, -0.446841, -0.777246,
		0.353332, 0.883787, -0.306720,
		17.205780, 18.580618, 13.008526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.560886, 17.933954, 12.738358>,  <16.958448, 17.961966, 13.223230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.560886, 17.933954, 12.738358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.583231, 18.286247, 12.926481>,  <17.596638, 18.497623, 13.039354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.583231, 18.286247, 12.926481>,  <17.560886, 17.933954, 12.738358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.583231, 18.286247, 12.926481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821077, -0.308528, 0.480252,
		0.568077, 0.359330, -0.740385,
		0.055861, 0.880734, 0.470306,
		17.599989, 18.550467, 13.067573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.256109, 18.314259, 12.559279>,  <17.560886, 17.933954, 12.738358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.256109, 18.314259, 12.559279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.125147, 18.465988, 12.905439>,  <18.046570, 18.557026, 13.113135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.125147, 18.465988, 12.905439>,  <18.256109, 18.314259, 12.559279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.125147, 18.465988, 12.905439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805736, -0.366323, 0.465399,
		0.493555, 0.849658, -0.185701,
		-0.327404, 0.379326, 0.865401,
		18.026926, 18.579786, 13.165060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.921698, 18.677073, 12.866844>,  <18.256109, 18.314259, 12.559279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.921698, 18.677073, 12.866844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.643356, 18.657774, 13.153469>,  <18.476351, 18.646194, 13.325444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.643356, 18.657774, 13.153469>,  <18.921698, 18.677073, 12.866844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.643356, 18.657774, 13.153469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716669, -0.111416, 0.688456,
		0.046621, 0.992602, 0.112106,
		-0.695853, -0.048247, 0.716562,
		18.434601, 18.643299, 13.368438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.167412, 19.137886, 13.478992>,  <18.921698, 18.677073, 12.866844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.167412, 19.137886, 13.478992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.897123, 18.880344, 13.622577>,  <18.734951, 18.725821, 13.708728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.897123, 18.880344, 13.622577>,  <19.167412, 19.137886, 13.478992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.897123, 18.880344, 13.622577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710432, -0.438863, 0.550169,
		-0.196692, 0.626779, 0.753963,
		-0.675721, -0.643853, 0.358963,
		18.694407, 18.687189, 13.730266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.431940, 19.049314, 14.122798>,  <19.167412, 19.137886, 13.478992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.431940, 19.049314, 14.122798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.173233, 18.744810, 14.141453>,  <19.018009, 18.562107, 14.152646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.173233, 18.744810, 14.141453>,  <19.431940, 19.049314, 14.122798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.173233, 18.744810, 14.141453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579185, -0.450452, 0.679439,
		-0.496222, 0.466450, 0.732248,
		-0.646767, -0.761260, 0.046637,
		18.979202, 18.516432, 14.155444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.313055, 18.833652, 14.792249>,  <19.431940, 19.049314, 14.122798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.313055, 18.833652, 14.792249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.254551, 18.523504, 14.546514>,  <19.219448, 18.337416, 14.399073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.254551, 18.523504, 14.546514>,  <19.313055, 18.833652, 14.792249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.254551, 18.523504, 14.546514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602988, -0.562189, 0.565993,
		-0.784227, -0.287657, 0.549764,
		-0.146260, -0.775369, -0.614338,
		19.210672, 18.290894, 14.362212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.166546, 18.432512, 15.310112>,  <19.313055, 18.833652, 14.792249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.166546, 18.432512, 15.310112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.256098, 18.220858, 14.982724>,  <19.309830, 18.093864, 14.786291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.256098, 18.220858, 14.982724>,  <19.166546, 18.432512, 15.310112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.256098, 18.220858, 14.982724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659594, -0.535984, 0.526931,
		-0.717505, -0.657828, 0.229018,
		0.223880, -0.529135, -0.818471,
		19.323261, 18.062117, 14.737183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.229610, 17.736086, 15.496737>,  <19.166546, 18.432512, 15.310112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.229610, 17.736086, 15.496737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.401348, 17.734747, 15.135483>,  <19.504391, 17.733944, 14.918731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.401348, 17.734747, 15.135483>,  <19.229610, 17.736086, 15.496737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.401348, 17.734747, 15.135483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703998, -0.625158, 0.336993,
		-0.565730, -0.780491, -0.266052,
		0.429345, -0.003347, -0.903134,
		19.530151, 17.733742, 14.864542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.422791, 16.957750, 15.345558>,  <19.229610, 17.736086, 15.496737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.422791, 16.957750, 15.345558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.646782, 17.191769, 15.110902>,  <19.781178, 17.332180, 14.970108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.646782, 17.191769, 15.110902>,  <19.422791, 16.957750, 15.345558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.646782, 17.191769, 15.110902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827619, -0.427770, 0.363400,
		-0.038342, -0.689011, -0.723736,
		0.559979, 0.585044, -0.586640,
		19.814775, 17.367281, 14.934910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.924253, 16.451902, 15.043497>,  <19.422791, 16.957750, 15.345558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.924253, 16.451902, 15.043497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.069622, 16.824436, 15.034224>,  <20.156843, 17.047956, 15.028659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.069622, 16.824436, 15.034224>,  <19.924253, 16.451902, 15.043497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.069622, 16.824436, 15.034224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886776, -0.338192, 0.315048,
		0.285575, -0.135055, -0.948792,
		0.363423, 0.931336, -0.023185,
		20.178648, 17.103836, 15.027268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.420652, 16.288462, 14.758667>,  <19.924253, 16.451902, 15.043497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.420652, 16.288462, 14.758667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.494839, 16.656649, 14.896269>,  <20.539351, 16.877562, 14.978830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.494839, 16.656649, 14.896269>,  <20.420652, 16.288462, 14.758667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.494839, 16.656649, 14.896269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916253, -0.288490, 0.277945,
		0.355082, 0.263647, -0.896887,
		0.185463, 0.920469, 0.344005,
		20.550478, 16.932789, 14.999471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.861736, 16.603609, 14.335787>,  <20.420652, 16.288462, 14.758667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.861736, 16.603609, 14.335787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.912941, 16.770960, 14.695470>,  <20.943665, 16.871370, 14.911280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.912941, 16.770960, 14.695470>,  <20.861736, 16.603609, 14.335787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.912941, 16.770960, 14.695470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916738, -0.395866, 0.053677,
		0.378423, 0.817466, -0.434219,
		0.128013, 0.418378, 0.899207,
		20.951345, 16.896473, 14.965232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.506256, 16.916330, 14.226029>,  <20.861736, 16.603609, 14.335787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.506256, 16.916330, 14.226029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.435066, 16.886425, 14.618505>,  <21.392353, 16.868483, 14.853992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.435066, 16.886425, 14.618505>,  <21.506256, 16.916330, 14.226029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.435066, 16.886425, 14.618505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885179, -0.447739, 0.126445,
		0.429864, 0.891033, 0.145863,
		-0.177975, -0.074761, 0.981191,
		21.381674, 16.863997, 14.912863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.212296, 17.036179, 14.433358>,  <21.506256, 16.916330, 14.226029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.212296, 17.036179, 14.433358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.956181, 16.758738, 14.565386>,  <21.802511, 16.592274, 14.644603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.956181, 16.758738, 14.565386>,  <22.212296, 17.036179, 14.433358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.956181, 16.758738, 14.565386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756389, -0.644176, 0.113631,
		0.133808, 0.322417, 0.937093,
		-0.640289, -0.693602, 0.330069,
		21.764093, 16.550657, 14.664407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.720907, 17.171469, 15.108511>,  <22.212296, 17.036179, 14.433358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.720907, 17.171469, 15.108511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.029638, 16.962265, 15.253144>,  <23.214878, 16.836742, 15.339924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.029638, 16.962265, 15.253144>,  <22.720907, 17.171469, 15.108511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.029638, 16.962265, 15.253144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534771, 0.226346, -0.814117,
		0.343948, 0.821723, 0.454391,
		0.771829, -0.523009, 0.361583,
		23.261187, 16.805363, 15.361619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.319391, 17.547623, 14.978535>,  <22.720907, 17.171469, 15.108511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.319391, 17.547623, 14.978535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.400242, 17.156246, 14.995489>,  <23.448751, 16.921421, 15.005662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.400242, 17.156246, 14.995489>,  <23.319391, 17.547623, 14.978535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.400242, 17.156246, 14.995489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784605, 0.135878, -0.604924,
		0.586123, 0.155527, 0.795155,
		0.202127, -0.978442, 0.042386,
		23.460880, 16.862713, 15.008204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.062246, 17.280928, 15.171340>,  <23.319391, 17.547623, 14.978535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.062246, 17.280928, 15.171340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.886667, 17.003340, 14.943048>,  <23.781319, 16.836788, 14.806073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.886667, 17.003340, 14.943048>,  <24.062246, 17.280928, 15.171340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.886667, 17.003340, 14.943048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802091, -0.016375, -0.596978,
		0.404938, -0.719819, 0.563814,
		-0.438948, -0.693969, -0.570729,
		23.754982, 16.795149, 14.771830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.644985, 16.900681, 14.863933>,  <24.062246, 17.280928, 15.171340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.644985, 16.900681, 14.863933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.026119, 16.884249, 14.743655>,  <25.254799, 16.874390, 14.671489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.026119, 16.884249, 14.743655>,  <24.644985, 16.900681, 14.863933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.026119, 16.884249, 14.743655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169879, -0.748838, 0.640611,
		-0.251486, -0.661479, -0.706542,
		0.952836, -0.041078, -0.300694,
		25.311970, 16.871925, 14.653447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.873161, 16.280996, 14.553840>,  <24.644985, 16.900681, 14.863933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.873161, 16.280996, 14.553840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.136816, 16.455765, 14.798670>,  <25.295010, 16.560627, 14.945568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.136816, 16.455765, 14.798670>,  <24.873161, 16.280996, 14.553840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.136816, 16.455765, 14.798670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056057, -0.783095, 0.619370,
		0.749931, -0.442561, -0.491674,
		0.659137, 0.436923, 0.612076,
		25.334557, 16.586842, 14.982292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.278585, 15.816395, 14.932605>,  <24.873161, 16.280996, 14.553840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.278585, 15.816395, 14.932605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.228292, 16.155781, 15.138244>,  <25.198116, 16.359413, 15.261627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.228292, 16.155781, 15.138244>,  <25.278585, 15.816395, 14.932605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.228292, 16.155781, 15.138244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561641, -0.488047, 0.668109,
		0.817771, -0.204735, 0.537897,
		-0.125734, 0.848466, 0.514098,
		25.190573, 16.410320, 15.292473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.483480, 15.739045, 15.658469>,  <25.278585, 15.816395, 14.932605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.483480, 15.739045, 15.658469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.729259, 16.054602, 15.654442>,  <25.876728, 16.243937, 15.652025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.729259, 16.054602, 15.654442>,  <25.483480, 15.739045, 15.658469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.729259, 16.054602, 15.654442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404370, -0.303943, 0.862615,
		0.677449, -0.534104, -0.505762,
		0.614449, 0.788892, -0.010069,
		25.913595, 16.291269, 15.651421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.188232, 15.568657, 15.789700>,  <25.483480, 15.739045, 15.658469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.188232, 15.568657, 15.789700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.146227, 15.953669, 15.889708>,  <26.121023, 16.184675, 15.949712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.146227, 15.953669, 15.889708>,  <26.188232, 15.568657, 15.789700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.146227, 15.953669, 15.889708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502367, -0.165628, 0.848643,
		0.858254, 0.214720, -0.466149,
		-0.105013, 0.962529, 0.250019,
		26.114723, 16.242428, 15.964713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.476395, 14.931690, 15.372288>,  <26.188232, 15.568657, 15.789700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.476395, 14.931690, 15.372288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.808823, 15.057599, 15.188879>,  <27.008280, 15.133144, 15.078834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.808823, 15.057599, 15.188879>,  <26.476395, 14.931690, 15.372288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.808823, 15.057599, 15.188879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060709, 0.870845, 0.487795,
		0.552846, -0.377555, 0.742842,
		0.831069, 0.314772, -0.458522,
		27.058144, 15.152031, 15.051322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<12.817122, 19.150568, 27.735979> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.951709, 18.782579, 27.816422>,  <13.032461, 18.561787, 27.864687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.951709, 18.782579, 27.816422>,  <12.817122, 19.150568, 27.735979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.951709, 18.782579, 27.816422> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188531, -0.275044, -0.942766,
		0.922630, 0.279295, -0.265986,
		0.336467, -0.919970, 0.201108,
		13.052649, 18.506588, 27.876755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.295948, 18.938438, 27.185297>,  <12.817122, 19.150568, 27.735979>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.295948, 18.938438, 27.185297> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.163340, 18.600643, 27.353552>,  <13.083775, 18.397966, 27.454504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.163340, 18.600643, 27.353552>,  <13.295948, 18.938438, 27.185297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.163340, 18.600643, 27.353552> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233702, -0.358446, -0.903825,
		0.914044, -0.397941, -0.078526,
		-0.331522, -0.844488, 0.420635,
		13.063883, 18.347298, 27.479742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.686421, 18.359146, 26.927376>,  <13.295948, 18.938438, 27.185297>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.686421, 18.359146, 26.927376> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.339137, 18.215601, 27.064447>,  <13.130767, 18.129475, 27.146690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.339137, 18.215601, 27.064447>,  <13.686421, 18.359146, 26.927376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.339137, 18.215601, 27.064447> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229471, -0.321934, -0.918532,
		0.439946, -0.876114, 0.197158,
		-0.868211, -0.358863, 0.342677,
		13.078674, 18.107943, 27.167250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.595015, 17.691965, 26.695391>,  <13.686421, 18.359146, 26.927376>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.595015, 17.691965, 26.695391> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.211884, 17.789227, 26.756639>,  <12.982006, 17.847584, 26.793388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.211884, 17.789227, 26.756639>,  <13.595015, 17.691965, 26.695391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.211884, 17.789227, 26.756639> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266097, -0.549438, -0.792029,
		-0.108455, -0.799371, 0.590969,
		-0.957826, 0.243154, 0.153121,
		12.924537, 17.862173, 26.802576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.327420, 17.253317, 26.379314>,  <13.595015, 17.691965, 26.695391>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.327420, 17.253317, 26.379314> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.990273, 17.460665, 26.437092>,  <12.787984, 17.585073, 26.471758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.990273, 17.460665, 26.437092>,  <13.327420, 17.253317, 26.379314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.990273, 17.460665, 26.437092> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427837, -0.482731, -0.764151,
		-0.326387, -0.705877, 0.628657,
		-0.842869, 0.518372, 0.144443,
		12.737411, 17.616177, 26.480425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.807228, 16.711067, 26.368677>,  <13.327420, 17.253317, 26.379314>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.807228, 16.711067, 26.368677> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.633888, 17.064293, 26.296667>,  <12.529884, 17.276228, 26.253462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.633888, 17.064293, 26.296667>,  <12.807228, 16.711067, 26.368677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.633888, 17.064293, 26.296667> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493939, -0.399803, -0.772128,
		-0.753812, -0.245680, 0.609433,
		-0.433350, 0.883062, -0.180025,
		12.503883, 17.329212, 26.242661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.173645, 16.529903, 26.146667>,  <12.807228, 16.711067, 26.368677>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.173645, 16.529903, 26.146667> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.247058, 16.899349, 26.012056>,  <12.291105, 17.121017, 25.931290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.247058, 16.899349, 26.012056>,  <12.173645, 16.529903, 26.146667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.247058, 16.899349, 26.012056> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392862, -0.244899, -0.886388,
		-0.901097, 0.294891, 0.317906,
		0.183533, 0.923615, -0.336530,
		12.302117, 17.176434, 25.911097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.745559, 16.539995, 25.655306>,  <12.173645, 16.529903, 26.146667>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.745559, 16.539995, 25.655306> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.945947, 16.875874, 25.571461>,  <12.066179, 17.077400, 25.521154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.945947, 16.875874, 25.571461>,  <11.745559, 16.539995, 25.655306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.945947, 16.875874, 25.571461> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239077, -0.098503, -0.965991,
		-0.831789, 0.534045, 0.151406,
		0.500969, 0.839698, -0.209612,
		12.096237, 17.127783, 25.508577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.270951, 17.011583, 25.258121>,  <11.745559, 16.539995, 25.655306>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.270951, 17.011583, 25.258121> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.654040, 17.094698, 25.178532>,  <11.883894, 17.144567, 25.130777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.654040, 17.094698, 25.178532>,  <11.270951, 17.011583, 25.258121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.654040, 17.094698, 25.178532> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205940, 0.012214, -0.978488,
		-0.200889, 0.978097, 0.054490,
		0.957722, 0.207789, -0.198976,
		11.941357, 17.157034, 25.118839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.324656, 17.633181, 24.736040>,  <11.270951, 17.011583, 25.258121>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.324656, 17.633181, 24.736040> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.661497, 17.418911, 24.711012>,  <11.863602, 17.290348, 24.695995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.661497, 17.418911, 24.711012>,  <11.324656, 17.633181, 24.736040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.661497, 17.418911, 24.711012> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059256, 0.023412, -0.997968,
		0.536051, 0.844100, -0.012026,
		0.842103, -0.535675, -0.062568,
		11.914128, 17.258209, 24.692242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.722789, 17.999561, 24.289186>,  <11.324656, 17.633181, 24.736040>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.722789, 17.999561, 24.289186> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.861472, 17.625048, 24.311695>,  <11.944682, 17.400339, 24.325201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.861472, 17.625048, 24.311695>,  <11.722789, 17.999561, 24.289186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.861472, 17.625048, 24.311695> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096098, -0.024220, -0.995077,
		0.933038, 0.350408, 0.081578,
		0.346707, -0.936284, 0.056272,
		11.965485, 17.344162, 24.328577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.177523, 17.895287, 23.773739>,  <11.722789, 17.999561, 24.289186>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.177523, 17.895287, 23.773739> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.091242, 17.518009, 23.874821>,  <12.039474, 17.291643, 23.935469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.091242, 17.518009, 23.874821>,  <12.177523, 17.895287, 23.773739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.091242, 17.518009, 23.874821> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105273, -0.279749, -0.954284,
		0.970768, -0.179238, 0.159635,
		-0.215701, -0.943194, 0.252702,
		12.026531, 17.235050, 23.950632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.522379, 17.551579, 23.270943>,  <12.177523, 17.895287, 23.773739>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.522379, 17.551579, 23.270943> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.250522, 17.305195, 23.430281>,  <12.087407, 17.157364, 23.525883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.250522, 17.305195, 23.430281>,  <12.522379, 17.551579, 23.270943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.250522, 17.305195, 23.430281> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282963, -0.280865, -0.917086,
		0.676769, -0.736009, 0.016595,
		-0.679644, -0.615959, 0.398344,
		12.046629, 17.120407, 23.549784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.672864, 16.954279, 22.919851>,  <12.522379, 17.551579, 23.270943>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.672864, 16.954279, 22.919851> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.293533, 16.947086, 23.046566>,  <12.065935, 16.942772, 23.122595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.293533, 16.947086, 23.046566>,  <12.672864, 16.954279, 22.919851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.293533, 16.947086, 23.046566> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315018, -0.066032, -0.946786,
		0.037941, -0.997656, 0.056956,
		-0.948327, -0.017980, 0.316785,
		12.009035, 16.941692, 23.141602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.372350, 16.394316, 22.450151>,  <12.672864, 16.954279, 22.919851>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.372350, 16.394316, 22.450151> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.068936, 16.594908, 22.616594>,  <11.886889, 16.715263, 22.716459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.068936, 16.594908, 22.616594>,  <12.372350, 16.394316, 22.450151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.068936, 16.594908, 22.616594> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522513, -0.086524, -0.848230,
		-0.389371, -0.860830, 0.327662,
		-0.758532, 0.501484, 0.416105,
		11.841376, 16.745352, 22.741426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.807275, 16.016546, 22.290527>,  <12.372350, 16.394316, 22.450151>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.807275, 16.016546, 22.290527> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.664828, 16.383318, 22.362553>,  <11.579360, 16.603380, 22.405767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.664828, 16.383318, 22.362553>,  <11.807275, 16.016546, 22.290527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.664828, 16.383318, 22.362553> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476972, -0.012665, -0.878827,
		-0.803541, -0.398850, 0.441860,
		-0.356116, 0.916929, 0.180063,
		11.557994, 16.658396, 22.416571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.198673, 16.067831, 21.780628>,  <11.807275, 16.016546, 22.290527>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.198673, 16.067831, 21.780628> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.266774, 16.443933, 21.898563>,  <11.307634, 16.669596, 21.969324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.266774, 16.443933, 21.898563>,  <11.198673, 16.067831, 21.780628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.266774, 16.443933, 21.898563> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503815, 0.340200, -0.793999,
		-0.846867, -0.013363, 0.531636,
		0.170253, 0.940258, 0.294836,
		11.317850, 16.726011, 21.987015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.586046, 16.389280, 21.623911>,  <11.198673, 16.067831, 21.780628>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.586046, 16.389280, 21.623911> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.881655, 16.657370, 21.651180>,  <11.059020, 16.818224, 21.667542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.881655, 16.657370, 21.651180>,  <10.586046, 16.389280, 21.623911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.881655, 16.657370, 21.651180> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314329, 0.432551, -0.845043,
		-0.595857, 0.603075, 0.530335,
		0.739021, 0.670224, 0.068175,
		11.103361, 16.858437, 21.671633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.236778, 17.128582, 21.576456>,  <10.586046, 16.389280, 21.623911>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.236778, 17.128582, 21.576456> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.618482, 17.157129, 21.460320>,  <10.847504, 17.174257, 21.390638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.618482, 17.157129, 21.460320>,  <10.236778, 17.128582, 21.576456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.618482, 17.157129, 21.460320> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293236, 0.412893, -0.862283,
		0.058338, 0.907979, 0.414935,
		0.954259, 0.071371, -0.290340,
		10.904759, 17.178541, 21.373219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.315402, 17.806078, 21.452265>,  <10.236778, 17.128582, 21.576456>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.315402, 17.806078, 21.452265> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.602579, 17.626482, 21.239487>,  <10.774885, 17.518724, 21.111820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.602579, 17.626482, 21.239487>,  <10.315402, 17.806078, 21.452265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.602579, 17.626482, 21.239487> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274167, 0.520020, -0.808957,
		0.639835, 0.726627, 0.250247,
		0.717944, -0.448990, -0.531944,
		10.817963, 17.491785, 21.079903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.534598, 18.391594, 20.932077>,  <10.315402, 17.806078, 21.452265>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.534598, 18.391594, 20.932077> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.683726, 18.046410, 20.795664>,  <10.773203, 17.839298, 20.713816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.683726, 18.046410, 20.795664>,  <10.534598, 18.391594, 20.932077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.683726, 18.046410, 20.795664> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050536, 0.348100, -0.936094,
		0.926526, 0.366230, 0.086168,
		0.372821, -0.862961, -0.341032,
		10.795572, 17.787521, 20.693354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.206683, 18.606539, 20.541069>,  <10.534598, 18.391594, 20.932077>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.206683, 18.606539, 20.541069> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.034588, 18.271410, 20.406637>,  <10.931331, 18.070333, 20.325977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.034588, 18.271410, 20.406637>,  <11.206683, 18.606539, 20.541069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.034588, 18.271410, 20.406637> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027304, 0.384207, -0.922843,
		0.902303, -0.387866, -0.188176,
		-0.430238, -0.837822, -0.336081,
		10.905517, 18.020063, 20.305813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.927965, 18.460245, 20.402617>,  <11.206683, 18.606539, 20.541069>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.927965, 18.460245, 20.402617> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.971511, 18.753719, 20.134333>,  <11.997639, 18.929804, 19.973362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.971511, 18.753719, 20.134333>,  <11.927965, 18.460245, 20.402617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.971511, 18.753719, 20.134333> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177303, 0.649568, 0.739341,
		0.978117, -0.199407, -0.059369,
		0.108865, 0.733688, -0.670709,
		12.004170, 18.973825, 19.933121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.585737, 18.850681, 20.616430>,  <11.927965, 18.460245, 20.402617>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.585737, 18.850681, 20.616430> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.359491, 19.091824, 20.391344>,  <12.223743, 19.236509, 20.256292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.359491, 19.091824, 20.391344>,  <12.585737, 18.850681, 20.616430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.359491, 19.091824, 20.391344> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187108, 0.758370, 0.624392,
		0.803162, 0.247878, -0.541744,
		-0.565615, 0.602853, -0.562714,
		12.189807, 19.272680, 20.222530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.025121, 19.405048, 20.457012>,  <12.585737, 18.850681, 20.616430>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.025121, 19.405048, 20.457012> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.639633, 19.504063, 20.417068>,  <12.408340, 19.563471, 20.393103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.639633, 19.504063, 20.417068>,  <13.025121, 19.405048, 20.457012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.639633, 19.504063, 20.417068> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062226, 0.572166, 0.817774,
		0.259562, 0.781891, -0.566810,
		-0.963720, 0.247533, -0.099859,
		12.350517, 19.578323, 20.387112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.035080, 20.103672, 20.487753>,  <13.025121, 19.405048, 20.457012>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.035080, 20.103672, 20.487753> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.668797, 19.978474, 20.588558>,  <12.449026, 19.903355, 20.649042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.668797, 19.978474, 20.588558>,  <13.035080, 20.103672, 20.487753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.668797, 19.978474, 20.588558> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015103, 0.653512, 0.756765,
		-0.401556, 0.689171, -0.603155,
		-0.915710, -0.312994, 0.252013,
		12.394084, 19.884575, 20.664162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.715087, 20.752626, 20.679424>,  <13.035080, 20.103672, 20.487753>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.715087, 20.752626, 20.679424> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.492908, 20.448805, 20.814810>,  <12.359602, 20.266512, 20.896042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.492908, 20.448805, 20.814810>,  <12.715087, 20.752626, 20.679424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.492908, 20.448805, 20.814810> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018018, 0.417923, 0.908304,
		-0.831358, 0.498415, -0.245819,
		-0.555445, -0.759555, 0.338463,
		12.326275, 20.220938, 20.916349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.099450, 21.067919, 20.819555>,  <12.715087, 20.752626, 20.679424>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.099450, 21.067919, 20.819555> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.100323, 20.741959, 21.051395>,  <12.100846, 20.546383, 21.190498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.100323, 20.741959, 21.051395>,  <12.099450, 21.067919, 20.819555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.100323, 20.741959, 21.051395> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281271, 0.555700, 0.782358,
		-0.959626, -0.164732, -0.227995,
		0.002183, -0.814899, 0.579599,
		12.100978, 20.497488, 21.225275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.422554, 21.049664, 21.149073>,  <12.099450, 21.067919, 20.819555>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.422554, 21.049664, 21.149073> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.694252, 20.855669, 21.369406>,  <11.857271, 20.739273, 21.501606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.694252, 20.855669, 21.369406>,  <11.422554, 21.049664, 21.149073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.694252, 20.855669, 21.369406> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280780, 0.521718, 0.805588,
		-0.678077, -0.701854, 0.218201,
		0.679245, -0.484985, 0.550832,
		11.898026, 20.710173, 21.534655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.135909, 21.171791, 21.792599>,  <11.422554, 21.049664, 21.149073>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.135909, 21.171791, 21.792599> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.487045, 21.006296, 21.889114>,  <11.697727, 20.907000, 21.947023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.487045, 21.006296, 21.889114>,  <11.135909, 21.171791, 21.792599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.487045, 21.006296, 21.889114> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132087, 0.275120, 0.952293,
		-0.460382, -0.867831, 0.186862,
		0.877839, -0.413737, 0.241289,
		11.750397, 20.882175, 21.961500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.090691, 20.836386, 22.477779>,  <11.135909, 21.171791, 21.792599>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.090691, 20.836386, 22.477779> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.485417, 20.883978, 22.433895>,  <11.722253, 20.912533, 22.407564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.485417, 20.883978, 22.433895>,  <11.090691, 20.836386, 22.477779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.485417, 20.883978, 22.433895> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072857, 0.278735, 0.957601,
		0.144517, -0.952969, 0.266391,
		0.986816, 0.118981, -0.109712,
		11.781463, 20.919672, 22.400982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.287598, 20.729298, 23.192028>,  <11.090691, 20.836386, 22.477779>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.287598, 20.729298, 23.192028> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.593177, 20.891790, 22.991486>,  <11.776525, 20.989286, 22.871161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.593177, 20.891790, 22.991486>,  <11.287598, 20.729298, 23.192028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.593177, 20.891790, 22.991486> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317723, 0.439448, 0.840201,
		0.561636, -0.801163, 0.206647,
		0.763948, 0.406231, -0.501357,
		11.822361, 21.013660, 22.841078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.891382, 20.565746, 23.562561>,  <11.287598, 20.729298, 23.192028>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.891382, 20.565746, 23.562561> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.000144, 20.871134, 23.328234>,  <12.065401, 21.054367, 23.187637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.000144, 20.871134, 23.328234>,  <11.891382, 20.565746, 23.562561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.000144, 20.871134, 23.328234> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419905, 0.453619, 0.786072,
		0.865880, -0.459724, -0.197243,
		0.271903, 0.763468, -0.585820,
		12.081715, 21.100174, 23.152487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.527778, 20.638813, 23.797132>,  <11.891382, 20.565746, 23.562561>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.527778, 20.638813, 23.797132> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.421971, 20.980200, 23.617523>,  <12.358487, 21.185032, 23.509758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.421971, 20.980200, 23.617523>,  <12.527778, 20.638813, 23.797132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.421971, 20.980200, 23.617523> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504842, 0.519259, 0.689568,
		0.821684, -0.044283, -0.568220,
		-0.264517, 0.853469, -0.449023,
		12.342616, 21.236240, 23.482817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.113290, 21.104198, 23.600592>,  <12.527778, 20.638813, 23.797132>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.113290, 21.104198, 23.600592> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.777544, 21.301678, 23.691566>,  <12.576097, 21.420166, 23.746151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.777544, 21.301678, 23.691566>,  <13.113290, 21.104198, 23.600592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.777544, 21.301678, 23.691566> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462289, 0.428268, 0.776451,
		0.285928, 0.756868, -0.587705,
		-0.839366, 0.493698, 0.227438,
		12.525734, 21.449787, 23.759798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.308891, 21.819721, 23.730663>,  <13.113290, 21.104198, 23.600592>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.308891, 21.819721, 23.730663> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.960694, 21.731556, 23.906691>,  <12.751776, 21.678658, 24.012306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.960694, 21.731556, 23.906691>,  <13.308891, 21.819721, 23.730663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.960694, 21.731556, 23.906691> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368476, 0.300911, 0.879590,
		-0.326295, 0.927831, -0.180724,
		-0.870492, -0.220414, 0.440069,
		12.699547, 21.665432, 24.038712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.113840, 22.342236, 24.205320>,  <13.308891, 21.819721, 23.730663>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.113840, 22.342236, 24.205320> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.867281, 22.060328, 24.345808>,  <12.719346, 21.891182, 24.430099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.867281, 22.060328, 24.345808>,  <13.113840, 22.342236, 24.205320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.867281, 22.060328, 24.345808> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294418, 0.207404, 0.932900,
		-0.730324, 0.678441, 0.079654,
		-0.616397, -0.704771, 0.351217,
		12.682362, 21.848896, 24.451174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.806726, 22.565464, 24.860510>,  <13.113840, 22.342236, 24.205320>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.806726, 22.565464, 24.860510> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.769679, 22.168079, 24.887218>,  <12.747451, 21.929649, 24.903244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.769679, 22.168079, 24.887218>,  <12.806726, 22.565464, 24.860510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.769679, 22.168079, 24.887218> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103675, 0.057074, 0.992972,
		-0.990289, 0.098890, 0.097711,
		-0.092618, -0.993460, 0.066772,
		12.741894, 21.870041, 24.907249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.648802, 22.519907, 25.582060>,  <12.806726, 22.565464, 24.860510>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.648802, 22.519907, 25.582060> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.719596, 22.136860, 25.491156>,  <12.762073, 21.907032, 25.436613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.719596, 22.136860, 25.491156>,  <12.648802, 22.519907, 25.582060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.719596, 22.136860, 25.491156> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275743, -0.173416, 0.945459,
		-0.944798, -0.229998, 0.233364,
		0.176984, -0.957616, -0.227263,
		12.772692, 21.849575, 25.422977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.258495, 21.982790, 26.159777>,  <12.648802, 22.519907, 25.582060>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.258495, 21.982790, 26.159777> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.571094, 21.801085, 25.988707>,  <12.758653, 21.692060, 25.886065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.571094, 21.801085, 25.988707>,  <12.258495, 21.982790, 26.159777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.571094, 21.801085, 25.988707> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286336, -0.347890, 0.892740,
		-0.554324, -0.820132, -0.141803,
		0.781497, -0.454264, -0.427677,
		12.805543, 21.664804, 25.860403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<12.312278, 21.176794, 26.404589> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.678019, 21.265718, 26.269217>,  <12.897463, 21.319073, 26.187992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.678019, 21.265718, 26.269217>,  <12.312278, 21.176794, 26.404589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.678019, 21.265718, 26.269217> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404822, -0.520112, 0.752065,
		-0.008828, -0.824658, -0.565563,
		0.914353, 0.222313, -0.338431,
		12.952325, 21.332413, 26.167686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.719646, 20.554529, 26.632364>,  <12.312278, 21.176794, 26.404589>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.719646, 20.554529, 26.632364> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.968245, 20.859921, 26.562111>,  <13.117403, 21.043156, 26.519958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.968245, 20.859921, 26.562111>,  <12.719646, 20.554529, 26.632364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.968245, 20.859921, 26.562111> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413438, -0.129212, 0.901317,
		0.665442, -0.632777, -0.395955,
		0.621495, 0.763477, -0.175631,
		13.154693, 21.088964, 26.509422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.295301, 20.367712, 26.912874>,  <12.719646, 20.554529, 26.632364>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.295301, 20.367712, 26.912874> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.343800, 20.763769, 26.884821>,  <13.372899, 21.001404, 26.867989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.343800, 20.763769, 26.884821>,  <13.295301, 20.367712, 26.912874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.343800, 20.763769, 26.884821> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481718, 0.003083, 0.876321,
		0.867898, -0.140034, -0.476595,
		0.121246, 0.990142, -0.070132,
		13.380174, 21.060812, 26.863781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.978318, 20.456244, 27.131027>,  <13.295301, 20.367712, 26.912874>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.978318, 20.456244, 27.131027> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.799953, 20.811340, 27.176767>,  <13.692934, 21.024399, 27.204212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.799953, 20.811340, 27.176767>,  <13.978318, 20.456244, 27.131027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.799953, 20.811340, 27.176767> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362524, 0.062316, 0.929889,
		0.818375, 0.456105, -0.349615,
		-0.445913, 0.887742, 0.114351,
		13.666180, 21.077663, 27.211073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.477528, 20.974417, 27.470793>,  <13.978318, 20.456244, 27.131027>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.477528, 20.974417, 27.470793> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.104081, 21.099815, 27.540167>,  <13.880013, 21.175055, 27.581791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.104081, 21.099815, 27.540167>,  <14.477528, 20.974417, 27.470793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.104081, 21.099815, 27.540167> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224666, 0.135203, 0.965011,
		0.279080, 0.939915, -0.196660,
		-0.933617, 0.313498, 0.173434,
		13.823997, 21.193865, 27.592197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.586684, 21.451239, 27.880932>,  <14.477528, 20.974417, 27.470793>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.586684, 21.451239, 27.880932> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.193944, 21.413279, 27.946615>,  <13.958300, 21.390503, 27.986025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.193944, 21.413279, 27.946615>,  <14.586684, 21.451239, 27.880932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.193944, 21.413279, 27.946615> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138418, 0.233334, 0.962494,
		-0.129655, 0.967755, -0.215964,
		-0.981850, -0.094899, 0.164207,
		13.899389, 21.384809, 27.995878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.410652, 21.964693, 28.304771>,  <14.586684, 21.451239, 27.880932>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.410652, 21.964693, 28.304771> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.089859, 21.735298, 28.371626>,  <13.897383, 21.597660, 28.411739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.089859, 21.735298, 28.371626>,  <14.410652, 21.964693, 28.304771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.089859, 21.735298, 28.371626> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043129, 0.223477, 0.973754,
		-0.595788, 0.788143, -0.154491,
		-0.801983, -0.573488, 0.167137,
		13.849264, 21.563251, 28.421766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.904900, 22.348801, 28.732702>,  <14.410652, 21.964693, 28.304771>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.904900, 22.348801, 28.732702> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.791057, 21.966009, 28.755293>,  <13.722751, 21.736334, 28.768848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.791057, 21.966009, 28.755293>,  <13.904900, 22.348801, 28.732702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.791057, 21.966009, 28.755293> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119840, 0.022935, 0.992528,
		-0.951124, 0.289250, 0.108157,
		-0.284608, -0.956979, 0.056477,
		13.705674, 21.678915, 28.772236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.350635, 22.326937, 29.257336>,  <13.904900, 22.348801, 28.732702>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.350635, 22.326937, 29.257336> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.500105, 21.956118, 29.244999>,  <13.589787, 21.733627, 29.237597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.500105, 21.956118, 29.244999>,  <13.350635, 22.326937, 29.257336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.500105, 21.956118, 29.244999> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093087, 0.004399, 0.995648,
		-0.922876, -0.374921, 0.087939,
		0.373677, -0.927046, -0.030840,
		13.612208, 21.678003, 29.235746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.060424, 22.010773, 29.772665>,  <13.350635, 22.326937, 29.257336>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.060424, 22.010773, 29.772665> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.370564, 21.768785, 29.700169>,  <13.556647, 21.623592, 29.656672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.370564, 21.768785, 29.700169>,  <13.060424, 22.010773, 29.772665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.370564, 21.768785, 29.700169> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211942, -0.021079, 0.977055,
		-0.594907, -0.795971, 0.111874,
		0.775349, -0.604968, -0.181239,
		13.603168, 21.587296, 29.645798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.162764, 21.521294, 30.348337>,  <13.060424, 22.010773, 29.772665>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.162764, 21.521294, 30.348337> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.533696, 21.490210, 30.201904>,  <13.756256, 21.471560, 30.114044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.533696, 21.490210, 30.201904>,  <13.162764, 21.521294, 30.348337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.533696, 21.490210, 30.201904> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369384, 0.032974, 0.928692,
		-0.060098, -0.996430, 0.059283,
		0.927332, -0.077710, -0.366083,
		13.811895, 21.466898, 30.092079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.587092, 21.075300, 30.816139>,  <13.162764, 21.521294, 30.348337>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.587092, 21.075300, 30.816139> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.862304, 21.266500, 30.597733>,  <14.027431, 21.381222, 30.466688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.862304, 21.266500, 30.597733>,  <13.587092, 21.075300, 30.816139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.862304, 21.266500, 30.597733> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513757, 0.210545, 0.831699,
		0.512516, -0.852751, -0.100717,
		0.688027, 0.478003, -0.546015,
		14.068712, 21.409901, 30.433928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.292643, 20.755547, 31.029667>,  <13.587092, 21.075300, 30.816139>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.292643, 20.755547, 31.029667> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.377364, 21.121565, 30.892359>,  <14.428197, 21.341175, 30.809975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.377364, 21.121565, 30.892359>,  <14.292643, 20.755547, 31.029667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.377364, 21.121565, 30.892359> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602499, 0.154297, 0.783063,
		0.769502, -0.372675, -0.518633,
		0.211804, 0.915044, -0.343268,
		14.440906, 21.396078, 30.789379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.111003, 20.877247, 31.158220>,  <14.292643, 20.755547, 31.029667>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.111003, 20.877247, 31.158220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.998723, 21.255779, 31.094133>,  <14.931355, 21.482899, 31.055681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.998723, 21.255779, 31.094133>,  <15.111003, 20.877247, 31.158220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.998723, 21.255779, 31.094133> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607336, 0.304385, 0.733821,
		0.743203, 0.108679, -0.660180,
		-0.280700, 0.946329, -0.160216,
		14.914514, 21.539679, 31.046068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.724665, 21.237680, 31.054546>,  <15.111003, 20.877247, 31.158220>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.724665, 21.237680, 31.054546> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.447752, 21.500357, 31.174215>,  <15.281605, 21.657963, 31.246017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.447752, 21.500357, 31.174215>,  <15.724665, 21.237680, 31.054546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.447752, 21.500357, 31.174215> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565901, 0.236785, 0.789740,
		0.447775, 0.716024, -0.535543,
		-0.692282, 0.656690, 0.299172,
		15.240067, 21.697363, 31.263968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.965878, 21.919464, 30.970903>,  <15.724665, 21.237680, 31.054546>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.965878, 21.919464, 30.970903> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.700183, 21.841640, 31.259605>,  <15.540766, 21.794947, 31.432827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.700183, 21.841640, 31.259605>,  <15.965878, 21.919464, 30.970903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.700183, 21.841640, 31.259605> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606569, 0.424003, 0.672529,
		-0.436875, 0.884515, -0.163625,
		-0.664239, -0.194561, 0.721756,
		15.500911, 21.783272, 31.476131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.287228, 22.220057, 31.443415>,  <15.965878, 21.919464, 30.970903>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.287228, 22.220057, 31.443415> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.973029, 22.113499, 31.666851>,  <15.784510, 22.049564, 31.800913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.973029, 22.113499, 31.666851>,  <16.287228, 22.220057, 31.443415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.973029, 22.113499, 31.666851> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476987, 0.314479, 0.820723,
		-0.394303, 0.911118, -0.119955,
		-0.785499, -0.266397, 0.558592,
		15.737380, 22.033579, 31.834429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.147409, 22.763250, 31.792337>,  <16.287228, 22.220057, 31.443415>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.147409, 22.763250, 31.792337> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.975847, 22.477583, 32.013607>,  <15.872910, 22.306183, 32.146370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.975847, 22.477583, 32.013607>,  <16.147409, 22.763250, 31.792337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.975847, 22.477583, 32.013607> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579573, 0.252164, 0.774925,
		-0.692917, 0.652976, 0.305757,
		-0.428907, -0.714167, 0.553176,
		15.847176, 22.263332, 32.179562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.105473, 23.041410, 32.452305>,  <16.147409, 22.763250, 31.792337>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.105473, 23.041410, 32.452305> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.089819, 22.643627, 32.491344>,  <16.080427, 22.404957, 32.514767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.089819, 22.643627, 32.491344>,  <16.105473, 23.041410, 32.452305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.089819, 22.643627, 32.491344> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679720, 0.045101, 0.732084,
		-0.732427, 0.094988, 0.674187,
		-0.039133, -0.994456, 0.097599,
		16.078079, 22.345291, 32.520622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.942811, 22.981985, 33.146931>,  <16.105473, 23.041410, 32.452305>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.942811, 22.981985, 33.146931> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.116602, 22.649055, 33.009254>,  <16.220877, 22.449299, 32.926647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.116602, 22.649055, 33.009254>,  <15.942811, 22.981985, 33.146931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.116602, 22.649055, 33.009254> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546360, -0.060254, 0.835380,
		-0.716045, -0.551006, 0.428569,
		0.434477, -0.832323, -0.344192,
		16.246944, 22.399359, 32.905998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.980234, 22.545307, 33.751884>,  <15.942811, 22.981985, 33.146931>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.980234, 22.545307, 33.751884> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.248083, 22.392056, 33.497383>,  <16.408792, 22.300104, 33.344681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.248083, 22.392056, 33.497383>,  <15.980234, 22.545307, 33.751884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.248083, 22.392056, 33.497383> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671628, -0.053327, 0.738967,
		-0.317049, -0.922155, 0.221611,
		0.669623, -0.383129, -0.636252,
		16.448971, 22.277117, 33.306507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.195574, 21.812073, 34.029652>,  <15.980234, 22.545307, 33.751884>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.195574, 21.812073, 34.029652> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.486496, 21.979549, 33.812130>,  <16.661049, 22.080036, 33.681618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.486496, 21.979549, 33.812130>,  <16.195574, 21.812073, 34.029652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.486496, 21.979549, 33.812130> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653683, -0.181178, 0.734761,
		0.209112, -0.889871, -0.405463,
		0.727304, 0.418692, -0.543807,
		16.704687, 22.105158, 33.648987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.786417, 21.384022, 34.049473>,  <16.195574, 21.812073, 34.029652>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.786417, 21.384022, 34.049473> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.886332, 21.765360, 33.981667>,  <16.946281, 21.994164, 33.940983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.886332, 21.765360, 33.981667>,  <16.786417, 21.384022, 34.049473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.886332, 21.765360, 33.981667> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686939, -0.051089, 0.724917,
		0.682438, -0.297522, -0.667652,
		0.249788, 0.953347, -0.169514,
		16.961267, 22.051365, 33.930813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.402729, 21.015894, 34.403099>,  <16.786417, 21.384022, 34.049473>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.402729, 21.015894, 34.403099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.321716, 20.642586, 34.521751>,  <16.273109, 20.418602, 34.592945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.321716, 20.642586, 34.521751>,  <16.402729, 21.015894, 34.403099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.321716, 20.642586, 34.521751> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.943336, 0.104623, -0.314913,
		0.262864, -0.343604, -0.901576,
		-0.202531, -0.933269, 0.296632,
		16.260958, 20.362606, 34.610741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.488918, 20.700645, 35.075542>,  <16.402729, 21.015894, 34.403099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.488918, 20.700645, 35.075542> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.280241, 20.363733, 35.129795>,  <16.155035, 20.161585, 35.162346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.280241, 20.363733, 35.129795>,  <16.488918, 20.700645, 35.075542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.280241, 20.363733, 35.129795> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019795, -0.146986, -0.988940,
		0.852903, -0.518609, 0.060009,
		-0.521694, -0.842283, 0.135630,
		16.123734, 20.111048, 35.170483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.800842, 20.251751, 34.615162>,  <16.488918, 20.700645, 35.075542>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.800842, 20.251751, 34.615162> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.456207, 20.056747, 34.671734>,  <16.249426, 19.939745, 34.705677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.456207, 20.056747, 34.671734>,  <16.800842, 20.251751, 34.615162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.456207, 20.056747, 34.671734> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005793, -0.288043, -0.957600,
		0.507577, -0.824237, 0.250999,
		-0.861587, -0.487509, 0.141429,
		16.197731, 19.910494, 34.714161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.836020, 19.552954, 34.248322>,  <16.800842, 20.251751, 34.615162>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.836020, 19.552954, 34.248322> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.442366, 19.578442, 34.314548>,  <16.206173, 19.593735, 34.354286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.442366, 19.578442, 34.314548>,  <16.836020, 19.552954, 34.248322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.442366, 19.578442, 34.314548> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177387, -0.338184, -0.924211,
		-0.002898, -0.938920, 0.344123,
		-0.984137, 0.063721, 0.165572,
		16.147125, 19.597559, 34.364220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.519882, 18.913439, 34.164673>,  <16.836020, 19.552954, 34.248322>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.519882, 18.913439, 34.164673> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.238028, 19.183182, 34.076374>,  <16.068914, 19.345028, 34.023396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.238028, 19.183182, 34.076374>,  <16.519882, 18.913439, 34.164673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.238028, 19.183182, 34.076374> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160556, -0.454557, -0.876127,
		-0.691165, -0.581909, 0.428570,
		-0.704637, 0.674358, -0.220745,
		16.026636, 19.385489, 34.010151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.250990, 18.521978, 33.634052>,  <16.519882, 18.913439, 34.164673>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.250990, 18.521978, 33.634052> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.044672, 18.861942, 33.590954>,  <15.920881, 19.065920, 33.565094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.044672, 18.861942, 33.590954>,  <16.250990, 18.521978, 33.634052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.044672, 18.861942, 33.590954> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199440, -0.241432, -0.949702,
		-0.833173, -0.468364, 0.294036,
		-0.515797, 0.849909, -0.107744,
		15.889933, 19.116915, 33.558632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.580107, 18.345383, 33.577995>,  <16.250990, 18.521978, 33.634052>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.580107, 18.345383, 33.577995> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.637538, 18.698587, 33.399254>,  <15.671997, 18.910509, 33.292007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.637538, 18.698587, 33.399254>,  <15.580107, 18.345383, 33.577995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.637538, 18.698587, 33.399254> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200014, -0.416321, -0.886945,
		-0.969216, 0.216723, 0.116840,
		0.143578, 0.883011, -0.446853,
		15.680612, 18.963491, 33.265198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.036829, 18.348036, 33.112114>,  <15.580107, 18.345383, 33.577995>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.036829, 18.348036, 33.112114> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.271786, 18.646637, 32.987083>,  <15.412760, 18.825798, 32.912064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.271786, 18.646637, 32.987083>,  <15.036829, 18.348036, 33.112114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.271786, 18.646637, 32.987083> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313814, -0.145924, -0.938204,
		-0.745983, 0.649186, 0.148548,
		0.587393, 0.746501, -0.312580,
		15.448004, 18.870586, 32.893311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.619411, 18.804190, 32.707798>,  <15.036829, 18.348036, 33.112114>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.619411, 18.804190, 32.707798> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.998140, 18.829323, 32.581573>,  <15.225378, 18.844402, 32.505836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.998140, 18.829323, 32.581573>,  <14.619411, 18.804190, 32.707798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.998140, 18.829323, 32.581573> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291097, -0.250557, -0.923300,
		-0.137079, 0.966061, -0.218943,
		0.946822, 0.062831, -0.315563,
		15.282187, 18.848173, 32.486904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.545585, 18.988195, 31.965818>,  <14.619411, 18.804190, 32.707798>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.545585, 18.988195, 31.965818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.941171, 18.930447, 31.952524>,  <15.178522, 18.895798, 31.944548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.941171, 18.930447, 31.952524>,  <14.545585, 18.988195, 31.965818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.941171, 18.930447, 31.952524> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037521, -0.027079, -0.998929,
		0.143316, 0.989153, -0.032197,
		0.988966, -0.144370, -0.033234,
		15.237861, 18.887136, 31.942554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.805997, 19.610071, 31.611170>,  <14.545585, 18.988195, 31.965818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.805997, 19.610071, 31.611170> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.031430, 19.280785, 31.583778>,  <15.166690, 19.083212, 31.567345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.031430, 19.280785, 31.583778>,  <14.805997, 19.610071, 31.611170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.031430, 19.280785, 31.583778> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022871, 0.067315, -0.997470,
		0.825743, 0.563723, 0.019110,
		0.563583, -0.823216, -0.068478,
		15.200505, 19.033819, 31.563234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.420276, 19.828228, 31.205103>,  <14.805997, 19.610071, 31.611170>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.420276, 19.828228, 31.205103> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.326712, 19.439672, 31.188671>,  <15.270573, 19.206539, 31.178812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.326712, 19.439672, 31.188671>,  <15.420276, 19.828228, 31.205103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.326712, 19.439672, 31.188671> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094789, 0.064833, -0.993384,
		0.967626, -0.228469, -0.107242,
		-0.233911, -0.971390, -0.041078,
		15.256538, 19.148256, 31.176348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.454582, 19.702143, 30.469954>,  <15.420276, 19.828228, 31.205103>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.454582, 19.702143, 30.469954> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.255020, 19.392262, 30.625351>,  <15.135283, 19.206333, 30.718590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.255020, 19.392262, 30.625351>,  <15.454582, 19.702143, 30.469954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.255020, 19.392262, 30.625351> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428214, -0.169373, -0.887663,
		0.753477, -0.609218, -0.247238,
		-0.498905, -0.774704, 0.388494,
		15.105349, 19.159851, 30.741899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.502092, 19.300180, 29.944597>,  <15.454582, 19.702143, 30.469954>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.502092, 19.300180, 29.944597> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.195352, 19.166643, 30.163864>,  <15.011308, 19.086521, 30.295425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.195352, 19.166643, 30.163864>,  <15.502092, 19.300180, 29.944597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.195352, 19.166643, 30.163864> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545325, -0.111498, -0.830776,
		0.338467, -0.936012, -0.096549,
		-0.766851, -0.333841, 0.548169,
		14.965296, 19.066490, 30.328314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.296782, 18.687445, 29.585167>,  <15.502092, 19.300180, 29.944597>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.296782, 18.687445, 29.585167> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.985797, 18.769268, 29.823061>,  <14.799206, 18.818361, 29.965797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.985797, 18.769268, 29.823061>,  <15.296782, 18.687445, 29.585167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.985797, 18.769268, 29.823061> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619406, -0.412973, -0.667675,
		0.109031, -0.887474, 0.447775,
		-0.777463, 0.204557, 0.594733,
		14.752558, 18.830635, 30.001480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.863913, 18.227985, 29.432096>,  <15.296782, 18.687445, 29.585167>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.863913, 18.227985, 29.432096> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.620079, 18.492325, 29.607224>,  <14.473779, 18.650928, 29.712299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.620079, 18.492325, 29.607224>,  <14.863913, 18.227985, 29.432096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.620079, 18.492325, 29.607224> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693938, -0.177860, -0.697722,
		-0.383221, -0.729136, 0.567011,
		-0.609583, 0.660853, 0.437816,
		14.437204, 18.690580, 29.738569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.224708, 17.884657, 29.589386>,  <14.863913, 18.227985, 29.432096>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.224708, 17.884657, 29.589386> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.137361, 18.274952, 29.583031>,  <14.084952, 18.509129, 29.579218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.137361, 18.274952, 29.583031>,  <14.224708, 17.884657, 29.589386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.137361, 18.274952, 29.583031> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797252, -0.187765, -0.573702,
		-0.562765, -0.112612, 0.818910,
		-0.218368, 0.975737, -0.015888,
		14.071850, 18.567673, 29.578264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.504587, 17.999943, 29.826311>,  <14.224708, 17.884657, 29.589386>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.504587, 17.999943, 29.826311> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.618727, 18.292383, 29.578419>,  <13.687210, 18.467848, 29.429684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.618727, 18.292383, 29.578419>,  <13.504587, 17.999943, 29.826311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.618727, 18.292383, 29.578419> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772543, -0.207240, -0.600191,
		-0.567234, 0.650032, 0.505672,
		0.285348, 0.731102, -0.619731,
		13.704331, 18.511713, 29.392500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.900613, 18.210661, 29.527227>,  <13.504587, 17.999943, 29.826311>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.900613, 18.210661, 29.527227> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.186090, 18.361547, 29.291143>,  <13.357377, 18.452080, 29.149494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.186090, 18.361547, 29.291143>,  <12.900613, 18.210661, 29.527227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.186090, 18.361547, 29.291143> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578528, -0.157594, -0.800294,
		-0.394899, 0.912618, 0.105758,
		0.713695, 0.377218, -0.590208,
		13.400199, 18.474712, 29.114080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.585882, 18.554478, 29.060816>,  <12.900613, 18.210661, 29.527227>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.585882, 18.554478, 29.060816> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.935136, 18.516872, 28.869486>,  <13.144689, 18.494308, 28.754688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.935136, 18.516872, 28.869486>,  <12.585882, 18.554478, 29.060816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.935136, 18.516872, 28.869486> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485246, -0.073826, -0.871255,
		0.046597, 0.992830, -0.110080,
		0.873135, -0.094014, -0.478327,
		13.197077, 18.488668, 28.725988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.608510, 19.125160, 28.497864>,  <12.585882, 18.554478, 29.060816>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.608510, 19.125160, 28.497864> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.840473, 18.816227, 28.394167>,  <12.979651, 18.630867, 28.331949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.840473, 18.816227, 28.394167>,  <12.608510, 19.125160, 28.497864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.840473, 18.816227, 28.394167> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454364, -0.042486, -0.889802,
		0.676210, 0.633794, -0.375559,
		0.579908, -0.772334, -0.259244,
		13.014445, 18.584526, 28.316393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<11.471434, 17.780819, 8.242528> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<11.393044, 18.168972, 8.186030>,  <11.346011, 18.401865, 8.152132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<11.393044, 18.168972, 8.186030>,  <11.471434, 17.780819, 8.242528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.393044, 18.168972, 8.186030> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955478, 0.156559, -0.250103,
		-0.220583, -0.183969, -0.957861,
		-0.195973, 0.970384, -0.141244,
		11.334252, 18.460087, 8.143658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.709176, 17.941174, 7.635941>,  <11.471434, 17.780819, 8.242528>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.709176, 17.941174, 7.635941> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<11.684209, 18.283266, 7.841730>,  <11.669229, 18.488522, 7.965203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<11.684209, 18.283266, 7.841730>,  <11.709176, 17.941174, 7.635941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.684209, 18.283266, 7.841730> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994962, 0.093840, -0.035282,
		-0.078452, 0.509678, -0.856781,
		-0.062418, 0.855233, 0.514472,
		11.665483, 18.539835, 7.996071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.887318, 17.248466, 7.395573>,  <11.709176, 17.941174, 7.635941>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.887318, 17.248466, 7.395573> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<11.705190, 17.148949, 7.053629>,  <11.595913, 17.089239, 6.848463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<11.705190, 17.148949, 7.053629>,  <11.887318, 17.248466, 7.395573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.705190, 17.148949, 7.053629> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866205, -0.345780, -0.360729,
		-0.205846, -0.904731, 0.372947,
		-0.455321, -0.248794, -0.854859,
		11.568594, 17.074310, 6.797171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.644462, 17.286291, 7.653776>,  <11.887318, 17.248466, 7.395573>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.644462, 17.286291, 7.653776> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.916357, 17.166243, 7.386080>,  <13.079494, 17.094213, 7.225462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.916357, 17.166243, 7.386080>,  <12.644462, 17.286291, 7.653776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.916357, 17.166243, 7.386080> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254013, -0.759657, 0.598664,
		-0.688064, -0.576931, -0.440135,
		0.679739, -0.300119, -0.669241,
		13.120278, 17.076206, 7.185308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.152673, 17.635143, 8.231675>,  <12.644462, 17.286291, 7.653776>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.152673, 17.635143, 8.231675> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.338466, 17.283213, 8.271996>,  <13.449942, 17.072054, 8.296187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.338466, 17.283213, 8.271996>,  <13.152673, 17.635143, 8.231675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.338466, 17.283213, 8.271996> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091771, 0.161033, 0.982673,
		-0.880814, -0.447185, 0.155539,
		0.464483, -0.879826, 0.100801,
		13.477811, 17.019264, 8.302236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.791793, 17.186125, 8.666385>,  <13.152673, 17.635143, 8.231675>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.791793, 17.186125, 8.666385> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.189286, 17.141520, 8.663339>,  <13.427782, 17.114756, 8.661510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.189286, 17.141520, 8.663339>,  <12.791793, 17.186125, 8.666385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.189286, 17.141520, 8.663339> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014107, 0.057534, 0.998244,
		-0.110882, -0.992096, 0.058747,
		0.993734, -0.111516, -0.007616,
		13.487407, 17.108065, 8.661054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.877798, 16.813915, 9.264709>,  <12.791793, 17.186125, 8.666385>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.877798, 16.813915, 9.264709> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.251476, 16.917469, 9.166519>,  <13.475683, 16.979601, 9.107605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.251476, 16.917469, 9.166519>,  <12.877798, 16.813915, 9.264709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.251476, 16.917469, 9.166519> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217328, 0.132711, 0.967035,
		0.282927, -0.956748, 0.067715,
		0.934195, 0.258884, -0.245476,
		13.531734, 16.995134, 9.092876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.179661, 16.938036, 9.876469>,  <12.877798, 16.813915, 9.264709>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.179661, 16.938036, 9.876469> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.499848, 16.999611, 9.644761>,  <13.691961, 17.036556, 9.505736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.499848, 16.999611, 9.644761>,  <13.179661, 16.938036, 9.876469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.499848, 16.999611, 9.644761> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589722, -0.029526, 0.807066,
		0.107137, -0.987639, -0.114416,
		0.800469, 0.153940, -0.579269,
		13.739989, 17.045794, 9.470981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.724573, 16.490557, 10.114086>,  <13.179661, 16.938036, 9.876469>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.724573, 16.490557, 10.114086> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.851032, 16.830511, 9.945447>,  <13.926908, 17.034483, 9.844263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.851032, 16.830511, 9.945447>,  <13.724573, 16.490557, 10.114086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.851032, 16.830511, 9.945447> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652269, 0.127976, 0.747106,
		0.688909, -0.511192, -0.513894,
		0.316149, 0.849885, -0.421598,
		13.945877, 17.085476, 9.818968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.398997, 16.538933, 9.921888>,  <13.724573, 16.490557, 10.114086>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.398997, 16.538933, 9.921888> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.259583, 16.892200, 10.047449>,  <14.175934, 17.104160, 10.122786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.259583, 16.892200, 10.047449>,  <14.398997, 16.538933, 9.921888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.259583, 16.892200, 10.047449> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503922, -0.105817, 0.857243,
		0.790307, 0.456963, -0.408167,
		-0.348537, 0.883169, 0.313902,
		14.155022, 17.157152, 10.141620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.967705, 16.855877, 10.028086>,  <14.398997, 16.538933, 9.921888>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.967705, 16.855877, 10.028086> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.708426, 17.029465, 10.278369>,  <14.552859, 17.133617, 10.428539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.708426, 17.029465, 10.278369>,  <14.967705, 16.855877, 10.028086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.708426, 17.029465, 10.278369> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565967, -0.275166, 0.777152,
		0.509436, 0.857877, -0.067252,
		-0.648195, 0.433971, 0.625709,
		14.513968, 17.159657, 10.466082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.231257, 17.351828, 10.507140>,  <14.967705, 16.855877, 10.028086>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.231257, 17.351828, 10.507140> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.892741, 17.247211, 10.692780>,  <14.689631, 17.184443, 10.804163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.892741, 17.247211, 10.692780>,  <15.231257, 17.351828, 10.507140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.892741, 17.247211, 10.692780> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527675, -0.291941, 0.797702,
		-0.073141, 0.919982, 0.385075,
		-0.846291, -0.261540, 0.464099,
		14.638854, 17.168749, 10.832009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.271057, 17.618954, 11.088548>,  <15.231257, 17.351828, 10.507140>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.271057, 17.618954, 11.088548> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.974524, 17.363102, 11.169839>,  <14.796605, 17.209591, 11.218614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.974524, 17.363102, 11.169839>,  <15.271057, 17.618954, 11.088548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.974524, 17.363102, 11.169839> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418901, -0.204406, 0.884726,
		-0.524357, 0.741007, 0.419474,
		-0.741331, -0.639631, 0.203227,
		14.752125, 17.171213, 11.230807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.018356, 17.806993, 11.747828>,  <15.271057, 17.618954, 11.088548>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.018356, 17.806993, 11.747828> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.919590, 17.425812, 11.677502>,  <14.860331, 17.197104, 11.635306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.919590, 17.425812, 11.677502>,  <15.018356, 17.806993, 11.747828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.919590, 17.425812, 11.677502> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447113, -0.273000, 0.851799,
		-0.859722, 0.131714, 0.493486,
		-0.246916, -0.952955, -0.175813,
		14.845515, 17.139925, 11.624758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.706419, 17.634447, 12.366206>,  <15.018356, 17.806993, 11.747828>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.706419, 17.634447, 12.366206> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.791757, 17.279106, 12.203571>,  <14.842959, 17.065901, 12.105990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.791757, 17.279106, 12.203571>,  <14.706419, 17.634447, 12.366206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.791757, 17.279106, 12.203571> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313331, -0.331970, 0.889730,
		-0.925369, -0.317216, 0.207525,
		0.213344, -0.888353, -0.406588,
		14.855760, 17.012600, 12.081594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.565307, 17.184071, 12.880569>,  <14.706419, 17.634447, 12.366206>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.565307, 17.184071, 12.880569> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.771248, 16.949909, 12.630055>,  <14.894813, 16.809412, 12.479748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.771248, 16.949909, 12.630055>,  <14.565307, 17.184071, 12.880569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.771248, 16.949909, 12.630055> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375315, -0.502899, 0.778609,
		-0.770757, -0.635922, -0.039208,
		0.514852, -0.585403, -0.626284,
		14.925704, 16.774288, 12.442170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.479054, 16.442564, 13.069970>,  <14.565307, 17.184071, 12.880569>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.479054, 16.442564, 13.069970> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.824078, 16.467676, 12.869151>,  <15.031092, 16.482744, 12.748660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.824078, 16.467676, 12.869151>,  <14.479054, 16.442564, 13.069970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.824078, 16.467676, 12.869151> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462405, -0.500573, 0.731853,
		-0.205365, -0.863415, -0.460803,
		0.862559, 0.062781, -0.502047,
		15.082845, 16.486509, 12.718536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.845299, 15.751667, 13.102623>,  <14.479054, 16.442564, 13.069970>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.845299, 15.751667, 13.102623> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.141082, 15.997915, 12.993652>,  <15.318551, 16.145664, 12.928269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.141082, 15.997915, 12.993652>,  <14.845299, 15.751667, 13.102623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.141082, 15.997915, 12.993652> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565883, -0.349199, 0.746885,
		0.364666, -0.706450, -0.606586,
		0.739456, 0.615620, -0.272427,
		15.362919, 16.182602, 12.911924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.432765, 15.342585, 13.227632>,  <14.845299, 15.751667, 13.102623>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.432765, 15.342585, 13.227632> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.559334, 15.721294, 13.203991>,  <15.635275, 15.948521, 13.189807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.559334, 15.721294, 13.203991>,  <15.432765, 15.342585, 13.227632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.559334, 15.721294, 13.203991> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445937, -0.093470, 0.890171,
		0.837268, -0.308025, -0.451778,
		0.316423, 0.946775, -0.059101,
		15.654261, 16.005327, 13.186261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.127554, 15.295555, 13.302066>,  <15.432765, 15.342585, 13.227632>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.127554, 15.295555, 13.302066> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.032383, 15.670585, 13.403531>,  <15.975281, 15.895602, 13.464411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.032383, 15.670585, 13.403531>,  <16.127554, 15.295555, 13.302066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.032383, 15.670585, 13.403531> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459363, -0.121489, 0.879901,
		0.855790, 0.325877, -0.401781,
		-0.237927, 0.937574, 0.253664,
		15.961005, 15.951857, 13.479630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.756845, 15.527719, 13.644244>,  <16.127554, 15.295555, 13.302066>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.756845, 15.527719, 13.644244> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.453871, 15.760043, 13.763540>,  <16.272085, 15.899437, 13.835118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.453871, 15.760043, 13.763540>,  <16.756845, 15.527719, 13.644244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.453871, 15.760043, 13.763540> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340314, -0.038627, 0.939518,
		0.557200, 0.813123, -0.168400,
		-0.757439, 0.580809, 0.298240,
		16.226639, 15.934286, 13.853012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.026451, 16.052177, 13.974808>,  <16.756845, 15.527719, 13.644244>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.026451, 16.052177, 13.974808> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.659315, 16.060865, 14.133350>,  <16.439034, 16.066078, 14.228476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.659315, 16.060865, 14.133350>,  <17.026451, 16.052177, 13.974808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.659315, 16.060865, 14.133350> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394588, -0.058868, 0.916970,
		0.043250, 0.998029, 0.045460,
		-0.917840, 0.021721, 0.396357,
		16.383963, 16.067381, 14.252257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.107140, 16.601320, 14.540998>,  <17.026451, 16.052177, 13.974808>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.107140, 16.601320, 14.540998> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.762672, 16.404356, 14.591468>,  <16.555992, 16.286177, 14.621750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.762672, 16.404356, 14.591468>,  <17.107140, 16.601320, 14.540998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.762672, 16.404356, 14.591468> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137477, 0.013355, 0.990415,
		-0.489376, 0.870261, 0.056194,
		-0.861169, -0.492410, 0.126177,
		16.504322, 16.256634, 14.629321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.761152, 17.127054, 14.999801>,  <17.107140, 16.601320, 14.540998>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.761152, 17.127054, 14.999801> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.609709, 16.760162, 15.049355>,  <16.518843, 16.540028, 15.079086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.609709, 16.760162, 15.049355>,  <16.761152, 17.127054, 14.999801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.609709, 16.760162, 15.049355> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175537, 0.060260, 0.982627,
		-0.908759, 0.393776, 0.138193,
		-0.378608, -0.917229, 0.123884,
		16.496126, 16.484993, 15.086520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.400253, 17.108435, 15.674675>,  <16.761152, 17.127054, 14.999801>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.400253, 17.108435, 15.674675> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.485441, 16.721025, 15.623127>,  <16.536554, 16.488581, 15.592198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.485441, 16.721025, 15.623127>,  <16.400253, 17.108435, 15.674675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.485441, 16.721025, 15.623127> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097137, -0.110255, 0.989145,
		-0.972219, -0.223174, 0.070599,
		0.212968, -0.968523, -0.128870,
		16.549332, 16.430468, 15.584466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.100248, 16.826469, 16.154510>,  <16.400253, 17.108435, 15.674675>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.100248, 16.826469, 16.154510> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.395592, 16.582146, 16.040150>,  <16.572798, 16.435551, 15.971534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.395592, 16.582146, 16.040150>,  <16.100248, 16.826469, 16.154510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.395592, 16.582146, 16.040150> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164265, -0.248280, 0.954659,
		-0.654098, -0.751844, -0.082985,
		0.738358, -0.610809, -0.285901,
		16.617100, 16.398903, 15.954379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.935472, 16.223602, 16.557034>,  <16.100248, 16.826469, 16.154510>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.935472, 16.223602, 16.557034> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.311487, 16.152700, 16.440475>,  <16.537096, 16.110159, 16.370541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.311487, 16.152700, 16.440475>,  <15.935472, 16.223602, 16.557034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.311487, 16.152700, 16.440475> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226443, -0.314540, 0.921840,
		-0.255050, -0.932549, -0.255543,
		0.940039, -0.177249, -0.291392,
		16.593498, 16.099525, 16.353058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.119993, 15.466909, 16.811829>,  <15.935472, 16.223602, 16.557034>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.119993, 15.466909, 16.811829> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.460367, 15.662617, 16.735378>,  <16.664591, 15.780041, 16.689508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.460367, 15.662617, 16.735378>,  <16.119993, 15.466909, 16.811829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.460367, 15.662617, 16.735378> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368683, -0.297143, 0.880783,
		0.374147, -0.819953, -0.433233,
		0.850933, 0.489269, -0.191128,
		16.715647, 15.809398, 16.678040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.671253, 15.012825, 16.969620>,  <16.119993, 15.466909, 16.811829>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.671253, 15.012825, 16.969620> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.803640, 15.389512, 16.993715>,  <16.883072, 15.615524, 17.008173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.803640, 15.389512, 16.993715>,  <16.671253, 15.012825, 16.969620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.803640, 15.389512, 16.993715> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345778, -0.180426, 0.920806,
		0.878009, -0.283926, -0.385340,
		0.330966, 0.941718, 0.060241,
		16.902929, 15.672028, 17.011787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.296509, 14.964234, 17.338507>,  <16.671253, 15.012825, 16.969620>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.296509, 14.964234, 17.338507> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.186560, 15.347529, 17.370073>,  <17.120590, 15.577506, 17.389013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.186560, 15.347529, 17.370073>,  <17.296509, 14.964234, 17.338507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.186560, 15.347529, 17.370073> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307797, 0.009938, 0.951400,
		0.910882, 0.285803, -0.297674,
		-0.274871, 0.958237, 0.078917,
		17.104099, 15.635000, 17.393749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.870348, 15.361568, 17.396013>,  <17.296509, 14.964234, 17.338507>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.870348, 15.361568, 17.396013> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.591459, 15.600464, 17.554600>,  <17.424126, 15.743801, 17.649752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.591459, 15.600464, 17.554600>,  <17.870348, 15.361568, 17.396013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.591459, 15.600464, 17.554600> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512156, 0.028042, 0.858435,
		0.501573, 0.801573, -0.325431,
		-0.697224, 0.597239, 0.396465,
		17.382292, 15.779635, 17.673540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.176088, 15.997224, 17.763918>,  <17.870348, 15.361568, 17.396013>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.176088, 15.997224, 17.763918> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.873468, 15.831028, 17.965908>,  <17.691896, 15.731311, 18.087103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.873468, 15.831028, 17.965908>,  <18.176088, 15.997224, 17.763918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.873468, 15.831028, 17.965908> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601000, -0.137412, 0.787348,
		-0.257745, 0.899159, 0.353668,
		-0.756549, -0.415489, 0.504977,
		17.646503, 15.706381, 18.117401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.568270, 16.645851, 17.677027>,  <18.176088, 15.997224, 17.763918>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.568270, 16.645851, 17.677027> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.597971, 16.486988, 17.311131>,  <18.615791, 16.391670, 17.091593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.597971, 16.486988, 17.311131>,  <18.568270, 16.645851, 17.677027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.597971, 16.486988, 17.311131> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917958, 0.385642, -0.092920,
		0.389666, -0.832793, 0.393212,
		0.074255, -0.397159, -0.914741,
		18.620247, 16.367840, 17.036709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.214050, 16.181046, 17.494755>,  <18.568270, 16.645851, 17.677027>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.214050, 16.181046, 17.494755> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.056236, 16.421993, 17.217196>,  <18.961548, 16.566561, 17.050659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.056236, 16.421993, 17.217196>,  <19.214050, 16.181046, 17.494755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.056236, 16.421993, 17.217196> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883645, 0.455831, -0.106717,
		0.252018, -0.655264, -0.712121,
		-0.394535, 0.602368, -0.693899,
		18.937876, 16.602703, 17.009026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.506746, 16.168880, 16.772577>,  <19.214050, 16.181046, 17.494755>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.506746, 16.168880, 16.772577> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.412315, 16.537844, 16.894842>,  <19.355658, 16.759222, 16.968201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.412315, 16.537844, 16.894842>,  <19.506746, 16.168880, 16.772577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.412315, 16.537844, 16.894842> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941143, 0.295344, -0.164382,
		-0.241903, 0.248865, -0.937843,
		-0.236077, 0.922409, 0.305662,
		19.341492, 16.814566, 16.986540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.710938, 16.625935, 16.257641>,  <19.506746, 16.168880, 16.772577>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.710938, 16.625935, 16.257641> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.759523, 16.828880, 16.598892>,  <19.788675, 16.950647, 16.803642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.759523, 16.828880, 16.598892>,  <19.710938, 16.625935, 16.257641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.759523, 16.828880, 16.598892> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964890, 0.141301, -0.221409,
		-0.232883, 0.850068, -0.472388,
		0.121464, 0.507365, 0.853128,
		19.795963, 16.981091, 16.854830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.356787, 16.952808, 16.189692>,  <19.710938, 16.625935, 16.257641>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.356787, 16.952808, 16.189692> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.295956, 16.963562, 16.584892>,  <20.259457, 16.970015, 16.822014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.295956, 16.963562, 16.584892>,  <20.356787, 16.952808, 16.189692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.295956, 16.963562, 16.584892> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979157, -0.132064, 0.154307,
		0.134628, 0.990877, -0.006238,
		-0.152076, 0.026882, 0.988003,
		20.250334, 16.971626, 16.881292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.066359, 16.857847, 16.195953>,  <20.356787, 16.952808, 16.189692>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.066359, 16.857847, 16.195953> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.175068, 16.882095, 15.811772>,  <21.240294, 16.896645, 15.581264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.175068, 16.882095, 15.811772>,  <21.066359, 16.857847, 16.195953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.175068, 16.882095, 15.811772> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660500, 0.737594, -0.140342,
		0.699915, 0.672518, 0.240496,
		0.271771, 0.060620, -0.960451,
		21.256599, 16.900282, 15.523637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.073587, 17.597555, 16.044466>,  <21.066359, 16.857847, 16.195953>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.073587, 17.597555, 16.044466> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.034584, 17.387096, 15.706553>,  <21.011183, 17.260820, 15.503804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.034584, 17.387096, 15.706553>,  <21.073587, 17.597555, 16.044466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.034584, 17.387096, 15.706553> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695232, 0.643391, -0.320470,
		0.712141, 0.556073, -0.428530,
		-0.097507, -0.526148, -0.844785,
		21.005331, 17.229252, 15.453117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.788591, 18.101051, 15.626674>,  <21.073587, 17.597555, 16.044466>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.788591, 18.101051, 15.626674> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.726986, 17.764626, 15.419254>,  <20.690022, 17.562771, 15.294803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.726986, 17.764626, 15.419254>,  <20.788591, 18.101051, 15.626674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.726986, 17.764626, 15.419254> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643134, 0.483750, -0.593603,
		0.750105, 0.242073, -0.615421,
		-0.154015, -0.841063, -0.518549,
		20.680782, 17.512306, 15.263690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.600727, 18.364426, 14.937248>,  <20.788591, 18.101051, 15.626674>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.600727, 18.364426, 14.937248> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.489769, 17.980652, 14.957391>,  <20.423195, 17.750387, 14.969476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.489769, 17.980652, 14.957391>,  <20.600727, 18.364426, 14.937248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.489769, 17.980652, 14.957391> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755996, 0.185631, -0.627704,
		0.592893, -0.212190, -0.776822,
		-0.277395, -0.959435, 0.050356,
		20.406551, 17.692822, 14.972497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.564196, 18.152847, 14.231669>,  <20.600727, 18.364426, 14.937248>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.564196, 18.152847, 14.231669> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.340475, 17.905876, 14.452925>,  <20.206242, 17.757692, 14.585678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.340475, 17.905876, 14.452925>,  <20.564196, 18.152847, 14.231669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.340475, 17.905876, 14.452925> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800441, 0.228716, -0.554060,
		0.215566, -0.752659, -0.622122,
		-0.559308, -0.617408, 0.553156,
		20.172684, 17.720648, 14.618866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.255932, 17.795683, 13.754999>,  <20.564196, 18.152847, 14.231669>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.255932, 17.795683, 13.754999> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.038139, 17.765696, 14.089166>,  <19.907463, 17.747704, 14.289665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.038139, 17.765696, 14.089166>,  <20.255932, 17.795683, 13.754999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.038139, 17.765696, 14.089166> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838683, 0.034041, -0.543555,
		0.012300, -0.996606, -0.081394,
		-0.544481, -0.074949, 0.835418,
		19.874796, 17.743206, 14.339790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.656078, 17.266670, 13.689453>,  <20.255932, 17.795683, 13.754999>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.656078, 17.266670, 13.689453> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.574533, 17.507572, 13.998187>,  <19.525606, 17.652113, 14.183428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.574533, 17.507572, 13.998187>,  <19.656078, 17.266670, 13.689453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.574533, 17.507572, 13.998187> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872906, 0.245135, -0.421833,
		-0.443255, -0.759735, 0.475739,
		-0.203861, 0.602256, 0.771835,
		19.513374, 17.688250, 14.229737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.940762, 17.215521, 13.740779>,  <19.656078, 17.266670, 13.689453>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.940762, 17.215521, 13.740779> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.036798, 17.569862, 13.899583>,  <19.094419, 17.782467, 13.994865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.036798, 17.569862, 13.899583>,  <18.940762, 17.215521, 13.740779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.036798, 17.569862, 13.899583> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821048, 0.403502, -0.403815,
		-0.517916, -0.229013, 0.824206,
		0.240090, 0.885855, 0.397011,
		19.108826, 17.835619, 14.018686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.219597, 17.517971, 13.871995>,  <18.940762, 17.215521, 13.740779>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.219597, 17.517971, 13.871995> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.450762, 17.828047, 13.974051>,  <18.589460, 18.014091, 14.035286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.450762, 17.828047, 13.974051>,  <18.219597, 17.517971, 13.871995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.450762, 17.828047, 13.974051> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673964, 0.629637, -0.386433,
		-0.460206, 0.051368, 0.886325,
		0.577913, 0.775190, 0.255142,
		18.624136, 18.060604, 14.050594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.802528, 17.899258, 14.250278>,  <18.219597, 17.517971, 13.871995>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.802528, 17.899258, 14.250278> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.084944, 18.139193, 14.099706>,  <18.254393, 18.283154, 14.009362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.084944, 18.139193, 14.099706>,  <17.802528, 17.899258, 14.250278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.084944, 18.139193, 14.099706> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707337, 0.571523, -0.415975,
		-0.034379, 0.559959, 0.827807,
		0.706040, 0.599840, -0.376431,
		18.296755, 18.319145, 13.986776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.529589, 18.546158, 14.292729>,  <17.802528, 17.899258, 14.250278>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.529589, 18.546158, 14.292729> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.812006, 18.567589, 14.010274>,  <17.981457, 18.580446, 13.840800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.812006, 18.567589, 14.010274>,  <17.529589, 18.546158, 14.292729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.812006, 18.567589, 14.010274> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629804, 0.503438, -0.591521,
		0.323806, 0.862369, 0.389192,
		0.706043, 0.053576, -0.706139,
		18.023819, 18.583662, 13.798432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.649517, 19.224264, 14.146994>,  <17.529589, 18.546158, 14.292729>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.649517, 19.224264, 14.146994> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.730995, 18.997816, 13.827490>,  <17.779882, 18.861948, 13.635788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.730995, 18.997816, 13.827490>,  <17.649517, 19.224264, 14.146994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.730995, 18.997816, 13.827490> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704231, 0.482047, -0.521239,
		0.680123, 0.668685, -0.300489,
		0.203695, -0.566119, -0.798760,
		17.792103, 18.827980, 13.587862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.640347, 19.689419, 13.617687>,  <17.649517, 19.224264, 14.146994>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.640347, 19.689419, 13.617687> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.614811, 19.323471, 13.458217>,  <17.599489, 19.103903, 13.362535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.614811, 19.323471, 13.458217>,  <17.640347, 19.689419, 13.617687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.614811, 19.323471, 13.458217> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594598, 0.355709, -0.721058,
		0.801485, 0.191020, -0.566686,
		-0.063839, -0.914867, -0.398676,
		17.595659, 19.049011, 13.338614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.717270, 19.762287, 12.870696>,  <17.640347, 19.689419, 13.617687>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.717270, 19.762287, 12.870696> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.534397, 19.408098, 12.903992>,  <17.424673, 19.195585, 12.923969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.534397, 19.408098, 12.903992>,  <17.717270, 19.762287, 12.870696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.534397, 19.408098, 12.903992> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420213, 0.132574, -0.897689,
		0.783841, -0.445384, -0.432696,
		-0.457180, -0.885470, 0.083240,
		17.397243, 19.142458, 12.928964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.983295, 19.182835, 12.340319>,  <17.717270, 19.762287, 12.870696>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.983295, 19.182835, 12.340319> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.606747, 19.092268, 12.440363>,  <17.380817, 19.037928, 12.500389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.606747, 19.092268, 12.440363>,  <17.983295, 19.182835, 12.340319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.606747, 19.092268, 12.440363> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307207, 0.268879, -0.912868,
		0.139440, -0.936184, -0.322672,
		-0.941371, -0.226417, 0.250110,
		17.324335, 19.024343, 12.515396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<11.945884, 22.397982, 22.988884> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.078475, 22.045805, 23.124496>,  <12.158030, 21.834499, 23.205864>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.078475, 22.045805, 23.124496>,  <11.945884, 22.397982, 22.988884>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.078475, 22.045805, 23.124496> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424708, -0.460131, -0.779681,
		0.842464, 0.114458, -0.526455,
		0.331479, -0.880442, 0.339033,
		12.177918, 21.781672, 23.226206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.434330, 22.171688, 22.474047>,  <11.945884, 22.397982, 22.988884>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.434330, 22.171688, 22.474047> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.311122, 21.858583, 22.690346>,  <12.237197, 21.670721, 22.820126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.311122, 21.858583, 22.690346>,  <12.434330, 22.171688, 22.474047>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.311122, 21.858583, 22.690346> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221151, -0.493904, -0.840923,
		0.925319, -0.378609, -0.020976,
		-0.308021, -0.782761, 0.540748,
		12.218716, 21.623755, 22.852570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.791055, 21.656237, 22.205721>,  <12.434330, 22.171688, 22.474047>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.791055, 21.656237, 22.205721> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.496818, 21.470301, 22.402832>,  <12.320275, 21.358740, 22.521099>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.496818, 21.470301, 22.402832>,  <12.791055, 21.656237, 22.205721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.496818, 21.470301, 22.402832> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061323, -0.770132, -0.634930,
		0.674643, -0.436832, 0.595009,
		-0.735593, -0.464839, 0.492776,
		12.276140, 21.330849, 22.550665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.096848, 20.991386, 22.309288>,  <12.791055, 21.656237, 22.205721>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.096848, 20.991386, 22.309288> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.700454, 20.939295, 22.321875>,  <12.462618, 20.908039, 22.329426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.700454, 20.939295, 22.321875>,  <13.096848, 20.991386, 22.309288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.700454, 20.939295, 22.321875> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038568, -0.502212, -0.863884,
		0.128307, -0.854882, 0.502707,
		-0.990984, -0.130231, 0.031466,
		12.403158, 20.900225, 22.331314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.957245, 20.331093, 22.033278>,  <13.096848, 20.991386, 22.309288>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.957245, 20.331093, 22.033278> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.608727, 20.526749, 22.017326>,  <12.399617, 20.644142, 22.007755>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.608727, 20.526749, 22.017326>,  <12.957245, 20.331093, 22.033278>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.608727, 20.526749, 22.017326> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268232, -0.542685, -0.795955,
		-0.410976, -0.682813, 0.604041,
		-0.871292, 0.489142, -0.039878,
		12.347340, 20.673491, 22.005363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.505903, 19.874067, 22.284153>,  <12.957245, 20.331093, 22.033278>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.505903, 19.874067, 22.284153> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.326805, 20.146498, 22.052408>,  <12.219346, 20.309956, 21.913363>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.326805, 20.146498, 22.052408>,  <12.505903, 19.874067, 22.284153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.326805, 20.146498, 22.052408> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027305, -0.637221, -0.770198,
		-0.893744, -0.360671, 0.266715,
		-0.447745, 0.681077, -0.579360,
		12.192482, 20.350821, 21.878601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.032487, 19.451338, 21.931665>,  <12.505903, 19.874067, 22.284153>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.032487, 19.451338, 21.931665> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.033962, 19.784969, 21.711012>,  <12.034847, 19.985147, 21.578619>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.033962, 19.784969, 21.711012>,  <12.032487, 19.451338, 21.931665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.033962, 19.784969, 21.711012> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094994, -0.548850, -0.830505,
		-0.995471, 0.055466, 0.077208,
		0.003689, 0.834078, -0.551634,
		12.035069, 20.035192, 21.545523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.574290, 19.331541, 21.451527>,  <12.032487, 19.451338, 21.931665>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.574290, 19.331541, 21.451527> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.782031, 19.630903, 21.286522>,  <11.906675, 19.810520, 21.187519>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.782031, 19.630903, 21.286522>,  <11.574290, 19.331541, 21.451527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.782031, 19.630903, 21.286522> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032644, -0.464991, -0.884713,
		-0.853937, 0.472943, -0.217063,
		0.519351, 0.748404, -0.412512,
		11.937837, 19.855425, 21.162769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.159082, 19.625078, 20.943119>,  <11.574290, 19.331541, 21.451527>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.159082, 19.625078, 20.943119> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.541533, 19.682022, 20.840702>,  <11.771003, 19.716188, 20.779251>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.541533, 19.682022, 20.840702>,  <11.159082, 19.625078, 20.943119>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.541533, 19.682022, 20.840702> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180139, -0.403551, -0.897049,
		-0.231029, 0.903815, -0.360201,
		0.956125, 0.142358, -0.256044,
		11.828370, 19.724730, 20.763889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.081367, 19.824924, 20.292078>,  <11.159082, 19.625078, 20.943119>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.081367, 19.824924, 20.292078> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.474660, 19.753807, 20.308279>,  <11.710636, 19.711136, 20.317999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.474660, 19.753807, 20.308279>,  <11.081367, 19.824924, 20.292078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.474660, 19.753807, 20.308279> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023424, -0.343414, -0.938892,
		0.180840, 0.922202, -0.341821,
		0.983234, -0.177796, 0.040501,
		11.769630, 19.700468, 20.320429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.357664, 20.093077, 19.647104>,  <11.081367, 19.824924, 20.292078>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.357664, 20.093077, 19.647104> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.615227, 19.829617, 19.802828>,  <11.769764, 19.671539, 19.896263>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.615227, 19.829617, 19.802828>,  <11.357664, 20.093077, 19.647104>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.615227, 19.829617, 19.802828> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163626, -0.378514, -0.911018,
		0.747403, 0.650311, -0.135955,
		0.643906, -0.658652, 0.389311,
		11.808398, 19.632021, 19.919621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.893399, 20.069672, 19.159643>,  <11.357664, 20.093077, 19.647104>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.893399, 20.069672, 19.159643> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.930374, 19.731726, 19.370419>,  <11.952559, 19.528959, 19.496883>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.930374, 19.731726, 19.370419>,  <11.893399, 20.069672, 19.159643>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.930374, 19.731726, 19.370419> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085398, -0.520525, -0.849565,
		0.992050, 0.123531, 0.024034,
		0.092437, -0.844863, 0.526936,
		11.958105, 19.478268, 19.528500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.495332, 19.827459, 18.950022>,  <11.893399, 20.069672, 19.159643>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.495332, 19.827459, 18.950022> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.274495, 19.520094, 19.079475>,  <12.141994, 19.335674, 19.157148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.274495, 19.520094, 19.079475>,  <12.495332, 19.827459, 18.950022>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.274495, 19.520094, 19.079475> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255347, -0.525322, -0.811686,
		0.793721, -0.365486, 0.486237,
		-0.552091, -0.768412, 0.323634,
		12.108868, 19.289570, 19.176565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.204053, 19.628035, 18.648968>,  <12.495332, 19.827459, 18.950022>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.204053, 19.628035, 18.648968> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.379601, 19.383589, 18.385473>,  <13.484929, 19.236921, 18.227377>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.379601, 19.383589, 18.385473>,  <13.204053, 19.628035, 18.648968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.379601, 19.383589, 18.385473> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895714, 0.355750, 0.266718,
		0.071350, -0.707093, 0.703512,
		0.438869, -0.611115, -0.658736,
		13.511261, 19.200254, 18.187853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.438859, 19.040100, 18.967176>,  <13.204053, 19.628035, 18.648968>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.438859, 19.040100, 18.967176> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.632205, 19.203163, 18.657293>,  <13.748213, 19.301001, 18.471363>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.632205, 19.203163, 18.657293>,  <13.438859, 19.040100, 18.967176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.632205, 19.203163, 18.657293> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788886, 0.180789, 0.587345,
		0.379494, -0.895059, -0.234208,
		0.483366, 0.407658, -0.774708,
		13.777215, 19.325460, 18.424881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.152085, 18.691486, 18.945396>,  <13.438859, 19.040100, 18.967176>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.152085, 18.691486, 18.945396> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.161819, 19.040850, 18.750845>,  <14.167658, 19.250467, 18.634113>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.161819, 19.040850, 18.750845>,  <14.152085, 18.691486, 18.945396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.161819, 19.040850, 18.750845> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764566, 0.297197, 0.571938,
		0.644086, -0.385784, -0.660548,
		0.024332, 0.873410, -0.486378,
		14.169118, 19.302872, 18.604931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.919292, 18.796026, 18.852221>,  <14.152085, 18.691486, 18.945396>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.919292, 18.796026, 18.852221> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.730268, 19.140091, 18.775476>,  <14.616853, 19.346529, 18.729431>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.730268, 19.140091, 18.775476>,  <14.919292, 18.796026, 18.852221>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.730268, 19.140091, 18.775476> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749709, 0.506800, 0.425547,
		0.463272, 0.057259, -0.884364,
		-0.472562, 0.860160, -0.191859,
		14.588499, 19.398140, 18.717918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.445666, 19.288513, 18.562155>,  <14.919292, 18.796026, 18.852221>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.445666, 19.288513, 18.562155> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.159560, 19.524857, 18.711435>,  <14.987896, 19.666662, 18.801004>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.159560, 19.524857, 18.711435>,  <15.445666, 19.288513, 18.562155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.159560, 19.524857, 18.711435> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698729, 0.614648, 0.366041,
		-0.013109, 0.522584, -0.852487,
		-0.715266, 0.590859, 0.373202,
		14.944981, 19.702114, 18.823397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.751760, 19.922836, 18.484182>,  <15.445666, 19.288513, 18.562155>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.751760, 19.922836, 18.484182> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.464009, 20.007151, 18.748930>,  <15.291359, 20.057739, 18.907778>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.464009, 20.007151, 18.748930>,  <15.751760, 19.922836, 18.484182>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.464009, 20.007151, 18.748930> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635315, 0.584911, 0.504236,
		-0.280846, 0.783229, -0.554687,
		-0.719375, 0.210788, 0.661867,
		15.248197, 20.070387, 18.947491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.896502, 20.563293, 18.743465>,  <15.751760, 19.922836, 18.484182>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.896502, 20.563293, 18.743465> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.638016, 20.422443, 19.014290>,  <15.482924, 20.337934, 19.176785>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.638016, 20.422443, 19.014290>,  <15.896502, 20.563293, 18.743465>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.638016, 20.422443, 19.014290> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498173, 0.477450, 0.723785,
		-0.578126, 0.805016, -0.133117,
		-0.646215, -0.352123, 0.677063,
		15.444151, 20.316807, 19.217409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.589283, 21.096270, 19.081547>,  <15.896502, 20.563293, 18.743465>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.589283, 21.096270, 19.081547> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.579781, 20.785246, 19.332891>,  <15.574080, 20.598631, 19.483698>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.579781, 20.785246, 19.332891>,  <15.589283, 21.096270, 19.081547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.579781, 20.785246, 19.332891> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448695, 0.553382, 0.701741,
		-0.893369, 0.298613, 0.335740,
		-0.023756, -0.777559, 0.628361,
		15.572654, 20.551979, 19.521400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.525625, 21.451895, 19.674883>,  <15.589283, 21.096270, 19.081547>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.525625, 21.451895, 19.674883> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.633641, 21.085037, 19.792135>,  <15.698451, 20.864923, 19.862488>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.633641, 21.085037, 19.792135>,  <15.525625, 21.451895, 19.674883>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.633641, 21.085037, 19.792135> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331526, 0.374394, 0.865979,
		-0.903974, -0.136668, 0.405158,
		0.270040, -0.917143, 0.293133,
		15.714653, 20.809895, 19.880075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.216023, 21.295841, 20.298664>,  <15.525625, 21.451895, 19.674883>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.216023, 21.295841, 20.298664> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.537641, 21.058203, 20.289162>,  <15.730611, 20.915619, 20.283461>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.537641, 21.058203, 20.289162>,  <15.216023, 21.295841, 20.298664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.537641, 21.058203, 20.289162> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263538, 0.320285, 0.909926,
		-0.532976, -0.737879, 0.414090,
		0.804042, -0.594098, -0.023755,
		15.778853, 20.879974, 20.282036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.372590, 21.258322, 20.973021>,  <15.216023, 21.295841, 20.298664>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.372590, 21.258322, 20.973021> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.707842, 21.126217, 20.799370>,  <15.908993, 21.046955, 20.695179>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.707842, 21.126217, 20.799370>,  <15.372590, 21.258322, 20.973021>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.707842, 21.126217, 20.799370> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519214, 0.239082, 0.820522,
		-0.167194, -0.913109, 0.371857,
		0.838131, -0.330260, -0.434126,
		15.959281, 21.027138, 20.669132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.761750, 20.911039, 21.523560>,  <15.372590, 21.258322, 20.973021>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.761750, 20.911039, 21.523560> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.022181, 20.966471, 21.225058>,  <16.178438, 20.999729, 21.045956>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.022181, 20.966471, 21.225058>,  <15.761750, 20.911039, 21.523560>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.022181, 20.966471, 21.225058> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708952, 0.240120, 0.663121,
		0.271086, -0.960801, 0.058089,
		0.651075, 0.138580, -0.746255,
		16.217503, 21.008045, 21.001181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.268047, 20.440905, 21.678209>,  <15.761750, 20.911039, 21.523560>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.268047, 20.440905, 21.678209> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.431831, 20.732004, 21.458130>,  <16.530102, 20.906664, 21.326082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.431831, 20.732004, 21.458130>,  <16.268047, 20.440905, 21.678209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.431831, 20.732004, 21.458130> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716690, 0.116588, 0.687577,
		0.564532, -0.675859, -0.473833,
		0.409462, 0.727751, -0.550199,
		16.554670, 20.950329, 21.293070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.952442, 20.269791, 21.764805>,  <16.268047, 20.440905, 21.678209>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.952442, 20.269791, 21.764805> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.966644, 20.636694, 21.606119>,  <16.975164, 20.856836, 21.510908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.966644, 20.636694, 21.606119>,  <16.952442, 20.269791, 21.764805>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.966644, 20.636694, 21.606119> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559312, 0.310733, 0.768514,
		0.828196, -0.249171, -0.502000,
		0.035504, 0.917256, -0.396713,
		16.977295, 20.911871, 21.487104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.717842, 20.498217, 21.595039>,  <16.952442, 20.269791, 21.764805>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.717842, 20.498217, 21.595039> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.475859, 20.806927, 21.673412>,  <17.330669, 20.992153, 21.720436>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.475859, 20.806927, 21.673412>,  <17.717842, 20.498217, 21.595039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.475859, 20.806927, 21.673412> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639807, 0.324669, 0.696590,
		0.473999, 0.546764, -0.690199,
		-0.604957, 0.771776, 0.195931,
		17.294373, 21.038460, 21.732191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.418861, 20.553789, 21.164757>,  <17.717842, 20.498217, 21.595039>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.418861, 20.553789, 21.164757> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.598307, 20.276630, 21.390549>,  <18.705975, 20.110334, 21.526024>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.598307, 20.276630, 21.390549>,  <18.418861, 20.553789, 21.164757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.598307, 20.276630, 21.390549> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303641, -0.712199, -0.632910,
		0.840564, 0.112532, -0.529894,
		0.448613, -0.692899, 0.564480,
		18.732891, 20.068760, 21.559893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.822464, 20.136034, 20.709888>,  <18.418861, 20.553789, 21.164757>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.822464, 20.136034, 20.709888> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.749788, 19.912018, 21.033207>,  <18.706182, 19.777609, 21.227198>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.749788, 19.912018, 21.033207>,  <18.822464, 20.136034, 20.709888>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.749788, 19.912018, 21.033207> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086962, -0.809606, -0.580495,
		0.979504, -0.175760, 0.098393,
		-0.181687, -0.560041, 0.808297,
		18.695282, 19.744005, 21.275696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.238304, 19.485035, 20.616070>,  <18.822464, 20.136034, 20.709888>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.238304, 19.485035, 20.616070> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.947243, 19.409761, 20.879921>,  <18.772606, 19.364597, 21.038231>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.947243, 19.409761, 20.879921>,  <19.238304, 19.485035, 20.616070>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.947243, 19.409761, 20.879921> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329546, -0.747480, -0.576778,
		0.601597, -0.637072, 0.481892,
		-0.727654, -0.188182, 0.659626,
		18.728947, 19.353306, 21.077808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.046404, 18.899309, 20.401060>,  <19.238304, 19.485035, 20.616070>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.046404, 18.899309, 20.401060> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.749655, 18.994343, 20.651876>,  <18.571606, 19.051363, 20.802366>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.749655, 18.994343, 20.651876>,  <19.046404, 18.899309, 20.401060>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.749655, 18.994343, 20.651876> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602833, -0.645802, -0.468543,
		0.293626, -0.725600, 0.622325,
		-0.741874, 0.237582, 0.627040,
		18.527092, 19.065617, 20.839989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.746992, 18.311893, 20.807734>,  <19.046404, 18.899309, 20.401060>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.746992, 18.311893, 20.807734> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.477222, 18.603542, 20.761202>,  <18.315361, 18.778532, 20.733282>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.477222, 18.603542, 20.761202>,  <18.746992, 18.311893, 20.807734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.477222, 18.603542, 20.761202> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528433, -0.586695, -0.613635,
		-0.515664, -0.352379, 0.780974,
		-0.674425, 0.729121, -0.116329,
		18.274895, 18.822279, 20.726303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.114975, 17.922014, 20.695372>,  <18.746992, 18.311893, 20.807734>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.114975, 17.922014, 20.695372> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.997715, 18.291298, 20.595972>,  <17.927359, 18.512867, 20.536333>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.997715, 18.291298, 20.595972>,  <18.114975, 17.922014, 20.695372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.997715, 18.291298, 20.595972> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555823, -0.376049, -0.741382,
		-0.777897, -0.079216, 0.623379,
		-0.293150, 0.923207, -0.248498,
		17.909769, 18.568260, 20.521423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.436996, 17.867748, 20.643341>,  <18.114975, 17.922014, 20.695372>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.436996, 17.867748, 20.643341> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.541790, 18.189095, 20.429438>,  <17.604666, 18.381903, 20.301096>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.541790, 18.189095, 20.429438>,  <17.436996, 17.867748, 20.643341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.541790, 18.189095, 20.429438> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654436, -0.259357, -0.710244,
		-0.709281, 0.536036, 0.457806,
		0.261982, 0.803367, -0.534759,
		17.620384, 18.430105, 20.269011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.834909, 18.121876, 20.421938>,  <17.436996, 17.867748, 20.643341>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.834909, 18.121876, 20.421938> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.110264, 18.263386, 20.168650>,  <17.275476, 18.348291, 20.016678>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.110264, 18.263386, 20.168650>,  <16.834909, 18.121876, 20.421938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.110264, 18.263386, 20.168650> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585036, -0.245263, -0.773032,
		-0.428784, 0.902602, 0.038134,
		0.688388, 0.353774, -0.633219,
		17.316780, 18.369518, 19.978683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.465729, 18.616079, 20.198088>,  <16.834909, 18.121876, 20.421938>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.465729, 18.616079, 20.198088> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.755365, 18.567532, 19.926512>,  <16.929148, 18.538403, 19.763565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.755365, 18.567532, 19.926512>,  <16.465729, 18.616079, 20.198088>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.755365, 18.567532, 19.926512> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672112, 0.096743, -0.734102,
		0.154782, 0.987881, -0.011524,
		0.724091, -0.121372, -0.678941,
		16.972593, 18.531120, 19.722830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.297813, 19.121954, 19.766502>,  <16.465729, 18.616079, 20.198088>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.297813, 19.121954, 19.766502> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.537188, 18.876213, 19.560806>,  <16.680813, 18.728767, 19.437387>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.537188, 18.876213, 19.560806>,  <16.297813, 19.121954, 19.766502>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.537188, 18.876213, 19.560806> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596022, 0.087535, -0.798182,
		0.535381, 0.784160, -0.313785,
		0.598435, -0.614354, -0.514242,
		16.716719, 18.691906, 19.406534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.684528, 19.464300, 19.062714>,  <16.297813, 19.121954, 19.766502>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.684528, 19.464300, 19.062714> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.670383, 19.066797, 19.020393>,  <16.661898, 18.828295, 18.995001>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.670383, 19.066797, 19.020393>,  <16.684528, 19.464300, 19.062714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.670383, 19.066797, 19.020393> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409071, 0.110983, -0.905728,
		0.911817, 0.011252, -0.410442,
		-0.035360, -0.993759, -0.105799,
		16.659775, 18.768669, 18.988653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.099567, 20.051903, 18.856117>,  <16.684528, 19.464300, 19.062714>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.099567, 20.051903, 18.856117> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.851006, 20.361359, 18.905653>,  <16.701868, 20.547033, 18.935375>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.851006, 20.361359, 18.905653>,  <17.099567, 20.051903, 18.856117>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.851006, 20.361359, 18.905653> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712242, 0.623651, -0.322135,
		-0.326450, -0.111972, -0.938559,
		-0.621404, 0.773642, 0.123840,
		16.664585, 20.593451, 18.942804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<20.396282, 20.453264, 26.631418> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.631451, 20.767263, 26.553314>,  <20.772552, 20.955662, 26.506453>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.631451, 20.767263, 26.553314>,  <20.396282, 20.453264, 26.631418>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.631451, 20.767263, 26.553314> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386255, 0.060341, -0.920416,
		-0.710741, 0.616554, 0.338685,
		0.587923, 0.784997, -0.195261,
		20.807827, 21.002762, 26.494736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.943943, 20.839838, 26.216305>,  <20.396282, 20.453264, 26.631418>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.943943, 20.839838, 26.216305> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.300989, 21.010441, 26.157887>,  <20.515217, 21.112803, 26.122835>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.300989, 21.010441, 26.157887>,  <19.943943, 20.839838, 26.216305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.300989, 21.010441, 26.157887> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269741, 0.245710, -0.931056,
		-0.361217, 0.870470, 0.334371,
		0.892615, 0.426507, -0.146047,
		20.568773, 21.138393, 26.114073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.864017, 21.537338, 25.813465>,  <19.943943, 20.839838, 26.216305>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.864017, 21.537338, 25.813465> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.234289, 21.409943, 25.731804>,  <20.456453, 21.333506, 25.682806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.234289, 21.409943, 25.731804>,  <19.864017, 21.537338, 25.813465>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.234289, 21.409943, 25.731804> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172058, 0.126169, -0.976974,
		0.336915, 0.939492, 0.061993,
		0.925681, -0.318491, -0.204155,
		20.511993, 21.314396, 25.670557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.147997, 22.000534, 25.282236>,  <19.864017, 21.537338, 25.813465>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.147997, 22.000534, 25.282236> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.362791, 21.663179, 25.274775>,  <20.491669, 21.460768, 25.270298>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.362791, 21.663179, 25.274775>,  <20.147997, 22.000534, 25.282236>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.362791, 21.663179, 25.274775> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085219, -0.032231, -0.995841,
		0.839275, 0.536343, -0.089179,
		0.536987, -0.843384, -0.018656,
		20.523888, 21.410164, 25.269178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.635267, 22.191542, 24.717731>,  <20.147997, 22.000534, 25.282236>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.635267, 22.191542, 24.717731> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.655916, 21.794210, 24.758978>,  <20.668306, 21.555811, 24.783726>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.655916, 21.794210, 24.758978>,  <20.635267, 22.191542, 24.717731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.655916, 21.794210, 24.758978> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144562, -0.109598, -0.983407,
		0.988148, 0.035860, -0.149255,
		0.051623, -0.993329, 0.103115,
		20.671404, 21.496212, 24.789913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.046377, 21.924232, 24.110909>,  <20.635267, 22.191542, 24.717731>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.046377, 21.924232, 24.110909> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.820562, 21.635464, 24.270971>,  <20.685074, 21.462202, 24.367008>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.820562, 21.635464, 24.270971>,  <21.046377, 21.924232, 24.110909>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.820562, 21.635464, 24.270971> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231273, -0.327031, -0.916277,
		0.792345, -0.609818, 0.017660,
		-0.564538, -0.721923, 0.400156,
		20.651201, 21.418886, 24.391018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.108850, 21.286997, 23.667349>,  <21.046377, 21.924232, 24.110909>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.108850, 21.286997, 23.667349> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.769354, 21.207357, 23.863306>,  <20.565657, 21.159573, 23.980881>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.769354, 21.207357, 23.863306>,  <21.108850, 21.286997, 23.667349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.769354, 21.207357, 23.863306> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388169, -0.394555, -0.832857,
		0.359112, -0.897043, 0.257591,
		-0.848742, -0.199100, 0.489894,
		20.514730, 21.147627, 24.010275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.033279, 20.535759, 23.505020>,  <21.108850, 21.286997, 23.667349>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.033279, 20.535759, 23.505020> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.681108, 20.680933, 23.627089>,  <20.469807, 20.768038, 23.700329>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.681108, 20.680933, 23.627089>,  <21.033279, 20.535759, 23.505020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.681108, 20.680933, 23.627089> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441707, -0.393632, -0.806194,
		-0.172470, -0.844591, 0.506874,
		-0.880426, 0.362934, 0.305172,
		20.416981, 20.789814, 23.718639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.577990, 19.951162, 23.472233>,  <21.033279, 20.535759, 23.505020>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.577990, 19.951162, 23.472233> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.346060, 20.277002, 23.478273>,  <20.206902, 20.472507, 23.481897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.346060, 20.277002, 23.478273>,  <20.577990, 19.951162, 23.472233>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.346060, 20.277002, 23.478273> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519439, -0.355326, -0.777128,
		-0.627685, -0.458440, 0.629162,
		-0.579823, 0.814602, 0.015099,
		20.172113, 20.521383, 23.482803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.867920, 19.721119, 23.565445>,  <20.577990, 19.951162, 23.472233>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.867920, 19.721119, 23.565445> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.872824, 20.077442, 23.383759>,  <19.875767, 20.291235, 23.274746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.872824, 20.077442, 23.383759>,  <19.867920, 19.721119, 23.565445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.872824, 20.077442, 23.383759> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679810, -0.325696, -0.657100,
		-0.733286, 0.316839, 0.601586,
		0.012261, 0.890806, -0.454219,
		19.876501, 20.344685, 23.247494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.170818, 19.905010, 23.399458>,  <19.867920, 19.721119, 23.565445>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.170818, 19.905010, 23.399458> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.353352, 20.166248, 23.157722>,  <19.462872, 20.322990, 23.012682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.353352, 20.166248, 23.157722>,  <19.170818, 19.905010, 23.399458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.353352, 20.166248, 23.157722> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685328, -0.175215, -0.706842,
		-0.567524, 0.736726, 0.367629,
		0.456335, 0.653096, -0.604338,
		19.490252, 20.362177, 22.976421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.760260, 20.303444, 23.149940>,  <19.170818, 19.905010, 23.399458>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.760260, 20.303444, 23.149940> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.049896, 20.336363, 22.876030>,  <19.223679, 20.356115, 22.711683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.049896, 20.336363, 22.876030>,  <18.760260, 20.303444, 23.149940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.049896, 20.336363, 22.876030> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671076, -0.145135, -0.727043,
		-0.159220, 0.985983, -0.049862,
		0.724089, 0.082298, -0.684779,
		19.267122, 20.361052, 22.670597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.589903, 20.884472, 22.607368>,  <18.760260, 20.303444, 23.149940>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.589903, 20.884472, 22.607368> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.835688, 20.615927, 22.441620>,  <18.983158, 20.454800, 22.342171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.835688, 20.615927, 22.441620>,  <18.589903, 20.884472, 22.607368>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.835688, 20.615927, 22.441620> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645897, -0.126474, -0.752875,
		0.453047, 0.730256, -0.511347,
		0.614464, -0.671365, -0.414371,
		19.020027, 20.414516, 22.317308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.318811, 20.768675, 21.948000>,  <18.589903, 20.884472, 22.607368>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.318811, 20.768675, 21.948000> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.607889, 20.492210, 21.946749>,  <18.781336, 20.326332, 21.945997>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.607889, 20.492210, 21.946749>,  <18.318811, 20.768675, 21.948000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.607889, 20.492210, 21.946749> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398711, -0.413195, -0.818718,
		0.564575, 0.592929, -0.574187,
		0.722693, -0.691162, -0.003128,
		18.824697, 20.284863, 21.945810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.352493, 21.464075, 22.059740>,  <18.318811, 20.768675, 21.948000>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.352493, 21.464075, 22.059740> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.954407, 21.502987, 22.063362>,  <17.715555, 21.526335, 22.065535>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.954407, 21.502987, 22.063362>,  <18.352493, 21.464075, 22.059740>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.954407, 21.502987, 22.063362> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050751, 0.435569, 0.898723,
		0.083483, 0.894884, -0.438422,
		-0.995216, 0.097279, 0.009054,
		17.655842, 21.532171, 22.066078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.230162, 22.158997, 22.243465>,  <18.352493, 21.464075, 22.059740>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.230162, 22.158997, 22.243465> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.904993, 21.949165, 22.344639>,  <17.709892, 21.823267, 22.405342>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.904993, 21.949165, 22.344639>,  <18.230162, 22.158997, 22.243465>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.904993, 21.949165, 22.344639> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006433, 0.426202, 0.904605,
		-0.582334, 0.737002, -0.343095,
		-0.812924, -0.524576, 0.252933,
		17.661116, 21.791792, 22.420519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.021309, 22.605818, 22.645035>,  <18.230162, 22.158997, 22.243465>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.021309, 22.605818, 22.645035> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.807177, 22.277712, 22.725618>,  <17.678698, 22.080849, 22.773968>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.807177, 22.277712, 22.725618>,  <18.021309, 22.605818, 22.645035>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.807177, 22.277712, 22.725618> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143934, 0.323617, 0.935177,
		-0.832289, 0.471631, -0.291306,
		-0.535330, -0.820266, 0.201459,
		17.646578, 22.031631, 22.786057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.532654, 22.745337, 23.203815>,  <18.021309, 22.605818, 22.645035>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.532654, 22.745337, 23.203815> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.529163, 22.346405, 23.232826>,  <17.527069, 22.107046, 23.250233>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.529163, 22.346405, 23.232826>,  <17.532654, 22.745337, 23.203815>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.529163, 22.346405, 23.232826> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077643, 0.072988, 0.994306,
		-0.996943, 0.003047, -0.078072,
		-0.008728, -0.997328, 0.072529,
		17.526545, 22.047207, 23.254585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.988588, 22.611198, 23.590296>,  <17.532654, 22.745337, 23.203815>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.988588, 22.611198, 23.590296> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.234049, 22.298180, 23.632355>,  <17.381325, 22.110369, 23.657589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.234049, 22.298180, 23.632355>,  <16.988588, 22.611198, 23.590296>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.234049, 22.298180, 23.632355> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072596, 0.188521, 0.979382,
		-0.786235, -0.593364, 0.172496,
		0.613649, -0.782547, 0.105146,
		17.418144, 22.063416, 23.663898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.628735, 22.123877, 24.049131>,  <16.988588, 22.611198, 23.590296>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.628735, 22.123877, 24.049131> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.026815, 22.084732, 24.048988>,  <17.265663, 22.061245, 24.048903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.026815, 22.084732, 24.048988>,  <16.628735, 22.123877, 24.049131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.026815, 22.084732, 24.048988> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002823, 0.025061, 0.999682,
		-0.097825, -0.994884, 0.025217,
		0.995200, -0.097865, -0.000357,
		17.325375, 22.055372, 24.048882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.708708, 21.876173, 24.750387>,  <16.628735, 22.123877, 24.049131>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.708708, 21.876173, 24.750387> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.086212, 21.939882, 24.634495>,  <17.312716, 21.978107, 24.564960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.086212, 21.939882, 24.634495>,  <16.708708, 21.876173, 24.750387>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.086212, 21.939882, 24.634495> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229372, 0.315716, 0.920713,
		0.238118, -0.935390, 0.261428,
		0.943763, 0.159274, -0.289730,
		17.369341, 21.987665, 24.547575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.139980, 21.561802, 25.278662>,  <16.708708, 21.876173, 24.750387>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.139980, 21.561802, 25.278662> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.371078, 21.796818, 25.052032>,  <17.509737, 21.937828, 24.916054>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.371078, 21.796818, 25.052032>,  <17.139980, 21.561802, 25.278662>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.371078, 21.796818, 25.052032> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473997, 0.323594, 0.818910,
		0.664483, -0.741676, -0.091538,
		0.577745, 0.587541, -0.566575,
		17.544403, 21.973080, 24.882061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.790243, 21.393377, 25.410053>,  <17.139980, 21.561802, 25.278662>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.790243, 21.393377, 25.410053> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.806515, 21.766781, 25.267559>,  <17.816278, 21.990824, 25.182062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.806515, 21.766781, 25.267559>,  <17.790243, 21.393377, 25.410053>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.806515, 21.766781, 25.267559> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475162, 0.295559, 0.828774,
		0.878957, -0.202984, -0.431545,
		0.040681, 0.933511, -0.356235,
		17.818720, 22.046835, 25.160688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.474970, 21.627972, 25.615408>,  <17.790243, 21.393377, 25.410053>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.474970, 21.627972, 25.615408> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.257982, 21.960173, 25.564819>,  <18.127790, 22.159492, 25.534466>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.257982, 21.960173, 25.564819>,  <18.474970, 21.627972, 25.615408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.257982, 21.960173, 25.564819> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310608, 0.338164, 0.888352,
		0.780546, 0.442618, -0.441403,
		-0.542467, 0.830503, -0.126472,
		18.095242, 22.209324, 25.526878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.962000, 22.147741, 25.858173>,  <18.474970, 21.627972, 25.615408>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.962000, 22.147741, 25.858173> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.587166, 22.287369, 25.860268>,  <18.362267, 22.371145, 25.861525>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.587166, 22.287369, 25.860268>,  <18.962000, 22.147741, 25.858173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.587166, 22.287369, 25.860268> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111427, 0.284843, 0.952076,
		0.330846, 0.892758, -0.305817,
		-0.937083, 0.349067, 0.005238,
		18.306042, 22.392088, 25.861839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.098829, 22.776550, 26.083317>,  <18.962000, 22.147741, 25.858173>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.098829, 22.776550, 26.083317> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.711361, 22.721731, 26.166164>,  <18.478880, 22.688839, 26.215874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.711361, 22.721731, 26.166164>,  <19.098829, 22.776550, 26.083317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.711361, 22.721731, 26.166164> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126083, 0.447138, 0.885534,
		-0.213973, 0.883903, -0.415849,
		-0.968669, -0.137048, 0.207121,
		18.420761, 22.680616, 26.228300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.910526, 23.379904, 26.346647>,  <19.098829, 22.776550, 26.083317>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.910526, 23.379904, 26.346647> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.620752, 23.134857, 26.473072>,  <18.446888, 22.987829, 26.548927>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.620752, 23.134857, 26.473072>,  <18.910526, 23.379904, 26.346647>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.620752, 23.134857, 26.473072> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039985, 0.495066, 0.867935,
		-0.688184, 0.616123, -0.383138,
		-0.724434, -0.612619, 0.316061,
		18.403421, 22.951071, 26.567890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.383602, 23.787930, 26.741018>,  <18.910526, 23.379904, 26.346647>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.383602, 23.787930, 26.741018> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.281082, 23.416281, 26.847635>,  <18.219570, 23.193293, 26.911606>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.281082, 23.416281, 26.847635>,  <18.383602, 23.787930, 26.741018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.281082, 23.416281, 26.847635> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114808, 0.303065, 0.946029,
		-0.959755, 0.211865, -0.184346,
		-0.256299, -0.929121, 0.266544,
		18.204193, 23.137545, 26.927599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<15.062454, 15.729779, 29.783989> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.234322, 15.978074, 29.521671>,  <15.337442, 16.127050, 29.364281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.234322, 15.978074, 29.521671>,  <15.062454, 15.729779, 29.783989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.234322, 15.978074, 29.521671> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609109, -0.336902, -0.717971,
		-0.666611, 0.707942, 0.233341,
		0.429669, 0.620738, -0.655796,
		15.363222, 16.164295, 29.324932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.563554, 15.984206, 29.428820>,  <15.062454, 15.729779, 29.783989>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.563554, 15.984206, 29.428820> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.861955, 16.040956, 29.168558>,  <15.040996, 16.075006, 29.012402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.861955, 16.040956, 29.168558>,  <14.563554, 15.984206, 29.428820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.861955, 16.040956, 29.168558> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571522, -0.365110, -0.734886,
		-0.341822, 0.920091, -0.191289,
		0.746003, 0.141875, -0.650654,
		15.085755, 16.083519, 28.973362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.212540, 16.214338, 28.814743>,  <14.563554, 15.984206, 29.428820>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.212540, 16.214338, 28.814743> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.578544, 16.098442, 28.702454>,  <14.798146, 16.028904, 28.635080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.578544, 16.098442, 28.702454>,  <14.212540, 16.214338, 28.814743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.578544, 16.098442, 28.702454> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392152, -0.475408, -0.787531,
		0.094720, 0.830686, -0.548625,
		0.915011, -0.289739, -0.280725,
		14.853047, 16.011520, 28.618237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.235027, 16.518406, 28.207420>,  <14.212540, 16.214338, 28.814743>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.235027, 16.518406, 28.207420> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.516531, 16.234516, 28.194675>,  <14.685433, 16.064182, 28.187029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.516531, 16.234516, 28.194675>,  <14.235027, 16.518406, 28.207420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.516531, 16.234516, 28.194675> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301484, -0.257741, -0.917974,
		0.643297, 0.655638, -0.395358,
		0.703759, -0.709724, -0.031860,
		14.727658, 16.021599, 28.185118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.519929, 16.644299, 27.676382>,  <14.235027, 16.518406, 28.207420>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.519929, 16.644299, 27.676382> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.606310, 16.256464, 27.722454>,  <14.658138, 16.023764, 27.750097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.606310, 16.256464, 27.722454>,  <14.519929, 16.644299, 27.676382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.606310, 16.256464, 27.722454> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193681, -0.158158, -0.968232,
		0.957002, 0.186783, -0.221945,
		0.215952, -0.969587, 0.115182,
		14.671096, 15.965588, 27.757008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.848383, 16.417662, 26.984083>,  <14.519929, 16.644299, 27.676382>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.848383, 16.417662, 26.984083> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.717152, 16.094143, 27.179310>,  <14.638412, 15.900031, 27.296446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.717152, 16.094143, 27.179310>,  <14.848383, 16.417662, 26.984083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.717152, 16.094143, 27.179310> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325852, -0.388058, -0.862109,
		0.886671, -0.441877, -0.136235,
		-0.328079, -0.808799, 0.488066,
		14.618728, 15.851503, 27.325729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.200218, 15.817964, 26.733290>,  <14.848383, 16.417662, 26.984083>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.200218, 15.817964, 26.733290> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.859127, 15.690042, 26.898495>,  <14.654472, 15.613290, 26.997618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.859127, 15.690042, 26.898495>,  <15.200218, 15.817964, 26.733290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.859127, 15.690042, 26.898495> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200546, -0.529643, -0.824172,
		0.482322, -0.785623, 0.387507,
		-0.852729, -0.319803, 0.413012,
		14.603309, 15.594102, 27.022398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.193983, 15.152853, 26.580990>,  <15.200218, 15.817964, 26.733290>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.193983, 15.152853, 26.580990> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.813591, 15.256000, 26.649273>,  <14.585356, 15.317887, 26.690243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.813591, 15.256000, 26.649273>,  <15.193983, 15.152853, 26.580990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.813591, 15.256000, 26.649273> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259363, -0.364402, -0.894395,
		-0.168427, -0.894827, 0.413420,
		-0.950980, 0.257866, 0.170710,
		14.528297, 15.333360, 26.700485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.905354, 14.602343, 26.215889>,  <15.193983, 15.152853, 26.580990>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.905354, 14.602343, 26.215889> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.600129, 14.852136, 26.282536>,  <14.416995, 15.002011, 26.322523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.600129, 14.852136, 26.282536>,  <14.905354, 14.602343, 26.215889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.600129, 14.852136, 26.282536> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428911, -0.296416, -0.853330,
		-0.483503, -0.722605, 0.494031,
		-0.763059, 0.624484, 0.166616,
		14.371211, 15.039480, 26.332520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.314529, 14.209114, 26.229244>,  <14.905354, 14.602343, 26.215889>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.314529, 14.209114, 26.229244> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.209630, 14.582815, 26.132582>,  <14.146690, 14.807035, 26.074585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.209630, 14.582815, 26.132582>,  <14.314529, 14.209114, 26.229244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.209630, 14.582815, 26.132582> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497187, -0.345434, -0.795914,
		-0.827061, -0.088580, 0.555089,
		-0.262249, 0.934253, -0.241655,
		14.130956, 14.863091, 26.060085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.521747, 14.236144, 25.970770>,  <14.314529, 14.209114, 26.229244>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.521747, 14.236144, 25.970770> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.669718, 14.583518, 25.838724>,  <13.758501, 14.791943, 25.759497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.669718, 14.583518, 25.838724>,  <13.521747, 14.236144, 25.970770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.669718, 14.583518, 25.838724> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594838, -0.051548, -0.802192,
		-0.713667, 0.493117, 0.497508,
		0.369929, 0.868434, -0.330113,
		13.780697, 14.844049, 25.739691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.909082, 14.515132, 25.718145>,  <13.521747, 14.236144, 25.970770>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.909082, 14.515132, 25.718145> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.227514, 14.708981, 25.573149>,  <13.418573, 14.825290, 25.486151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.227514, 14.708981, 25.573149>,  <12.909082, 14.515132, 25.718145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.227514, 14.708981, 25.573149> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438959, 0.050041, -0.897113,
		-0.416621, 0.873291, 0.252566,
		0.796079, 0.484622, -0.362491,
		13.466338, 14.854367, 25.464401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.613584, 15.030931, 25.306072>,  <12.909082, 14.515132, 25.718145>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.613584, 15.030931, 25.306072> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.996881, 14.990412, 25.199106>,  <13.226859, 14.966100, 25.134928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.996881, 14.990412, 25.199106>,  <12.613584, 15.030931, 25.306072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.996881, 14.990412, 25.199106> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264829, 0.038407, -0.963530,
		0.107875, 0.994114, 0.009976,
		0.958242, -0.101299, -0.267413,
		13.284353, 14.960022, 25.118883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.725680, 15.645481, 24.817369>,  <12.613584, 15.030931, 25.306072>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.725680, 15.645481, 24.817369> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.974801, 15.339882, 24.749929>,  <13.124273, 15.156523, 24.709465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.974801, 15.339882, 24.749929>,  <12.725680, 15.645481, 24.817369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.974801, 15.339882, 24.749929> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384892, -0.111575, -0.916193,
		0.681157, 0.635499, -0.363546,
		0.622802, -0.763997, -0.168599,
		13.161642, 15.110682, 24.699350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.890084, 16.426699, 24.640472>,  <12.725680, 15.645481, 24.817369>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.890084, 16.426699, 24.640472> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.570200, 16.664715, 24.672441>,  <12.378269, 16.807524, 24.691624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.570200, 16.664715, 24.672441>,  <12.890084, 16.426699, 24.640472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.570200, 16.664715, 24.672441> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164331, 0.088905, 0.982391,
		0.577457, 0.798763, -0.168882,
		-0.799712, 0.595041, 0.079923,
		12.330286, 16.843227, 24.696419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.204196, 17.154116, 24.833826>,  <12.890084, 16.426699, 24.640472>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.204196, 17.154116, 24.833826> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.817635, 17.165339, 24.936024>,  <12.585698, 17.172071, 24.997343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.817635, 17.165339, 24.936024>,  <13.204196, 17.154116, 24.833826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.817635, 17.165339, 24.936024> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244971, 0.401456, 0.882509,
		-0.077811, 0.915448, -0.394842,
		-0.966403, 0.028056, 0.255496,
		12.527714, 17.173756, 25.012672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.032847, 17.910555, 25.064140>,  <13.204196, 17.154116, 24.833826>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.032847, 17.910555, 25.064140> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.740735, 17.676449, 25.205082>,  <12.565468, 17.535984, 25.289646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.740735, 17.676449, 25.205082>,  <13.032847, 17.910555, 25.064140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.740735, 17.676449, 25.205082> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202051, 0.307661, 0.929796,
		-0.652585, 0.750205, -0.106425,
		-0.730280, -0.585267, 0.352354,
		12.521651, 17.500868, 25.310789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.512024, 18.390461, 25.458496>,  <13.032847, 17.910555, 25.064140>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.512024, 18.390461, 25.458496> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.465066, 18.016289, 25.591873>,  <12.436892, 17.791784, 25.671900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.465066, 18.016289, 25.591873>,  <12.512024, 18.390461, 25.458496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.465066, 18.016289, 25.591873> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025997, 0.338546, 0.940591,
		-0.992745, 0.101752, -0.064062,
		-0.117395, -0.935432, 0.333445,
		12.429848, 17.735659, 25.691906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.905272, 18.450920, 25.987818>,  <12.512024, 18.390461, 25.458496>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.905272, 18.450920, 25.987818> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.074647, 18.102232, 26.086449>,  <12.176272, 17.893019, 26.145628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.074647, 18.102232, 26.086449>,  <11.905272, 18.450920, 25.987818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.074647, 18.102232, 26.086449> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143086, 0.333122, 0.931963,
		-0.894554, -0.359347, 0.265788,
		0.423438, -0.871722, 0.246578,
		12.201678, 17.840715, 26.160421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.618582, 18.311556, 26.591036>,  <11.905272, 18.450920, 25.987818>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.618582, 18.311556, 26.591036> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.961660, 18.106531, 26.574850>,  <12.167507, 17.983517, 26.565138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.961660, 18.106531, 26.574850>,  <11.618582, 18.311556, 26.591036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.961660, 18.106531, 26.574850> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210102, 0.277561, 0.937453,
		-0.469271, -0.812551, 0.345753,
		0.857696, -0.512563, -0.040467,
		12.218969, 17.952763, 26.562710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.755353, 18.133200, 27.290892>,  <11.618582, 18.311556, 26.591036>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.755353, 18.133200, 27.290892> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.108036, 18.023554, 27.137293>,  <12.319646, 17.957767, 27.045134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.108036, 18.023554, 27.137293>,  <11.755353, 18.133200, 27.290892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.108036, 18.023554, 27.137293> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422502, 0.096552, 0.901204,
		-0.209958, -0.956838, 0.200944,
		0.881708, -0.274114, -0.383994,
		12.372549, 17.941320, 27.022095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.016013, 17.581184, 27.671703>,  <11.755353, 18.133200, 27.290892>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.016013, 17.581184, 27.671703> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.338081, 17.746302, 27.501387>,  <12.531322, 17.845373, 27.399197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.338081, 17.746302, 27.501387>,  <12.016013, 17.581184, 27.671703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.338081, 17.746302, 27.501387> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497909, -0.080513, 0.863484,
		0.322160, -0.907259, -0.270361,
		0.805171, 0.412795, -0.425794,
		12.579633, 17.870140, 27.373648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.630441, 17.333607, 28.063402>,  <12.016013, 17.581184, 27.671703>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.630441, 17.333607, 28.063402> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.771949, 17.651865, 27.866713>,  <12.856853, 17.842821, 27.748699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.771949, 17.651865, 27.866713>,  <12.630441, 17.333607, 28.063402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.771949, 17.651865, 27.866713> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559153, 0.241531, 0.793102,
		0.749796, -0.555524, -0.359442,
		0.353771, 0.795648, -0.491722,
		12.878080, 17.890560, 27.719196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.323564, 17.289089, 28.151016>,  <12.630441, 17.333607, 28.063402>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.323564, 17.289089, 28.151016> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.232320, 17.671619, 28.077902>,  <13.177574, 17.901136, 28.034033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.232320, 17.671619, 28.077902>,  <13.323564, 17.289089, 28.151016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.232320, 17.671619, 28.077902> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613638, 0.286966, 0.735594,
		0.755919, 0.055631, -0.652297,
		-0.228108, 0.956324, -0.182786,
		13.163887, 17.958517, 28.023066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.890348, 17.626314, 28.215235>,  <13.323564, 17.289089, 28.151016>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.890348, 17.626314, 28.215235> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.654634, 17.949039, 28.232199>,  <13.513206, 18.142673, 28.242376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.654634, 17.949039, 28.232199>,  <13.890348, 17.626314, 28.215235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.654634, 17.949039, 28.232199> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508330, 0.329454, 0.795651,
		0.627969, 0.490422, -0.604269,
		-0.589284, 0.806812, 0.042409,
		13.477849, 18.191084, 28.244921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.318125, 18.222099, 28.174500>,  <13.890348, 17.626314, 28.215235>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.318125, 18.222099, 28.174500> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.970883, 18.339907, 28.334328>,  <13.762539, 18.410591, 28.430225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.970883, 18.339907, 28.334328>,  <14.318125, 18.222099, 28.174500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.970883, 18.339907, 28.334328> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487619, 0.355362, 0.797462,
		0.092875, 0.887117, -0.452103,
		-0.868102, 0.294518, 0.399571,
		13.710453, 18.428263, 28.454199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.226631, 19.026953, 28.278912>,  <14.318125, 18.222099, 28.174500>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.226631, 19.026953, 28.278912> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.977748, 18.856487, 28.541588>,  <13.828418, 18.754208, 28.699194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.977748, 18.856487, 28.541588>,  <14.226631, 19.026953, 28.278912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.977748, 18.856487, 28.541588> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486580, 0.446604, 0.750856,
		-0.613267, 0.786721, -0.070519,
		-0.622208, -0.426163, 0.656690,
		13.791085, 18.728638, 28.738594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.888106, 19.606205, 28.751534>,  <14.226631, 19.026953, 28.278912>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.888106, 19.606205, 28.751534> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.868902, 19.256344, 28.944479>,  <13.857380, 19.046427, 29.060246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.868902, 19.256344, 28.944479>,  <13.888106, 19.606205, 28.751534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.868902, 19.256344, 28.944479> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492103, 0.399532, 0.773439,
		-0.869212, 0.274504, 0.411240,
		-0.048009, -0.874655, 0.482362,
		13.854500, 18.993948, 29.089188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.532079, 20.357971, 28.721899>,  <13.888106, 19.606205, 28.751534>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.532079, 20.357971, 28.721899> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.613310, 20.748186, 28.755566>,  <13.662048, 20.982315, 28.775764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.613310, 20.748186, 28.755566>,  <13.532079, 20.357971, 28.721899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.613310, 20.748186, 28.755566> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229813, 0.131042, -0.964372,
		-0.951812, 0.176500, 0.250803,
		0.203077, 0.975539, 0.084165,
		13.674232, 21.040848, 28.780815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.900243, 20.715981, 28.698196>,  <13.532079, 20.357971, 28.721899>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.900243, 20.715981, 28.698196> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.186762, 20.976397, 28.597748>,  <13.358673, 21.132647, 28.537477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.186762, 20.976397, 28.597748>,  <12.900243, 20.715981, 28.698196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.186762, 20.976397, 28.597748> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314358, -0.020220, -0.949089,
		-0.622974, 0.758773, 0.190177,
		0.716298, 0.651041, -0.251123,
		13.401651, 21.171709, 28.522411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.629865, 21.134779, 28.155872>,  <12.900243, 20.715981, 28.698196>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.629865, 21.134779, 28.155872> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.016890, 21.216429, 28.096334>,  <13.249104, 21.265419, 28.060612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.016890, 21.216429, 28.096334>,  <12.629865, 21.134779, 28.155872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.016890, 21.216429, 28.096334> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218719, 0.382003, -0.897906,
		-0.126426, 0.901336, 0.414257,
		0.967563, 0.204125, -0.148845,
		13.307158, 21.277666, 28.051682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.664149, 21.753304, 27.815403>,  <12.629865, 21.134779, 28.155872>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.664149, 21.753304, 27.815403> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.023431, 21.598459, 27.732094>,  <13.238999, 21.505552, 27.682108>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.023431, 21.598459, 27.732094>,  <12.664149, 21.753304, 27.815403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.023431, 21.598459, 27.732094> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041894, 0.396260, -0.917182,
		0.437580, 0.832541, 0.339705,
		0.898203, -0.387109, -0.208274,
		13.292892, 21.482327, 27.669611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.074686, 22.224266, 27.363716>,  <12.664149, 21.753304, 27.815403>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.074686, 22.224266, 27.363716> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.263947, 21.875080, 27.316292>,  <13.377503, 21.665567, 27.287838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.263947, 21.875080, 27.316292>,  <13.074686, 22.224266, 27.363716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.263947, 21.875080, 27.316292> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083190, 0.089702, -0.992488,
		0.877044, 0.479461, -0.030180,
		0.473152, -0.872967, -0.118559,
		13.405892, 21.613190, 27.280724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.541480, 22.362995, 26.701805>,  <13.074686, 22.224266, 27.363716>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.541480, 22.362995, 26.701805> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.519499, 21.966974, 26.753609>,  <13.506310, 21.729361, 26.784691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.519499, 21.966974, 26.753609>,  <13.541480, 22.362995, 26.701805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.519499, 21.966974, 26.753609> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267253, -0.110389, -0.957282,
		0.962058, -0.087219, -0.258529,
		-0.054954, -0.990054, 0.129510,
		13.503013, 21.669958, 26.792461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.996687, 22.054737, 26.236221>,  <13.541480, 22.362995, 26.701805>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.996687, 22.054737, 26.236221> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.731413, 21.764750, 26.310631>,  <13.572248, 21.590757, 26.355276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.731413, 21.764750, 26.310631>,  <13.996687, 22.054737, 26.236221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.731413, 21.764750, 26.310631> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212830, -0.055621, -0.975505,
		0.717558, -0.686532, -0.117408,
		-0.663185, -0.724969, 0.186026,
		13.532457, 21.547258, 26.366438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.139758, 21.597595, 25.733585>,  <13.996687, 22.054737, 26.236221>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.139758, 21.597595, 25.733585> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.771275, 21.522377, 25.869827>,  <13.550184, 21.477247, 25.951572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.771275, 21.522377, 25.869827>,  <14.139758, 21.597595, 25.733585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.771275, 21.522377, 25.869827> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330232, -0.084974, -0.940067,
		0.205717, -0.978478, 0.016181,
		-0.921210, -0.188044, 0.340605,
		13.494911, 21.465963, 25.972010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.812815, 21.076157, 25.280342>,  <14.139758, 21.597595, 25.733585>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.812815, 21.076157, 25.280342> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.504844, 21.252573, 25.464817>,  <13.320061, 21.358423, 25.575502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.504844, 21.252573, 25.464817>,  <13.812815, 21.076157, 25.280342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.504844, 21.252573, 25.464817> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528032, -0.034506, -0.848523,
		-0.358320, -0.896824, 0.259451,
		-0.769928, 0.441041, 0.461188,
		13.273865, 21.384886, 25.603174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.209620, 20.681616, 25.214321>,  <13.812815, 21.076157, 25.280342>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.209620, 20.681616, 25.214321> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.080476, 21.055710, 25.272425>,  <13.002989, 21.280167, 25.307287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.080476, 21.055710, 25.272425>,  <13.209620, 20.681616, 25.214321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.080476, 21.055710, 25.272425> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287398, 0.049352, -0.956539,
		-0.901755, -0.350576, 0.252851,
		-0.322861, 0.935233, 0.145258,
		12.983618, 21.336279, 25.316002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.649337, 20.630867, 24.785635>,  <13.209620, 20.681616, 25.214321>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.649337, 20.630867, 24.785635> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.646409, 21.025909, 24.848354>,  <12.644652, 21.262934, 24.885986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.646409, 21.025909, 24.848354>,  <12.649337, 20.630867, 24.785635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.646409, 21.025909, 24.848354> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511445, 0.131043, -0.849265,
		-0.859285, -0.086409, 0.504145,
		-0.007319, 0.987604, 0.156797,
		12.644214, 21.322191, 24.895393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.902865, 20.871681, 24.838753>,  <12.649337, 20.630867, 24.785635>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.902865, 20.871681, 24.838753> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.115677, 21.193207, 24.732298>,  <12.243363, 21.386122, 24.668425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.115677, 21.193207, 24.732298>,  <11.902865, 20.871681, 24.838753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.115677, 21.193207, 24.732298> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509321, 0.052715, -0.858961,
		-0.676415, 0.592540, 0.437446,
		0.532029, 0.803814, -0.266136,
		12.275286, 21.434351, 24.652456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.532661, 21.383860, 24.567152>,  <11.902865, 20.871681, 24.838753>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.532661, 21.383860, 24.567152> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.891110, 21.464750, 24.409130>,  <12.106180, 21.513285, 24.314318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.891110, 21.464750, 24.409130>,  <11.532661, 21.383860, 24.567152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.891110, 21.464750, 24.409130> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407261, 0.020982, -0.913071,
		-0.176360, 0.979113, 0.101162,
		0.896122, 0.202229, -0.395055,
		12.159947, 21.525419, 24.290613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.397602, 21.978819, 24.066433>,  <11.532661, 21.383860, 24.567152>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.397602, 21.978819, 24.066433> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.725725, 21.766155, 23.982117>,  <11.922599, 21.638557, 23.931526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.725725, 21.766155, 23.982117>,  <11.397602, 21.978819, 24.066433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.725725, 21.766155, 23.982117> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369784, -0.211878, -0.904637,
		0.436295, 0.820029, -0.370404,
		0.820309, -0.531658, -0.210792,
		11.971818, 21.606657, 23.918879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<9.374037, 5.791046, 17.379400> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.283525, 5.410871, 17.294109>,  <9.229218, 5.182766, 17.242935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.283525, 5.410871, 17.294109>,  <9.374037, 5.791046, 17.379400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.283525, 5.410871, 17.294109> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430250, 0.293918, -0.853520,
		0.873889, -0.101394, -0.475434,
		-0.226281, -0.950438, -0.213227,
		9.215640, 5.125740, 17.230141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.041783, 5.043852, 17.705927>,  <9.374037, 5.791046, 17.379400>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.041783, 5.043852, 17.705927> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.835921, 5.193595, 17.397385>,  <8.712404, 5.283442, 17.212259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.835921, 5.193595, 17.397385>,  <9.041783, 5.043852, 17.705927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.835921, 5.193595, 17.397385> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699866, -0.336278, -0.630162,
		-0.495296, -0.864160, -0.088935,
		-0.514654, 0.374359, -0.771354,
		8.681525, 5.305903, 17.165979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.954562, 4.536839, 17.229177>,  <9.041783, 5.043852, 17.705927>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.954562, 4.536839, 17.229177> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.923753, 4.881656, 17.028795>,  <8.905268, 5.088545, 16.908566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.923753, 4.881656, 17.028795>,  <8.954562, 4.536839, 17.229177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.923753, 4.881656, 17.028795> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810927, -0.238151, -0.534492,
		-0.580056, -0.447405, -0.680709,
		-0.077023, 0.862040, -0.500953,
		8.900646, 5.140268, 16.878510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.870566, 4.331482, 16.512131>,  <8.954562, 4.536839, 17.229177>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.870566, 4.331482, 16.512131> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.022006, 4.696173, 16.575901>,  <9.112870, 4.914988, 16.614162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.022006, 4.696173, 16.575901>,  <8.870566, 4.331482, 16.512131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.022006, 4.696173, 16.575901> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852626, -0.276533, -0.443350,
		-0.360127, 0.303783, -0.882057,
		0.378600, 0.911727, 0.159426,
		9.135586, 4.969691, 16.623728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.170358, 4.659481, 15.982827>,  <8.870566, 4.331482, 16.512131>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.170358, 4.659481, 15.982827> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.384272, 4.826956, 16.276413>,  <9.512620, 4.927442, 16.452564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.384272, 4.826956, 16.276413>,  <9.170358, 4.659481, 15.982827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.384272, 4.826956, 16.276413> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832779, -0.114030, -0.541735,
		-0.143125, 0.900942, -0.409656,
		0.534785, 0.418689, 0.733965,
		9.544707, 4.952563, 16.496603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.651873, 5.117029, 15.771092>,  <9.170358, 4.659481, 15.982827>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.651873, 5.117029, 15.771092> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.807324, 5.020974, 16.126913>,  <9.900596, 4.963341, 16.340405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.807324, 5.020974, 16.126913>,  <9.651873, 5.117029, 15.771092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.807324, 5.020974, 16.126913> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895577, -0.128492, -0.425948,
		0.216586, 0.962197, 0.165126,
		0.388629, -0.240137, 0.889551,
		9.923913, 4.948933, 16.393778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.170968, 5.350006, 15.260394>,  <9.651873, 5.117029, 15.771092>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.170968, 5.350006, 15.260394> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.384790, 5.645503, 15.424595>,  <10.513083, 5.822801, 15.523115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.384790, 5.645503, 15.424595>,  <10.170968, 5.350006, 15.260394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.384790, 5.645503, 15.424595> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654548, -0.054629, -0.754044,
		-0.534619, 0.671771, -0.512744,
		0.534555, 0.738742, 0.410501,
		10.545157, 5.867126, 15.547745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.311815, 5.832716, 14.715743>,  <10.170968, 5.350006, 15.260394>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.311815, 5.832716, 14.715743> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.573844, 5.854471, 15.017186>,  <10.731061, 5.867523, 15.198051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.573844, 5.854471, 15.017186>,  <10.311815, 5.832716, 14.715743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.573844, 5.854471, 15.017186> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743118, -0.226680, -0.629596,
		0.136587, 0.972450, -0.188907,
		0.655072, 0.054385, 0.753607,
		10.770366, 5.870786, 15.243268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.149232, 5.749086, 13.893847>,  <10.311815, 5.832716, 14.715743>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.149232, 5.749086, 13.893847> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.290638, 5.801290, 13.523335>,  <10.375482, 5.832612, 13.301028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.290638, 5.801290, 13.523335>,  <10.149232, 5.749086, 13.893847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.290638, 5.801290, 13.523335> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398847, 0.916727, -0.023058,
		0.846137, 0.377595, 0.376131,
		0.353516, 0.130509, -0.926280,
		10.396692, 5.840442, 13.245452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.545018, 6.433111, 13.724525>,  <10.149232, 5.749086, 13.893847>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.545018, 6.433111, 13.724525> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.327956, 6.288196, 13.421402>,  <10.197719, 6.201247, 13.239528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.327956, 6.288196, 13.421402>,  <10.545018, 6.433111, 13.724525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.327956, 6.288196, 13.421402> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493726, 0.867464, -0.061160,
		0.679528, 0.340962, -0.649604,
		-0.542656, -0.362287, -0.757808,
		10.165159, 6.179510, 13.194059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.529202, 7.028123, 13.208209>,  <10.545018, 6.433111, 13.724525>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.529202, 7.028123, 13.208209> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.221867, 6.774332, 13.174520>,  <10.037465, 6.622057, 13.154307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.221867, 6.774332, 13.174520>,  <10.529202, 7.028123, 13.208209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.221867, 6.774332, 13.174520> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624358, 0.771945, -0.119489,
		0.140828, -0.039224, -0.989257,
		-0.768339, -0.634478, -0.084222,
		9.991365, 6.583988, 13.149254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.274117, 7.277424, 12.736210>,  <10.529202, 7.028123, 13.208209>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.274117, 7.277424, 12.736210> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.987137, 7.092729, 12.944847>,  <9.814948, 6.981911, 13.070029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.987137, 7.092729, 12.944847>,  <10.274117, 7.277424, 12.736210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.987137, 7.092729, 12.944847> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504491, 0.860732, 0.068033,
		-0.480366, -0.214329, -0.850478,
		-0.717452, -0.461739, 0.521593,
		9.771901, 6.954207, 13.101325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.657657, 7.537726, 12.508662>,  <10.274117, 7.277424, 12.736210>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.657657, 7.537726, 12.508662> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.551763, 7.390123, 12.865032>,  <9.488226, 7.301562, 13.078855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.551763, 7.390123, 12.865032>,  <9.657657, 7.537726, 12.508662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.551763, 7.390123, 12.865032> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539669, 0.822355, 0.180246,
		-0.799170, -0.433088, -0.416848,
		-0.264735, -0.369007, 0.890926,
		9.472342, 7.279421, 13.132310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.907222, 7.683077, 12.552905>,  <9.657657, 7.537726, 12.508662>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.907222, 7.683077, 12.552905> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.072649, 7.640959, 12.914651>,  <9.171906, 7.615689, 13.131699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.072649, 7.640959, 12.914651>,  <8.907222, 7.683077, 12.552905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.072649, 7.640959, 12.914651> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474219, 0.823010, 0.312684,
		-0.777224, -0.558183, 0.290439,
		0.413568, -0.105294, 0.904364,
		9.196719, 7.609371, 13.185960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.392455, 7.746497, 12.945627>,  <8.907222, 7.683077, 12.552905>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.392455, 7.746497, 12.945627> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.722583, 7.842842, 13.149914>,  <8.920660, 7.900649, 13.272486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.722583, 7.842842, 13.149914>,  <8.392455, 7.746497, 12.945627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.722583, 7.842842, 13.149914> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431524, 0.852383, 0.295348,
		-0.364188, -0.464144, 0.807426,
		0.825320, 0.240861, 0.510717,
		8.970179, 7.915100, 13.303129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.204321, 7.926833, 13.528663>,  <8.392455, 7.746497, 12.945627>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.204321, 7.926833, 13.528663> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.563279, 8.101725, 13.504965>,  <8.778654, 8.206659, 13.490746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.563279, 8.101725, 13.504965>,  <8.204321, 7.926833, 13.528663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.563279, 8.101725, 13.504965> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384563, 0.840899, 0.380789,
		0.216311, -0.318935, 0.922762,
		0.897396, 0.437229, -0.059245,
		8.832499, 8.232893, 13.487191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.143177, 8.247107, 14.063216>,  <8.204321, 7.926833, 13.528663>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.143177, 8.247107, 14.063216> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.477991, 8.401137, 13.907737>,  <8.678880, 8.493556, 13.814449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.477991, 8.401137, 13.907737>,  <8.143177, 8.247107, 14.063216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.477991, 8.401137, 13.907737> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249419, 0.900845, 0.355342,
		0.486991, -0.200486, 0.850085,
		0.837036, 0.385076, -0.388699,
		8.729102, 8.516660, 13.791127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.447574, 8.636847, 14.637224>,  <8.143177, 8.247107, 14.063216>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.447574, 8.636847, 14.637224> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.562131, 8.772721, 14.278874>,  <8.630865, 8.854246, 14.063865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.562131, 8.772721, 14.278874>,  <8.447574, 8.636847, 14.637224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.562131, 8.772721, 14.278874> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300729, 0.919658, 0.252569,
		0.909692, 0.197081, 0.365540,
		0.286395, 0.339689, -0.895873,
		8.648048, 8.874628, 14.010112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.741638, 9.253459, 14.888849>,  <8.447574, 8.636847, 14.637224>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.741638, 9.253459, 14.888849> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.707890, 9.286298, 14.491631>,  <8.687640, 9.306002, 14.253300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.707890, 9.286298, 14.491631>,  <8.741638, 9.253459, 14.888849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.707890, 9.286298, 14.491631> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149119, 0.984337, 0.094047,
		0.985213, 0.156017, -0.070809,
		-0.084372, 0.082097, -0.993046,
		8.682578, 9.310927, 14.193717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.058921, 9.833618, 14.840790>,  <8.741638, 9.253459, 14.888849>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.058921, 9.833618, 14.840790> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.868921, 9.801637, 14.490252>,  <8.754921, 9.782448, 14.279928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.868921, 9.801637, 14.490252>,  <9.058921, 9.833618, 14.840790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.868921, 9.801637, 14.490252> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174177, 0.984704, 0.004568,
		0.862576, 0.154809, -0.481660,
		-0.475000, -0.079953, -0.876346,
		8.726421, 9.777651, 14.227347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.368919, 10.356347, 14.489514>,  <9.058921, 9.833618, 14.840790>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.368919, 10.356347, 14.489514> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.004066, 10.277218, 14.345917>,  <8.785153, 10.229740, 14.259758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.004066, 10.277218, 14.345917>,  <9.368919, 10.356347, 14.489514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.004066, 10.277218, 14.345917> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208705, 0.977941, -0.008615,
		0.352778, 0.067066, -0.933301,
		-0.912135, -0.197824, -0.358993,
		8.730425, 10.217871, 14.238219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.290891, 10.799698, 13.829736>,  <9.368919, 10.356347, 14.489514>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.290891, 10.799698, 13.829736> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.922232, 10.688399, 13.937916>,  <8.701036, 10.621620, 14.002824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.922232, 10.688399, 13.937916>,  <9.290891, 10.799698, 13.829736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.922232, 10.688399, 13.937916> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320695, 0.938600, -0.127216,
		-0.218447, -0.203980, -0.954292,
		-0.921648, -0.278247, 0.270450,
		8.645737, 10.604925, 14.019051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.714757, 11.139853, 13.334666>,  <9.290891, 10.799698, 13.829736>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.714757, 11.139853, 13.334666> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.514384, 11.047994, 13.668451>,  <8.394160, 10.992878, 13.868723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.514384, 11.047994, 13.668451>,  <8.714757, 11.139853, 13.334666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.514384, 11.047994, 13.668451> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387640, 0.921573, 0.020919,
		-0.773823, -0.312993, -0.550666,
		-0.500932, -0.229648, 0.834463,
		8.364105, 10.979099, 13.918791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.020469, 11.299537, 13.160378>,  <8.714757, 11.139853, 13.334666>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.020469, 11.299537, 13.160378> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.057552, 11.295413, 13.558634>,  <8.079803, 11.292939, 13.797587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.057552, 11.295413, 13.558634>,  <8.020469, 11.299537, 13.160378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.057552, 11.295413, 13.558634> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483595, 0.873620, 0.054075,
		-0.870368, -0.486500, 0.076008,
		0.092710, -0.010308, 0.995640,
		8.085365, 11.292320, 13.857326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.407322, 11.578091, 13.332541>,  <8.020469, 11.299537, 13.160378>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.407322, 11.578091, 13.332541> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.598386, 11.582270, 13.683934>,  <7.713024, 11.584777, 13.894771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.598386, 11.582270, 13.683934>,  <7.407322, 11.578091, 13.332541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.598386, 11.582270, 13.683934> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283817, 0.948149, 0.143043,
		-0.831439, -0.317654, 0.455856,
		0.477658, 0.010448, 0.878484,
		7.741683, 11.585404, 13.947479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.004934, 11.709948, 13.842350>,  <7.407322, 11.578091, 13.332541>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.004934, 11.709948, 13.842350> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.352511, 11.820296, 14.006708>,  <7.561057, 11.886505, 14.105323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.352511, 11.820296, 14.006708>,  <7.004934, 11.709948, 13.842350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.352511, 11.820296, 14.006708> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381289, 0.902468, 0.200423,
		-0.315530, -0.330827, 0.889379,
		0.868942, 0.275871, 0.410897,
		7.613194, 11.903058, 14.129977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.861623, 12.023728, 14.593206>,  <7.004934, 11.709948, 13.842350>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.861623, 12.023728, 14.593206> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.209128, 12.170413, 14.460075>,  <7.417631, 12.258424, 14.380197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.209128, 12.170413, 14.460075>,  <6.861623, 12.023728, 14.593206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.209128, 12.170413, 14.460075> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263391, 0.911279, 0.316536,
		0.419376, -0.187330, 0.888274,
		0.868762, 0.366711, -0.332828,
		7.469757, 12.280426, 14.360227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.207396, 12.348807, 15.098317>,  <6.861623, 12.023728, 14.593206>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.207396, 12.348807, 15.098317> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.362200, 12.535703, 14.780346>,  <7.455083, 12.647840, 14.589563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.362200, 12.535703, 14.780346>,  <7.207396, 12.348807, 15.098317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.362200, 12.535703, 14.780346> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313023, 0.877485, 0.363369,
		0.867317, 0.108202, 0.485853,
		0.387011, 0.467240, -0.794927,
		7.478303, 12.675875, 14.541867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.243130, 13.047620, 15.330130>,  <7.207396, 12.348807, 15.098317>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.243130, 13.047620, 15.330130> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.339386, 13.074011, 14.942782>,  <7.397141, 13.089846, 14.710374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.339386, 13.074011, 14.942782>,  <7.243130, 13.047620, 15.330130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.339386, 13.074011, 14.942782> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159818, 0.986763, 0.027515,
		0.957366, 0.148142, 0.248001,
		0.240642, 0.065977, -0.968369,
		7.411579, 13.093804, 14.652271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.833954, 13.601321, 15.181505>,  <7.243130, 13.047620, 15.330130>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.833954, 13.601321, 15.181505> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.604374, 13.525258, 14.862903>,  <7.466626, 13.479620, 14.671741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.604374, 13.525258, 14.862903>,  <7.833954, 13.601321, 15.181505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.604374, 13.525258, 14.862903> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358594, 0.932811, 0.035699,
		0.736201, 0.306112, -0.603576,
		-0.573950, -0.190157, -0.796506,
		7.432189, 13.468211, 14.623951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.941590, 14.086323, 14.612263>,  <7.833954, 13.601321, 15.181505>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.941590, 14.086323, 14.612263> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.569019, 13.958135, 14.543281>,  <7.345476, 13.881222, 14.501891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.569019, 13.958135, 14.543281>,  <7.941590, 14.086323, 14.612263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.569019, 13.958135, 14.543281> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334905, 0.940237, 0.061596,
		0.142408, 0.115128, -0.983090,
		-0.931428, -0.320470, -0.172454,
		7.289590, 13.861994, 14.491545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.681263, 14.186485, 14.682919>,  <7.941590, 14.086323, 14.612263>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.681263, 14.186485, 14.682919> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.943270, 14.343463, 14.941202>,  <9.100473, 14.437650, 15.096172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.943270, 14.343463, 14.941202>,  <8.681263, 14.186485, 14.682919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.943270, 14.343463, 14.941202> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701010, -0.634566, -0.325442,
		0.282028, 0.665818, -0.690758,
		0.655016, 0.392444, 0.645710,
		9.139774, 14.461196, 15.134915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.249219, 14.245060, 14.299932>,  <8.681263, 14.186485, 14.682919>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.249219, 14.245060, 14.299932> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.368200, 14.209455, 14.680162>,  <9.439590, 14.188092, 14.908301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.368200, 14.209455, 14.680162>,  <9.249219, 14.245060, 14.299932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.368200, 14.209455, 14.680162> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719313, -0.633787, -0.284434,
		0.627782, 0.768369, -0.124495,
		0.297454, -0.089012, 0.950578,
		9.457437, 14.182752, 14.965336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.988662, 14.419002, 14.294519>,  <9.249219, 14.245060, 14.299932>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.988662, 14.419002, 14.294519> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.890988, 14.168374, 14.590569>,  <9.832384, 14.017998, 14.768200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.890988, 14.168374, 14.590569>,  <9.988662, 14.419002, 14.294519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.890988, 14.168374, 14.590569> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852413, -0.502580, -0.144240,
		0.462349, 0.595672, 0.656817,
		-0.244184, -0.626568, 0.740126,
		9.817734, 13.980404, 14.812608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.611103, 14.407192, 14.518917>,  <9.988662, 14.419002, 14.294519>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.611103, 14.407192, 14.518917> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.391871, 14.103284, 14.658835>,  <10.260332, 13.920938, 14.742786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.391871, 14.103284, 14.658835>,  <10.611103, 14.407192, 14.518917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.391871, 14.103284, 14.658835> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679724, -0.648286, -0.343075,
		0.487426, 0.049732, 0.871747,
		-0.548079, -0.759771, 0.349796,
		10.227448, 13.875353, 14.763774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.245894, 13.975018, 14.784220>,  <10.611103, 14.407192, 14.518917>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.245894, 13.975018, 14.784220> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.919176, 13.745288, 14.762317>,  <10.723145, 13.607450, 14.749175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.919176, 13.745288, 14.762317>,  <11.245894, 13.975018, 14.784220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.919176, 13.745288, 14.762317> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566745, -0.781002, -0.262364,
		0.107917, -0.245331, 0.963414,
		-0.816795, -0.574324, -0.054757,
		10.674138, 13.572990, 14.745890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.414042, 13.314863, 15.026857>,  <11.245894, 13.975018, 14.784220>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.414042, 13.314863, 15.026857> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.080750, 13.228971, 14.823045>,  <10.880775, 13.177436, 14.700757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.080750, 13.228971, 14.823045>,  <11.414042, 13.314863, 15.026857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.080750, 13.228971, 14.823045> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424013, -0.839592, -0.339555,
		-0.354885, -0.498975, 0.790621,
		-0.833228, -0.214731, -0.509530,
		10.830782, 13.164553, 14.670185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.330339, 12.615493, 15.110403>,  <11.414042, 13.314863, 15.026857>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.330339, 12.615493, 15.110403> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.120732, 12.689102, 14.777767>,  <10.994968, 12.733268, 14.578186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.120732, 12.689102, 14.777767>,  <11.330339, 12.615493, 15.110403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.120732, 12.689102, 14.777767> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466758, -0.754656, -0.461120,
		-0.712421, -0.629786, 0.309558,
		-0.524017, 0.184023, -0.831590,
		10.963527, 12.744308, 14.528290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.832005, 12.085196, 15.063481>,  <11.330339, 12.615493, 15.110403>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.832005, 12.085196, 15.063481> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.886680, 12.249040, 14.702697>,  <10.919484, 12.347346, 14.486226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.886680, 12.249040, 14.702697>,  <10.832005, 12.085196, 15.063481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.886680, 12.249040, 14.702697> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400497, -0.855628, -0.327876,
		-0.906046, -0.316417, -0.281001,
		0.136687, 0.409611, -0.901962,
		10.927686, 12.371923, 14.432108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.882986, 11.568371, 14.724037>,  <10.832005, 12.085196, 15.063481>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.882986, 11.568371, 14.724037> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.023476, 11.809358, 14.437352>,  <11.107769, 11.953950, 14.265341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.023476, 11.809358, 14.437352>,  <10.882986, 11.568371, 14.724037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.023476, 11.809358, 14.437352> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432583, -0.783297, -0.446451,
		-0.830370, -0.153234, -0.535728,
		0.351223, 0.602466, -0.716713,
		11.128842, 11.990097, 14.222339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.642439, 11.357788, 14.138188>,  <10.882986, 11.568371, 14.724037>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.642439, 11.357788, 14.138188> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.965640, 11.567133, 14.029950>,  <11.159561, 11.692739, 13.965008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.965640, 11.567133, 14.029950>,  <10.642439, 11.357788, 14.138188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.965640, 11.567133, 14.029950> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297441, -0.758799, -0.579442,
		-0.508585, 0.387705, -0.768782,
		0.808004, 0.523362, -0.270594,
		11.208041, 11.724142, 13.948771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.606401, 11.220938, 13.536473>,  <10.642439, 11.357788, 14.138188>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.606401, 11.220938, 13.536473> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.984308, 11.341252, 13.588543>,  <11.211052, 11.413441, 13.619784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.984308, 11.341252, 13.588543>,  <10.606401, 11.220938, 13.536473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.984308, 11.341252, 13.588543> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327660, -0.875937, -0.354081,
		0.007522, 0.377176, -0.926111,
		0.944766, 0.300786, 0.130174,
		11.267738, 11.431488, 13.627595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.942763, 11.204236, 12.883708>,  <10.606401, 11.220938, 13.536473>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.942763, 11.204236, 12.883708> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.250072, 11.202181, 13.139750>,  <11.434457, 11.200948, 13.293376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.250072, 11.202181, 13.139750>,  <10.942763, 11.204236, 12.883708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.250072, 11.202181, 13.139750> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345285, -0.838695, -0.421152,
		0.539017, 0.544577, -0.642570,
		0.768270, -0.005138, 0.640105,
		11.480553, 11.200640, 13.331782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.545803, 11.044644, 12.551850>,  <10.942763, 11.204236, 12.883708>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.545803, 11.044644, 12.551850> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.641421, 10.973583, 12.933698>,  <11.698792, 10.930946, 13.162807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.641421, 10.973583, 12.933698>,  <11.545803, 11.044644, 12.551850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.641421, 10.973583, 12.933698> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368891, -0.892797, -0.258521,
		0.898207, 0.413949, -0.147885,
		0.239045, -0.177652, 0.954619,
		11.713135, 10.920287, 13.220083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.099994, 10.590849, 12.386582>,  <11.545803, 11.044644, 12.551850>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.099994, 10.590849, 12.386582> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.009517, 10.532134, 12.771766>,  <11.955231, 10.496905, 13.002876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.009517, 10.532134, 12.771766>,  <12.099994, 10.590849, 12.386582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.009517, 10.532134, 12.771766> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357314, -0.932171, -0.058164,
		0.906181, 0.330923, 0.263300,
		-0.226193, -0.146788, 0.962959,
		11.941659, 10.488098, 13.060654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.703161, 10.254168, 12.707544>,  <12.099994, 10.590849, 12.386582>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.703161, 10.254168, 12.707544> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.380684, 10.171343, 12.929239>,  <12.187198, 10.121648, 13.062256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.380684, 10.171343, 12.929239>,  <12.703161, 10.254168, 12.707544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.380684, 10.171343, 12.929239> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112395, -0.973300, -0.200135,
		0.580879, -0.099054, 0.807941,
		-0.806193, -0.207062, 0.554236,
		12.138826, 10.109224, 13.095510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.985415, 9.722614, 13.130846>,  <12.703161, 10.254168, 12.707544>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.985415, 9.722614, 13.130846> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.587193, 9.690590, 13.150690>,  <12.348259, 9.671375, 13.162597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.587193, 9.690590, 13.150690>,  <12.985415, 9.722614, 13.130846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.587193, 9.690590, 13.150690> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078482, -0.996369, -0.033016,
		0.052074, -0.028975, 0.998223,
		-0.995555, -0.080062, 0.049610,
		12.288527, 9.666572, 13.165573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.965004, 9.176868, 13.466836>,  <12.985415, 9.722614, 13.130846>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.965004, 9.176868, 13.466836> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.596237, 9.194553, 13.312892>,  <12.374977, 9.205164, 13.220526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.596237, 9.194553, 13.312892>,  <12.965004, 9.176868, 13.466836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.596237, 9.194553, 13.312892> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013350, -0.989250, -0.145621,
		-0.387160, -0.139388, 0.911415,
		-0.921916, 0.044212, -0.384859,
		12.319662, 9.207817, 13.197434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.682939, 8.644813, 13.751655>,  <12.965004, 9.176868, 13.466836>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.682939, 8.644813, 13.751655> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.449414, 8.726617, 13.437370>,  <12.309299, 8.775700, 13.248799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.449414, 8.726617, 13.437370>,  <12.682939, 8.644813, 13.751655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.449414, 8.726617, 13.437370> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194622, -0.974790, -0.109116,
		-0.788218, 0.089214, 0.608894,
		-0.583810, 0.204512, -0.785711,
		12.274271, 8.787971, 13.201657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.039658, 8.300953, 13.926606>,  <12.682939, 8.644813, 13.751655>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.039658, 8.300953, 13.926606> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.047972, 8.376487, 13.533891>,  <12.052960, 8.421807, 13.298262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.047972, 8.376487, 13.533891>,  <12.039658, 8.300953, 13.926606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.047972, 8.376487, 13.533891> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406950, -0.895373, -0.180828,
		-0.913214, 0.403298, 0.058236,
		0.020785, 0.188834, -0.981789,
		12.054207, 8.433137, 13.239354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.423403, 8.220844, 13.713470>,  <12.039658, 8.300953, 13.926606>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.423403, 8.220844, 13.713470> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.604888, 8.181209, 13.359221>,  <11.713779, 8.157427, 13.146672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.604888, 8.181209, 13.359221>,  <11.423403, 8.220844, 13.713470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.604888, 8.181209, 13.359221> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488910, -0.858559, -0.154412,
		-0.745058, 0.503048, -0.437985,
		0.453713, -0.099090, -0.885622,
		11.741002, 8.151482, 13.093534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.881251, 8.086634, 13.177128>,  <11.423403, 8.220844, 13.713470>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.881251, 8.086634, 13.177128> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.224608, 7.971412, 13.007334>,  <11.430622, 7.902278, 12.905457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.224608, 7.971412, 13.007334>,  <10.881251, 8.086634, 13.177128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.224608, 7.971412, 13.007334> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392921, -0.901174, -0.183028,
		-0.329813, 0.323899, -0.886743,
		0.858392, -0.288055, -0.424486,
		11.482126, 7.884995, 12.879988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<17.847551, 23.878588, 27.372080> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.982037, 23.502413, 27.392231>,  <18.062729, 23.276709, 27.404322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.982037, 23.502413, 27.392231>,  <17.847551, 23.878588, 27.372080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.982037, 23.502413, 27.392231> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113764, 0.093657, 0.989084,
		-0.934889, -0.326813, 0.138477,
		0.336215, -0.940437, 0.050379,
		18.082901, 23.220282, 27.407345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.669739, 23.620359, 28.052101>,  <17.847551, 23.878588, 27.372080>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.669739, 23.620359, 28.052101> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.957014, 23.361559, 27.949657>,  <18.129379, 23.206278, 27.888191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.957014, 23.361559, 27.949657>,  <17.669739, 23.620359, 28.052101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.957014, 23.361559, 27.949657> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248683, -0.105097, 0.962866,
		-0.649894, -0.755209, 0.085419,
		0.718188, -0.647004, -0.256110,
		18.172470, 23.167458, 27.872824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.554449, 23.099554, 28.537617>,  <17.669739, 23.620359, 28.052101>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.554449, 23.099554, 28.537617> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.917835, 23.045763, 28.379322>,  <18.135866, 23.013489, 28.284346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.917835, 23.045763, 28.379322>,  <17.554449, 23.099554, 28.537617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.917835, 23.045763, 28.379322> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378054, -0.139364, 0.915234,
		-0.178235, -0.981067, -0.075765,
		0.908465, -0.134484, -0.395736,
		18.190374, 23.005419, 28.260601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.837410, 22.436369, 28.679636>,  <17.554449, 23.099554, 28.537617>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.837410, 22.436369, 28.679636> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.161535, 22.665123, 28.628510>,  <18.356010, 22.802376, 28.597834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.161535, 22.665123, 28.628510>,  <17.837410, 22.436369, 28.679636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.161535, 22.665123, 28.628510> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318970, -0.247479, 0.914884,
		0.491579, -0.782112, -0.382950,
		0.810314, 0.571887, -0.127815,
		18.404629, 22.836689, 28.590164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.276934, 22.085129, 29.116524>,  <17.837410, 22.436369, 28.679636>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.276934, 22.085129, 29.116524> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.477877, 22.419901, 29.029636>,  <18.598442, 22.620764, 28.977505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.477877, 22.419901, 29.029636>,  <18.276934, 22.085129, 29.116524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.477877, 22.419901, 29.029636> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473492, -0.056067, 0.879012,
		0.723493, -0.544429, -0.424446,
		0.502357, 0.836931, -0.217219,
		18.628584, 22.670980, 28.964470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.978619, 21.996223, 29.383400>,  <18.276934, 22.085129, 29.116524>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.978619, 21.996223, 29.383400> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.893961, 22.385502, 29.347404>,  <18.843166, 22.619068, 29.325808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.893961, 22.385502, 29.347404>,  <18.978619, 21.996223, 29.383400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.893961, 22.385502, 29.347404> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312737, 0.154669, 0.937162,
		0.925960, 0.170201, -0.337089,
		-0.211644, 0.973195, -0.089990,
		18.830467, 22.677460, 29.320408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.629864, 22.320034, 29.514544>,  <18.978619, 21.996223, 29.383400>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.629864, 22.320034, 29.514544> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.345226, 22.586773, 29.603043>,  <19.174444, 22.746817, 29.656143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.345226, 22.586773, 29.603043>,  <19.629864, 22.320034, 29.514544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.345226, 22.586773, 29.603043> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289456, -0.008688, 0.957152,
		0.640195, 0.745145, -0.186840,
		-0.711594, 0.666846, 0.221249,
		19.131748, 22.786827, 29.669416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.923222, 22.991533, 29.816967>,  <19.629864, 22.320034, 29.514544>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.923222, 22.991533, 29.816967> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.552441, 22.932571, 29.954969>,  <19.329971, 22.897194, 30.037771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.552441, 22.932571, 29.954969>,  <19.923222, 22.991533, 29.816967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.552441, 22.932571, 29.954969> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333494, 0.097528, 0.937694,
		-0.171868, 0.984256, -0.041245,
		-0.926954, -0.147405, 0.345006,
		19.274355, 22.888350, 30.058472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.933441, 23.416945, 30.312044>,  <19.923222, 22.991533, 29.816967>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.933441, 23.416945, 30.312044> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.609077, 23.195349, 30.387430>,  <19.414459, 23.062391, 30.432661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.609077, 23.195349, 30.387430>,  <19.933441, 23.416945, 30.312044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.609077, 23.195349, 30.387430> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119593, 0.158374, 0.980110,
		-0.572821, 0.817319, -0.062173,
		-0.810909, -0.553992, 0.188465,
		19.365805, 23.029152, 30.443970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.775797, 23.633986, 31.069326>,  <19.933441, 23.416945, 30.312044>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.775797, 23.633986, 31.069326> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.539871, 23.313391, 31.029856>,  <19.398315, 23.121035, 31.006174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.539871, 23.313391, 31.029856>,  <19.775797, 23.633986, 31.069326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.539871, 23.313391, 31.029856> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067404, -0.170630, 0.983027,
		-0.804721, 0.573152, 0.154663,
		-0.589814, -0.801487, -0.098677,
		19.362926, 23.072945, 31.000252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.335819, 23.769997, 31.513729>,  <19.775797, 23.633986, 31.069326>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.335819, 23.769997, 31.513729> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.329605, 23.375214, 31.449635>,  <19.325876, 23.138344, 31.411177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.329605, 23.375214, 31.449635>,  <19.335819, 23.769997, 31.513729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.329605, 23.375214, 31.449635> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073983, -0.158684, 0.984554,
		-0.997139, 0.027149, -0.070553,
		-0.015534, -0.986956, -0.160238,
		19.324945, 23.079126, 31.401564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.822363, 23.548372, 31.963118>,  <19.335819, 23.769997, 31.513729>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.822363, 23.548372, 31.963118> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.009678, 23.204491, 31.881519>,  <19.122066, 22.998161, 31.832560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.009678, 23.204491, 31.881519>,  <18.822363, 23.548372, 31.963118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.009678, 23.204491, 31.881519> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045509, -0.207102, 0.977261,
		-0.882403, -0.466923, -0.057859,
		0.468288, -0.859704, -0.203996,
		19.150164, 22.946579, 31.820320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.381821, 22.927080, 32.189777>,  <18.822363, 23.548372, 31.963118>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.381821, 22.927080, 32.189777> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.777102, 22.888433, 32.237316>,  <19.014271, 22.865246, 32.265839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.777102, 22.888433, 32.237316>,  <18.381821, 22.927080, 32.189777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.777102, 22.888433, 32.237316> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134643, -0.178155, 0.974747,
		-0.073004, -0.979248, -0.189062,
		0.988201, -0.096616, 0.118843,
		19.073563, 22.859449, 32.272968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.351612, 22.728878, 32.881500>,  <18.381821, 22.927080, 32.189777>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.351612, 22.728878, 32.881500> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.251413, 23.103470, 32.979691>,  <18.191294, 23.328224, 33.038605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.251413, 23.103470, 32.979691>,  <18.351612, 22.728878, 32.881500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.251413, 23.103470, 32.979691> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707474, -0.350161, 0.613895,
		0.660857, -0.019891, 0.750248,
		-0.250496, 0.936478, 0.245479,
		18.176264, 23.384413, 33.053333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.766773, 22.327772, 32.846725>,  <18.351612, 22.728878, 32.881500>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.766773, 22.327772, 32.846725> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.436964, 22.238663, 33.054775>,  <17.239079, 22.185198, 33.179607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.436964, 22.238663, 33.054775>,  <17.766773, 22.327772, 32.846725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.436964, 22.238663, 33.054775> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491818, -0.172363, -0.853467,
		0.279781, -0.959512, 0.032553,
		-0.824523, -0.222774, 0.520129,
		17.189608, 22.171831, 33.210815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.457951, 21.772583, 32.605991>,  <17.766773, 22.327772, 32.846725>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.457951, 21.772583, 32.605991> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.139599, 21.927101, 32.792477>,  <16.948587, 22.019812, 32.904366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.139599, 21.927101, 32.792477>,  <17.457951, 21.772583, 32.605991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.139599, 21.927101, 32.792477> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567986, -0.209686, -0.795880,
		-0.209686, -0.898225, 0.386294,
		0.795880, -0.386294, -0.466211,
		16.900835, 22.042990, 32.932339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.853380, 21.254919, 32.489925>,  <17.457951, 21.772583, 32.605991>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.853380, 21.254919, 32.489925> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.688873, 21.604906, 32.592136>,  <16.590170, 21.814898, 32.653461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.688873, 21.604906, 32.592136>,  <16.853380, 21.254919, 32.489925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.688873, 21.604906, 32.592136> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744746, -0.160914, -0.647657,
		-0.525561, -0.456661, 0.717807,
		-0.411265, 0.874967, 0.255526,
		16.565495, 21.867395, 32.668793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.098423, 21.088615, 32.678608>,  <16.853380, 21.254919, 32.489925>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.098423, 21.088615, 32.678608> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.080114, 21.483345, 32.616528>,  <16.069130, 21.720182, 32.579281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.080114, 21.483345, 32.616528>,  <16.098423, 21.088615, 32.678608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.080114, 21.483345, 32.616528> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866233, -0.116588, -0.485847,
		-0.497539, 0.112203, 0.860154,
		-0.045770, 0.986822, -0.155201,
		16.066383, 21.779392, 32.569965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.359179, 21.297489, 32.857479>,  <16.098423, 21.088615, 32.678608>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.359179, 21.297489, 32.857479> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.518464, 21.591944, 32.638561>,  <15.614036, 21.768616, 32.507210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.518464, 21.591944, 32.638561>,  <15.359179, 21.297489, 32.857479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.518464, 21.591944, 32.638561> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836440, 0.046476, -0.546085,
		-0.376556, 0.675236, 0.634241,
		0.398213, 0.736136, -0.547294,
		15.637928, 21.812784, 32.474373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.750871, 21.638474, 32.557278>,  <15.359179, 21.297489, 32.857479>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.750871, 21.638474, 32.557278> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.061585, 21.760813, 32.337074>,  <15.248014, 21.834217, 32.204952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.061585, 21.760813, 32.337074>,  <14.750871, 21.638474, 32.557278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.061585, 21.760813, 32.337074> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608716, 0.140540, -0.780841,
		-0.161451, 0.941650, 0.295345,
		0.776787, 0.305849, -0.550508,
		15.294621, 21.852568, 32.171921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.483601, 22.190828, 32.150574>,  <14.750871, 21.638474, 32.557278>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.483601, 22.190828, 32.150574> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.814431, 22.072067, 31.959663>,  <15.012930, 22.000811, 31.845116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.814431, 22.072067, 31.959663>,  <14.483601, 22.190828, 32.150574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.814431, 22.072067, 31.959663> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501361, -0.005772, -0.865219,
		0.254129, 0.954891, -0.153629,
		0.827076, -0.296901, -0.477279,
		15.062554, 21.982998, 31.816481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.276415, 22.474958, 31.532722>,  <14.483601, 22.190828, 32.150574>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.276415, 22.474958, 31.532722> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.595671, 22.250341, 31.445414>,  <14.787225, 22.115572, 31.393028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.595671, 22.250341, 31.445414>,  <14.276415, 22.474958, 31.532722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.595671, 22.250341, 31.445414> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355479, -0.146432, -0.923143,
		0.486422, 0.814388, -0.316490,
		0.798141, -0.561543, -0.218270,
		14.835113, 22.081879, 31.379932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.431363, 22.706388, 30.911303>,  <14.276415, 22.474958, 31.532722>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.431363, 22.706388, 30.911303> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.593680, 22.341782, 30.938036>,  <14.691071, 22.123018, 30.954077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.593680, 22.341782, 30.938036>,  <14.431363, 22.706388, 30.911303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.593680, 22.341782, 30.938036> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291407, -0.198345, -0.935810,
		0.866264, 0.360270, -0.346110,
		0.405794, -0.911518, 0.066834,
		14.715419, 22.068327, 30.958086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.859033, 22.537571, 30.280554>,  <14.431363, 22.706388, 30.911303>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.859033, 22.537571, 30.280554> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.733352, 22.188610, 30.430321>,  <14.657944, 21.979233, 30.520182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.733352, 22.188610, 30.430321>,  <14.859033, 22.537571, 30.280554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.733352, 22.188610, 30.430321> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320872, -0.273594, -0.906746,
		0.893487, -0.405041, -0.193966,
		-0.314201, -0.872404, 0.374419,
		14.639091, 21.926889, 30.542646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.869846, 22.170824, 29.689503>,  <14.859033, 22.537571, 30.280554>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.869846, 22.170824, 29.689503> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.635138, 21.944780, 29.921484>,  <14.494312, 21.809155, 30.060673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.635138, 21.944780, 29.921484>,  <14.869846, 22.170824, 29.689503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.635138, 21.944780, 29.921484> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529626, -0.273939, -0.802779,
		0.612531, -0.778208, -0.138558,
		-0.586772, -0.565111, 0.579955,
		14.459105, 21.775248, 30.095470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.919603, 21.528028, 29.433538>,  <14.869846, 22.170824, 29.689503>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.919603, 21.528028, 29.433538> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.578126, 21.531897, 29.641811>,  <14.373240, 21.534218, 29.766775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.578126, 21.531897, 29.641811>,  <14.919603, 21.528028, 29.433538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.578126, 21.531897, 29.641811> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487013, -0.368961, -0.791635,
		0.184458, -0.929395, 0.319689,
		-0.853694, 0.009670, 0.520685,
		14.322018, 21.534798, 29.798018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.682693, 20.889271, 29.334608>,  <14.919603, 21.528028, 29.433538>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.682693, 20.889271, 29.334608> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.367379, 21.115732, 29.431002>,  <14.178190, 21.251610, 29.488838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.367379, 21.115732, 29.431002>,  <14.682693, 20.889271, 29.334608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.367379, 21.115732, 29.431002> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427723, -0.222645, -0.876061,
		-0.442333, -0.793660, 0.417666,
		-0.788286, 0.566156, 0.240983,
		14.130894, 21.285578, 29.503296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.091849, 20.443529, 29.158976>,  <14.682693, 20.889271, 29.334608>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.091849, 20.443529, 29.158976> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.965922, 20.823002, 29.170914>,  <13.890367, 21.050686, 29.178076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.965922, 20.823002, 29.170914>,  <14.091849, 20.443529, 29.158976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.965922, 20.823002, 29.170914> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415171, -0.109362, -0.903146,
		-0.853536, -0.296715, 0.428294,
		-0.314817, 0.948683, 0.029843,
		13.871477, 21.107607, 29.179867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.934899, 19.835178, 29.495277>,  <14.091849, 20.443529, 29.158976>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.934899, 19.835178, 29.495277> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.983019, 19.438086, 29.496700>,  <14.011890, 19.199829, 29.497555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.983019, 19.438086, 29.496700>,  <13.934899, 19.835178, 29.495277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.983019, 19.438086, 29.496700> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476544, 0.060890, 0.877040,
		-0.870882, -0.103810, 0.480405,
		0.120298, -0.992731, 0.003558,
		14.019108, 19.140266, 29.497768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.622871, 19.589937, 30.191784>,  <13.934899, 19.835178, 29.495277>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.622871, 19.589937, 30.191784> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.869482, 19.297094, 30.075912>,  <14.017448, 19.121389, 30.006390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.869482, 19.297094, 30.075912>,  <13.622871, 19.589937, 30.191784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.869482, 19.297094, 30.075912> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448841, 0.024530, 0.893275,
		-0.646867, -0.680747, 0.343723,
		0.616526, -0.732107, -0.289679,
		14.054440, 19.077461, 29.989008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.759885, 19.243198, 30.765425>,  <13.622871, 19.589937, 30.191784>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.759885, 19.243198, 30.765425> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.056646, 19.102314, 30.537205>,  <14.234703, 19.017784, 30.400272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.056646, 19.102314, 30.537205>,  <13.759885, 19.243198, 30.765425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.056646, 19.102314, 30.537205> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600225, -0.030393, 0.799254,
		-0.298846, -0.935427, 0.188857,
		0.741904, -0.352210, -0.570549,
		14.279218, 18.996651, 30.366039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.949642, 18.596785, 30.999863>,  <13.759885, 19.243198, 30.765425>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.949642, 18.596785, 30.999863> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.266142, 18.731287, 30.795567>,  <14.456042, 18.811989, 30.672989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.266142, 18.731287, 30.795567>,  <13.949642, 18.596785, 30.999863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.266142, 18.731287, 30.795567> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583545, -0.165590, 0.795019,
		0.182755, -0.927099, -0.327243,
		0.791250, 0.336255, -0.510741,
		14.503517, 18.832163, 30.642344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.410403, 18.115370, 31.182114>,  <13.949642, 18.596785, 30.999863>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.410403, 18.115370, 31.182114> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.640875, 18.407457, 31.035255>,  <14.779158, 18.582710, 30.947142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.640875, 18.407457, 31.035255>,  <14.410403, 18.115370, 31.182114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.640875, 18.407457, 31.035255> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640758, -0.124707, 0.757547,
		0.507392, -0.671733, -0.539748,
		0.576180, 0.730221, -0.367143,
		14.813729, 18.626524, 30.925112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.125149, 17.868092, 31.174347>,  <14.410403, 18.115370, 31.182114>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.125149, 17.868092, 31.174347> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.176343, 18.264620, 31.162333>,  <15.207060, 18.502537, 31.155125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.176343, 18.264620, 31.162333>,  <15.125149, 17.868092, 31.174347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.176343, 18.264620, 31.162333> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557646, -0.046887, 0.828754,
		0.820153, -0.122817, -0.558807,
		0.127986, 0.991321, -0.030034,
		15.214739, 18.562016, 31.153322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.853330, 17.945562, 31.278587>,  <15.125149, 17.868092, 31.174347>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.853330, 17.945562, 31.278587> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.643896, 18.271011, 31.379686>,  <15.518236, 18.466280, 31.440346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.643896, 18.271011, 31.379686>,  <15.853330, 17.945562, 31.278587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.643896, 18.271011, 31.379686> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532431, 0.080884, 0.842600,
		0.665114, 0.575742, -0.475546,
		-0.523584, 0.813621, 0.252746,
		15.486821, 18.515099, 31.455509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.650789, 18.271191, 31.040592>,  <15.853330, 17.945562, 31.278587>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.650789, 18.271191, 31.040592> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.923008, 17.982220, 30.991676>,  <17.086340, 17.808838, 30.962326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.923008, 17.982220, 30.991676>,  <16.650789, 18.271191, 31.040592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.923008, 17.982220, 30.991676> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599761, -0.453379, -0.659344,
		0.420885, 0.522059, -0.741829,
		0.680546, -0.722428, -0.122290,
		17.127172, 17.765491, 30.954988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.025997, 18.258766, 30.261192>,  <16.650789, 18.271191, 31.040592>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.025997, 18.258766, 30.261192> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.994402, 17.900728, 30.436722>,  <16.975445, 17.685905, 30.542040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.994402, 17.900728, 30.436722>,  <17.025997, 18.258766, 30.261192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.994402, 17.900728, 30.436722> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464478, -0.356450, -0.810681,
		0.882055, -0.267856, -0.387598,
		-0.078986, -0.895096, 0.438822,
		16.970705, 17.632200, 30.568369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.135691, 17.793144, 29.776432>,  <17.025997, 18.258766, 30.261192>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.135691, 17.793144, 29.776432> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.934500, 17.592466, 30.057945>,  <16.813786, 17.472059, 30.226854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.934500, 17.592466, 30.057945>,  <17.135691, 17.793144, 29.776432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.934500, 17.592466, 30.057945> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517549, -0.477325, -0.710143,
		0.692211, -0.721430, -0.019569,
		-0.502978, -0.501697, 0.703785,
		16.783606, 17.441957, 30.269081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.071095, 17.115248, 29.424063>,  <17.135691, 17.793144, 29.776432>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.071095, 17.115248, 29.424063> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.810844, 17.117962, 29.727810>,  <16.654694, 17.119591, 29.910059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.810844, 17.117962, 29.727810>,  <17.071095, 17.115248, 29.424063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.810844, 17.117962, 29.727810> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573310, -0.660141, -0.485314,
		0.497998, -0.751111, 0.433394,
		-0.650626, 0.006784, 0.759368,
		16.615656, 17.119997, 29.955620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.881300, 16.410061, 29.488943>,  <17.071095, 17.115248, 29.424063>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.881300, 16.410061, 29.488943> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.592707, 16.624762, 29.663921>,  <16.419550, 16.753582, 29.768908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.592707, 16.624762, 29.663921>,  <16.881300, 16.410061, 29.488943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.592707, 16.624762, 29.663921> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692071, -0.579378, -0.430533,
		0.022357, -0.613366, 0.789483,
		-0.721483, 0.536752, 0.437446,
		16.376263, 16.785788, 29.795155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.439325, 15.920667, 29.794384>,  <16.881300, 16.410061, 29.488943>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.439325, 15.920667, 29.794384> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.228931, 16.259153, 29.760309>,  <16.102695, 16.462246, 29.739864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.228931, 16.259153, 29.760309>,  <16.439325, 15.920667, 29.794384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.228931, 16.259153, 29.760309> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726928, -0.499298, -0.471462,
		-0.441491, -0.186060, 0.877763,
		-0.525986, 0.846217, -0.085184,
		16.071136, 16.513018, 29.734755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.805718, 15.665597, 29.904753>,  <16.439325, 15.920667, 29.794384>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.805718, 15.665597, 29.904753> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.791148, 16.009239, 29.700554>,  <15.782406, 16.215425, 29.578033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.791148, 16.009239, 29.700554>,  <15.805718, 15.665597, 29.904753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.791148, 16.009239, 29.700554> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732197, -0.370605, -0.571436,
		-0.680118, 0.352971, 0.642535,
		-0.036427, 0.859107, -0.510499,
		15.780220, 16.266972, 29.547403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<22.140642, 26.497549, 28.952438> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.141068, 26.372158, 29.332275>,  <22.141323, 26.296923, 29.560179>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.141068, 26.372158, 29.332275>,  <22.140642, 26.497549, 28.952438>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<22.141068, 26.372158, 29.332275> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276981, 0.912351, 0.301492,
		-0.960875, -0.263340, -0.085860,
		0.001061, -0.313478, 0.949595,
		22.141386, 26.278114, 29.617153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.277035, 25.796261, 28.812527>,  <22.140642, 26.497549, 28.952438>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.277035, 25.796261, 28.812527> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.333330, 25.537647, 29.112444>,  <22.367107, 25.382479, 29.292395>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.333330, 25.537647, 29.112444>,  <22.277035, 25.796261, 28.812527>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<22.333330, 25.537647, 29.112444> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454573, -0.714981, -0.531192,
		0.879520, -0.266076, -0.394522,
		0.140738, -0.646533, 0.749792,
		22.375551, 25.343687, 29.337381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.466345, 25.218073, 28.563923>,  <22.277035, 25.796261, 28.812527>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.466345, 25.218073, 28.563923> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.324068, 25.088959, 28.914761>,  <22.238701, 25.011490, 29.125263>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.324068, 25.088959, 28.914761>,  <22.466345, 25.218073, 28.563923>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<22.324068, 25.088959, 28.914761> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451522, -0.762330, -0.463660,
		0.818297, -0.560947, 0.125411,
		-0.355693, -0.322785, 0.877093,
		22.217360, 24.992123, 29.177889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.323704, 24.670259, 28.283600>,  <22.466345, 25.218073, 28.563923>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.323704, 24.670259, 28.283600> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.147135, 24.615971, 28.638390>,  <22.041193, 24.583397, 28.851263>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.147135, 24.615971, 28.638390>,  <22.323704, 24.670259, 28.283600>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<22.147135, 24.615971, 28.638390> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380269, -0.867043, -0.321919,
		0.812737, -0.479392, 0.331123,
		-0.441423, -0.135720, 0.886976,
		22.014708, 24.575254, 28.904482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.830011, 24.046318, 28.169699>,  <22.323704, 24.670259, 28.283600>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.830011, 24.046318, 28.169699> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.921686, 23.910990, 27.804621>,  <21.976690, 23.829794, 27.585573>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.921686, 23.910990, 27.804621>,  <21.830011, 24.046318, 28.169699>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.921686, 23.910990, 27.804621> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709861, -0.583472, 0.394535,
		-0.666011, -0.738309, 0.106436,
		0.229186, -0.338319, -0.912696,
		21.990442, 23.809494, 27.530811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.940357, 23.285694, 28.093870>,  <21.830011, 24.046318, 28.169699>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.940357, 23.285694, 28.093870> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.151409, 23.469625, 27.808167>,  <22.278040, 23.579985, 27.636745>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.151409, 23.469625, 27.808167>,  <21.940357, 23.285694, 28.093870>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<22.151409, 23.469625, 27.808167> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839662, -0.409739, 0.356485,
		-0.128737, -0.787827, -0.602291,
		0.527631, 0.459828, -0.714257,
		22.309698, 23.607574, 27.593889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.511486, 22.848574, 28.493053>,  <21.940357, 23.285694, 28.093870>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.511486, 22.848574, 28.493053> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.149494, 22.997475, 28.575460>,  <21.932299, 23.086815, 28.624905>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.149494, 22.997475, 28.575460>,  <22.511486, 22.848574, 28.493053>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<22.149494, 22.997475, 28.575460> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281242, -0.886751, 0.366846,
		0.319247, 0.274046, 0.907182,
		-0.904978, 0.372252, 0.206019,
		21.878000, 23.109150, 28.637266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.152412, 22.321079, 28.068745>,  <22.511486, 22.848574, 28.493053>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.152412, 22.321079, 28.068745> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.957664, 21.987869, 28.173836>,  <21.840815, 21.787943, 28.236891>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.957664, 21.987869, 28.173836>,  <22.152412, 22.321079, 28.068745>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.957664, 21.987869, 28.173836> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498426, 0.017948, -0.866746,
		0.717306, -0.552944, -0.423940,
		-0.486871, -0.833025, 0.262727,
		21.811604, 21.737961, 28.252653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.350439, 21.791796, 27.571571>,  <22.152412, 22.321079, 28.068745>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.350439, 21.791796, 27.571571> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.007288, 21.665287, 27.733568>,  <21.801397, 21.589382, 27.830767>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.007288, 21.665287, 27.733568>,  <22.350439, 21.791796, 27.571571>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<22.007288, 21.665287, 27.733568> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358383, -0.196558, -0.912648,
		0.368249, -0.928083, 0.055276,
		-0.857878, -0.316271, 0.404992,
		21.749924, 21.570406, 27.855066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.230745, 21.133705, 27.188400>,  <22.350439, 21.791796, 27.571571>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.230745, 21.133705, 27.188400> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.884762, 21.220274, 27.369511>,  <21.677172, 21.272215, 27.478178>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.884762, 21.220274, 27.369511>,  <22.230745, 21.133705, 27.188400>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.884762, 21.220274, 27.369511> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501641, -0.347269, -0.792313,
		-0.014238, -0.912450, 0.408940,
		-0.864959, 0.216422, 0.452778,
		21.625275, 21.285200, 27.505344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.739462, 20.502342, 27.367035>,  <22.230745, 21.133705, 27.188400>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.739462, 20.502342, 27.367035> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.517567, 20.829374, 27.305288>,  <21.384430, 21.025593, 27.268240>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.517567, 20.829374, 27.305288>,  <21.739462, 20.502342, 27.367035>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.517567, 20.829374, 27.305288> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448572, -0.450145, -0.772110,
		-0.700749, -0.359074, 0.616456,
		-0.554739, 0.817580, -0.154368,
		21.351145, 21.074648, 27.258978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.174046, 20.264690, 26.913418>,  <21.739462, 20.502342, 27.367035>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.174046, 20.264690, 26.913418> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.144213, 20.663515, 26.906445>,  <21.126312, 20.902809, 26.902262>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.144213, 20.663515, 26.906445>,  <21.174046, 20.264690, 26.913418>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.144213, 20.663515, 26.906445> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335174, -0.041528, -0.941241,
		-0.939200, -0.064357, 0.337286,
		-0.074582, 0.997063, -0.017432,
		21.121838, 20.962633, 26.901215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.564032, 19.960552, 27.394167>,  <21.174046, 20.264690, 26.913418>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.564032, 19.960552, 27.394167> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.582592, 19.561169, 27.406338>,  <20.593729, 19.321539, 27.413639>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.582592, 19.561169, 27.406338>,  <20.564032, 19.960552, 27.394167>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.582592, 19.561169, 27.406338> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076625, 0.033927, 0.996483,
		-0.995980, -0.043906, 0.078082,
		0.046401, -0.998459, 0.030426,
		20.596512, 19.261631, 27.415466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.204994, 19.728420, 28.043133>,  <20.564032, 19.960552, 27.394167>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.204994, 19.728420, 28.043133> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.424215, 19.406010, 27.953722>,  <20.555748, 19.212564, 27.900076>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.424215, 19.406010, 27.953722>,  <20.204994, 19.728420, 28.043133>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.424215, 19.406010, 27.953722> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098867, -0.202939, 0.974187,
		-0.830581, -0.556004, -0.031532,
		0.548051, -0.806024, -0.223527,
		20.588631, 19.164202, 27.886663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.979212, 19.286678, 28.363558>,  <20.204994, 19.728420, 28.043133>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.979212, 19.286678, 28.363558> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.347294, 19.149229, 28.288570>,  <20.568144, 19.066759, 28.243578>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.347294, 19.149229, 28.288570>,  <19.979212, 19.286678, 28.363558>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.347294, 19.149229, 28.288570> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165419, -0.092679, 0.981859,
		-0.354764, -0.934523, -0.028442,
		0.920206, -0.343623, -0.187467,
		20.623356, 19.046143, 28.232330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.023861, 18.758387, 28.799284>,  <19.979212, 19.286678, 28.363558>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.023861, 18.758387, 28.799284> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.406239, 18.835215, 28.710485>,  <20.635664, 18.881311, 28.657207>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.406239, 18.835215, 28.710485>,  <20.023861, 18.758387, 28.799284>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.406239, 18.835215, 28.710485> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245641, -0.109326, 0.963176,
		0.160729, -0.975272, -0.151690,
		0.955943, 0.192072, -0.221995,
		20.693022, 18.892836, 28.643887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.470367, 18.232004, 29.193094>,  <20.023861, 18.758387, 28.799284>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.470367, 18.232004, 29.193094> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.715609, 18.538105, 29.114614>,  <20.862753, 18.721766, 29.067526>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.715609, 18.538105, 29.114614>,  <20.470367, 18.232004, 29.193094>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.715609, 18.538105, 29.114614> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425087, -0.110231, 0.898415,
		0.665886, -0.634224, -0.392881,
		0.613104, 0.765251, -0.196199,
		20.899540, 18.767681, 29.055756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.177078, 18.050112, 29.425558>,  <20.470367, 18.232004, 29.193094>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.177078, 18.050112, 29.425558> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.162273, 18.447121, 29.379030>,  <21.153391, 18.685326, 29.351114>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.162273, 18.447121, 29.379030>,  <21.177078, 18.050112, 29.425558>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.162273, 18.447121, 29.379030> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418373, 0.121097, 0.900167,
		0.907521, -0.015346, -0.419726,
		-0.037014, 0.992522, -0.116318,
		21.151169, 18.744877, 29.344135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.880518, 18.318336, 29.537155>,  <21.177078, 18.050112, 29.425558>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.880518, 18.318336, 29.537155> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.624662, 18.619226, 29.600428>,  <21.471149, 18.799761, 29.638391>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.624662, 18.619226, 29.600428>,  <21.880518, 18.318336, 29.537155>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.624662, 18.619226, 29.600428> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363292, 0.114489, 0.924614,
		0.677407, 0.648884, -0.346509,
		-0.639639, 0.752224, 0.158179,
		21.432770, 18.844894, 29.647881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.214508, 18.720087, 29.979622>,  <21.880518, 18.318336, 29.537155>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.214508, 18.720087, 29.979622> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.837477, 18.850647, 30.007940>,  <21.611258, 18.928984, 30.024931>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.837477, 18.850647, 30.007940>,  <22.214508, 18.720087, 29.979622>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.837477, 18.850647, 30.007940> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146297, 0.212932, 0.966052,
		0.300244, 0.920936, -0.248456,
		-0.942577, 0.326400, 0.070798,
		21.554703, 18.948566, 30.029181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.275780, 19.318949, 30.306534>,  <22.214508, 18.720087, 29.979622>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.275780, 19.318949, 30.306534> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.889393, 19.237551, 30.370407>,  <21.657560, 19.188711, 30.408731>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.889393, 19.237551, 30.370407>,  <22.275780, 19.318949, 30.306534>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.889393, 19.237551, 30.370407> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075072, 0.370215, 0.925908,
		-0.247535, 0.906383, -0.342339,
		-0.965966, -0.203495, 0.159685,
		21.599604, 19.176502, 30.418312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.041544, 19.813042, 30.822947>,  <22.275780, 19.318949, 30.306534>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.041544, 19.813042, 30.822947> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.782978, 19.508043, 30.811964>,  <21.627838, 19.325045, 30.805374>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.782978, 19.508043, 30.811964>,  <22.041544, 19.813042, 30.822947>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.782978, 19.508043, 30.811964> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136886, 0.080492, 0.987311,
		-0.750608, 0.641969, -0.156406,
		-0.646412, -0.762494, -0.027458,
		21.589054, 19.279295, 30.803726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.412622, 19.973568, 31.263903>,  <22.041544, 19.813042, 30.822947>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.412622, 19.973568, 31.263903> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.394117, 19.575279, 31.231909>,  <21.383015, 19.336306, 31.212713>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.394117, 19.575279, 31.231909>,  <21.412622, 19.973568, 31.263903>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.394117, 19.575279, 31.231909> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200183, -0.069203, 0.977312,
		-0.978666, 0.061223, -0.196125,
		-0.046261, -0.995722, -0.079983,
		21.380239, 19.276562, 31.207914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.724718, 19.672491, 31.510099>,  <21.412622, 19.973568, 31.263903>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.724718, 19.672491, 31.510099> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.971403, 19.358395, 31.532234>,  <21.119413, 19.169937, 31.545515>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.971403, 19.358395, 31.532234>,  <20.724718, 19.672491, 31.510099>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.971403, 19.358395, 31.532234> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186612, -0.077547, 0.979368,
		-0.764750, -0.614314, -0.194360,
		0.616712, -0.785241, 0.055335,
		21.156416, 19.122822, 31.548834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.373335, 19.186264, 31.846970>,  <20.724718, 19.672491, 31.510099>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.373335, 19.186264, 31.846970> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.756508, 19.080153, 31.890766>,  <20.986412, 19.016485, 31.917044>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.756508, 19.080153, 31.890766>,  <20.373335, 19.186264, 31.846970>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.756508, 19.080153, 31.890766> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149747, -0.136573, 0.979247,
		-0.244822, -0.954450, -0.170553,
		0.957934, -0.265281, 0.109490,
		21.043888, 19.000568, 31.923613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.385424, 18.671928, 32.329037>,  <20.373335, 19.186264, 31.846970>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.385424, 18.671928, 32.329037> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.769306, 18.783566, 32.342144>,  <20.999636, 18.850548, 32.350010>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.769306, 18.783566, 32.342144>,  <20.385424, 18.671928, 32.329037>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.769306, 18.783566, 32.342144> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047146, 0.044951, 0.997876,
		0.277026, -0.959212, 0.056298,
		0.959705, 0.279092, 0.032771,
		21.057219, 18.867292, 32.351974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.647984, 18.718529, 32.035763>,  <20.385424, 18.671928, 32.329037>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.647984, 18.718529, 32.035763> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.400227, 18.729486, 32.349606>,  <19.251574, 18.736061, 32.537910>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.400227, 18.729486, 32.349606>,  <19.647984, 18.718529, 32.035763>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.400227, 18.729486, 32.349606> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598006, -0.663985, -0.448902,
		0.508668, -0.747244, 0.427648,
		-0.619391, 0.027394, 0.784605,
		19.214409, 18.737705, 32.584988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.575010, 18.044273, 32.349152>,  <19.647984, 18.718529, 32.035763>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.575010, 18.044273, 32.349152> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.242077, 18.249201, 32.433773>,  <19.042316, 18.372156, 32.484547>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.242077, 18.249201, 32.433773>,  <19.575010, 18.044273, 32.349152>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.242077, 18.249201, 32.433773> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553985, -0.756547, -0.347473,
		-0.017969, -0.406409, 0.913515,
		-0.832333, 0.512317, 0.211550,
		18.992376, 18.402897, 32.497238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.182222, 17.522329, 32.457191>,  <19.575010, 18.044273, 32.349152>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.182222, 17.522329, 32.457191> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.926460, 17.828478, 32.427876>,  <18.773003, 18.012167, 32.410286>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.926460, 17.828478, 32.427876>,  <19.182222, 17.522329, 32.457191>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.926460, 17.828478, 32.427876> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628854, -0.575427, -0.522903,
		-0.442385, -0.288260, 0.849236,
		-0.639405, 0.765369, -0.073287,
		18.734638, 18.058088, 32.405891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.538248, 17.248404, 32.674568>,  <19.182222, 17.522329, 32.457191>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.538248, 17.248404, 32.674568> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.445568, 17.581217, 32.472958>,  <18.389959, 17.780905, 32.351994>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.445568, 17.581217, 32.472958>,  <18.538248, 17.248404, 32.674568>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.445568, 17.581217, 32.472958> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807186, -0.453608, -0.377744,
		-0.542924, 0.319317, 0.776705,
		-0.231699, 0.832032, -0.504023,
		18.376059, 17.830826, 32.321751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.824228, 17.175253, 32.663021>,  <18.538248, 17.248404, 32.674568>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.824228, 17.175253, 32.663021> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.866558, 17.445641, 32.371304>,  <17.891956, 17.607874, 32.196274>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.866558, 17.445641, 32.371304>,  <17.824228, 17.175253, 32.663021>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.866558, 17.445641, 32.371304> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668524, -0.494563, -0.555414,
		-0.736123, 0.546325, 0.399565,
		0.105826, 0.675971, -0.729290,
		17.898306, 17.648432, 32.152515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.173656, 17.533312, 32.530628>,  <17.824228, 17.175253, 32.663021>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.173656, 17.533312, 32.530628> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.394880, 17.574209, 32.199890>,  <17.527615, 17.598747, 32.001446>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.394880, 17.574209, 32.199890>,  <17.173656, 17.533312, 32.530628>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.394880, 17.574209, 32.199890> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752133, -0.365609, -0.548294,
		-0.358360, 0.925136, -0.125304,
		0.553059, 0.102242, -0.826845,
		17.560799, 17.604881, 31.951838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.837214, 17.938179, 32.102367>,  <17.173656, 17.533312, 32.530628>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.837214, 17.938179, 32.102367> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.073261, 17.696230, 31.888494>,  <17.214890, 17.551060, 31.760170>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.073261, 17.696230, 31.888494>,  <16.837214, 17.938179, 32.102367>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.073261, 17.696230, 31.888494> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786913, -0.283014, -0.548334,
		0.180350, 0.744333, -0.642995,
		0.590120, -0.604873, -0.534683,
		17.250298, 17.514769, 31.728090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.442715, 18.471016, 31.885567>,  <16.837214, 17.938179, 32.102367>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.442715, 18.471016, 31.885567> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.065826, 18.600994, 31.918131>,  <15.839693, 18.678982, 31.937670>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.065826, 18.600994, 31.918131>,  <16.442715, 18.471016, 31.885567>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.065826, 18.600994, 31.918131> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232653, 0.459913, 0.856944,
		0.241017, 0.826372, -0.508940,
		-0.942222, 0.324945, 0.081411,
		15.783159, 18.698477, 31.942554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.572174, 19.177183, 32.184021>,  <16.442715, 18.471016, 31.885567>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.572174, 19.177183, 32.184021> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.184334, 19.100700, 32.245102>,  <15.951630, 19.054811, 32.281750>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.184334, 19.100700, 32.245102>,  <16.572174, 19.177183, 32.184021>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.184334, 19.100700, 32.245102> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004604, 0.609670, 0.792642,
		-0.244653, 0.769249, -0.590255,
		-0.969600, -0.191205, 0.152699,
		15.893454, 19.043339, 32.290913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.125414, 19.777254, 32.205433>,  <16.572174, 19.177183, 32.184021>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.125414, 19.777254, 32.205433> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.945081, 19.506479, 32.438160>,  <15.836881, 19.344015, 32.577797>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.945081, 19.506479, 32.438160>,  <16.125414, 19.777254, 32.205433>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.945081, 19.506479, 32.438160> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086799, 0.615478, 0.783360,
		-0.888379, 0.403665, -0.218720,
		-0.450832, -0.676936, 0.581815,
		15.809831, 19.303398, 32.612705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.827450, 20.105803, 32.744461>,  <16.125414, 19.777254, 32.205433>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.827450, 20.105803, 32.744461> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.779940, 19.739632, 32.898285>,  <15.751433, 19.519930, 32.990582>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.779940, 19.739632, 32.898285>,  <15.827450, 20.105803, 32.744461>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.779940, 19.739632, 32.898285> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038880, 0.391294, 0.919444,
		-0.992160, 0.094256, -0.082068,
		-0.118775, -0.915426, 0.384561,
		15.744308, 19.465004, 33.013653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.297713, 20.228260, 33.239704>,  <15.827450, 20.105803, 32.744461>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.297713, 20.228260, 33.239704> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.487415, 19.895393, 33.354649>,  <15.601236, 19.695673, 33.423615>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.487415, 19.895393, 33.354649>,  <15.297713, 20.228260, 33.239704>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.487415, 19.895393, 33.354649> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119954, 0.262283, 0.957506,
		-0.872177, -0.488573, 0.024567,
		0.474256, -0.832168, 0.287363,
		15.629692, 19.645742, 33.440857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.188797, 20.327908, 33.910313>,  <15.297713, 20.228260, 33.239704>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.188797, 20.327908, 33.910313> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.396215, 19.986746, 33.934540>,  <15.520666, 19.782049, 33.949074>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.396215, 19.986746, 33.934540>,  <15.188797, 20.327908, 33.910313>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.396215, 19.986746, 33.934540> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027689, 0.087543, 0.995776,
		-0.854602, -0.514678, 0.069011,
		0.518546, -0.852902, 0.060564,
		15.551779, 19.730875, 33.952709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.921344, 19.868708, 34.471584>,  <15.188797, 20.327908, 33.910313>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.921344, 19.868708, 34.471584> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.314692, 19.808500, 34.430939>,  <15.550701, 19.772375, 34.406551>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.314692, 19.808500, 34.430939>,  <14.921344, 19.868708, 34.471584>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.314692, 19.808500, 34.430939> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127848, 0.176380, 0.975984,
		-0.128982, -0.972746, 0.192691,
		0.983371, -0.150520, -0.101614,
		15.609704, 19.763344, 34.400455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.043668, 19.391483, 34.909332>,  <14.921344, 19.868708, 34.471584>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.043668, 19.391483, 34.909332> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.398511, 19.568245, 34.856026>,  <15.611417, 19.674303, 34.824043>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.398511, 19.568245, 34.856026>,  <15.043668, 19.391483, 34.909332>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.398511, 19.568245, 34.856026> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110915, 0.076165, 0.990907,
		0.448038, -0.893822, 0.018552,
		0.887108, 0.441906, -0.133263,
		15.664643, 19.700817, 34.816048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.561900, 18.964371, 35.280926>,  <15.043668, 19.391483, 34.909332>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.561900, 18.964371, 35.280926> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.679028, 19.345964, 35.255104>,  <15.749304, 19.574921, 35.239613>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.679028, 19.345964, 35.255104>,  <15.561900, 18.964371, 35.280926>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.679028, 19.345964, 35.255104> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089447, 0.039889, 0.995193,
		0.951975, -0.297185, -0.073651,
		0.292818, 0.953987, -0.064555,
		15.766873, 19.632160, 35.235737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<10.454726, 16.826866, 19.775976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.594779, 17.175180, 19.914042>,  <10.678810, 17.384169, 19.996880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.594779, 17.175180, 19.914042>,  <10.454726, 16.826866, 19.775976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.594779, 17.175180, 19.914042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304486, -0.454281, 0.837207,
		0.885831, -0.188035, -0.424201,
		0.350131, 0.870788, 0.345162,
		10.699819, 17.436417, 20.017590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.142648, 16.687408, 20.117554>,  <10.454726, 16.826866, 19.775976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.142648, 16.687408, 20.117554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.071930, 17.036407, 20.299759>,  <11.029499, 17.245808, 20.409082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.071930, 17.036407, 20.299759>,  <11.142648, 16.687408, 20.117554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.071930, 17.036407, 20.299759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487388, -0.324470, 0.810662,
		0.855100, 0.365333, -0.367879,
		-0.176796, 0.872497, 0.455513,
		11.018891, 17.298157, 20.436413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.770949, 17.001011, 20.372513>,  <11.142648, 16.687408, 20.117554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.770949, 17.001011, 20.372513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.493015, 17.178883, 20.598598>,  <11.326255, 17.285606, 20.734249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.493015, 17.178883, 20.598598>,  <11.770949, 17.001011, 20.372513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.493015, 17.178883, 20.598598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418948, -0.388518, 0.820693,
		0.584541, 0.807040, 0.083657,
		-0.694834, 0.444681, 0.565212,
		11.284565, 17.312286, 20.768162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.094888, 17.458296, 20.961370>,  <11.770949, 17.001011, 20.372513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.094888, 17.458296, 20.961370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.732393, 17.352758, 21.093504>,  <11.514896, 17.289436, 21.172783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.732393, 17.352758, 21.093504>,  <12.094888, 17.458296, 20.961370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.732393, 17.352758, 21.093504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367424, -0.105030, 0.924104,
		-0.209126, 0.958830, 0.192125,
		-0.906237, -0.263845, 0.330333,
		11.460522, 17.273605, 21.192604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.069202, 17.712738, 21.631189>,  <12.094888, 17.458296, 20.961370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.069202, 17.712738, 21.631189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.765841, 17.452360, 21.644423>,  <11.583823, 17.296133, 21.652363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.765841, 17.452360, 21.644423>,  <12.069202, 17.712738, 21.631189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.765841, 17.452360, 21.644423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259673, -0.255208, 0.931364,
		-0.597822, 0.714942, 0.362583,
		-0.758406, -0.650943, 0.033082,
		11.538319, 17.257078, 21.654346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.604254, 17.964537, 22.256464>,  <12.069202, 17.712738, 21.631189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.604254, 17.964537, 22.256464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.509434, 17.585712, 22.169853>,  <11.452541, 17.358418, 22.117887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.509434, 17.585712, 22.169853>,  <11.604254, 17.964537, 22.256464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.509434, 17.585712, 22.169853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035041, -0.231068, 0.972307,
		-0.970865, 0.222899, 0.087961,
		-0.237051, -0.947061, -0.216525,
		11.438318, 17.301594, 22.104897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.088188, 17.883961, 22.657610>,  <11.604254, 17.964537, 22.256464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.088188, 17.883961, 22.657610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.229839, 17.516876, 22.585615>,  <11.314830, 17.296625, 22.542418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.229839, 17.516876, 22.585615>,  <11.088188, 17.883961, 22.657610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.229839, 17.516876, 22.585615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004204, -0.190896, 0.981601,
		-0.935187, -0.348370, -0.063744,
		0.354129, -0.917713, -0.179988,
		11.336078, 17.241562, 22.531618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.897194, 17.576485, 23.284405>,  <11.088188, 17.883961, 22.657610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.897194, 17.576485, 23.284405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.148029, 17.314304, 23.116051>,  <11.298531, 17.156996, 23.015038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.148029, 17.314304, 23.116051>,  <10.897194, 17.576485, 23.284405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.148029, 17.314304, 23.116051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322792, -0.273088, 0.906217,
		-0.708920, -0.704135, 0.040324,
		0.627087, -0.655451, -0.420886,
		11.336156, 17.117668, 22.989784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.788122, 17.004841, 23.649776>,  <10.897194, 17.576485, 23.284405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.788122, 17.004841, 23.649776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.153450, 16.963497, 23.492212>,  <11.372646, 16.938690, 23.397675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.153450, 16.963497, 23.492212>,  <10.788122, 17.004841, 23.649776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.153450, 16.963497, 23.492212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371224, -0.186424, 0.909637,
		-0.167442, -0.977019, -0.131900,
		0.913321, -0.103347, -0.393908,
		11.427445, 16.932489, 23.374039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.033874, 16.392872, 23.976799>,  <10.788122, 17.004841, 23.649776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.033874, 16.392872, 23.976799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.343875, 16.603783, 23.837458>,  <11.529876, 16.730330, 23.753853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.343875, 16.603783, 23.837458>,  <11.033874, 16.392872, 23.976799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.343875, 16.603783, 23.837458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490596, -0.154518, 0.857578,
		0.398354, -0.835526, -0.378432,
		0.775003, 0.527277, -0.348352,
		11.576376, 16.761965, 23.732952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.652823, 16.006596, 24.181480>,  <11.033874, 16.392872, 23.976799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.652823, 16.006596, 24.181480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.752525, 16.386292, 24.104731>,  <11.812346, 16.614109, 24.058680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.752525, 16.386292, 24.104731>,  <11.652823, 16.006596, 24.181480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.752525, 16.386292, 24.104731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523964, 0.034443, 0.851044,
		0.814453, -0.312662, -0.488782,
		0.249254, 0.949240, -0.191876,
		11.827302, 16.671062, 24.047169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.368018, 16.061144, 24.294107>,  <11.652823, 16.006596, 24.181480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.368018, 16.061144, 24.294107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.210896, 16.427525, 24.326931>,  <12.116624, 16.647354, 24.346626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.210896, 16.427525, 24.326931>,  <12.368018, 16.061144, 24.294107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.210896, 16.427525, 24.326931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509896, 0.142665, 0.848323,
		0.765318, 0.375066, -0.523080,
		-0.392803, 0.915954, 0.082061,
		12.093056, 16.702311, 24.351549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.171674, 15.882649, 24.283537>,  <12.368018, 16.061144, 24.294107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.171674, 15.882649, 24.283537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.200423, 15.484328, 24.306196>,  <13.217672, 15.245336, 24.319792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.200423, 15.484328, 24.306196>,  <13.171674, 15.882649, 24.283537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.200423, 15.484328, 24.306196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070305, -0.051598, -0.996190,
		0.994933, 0.075582, 0.066301,
		0.071873, -0.995804, 0.056650,
		13.221985, 15.185587, 24.323191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.491145, 15.790980, 23.747509>,  <13.171674, 15.882649, 24.283537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.491145, 15.790980, 23.747509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.384978, 15.416921, 23.841360>,  <13.321279, 15.192485, 23.897671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.384978, 15.416921, 23.841360>,  <13.491145, 15.790980, 23.747509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.384978, 15.416921, 23.841360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144478, -0.202030, -0.968664,
		0.953247, -0.290998, -0.081486,
		-0.265417, -0.935149, 0.234627,
		13.305353, 15.136375, 23.911749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.964430, 15.418943, 23.329411>,  <13.491145, 15.790980, 23.747509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.964430, 15.418943, 23.329411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.670637, 15.152428, 23.380938>,  <13.494361, 14.992518, 23.411854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.670637, 15.152428, 23.380938>,  <13.964430, 15.418943, 23.329411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.670637, 15.152428, 23.380938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001443, -0.188288, -0.982113,
		0.678626, -0.721530, 0.137333,
		-0.734483, -0.666289, 0.128818,
		13.450293, 14.952541, 23.419582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.128764, 14.817458, 22.952745>,  <13.964430, 15.418943, 23.329411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.128764, 14.817458, 22.952745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.735156, 14.786036, 23.016665>,  <13.498991, 14.767181, 23.055016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.735156, 14.786036, 23.016665>,  <14.128764, 14.817458, 22.952745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.735156, 14.786036, 23.016665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124449, -0.338421, -0.932729,
		0.127351, -0.937710, 0.323237,
		-0.984019, -0.078558, 0.159796,
		13.439950, 14.762468, 23.064604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.966848, 14.128715, 22.628462>,  <14.128764, 14.817458, 22.952745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.966848, 14.128715, 22.628462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.651899, 14.374284, 22.650881>,  <13.462930, 14.521626, 22.664331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.651899, 14.374284, 22.650881>,  <13.966848, 14.128715, 22.628462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.651899, 14.374284, 22.650881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205931, -0.176238, -0.962566,
		-0.581065, -0.769439, 0.265191,
		-0.787373, 0.613924, 0.056045,
		13.415688, 14.558461, 22.667694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.270785, 13.820727, 22.328587>,  <13.966848, 14.128715, 22.628462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.270785, 13.820727, 22.328587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.228634, 14.218117, 22.311127>,  <13.203343, 14.456551, 22.300652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.228634, 14.218117, 22.311127>,  <13.270785, 13.820727, 22.328587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.228634, 14.218117, 22.311127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165326, -0.060786, -0.984364,
		-0.980593, -0.096514, 0.170652,
		-0.105378, 0.993474, -0.043650,
		13.197021, 14.516159, 22.298031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.809379, 13.833875, 21.833639>,  <13.270785, 13.820727, 22.328587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.809379, 13.833875, 21.833639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.896348, 14.223955, 21.850185>,  <12.948530, 14.458003, 21.860113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.896348, 14.223955, 21.850185>,  <12.809379, 13.833875, 21.833639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.896348, 14.223955, 21.850185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165104, 0.078513, -0.983146,
		-0.962012, 0.206930, 0.178080,
		0.217424, 0.975200, 0.041365,
		12.961576, 14.516516, 21.862595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.332980, 14.265389, 21.633389>,  <12.809379, 13.833875, 21.833639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.332980, 14.265389, 21.633389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.623065, 14.526574, 21.546022>,  <12.797116, 14.683285, 21.493603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.623065, 14.526574, 21.546022>,  <12.332980, 14.265389, 21.633389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.623065, 14.526574, 21.546022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296306, 0.009628, -0.955045,
		-0.621505, 0.757329, 0.200459,
		0.725213, 0.652962, -0.218417,
		12.840629, 14.722463, 21.480497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.046213, 14.883234, 21.267218>,  <12.332980, 14.265389, 21.633389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.046213, 14.883234, 21.267218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.431561, 14.841278, 21.168495>,  <12.662770, 14.816104, 21.109261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.431561, 14.841278, 21.168495>,  <12.046213, 14.883234, 21.267218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.431561, 14.841278, 21.168495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241134, 0.063901, -0.968386,
		0.117346, 0.992429, 0.036268,
		0.963371, -0.104891, -0.246807,
		12.720572, 14.809811, 21.094454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.153566, 15.315492, 20.714262>,  <12.046213, 14.883234, 21.267218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.153566, 15.315492, 20.714262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.484770, 15.093584, 20.681686>,  <12.683492, 14.960440, 20.662142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.484770, 15.093584, 20.681686>,  <12.153566, 15.315492, 20.714262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.484770, 15.093584, 20.681686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014079, 0.165763, -0.986065,
		0.560539, 0.815324, 0.145064,
		0.828009, -0.554770, -0.081438,
		12.733172, 14.927153, 20.657255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.528985, 15.707026, 20.300282>,  <12.153566, 15.315492, 20.714262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.528985, 15.707026, 20.300282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.680220, 15.337454, 20.276932>,  <12.770961, 15.115711, 20.262922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.680220, 15.337454, 20.276932>,  <12.528985, 15.707026, 20.300282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.680220, 15.337454, 20.276932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017564, 0.070201, -0.997378,
		0.925604, 0.376070, 0.042770,
		0.378086, -0.923928, -0.058373,
		12.793646, 15.060275, 20.259420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.149676, 15.773877, 19.962587>,  <12.528985, 15.707026, 20.300282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.149676, 15.773877, 19.962587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.046189, 15.389194, 19.926399>,  <12.984097, 15.158384, 19.904686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.046189, 15.389194, 19.926399>,  <13.149676, 15.773877, 19.962587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.046189, 15.389194, 19.926399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085197, 0.116011, -0.989587,
		0.962188, -0.248316, -0.111949,
		-0.258717, -0.961707, -0.090469,
		12.968574, 15.100682, 19.899258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.589141, 15.390555, 19.467964>,  <13.149676, 15.773877, 19.962587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.589141, 15.390555, 19.467964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.243753, 15.188806, 19.470066>,  <13.036521, 15.067756, 19.471327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.243753, 15.188806, 19.470066>,  <13.589141, 15.390555, 19.467964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.243753, 15.188806, 19.470066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037174, 0.053246, -0.997889,
		0.503030, -0.861842, -0.064726,
		-0.863469, -0.504375, 0.005254,
		12.984713, 15.037494, 19.471642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.644517, 14.911386, 18.979033>,  <13.589141, 15.390555, 19.467964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.644517, 14.911386, 18.979033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.247938, 14.954259, 19.008821>,  <13.009991, 14.979983, 19.026695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.247938, 14.954259, 19.008821>,  <13.644517, 14.911386, 18.979033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.247938, 14.954259, 19.008821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076227, -0.012375, -0.997014,
		-0.105944, -0.994162, 0.020440,
		-0.991446, 0.107186, 0.074471,
		12.950504, 14.986414, 19.031162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.368945, 15.044842, 18.917578>,  <13.644517, 14.911386, 18.979033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.368945, 15.044842, 18.917578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.307137, 15.262608, 18.587793>,  <14.270053, 15.393267, 18.389923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.307137, 15.262608, 18.587793>,  <14.368945, 15.044842, 18.917578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.307137, 15.262608, 18.587793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933040, -0.194010, -0.302978,
		-0.324899, -0.816072, -0.477982,
		-0.154518, 0.544414, -0.824462,
		14.260782, 15.425932, 18.340454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.172257, 15.359398, 18.923578>,  <14.368945, 15.044842, 18.917578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.172257, 15.359398, 18.923578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.450373, 15.581172, 18.740635>,  <15.617242, 15.714236, 18.630869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.450373, 15.581172, 18.740635>,  <15.172257, 15.359398, 18.923578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.450373, 15.581172, 18.740635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424771, 0.196334, 0.883755,
		0.579779, -0.808737, -0.098999,
		0.695288, 0.554435, -0.457358,
		15.658959, 15.747502, 18.603428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.784845, 14.991274, 19.230293>,  <15.172257, 15.359398, 18.923578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.784845, 14.991274, 19.230293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.850890, 15.369827, 19.119228>,  <15.890517, 15.596959, 19.052589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.850890, 15.369827, 19.119228>,  <15.784845, 14.991274, 19.230293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.850890, 15.369827, 19.119228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591767, 0.130162, 0.795531,
		0.789019, -0.295664, -0.538547,
		0.165111, 0.946383, -0.277664,
		15.900424, 15.653742, 19.035929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.499998, 14.989383, 19.250132>,  <15.784845, 14.991274, 19.230293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.499998, 14.989383, 19.250132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.357090, 15.362248, 19.273546>,  <16.271345, 15.585968, 19.287594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.357090, 15.362248, 19.273546>,  <16.499998, 14.989383, 19.250132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.357090, 15.362248, 19.273546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635622, 0.196738, 0.746512,
		0.684355, 0.303914, -0.662793,
		-0.357271, 0.932165, 0.058536,
		16.249908, 15.641898, 19.291107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.129282, 15.478161, 19.283022>,  <16.499998, 14.989383, 19.250132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.129282, 15.478161, 19.283022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.820601, 15.665810, 19.454786>,  <16.635391, 15.778399, 19.557846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.820601, 15.665810, 19.454786>,  <17.129282, 15.478161, 19.283022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.820601, 15.665810, 19.454786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605554, 0.335662, 0.721550,
		0.194357, 0.816857, -0.543111,
		-0.771705, 0.469122, 0.429413,
		16.589088, 15.806546, 19.583611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.389496, 16.146406, 19.396482>,  <17.129282, 15.478161, 19.283022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.389496, 16.146406, 19.396482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.053436, 16.131140, 19.612888>,  <16.851801, 16.121981, 19.742731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.053436, 16.131140, 19.612888>,  <17.389496, 16.146406, 19.396482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.053436, 16.131140, 19.612888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425949, 0.571066, 0.701749,
		-0.335737, 0.820017, -0.463523,
		-0.840148, -0.038166, 0.541013,
		16.801392, 16.119690, 19.775192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.266003, 16.823616, 19.651234>,  <17.389496, 16.146406, 19.396482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.266003, 16.823616, 19.651234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.103348, 16.558128, 19.902351>,  <17.005754, 16.398836, 20.053022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.103348, 16.558128, 19.902351>,  <17.266003, 16.823616, 19.651234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.103348, 16.558128, 19.902351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358349, 0.516226, 0.777879,
		-0.840377, 0.541282, 0.027928,
		-0.406635, -0.663720, 0.627793,
		16.981358, 16.359013, 20.090689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.150143, 17.212959, 20.261923>,  <17.266003, 16.823616, 19.651234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.150143, 17.212959, 20.261923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.094160, 16.846897, 20.413132>,  <17.060570, 16.627260, 20.503857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.094160, 16.846897, 20.413132>,  <17.150143, 17.212959, 20.261923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.094160, 16.846897, 20.413132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377182, 0.303720, 0.874922,
		-0.915503, 0.265036, 0.302672,
		-0.139958, -0.915156, 0.378023,
		17.052174, 16.572350, 20.526539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.011175, 17.334270, 20.874016>,  <17.150143, 17.212959, 20.261923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.011175, 17.334270, 20.874016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.144571, 16.957502, 20.889862>,  <17.224609, 16.731441, 20.899370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.144571, 16.957502, 20.889862>,  <17.011175, 17.334270, 20.874016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.144571, 16.957502, 20.889862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533442, 0.223181, 0.815862,
		-0.777319, -0.250948, 0.576889,
		0.333489, -0.941921, 0.039616,
		17.244617, 16.674927, 20.901747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.914948, 17.156460, 21.494333>,  <17.011175, 17.334270, 20.874016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.914948, 17.156460, 21.494333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.155796, 16.849876, 21.404898>,  <17.300306, 16.665926, 21.351236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.155796, 16.849876, 21.404898>,  <16.914948, 17.156460, 21.494333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.155796, 16.849876, 21.404898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543635, 0.188485, 0.817884,
		-0.584731, -0.614016, 0.530164,
		0.602122, -0.766458, -0.223587,
		17.336433, 16.619940, 21.337822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.925461, 16.758471, 22.029673>,  <16.914948, 17.156460, 21.494333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.925461, 16.758471, 22.029673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.272852, 16.677479, 21.848677>,  <17.481287, 16.628883, 21.740080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.272852, 16.677479, 21.848677>,  <16.925461, 16.758471, 22.029673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.272852, 16.677479, 21.848677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475839, 0.084556, 0.875459,
		-0.139002, -0.975630, 0.169782,
		0.868479, -0.202479, -0.452489,
		17.533396, 16.616735, 21.712931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.417589, 16.366863, 22.538181>,  <16.925461, 16.758471, 22.029673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.417589, 16.366863, 22.538181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.675287, 16.448736, 22.243414>,  <17.829906, 16.497860, 22.066553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.675287, 16.448736, 22.243414>,  <17.417589, 16.366863, 22.538181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.675287, 16.448736, 22.243414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721610, 0.156593, 0.674358,
		0.253427, -0.966221, -0.046818,
		0.644247, 0.204685, -0.736919,
		17.868561, 16.510141, 22.022339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.040951, 16.029217, 22.634409>,  <17.417589, 16.366863, 22.538181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.040951, 16.029217, 22.634409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.118944, 16.353460, 22.413542>,  <18.165741, 16.548006, 22.281021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.118944, 16.353460, 22.413542>,  <18.040951, 16.029217, 22.634409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.118944, 16.353460, 22.413542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635644, 0.324307, 0.700558,
		0.746952, -0.487581, -0.452025,
		0.194985, 0.810611, -0.552170,
		18.177439, 16.596643, 22.247890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.657042, 16.198324, 22.960188>,  <18.040951, 16.029217, 22.634409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.657042, 16.198324, 22.960188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.609772, 16.536499, 22.751854>,  <18.581409, 16.739405, 22.626854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.609772, 16.536499, 22.751854>,  <18.657042, 16.198324, 22.960188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.609772, 16.536499, 22.751854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838255, 0.366114, 0.404090,
		0.532318, -0.388840, -0.751958,
		-0.118176, 0.845437, -0.520836,
		18.574318, 16.790131, 22.595604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.310801, 16.417915, 22.751053>,  <18.657042, 16.198324, 22.960188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.310801, 16.417915, 22.751053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.094948, 16.752934, 22.716850>,  <18.965435, 16.953945, 22.696329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.094948, 16.752934, 22.716850>,  <19.310801, 16.417915, 22.751053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.094948, 16.752934, 22.716850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788102, 0.538262, 0.298611,
		0.296125, 0.093752, -0.950537,
		-0.539633, 0.837547, -0.085507,
		18.933058, 17.004198, 22.691198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.754622, 16.918934, 22.390274>,  <19.310801, 16.417915, 22.751053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.754622, 16.918934, 22.390274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.461201, 17.119539, 22.573746>,  <19.285149, 17.239902, 22.683828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.461201, 17.119539, 22.573746>,  <19.754622, 16.918934, 22.390274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.461201, 17.119539, 22.573746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679564, 0.531690, 0.505468,
		0.009625, 0.682489, -0.730833,
		-0.733553, 0.501513, 0.458678,
		19.241135, 17.269993, 22.711349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.056953, 17.528234, 22.506495>,  <19.754622, 16.918934, 22.390274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.056953, 17.528234, 22.506495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.733454, 17.543194, 22.741280>,  <19.539354, 17.552170, 22.882151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.733454, 17.543194, 22.741280>,  <20.056953, 17.528234, 22.506495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.733454, 17.543194, 22.741280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490970, 0.592422, 0.638737,
		-0.323843, 0.804759, -0.497482,
		-0.808748, 0.037399, 0.586964,
		19.490829, 17.554413, 22.917370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.922333, 18.267179, 22.585936>,  <20.056953, 17.528234, 22.506495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.922333, 18.267179, 22.585936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.824934, 18.011225, 22.877485>,  <19.766495, 17.857653, 23.052414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.824934, 18.011225, 22.877485>,  <19.922333, 18.267179, 22.585936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.824934, 18.011225, 22.877485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467017, 0.581285, 0.666336,
		-0.850062, 0.502646, 0.157298,
		-0.243496, -0.639887, 0.728872,
		19.751884, 17.819258, 23.096148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.897585, 18.695126, 23.209833>,  <19.922333, 18.267179, 22.585936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.897585, 18.695126, 23.209833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.895733, 18.330967, 23.375319>,  <19.894621, 18.112473, 23.474609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.895733, 18.330967, 23.375319>,  <19.897585, 18.695126, 23.209833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.895733, 18.330967, 23.375319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474270, 0.362229, 0.802408,
		-0.880367, 0.199928, 0.430095,
		-0.004631, -0.910395, 0.413715,
		19.894344, 18.057848, 23.499434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.782961, 18.829218, 23.862457>,  <19.897585, 18.695126, 23.209833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.782961, 18.829218, 23.862457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.900333, 18.450008, 23.911688>,  <19.970757, 18.222483, 23.941225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.900333, 18.450008, 23.911688>,  <19.782961, 18.829218, 23.862457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.900333, 18.450008, 23.911688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435206, 0.247099, 0.865759,
		-0.851172, -0.200477, 0.485092,
		0.293431, -0.948025, 0.123075,
		19.988363, 18.165602, 23.948610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.595022, 18.661222, 24.529671>,  <19.782961, 18.829218, 23.862457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.595022, 18.661222, 24.529671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.865456, 18.373190, 24.467196>,  <20.027716, 18.200371, 24.429710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.865456, 18.373190, 24.467196>,  <19.595022, 18.661222, 24.529671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.865456, 18.373190, 24.467196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498846, 0.291319, 0.816263,
		-0.542275, -0.629776, 0.556166,
		0.676085, -0.720080, -0.156186,
		20.068281, 18.157166, 24.420340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.504482, 18.127771, 25.114023>,  <19.595022, 18.661222, 24.529671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.504482, 18.127771, 25.114023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.874208, 18.116123, 24.961815>,  <20.096045, 18.109135, 24.870491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.874208, 18.116123, 24.961815>,  <19.504482, 18.127771, 25.114023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.874208, 18.116123, 24.961815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376929, 0.225697, 0.898324,
		0.059721, -0.973762, 0.219592,
		0.924315, -0.029122, -0.380518,
		20.151503, 18.107388, 24.847660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.874445, 17.541027, 25.465313>,  <19.504482, 18.127771, 25.114023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.874445, 17.541027, 25.465313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.123291, 17.817551, 25.318308>,  <20.272598, 17.983465, 25.230104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.123291, 17.817551, 25.318308>,  <19.874445, 17.541027, 25.465313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.123291, 17.817551, 25.318308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335528, 0.188704, 0.922936,
		0.707387, -0.697482, -0.114559,
		0.622113, 0.691311, -0.367511,
		20.309925, 18.024944, 25.208054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.493128, 17.480507, 25.882374>,  <19.874445, 17.541027, 25.465313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.493128, 17.480507, 25.882374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.586246, 17.835459, 25.723196>,  <20.642118, 18.048429, 25.627689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.586246, 17.835459, 25.723196>,  <20.493128, 17.480507, 25.882374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.586246, 17.835459, 25.723196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457759, 0.261041, 0.849891,
		0.858057, -0.380016, -0.345437,
		0.232799, 0.887381, -0.397943,
		20.656086, 18.101673, 25.603813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.150734, 17.578487, 26.035975>,  <20.493128, 17.480507, 25.882374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.150734, 17.578487, 26.035975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.036938, 17.953266, 25.954784>,  <20.968660, 18.178133, 25.906071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.036938, 17.953266, 25.954784>,  <21.150734, 17.578487, 26.035975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.036938, 17.953266, 25.954784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518341, 0.328438, 0.789590,
		0.806467, 0.119420, -0.579094,
		-0.284490, 0.936946, -0.202974,
		20.951591, 18.234350, 25.893892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.708286, 17.978552, 26.238590>,  <21.150734, 17.578487, 26.035975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.708286, 17.978552, 26.238590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.379658, 18.205942, 26.255844>,  <21.182482, 18.342377, 26.266195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.379658, 18.205942, 26.255844>,  <21.708286, 17.978552, 26.238590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.379658, 18.205942, 26.255844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266792, 0.316504, 0.910300,
		0.503831, 0.759383, -0.411695,
		-0.821570, 0.568474, 0.043132,
		21.133186, 18.376484, 26.268784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.938229, 18.591450, 26.508793>,  <21.708286, 17.978552, 26.238590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.938229, 18.591450, 26.508793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.543203, 18.573572, 26.569082>,  <21.306189, 18.562845, 26.605257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.543203, 18.573572, 26.569082>,  <21.938229, 18.591450, 26.508793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.543203, 18.573572, 26.569082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139706, 0.190158, 0.971762,
		-0.072096, 0.980735, -0.181549,
		-0.987565, -0.044696, 0.150725,
		21.246933, 18.560163, 26.614300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.759958, 19.233450, 26.718815>,  <21.938229, 18.591450, 26.508793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.759958, 19.233450, 26.718815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.489096, 18.971846, 26.853710>,  <21.326578, 18.814882, 26.934647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.489096, 18.971846, 26.853710>,  <21.759958, 19.233450, 26.718815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.489096, 18.971846, 26.853710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232541, 0.244616, 0.941322,
		-0.698130, 0.715843, -0.013558,
		-0.677155, -0.654013, 0.337236,
		21.285950, 18.775642, 26.954882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
