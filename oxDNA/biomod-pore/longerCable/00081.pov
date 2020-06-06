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
	<23.991455, 35.416325, 34.813110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.022463, 35.094242, 35.048271>,  <24.041067, 34.900993, 35.189369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.022463, 35.094242, 35.048271>,  <23.991455, 35.416325, 34.813110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.022463, 35.094242, 35.048271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992039, 0.003599, -0.125876,
		0.099241, 0.592982, 0.799076,
		0.077518, -0.805207, 0.587905,
		24.045719, 34.852680, 35.224644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.640675, 35.428131, 34.817719>,  <23.991455, 35.416325, 34.813110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.640675, 35.428131, 34.817719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.559080, 35.099537, 35.030716>,  <24.510122, 34.902378, 35.158512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.559080, 35.099537, 35.030716>,  <24.640675, 35.428131, 34.817719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.559080, 35.099537, 35.030716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978309, -0.191086, 0.079980,
		0.036049, 0.537256, 0.842648,
		-0.203988, -0.821488, 0.532491,
		24.497883, 34.853092, 35.190464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.128510, 35.449795, 35.411591>,  <24.640675, 35.428131, 34.817719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.128510, 35.449795, 35.411591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.030745, 35.069546, 35.335094>,  <24.972086, 34.841396, 35.289196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.030745, 35.069546, 35.335094>,  <25.128510, 35.449795, 35.411591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.030745, 35.069546, 35.335094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912500, -0.292205, 0.286287,
		-0.328033, -0.104536, 0.938865,
		-0.244414, -0.950625, -0.191242,
		24.957420, 34.784359, 35.277721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.255987, 34.968792, 36.024158>,  <25.128510, 35.449795, 35.411591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.255987, 34.968792, 36.024158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.305895, 34.757774, 35.688030>,  <25.335840, 34.631165, 35.486355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.305895, 34.757774, 35.688030>,  <25.255987, 34.968792, 36.024158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.305895, 34.757774, 35.688030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914465, -0.267453, 0.303682,
		-0.384950, -0.806330, 0.449049,
		0.124769, -0.527542, -0.840317,
		25.343325, 34.599510, 35.435936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.311396, 34.148975, 36.077934>,  <25.255987, 34.968792, 36.024158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.311396, 34.148975, 36.077934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.545614, 34.286427, 35.784252>,  <25.686146, 34.368896, 35.608044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.545614, 34.286427, 35.784252>,  <25.311396, 34.148975, 36.077934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.545614, 34.286427, 35.784252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807022, -0.332557, 0.487976,
		-0.076481, -0.878250, -0.472045,
		0.585548, 0.343630, -0.734202,
		25.721279, 34.389515, 35.563992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.755199, 33.586700, 35.616096>,  <25.311396, 34.148975, 36.077934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.755199, 33.586700, 35.616096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.944210, 33.935944, 35.664101>,  <26.057617, 34.145489, 35.692902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.944210, 33.935944, 35.664101>,  <25.755199, 33.586700, 35.616096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.944210, 33.935944, 35.664101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746469, -0.468887, 0.472153,
		0.468511, -0.133522, -0.873310,
		0.472526, 0.873108, 0.120009,
		26.085968, 34.197876, 35.700104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.532875, 33.301579, 35.675747>,  <25.755199, 33.586700, 35.616096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.532875, 33.301579, 35.675747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.535109, 33.692780, 35.759148>,  <26.536449, 33.927502, 35.809189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.535109, 33.692780, 35.759148>,  <26.532875, 33.301579, 35.675747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.535109, 33.692780, 35.759148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854136, -0.113097, 0.507603,
		0.520019, 0.175257, -0.835981,
		0.005586, 0.978005, 0.208505,
		26.536785, 33.986179, 35.821701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.243231, 33.516148, 35.740360>,  <26.532875, 33.301579, 35.675747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.243231, 33.516148, 35.740360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.052145, 33.781979, 35.970188>,  <26.937494, 33.941479, 36.108086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.052145, 33.781979, 35.970188>,  <27.243231, 33.516148, 35.740360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.052145, 33.781979, 35.970188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758513, -0.017947, 0.651411,
		0.443226, 0.747003, -0.495518,
		-0.477713, 0.664578, 0.574566,
		26.908831, 33.981354, 36.142559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.646448, 34.214745, 35.875195>,  <27.243231, 33.516148, 35.740360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.646448, 34.214745, 35.875195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.385122, 34.159515, 36.172951>,  <27.228327, 34.126377, 36.351604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.385122, 34.159515, 36.172951>,  <27.646448, 34.214745, 35.875195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.385122, 34.159515, 36.172951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748068, 0.033568, 0.662772,
		-0.116496, 0.989854, 0.081355,
		-0.653317, -0.138069, 0.744389,
		27.189127, 34.118095, 36.396267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.877596, 34.769402, 36.305733>,  <27.646448, 34.214745, 35.875195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.877596, 34.769402, 36.305733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.678566, 34.506691, 36.532379>,  <27.559147, 34.349064, 36.668369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.678566, 34.506691, 36.532379>,  <27.877596, 34.769402, 36.305733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.678566, 34.506691, 36.532379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686064, 0.101738, 0.720393,
		-0.530786, 0.747189, 0.399970,
		-0.497577, -0.656779, 0.566620,
		27.529293, 34.309658, 36.702366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.684429, 35.077660, 36.969875>,  <27.877596, 34.769402, 36.305733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.684429, 35.077660, 36.969875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.657814, 34.683987, 37.035561>,  <27.641844, 34.447784, 37.074974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.657814, 34.683987, 37.035561>,  <27.684429, 35.077660, 36.969875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.657814, 34.683987, 37.035561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408010, 0.123353, 0.904606,
		-0.910550, 0.127193, 0.393346,
		-0.066539, -0.984178, 0.164215,
		27.637852, 34.388733, 37.084824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.861168, 35.110138, 37.580032>,  <27.684429, 35.077660, 36.969875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.861168, 35.110138, 37.580032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.844244, 34.711956, 37.545921>,  <27.834089, 34.473045, 37.525455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.844244, 34.711956, 37.545921>,  <27.861168, 35.110138, 37.580032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.844244, 34.711956, 37.545921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121384, -0.089845, 0.988531,
		-0.991703, 0.031472, 0.124634,
		-0.042309, -0.995458, -0.085279,
		27.831551, 34.413319, 37.520336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.971054, 34.802296, 38.205982>,  <27.861168, 35.110138, 37.580032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.971054, 34.802296, 38.205982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.286623, 34.557823, 38.231461>,  <28.475965, 34.411140, 38.246746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.286623, 34.557823, 38.231461>,  <27.971054, 34.802296, 38.205982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.286623, 34.557823, 38.231461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280855, 0.450832, 0.847273,
		-0.546554, -0.650544, 0.527325,
		0.788923, -0.611182, 0.063695,
		28.523300, 34.374470, 38.250568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.421423, 34.563877, 37.568035>,  <27.971054, 34.802296, 38.205982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.421423, 34.563877, 37.568035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.444983, 34.213898, 37.760284>,  <28.459118, 34.003910, 37.875633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.444983, 34.213898, 37.760284>,  <28.421423, 34.563877, 37.568035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.444983, 34.213898, 37.760284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813502, -0.321115, -0.484871,
		0.578572, -0.362432, -0.730683,
		0.058901, -0.874945, 0.480627,
		28.462652, 33.951416, 37.904472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.630348, 33.976448, 37.209461>,  <28.421423, 34.563877, 37.568035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.630348, 33.976448, 37.209461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.366180, 33.916145, 37.503704>,  <28.207680, 33.879963, 37.680252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.366180, 33.916145, 37.503704>,  <28.630348, 33.976448, 37.209461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.366180, 33.916145, 37.503704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730854, -0.095792, -0.675779,
		0.172341, -0.983919, -0.046915,
		-0.660418, -0.150753, 0.735610,
		28.168055, 33.870918, 37.724388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.125864, 33.335648, 37.052105>,  <28.630348, 33.976448, 37.209461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.125864, 33.335648, 37.052105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.962366, 33.604176, 37.299416>,  <27.864267, 33.765293, 37.447800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.962366, 33.604176, 37.299416>,  <28.125864, 33.335648, 37.052105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.962366, 33.604176, 37.299416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669695, 0.239617, -0.702917,
		-0.620028, -0.701368, 0.351635,
		-0.408746, 0.671317, 0.618273,
		27.839743, 33.805569, 37.484898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.410004, 33.110241, 37.266056>,  <28.125864, 33.335648, 37.052105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.410004, 33.110241, 37.266056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.456038, 33.507515, 37.273441>,  <27.483658, 33.745880, 37.277874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.456038, 33.507515, 37.273441>,  <27.410004, 33.110241, 37.266056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.456038, 33.507515, 37.273441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723506, 0.096543, -0.683534,
		-0.680657, 0.065309, 0.729686,
		0.115087, 0.993184, 0.018462,
		27.490564, 33.805470, 37.278980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.754086, 33.378098, 37.407314>,  <27.410004, 33.110241, 37.266056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.754086, 33.378098, 37.407314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.963352, 33.655010, 37.208500>,  <27.088911, 33.821156, 37.089211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.963352, 33.655010, 37.208500>,  <26.754086, 33.378098, 37.407314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.963352, 33.655010, 37.208500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808080, 0.217671, -0.547382,
		-0.270750, 0.688017, 0.673295,
		0.523165, 0.692280, -0.497038,
		27.120302, 33.862694, 37.059387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.289431, 33.977100, 37.371586>,  <26.754086, 33.378098, 37.407314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.289431, 33.977100, 37.371586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.559647, 34.008297, 37.078312>,  <26.721775, 34.027016, 36.902348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.559647, 34.008297, 37.078312>,  <26.289431, 33.977100, 37.371586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.559647, 34.008297, 37.078312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693645, 0.404401, -0.596085,
		0.250010, 0.911250, 0.327289,
		0.675538, 0.077995, -0.733188,
		26.762308, 34.031696, 36.858356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.272636, 34.637482, 37.062027>,  <26.289431, 33.977100, 37.371586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.272636, 34.637482, 37.062027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.447803, 34.420639, 36.775154>,  <26.552904, 34.290535, 36.603031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.447803, 34.420639, 36.775154>,  <26.272636, 34.637482, 37.062027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.447803, 34.420639, 36.775154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652134, 0.357573, -0.668478,
		0.618830, 0.760437, -0.196937,
		0.437916, -0.542103, -0.717184,
		26.579178, 34.258007, 36.559998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.551157, 35.036018, 36.535648>,  <26.272636, 34.637482, 37.062027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.551157, 35.036018, 36.535648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.499281, 34.677837, 36.365311>,  <26.468155, 34.462929, 36.263107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.499281, 34.677837, 36.365311>,  <26.551157, 35.036018, 36.535648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.499281, 34.677837, 36.365311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519776, 0.427127, -0.739862,
		0.844402, 0.125390, -0.520829,
		-0.129689, -0.895455, -0.425842,
		26.460375, 34.409203, 36.237556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.647760, 35.073460, 35.792553>,  <26.551157, 35.036018, 36.535648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.647760, 35.073460, 35.792553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.399126, 34.775265, 35.888786>,  <26.249945, 34.596348, 35.946526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.399126, 34.775265, 35.888786>,  <26.647760, 35.073460, 35.792553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.399126, 34.775265, 35.888786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584925, 0.237417, -0.775561,
		0.521052, -0.622802, -0.583629,
		-0.621585, -0.745487, 0.240586,
		26.212650, 34.551620, 35.960960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.605888, 34.608078, 35.212299>,  <26.647760, 35.073460, 35.792553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.605888, 34.608078, 35.212299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.282366, 34.661961, 35.441277>,  <26.088253, 34.694290, 35.578663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.282366, 34.661961, 35.441277>,  <26.605888, 34.608078, 35.212299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.282366, 34.661961, 35.441277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529405, 0.257053, -0.808489,
		-0.256059, -0.956962, -0.136590,
		-0.808804, 0.134710, 0.572441,
		26.039724, 34.702374, 35.613010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.220646, 34.179276, 35.065899>,  <26.605888, 34.608078, 35.212299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.220646, 34.179276, 35.065899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.509754, 33.911499, 35.134544>,  <27.683218, 33.750832, 35.175732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.509754, 33.911499, 35.134544>,  <27.220646, 34.179276, 35.065899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.509754, 33.911499, 35.134544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036156, -0.211349, -0.976742,
		0.690144, 0.712163, -0.128552,
		0.722768, -0.669444, 0.171610,
		27.726585, 33.710667, 35.186028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.789862, 34.271873, 34.613632>,  <27.220646, 34.179276, 35.065899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.789862, 34.271873, 34.613632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.799448, 33.882744, 34.705757>,  <27.805201, 33.649265, 34.761032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.799448, 33.882744, 34.705757>,  <27.789862, 34.271873, 34.613632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.799448, 33.882744, 34.705757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007835, -0.230189, -0.973114,
		0.999682, 0.025127, 0.002105,
		0.023967, -0.972821, 0.230313,
		27.806639, 33.590897, 34.774853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.786064, 34.012039, 33.853848>,  <27.789862, 34.271873, 34.613632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.786064, 34.012039, 33.853848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.099249, 33.923969, 33.621124>,  <28.287159, 33.871128, 33.481491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.099249, 33.923969, 33.621124>,  <27.786064, 34.012039, 33.853848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.099249, 33.923969, 33.621124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062500, 0.902693, -0.425721,
		0.618924, 0.369685, 0.693012,
		0.782960, -0.220176, -0.581804,
		28.334137, 33.857918, 33.446583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.322931, 34.539715, 33.797138>,  <27.786064, 34.012039, 33.853848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.322931, 34.539715, 33.797138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.250114, 34.343822, 33.456074>,  <28.206425, 34.226288, 33.251434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.250114, 34.343822, 33.456074>,  <28.322931, 34.539715, 33.797138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.250114, 34.343822, 33.456074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337436, 0.845602, -0.413636,
		0.923579, 0.212417, -0.319189,
		-0.182043, -0.489731, -0.852657,
		28.195501, 34.196903, 33.200275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.625572, 35.080280, 33.382160>,  <28.322931, 34.539715, 33.797138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.625572, 35.080280, 33.382160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.436972, 34.835335, 33.128326>,  <28.323811, 34.688370, 32.976025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.436972, 34.835335, 33.128326>,  <28.625572, 35.080280, 33.382160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.436972, 34.835335, 33.128326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237418, 0.781174, -0.577408,
		0.849305, -0.121586, -0.513710,
		-0.471501, -0.612360, -0.634588,
		28.295521, 34.651627, 32.937950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.789356, 35.253925, 32.602493>,  <28.625572, 35.080280, 33.382160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.789356, 35.253925, 32.602493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.432522, 35.073662, 32.589321>,  <28.218420, 34.965504, 32.581417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.432522, 35.073662, 32.589321>,  <28.789356, 35.253925, 32.602493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.432522, 35.073662, 32.589321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345285, 0.726870, -0.593665,
		0.291477, -0.518232, -0.804038,
		-0.892087, -0.450662, -0.032928,
		28.164896, 34.938461, 32.579441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.575060, 35.251305, 31.893599>,  <28.789356, 35.253925, 32.602493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.575060, 35.251305, 31.893599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.216740, 35.188519, 32.059925>,  <28.001747, 35.150848, 32.159721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.216740, 35.188519, 32.059925>,  <28.575060, 35.251305, 31.893599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.216740, 35.188519, 32.059925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410215, 0.652074, -0.637591,
		-0.171065, -0.741729, -0.648517,
		-0.895801, -0.156962, 0.415816,
		27.948000, 35.141430, 32.184669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.029268, 34.963074, 31.360909>,  <28.575060, 35.251305, 31.893599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.029268, 34.963074, 31.360909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.854671, 35.155273, 31.665171>,  <27.749914, 35.270592, 31.847727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.854671, 35.155273, 31.665171>,  <28.029268, 34.963074, 31.360909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.854671, 35.155273, 31.665171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513725, 0.560968, -0.649155,
		-0.738621, -0.674118, 0.001986,
		-0.436493, 0.480500, 0.760653,
		27.723724, 35.299423, 31.893366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.363762, 34.981491, 31.027309>,  <28.029268, 34.963074, 31.360909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.363762, 34.981491, 31.027309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.338387, 35.221294, 31.346449>,  <27.323160, 35.365177, 31.537933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.338387, 35.221294, 31.346449>,  <27.363762, 34.981491, 31.027309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.338387, 35.221294, 31.346449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676396, 0.562000, -0.476072,
		-0.733801, -0.569865, 0.369851,
		-0.063441, 0.599508, 0.797850,
		27.319355, 35.401146, 31.585804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.726555, 35.262432, 31.022387>,  <27.363762, 34.981491, 31.027309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.726555, 35.262432, 31.022387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.878700, 35.524986, 31.282995>,  <26.969988, 35.682518, 31.439360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.878700, 35.524986, 31.282995>,  <26.726555, 35.262432, 31.022387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.878700, 35.524986, 31.282995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618410, 0.704328, -0.348557,
		-0.687672, -0.270328, 0.673817,
		0.380363, 0.656388, 0.651521,
		26.992809, 35.721901, 31.478451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.102318, 35.621346, 31.296705>,  <26.726555, 35.262432, 31.022387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.102318, 35.621346, 31.296705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.431858, 35.845264, 31.332247>,  <26.629583, 35.979614, 31.353571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.431858, 35.845264, 31.332247>,  <26.102318, 35.621346, 31.296705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.431858, 35.845264, 31.332247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484936, 0.777298, -0.400805,
		-0.293436, 0.287116, 0.911844,
		0.823852, 0.559797, 0.088854,
		26.679014, 36.013203, 31.358904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.941885, 36.363945, 31.506914>,  <26.102318, 35.621346, 31.296705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.941885, 36.363945, 31.506914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.278042, 36.361809, 31.290133>,  <26.479736, 36.360527, 31.160063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.278042, 36.361809, 31.290133>,  <25.941885, 36.363945, 31.506914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.278042, 36.361809, 31.290133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392279, 0.683999, -0.615031,
		0.373980, 0.729463, 0.572732,
		0.840391, -0.005339, -0.541955,
		26.530159, 36.360207, 31.127546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.377998, 37.044868, 31.563044>,  <25.941885, 36.363945, 31.506914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.377998, 37.044868, 31.563044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.392199, 36.857536, 31.209908>,  <26.400719, 36.745136, 30.998026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.392199, 36.857536, 31.209908>,  <26.377998, 37.044868, 31.563044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.392199, 36.857536, 31.209908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039639, 0.883362, -0.467012,
		0.998583, -0.018415, 0.049925,
		0.035502, -0.468330, -0.882840,
		26.402849, 36.717037, 30.945055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.007950, 37.162479, 31.204126>,  <26.377998, 37.044868, 31.563044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.007950, 37.162479, 31.204126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.720245, 37.100796, 30.933163>,  <26.547623, 37.063786, 30.770584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.720245, 37.100796, 30.933163>,  <27.007950, 37.162479, 31.204126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.720245, 37.100796, 30.933163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286464, 0.822477, -0.491396,
		0.632930, -0.547495, -0.547401,
		-0.719262, -0.154209, -0.677408,
		26.504467, 37.054535, 30.729940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.249073, 37.414215, 30.612009>,  <27.007950, 37.162479, 31.204126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.249073, 37.414215, 30.612009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.855738, 37.378128, 30.548880>,  <26.619738, 37.356476, 30.511002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.855738, 37.378128, 30.548880>,  <27.249073, 37.414215, 30.612009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.855738, 37.378128, 30.548880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043397, 0.726575, -0.685716,
		0.176535, -0.681139, -0.710553,
		-0.983337, -0.090217, -0.157825,
		26.560736, 37.351063, 30.501532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.582672, 36.805244, 30.924501>,  <27.249073, 37.414215, 30.612009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.582672, 36.805244, 30.924501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.248308, 36.707264, 31.120970>,  <27.047689, 36.648476, 31.238852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.248308, 36.707264, 31.120970>,  <27.582672, 36.805244, 30.924501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.248308, 36.707264, 31.120970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506167, -0.690080, 0.517285,
		0.212240, 0.681021, 0.700832,
		-0.835912, -0.244949, 0.491173,
		26.997534, 36.633778, 31.268322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.738119, 36.722179, 31.542955>,  <27.582672, 36.805244, 30.924501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.738119, 36.722179, 31.542955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.400637, 36.509720, 31.511866>,  <27.198147, 36.382244, 31.493212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.400637, 36.509720, 31.511866>,  <27.738119, 36.722179, 31.542955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.400637, 36.509720, 31.511866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426096, -0.750708, 0.504856,
		-0.326505, 0.392830, 0.859697,
		-0.843704, -0.531151, -0.077726,
		27.147526, 36.350376, 31.488548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.490782, 36.567284, 32.295238>,  <27.738119, 36.722179, 31.542955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.490782, 36.567284, 32.295238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.318512, 36.316059, 32.035988>,  <27.215149, 36.165325, 31.880438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.318512, 36.316059, 32.035988>,  <27.490782, 36.567284, 32.295238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.318512, 36.316059, 32.035988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472881, -0.768701, 0.430676,
		-0.768701, -0.121003, 0.628058,
		-0.430676, -0.628058, -0.648122,
		27.189310, 36.127644, 31.841551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.252672, 36.125698, 32.729614>,  <27.490782, 36.567284, 32.295238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.252672, 36.125698, 32.729614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.275782, 35.931156, 32.380875>,  <27.289648, 35.814430, 32.171631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.275782, 35.931156, 32.380875>,  <27.252672, 36.125698, 32.729614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.275782, 35.931156, 32.380875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166954, -0.856301, 0.488749,
		-0.984271, -0.173796, 0.031726,
		0.057775, -0.486358, -0.871848,
		27.293114, 35.785248, 32.119320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.904226, 35.487782, 32.806789>,  <27.252672, 36.125698, 32.729614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.904226, 35.487782, 32.806789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.125748, 35.407784, 32.483479>,  <27.258661, 35.359787, 32.289494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.125748, 35.407784, 32.483479>,  <26.904226, 35.487782, 32.806789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.125748, 35.407784, 32.483479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326445, -0.840861, 0.431724,
		-0.765986, -0.502947, -0.400386,
		0.553804, -0.199991, -0.808273,
		27.291889, 35.347786, 32.240997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.954185, 34.768776, 32.923874>,  <26.904226, 35.487782, 32.806789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.954185, 34.768776, 32.923874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.217768, 34.877907, 32.643490>,  <27.375917, 34.943386, 32.475258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.217768, 34.877907, 32.643490>,  <26.954185, 34.768776, 32.923874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.217768, 34.877907, 32.643490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482606, -0.868150, 0.115791,
		-0.576949, -0.414589, -0.703738,
		0.658955, 0.272823, -0.700961,
		27.415455, 34.959755, 32.433201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.074675, 34.259064, 32.471092>,  <26.954185, 34.768776, 32.923874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.074675, 34.259064, 32.471092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.401875, 34.483578, 32.521423>,  <27.598194, 34.618286, 32.551620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.401875, 34.483578, 32.521423>,  <27.074675, 34.259064, 32.471092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.401875, 34.483578, 32.521423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478296, -0.785213, 0.393285,
		0.319544, -0.261526, -0.910766,
		0.818000, 0.561288, 0.125823,
		27.647274, 34.651962, 32.559170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.523764, 33.788391, 32.249771>,  <27.074675, 34.259064, 32.471092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.523764, 33.788391, 32.249771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.779093, 34.052956, 32.407291>,  <27.932291, 34.211697, 32.501804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.779093, 34.052956, 32.407291>,  <27.523764, 33.788391, 32.249771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.779093, 34.052956, 32.407291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498281, -0.744969, 0.443551,
		0.586737, -0.086907, -0.805100,
		0.638323, 0.661414, 0.393797,
		27.970589, 34.251381, 32.525429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.378336, 33.777885, 31.989004>,  <27.523764, 33.788391, 32.249771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.378336, 33.777885, 31.989004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.350462, 33.916130, 32.363319>,  <28.333736, 33.999077, 32.587910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.350462, 33.916130, 32.363319>,  <28.378336, 33.777885, 31.989004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.350462, 33.916130, 32.363319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629672, -0.712341, 0.309974,
		0.773729, 0.610841, -0.167978,
		-0.069687, 0.345607, 0.935788,
		28.329556, 34.019814, 32.644054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.083670, 33.691406, 32.285591>,  <28.378336, 33.777885, 31.989004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.083670, 33.691406, 32.285591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.849905, 33.735996, 32.607098>,  <28.709646, 33.762753, 32.800003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.849905, 33.735996, 32.607098>,  <29.083670, 33.691406, 32.285591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.849905, 33.735996, 32.607098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452520, -0.777425, 0.436848,
		0.673566, 0.619018, 0.403889,
		-0.584410, 0.111478, 0.803765,
		28.674582, 33.769440, 32.848228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.434538, 33.577770, 32.929771>,  <29.083670, 33.691406, 32.285591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.434538, 33.577770, 32.929771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.060358, 33.465405, 33.015579>,  <28.835850, 33.397984, 33.067066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.060358, 33.465405, 33.015579>,  <29.434538, 33.577770, 32.929771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.060358, 33.465405, 33.015579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346032, -0.851594, 0.393763,
		0.072073, 0.442578, 0.893829,
		-0.935451, -0.280914, 0.214523,
		28.779722, 33.381130, 33.079937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.851805, 33.884754, 33.491165>,  <29.434538, 33.577770, 32.929771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.851805, 33.884754, 33.491165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.178617, 34.082790, 33.372952>,  <30.374706, 34.201611, 33.302025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.178617, 34.082790, 33.372952>,  <29.851805, 33.884754, 33.491165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.178617, 34.082790, 33.372952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172701, 0.278895, 0.944665,
		0.550120, -0.822862, 0.142364,
		0.817033, 0.495092, -0.295535,
		30.423727, 34.231319, 33.284290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.386951, 33.591614, 33.848003>,  <29.851805, 33.884754, 33.491165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.386951, 33.591614, 33.848003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.513292, 33.951424, 33.727280>,  <30.589098, 34.167309, 33.654846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.513292, 33.951424, 33.727280>,  <30.386951, 33.591614, 33.848003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.513292, 33.951424, 33.727280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369441, 0.176395, 0.912359,
		0.873927, -0.399674, -0.276607,
		0.315854, 0.899525, -0.301812,
		30.608049, 34.221283, 33.636738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.904024, 33.634418, 34.290268>,  <30.386951, 33.591614, 33.848003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.904024, 33.634418, 34.290268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.841051, 34.009098, 34.165165>,  <30.803267, 34.233906, 34.090103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.841051, 34.009098, 34.165165>,  <30.904024, 33.634418, 34.290268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.841051, 34.009098, 34.165165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201845, 0.340544, 0.918307,
		0.966682, 0.081443, -0.242680,
		-0.157433, 0.936695, -0.312759,
		30.793821, 34.290108, 34.071339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.416960, 34.037682, 34.572353>,  <30.904024, 33.634418, 34.290268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.416960, 34.037682, 34.572353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.122339, 34.292713, 34.482033>,  <30.945566, 34.445732, 34.427841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.122339, 34.292713, 34.482033>,  <31.416960, 34.037682, 34.572353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.122339, 34.292713, 34.482033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032531, 0.300054, 0.953367,
		0.675599, 0.709549, -0.200265,
		-0.736551, 0.637579, -0.225798,
		30.901373, 34.483986, 34.414291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.565838, 34.726212, 34.783054>,  <31.416960, 34.037682, 34.572353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.565838, 34.726212, 34.783054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.167162, 34.696465, 34.796185>,  <30.927956, 34.678616, 34.804062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.167162, 34.696465, 34.796185>,  <31.565838, 34.726212, 34.783054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.167162, 34.696465, 34.796185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001847, 0.382974, 0.923757,
		-0.081269, 0.920760, -0.381570,
		-0.996690, -0.074368, 0.032824,
		30.868155, 34.674152, 34.806030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.415682, 35.238491, 35.272438>,  <31.565838, 34.726212, 34.783054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.415682, 35.238491, 35.272438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.102449, 34.990574, 35.251881>,  <30.914511, 34.841824, 35.239548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.102449, 34.990574, 35.251881>,  <31.415682, 35.238491, 35.272438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.102449, 34.990574, 35.251881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261659, 0.253375, 0.931309,
		-0.564199, 0.742735, -0.360587,
		-0.783080, -0.619795, -0.051389,
		30.867525, 34.804634, 35.236465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.794230, 35.221107, 35.953529>,  <31.415682, 35.238491, 35.272438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.794230, 35.221107, 35.953529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.105003, 35.294159, 36.194534>,  <32.291470, 35.337990, 36.339138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.105003, 35.294159, 36.194534>,  <31.794230, 35.221107, 35.953529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.105003, 35.294159, 36.194534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490324, 0.424770, -0.761021,
		-0.394909, 0.886690, 0.240474,
		0.776936, 0.182624, 0.602511,
		32.338085, 35.348946, 36.375286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.464312, 34.659992, 36.439816>,  <31.794230, 35.221107, 35.953529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.464312, 34.659992, 36.439816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.116928, 34.696453, 36.634739>,  <30.908499, 34.718330, 36.751694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.116928, 34.696453, 36.634739>,  <31.464312, 34.659992, 36.439816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.116928, 34.696453, 36.634739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409880, 0.420942, -0.809201,
		-0.278887, -0.902496, -0.328211,
		-0.868459, 0.091149, 0.487310,
		30.856390, 34.723797, 36.780933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.859722, 34.280903, 36.147991>,  <31.464312, 34.659992, 36.439816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.859722, 34.280903, 36.147991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.699602, 34.592010, 36.341827>,  <30.603531, 34.778675, 36.458130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.699602, 34.592010, 36.341827>,  <30.859722, 34.280903, 36.147991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.699602, 34.592010, 36.341827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514130, 0.247129, -0.821339,
		-0.758571, -0.577927, 0.300950,
		-0.400300, 0.777771, 0.484595,
		30.579512, 34.825340, 36.487206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.182180, 34.286026, 36.021286>,  <30.859722, 34.280903, 36.147991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.182180, 34.286026, 36.021286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.289282, 34.659252, 36.117371>,  <30.353542, 34.883186, 36.175022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.289282, 34.659252, 36.117371>,  <30.182180, 34.286026, 36.021286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.289282, 34.659252, 36.117371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351468, 0.326721, -0.877339,
		-0.897095, 0.150483, 0.415423,
		0.267752, 0.933064, 0.240210,
		30.369608, 34.939171, 36.189434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.914574, 34.591541, 35.398781>,  <30.182180, 34.286026, 36.021286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.914574, 34.591541, 35.398781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.192421, 34.851276, 35.274937>,  <30.359129, 35.007118, 35.200630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.192421, 34.851276, 35.274937>,  <29.914574, 34.591541, 35.398781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.192421, 34.851276, 35.274937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109588, -0.329855, -0.937649,
		-0.710981, 0.685239, -0.157964,
		0.694619, 0.649340, -0.309615,
		30.400806, 35.046078, 35.182053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.669147, 34.846878, 34.821106>,  <29.914574, 34.591541, 35.398781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.669147, 34.846878, 34.821106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.068487, 34.862690, 34.804436>,  <30.308090, 34.872177, 34.794434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.068487, 34.862690, 34.804436>,  <29.669147, 34.846878, 34.821106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.068487, 34.862690, 34.804436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026587, -0.325144, -0.945291,
		-0.050922, 0.944838, -0.323556,
		0.998349, 0.039534, -0.041677,
		30.367992, 34.874550, 34.791931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.964630, 35.350704, 34.289391>,  <29.669147, 34.846878, 34.821106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.964630, 35.350704, 34.289391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.253103, 35.075863, 34.324669>,  <30.426188, 34.910957, 34.345837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.253103, 35.075863, 34.324669>,  <29.964630, 35.350704, 34.289391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.253103, 35.075863, 34.324669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044252, -0.172746, -0.983972,
		0.691328, 0.705723, -0.154987,
		0.721184, -0.687106, 0.088194,
		30.469460, 34.869732, 34.351128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.484821, 35.497616, 33.747528>,  <29.964630, 35.350704, 34.289391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.484821, 35.497616, 33.747528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.583536, 35.114922, 33.809185>,  <30.642765, 34.885307, 33.846180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.583536, 35.114922, 33.809185>,  <30.484821, 35.497616, 33.747528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.583536, 35.114922, 33.809185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003513, -0.159948, -0.987119,
		0.969063, 0.243069, -0.042834,
		0.246789, -0.956731, 0.154146,
		30.657574, 34.827904, 33.855431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.045059, 35.403965, 33.265373>,  <30.484821, 35.497616, 33.747528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.045059, 35.403965, 33.265373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.876513, 35.058086, 33.374737>,  <30.775385, 34.850559, 33.440357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.876513, 35.058086, 33.374737>,  <31.045059, 35.403965, 33.265373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.876513, 35.058086, 33.374737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047464, -0.280042, -0.958814,
		0.905649, -0.416987, 0.076957,
		-0.421364, -0.864695, 0.273411,
		30.750103, 34.798679, 33.456760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.455282, 34.912094, 32.932709>,  <31.045059, 35.403965, 33.265373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.455282, 34.912094, 32.932709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.120155, 34.721714, 33.039692>,  <30.919079, 34.607487, 33.103882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.120155, 34.721714, 33.039692>,  <31.455282, 34.912094, 32.932709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.120155, 34.721714, 33.039692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164529, -0.247000, -0.954946,
		0.520572, -0.844073, 0.128632,
		-0.837815, -0.475954, 0.267455,
		30.868811, 34.578926, 33.119930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.387091, 34.135883, 32.793049>,  <31.455282, 34.912094, 32.932709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.387091, 34.135883, 32.793049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.045162, 34.342251, 32.770752>,  <30.840006, 34.466072, 32.757374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.045162, 34.342251, 32.770752>,  <31.387091, 34.135883, 32.793049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.045162, 34.342251, 32.770752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191292, -0.413139, -0.890350,
		-0.482381, -0.750426, 0.451851,
		-0.854819, 0.515924, -0.055740,
		30.788715, 34.497028, 32.754032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.818548, 33.739983, 32.537315>,  <31.387091, 34.135883, 32.793049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.818548, 33.739983, 32.537315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.752663, 34.123890, 32.446358>,  <30.713131, 34.354237, 32.391781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.752663, 34.123890, 32.446358>,  <30.818548, 33.739983, 32.537315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.752663, 34.123890, 32.446358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104018, -0.246163, -0.963631,
		-0.980841, -0.135072, 0.140380,
		-0.164716, 0.959771, -0.227396,
		30.703247, 34.411819, 32.378139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.526690, 33.676563, 31.994167>,  <30.818548, 33.739983, 32.537315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.526690, 33.676563, 31.994167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.614698, 34.061760, 31.931902>,  <30.667503, 34.292877, 31.894543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.614698, 34.061760, 31.931902>,  <30.526690, 33.676563, 31.994167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.614698, 34.061760, 31.931902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067779, -0.174279, -0.982361,
		-0.973137, 0.205593, -0.103616,
		0.220025, 0.962995, -0.155662,
		30.680706, 34.350658, 31.885202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.222244, 33.886505, 31.362877>,  <30.526690, 33.676563, 31.994167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.222244, 33.886505, 31.362877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.527018, 34.135960, 31.432774>,  <30.709881, 34.285633, 31.474712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.527018, 34.135960, 31.432774>,  <30.222244, 33.886505, 31.362877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.527018, 34.135960, 31.432774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246029, -0.029125, -0.968825,
		-0.599106, 0.781171, -0.175624,
		0.761933, 0.623637, 0.174742,
		30.755598, 34.323051, 31.485195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.184885, 34.373791, 30.717203>,  <30.222244, 33.886505, 31.362877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.184885, 34.373791, 30.717203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.538174, 34.402493, 30.902576>,  <30.750147, 34.419712, 31.013800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.538174, 34.402493, 30.902576>,  <30.184885, 34.373791, 30.717203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.538174, 34.402493, 30.902576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460031, 0.059303, -0.885920,
		-0.091053, 0.995658, 0.019368,
		0.883222, 0.071756, 0.463433,
		30.803141, 34.424019, 31.041607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.562277, 34.623444, 30.208853>,  <30.184885, 34.373791, 30.717203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.562277, 34.623444, 30.208853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.848780, 34.491543, 30.454857>,  <31.020681, 34.412403, 30.602459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.848780, 34.491543, 30.454857>,  <30.562277, 34.623444, 30.208853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.848780, 34.491543, 30.454857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640838, -0.038043, -0.766733,
		0.276228, 0.943301, 0.184069,
		0.716257, -0.329752, 0.615012,
		31.063658, 34.392616, 30.639360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.168791, 35.030704, 30.209288>,  <30.562277, 34.623444, 30.208853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.168791, 35.030704, 30.209288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.306631, 34.670288, 30.314644>,  <31.389336, 34.454037, 30.377857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.306631, 34.670288, 30.314644>,  <31.168791, 35.030704, 30.209288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.306631, 34.670288, 30.314644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751897, 0.096935, -0.652115,
		0.562051, 0.422760, 0.710895,
		0.344599, -0.901042, 0.263390,
		31.410011, 34.399975, 30.393661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.835882, 35.174732, 30.114151>,  <31.168791, 35.030704, 30.209288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.835882, 35.174732, 30.114151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.765257, 34.781021, 30.112209>,  <31.722881, 34.544796, 30.111044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.765257, 34.781021, 30.112209>,  <31.835882, 35.174732, 30.114151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.765257, 34.781021, 30.112209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684127, -0.119175, -0.719561,
		0.707668, -0.130369, 0.694413,
		-0.176565, -0.984277, -0.004852,
		31.712288, 34.485737, 30.110754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.507332, 34.879646, 30.204367>,  <31.835882, 35.174732, 30.114151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.507332, 34.879646, 30.204367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.276890, 34.594471, 30.044456>,  <32.138622, 34.423367, 29.948511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.276890, 34.594471, 30.044456>,  <32.507332, 34.879646, 30.204367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.276890, 34.594471, 30.044456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671982, -0.134667, -0.728220,
		0.465339, -0.688174, 0.556664,
		-0.576107, -0.712938, -0.399775,
		32.104057, 34.380589, 29.924524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.896618, 34.294426, 30.123987>,  <32.507332, 34.879646, 30.204367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.896618, 34.294426, 30.123987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.612228, 34.248318, 29.846504>,  <32.441597, 34.220654, 29.680014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.612228, 34.248318, 29.846504>,  <32.896618, 34.294426, 30.123987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.612228, 34.248318, 29.846504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699534, -0.216810, -0.680916,
		-0.071914, -0.969385, 0.234781,
		-0.710972, -0.115270, -0.693709,
		32.398937, 34.213737, 29.638391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.254391, 33.905949, 29.682291>,  <32.896618, 34.294426, 30.123987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.254391, 33.905949, 29.682291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.922924, 34.022999, 29.491425>,  <32.724045, 34.093227, 29.376904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.922924, 34.022999, 29.491425>,  <33.254391, 33.905949, 29.682291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.922924, 34.022999, 29.491425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475594, -0.081461, -0.875885,
		-0.295176, -0.952751, -0.071666,
		-0.828663, 0.292625, -0.477168,
		32.674324, 34.110786, 29.348274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.225204, 33.530293, 29.057108>,  <33.254391, 33.905949, 29.682291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.225204, 33.530293, 29.057108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.977203, 33.823383, 28.944883>,  <32.828403, 33.999237, 28.877548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.977203, 33.823383, 28.944883>,  <33.225204, 33.530293, 29.057108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.977203, 33.823383, 28.944883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402395, -0.010022, -0.915411,
		-0.673558, -0.680449, -0.288632,
		-0.619998, 0.732727, -0.280559,
		32.791203, 34.043201, 28.860716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.065235, 33.284023, 28.362932>,  <33.225204, 33.530293, 29.057108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.065235, 33.284023, 28.362932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.948685, 33.665871, 28.387609>,  <32.878754, 33.894978, 28.402416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.948685, 33.665871, 28.387609>,  <33.065235, 33.284023, 28.362932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.948685, 33.665871, 28.387609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332752, 0.161609, -0.929064,
		-0.896869, -0.250180, -0.364739,
		-0.291379, 0.954616, 0.061694,
		32.861271, 33.952255, 28.406118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.705936, 33.478989, 27.795834>,  <33.065235, 33.284023, 28.362932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.705936, 33.478989, 27.795834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.823006, 33.835918, 27.933302>,  <32.893246, 34.050076, 28.015783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.823006, 33.835918, 27.933302>,  <32.705936, 33.478989, 27.795834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.823006, 33.835918, 27.933302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306040, 0.253091, -0.917760,
		-0.905916, 0.373777, -0.199014,
		0.292669, 0.892321, 0.343670,
		32.910805, 34.103615, 28.036404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.485783, 33.930305, 27.315887>,  <32.705936, 33.478989, 27.795834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.485783, 33.930305, 27.315887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.757221, 34.133629, 27.527971>,  <32.920086, 34.255623, 27.655222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.757221, 34.133629, 27.527971>,  <32.485783, 33.930305, 27.315887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.757221, 34.133629, 27.527971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386098, 0.367227, -0.846211,
		-0.624846, 0.778951, 0.052943,
		0.678599, 0.508310, 0.530212,
		32.960800, 34.286121, 27.687035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.553722, 34.642216, 26.992437>,  <32.485783, 33.930305, 27.315887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.553722, 34.642216, 26.992437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.896690, 34.595142, 27.192829>,  <33.102470, 34.566898, 27.313065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.896690, 34.595142, 27.192829>,  <32.553722, 34.642216, 26.992437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.896690, 34.595142, 27.192829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481250, 0.528197, -0.699575,
		-0.182290, 0.840927, 0.509521,
		0.857420, -0.117682, 0.500981,
		33.153915, 34.559837, 27.343124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.811924, 35.342060, 27.262131>,  <32.553722, 34.642216, 26.992437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.811924, 35.342060, 27.262131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.063751, 35.054005, 27.145479>,  <33.214848, 34.881172, 27.075489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.063751, 35.054005, 27.145479>,  <32.811924, 35.342060, 27.262131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.063751, 35.054005, 27.145479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218489, 0.524303, -0.823024,
		0.745593, 0.454431, 0.487426,
		0.629566, -0.720138, -0.291629,
		33.252621, 34.837963, 27.057991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.282005, 35.664185, 26.799461>,  <32.811924, 35.342060, 27.262131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.282005, 35.664185, 26.799461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.395378, 35.285000, 26.741444>,  <33.463402, 35.057491, 26.706633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.395378, 35.285000, 26.741444>,  <33.282005, 35.664185, 26.799461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.395378, 35.285000, 26.741444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357366, 0.244761, -0.901322,
		0.889918, 0.203633, 0.408142,
		0.283436, -0.947959, -0.145045,
		33.480408, 35.000610, 26.697929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.003227, 35.544437, 26.643095>,  <33.282005, 35.664185, 26.799461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.003227, 35.544437, 26.643095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.791336, 35.254654, 26.466661>,  <33.664204, 35.080784, 26.360802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.791336, 35.254654, 26.466661>,  <34.003227, 35.544437, 26.643095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.791336, 35.254654, 26.466661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375795, 0.265740, -0.887784,
		0.760374, -0.636039, 0.131478,
		-0.529726, -0.724456, -0.441082,
		33.632420, 35.037315, 26.334337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.387531, 35.428188, 26.126034>,  <34.003227, 35.544437, 26.643095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.387531, 35.428188, 26.126034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.073444, 35.204460, 26.019756>,  <33.884991, 35.070225, 25.955990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.073444, 35.204460, 26.019756>,  <34.387531, 35.428188, 26.126034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.073444, 35.204460, 26.019756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277580, 0.065608, -0.958460,
		0.553519, -0.826350, 0.103740,
		-0.785217, -0.559322, -0.265694,
		33.837879, 35.036663, 25.940048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.628376, 35.041775, 25.511518>,  <34.387531, 35.428188, 26.126034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.628376, 35.041775, 25.511518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.228989, 35.063160, 25.517263>,  <33.989357, 35.075993, 25.520710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.228989, 35.063160, 25.517263>,  <34.628376, 35.041775, 25.511518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.228989, 35.063160, 25.517263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001773, 0.290180, -0.956970,
		-0.055329, -0.955477, -0.289830,
		-0.998466, 0.053462, 0.014362,
		33.929447, 35.079197, 25.521572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.340012, 34.543545, 25.063242>,  <34.628376, 35.041775, 25.511518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.340012, 34.543545, 25.063242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.060120, 34.827564, 25.094767>,  <33.892185, 34.997978, 25.113682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.060120, 34.827564, 25.094767>,  <34.340012, 34.543545, 25.063242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.060120, 34.827564, 25.094767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033369, 0.142679, -0.989206,
		-0.713632, -0.689543, -0.123530,
		-0.699726, 0.710051, 0.078811,
		33.850201, 35.040581, 25.118410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.976299, 34.457111, 24.485641>,  <34.340012, 34.543545, 25.063242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.976299, 34.457111, 24.485641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.883499, 34.830479, 24.595116>,  <33.827820, 35.054501, 24.660801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.883499, 34.830479, 24.595116>,  <33.976299, 34.457111, 24.485641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.883499, 34.830479, 24.595116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027961, 0.287647, -0.957328,
		-0.972314, -0.214446, -0.092833,
		-0.231998, 0.933420, 0.273687,
		33.813900, 35.110504, 24.677221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.634846, 34.710644, 23.931744>,  <33.976299, 34.457111, 24.485641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.634846, 34.710644, 23.931744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.700073, 35.049149, 24.134624>,  <33.739212, 35.252251, 24.256353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.700073, 35.049149, 24.134624>,  <33.634846, 34.710644, 23.931744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.700073, 35.049149, 24.134624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127929, 0.491607, -0.861369,
		-0.978285, 0.205352, -0.028094,
		0.163073, 0.846259, 0.507202,
		33.748997, 35.303024, 24.286785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.183434, 35.230457, 23.567785>,  <33.634846, 34.710644, 23.931744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.183434, 35.230457, 23.567785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.494461, 35.401005, 23.752647>,  <33.681080, 35.503334, 23.863565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.494461, 35.401005, 23.752647>,  <33.183434, 35.230457, 23.567785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.494461, 35.401005, 23.752647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140442, 0.598660, -0.788595,
		-0.612909, 0.678096, 0.405621,
		0.777573, 0.426371, 0.462157,
		33.727734, 35.528915, 23.891294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.136707, 35.962856, 23.486719>,  <33.183434, 35.230457, 23.567785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.136707, 35.962856, 23.486719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.518639, 35.868275, 23.558718>,  <33.747795, 35.811523, 23.601917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.518639, 35.868275, 23.558718>,  <33.136707, 35.962856, 23.486719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.518639, 35.868275, 23.558718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283762, 0.545557, -0.788572,
		0.088265, 0.804024, 0.588009,
		0.954824, -0.236458, 0.179998,
		33.805084, 35.797337, 23.612717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.388073, 36.503941, 23.390579>,  <33.136707, 35.962856, 23.486719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.388073, 36.503941, 23.390579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.665043, 36.222057, 23.328703>,  <33.831226, 36.052925, 23.291576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.665043, 36.222057, 23.328703>,  <33.388073, 36.503941, 23.390579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.665043, 36.222057, 23.328703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219496, 0.409998, -0.885281,
		0.687292, 0.579036, 0.438575,
		0.692424, -0.704712, -0.154692,
		33.872768, 36.010643, 23.282295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.875134, 36.779133, 22.913855>,  <33.388073, 36.503941, 23.390579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.875134, 36.779133, 22.913855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.012115, 36.403461, 22.924221>,  <34.094303, 36.178059, 22.930441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.012115, 36.403461, 22.924221>,  <33.875134, 36.779133, 22.913855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.012115, 36.403461, 22.924221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426494, 0.130816, -0.894981,
		0.837155, 0.317542, 0.445351,
		0.342453, -0.939177, 0.025917,
		34.114853, 36.121708, 22.931995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.599232, 36.840031, 22.775229>,  <33.875134, 36.779133, 22.913855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.599232, 36.840031, 22.775229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.471550, 36.480835, 22.654078>,  <34.394943, 36.265320, 22.581387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.471550, 36.480835, 22.654078>,  <34.599232, 36.840031, 22.775229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.471550, 36.480835, 22.654078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528179, 0.096785, -0.843599,
		0.786854, -0.429250, 0.443403,
		-0.319200, -0.897985, -0.302877,
		34.375790, 36.211441, 22.563215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.146530, 36.545815, 22.528179>,  <34.599232, 36.840031, 22.775229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.146530, 36.545815, 22.528179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.838505, 36.346722, 22.368544>,  <34.653690, 36.227268, 22.272762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.838505, 36.346722, 22.368544>,  <35.146530, 36.545815, 22.528179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.838505, 36.346722, 22.368544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451243, 0.017271, -0.892234,
		0.450984, -0.867160, 0.211297,
		-0.770061, -0.497729, -0.399089,
		34.607487, 36.197403, 22.248817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.459930, 36.007530, 22.103382>,  <35.146530, 36.545815, 22.528179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.459930, 36.007530, 22.103382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.092697, 36.077003, 21.960857>,  <34.872356, 36.118687, 21.875341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.092697, 36.077003, 21.960857>,  <35.459930, 36.007530, 22.103382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.092697, 36.077003, 21.960857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342184, -0.106483, -0.933580,
		-0.200086, -0.979028, 0.038329,
		-0.918082, 0.173680, -0.356314,
		34.817272, 36.129108, 21.853964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.510448, 35.646244, 21.528206>,  <35.459930, 36.007530, 22.103382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.510448, 35.646244, 21.528206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.188686, 35.882637, 21.503994>,  <34.995628, 36.024471, 21.489468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.188686, 35.882637, 21.503994>,  <35.510448, 35.646244, 21.528206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.188686, 35.882637, 21.503994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223541, 0.206713, -0.952523,
		-0.550414, -0.779748, -0.298391,
		-0.804409, 0.590984, -0.060528,
		34.947365, 36.059933, 21.485836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.054718, 35.355831, 20.984762>,  <35.510448, 35.646244, 21.528206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.054718, 35.355831, 20.984762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.945816, 35.739517, 21.015182>,  <34.880474, 35.969730, 21.033434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.945816, 35.739517, 21.015182>,  <35.054718, 35.355831, 20.984762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.945816, 35.739517, 21.015182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375827, 0.178762, -0.909285,
		-0.885796, -0.218971, -0.409167,
		-0.272251, 0.959216, 0.076051,
		34.864140, 36.027283, 21.037998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.747051, 35.586086, 20.337774>,  <35.054718, 35.355831, 20.984762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.747051, 35.586086, 20.337774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.811264, 35.950859, 20.488832>,  <34.849792, 36.169724, 20.579468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.811264, 35.950859, 20.488832>,  <34.747051, 35.586086, 20.337774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.811264, 35.950859, 20.488832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144178, 0.356838, -0.922973,
		-0.976443, 0.202617, -0.074196,
		0.160535, 0.911928, 0.377645,
		34.859425, 36.224438, 20.602125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.365192, 35.937290, 19.896193>,  <34.747051, 35.586086, 20.337774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.365192, 35.937290, 19.896193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.633831, 36.185341, 20.058378>,  <34.795013, 36.334171, 20.155689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.633831, 36.185341, 20.058378>,  <34.365192, 35.937290, 19.896193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.633831, 36.185341, 20.058378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030079, 0.523976, -0.851202,
		-0.740310, 0.583857, 0.333246,
		0.671593, 0.620129, 0.405466,
		34.835308, 36.371380, 20.180017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.243916, 36.501518, 19.553205>,  <34.365192, 35.937290, 19.896193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.243916, 36.501518, 19.553205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.609207, 36.564594, 19.703482>,  <34.828381, 36.602440, 19.793648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.609207, 36.564594, 19.703482>,  <34.243916, 36.501518, 19.553205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.609207, 36.564594, 19.703482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207870, 0.612718, -0.762474,
		-0.350429, 0.774409, 0.526773,
		0.913230, 0.157693, 0.375691,
		34.883175, 36.611900, 19.816189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.367363, 37.236706, 19.542505>,  <34.243916, 36.501518, 19.553205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.367363, 37.236706, 19.542505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.723732, 37.055050, 19.544165>,  <34.937553, 36.946056, 19.545160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.723732, 37.055050, 19.544165>,  <34.367363, 37.236706, 19.542505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.723732, 37.055050, 19.544165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332063, 0.645145, -0.688130,
		0.309833, 0.614446, 0.725576,
		0.890920, -0.454143, 0.004148,
		34.991009, 36.918808, 19.545408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.857029, 37.746868, 19.501804>,  <34.367363, 37.236706, 19.542505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.857029, 37.746868, 19.501804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.087364, 37.427132, 19.433155>,  <35.225567, 37.235291, 19.391966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.087364, 37.427132, 19.433155>,  <34.857029, 37.746868, 19.501804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.087364, 37.427132, 19.433155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395540, 0.456104, -0.797193,
		0.715509, 0.391175, 0.578817,
		0.575843, -0.799344, -0.171621,
		35.260117, 37.187328, 19.381668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.362034, 38.088806, 19.072638>,  <34.857029, 37.746868, 19.501804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.362034, 38.088806, 19.072638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.400299, 37.694344, 19.018450>,  <35.423260, 37.457668, 18.985937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.400299, 37.694344, 19.018450>,  <35.362034, 38.088806, 19.072638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.400299, 37.694344, 19.018450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483773, 0.165000, -0.859499,
		0.869950, 0.016686, 0.492858,
		0.095663, -0.986152, -0.135470,
		35.428997, 37.398499, 18.977808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.063957, 37.916973, 19.039894>,  <35.362034, 38.088806, 19.072638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.063957, 37.916973, 19.039894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.876991, 37.625446, 18.839754>,  <35.764812, 37.450531, 18.719669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.876991, 37.625446, 18.839754>,  <36.063957, 37.916973, 19.039894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.876991, 37.625446, 18.839754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597494, 0.156700, -0.786414,
		0.651556, -0.666538, 0.362219,
		-0.467414, -0.728816, -0.500351,
		35.736767, 37.406803, 18.689650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.657356, 37.647152, 18.597574>,  <36.063957, 37.916973, 19.039894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.657356, 37.647152, 18.597574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.332817, 37.475319, 18.438995>,  <36.138092, 37.372219, 18.343847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.332817, 37.475319, 18.438995>,  <36.657356, 37.647152, 18.597574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.332817, 37.475319, 18.438995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452332, -0.031779, -0.891283,
		0.370284, -0.902467, 0.220099,
		-0.811348, -0.429585, -0.396448,
		36.089413, 37.346443, 18.320061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.831169, 37.040092, 18.241072>,  <36.657356, 37.647152, 18.597574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.831169, 37.040092, 18.241072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.491093, 37.154053, 18.063984>,  <36.287048, 37.222431, 17.957731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.491093, 37.154053, 18.063984>,  <36.831169, 37.040092, 18.241072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.491093, 37.154053, 18.063984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490913, 0.125205, -0.862165,
		-0.190204, -0.950344, -0.246312,
		-0.850192, 0.284905, -0.442721,
		36.236034, 37.239525, 17.931168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.696030, 36.593216, 17.540009>,  <36.831169, 37.040092, 18.241072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.696030, 36.593216, 17.540009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.487232, 36.931591, 17.496357>,  <36.361954, 37.134617, 17.470167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.487232, 36.931591, 17.496357>,  <36.696030, 36.593216, 17.540009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.487232, 36.931591, 17.496357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475049, 0.182073, -0.860916,
		-0.708414, -0.501234, -0.496904,
		-0.521994, 0.845939, -0.109128,
		36.330635, 37.185371, 17.463619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.368492, 36.570370, 16.907364>,  <36.696030, 36.593216, 17.540009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.368492, 36.570370, 16.907364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.373001, 36.960480, 16.995646>,  <36.375706, 37.194546, 17.048615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.373001, 36.960480, 16.995646>,  <36.368492, 36.570370, 16.907364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.373001, 36.960480, 16.995646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289769, 0.208058, -0.934209,
		-0.957030, 0.074487, -0.280259,
		0.011276, 0.975276, 0.220702,
		36.376385, 37.253063, 17.061855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.201611, 36.791862, 16.256428>,  <36.368492, 36.570370, 16.907364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.201611, 36.791862, 16.256428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.338631, 37.109512, 16.457237>,  <36.420841, 37.300102, 16.577723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.338631, 37.109512, 16.457237>,  <36.201611, 36.791862, 16.256428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.338631, 37.109512, 16.457237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250971, 0.437585, -0.863442,
		-0.905359, 0.421764, -0.049408,
		0.342548, 0.794125, 0.502022,
		36.441395, 37.347752, 16.607843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.851238, 37.385963, 16.099031>,  <36.201611, 36.791862, 16.256428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.851238, 37.385963, 16.099031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.231670, 37.473709, 16.186054>,  <36.459930, 37.526356, 16.238268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.231670, 37.473709, 16.186054>,  <35.851238, 37.385963, 16.099031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.231670, 37.473709, 16.186054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119158, 0.389239, -0.913397,
		-0.285051, 0.894635, 0.344056,
		0.951077, 0.219368, 0.217556,
		36.516994, 37.539520, 16.251322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.931522, 38.108898, 16.068247>,  <35.851238, 37.385963, 16.099031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.931522, 38.108898, 16.068247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.253914, 37.888744, 15.981093>,  <36.447350, 37.756653, 15.928802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.253914, 37.888744, 15.981093>,  <35.931522, 38.108898, 16.068247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.253914, 37.888744, 15.981093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091045, 0.478963, -0.873101,
		0.584902, 0.683863, 0.436143,
		0.805978, -0.550387, -0.217884,
		36.495708, 37.723629, 15.915729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.581856, 38.510944, 15.938166>,  <35.931522, 38.108898, 16.068247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.581856, 38.510944, 15.938166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.576359, 38.171623, 15.726432>,  <36.573059, 37.968029, 15.599392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.576359, 38.171623, 15.726432>,  <36.581856, 38.510944, 15.938166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.576359, 38.171623, 15.726432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012360, 0.529200, -0.848407,
		0.999829, -0.018201, 0.003214,
		-0.013741, -0.848302, -0.529334,
		36.572235, 37.917133, 15.567632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.670822, 38.721596, 15.313166>,  <36.581856, 38.510944, 15.938166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.670822, 38.721596, 15.313166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.698227, 38.363403, 15.137251>,  <36.714672, 38.148487, 15.031702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.698227, 38.363403, 15.137251>,  <36.670822, 38.721596, 15.313166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.698227, 38.363403, 15.137251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291506, 0.439553, -0.849598,
		0.954112, -0.069991, 0.291155,
		0.068514, -0.895486, -0.439786,
		36.718781, 38.094757, 15.005315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.900570, 39.362919, 15.735016>,  <36.670822, 38.721596, 15.313166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.900570, 39.362919, 15.735016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.580795, 39.556076, 15.877966>,  <36.388931, 39.671970, 15.963737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.580795, 39.556076, 15.877966>,  <36.900570, 39.362919, 15.735016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.580795, 39.556076, 15.877966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433229, 0.051280, 0.899824,
		0.416194, 0.874176, -0.250199,
		-0.799434, 0.482895, 0.357376,
		36.340965, 39.700943, 15.985179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.396515, 39.427193, 15.258184>,  <36.900570, 39.362919, 15.735016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.396515, 39.427193, 15.258184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.787365, 39.493412, 15.311584>,  <38.021873, 39.533142, 15.343624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.787365, 39.493412, 15.311584>,  <37.396515, 39.427193, 15.258184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.787365, 39.493412, 15.311584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140809, 0.033176, 0.989481,
		0.159375, -0.985644, 0.055727,
		0.977125, 0.165546, 0.133500,
		38.080502, 39.543076, 15.351635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.699837, 38.887154, 15.721004>,  <37.396515, 39.427193, 15.258184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.699837, 38.887154, 15.721004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.915520, 39.223930, 15.728843>,  <38.044930, 39.425999, 15.733546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.915520, 39.223930, 15.728843>,  <37.699837, 38.887154, 15.721004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.915520, 39.223930, 15.728843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083614, 0.030365, 0.996036,
		0.838011, -0.538709, 0.086771,
		0.539208, 0.841944, 0.019597,
		38.077282, 39.476513, 15.734722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.154102, 38.830109, 16.274038>,  <37.699837, 38.887154, 15.721004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.154102, 38.830109, 16.274038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.070366, 39.219090, 16.233042>,  <38.020123, 39.452480, 16.208445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.070366, 39.219090, 16.233042>,  <38.154102, 38.830109, 16.274038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.070366, 39.219090, 16.233042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037764, 0.112774, 0.992903,
		0.977113, 0.203986, -0.060332,
		-0.209342, 0.972457, -0.102490,
		38.007565, 39.510826, 16.202295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.553864, 39.330807, 16.738314>,  <38.154102, 38.830109, 16.274038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.553864, 39.330807, 16.738314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.215443, 39.536831, 16.683304>,  <38.012390, 39.660446, 16.650299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.215443, 39.536831, 16.683304>,  <38.553864, 39.330807, 16.738314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.215443, 39.536831, 16.683304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002801, 0.253668, 0.967287,
		0.533095, 0.818760, -0.213173,
		-0.846051, 0.515059, -0.137523,
		37.961628, 39.691349, 16.642048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.743614, 39.946594, 16.964869>,  <38.553864, 39.330807, 16.738314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.743614, 39.946594, 16.964869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.366730, 39.846382, 17.053844>,  <38.140598, 39.786255, 17.107229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.366730, 39.846382, 17.053844>,  <38.743614, 39.946594, 16.964869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.366730, 39.846382, 17.053844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232097, -0.009298, 0.972648,
		-0.241611, 0.968064, 0.066908,
		-0.942208, -0.250532, 0.222439,
		38.084068, 39.771221, 17.120577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.447773, 40.482944, 17.436529>,  <38.743614, 39.946594, 16.964869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.447773, 40.482944, 17.436529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.234653, 40.145393, 17.461784>,  <38.106781, 39.942863, 17.476938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.234653, 40.145393, 17.461784>,  <38.447773, 40.482944, 17.436529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.234653, 40.145393, 17.461784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044081, 0.102187, 0.993788,
		-0.845090, 0.526710, -0.091644,
		-0.532803, -0.843880, 0.063140,
		38.074814, 39.892231, 17.480726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.888199, 40.566525, 17.964506>,  <38.447773, 40.482944, 17.436529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.888199, 40.566525, 17.964506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.936436, 40.172558, 17.914875>,  <37.965378, 39.936176, 17.885098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.936436, 40.172558, 17.914875>,  <37.888199, 40.566525, 17.964506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.936436, 40.172558, 17.914875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264161, -0.152319, 0.952375,
		-0.956910, -0.082070, -0.278545,
		0.120589, -0.984918, -0.124076,
		37.972614, 39.877083, 17.877653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.352272, 40.358223, 18.245531>,  <37.888199, 40.566525, 17.964506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.352272, 40.358223, 18.245531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.565792, 40.020039, 18.251997>,  <37.693905, 39.817127, 18.255877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.565792, 40.020039, 18.251997>,  <37.352272, 40.358223, 18.245531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.565792, 40.020039, 18.251997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326144, -0.188206, 0.926395,
		-0.780187, -0.499779, -0.376205,
		0.533797, -0.845458, 0.016164,
		37.725929, 39.766399, 18.256845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.933239, 39.811020, 18.384398>,  <37.352272, 40.358223, 18.245531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.933239, 39.811020, 18.384398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.304802, 39.714069, 18.496384>,  <37.527740, 39.655899, 18.563576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.304802, 39.714069, 18.496384>,  <36.933239, 39.811020, 18.384398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.304802, 39.714069, 18.496384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354117, -0.360329, 0.862997,
		-0.108286, -0.900788, -0.420542,
		0.928911, -0.242371, 0.279966,
		37.583477, 39.641357, 18.580374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.869644, 39.125011, 18.752893>,  <36.933239, 39.811020, 18.384398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.869644, 39.125011, 18.752893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.216419, 39.283714, 18.873560>,  <37.424484, 39.378937, 18.945959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.216419, 39.283714, 18.873560>,  <36.869644, 39.125011, 18.752893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.216419, 39.283714, 18.873560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058088, -0.520696, 0.851764,
		0.495019, -0.755950, -0.428364,
		0.866938, 0.396757, 0.301666,
		37.476501, 39.402740, 18.964060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.263893, 38.594688, 18.970362>,  <36.869644, 39.125011, 18.752893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.263893, 38.594688, 18.970362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.459412, 38.879421, 19.172102>,  <37.576721, 39.050262, 19.293146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.459412, 38.879421, 19.172102>,  <37.263893, 38.594688, 18.970362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.459412, 38.879421, 19.172102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101890, -0.527583, 0.843371,
		0.866428, -0.463625, -0.185351,
		0.488796, 0.711834, 0.504352,
		37.606049, 39.092972, 19.323408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.649746, 38.290215, 19.348604>,  <37.263893, 38.594688, 18.970362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.649746, 38.290215, 19.348604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.595585, 38.637547, 19.539463>,  <37.563087, 38.845947, 19.653978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.595585, 38.637547, 19.539463>,  <37.649746, 38.290215, 19.348604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.595585, 38.637547, 19.539463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084571, -0.489951, 0.867638,
		0.987175, 0.077127, 0.139776,
		-0.135402, 0.868331, 0.477145,
		37.554966, 38.898045, 19.682606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.028046, 38.261566, 19.939802>,  <37.649746, 38.290215, 19.348604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.028046, 38.261566, 19.939802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.808357, 38.577106, 20.050123>,  <37.676544, 38.766430, 20.116316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.808357, 38.577106, 20.050123>,  <38.028046, 38.261566, 19.939802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.808357, 38.577106, 20.050123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058005, -0.293255, 0.954273,
		0.833659, 0.540108, 0.115305,
		-0.549224, 0.788850, 0.275804,
		37.643589, 38.813763, 20.132864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.364014, 38.582909, 20.502077>,  <38.028046, 38.261566, 19.939802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.364014, 38.582909, 20.502077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.988785, 38.719032, 20.528023>,  <37.763645, 38.800705, 20.543591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.988785, 38.719032, 20.528023>,  <38.364014, 38.582909, 20.502077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.988785, 38.719032, 20.528023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037308, -0.285381, 0.957688,
		0.344416, 0.895963, 0.280405,
		-0.938075, 0.340305, 0.064863,
		37.707363, 38.821125, 20.547482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.304359, 38.883770, 21.209000>,  <38.364014, 38.582909, 20.502077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.304359, 38.883770, 21.209000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.934429, 38.807167, 21.077534>,  <37.712471, 38.761204, 20.998653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.934429, 38.807167, 21.077534>,  <38.304359, 38.883770, 21.209000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.934429, 38.807167, 21.077534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220336, -0.434625, 0.873243,
		-0.310079, 0.880015, 0.359757,
		-0.924826, -0.191507, -0.328667,
		37.656982, 38.749714, 20.978933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.809444, 39.186508, 21.646761>,  <38.304359, 38.883770, 21.209000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.809444, 39.186508, 21.646761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.625240, 38.883110, 21.462318>,  <37.514717, 38.701073, 21.351652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.625240, 38.883110, 21.462318>,  <37.809444, 39.186508, 21.646761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.625240, 38.883110, 21.462318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370347, -0.307917, 0.876373,
		-0.806704, 0.574351, -0.139105,
		-0.460513, -0.758491, -0.461107,
		37.487087, 38.655563, 21.323986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.175781, 39.147877, 21.822868>,  <37.809444, 39.186508, 21.646761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.175781, 39.147877, 21.822868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.194244, 38.774124, 21.681559>,  <37.205322, 38.549873, 21.596773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.194244, 38.774124, 21.681559>,  <37.175781, 39.147877, 21.822868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.194244, 38.774124, 21.681559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505439, -0.326887, 0.798547,
		-0.861627, 0.141695, -0.487362,
		0.046162, -0.934381, -0.353273,
		37.208092, 38.493809, 21.575577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.542126, 38.937527, 21.806120>,  <37.175781, 39.147877, 21.822868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.542126, 38.937527, 21.806120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.764874, 38.605301, 21.809126>,  <36.898521, 38.405964, 21.810930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.764874, 38.605301, 21.809126>,  <36.542126, 38.937527, 21.806120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.764874, 38.605301, 21.809126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531355, -0.349274, 0.771796,
		-0.638404, -0.433782, -0.635826,
		0.556869, -0.830566, 0.007514,
		36.931934, 38.356133, 21.811380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.062908, 38.467575, 21.976351>,  <36.542126, 38.937527, 21.806120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.062908, 38.467575, 21.976351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.406063, 38.280785, 22.062103>,  <36.611958, 38.168709, 22.113554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.406063, 38.280785, 22.062103>,  <36.062908, 38.467575, 21.976351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.406063, 38.280785, 22.062103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393950, -0.329891, 0.857890,
		-0.329891, -0.820431, -0.466975,
		-0.857890, 0.466975, -0.214381,
		36.663429, 38.140694, 22.126417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.895771, 37.708492, 22.105827>,  <36.062908, 38.467575, 21.976351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.895771, 37.708492, 22.105827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.245182, 37.789627, 22.282829>,  <36.454826, 37.838310, 22.389030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.245182, 37.789627, 22.282829>,  <35.895771, 37.708492, 22.105827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.245182, 37.789627, 22.282829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391865, -0.246274, 0.886449,
		0.288786, -0.947736, -0.135639,
		0.873524, 0.202842, 0.442505,
		36.507240, 37.850479, 22.415581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.036175, 37.124172, 22.586533>,  <35.895771, 37.708492, 22.105827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.036175, 37.124172, 22.586533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.259754, 37.430618, 22.713432>,  <36.393902, 37.614487, 22.789572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.259754, 37.430618, 22.713432>,  <36.036175, 37.124172, 22.586533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.259754, 37.430618, 22.713432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223527, -0.229222, 0.947361,
		0.798505, -0.600441, 0.043123,
		0.558950, 0.766112, 0.317249,
		36.427441, 37.660454, 22.808607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.426517, 36.906254, 23.134478>,  <36.036175, 37.124172, 22.586533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.426517, 36.906254, 23.134478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.438019, 37.303532, 23.179613>,  <36.444920, 37.541901, 23.206696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.438019, 37.303532, 23.179613>,  <36.426517, 36.906254, 23.134478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.438019, 37.303532, 23.179613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215718, -0.104060, 0.970895,
		0.976032, -0.052261, 0.211258,
		0.028756, 0.993197, 0.112840,
		36.446648, 37.601490, 23.213465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.887104, 36.955666, 23.699551>,  <36.426517, 36.906254, 23.134478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.887104, 36.955666, 23.699551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.699242, 37.308605, 23.687696>,  <36.586525, 37.520370, 23.680584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.699242, 37.308605, 23.687696>,  <36.887104, 36.955666, 23.699551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.699242, 37.308605, 23.687696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291554, -0.123328, 0.948571,
		0.833316, 0.454146, 0.315175,
		-0.469659, 0.882350, -0.029637,
		36.558342, 37.573311, 23.678804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.982086, 37.334316, 24.376741>,  <36.887104, 36.955666, 23.699551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.982086, 37.334316, 24.376741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.642792, 37.463726, 24.209013>,  <36.439217, 37.541370, 24.108376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.642792, 37.463726, 24.209013>,  <36.982086, 37.334316, 24.376741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.642792, 37.463726, 24.209013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461928, -0.064630, 0.884560,
		0.259074, 0.944011, 0.204266,
		-0.848235, 0.323523, -0.419321,
		36.388321, 37.560783, 24.083218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.755707, 37.845661, 24.801527>,  <36.982086, 37.334316, 24.376741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.755707, 37.845661, 24.801527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.417217, 37.772900, 24.601198>,  <36.214123, 37.729244, 24.481001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.417217, 37.772900, 24.601198>,  <36.755707, 37.845661, 24.801527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.417217, 37.772900, 24.601198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517261, 0.054857, 0.854068,
		-0.127884, 0.981785, -0.140513,
		-0.846219, -0.181903, -0.500824,
		36.163353, 37.718330, 24.450951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.122593, 38.260666, 25.240303>,  <36.755707, 37.845661, 24.801527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.122593, 38.260666, 25.240303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.910954, 38.020092, 25.000856>,  <35.783970, 37.875748, 24.857189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.910954, 38.020092, 25.000856>,  <36.122593, 38.260666, 25.240303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.910954, 38.020092, 25.000856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648041, -0.169034, 0.742611,
		-0.547815, 0.780839, -0.300316,
		-0.529095, -0.601430, -0.598615,
		35.752224, 37.839664, 24.821272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.433327, 38.500641, 25.197592>,  <36.122593, 38.260666, 25.240303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.433327, 38.500641, 25.197592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.412514, 38.116512, 25.087999>,  <35.400028, 37.886032, 25.022243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.412514, 38.116512, 25.087999>,  <35.433327, 38.500641, 25.197592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.412514, 38.116512, 25.087999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598802, -0.189561, 0.778140,
		-0.799205, 0.204549, -0.565182,
		-0.052031, -0.960326, -0.273983,
		35.396904, 37.828415, 25.005804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.703243, 38.244530, 25.180618>,  <35.433327, 38.500641, 25.197592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.703243, 38.244530, 25.180618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.911655, 37.903343, 25.193148>,  <35.036705, 37.698631, 25.200665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.911655, 37.903343, 25.193148>,  <34.703243, 38.244530, 25.180618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.911655, 37.903343, 25.193148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489267, -0.268395, 0.829808,
		-0.699388, -0.447683, -0.557169,
		0.521032, -0.852962, 0.031324,
		35.067966, 37.647453, 25.202545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.215607, 37.670101, 25.245806>,  <34.703243, 38.244530, 25.180618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.215607, 37.670101, 25.245806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.557823, 37.525620, 25.394169>,  <34.763153, 37.438931, 25.483187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.557823, 37.525620, 25.394169>,  <34.215607, 37.670101, 25.245806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.557823, 37.525620, 25.394169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478669, -0.278877, 0.832528,
		-0.197279, -0.889807, -0.411491,
		0.855544, -0.361209, 0.370906,
		34.814487, 37.417255, 25.505442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.026226, 37.081505, 25.569534>,  <34.215607, 37.670101, 25.245806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.026226, 37.081505, 25.569534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.371170, 37.180271, 25.746338>,  <34.578136, 37.239529, 25.852419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.371170, 37.180271, 25.746338>,  <34.026226, 37.081505, 25.569534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.371170, 37.180271, 25.746338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404710, -0.188389, 0.894829,
		0.304214, -0.950549, -0.062531,
		0.862359, 0.246912, 0.442007,
		34.629879, 37.254345, 25.878941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.146240, 36.599731, 26.055176>,  <34.026226, 37.081505, 25.569534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.146240, 36.599731, 26.055176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.416039, 36.871956, 26.169645>,  <34.577915, 37.035290, 26.238327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.416039, 36.871956, 26.169645>,  <34.146240, 36.599731, 26.055176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.416039, 36.871956, 26.169645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157276, -0.246268, 0.956356,
		0.721336, -0.690062, -0.059069,
		0.674491, 0.680564, 0.286172,
		34.618385, 37.076126, 26.255497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.563889, 36.177872, 26.444838>,  <34.146240, 36.599731, 26.055176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.563889, 36.177872, 26.444838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.591606, 36.563011, 26.549240>,  <34.608238, 36.794094, 26.611881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.591606, 36.563011, 26.549240>,  <34.563889, 36.177872, 26.444838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.591606, 36.563011, 26.549240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124729, -0.251220, 0.959860,
		0.989768, -0.099067, 0.102687,
		0.069293, 0.962847, 0.261006,
		34.612392, 36.851864, 26.627542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.088783, 36.246052, 26.991211>,  <34.563889, 36.177872, 26.444838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.088783, 36.246052, 26.991211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.842327, 36.560230, 27.014704>,  <34.694454, 36.748737, 27.028799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.842327, 36.560230, 27.014704>,  <35.088783, 36.246052, 26.991211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.842327, 36.560230, 27.014704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189748, -0.220394, 0.956777,
		0.764438, 0.578365, 0.284830,
		-0.616141, 0.785443, 0.058734,
		34.657486, 36.795864, 27.032324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.260063, 36.650410, 27.580797>,  <35.088783, 36.246052, 26.991211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.260063, 36.650410, 27.580797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.885109, 36.769199, 27.507996>,  <34.660137, 36.840473, 27.464315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.885109, 36.769199, 27.507996>,  <35.260063, 36.650410, 27.580797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.885109, 36.769199, 27.507996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192360, -0.005774, 0.981307,
		0.290370, 0.954869, 0.062538,
		-0.937381, 0.296972, -0.182002,
		34.603893, 36.858292, 27.453396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.113575, 37.034096, 28.262423>,  <35.260063, 36.650410, 27.580797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.113575, 37.034096, 28.262423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.763874, 37.000706, 28.071127>,  <34.554054, 36.980671, 27.956348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.763874, 37.000706, 28.071127>,  <35.113575, 37.034096, 28.262423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.763874, 37.000706, 28.071127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478149, -0.022386, 0.877993,
		-0.083997, 0.996259, -0.020342,
		-0.874253, -0.083475, -0.478241,
		34.501598, 36.975662, 27.927654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.709740, 37.557964, 28.595869>,  <35.113575, 37.034096, 28.262423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.709740, 37.557964, 28.595869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.459789, 37.296688, 28.424820>,  <34.309818, 37.139923, 28.322191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.459789, 37.296688, 28.424820>,  <34.709740, 37.557964, 28.595869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.459789, 37.296688, 28.424820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477208, -0.113935, 0.871374,
		-0.617897, 0.748570, -0.240513,
		-0.624881, -0.653194, -0.427623,
		34.272324, 37.100731, 28.296534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.014530, 37.736450, 28.720966>,  <34.709740, 37.557964, 28.595869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.014530, 37.736450, 28.720966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.972954, 37.351467, 28.620670>,  <33.948006, 37.120476, 28.560492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.972954, 37.351467, 28.620670>,  <34.014530, 37.736450, 28.720966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.972954, 37.351467, 28.620670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432143, -0.183362, 0.882967,
		-0.895795, 0.200135, -0.396860,
		-0.103944, -0.962457, -0.250742,
		33.941772, 37.062729, 28.545448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.338970, 37.604527, 28.923269>,  <34.014530, 37.736450, 28.720966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.338970, 37.604527, 28.923269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.551731, 37.266834, 28.896864>,  <33.679386, 37.064220, 28.881021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.551731, 37.266834, 28.896864>,  <33.338970, 37.604527, 28.923269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.551731, 37.266834, 28.896864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516283, -0.385096, 0.764953,
		-0.671217, -0.372798, -0.640695,
		0.531901, -0.844229, -0.066014,
		33.711300, 37.013565, 28.877060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.838390, 37.074104, 29.089607>,  <33.338970, 37.604527, 28.923269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.838390, 37.074104, 29.089607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.204731, 36.922485, 29.142582>,  <33.424534, 36.831512, 29.174368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.204731, 36.922485, 29.142582>,  <32.838390, 37.074104, 29.089607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.204731, 36.922485, 29.142582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294960, -0.411339, 0.862438,
		-0.272430, -0.828928, -0.488530,
		0.915850, -0.379050, 0.132439,
		33.479485, 36.808769, 29.182314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.659042, 36.389076, 29.282860>,  <32.838390, 37.074104, 29.089607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.659042, 36.389076, 29.282860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.033447, 36.490089, 29.380930>,  <33.258091, 36.550697, 29.439772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.033447, 36.490089, 29.380930>,  <32.659042, 36.389076, 29.282860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.033447, 36.490089, 29.380930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162331, -0.308335, 0.937325,
		0.312305, -0.917145, -0.247610,
		0.936009, 0.252537, 0.245176,
		33.314251, 36.565849, 29.454483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.906963, 35.792145, 29.607708>,  <32.659042, 36.389076, 29.282860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.906963, 35.792145, 29.607708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.134693, 36.096306, 29.732710>,  <33.271332, 36.278801, 29.807711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.134693, 36.096306, 29.732710>,  <32.906963, 35.792145, 29.607708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.134693, 36.096306, 29.732710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207534, -0.234880, 0.949611,
		0.795484, -0.605495, 0.024085,
		0.569328, 0.760399, 0.312504,
		33.305492, 36.324425, 29.826462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.258045, 35.530277, 30.193550>,  <32.906963, 35.792145, 29.607708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.258045, 35.530277, 30.193550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.275436, 35.927204, 30.239866>,  <33.285873, 36.165359, 30.267656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.275436, 35.927204, 30.239866>,  <33.258045, 35.530277, 30.193550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.275436, 35.927204, 30.239866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207936, -0.104375, 0.972558,
		0.977175, -0.066367, 0.201801,
		0.043483, 0.992321, 0.115793,
		33.288483, 36.224899, 30.274605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.634361, 35.621021, 30.792799>,  <33.258045, 35.530277, 30.193550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.634361, 35.621021, 30.792799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.448231, 35.971222, 30.740698>,  <33.336552, 36.181343, 30.709438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.448231, 35.971222, 30.740698>,  <33.634361, 35.621021, 30.792799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.448231, 35.971222, 30.740698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089041, 0.100108, 0.990985,
		0.880649, 0.472730, 0.031373,
		-0.465327, 0.875503, -0.130252,
		33.308632, 36.233871, 30.701622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.026291, 36.074780, 31.140312>,  <33.634361, 35.621021, 30.792799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.026291, 36.074780, 31.140312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.659164, 36.232021, 31.118114>,  <33.438889, 36.326366, 31.104795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.659164, 36.232021, 31.118114>,  <34.026291, 36.074780, 31.140312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.659164, 36.232021, 31.118114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064006, -0.008570, 0.997913,
		0.391813, 0.919452, 0.033027,
		-0.917816, 0.393109, -0.055493,
		33.383820, 36.349953, 31.101467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.718777, 36.237244, 31.398710>,  <34.026291, 36.074780, 31.140312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.718777, 36.237244, 31.398710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.064613, 36.425602, 31.468840>,  <35.272118, 36.538616, 31.510918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.064613, 36.425602, 31.468840>,  <34.718777, 36.237244, 31.398710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.064613, 36.425602, 31.468840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113368, 0.157110, -0.981053,
		-0.489516, 0.868087, 0.082452,
		0.864593, 0.470894, 0.175321,
		35.323990, 36.566872, 31.521437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.718327, 36.770279, 30.934301>,  <34.718777, 36.237244, 31.398710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.718327, 36.770279, 30.934301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.100670, 36.711727, 31.036207>,  <35.330078, 36.676598, 31.097351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.100670, 36.711727, 31.036207>,  <34.718327, 36.770279, 30.934301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.100670, 36.711727, 31.036207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223188, -0.202210, -0.953571,
		0.191098, 0.968341, -0.160614,
		0.955860, -0.146378, 0.254764,
		35.387428, 36.667812, 31.112637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.183437, 37.273720, 30.430428>,  <34.718327, 36.770279, 30.934301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.183437, 37.273720, 30.430428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.437946, 37.013000, 30.595507>,  <35.590652, 36.856571, 30.694553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.437946, 37.013000, 30.595507>,  <35.183437, 37.273720, 30.430428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.437946, 37.013000, 30.595507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508232, -0.048307, -0.859864,
		0.580390, 0.756856, 0.300526,
		0.636276, -0.651794, 0.412695,
		35.628830, 36.817463, 30.719315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.831604, 37.543598, 30.225538>,  <35.183437, 37.273720, 30.430428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.831604, 37.543598, 30.225538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.893448, 37.157692, 30.310692>,  <35.930553, 36.926147, 30.361784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.893448, 37.157692, 30.310692>,  <35.831604, 37.543598, 30.225538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.893448, 37.157692, 30.310692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583090, -0.084845, -0.807965,
		0.797561, 0.249048, 0.549429,
		0.154606, -0.964768, 0.212886,
		35.939831, 36.868263, 30.374557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.477520, 37.465858, 30.153500>,  <35.831604, 37.543598, 30.225538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.477520, 37.465858, 30.153500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.335518, 37.093819, 30.115805>,  <36.250317, 36.870594, 30.093187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.335518, 37.093819, 30.115805>,  <36.477520, 37.465858, 30.153500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.335518, 37.093819, 30.115805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601271, -0.149971, -0.784845,
		0.715855, -0.335284, 0.612484,
		-0.355001, -0.930104, -0.094239,
		36.229019, 36.814789, 30.087532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.073391, 37.021065, 30.131878>,  <36.477520, 37.465858, 30.153500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.073391, 37.021065, 30.131878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.763172, 36.829712, 29.967110>,  <36.577042, 36.714901, 29.868248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.763172, 36.829712, 29.967110>,  <37.073391, 37.021065, 30.131878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.763172, 36.829712, 29.967110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543808, -0.174852, -0.820792,
		0.320626, -0.860568, 0.395754,
		-0.775546, -0.478382, -0.411922,
		36.530510, 36.686199, 29.843533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.273296, 36.340824, 29.769508>,  <37.073391, 37.021065, 30.131878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.273296, 36.340824, 29.769508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.921436, 36.436321, 29.604965>,  <36.710320, 36.493618, 29.506239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.921436, 36.436321, 29.604965>,  <37.273296, 36.340824, 29.769508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.921436, 36.436321, 29.604965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440454, 0.082516, -0.893975,
		-0.179488, -0.967570, -0.177741,
		-0.879650, 0.238744, -0.411360,
		36.657539, 36.507946, 29.481558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279388, 36.008598, 29.114635>,  <37.273296, 36.340824, 29.769508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.279388, 36.008598, 29.114635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.013115, 36.305862, 29.087585>,  <36.853352, 36.484222, 29.071356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.013115, 36.305862, 29.087585>,  <37.279388, 36.008598, 29.114635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.013115, 36.305862, 29.087585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274816, 0.159894, -0.948109,
		-0.693785, -0.649727, -0.310672,
		-0.665686, 0.743161, -0.067623,
		36.813408, 36.528812, 29.067299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.989780, 35.918076, 28.434389>,  <37.279388, 36.008598, 29.114635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.989780, 35.918076, 28.434389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.947651, 36.300446, 28.544016>,  <36.922375, 36.529869, 28.609793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.947651, 36.300446, 28.544016>,  <36.989780, 35.918076, 28.434389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.947651, 36.300446, 28.544016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362834, 0.293542, -0.884412,
		-0.925882, 0.006293, -0.377759,
		-0.105323, 0.955925, 0.274069,
		36.916054, 36.587223, 28.626236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.718658, 36.135273, 27.883026>,  <36.989780, 35.918076, 28.434389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.718658, 36.135273, 27.883026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.834160, 36.450089, 28.101089>,  <36.903461, 36.638977, 28.231928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.834160, 36.450089, 28.101089>,  <36.718658, 36.135273, 27.883026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.834160, 36.450089, 28.101089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529586, 0.343066, -0.775787,
		-0.797597, 0.512718, -0.317742,
		0.288754, 0.787036, 0.545156,
		36.920788, 36.686199, 28.264637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.565830, 36.721642, 27.358883>,  <36.718658, 36.135273, 27.883026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.565830, 36.721642, 27.358883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.796818, 36.916229, 27.621143>,  <36.935410, 37.032982, 27.778500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.796818, 36.916229, 27.621143>,  <36.565830, 36.721642, 27.358883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.796818, 36.916229, 27.621143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448261, 0.482278, -0.752642,
		-0.682341, 0.728532, 0.060437,
		0.577471, 0.486467, 0.655650,
		36.970058, 37.062168, 27.817839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.590508, 37.505684, 27.219660>,  <36.565830, 36.721642, 27.358883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.590508, 37.505684, 27.219660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.913864, 37.395470, 27.427731>,  <37.107880, 37.329342, 27.552574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.913864, 37.395470, 27.427731>,  <36.590508, 37.505684, 27.219660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.913864, 37.395470, 27.427731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588350, 0.406262, -0.699139,
		-0.018691, 0.871224, 0.490530,
		0.808390, -0.275536, 0.520178,
		37.156380, 37.312809, 27.583784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.091885, 38.099575, 27.378750>,  <36.590508, 37.505684, 27.219660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.091885, 38.099575, 27.378750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.286945, 37.750401, 27.384043>,  <37.403980, 37.540894, 27.387218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.286945, 37.750401, 27.384043>,  <37.091885, 38.099575, 27.378750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.286945, 37.750401, 27.384043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603940, 0.326357, -0.727150,
		0.630439, 0.362586, 0.686351,
		0.487650, -0.872939, 0.013232,
		37.433239, 37.488518, 27.388012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.856815, 38.216732, 27.428640>,  <37.091885, 38.099575, 27.378750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.856815, 38.216732, 27.428640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.796146, 37.854218, 27.270834>,  <37.759747, 37.636711, 27.176149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.796146, 37.854218, 27.270834>,  <37.856815, 38.216732, 27.428640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.796146, 37.854218, 27.270834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602649, 0.231577, -0.763667,
		0.783460, -0.353582, 0.511048,
		-0.151672, -0.906285, -0.394517,
		37.750645, 37.582333, 27.152479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.484550, 37.938931, 27.298130>,  <37.856815, 38.216732, 27.428640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.484550, 37.938931, 27.298130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.230671, 37.737831, 27.063389>,  <38.078342, 37.617172, 26.922544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.230671, 37.737831, 27.063389>,  <38.484550, 37.938931, 27.298130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.230671, 37.737831, 27.063389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585975, 0.181959, -0.789635,
		0.503774, -0.845063, 0.179111,
		-0.634700, -0.502753, -0.586852,
		38.040260, 37.587006, 26.887333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.920918, 37.760750, 26.800882>,  <38.484550, 37.938931, 27.298130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.920918, 37.760750, 26.800882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.579247, 37.655552, 26.621454>,  <38.374245, 37.592434, 26.513798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.579247, 37.655552, 26.621454>,  <38.920918, 37.760750, 26.800882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.579247, 37.655552, 26.621454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471148, -0.026458, -0.881657,
		0.220006, -0.964433, 0.146512,
		-0.854176, -0.262999, -0.448570,
		38.322994, 37.576653, 26.486883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.097164, 37.241280, 26.286207>,  <38.920918, 37.760750, 26.800882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.097164, 37.241280, 26.286207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.748936, 37.403225, 26.174355>,  <38.539997, 37.500393, 26.107243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.748936, 37.403225, 26.174355>,  <39.097164, 37.241280, 26.286207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.748936, 37.403225, 26.174355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329901, 0.058627, -0.942193,
		-0.365061, -0.912498, -0.184603,
		-0.870572, 0.404859, -0.279631,
		38.487762, 37.524681, 26.090466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.026981, 36.812134, 25.698214>,  <39.097164, 37.241280, 26.286207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.026981, 36.812134, 25.698214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.780766, 37.124813, 25.658083>,  <38.633038, 37.312420, 25.634005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.780766, 37.124813, 25.658083>,  <39.026981, 36.812134, 25.698214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.780766, 37.124813, 25.658083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117378, -0.034949, -0.992472,
		-0.779316, -0.622681, -0.070241,
		-0.615539, 0.781695, -0.100325,
		38.596104, 37.359322, 25.627985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.717693, 36.737854, 25.127171>,  <39.026981, 36.812134, 25.698214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.717693, 36.737854, 25.127171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.623940, 37.123169, 25.179543>,  <38.567688, 37.354359, 25.210966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.623940, 37.123169, 25.179543>,  <38.717693, 36.737854, 25.127171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.623940, 37.123169, 25.179543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062586, 0.149355, -0.986801,
		-0.970127, -0.223099, -0.095295,
		-0.234387, 0.963286, 0.130930,
		38.553623, 37.412155, 25.218821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.123291, 36.844997, 24.785706>,  <38.717693, 36.737854, 25.127171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.123291, 36.844997, 24.785706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.352444, 37.171379, 24.816744>,  <38.489937, 37.367207, 24.835367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.352444, 37.171379, 24.816744>,  <38.123291, 36.844997, 24.785706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.352444, 37.171379, 24.816744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081375, 0.037583, -0.995975,
		-0.815587, 0.576892, -0.044868,
		0.572884, 0.815955, 0.077597,
		38.524307, 37.416164, 24.840023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.012184, 37.093521, 24.141308>,  <38.123291, 36.844997, 24.785706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.012184, 37.093521, 24.141308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.323814, 37.309242, 24.269176>,  <38.510792, 37.438675, 24.345898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.323814, 37.309242, 24.269176>,  <38.012184, 37.093521, 24.141308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.323814, 37.309242, 24.269176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276707, 0.161748, -0.947244,
		-0.562555, 0.826434, -0.023214,
		0.779079, 0.539300, 0.319672,
		38.557537, 37.471031, 24.365078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.008316, 37.803337, 23.706026>,  <38.012184, 37.093521, 24.141308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.008316, 37.803337, 23.706026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.372364, 37.727676, 23.853491>,  <38.590794, 37.682281, 23.941971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.372364, 37.727676, 23.853491>,  <38.008316, 37.803337, 23.706026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.372364, 37.727676, 23.853491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402546, 0.192717, -0.894884,
		0.098217, 0.962852, 0.251535,
		0.910116, -0.189147, 0.368664,
		38.645397, 37.670933, 23.964090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.453266, 38.274288, 23.425495>,  <38.008316, 37.803337, 23.706026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.453266, 38.274288, 23.425495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.688148, 37.974449, 23.547672>,  <38.829079, 37.794548, 23.620979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.688148, 37.974449, 23.547672>,  <38.453266, 38.274288, 23.425495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.688148, 37.974449, 23.547672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445446, -0.015813, -0.895169,
		0.675843, 0.661710, 0.324618,
		0.587209, -0.749593, 0.305443,
		38.864311, 37.749573, 23.639305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.029816, 38.441086, 23.139008>,  <38.453266, 38.274288, 23.425495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.029816, 38.441086, 23.139008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.076317, 38.055885, 23.236269>,  <39.104218, 37.824764, 23.294626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.076317, 38.055885, 23.236269>,  <39.029816, 38.441086, 23.139008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.076317, 38.055885, 23.236269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543151, -0.143326, -0.827312,
		0.831549, 0.228243, 0.506391,
		0.116249, -0.962997, 0.243153,
		39.111191, 37.766987, 23.309216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.603661, 38.305195, 22.773497>,  <39.029816, 38.441086, 23.139008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.603661, 38.305195, 22.773497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.497597, 37.929996, 22.862801>,  <39.433956, 37.704876, 22.916384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.497597, 37.929996, 22.862801>,  <39.603661, 38.305195, 22.773497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.497597, 37.929996, 22.862801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200542, -0.280136, -0.938779,
		0.943118, -0.204156, 0.262390,
		-0.265163, -0.938000, 0.223260,
		39.418049, 37.648598, 22.929779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.113823, 37.881775, 22.572865>,  <39.603661, 38.305195, 22.773497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.113823, 37.881775, 22.572865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.785667, 37.653065, 22.575018>,  <39.588772, 37.515839, 22.576309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.785667, 37.653065, 22.575018>,  <40.113823, 37.881775, 22.572865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.785667, 37.653065, 22.575018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165454, -0.246388, -0.954944,
		0.547340, -0.782538, 0.296737,
		-0.820392, -0.571775, 0.005383,
		39.539551, 37.481533, 22.576633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.281174, 37.223568, 22.173777>,  <40.113823, 37.881775, 22.572865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.281174, 37.223568, 22.173777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.882397, 37.254459, 22.168896>,  <39.643131, 37.272995, 22.165968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.882397, 37.254459, 22.168896>,  <40.281174, 37.223568, 22.173777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.882397, 37.254459, 22.168896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006785, -0.240933, -0.970518,
		-0.077888, -0.967464, 0.240720,
		-0.996939, 0.077225, -0.012202,
		39.583317, 37.277626, 22.165236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.978958, 36.576775, 21.899544>,  <40.281174, 37.223568, 22.173777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.978958, 36.576775, 21.899544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.682304, 36.835835, 21.829655>,  <39.504314, 36.991272, 21.787722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.682304, 36.835835, 21.829655>,  <39.978958, 36.576775, 21.899544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.682304, 36.835835, 21.829655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098754, -0.152219, -0.983401,
		-0.663497, -0.746577, 0.048933,
		-0.741632, 0.647651, -0.174724,
		39.459816, 37.030128, 21.777237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.564110, 36.253727, 21.417431>,  <39.978958, 36.576775, 21.899544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.564110, 36.253727, 21.417431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.498936, 36.646000, 21.374149>,  <39.459831, 36.881363, 21.348181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.498936, 36.646000, 21.374149>,  <39.564110, 36.253727, 21.417431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.498936, 36.646000, 21.374149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010771, -0.111433, -0.993714,
		-0.986579, -0.160742, 0.028719,
		-0.162932, 0.980686, -0.108206,
		39.450058, 36.940205, 21.341688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.016006, 36.272110, 21.022562>,  <39.564110, 36.253727, 21.417431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.016006, 36.272110, 21.022562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.169865, 36.639191, 20.982828>,  <39.262180, 36.859440, 20.958988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.169865, 36.639191, 20.982828>,  <39.016006, 36.272110, 21.022562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.169865, 36.639191, 20.982828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057182, -0.083716, -0.994848,
		-0.921292, 0.388343, 0.020275,
		0.384645, 0.917704, -0.099333,
		39.285259, 36.914501, 20.953028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.656677, 36.474964, 20.453417>,  <39.016006, 36.272110, 21.022562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.656677, 36.474964, 20.453417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.965637, 36.727398, 20.482096>,  <39.151012, 36.878857, 20.499302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.965637, 36.727398, 20.482096>,  <38.656677, 36.474964, 20.453417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.965637, 36.727398, 20.482096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093323, -0.001108, -0.995635,
		-0.628246, 0.775717, -0.059750,
		0.772397, 0.631080, 0.071696,
		39.197357, 36.916721, 20.503605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.531567, 37.075447, 20.041212>,  <38.656677, 36.474964, 20.453417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.531567, 37.075447, 20.041212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.929470, 37.045704, 20.069262>,  <39.168213, 37.027859, 20.086092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.929470, 37.045704, 20.069262>,  <38.531567, 37.075447, 20.041212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.929470, 37.045704, 20.069262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072949, 0.035952, -0.996687,
		0.071586, 0.996584, 0.041188,
		0.994763, -0.074353, 0.070126,
		39.227898, 37.023399, 20.090300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.725487, 37.601170, 19.547556>,  <38.531567, 37.075447, 20.041212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.725487, 37.601170, 19.547556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.053104, 37.385658, 19.626438>,  <39.249676, 37.256351, 19.673767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.053104, 37.385658, 19.626438>,  <38.725487, 37.601170, 19.547556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.053104, 37.385658, 19.626438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263272, 0.047541, -0.963549,
		0.509766, 0.841104, 0.180784,
		0.819040, -0.538781, 0.197204,
		39.298817, 37.224026, 19.685600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.392673, 37.952469, 19.411167>,  <38.725487, 37.601170, 19.547556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.392673, 37.952469, 19.411167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.425289, 37.555519, 19.374182>,  <39.444859, 37.317348, 19.351992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.425289, 37.555519, 19.374182>,  <39.392673, 37.952469, 19.411167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.425289, 37.555519, 19.374182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203854, 0.107416, -0.973091,
		0.975599, 0.060501, 0.211058,
		0.081544, -0.992372, -0.092462,
		39.449753, 37.257809, 19.346443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.028961, 37.893150, 19.036924>,  <39.392673, 37.952469, 19.411167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.028961, 37.893150, 19.036924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.858971, 37.532116, 19.009415>,  <39.756977, 37.315495, 18.992908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.858971, 37.532116, 19.009415>,  <40.028961, 37.893150, 19.036924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.858971, 37.532116, 19.009415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203285, -0.021128, -0.978892,
		0.882083, -0.429986, 0.192461,
		-0.424976, -0.902588, -0.068773,
		39.731476, 37.261341, 18.988783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.453270, 37.529018, 18.490435>,  <40.028961, 37.893150, 19.036924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.453270, 37.529018, 18.490435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.115665, 37.316044, 18.516195>,  <39.913101, 37.188259, 18.531652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.115665, 37.316044, 18.516195>,  <40.453270, 37.529018, 18.490435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.115665, 37.316044, 18.516195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013114, -0.140533, -0.989989,
		0.536159, -0.834721, 0.125594,
		-0.844015, -0.532439, 0.064402,
		39.862461, 37.156311, 18.535517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.600845, 37.094837, 17.983633>,  <40.453270, 37.529018, 18.490435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.600845, 37.094837, 17.983633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.203339, 37.076134, 18.024097>,  <39.964832, 37.064911, 18.048376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.203339, 37.076134, 18.024097>,  <40.600845, 37.094837, 17.983633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.203339, 37.076134, 18.024097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102513, 0.027438, -0.994353,
		0.043723, -0.998529, -0.032061,
		-0.993770, -0.046763, 0.101163,
		39.905209, 37.062107, 18.054447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.091267, 36.556202, 17.875776>,  <40.600845, 37.094837, 17.983633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.091267, 36.556202, 17.875776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.927048, 36.191635, 17.864729>,  <40.828518, 35.972893, 17.858101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.927048, 36.191635, 17.864729>,  <41.091267, 36.556202, 17.875776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.927048, 36.191635, 17.864729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154112, -0.099208, 0.983060,
		-0.898721, 0.399338, 0.181190,
		-0.410549, -0.911420, -0.027617,
		40.803883, 35.918209, 17.856443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.666798, 36.522068, 18.482637>,  <41.091267, 36.556202, 17.875776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.666798, 36.522068, 18.482637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.779007, 36.159748, 18.355625>,  <40.846333, 35.942356, 18.279417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.779007, 36.159748, 18.355625>,  <40.666798, 36.522068, 18.482637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.779007, 36.159748, 18.355625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173877, -0.277385, 0.944894,
		-0.943966, -0.320278, 0.079685,
		0.280526, -0.905803, -0.317531,
		40.863163, 35.888008, 18.260366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.340782, 36.022652, 18.800596>,  <40.666798, 36.522068, 18.482637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.340782, 36.022652, 18.800596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.635513, 35.777489, 18.686449>,  <40.812351, 35.630390, 18.617960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.635513, 35.777489, 18.686449>,  <40.340782, 36.022652, 18.800596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.635513, 35.777489, 18.686449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220649, -0.180977, 0.958416,
		-0.639066, -0.769150, 0.001889,
		0.736823, -0.612907, -0.285369,
		40.856560, 35.593616, 18.600838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.218220, 35.276691, 18.999596>,  <40.340782, 36.022652, 18.800596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.218220, 35.276691, 18.999596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.616783, 35.309395, 18.990744>,  <40.855919, 35.329018, 18.985432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.616783, 35.309395, 18.990744>,  <40.218220, 35.276691, 18.999596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.616783, 35.309395, 18.990744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055045, -0.426478, 0.902821,
		0.064374, -0.900795, -0.429446,
		0.996407, 0.081757, -0.022131,
		40.915707, 35.333923, 18.984104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.328289, 34.708702, 19.511662>,  <40.218220, 35.276691, 18.999596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.328289, 34.708702, 19.511662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.662891, 34.920486, 19.455191>,  <40.863651, 35.047558, 19.421309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.662891, 34.920486, 19.455191>,  <40.328289, 34.708702, 19.511662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.662891, 34.920486, 19.455191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234927, -0.113769, 0.965332,
		0.495046, -0.840670, -0.219553,
		0.836504, 0.529463, -0.141175,
		40.913841, 35.079327, 19.412838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.839348, 34.263832, 19.735107>,  <40.328289, 34.708702, 19.511662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.839348, 34.263832, 19.735107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.984676, 34.635483, 19.762608>,  <41.071873, 34.858471, 19.779108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.984676, 34.635483, 19.762608>,  <40.839348, 34.263832, 19.735107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.984676, 34.635483, 19.762608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344634, -0.202592, 0.916615,
		0.865577, -0.309332, -0.393814,
		0.363322, 0.929123, 0.068752,
		41.093674, 34.914219, 19.783234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.448475, 34.201000, 20.183046>,  <40.839348, 34.263832, 19.735107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.448475, 34.201000, 20.183046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.376976, 34.593929, 20.160828>,  <41.334076, 34.829689, 20.147495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.376976, 34.593929, 20.160828>,  <41.448475, 34.201000, 20.183046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.376976, 34.593929, 20.160828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157947, 0.084374, 0.983836,
		0.971135, 0.167083, -0.170237,
		-0.178746, 0.982326, -0.055548,
		41.323353, 34.888626, 20.144163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.873978, 34.445969, 20.683376>,  <41.448475, 34.201000, 20.183046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.873978, 34.445969, 20.683376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.605145, 34.739075, 20.640741>,  <41.443844, 34.914940, 20.615160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.605145, 34.739075, 20.640741>,  <41.873978, 34.445969, 20.683376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.605145, 34.739075, 20.640741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170175, 0.292938, 0.940866,
		0.720657, 0.614200, -0.321576,
		-0.672081, 0.732766, -0.106587,
		41.403519, 34.958904, 20.608765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.242218, 34.989140, 20.976410>,  <41.873978, 34.445969, 20.683376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.242218, 34.989140, 20.976410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.860500, 35.108521, 20.970060>,  <41.631470, 35.180149, 20.966251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.860500, 35.108521, 20.970060>,  <42.242218, 34.989140, 20.976410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.860500, 35.108521, 20.970060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086852, 0.327732, 0.940770,
		0.285981, 0.896390, -0.338673,
		-0.954291, 0.298456, -0.015872,
		41.574211, 35.198059, 20.965300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.183170, 35.657204, 21.445969>,  <42.242218, 34.989140, 20.976410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.183170, 35.657204, 21.445969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.815750, 35.500870, 21.422268>,  <41.595299, 35.407070, 21.408047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.815750, 35.500870, 21.422268>,  <42.183170, 35.657204, 21.445969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.815750, 35.500870, 21.422268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140463, 0.182587, 0.973104,
		-0.369508, 0.902168, -0.222613,
		-0.918550, -0.390839, -0.059254,
		41.540184, 35.383617, 21.404491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.604698, 36.129322, 21.684834>,  <42.183170, 35.657204, 21.445969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.604698, 36.129322, 21.684834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.472256, 35.756969, 21.746588>,  <41.392792, 35.533558, 21.783640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.472256, 35.756969, 21.746588>,  <41.604698, 36.129322, 21.684834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.472256, 35.756969, 21.746588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312170, 0.262465, 0.913051,
		-0.890461, 0.254120, -0.377495,
		-0.331104, -0.930879, 0.154386,
		41.372925, 35.477707, 21.792904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.845333, 36.160610, 21.897142>,  <41.604698, 36.129322, 21.684834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.845333, 36.160610, 21.897142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.006275, 35.823383, 22.039888>,  <41.102840, 35.621048, 22.125536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.006275, 35.823383, 22.039888>,  <40.845333, 36.160610, 21.897142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.006275, 35.823383, 22.039888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242631, 0.277669, 0.929532,
		-0.882748, -0.460584, -0.092834,
		0.402351, -0.843067, 0.356863,
		41.126980, 35.570465, 22.146948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.521160, 35.901802, 22.454500>,  <40.845333, 36.160610, 21.897142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.521160, 35.901802, 22.454500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.858078, 35.690350, 22.496618>,  <41.060230, 35.563480, 22.521889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.858078, 35.690350, 22.496618>,  <40.521160, 35.901802, 22.454500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.858078, 35.690350, 22.496618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044303, 0.126790, 0.990940,
		-0.537189, -0.839331, 0.083375,
		0.842297, -0.528628, 0.105295,
		41.110767, 35.531761, 22.528208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.367741, 35.307682, 22.896265>,  <40.521160, 35.901802, 22.454500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.367741, 35.307682, 22.896265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.760769, 35.376289, 22.924953>,  <40.996586, 35.417454, 22.942167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.760769, 35.376289, 22.924953>,  <40.367741, 35.307682, 22.896265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.760769, 35.376289, 22.924953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078428, 0.032636, 0.996385,
		0.168561, -0.984639, 0.045519,
		0.982566, 0.171522, 0.071722,
		41.055538, 35.427746, 22.946470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.543194, 34.810970, 23.404966>,  <40.367741, 35.307682, 22.896265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.543194, 34.810970, 23.404966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.830437, 35.089306, 23.400412>,  <41.002785, 35.256306, 23.397678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.830437, 35.089306, 23.400412>,  <40.543194, 34.810970, 23.404966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.830437, 35.089306, 23.400412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020135, -0.004419, 0.999788,
		0.695639, -0.718186, -0.017184,
		0.718109, 0.695837, -0.011386,
		41.045868, 35.298058, 23.396996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.990505, 34.645149, 23.943367>,  <40.543194, 34.810970, 23.404966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.990505, 34.645149, 23.943367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.041733, 35.034481, 23.867226>,  <41.072468, 35.268078, 23.821541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.041733, 35.034481, 23.867226>,  <40.990505, 34.645149, 23.943367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.041733, 35.034481, 23.867226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062685, 0.199496, 0.977892,
		0.989783, -0.113302, 0.086561,
		0.128066, 0.973326, -0.190355,
		41.080154, 35.326477, 23.810120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.476051, 34.809120, 24.419926>,  <40.990505, 34.645149, 23.943367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.476051, 34.809120, 24.419926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.269951, 35.130878, 24.301624>,  <41.146290, 35.323933, 24.230642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.269951, 35.130878, 24.301624>,  <41.476051, 34.809120, 24.419926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.269951, 35.130878, 24.301624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153865, 0.252662, 0.955242,
		0.843117, 0.537692, -0.006416,
		-0.515247, 0.804393, -0.295755,
		41.115376, 35.372196, 24.212898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.697815, 35.358719, 24.805094>,  <41.476051, 34.809120, 24.419926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.697815, 35.358719, 24.805094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.341728, 35.475792, 24.665464>,  <41.128078, 35.546036, 24.581686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.341728, 35.475792, 24.665464>,  <41.697815, 35.358719, 24.805094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.341728, 35.475792, 24.665464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297474, 0.206843, 0.932054,
		0.345003, 0.933569, -0.097068,
		-0.890215, 0.292686, -0.349074,
		41.074665, 35.563599, 24.560741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.539806, 35.907780, 25.212185>,  <41.697815, 35.358719, 24.805094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.539806, 35.907780, 25.212185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.176388, 35.818897, 25.070671>,  <40.958336, 35.765568, 24.985764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.176388, 35.818897, 25.070671>,  <41.539806, 35.907780, 25.212185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.176388, 35.818897, 25.070671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409024, 0.300694, 0.861558,
		-0.085060, 0.927475, -0.364082,
		-0.908551, -0.222203, -0.353782,
		40.903824, 35.752235, 24.964537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.076725, 36.436390, 25.512533>,  <41.539806, 35.907780, 25.212185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.076725, 36.436390, 25.512533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.854603, 36.123383, 25.399893>,  <40.721329, 35.935577, 25.332310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.854603, 36.123383, 25.399893>,  <41.076725, 36.436390, 25.512533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.854603, 36.123383, 25.399893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471565, 0.017366, 0.881660,
		-0.685025, 0.622385, -0.378652,
		-0.555308, -0.782519, -0.281599,
		40.688011, 35.888626, 25.315413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.363354, 36.566040, 25.565662>,  <41.076725, 36.436390, 25.512533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.363354, 36.566040, 25.565662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.418877, 36.170570, 25.588488>,  <40.452190, 35.933289, 25.602182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.418877, 36.170570, 25.588488>,  <40.363354, 36.566040, 25.565662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.418877, 36.170570, 25.588488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676033, -0.052488, 0.735000,
		-0.723681, -0.140596, -0.675662,
		0.138803, -0.988675, 0.057063,
		40.460518, 35.873966, 25.605606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.679504, 36.430878, 25.745220>,  <40.363354, 36.566040, 25.565662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.679504, 36.430878, 25.745220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.874645, 36.092113, 25.829834>,  <39.991730, 35.888855, 25.880602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.874645, 36.092113, 25.829834>,  <39.679504, 36.430878, 25.745220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.874645, 36.092113, 25.829834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465549, -0.047437, 0.883750,
		-0.738420, -0.529620, -0.417419,
		0.487853, -0.846908, 0.211536,
		40.021000, 35.838039, 25.893295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.155499, 35.900505, 25.803909>,  <39.679504, 36.430878, 25.745220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.155499, 35.900505, 25.803909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.488270, 35.772659, 25.985344>,  <39.687931, 35.695950, 26.094204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.488270, 35.772659, 25.985344>,  <39.155499, 35.900505, 25.803909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.488270, 35.772659, 25.985344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515741, -0.143823, 0.844586,
		-0.204710, -0.936568, -0.284491,
		0.831929, -0.319619, 0.453584,
		39.737850, 35.676773, 26.121420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.862103, 35.315651, 26.222336>,  <39.155499, 35.900505, 25.803909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.862103, 35.315651, 26.222336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.212719, 35.420994, 26.383490>,  <39.423088, 35.484200, 26.480181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.212719, 35.420994, 26.383490>,  <38.862103, 35.315651, 26.222336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.212719, 35.420994, 26.383490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402580, -0.057649, 0.913568,
		0.263824, -0.962973, 0.055492,
		0.876542, 0.263361, 0.402884,
		39.475681, 35.500000, 26.504354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.860886, 34.839207, 26.723854>,  <38.862103, 35.315651, 26.222336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.860886, 34.839207, 26.723854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.126781, 35.125744, 26.808676>,  <39.286320, 35.297665, 26.859570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.126781, 35.125744, 26.808676>,  <38.860886, 34.839207, 26.723854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.126781, 35.125744, 26.808676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209833, -0.093394, 0.973267,
		0.716997, -0.691470, 0.088229,
		0.664744, 0.716343, 0.212056,
		39.326206, 35.340649, 26.872293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.203598, 34.555092, 27.299421>,  <38.860886, 34.839207, 26.723854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.203598, 34.555092, 27.299421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.294716, 34.944427, 27.288708>,  <39.349388, 35.178028, 27.282280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.294716, 34.944427, 27.288708>,  <39.203598, 34.555092, 27.299421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.294716, 34.944427, 27.288708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073791, 0.010171, 0.997222,
		0.970909, -0.229140, -0.069507,
		0.227797, 0.973340, -0.026784,
		39.363056, 35.236431, 27.280672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.844254, 34.657139, 27.770187>,  <39.203598, 34.555092, 27.299421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.844254, 34.657139, 27.770187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.623817, 34.988247, 27.728062>,  <39.491554, 35.186913, 27.702785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.623817, 34.988247, 27.728062>,  <39.844254, 34.657139, 27.770187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.623817, 34.988247, 27.728062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126332, 0.041989, 0.991099,
		0.824827, 0.559490, 0.081435,
		-0.551091, 0.827772, -0.105315,
		39.458488, 35.236580, 27.696466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.104317, 35.131435, 28.239523>,  <39.844254, 34.657139, 27.770187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.104317, 35.131435, 28.239523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.742577, 35.293583, 28.186104>,  <39.525532, 35.390869, 28.154053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.742577, 35.293583, 28.186104>,  <40.104317, 35.131435, 28.239523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.742577, 35.293583, 28.186104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171305, -0.058156, 0.983500,
		0.390910, 0.912303, 0.122034,
		-0.904347, 0.405365, -0.133548,
		39.471272, 35.415192, 28.146040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.016350, 35.736519, 28.766581>,  <40.104317, 35.131435, 28.239523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.016350, 35.736519, 28.766581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.644848, 35.641438, 28.652805>,  <39.421947, 35.584389, 28.584539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.644848, 35.641438, 28.652805>,  <40.016350, 35.736519, 28.766581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.644848, 35.641438, 28.652805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292458, -0.001589, 0.956277,
		-0.227760, 0.971337, -0.068042,
		-0.928759, -0.237701, -0.284437,
		39.366219, 35.570126, 28.567474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.664104, 36.331612, 28.979782>,  <40.016350, 35.736519, 28.766581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.664104, 36.331612, 28.979782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.413303, 36.022430, 28.940964>,  <39.262821, 35.836922, 28.917673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.413303, 36.022430, 28.940964>,  <39.664104, 36.331612, 28.979782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.413303, 36.022430, 28.940964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295034, 0.120317, 0.947881,
		-0.720987, 0.622956, -0.303485,
		-0.627003, -0.772948, -0.097047,
		39.225201, 35.790546, 28.911850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.017872, 36.463291, 29.471405>,  <39.664104, 36.331612, 28.979782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.017872, 36.463291, 29.471405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.012352, 36.074715, 29.376657>,  <39.009041, 35.841568, 29.319809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.012352, 36.074715, 29.376657>,  <39.017872, 36.463291, 29.471405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.012352, 36.074715, 29.376657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233580, -0.227203, 0.945420,
		-0.972240, 0.068375, -0.223774,
		-0.013801, -0.971444, -0.236867,
		39.008213, 35.783283, 29.305597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.462040, 36.280109, 29.814133>,  <39.017872, 36.463291, 29.471405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.462040, 36.280109, 29.814133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.655315, 35.937756, 29.740389>,  <38.771282, 35.732342, 29.696142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.655315, 35.937756, 29.740389>,  <38.462040, 36.280109, 29.814133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.655315, 35.937756, 29.740389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134433, -0.280602, 0.950363,
		-0.865133, -0.434423, -0.250643,
		0.483190, -0.855885, -0.184358,
		38.800274, 35.680988, 29.685081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.065823, 35.827179, 30.200294>,  <38.462040, 36.280109, 29.814133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.065823, 35.827179, 30.200294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.413010, 35.643353, 30.125002>,  <38.621323, 35.533058, 30.079826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.413010, 35.643353, 30.125002>,  <38.065823, 35.827179, 30.200294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.413010, 35.643353, 30.125002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029071, -0.331357, 0.943057,
		-0.495769, -0.824016, -0.274247,
		0.867968, -0.459566, -0.188232,
		38.673401, 35.505482, 30.068533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.953686, 35.039871, 30.471638>,  <38.065823, 35.827179, 30.200294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.953686, 35.039871, 30.471638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.339771, 35.142216, 30.450113>,  <38.571423, 35.203625, 30.437199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.339771, 35.142216, 30.450113>,  <37.953686, 35.039871, 30.471638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.339771, 35.142216, 30.450113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135544, -0.313672, 0.939807,
		0.223584, -0.914409, -0.337441,
		0.965214, 0.255863, -0.053810,
		38.629337, 35.218975, 30.433969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.296314, 34.603695, 30.785803>,  <37.953686, 35.039871, 30.471638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.296314, 34.603695, 30.785803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.577885, 34.886398, 30.814049>,  <38.746826, 35.056019, 30.830996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.577885, 34.886398, 30.814049>,  <38.296314, 34.603695, 30.785803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.577885, 34.886398, 30.814049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353826, -0.435127, 0.827932,
		0.615874, -0.557815, -0.556365,
		0.703922, 0.706759, 0.070614,
		38.789062, 35.098427, 30.835234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.821457, 34.228065, 31.026066>,  <38.296314, 34.603695, 30.785803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.821457, 34.228065, 31.026066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.908276, 34.615093, 31.077753>,  <38.960365, 34.847309, 31.108765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.908276, 34.615093, 31.077753>,  <38.821457, 34.228065, 31.026066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.908276, 34.615093, 31.077753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493678, -0.222995, 0.840568,
		0.842125, -0.118648, -0.526069,
		0.217043, 0.967572, 0.129216,
		38.973389, 34.905365, 31.116518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.519142, 34.224091, 31.114340>,  <38.821457, 34.228065, 31.026066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.519142, 34.224091, 31.114340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.378963, 34.577133, 31.239685>,  <39.294857, 34.788960, 31.314892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.378963, 34.577133, 31.239685>,  <39.519142, 34.224091, 31.114340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.378963, 34.577133, 31.239685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423469, -0.149106, 0.893555,
		0.835380, 0.445845, -0.321501,
		-0.350449, 0.882604, 0.313362,
		39.273830, 34.841915, 31.333694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.068592, 34.513550, 31.447817>,  <39.519142, 34.224091, 31.114340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.068592, 34.513550, 31.447817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.754379, 34.716568, 31.589430>,  <39.565853, 34.838379, 31.674397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.754379, 34.716568, 31.589430>,  <40.068592, 34.513550, 31.447817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.754379, 34.716568, 31.589430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294736, -0.196188, 0.935223,
		0.544128, 0.838990, 0.004518,
		-0.785529, 0.507549, 0.354032,
		39.518719, 34.868832, 31.695639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.334743, 34.951775, 31.921194>,  <40.068592, 34.513550, 31.447817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.334743, 34.951775, 31.921194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.947807, 34.895874, 32.005779>,  <39.715645, 34.862331, 32.056530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.947807, 34.895874, 32.005779>,  <40.334743, 34.951775, 31.921194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.947807, 34.895874, 32.005779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230264, -0.135797, 0.963607,
		-0.105952, 0.980830, 0.163543,
		-0.967343, -0.139754, 0.211462,
		39.657604, 34.853947, 32.069218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.247784, 35.395012, 32.454605>,  <40.334743, 34.951775, 31.921194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.247784, 35.395012, 32.454605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.975777, 35.102592, 32.477013>,  <39.812572, 34.927139, 32.490459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.975777, 35.102592, 32.477013>,  <40.247784, 35.395012, 32.454605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.975777, 35.102592, 32.477013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209429, -0.120450, 0.970377,
		-0.702646, 0.671609, 0.235011,
		-0.680021, -0.731050, 0.056021,
		39.771770, 34.883278, 32.493820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.024384, 35.516335, 33.127987>,  <40.247784, 35.395012, 32.454605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.024384, 35.516335, 33.127987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.912205, 35.147820, 33.020226>,  <39.844898, 34.926712, 32.955570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.912205, 35.147820, 33.020226>,  <40.024384, 35.516335, 33.127987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.912205, 35.147820, 33.020226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371596, -0.362989, 0.854492,
		-0.885024, 0.139529, 0.444145,
		-0.280446, -0.921288, -0.269405,
		39.828072, 34.871433, 32.939404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.696537, 35.248760, 33.719761>,  <40.024384, 35.516335, 33.127987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.696537, 35.248760, 33.719761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.761742, 34.910637, 33.516239>,  <39.800865, 34.707764, 33.394127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.761742, 34.910637, 33.516239>,  <39.696537, 35.248760, 33.719761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.761742, 34.910637, 33.516239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173223, -0.483176, 0.858216,
		-0.971298, -0.228040, 0.067661,
		0.163016, -0.845304, -0.508809,
		39.810646, 34.657047, 33.363598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.362087, 34.599579, 34.060978>,  <39.696537, 35.248760, 33.719761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.362087, 34.599579, 34.060978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.656563, 34.462059, 33.827797>,  <39.833248, 34.379547, 33.687889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.656563, 34.462059, 33.827797>,  <39.362087, 34.599579, 34.060978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.656563, 34.462059, 33.827797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351709, -0.541567, 0.763549,
		-0.578220, -0.767140, -0.277772,
		0.736181, -0.343805, -0.582955,
		39.877419, 34.358917, 33.652912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.340775, 33.833790, 34.068497>,  <39.362087, 34.599579, 34.060978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.340775, 33.833790, 34.068497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.706146, 33.967091, 33.975044>,  <39.925369, 34.047073, 33.918972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.706146, 33.967091, 33.975044>,  <39.340775, 33.833790, 34.068497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.706146, 33.967091, 33.975044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402585, -0.655621, 0.638816,
		0.059719, -0.677570, -0.733029,
		0.913433, 0.333256, -0.233627,
		39.980175, 34.067066, 33.904957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.670570, 33.264950, 34.178200>,  <39.340775, 33.833790, 34.068497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.670570, 33.264950, 34.178200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.001656, 33.474930, 34.098885>,  <40.200306, 33.600918, 34.051296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.001656, 33.474930, 34.098885>,  <39.670570, 33.264950, 34.178200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.001656, 33.474930, 34.098885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537684, -0.640830, 0.547936,
		0.160568, -0.560151, -0.812680,
		0.827716, 0.524946, -0.198287,
		40.249969, 33.632412, 34.039398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.231728, 32.782970, 33.878860>,  <39.670570, 33.264950, 34.178200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.231728, 32.782970, 33.878860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.374310, 33.108753, 34.061989>,  <40.459858, 33.304222, 34.171867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.374310, 33.108753, 34.061989>,  <40.231728, 32.782970, 33.878860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.374310, 33.108753, 34.061989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570843, -0.577761, 0.583379,
		0.739649, 0.053400, -0.670871,
		0.356450, 0.814458, 0.457823,
		40.481243, 33.353092, 34.199337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.986668, 32.725002, 33.949932>,  <40.231728, 32.782970, 33.878860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.986668, 32.725002, 33.949932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.896999, 32.987339, 34.238270>,  <40.843197, 33.144741, 34.411274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.896999, 32.987339, 34.238270>,  <40.986668, 32.725002, 33.949932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.896999, 32.987339, 34.238270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539971, -0.532168, 0.652096,
		0.811283, 0.535417, -0.234838,
		-0.224170, 0.655839, 0.720849,
		40.829750, 33.184090, 34.454525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.493713, 32.721912, 34.415749>,  <40.986668, 32.725002, 33.949932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.493713, 32.721912, 34.415749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.231010, 32.911694, 34.650208>,  <41.073391, 33.025562, 34.790882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.231010, 32.911694, 34.650208>,  <41.493713, 32.721912, 34.415749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.231010, 32.911694, 34.650208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498335, -0.310318, 0.809546,
		0.565981, 0.823772, -0.032632,
		-0.656756, 0.474449, 0.586149,
		41.033985, 33.054028, 34.826054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.913910, 32.954155, 34.849102>,  <41.493713, 32.721912, 34.415749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.913910, 32.954155, 34.849102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.551754, 32.953091, 35.018929>,  <41.334461, 32.952454, 35.120823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.551754, 32.953091, 35.018929>,  <41.913910, 32.954155, 34.849102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.551754, 32.953091, 35.018929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402833, -0.321278, 0.857033,
		0.134124, 0.946981, 0.291955,
		-0.905393, -0.002660, 0.424567,
		41.280136, 32.952293, 35.146297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.849041, 33.419292, 35.409821>,  <41.913910, 32.954155, 34.849102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.849041, 33.419292, 35.409821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.602322, 33.109241, 35.464573>,  <41.454288, 32.923210, 35.497425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.602322, 33.109241, 35.464573>,  <41.849041, 33.419292, 35.409821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.602322, 33.109241, 35.464573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457610, -0.211637, 0.863599,
		-0.640431, 0.595304, 0.485244,
		-0.616799, -0.775128, 0.136878,
		41.417282, 32.876701, 35.505638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.526772, 33.472286, 36.107338>,  <41.849041, 33.419292, 35.409821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.526772, 33.472286, 36.107338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.533627, 33.093731, 35.978302>,  <41.537739, 32.866600, 35.900883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.533627, 33.093731, 35.978302>,  <41.526772, 33.472286, 36.107338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.533627, 33.093731, 35.978302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447797, -0.281205, 0.848765,
		-0.893971, -0.158996, 0.418970,
		0.017134, -0.946385, -0.322587,
		41.538765, 32.809814, 35.881527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.248207, 33.026882, 36.743656>,  <41.526772, 33.472286, 36.107338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.248207, 33.026882, 36.743656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.451073, 32.812397, 36.473766>,  <41.572792, 32.683704, 36.311832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.451073, 32.812397, 36.473766>,  <41.248207, 33.026882, 36.743656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.451073, 32.812397, 36.473766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564260, -0.385176, 0.730240,
		-0.651455, -0.751073, 0.107217,
		0.507167, -0.536217, -0.674725,
		41.603222, 32.651531, 36.271347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.825832, 32.768761, 37.064503>,  <41.248207, 33.026882, 36.743656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.825832, 32.768761, 37.064503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.957405, 32.611290, 36.721149>,  <42.036350, 32.516808, 36.515137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.957405, 32.611290, 36.721149>,  <41.825832, 32.768761, 37.064503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.957405, 32.611290, 36.721149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691106, -0.519100, 0.502899,
		-0.643566, -0.758655, 0.101322,
		0.328931, -0.393673, -0.858386,
		42.056084, 32.493187, 36.463634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.684822, 32.071808, 37.173344>,  <41.825832, 32.768761, 37.064503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.684822, 32.071808, 37.173344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.005615, 32.161644, 36.951935>,  <42.198090, 32.215546, 36.819088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.005615, 32.161644, 36.951935>,  <41.684822, 32.071808, 37.173344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.005615, 32.161644, 36.951935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592098, -0.421494, 0.686850,
		-0.079046, -0.878579, -0.471009,
		0.801980, 0.224592, -0.553523,
		42.246208, 32.229023, 36.785877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.175945, 31.437416, 37.028442>,  <41.684822, 32.071808, 37.173344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.175945, 31.437416, 37.028442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.391151, 31.774347, 37.015621>,  <42.520275, 31.976505, 37.007931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.391151, 31.774347, 37.015621>,  <42.175945, 31.437416, 37.028442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.391151, 31.774347, 37.015621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692609, -0.420074, 0.586370,
		0.480453, -0.337671, -0.809409,
		0.538012, 0.842327, -0.032048,
		42.552555, 32.027046, 37.006008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.870117, 31.240314, 36.871326>,  <42.175945, 31.437416, 37.028442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.870117, 31.240314, 36.871326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.888268, 31.599445, 37.046528>,  <42.899158, 31.814924, 37.151649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.888268, 31.599445, 37.046528>,  <42.870117, 31.240314, 36.871326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.888268, 31.599445, 37.046528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666459, -0.353825, 0.656232,
		0.744160, 0.262138, -0.614418,
		0.045373, 0.897826, 0.438006,
		42.901878, 31.868793, 37.177929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.561657, 31.270451, 37.155724>,  <42.870117, 31.240314, 36.871326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.561657, 31.270451, 37.155724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.385349, 31.573582, 37.348148>,  <43.279564, 31.755461, 37.463604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.385349, 31.573582, 37.348148>,  <43.561657, 31.270451, 37.155724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.385349, 31.573582, 37.348148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435059, -0.288416, 0.852959,
		0.785142, 0.585249, -0.202574,
		-0.440768, 0.757826, 0.481065,
		43.253120, 31.800930, 37.492470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.031319, 31.738377, 37.482208>,  <43.561657, 31.270451, 37.155724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.031319, 31.738377, 37.482208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.695091, 31.769802, 37.696602>,  <43.493355, 31.788656, 37.825237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.695091, 31.769802, 37.696602>,  <44.031319, 31.738377, 37.482208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.695091, 31.769802, 37.696602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456176, -0.430964, 0.778571,
		0.292157, 0.898943, 0.326414,
		-0.840564, 0.078563, 0.535985,
		43.442921, 31.793371, 37.857399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.262890, 32.025246, 38.262699>,  <44.031319, 31.738377, 37.482208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.262890, 32.025246, 38.262699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.901524, 31.853844, 38.256714>,  <43.684704, 31.751003, 38.253120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.901524, 31.853844, 38.256714>,  <44.262890, 32.025246, 38.262699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.901524, 31.853844, 38.256714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289478, -0.635310, 0.715950,
		-0.316297, 0.642468, 0.697991,
		-0.903415, -0.428505, -0.014966,
		43.630501, 31.725292, 38.252224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.158363, 31.935520, 39.012093>,  <44.262890, 32.025246, 38.262699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.158363, 31.935520, 39.012093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.888458, 31.689465, 38.848972>,  <43.726517, 31.541832, 38.751099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.888458, 31.689465, 38.848972>,  <44.158363, 31.935520, 39.012093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.888458, 31.689465, 38.848972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241117, -0.705969, 0.665936,
		-0.697539, 0.351019, 0.624680,
		-0.674761, -0.615137, -0.407805,
		43.686031, 31.504923, 38.726631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.769669, 31.524845, 39.536617>,  <44.158363, 31.935520, 39.012093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.769669, 31.524845, 39.536617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.757343, 31.289530, 39.213390>,  <43.749950, 31.148340, 39.019455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.757343, 31.289530, 39.213390>,  <43.769669, 31.524845, 39.536617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.757343, 31.289530, 39.213390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124973, -0.804370, 0.580837,
		-0.991682, -0.083091, 0.098303,
		-0.030810, -0.588290, -0.808063,
		43.748100, 31.113043, 38.970970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.419529, 30.895519, 39.677341>,  <43.769669, 31.524845, 39.536617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.419529, 30.895519, 39.677341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.663578, 30.794344, 39.377003>,  <43.810005, 30.733639, 39.196800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.663578, 30.794344, 39.377003>,  <43.419529, 30.895519, 39.677341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.663578, 30.794344, 39.377003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199763, -0.867950, 0.454707,
		-0.766713, -0.427418, -0.479025,
		0.610119, -0.252938, -0.750850,
		43.846615, 30.718462, 39.151749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.240444, 30.169741, 40.101387>,  <43.419529, 30.895519, 39.677341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.240444, 30.169741, 40.101387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.290703, 29.872723, 39.838223>,  <43.320858, 29.694511, 39.680325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.290703, 29.872723, 39.838223>,  <43.240444, 30.169741, 40.101387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.290703, 29.872723, 39.838223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499544, 0.620310, -0.604708,
		0.857129, -0.252676, 0.448871,
		0.125644, -0.742543, -0.657908,
		43.328396, 29.649960, 39.640850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.956623, 30.178316, 39.878536>,  <43.240444, 30.169741, 40.101387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.956623, 30.178316, 39.878536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.664272, 30.060242, 39.632385>,  <43.488861, 29.989397, 39.484695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.664272, 30.060242, 39.632385>,  <43.956623, 30.178316, 39.878536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.664272, 30.060242, 39.632385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302554, 0.668072, -0.679809,
		0.611783, -0.683040, -0.398969,
		-0.730878, -0.295186, -0.615372,
		43.445011, 29.971685, 39.447773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.230804, 30.191626, 39.143539>,  <43.956623, 30.178316, 39.878536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.230804, 30.191626, 39.143539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.836845, 30.228039, 39.202450>,  <43.600471, 30.249887, 39.237797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.836845, 30.228039, 39.202450>,  <44.230804, 30.191626, 39.143539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.836845, 30.228039, 39.202450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036661, 0.721682, -0.691253,
		-0.169213, -0.686213, -0.707445,
		-0.984897, 0.091033, 0.147275,
		43.541378, 30.255348, 39.246632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.778736, 30.113800, 38.479591>,  <44.230804, 30.191626, 39.143539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.778736, 30.113800, 38.479591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.574673, 30.340115, 38.738705>,  <43.452232, 30.475904, 38.894173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.574673, 30.340115, 38.738705>,  <43.778736, 30.113800, 38.479591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.574673, 30.340115, 38.738705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132554, 0.692443, -0.709192,
		-0.849803, -0.447669, -0.278260,
		-0.510162, 0.565788, 0.647780,
		43.421623, 30.509851, 38.933037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.292831, 30.331852, 38.128769>,  <43.778736, 30.113800, 38.479591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.292831, 30.331852, 38.128769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.342770, 30.586674, 38.433025>,  <43.372734, 30.739567, 38.615578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.342770, 30.586674, 38.433025>,  <43.292831, 30.331852, 38.128769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.342770, 30.586674, 38.433025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213418, 0.765937, -0.606459,
		-0.968951, -0.086622, 0.231582,
		0.124845, 0.637053, 0.760642,
		43.380222, 30.777790, 38.661217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.764137, 30.722271, 38.125355>,  <43.292831, 30.331852, 38.128769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.764137, 30.722271, 38.125355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.023827, 30.956993, 38.318916>,  <43.179642, 31.097826, 38.435055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.023827, 30.956993, 38.318916>,  <42.764137, 30.722271, 38.125355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.023827, 30.956993, 38.318916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210820, 0.750124, -0.626792,
		-0.730795, 0.304912, 0.610710,
		0.649225, 0.586807, 0.483906,
		43.218594, 31.133036, 38.464088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.433945, 31.298136, 38.382683>,  <42.764137, 30.722271, 38.125355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.433945, 31.298136, 38.382683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.808346, 31.426025, 38.323792>,  <43.032986, 31.502760, 38.288456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.808346, 31.426025, 38.323792>,  <42.433945, 31.298136, 38.382683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.808346, 31.426025, 38.323792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345805, 0.757133, -0.554227,
		-0.065728, 0.569670, 0.819241,
		0.936001, 0.319726, -0.147230,
		43.089146, 31.521944, 38.279621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.324757, 31.968903, 38.473812>,  <42.433945, 31.298136, 38.382683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.324757, 31.968903, 38.473812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.682667, 31.928349, 38.299873>,  <42.897415, 31.904016, 38.195511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.682667, 31.928349, 38.299873>,  <42.324757, 31.968903, 38.473812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.682667, 31.928349, 38.299873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253681, 0.686007, -0.681939,
		0.367449, 0.720497, 0.588104,
		0.894778, -0.101387, -0.434849,
		42.951099, 31.897932, 38.169418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.554401, 32.597561, 38.156830>,  <42.324757, 31.968903, 38.473812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.554401, 32.597561, 38.156830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.731163, 32.298958, 37.957855>,  <42.837219, 32.119797, 37.838470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.731163, 32.298958, 37.957855>,  <42.554401, 32.597561, 38.156830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.731163, 32.298958, 37.957855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231289, 0.440959, -0.867214,
		0.866732, 0.498280, 0.022204,
		0.441906, -0.746507, -0.497440,
		42.863735, 32.075005, 37.808624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.109653, 33.028950, 37.754280>,  <42.554401, 32.597561, 38.156830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.109653, 33.028950, 37.754280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.015148, 32.681129, 37.580818>,  <42.958447, 32.472435, 37.476742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.015148, 32.681129, 37.580818>,  <43.109653, 33.028950, 37.754280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.015148, 32.681129, 37.580818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383982, 0.493515, -0.780385,
		0.892601, -0.017862, -0.450493,
		-0.236264, -0.869554, -0.433653,
		42.944267, 32.420261, 37.450722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.291195, 33.091850, 37.054890>,  <43.109653, 33.028950, 37.754280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.291195, 33.091850, 37.054890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.066635, 32.761501, 37.033848>,  <42.931900, 32.563293, 37.021221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.066635, 32.761501, 37.033848>,  <43.291195, 33.091850, 37.054890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.066635, 32.761501, 37.033848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475836, 0.374163, -0.795978,
		0.677058, -0.421832, -0.603035,
		-0.561402, -0.825869, -0.052607,
		42.898216, 32.513741, 37.018066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.339558, 32.675171, 36.342815>,  <43.291195, 33.091850, 37.054890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.339558, 32.675171, 36.342815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.992722, 32.639496, 36.538853>,  <42.784618, 32.618092, 36.656475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.992722, 32.639496, 36.538853>,  <43.339558, 32.675171, 36.342815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.992722, 32.639496, 36.538853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487051, 0.358244, -0.796519,
		-0.104537, -0.929358, -0.354069,
		-0.867094, -0.089184, 0.490095,
		42.732594, 32.612740, 36.685883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.812355, 32.075779, 36.141869>,  <43.339558, 32.675171, 36.342815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.812355, 32.075779, 36.141869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.672497, 32.429653, 36.265205>,  <42.588581, 32.641979, 36.339207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.672497, 32.429653, 36.265205>,  <42.812355, 32.075779, 36.141869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.672497, 32.429653, 36.265205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428133, 0.141866, -0.892511,
		-0.833337, -0.444075, 0.329161,
		-0.349645, 0.884687, 0.308345,
		42.567604, 32.695061, 36.357708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.262127, 31.828297, 35.636894>,  <42.812355, 32.075779, 36.141869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.262127, 31.828297, 35.636894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.003319, 32.057716, 35.837856>,  <41.848034, 32.195370, 35.958435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.003319, 32.057716, 35.837856>,  <42.262127, 31.828297, 35.636894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.003319, 32.057716, 35.837856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566734, 0.079042, -0.820100,
		-0.510078, -0.815350, 0.273908,
		-0.647018, 0.573548, 0.502404,
		41.809212, 32.229782, 35.988579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.445244, 31.519066, 35.591766>,  <42.262127, 31.828297, 35.636894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.445244, 31.519066, 35.591766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.466866, 31.909960, 35.673824>,  <41.479839, 32.144497, 35.723061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.466866, 31.909960, 35.673824>,  <41.445244, 31.519066, 35.591766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.466866, 31.909960, 35.673824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671667, 0.187608, -0.716705,
		-0.738878, -0.099050, 0.666519,
		0.054055, 0.977237, 0.205148,
		41.483082, 32.203133, 35.735367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.817432, 31.770332, 35.624454>,  <41.445244, 31.519066, 35.591766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.817432, 31.770332, 35.624454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.017666, 32.111595, 35.565754>,  <41.137806, 32.316353, 35.530533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.017666, 32.111595, 35.565754>,  <40.817432, 31.770332, 35.624454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.017666, 32.111595, 35.565754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608485, 0.226185, -0.760649,
		-0.615761, 0.470065, 0.632359,
		0.500584, 0.853159, -0.146752,
		41.167843, 32.367542, 35.521729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.394901, 32.273514, 35.647556>,  <40.817432, 31.770332, 35.624454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.394901, 32.273514, 35.647556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.705524, 32.522484, 35.686638>,  <40.891899, 32.671867, 35.710087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.705524, 32.522484, 35.686638>,  <40.394901, 32.273514, 35.647556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.705524, 32.522484, 35.686638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331335, 0.535337, -0.776937,
		-0.535892, 0.570962, 0.621951,
		0.776554, 0.622428, 0.097703,
		40.938492, 32.709213, 35.715950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.098083, 32.884506, 35.728069>,  <40.394901, 32.273514, 35.647556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.098083, 32.884506, 35.728069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.465481, 32.953861, 35.585915>,  <40.685921, 32.995476, 35.500622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.465481, 32.953861, 35.585915>,  <40.098083, 32.884506, 35.728069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.465481, 32.953861, 35.585915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391016, 0.532182, -0.750925,
		0.058929, 0.828685, 0.556604,
		0.918495, 0.173390, -0.355390,
		40.741028, 33.005878, 35.479298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.042141, 33.478855, 35.494637>,  <40.098083, 32.884506, 35.728069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.042141, 33.478855, 35.494637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.376301, 33.360016, 35.309666>,  <40.576797, 33.288712, 35.198685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.376301, 33.360016, 35.309666>,  <40.042141, 33.478855, 35.494637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.376301, 33.360016, 35.309666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174128, 0.654931, -0.735354,
		0.521332, 0.694836, 0.495395,
		0.835400, -0.297101, -0.462427,
		40.626923, 33.270885, 35.170937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.406345, 34.094326, 35.278980>,  <40.042141, 33.478855, 35.494637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.406345, 34.094326, 35.278980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.519863, 33.798706, 35.034599>,  <40.587975, 33.621334, 34.887970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.519863, 33.798706, 35.034599>,  <40.406345, 34.094326, 35.278980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.519863, 33.798706, 35.034599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207762, 0.574622, -0.791609,
		0.936107, 0.351587, 0.009528,
		0.283794, -0.739051, -0.610954,
		40.605000, 33.576992, 34.851315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.937546, 34.427197, 34.894894>,  <40.406345, 34.094326, 35.278980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.937546, 34.427197, 34.894894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.768829, 34.119358, 34.703140>,  <40.667599, 33.934654, 34.588089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.768829, 34.119358, 34.703140>,  <40.937546, 34.427197, 34.894894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.768829, 34.119358, 34.703140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100407, 0.565116, -0.818879,
		0.901116, -0.297262, -0.315633,
		-0.421791, -0.769597, -0.479388,
		40.642292, 33.888477, 34.559322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.167015, 34.470516, 34.271935>,  <40.937546, 34.427197, 34.894894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.167015, 34.470516, 34.271935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.867775, 34.214752, 34.200935>,  <40.688232, 34.061295, 34.158337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.867775, 34.214752, 34.200935>,  <41.167015, 34.470516, 34.271935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.867775, 34.214752, 34.200935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160916, 0.434303, -0.886277,
		0.643783, -0.634458, -0.427792,
		-0.748097, -0.639409, -0.177503,
		40.643345, 34.022930, 34.147686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.197189, 34.359184, 33.466427>,  <41.167015, 34.470516, 34.271935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.197189, 34.359184, 33.466427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.838806, 34.286903, 33.628712>,  <40.623775, 34.243534, 33.726082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.838806, 34.286903, 33.628712>,  <41.197189, 34.359184, 33.466427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.838806, 34.286903, 33.628712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443666, 0.322347, -0.836213,
		0.020329, -0.929214, -0.368983,
		-0.895961, -0.180705, 0.405708,
		40.570019, 34.232693, 33.750423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.877190, 33.974937, 32.933445>,  <41.197189, 34.359184, 33.466427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.877190, 33.974937, 32.933445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.571945, 34.093372, 33.163223>,  <40.388798, 34.164433, 33.301090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.571945, 34.093372, 33.163223>,  <40.877190, 33.974937, 32.933445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.571945, 34.093372, 33.163223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512967, 0.263156, -0.817076,
		-0.393096, -0.918194, -0.048935,
		-0.763113, 0.296087, 0.574449,
		40.343010, 34.182198, 33.335560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.183010, 33.640453, 32.689701>,  <40.877190, 33.974937, 32.933445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.183010, 33.640453, 32.689701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.061012, 33.955715, 32.903542>,  <39.987812, 34.144871, 33.031845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.061012, 33.955715, 32.903542>,  <40.183010, 33.640453, 32.689701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.061012, 33.955715, 32.903542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580956, 0.290828, -0.760204,
		-0.754632, -0.542436, 0.369181,
		-0.304994, 0.788152, 0.534599,
		39.969513, 34.192162, 33.063923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.628220, 33.464260, 32.205112>,  <40.183010, 33.640453, 32.689701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.628220, 33.464260, 32.205112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.816158, 33.144672, 32.355255>,  <40.928921, 32.952919, 32.445339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.816158, 33.144672, 32.355255>,  <40.628220, 33.464260, 32.205112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.816158, 33.144672, 32.355255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637421, 0.012908, -0.770407,
		0.610689, 0.601230, 0.515346,
		0.469844, -0.798972, 0.375354,
		40.957111, 32.904980, 32.467861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.333405, 33.208923, 32.087234>,  <40.628220, 33.464260, 32.205112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.333405, 33.208923, 32.087234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.203758, 33.127625, 31.717663>,  <41.125969, 33.078846, 31.495920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.203758, 33.127625, 31.717663>,  <41.333405, 33.208923, 32.087234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.203758, 33.127625, 31.717663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188978, 0.970874, -0.147275,
		0.926949, 0.126867, -0.353087,
		-0.324118, -0.203242, -0.923926,
		41.106522, 33.066650, 31.440485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.666214, 33.625130, 31.607943>,  <41.333405, 33.208923, 32.087234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.666214, 33.625130, 31.607943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.321518, 33.532909, 31.427166>,  <41.114700, 33.477577, 31.318699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.321518, 33.532909, 31.427166>,  <41.666214, 33.625130, 31.607943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.321518, 33.532909, 31.427166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114687, 0.956248, -0.269142,
		0.494221, -0.180097, -0.850477,
		-0.861738, -0.230554, -0.451943,
		41.062996, 33.463741, 31.291584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.057411, 34.181007, 31.211197>,  <41.666214, 33.625130, 31.607943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.057411, 34.181007, 31.211197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.733356, 34.415295, 31.221014>,  <41.538921, 34.555866, 31.226904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.733356, 34.415295, 31.221014>,  <42.057411, 34.181007, 31.211197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.733356, 34.415295, 31.221014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462905, -0.613455, -0.639837,
		-0.359710, -0.529719, 0.768118,
		-0.810140, 0.585722, 0.024543,
		41.490314, 34.591011, 31.228376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.669880, 33.881084, 31.428244>,  <42.057411, 34.181007, 31.211197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.669880, 33.881084, 31.428244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.735153, 33.551430, 31.645195>,  <42.774319, 33.353638, 31.775366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.735153, 33.551430, 31.645195>,  <42.669880, 33.881084, 31.428244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.735153, 33.551430, 31.645195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954956, 0.270048, 0.123013,
		-0.247848, 0.497876, 0.831079,
		0.163186, -0.824132, 0.542380,
		42.784107, 33.304192, 31.807909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.148403, 34.156803, 30.880978>,  <42.669880, 33.881084, 31.428244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.148403, 34.156803, 30.880978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.191097, 33.885426, 30.590237>,  <43.216713, 33.722599, 30.415792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.191097, 33.885426, 30.590237>,  <43.148403, 34.156803, 30.880978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.191097, 33.885426, 30.590237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.946765, -0.292651, 0.134129,
		-0.303715, 0.673846, -0.673564,
		0.106737, -0.678444, -0.726857,
		43.223118, 33.681892, 30.372181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.841339, 34.600700, 30.750330>,  <43.148403, 34.156803, 30.880978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.841339, 34.600700, 30.750330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.198925, 34.687534, 30.593513>,  <44.413479, 34.739635, 30.499424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.198925, 34.687534, 30.593513>,  <43.841339, 34.600700, 30.750330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.198925, 34.687534, 30.593513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182816, 0.622055, 0.761331,
		0.409146, -0.752277, 0.516410,
		0.893967, 0.217088, -0.392040,
		44.467113, 34.752663, 30.475901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.376991, 34.674511, 31.160782>,  <43.841339, 34.600700, 30.750330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.376991, 34.674511, 31.160782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.543777, 34.879078, 30.860226>,  <44.643848, 35.001820, 30.679892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.543777, 34.879078, 30.860226>,  <44.376991, 34.674511, 31.160782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.543777, 34.879078, 30.860226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307585, 0.698517, 0.646116,
		0.855295, -0.500526, 0.133954,
		0.416967, 0.511417, -0.751393,
		44.668869, 35.032501, 30.634808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.811813, 34.813267, 31.515036>,  <44.376991, 34.674511, 31.160782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.811813, 34.813267, 31.515036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.183582, 34.711227, 31.621700>,  <44.406643, 34.650005, 31.685699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.183582, 34.711227, 31.621700>,  <43.811813, 34.813267, 31.515036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.183582, 34.711227, 31.621700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113367, 0.490291, 0.864154,
		-0.351183, -0.833391, 0.426766,
		0.929418, -0.255095, 0.266661,
		44.462406, 34.634701, 31.701698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.850895, 34.478561, 32.165211>,  <43.811813, 34.813267, 31.515036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.850895, 34.478561, 32.165211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.182316, 34.685863, 32.080429>,  <44.381168, 34.810246, 32.029560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.182316, 34.685863, 32.080429>,  <43.850895, 34.478561, 32.165211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.182316, 34.685863, 32.080429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012015, 0.361997, 0.932102,
		0.559790, -0.774837, 0.293705,
		0.828547, 0.518252, -0.211952,
		44.430882, 34.841339, 32.016842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.487556, 34.236588, 32.508167>,  <43.850895, 34.478561, 32.165211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.487556, 34.236588, 32.508167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.496765, 34.627258, 32.422771>,  <44.502289, 34.861660, 32.371532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.496765, 34.627258, 32.422771>,  <44.487556, 34.236588, 32.508167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.496765, 34.627258, 32.422771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065286, 0.211624, 0.975168,
		0.997601, -0.036389, -0.058891,
		0.023023, 0.976673, -0.213493,
		44.503674, 34.920261, 32.358723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.125362, 34.628113, 32.795177>,  <44.487556, 34.236588, 32.508167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.125362, 34.628113, 32.795177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.742001, 34.584213, 32.900570>,  <44.511986, 34.557873, 32.963806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.742001, 34.584213, 32.900570>,  <45.125362, 34.628113, 32.795177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.742001, 34.584213, 32.900570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222108, 0.292990, 0.929960,
		-0.179256, 0.949796, -0.256427,
		-0.958403, -0.109746, 0.263478,
		44.454479, 34.551289, 32.979614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.418465, 34.625389, 33.515583>,  <45.125362, 34.628113, 32.795177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.418465, 34.625389, 33.515583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.218037, 34.297512, 33.626606>,  <45.097782, 34.100784, 33.693218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.218037, 34.297512, 33.626606>,  <45.418465, 34.625389, 33.515583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.218037, 34.297512, 33.626606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548737, -0.548937, -0.630520,
		0.669192, -0.163629, 0.724849,
		-0.501068, -0.819691, 0.277555,
		45.067715, 34.051605, 33.709873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.000149, 34.167370, 33.489925>,  <45.418465, 34.625389, 33.515583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.000149, 34.167370, 33.489925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.636501, 34.007309, 33.443661>,  <45.418312, 33.911274, 33.415901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.636501, 34.007309, 33.443661>,  <46.000149, 34.167370, 33.489925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.636501, 34.007309, 33.443661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388392, -0.714031, -0.582505,
		0.150506, -0.574489, 0.804556,
		-0.909120, -0.400154, -0.115661,
		45.363766, 33.887264, 33.408962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.564903, 33.810753, 34.080750>,  <46.000149, 34.167370, 33.489925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.564903, 33.810753, 34.080750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.677296, 33.468708, 34.255024>,  <45.744732, 33.263481, 34.359589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.677296, 33.468708, 34.255024>,  <45.564903, 33.810753, 34.080750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.677296, 33.468708, 34.255024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774126, 0.470279, 0.423753,
		-0.567253, 0.218211, 0.794108,
		0.280984, -0.855115, 0.435690,
		45.761593, 33.212173, 34.385731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.565147, 33.842964, 34.862301>,  <45.564903, 33.810753, 34.080750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.565147, 33.842964, 34.862301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.834240, 33.600475, 34.692627>,  <45.995697, 33.454983, 34.590824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.834240, 33.600475, 34.692627>,  <45.565147, 33.842964, 34.862301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.834240, 33.600475, 34.692627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731568, 0.459266, 0.503867,
		-0.110640, -0.649287, 0.752453,
		0.672731, -0.606219, -0.424184,
		46.036060, 33.418610, 34.565372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.038429, 33.429138, 35.349850>,  <45.565147, 33.842964, 34.862301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.038429, 33.429138, 35.349850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.248539, 33.546932, 35.030510>,  <46.374603, 33.617611, 34.838905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.248539, 33.546932, 35.030510>,  <46.038429, 33.429138, 35.349850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.248539, 33.546932, 35.030510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625558, 0.502384, 0.596899,
		0.576858, -0.812949, 0.079670,
		0.525273, 0.294488, -0.798351,
		46.406120, 33.635281, 34.791004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.766033, 33.424278, 35.375641>,  <46.038429, 33.429138, 35.349850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.766033, 33.424278, 35.375641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.687317, 33.723724, 35.122391>,  <46.640087, 33.903393, 34.970440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.687317, 33.723724, 35.122391>,  <46.766033, 33.424278, 35.375641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.687317, 33.723724, 35.122391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693133, 0.562938, 0.450186,
		0.693427, -0.350247, -0.629672,
		-0.196790, 0.748617, -0.633124,
		46.628281, 33.948311, 34.932453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.393040, 33.729374, 35.230614>,  <46.766033, 33.424278, 35.375641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.393040, 33.729374, 35.230614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.151379, 34.031925, 35.130299>,  <47.006382, 34.213455, 35.070110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.151379, 34.031925, 35.130299>,  <47.393040, 33.729374, 35.230614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.151379, 34.031925, 35.130299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583249, 0.634161, 0.507603,
		0.542979, 0.160398, -0.824285,
		-0.604148, 0.756381, -0.250784,
		46.970135, 34.258839, 35.055065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.659058, 34.299557, 34.781265>,  <47.393040, 33.729374, 35.230614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.659058, 34.299557, 34.781265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.406937, 34.446384, 35.054901>,  <47.255665, 34.534481, 35.219082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.406937, 34.446384, 35.054901>,  <47.659058, 34.299557, 34.781265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.406937, 34.446384, 35.054901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678073, 0.689400, 0.254842,
		-0.378070, 0.624492, -0.683428,
		-0.630301, 0.367066, 0.684092,
		47.217846, 34.556503, 35.260128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.981808, 34.925304, 35.009048>,  <47.659058, 34.299557, 34.781265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.981808, 34.925304, 35.009048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.683628, 34.879169, 35.271652>,  <47.504719, 34.851490, 35.429214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.683628, 34.879169, 35.271652>,  <47.981808, 34.925304, 35.009048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.683628, 34.879169, 35.271652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437187, 0.658874, 0.612170,
		-0.503160, 0.743359, -0.440735,
		-0.745451, -0.115336, 0.656506,
		47.459991, 34.844570, 35.468605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.530449, 33.005547, 23.763676> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.174717, 33.184010, 23.723600>,  <35.961277, 33.291088, 23.699554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.174717, 33.184010, 23.723600>,  <36.530449, 33.005547, 23.763676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.174717, 33.184010, 23.723600> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189082, -0.159314, 0.968952,
		0.416340, 0.880662, 0.226043,
		-0.889331, 0.446154, -0.100188,
		35.907917, 33.317856, 23.693544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.436943, 33.527374, 24.297255>,  <36.530449, 33.005547, 23.763676>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.436943, 33.527374, 24.297255> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.057045, 33.453133, 24.196423>,  <35.829105, 33.408588, 24.135923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.057045, 33.453133, 24.196423>,  <36.436943, 33.527374, 24.297255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.057045, 33.453133, 24.196423> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259251, 0.015041, 0.965693,
		-0.175442, 0.982510, -0.062402,
		-0.949741, -0.185601, -0.252078,
		35.772121, 33.397453, 24.120800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.122284, 34.042583, 24.575495>,  <36.436943, 33.527374, 24.297255>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.122284, 34.042583, 24.575495> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.851151, 33.751587, 24.532961>,  <35.688473, 33.576988, 24.507441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.851151, 33.751587, 24.532961>,  <36.122284, 34.042583, 24.575495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.851151, 33.751587, 24.532961> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222000, 0.064640, 0.972902,
		-0.700900, 0.683070, -0.205317,
		-0.677831, -0.727487, -0.106336,
		35.647800, 33.533340, 24.501060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.508854, 34.245445, 24.970232>,  <36.122284, 34.042583, 24.575495>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.508854, 34.245445, 24.970232> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.434578, 33.858746, 24.899900>,  <35.390015, 33.626724, 24.857700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.434578, 33.858746, 24.899900>,  <35.508854, 34.245445, 24.970232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.434578, 33.858746, 24.899900> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310596, -0.112022, 0.943918,
		-0.932229, 0.229884, -0.279468,
		-0.185686, -0.966749, -0.175831,
		35.378872, 33.568722, 24.847151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.954781, 34.176647, 25.369352>,  <35.508854, 34.245445, 24.970232>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.954781, 34.176647, 25.369352> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.102966, 33.808418, 25.319868>,  <35.191875, 33.587482, 25.290178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.102966, 33.808418, 25.319868>,  <34.954781, 34.176647, 25.369352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.102966, 33.808418, 25.319868> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246256, -0.225762, 0.942544,
		-0.895610, -0.318711, -0.310333,
		0.370461, -0.920573, -0.123710,
		35.214104, 33.532246, 25.282755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.477539, 33.772121, 25.669479>,  <34.954781, 34.176647, 25.369352>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.477539, 33.772121, 25.669479> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.812405, 33.553349, 25.667524>,  <35.013325, 33.422085, 25.666351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.812405, 33.553349, 25.667524>,  <34.477539, 33.772121, 25.669479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.812405, 33.553349, 25.667524> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165657, -0.262065, 0.950726,
		-0.521259, -0.795105, -0.309994,
		0.837165, -0.546927, -0.004889,
		35.063553, 33.389271, 25.666058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.251610, 33.273479, 25.987329>,  <34.477539, 33.772121, 25.669479>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.251610, 33.273479, 25.987329> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.645538, 33.246803, 26.051426>,  <34.881897, 33.230797, 26.089884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.645538, 33.246803, 26.051426>,  <34.251610, 33.273479, 25.987329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.645538, 33.246803, 26.051426> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172202, -0.259967, 0.950139,
		-0.021711, -0.963312, -0.267506,
		0.984822, -0.066694, 0.160240,
		34.940987, 33.226795, 26.099499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.449066, 32.732143, 26.283371>,  <34.251610, 33.273479, 25.987329>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.449066, 32.732143, 26.283371> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.791386, 32.917198, 26.375957>,  <34.996777, 33.028233, 26.431509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.791386, 32.917198, 26.375957>,  <34.449066, 32.732143, 26.283371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.791386, 32.917198, 26.375957> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035839, -0.393343, 0.918693,
		0.516068, -0.794511, -0.320041,
		0.855797, 0.462638, 0.231466,
		35.048126, 33.055988, 26.445396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.712669, 32.242283, 26.762251>,  <34.449066, 32.732143, 26.283371>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.712669, 32.242283, 26.762251> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.908993, 32.590397, 26.778805>,  <35.026787, 32.799267, 26.788736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.908993, 32.590397, 26.778805>,  <34.712669, 32.242283, 26.762251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.908993, 32.590397, 26.778805> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066287, -0.084659, 0.994203,
		0.868742, -0.485220, -0.099240,
		0.490808, 0.870284, 0.041383,
		35.056236, 32.851482, 26.791220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.246700, 32.057838, 27.147820>,  <34.712669, 32.242283, 26.762251>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.246700, 32.057838, 27.147820> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.193626, 32.454292, 27.150564>,  <35.161781, 32.692165, 27.152210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.193626, 32.454292, 27.150564>,  <35.246700, 32.057838, 27.147820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.193626, 32.454292, 27.150564> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036732, -0.001999, 0.999323,
		0.990477, 0.132849, -0.036141,
		-0.132687, 0.991134, 0.006860,
		35.153820, 32.751633, 27.152622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.812359, 32.509720, 27.469913>,  <35.246700, 32.057838, 27.147820>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.812359, 32.509720, 27.469913> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.470001, 32.712978, 27.508341>,  <35.264587, 32.834934, 27.531397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.470001, 32.712978, 27.508341>,  <35.812359, 32.509720, 27.469913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.470001, 32.712978, 27.508341> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077917, -0.056933, 0.995333,
		0.511245, 0.859387, 0.009135,
		-0.855896, 0.508147, 0.096067,
		35.213234, 32.865421, 27.537161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.988861, 33.070606, 27.995398>,  <35.812359, 32.509720, 27.469913>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.988861, 33.070606, 27.995398> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.590027, 33.040340, 27.999134>,  <35.350727, 33.022182, 28.001375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.590027, 33.040340, 27.999134>,  <35.988861, 33.070606, 27.995398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.590027, 33.040340, 27.999134> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000407, 0.117243, 0.993103,
		-0.076235, 0.990217, -0.116871,
		-0.997090, -0.075661, 0.009341,
		35.290901, 33.017643, 28.001936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.813454, 33.589672, 28.338680>,  <35.988861, 33.070606, 27.995398>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.813454, 33.589672, 28.338680> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.505444, 33.336861, 28.373547>,  <35.320637, 33.185173, 28.394466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.505444, 33.336861, 28.373547>,  <35.813454, 33.589672, 28.338680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.505444, 33.336861, 28.373547> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029364, 0.171586, 0.984731,
		-0.637339, 0.755707, -0.150684,
		-0.770024, -0.632033, 0.087168,
		35.274437, 33.147251, 28.399696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.399563, 33.917999, 28.858702>,  <35.813454, 33.589672, 28.338680>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.399563, 33.917999, 28.858702> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.267723, 33.540352, 28.858000>,  <35.188622, 33.313763, 28.857578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.267723, 33.540352, 28.858000>,  <35.399563, 33.917999, 28.858702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.267723, 33.540352, 28.858000> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017764, 0.004341, 0.999833,
		-0.943954, 0.329574, -0.018202,
		-0.329598, -0.944120, -0.001757,
		35.168842, 33.257114, 28.857473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.963223, 33.893444, 29.455210>,  <35.399563, 33.917999, 28.858702>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.963223, 33.893444, 29.455210> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.014824, 33.507191, 29.364964>,  <35.045784, 33.275436, 29.310816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.014824, 33.507191, 29.364964>,  <34.963223, 33.893444, 29.455210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.014824, 33.507191, 29.364964> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021232, -0.230152, 0.972923,
		-0.991417, -0.120722, -0.050194,
		0.129005, -0.965638, -0.225613,
		35.053524, 33.217499, 29.297279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.423141, 33.510502, 29.783279>,  <34.963223, 33.893444, 29.455210>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.423141, 33.510502, 29.783279> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.732697, 33.267380, 29.712084>,  <34.918430, 33.121506, 29.669367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.732697, 33.267380, 29.712084>,  <34.423141, 33.510502, 29.783279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.732697, 33.267380, 29.712084> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005792, -0.287817, 0.957668,
		-0.633301, -0.740093, -0.226258,
		0.773884, -0.607802, -0.177989,
		34.964863, 33.085041, 29.658688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.254967, 32.850639, 30.027006>,  <34.423141, 33.510502, 29.783279>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.254967, 32.850639, 30.027006> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.654625, 32.834888, 30.031939>,  <34.894421, 32.825439, 30.034899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.654625, 32.834888, 30.031939>,  <34.254967, 32.850639, 30.027006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.654625, 32.834888, 30.031939> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019084, -0.176006, 0.984204,
		-0.036583, -0.983601, -0.176607,
		0.999148, -0.039375, 0.012332,
		34.954369, 32.823074, 30.035639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.499958, 32.285091, 30.422104>,  <34.254967, 32.850639, 30.027006>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.499958, 32.285091, 30.422104> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.823219, 32.519371, 30.446882>,  <35.017178, 32.659939, 30.461748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.823219, 32.519371, 30.446882>,  <34.499958, 32.285091, 30.422104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.823219, 32.519371, 30.446882> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009972, -0.118767, 0.992872,
		0.588884, -0.801777, -0.101823,
		0.808156, 0.585702, 0.061945,
		35.065666, 32.695084, 30.465466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.047035, 31.908178, 30.770182>,  <34.499958, 32.285091, 30.422104>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.047035, 31.908178, 30.770182> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.136635, 32.291382, 30.841787>,  <35.190395, 32.521305, 30.884750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.136635, 32.291382, 30.841787>,  <35.047035, 31.908178, 30.770182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.136635, 32.291382, 30.841787> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361509, -0.252252, 0.897597,
		0.905061, -0.136349, -0.402833,
		0.224002, 0.958007, 0.179013,
		35.203835, 32.578785, 30.895491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.587856, 31.892479, 31.194040>,  <35.047035, 31.908178, 30.770182>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.587856, 31.892479, 31.194040> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.459492, 32.268818, 31.237537>,  <35.382473, 32.494621, 31.263636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.459492, 32.268818, 31.237537>,  <35.587856, 31.892479, 31.194040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.459492, 32.268818, 31.237537> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286983, -0.012823, 0.957850,
		0.902583, 0.338594, -0.265891,
		-0.320913, 0.940845, 0.108745,
		35.363216, 32.551071, 31.270161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.011692, 32.146751, 31.700821>,  <35.587856, 31.892479, 31.194040>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.011692, 32.146751, 31.700821> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.724464, 32.424976, 31.710403>,  <35.552128, 32.591911, 31.716152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.724464, 32.424976, 31.710403>,  <36.011692, 32.146751, 31.700821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.724464, 32.424976, 31.710403> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127817, 0.097961, 0.986948,
		0.684137, 0.711757, -0.159247,
		-0.718067, 0.695562, 0.023956,
		35.509045, 32.633644, 31.717590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.335079, 32.723595, 32.057713>,  <36.011692, 32.146751, 31.700821>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.335079, 32.723595, 32.057713> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.937855, 32.759003, 32.088696>,  <35.699520, 32.780247, 32.107285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.937855, 32.759003, 32.088696>,  <36.335079, 32.723595, 32.057713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.937855, 32.759003, 32.088696> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093527, 0.194912, 0.976351,
		0.071329, 0.976818, -0.201838,
		-0.993058, 0.088519, 0.077456,
		35.639938, 32.785557, 32.111931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.798733, 32.263927, 31.555395>,  <36.335079, 32.723595, 32.057713>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.798733, 32.263927, 31.555395> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.186337, 32.315971, 31.639387>,  <37.418900, 32.347198, 31.689781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.186337, 32.315971, 31.639387>,  <36.798733, 32.263927, 31.555395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.186337, 32.315971, 31.639387> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167556, 0.278385, -0.945741,
		-0.181506, 0.951616, 0.247957,
		0.969010, 0.130111, 0.209978,
		37.477039, 32.355003, 31.702381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.045105, 32.983665, 31.387554>,  <36.798733, 32.263927, 31.555395>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.045105, 32.983665, 31.387554> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.365044, 32.744522, 31.408781>,  <37.557007, 32.601036, 31.421516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.365044, 32.744522, 31.408781>,  <37.045105, 32.983665, 31.387554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.365044, 32.744522, 31.408781> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217005, 0.205621, -0.954269,
		0.559604, 0.774782, 0.294203,
		0.799845, -0.597856, 0.053065,
		37.604996, 32.565166, 31.424700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.678677, 33.347626, 31.146746>,  <37.045105, 32.983665, 31.387554>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.678677, 33.347626, 31.146746> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.728317, 32.953583, 31.099129>,  <37.758102, 32.717159, 31.070559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.728317, 32.953583, 31.099129>,  <37.678677, 33.347626, 31.146746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.728317, 32.953583, 31.099129> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226642, 0.144939, -0.963134,
		0.966040, 0.092547, 0.241252,
		0.124102, -0.985103, -0.119041,
		37.765549, 32.658051, 31.063416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.902859, 33.267612, 30.484785>,  <37.678677, 33.347626, 31.146746>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.902859, 33.267612, 30.484785> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.854008, 32.875317, 30.545761>,  <37.824699, 32.639938, 30.582348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.854008, 32.875317, 30.545761>,  <37.902859, 33.267612, 30.484785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.854008, 32.875317, 30.545761> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111400, -0.166166, -0.979785,
		0.986243, -0.102672, 0.129547,
		-0.122123, -0.980738, 0.152442,
		37.817371, 32.581097, 30.591494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.457672, 32.885818, 30.181801>,  <37.902859, 33.267612, 30.484785>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.457672, 32.885818, 30.181801> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.151600, 32.630348, 30.214296>,  <37.967957, 32.477066, 30.233793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.151600, 32.630348, 30.214296>,  <38.457672, 32.885818, 30.181801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.151600, 32.630348, 30.214296> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013100, -0.141605, -0.989837,
		0.643686, -0.756336, 0.116719,
		-0.765177, -0.638673, 0.081241,
		37.922047, 32.438747, 30.238668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.701385, 32.301109, 29.816582>,  <38.457672, 32.885818, 30.181801>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.701385, 32.301109, 29.816582> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.307648, 32.237347, 29.846645>,  <38.071404, 32.199089, 29.864683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.307648, 32.237347, 29.846645>,  <38.701385, 32.301109, 29.816582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.307648, 32.237347, 29.846645> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033962, -0.246904, -0.968445,
		0.172937, -0.955838, 0.237625,
		-0.984347, -0.159410, 0.075161,
		38.012344, 32.189526, 29.869194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.631443, 31.644514, 29.555813>,  <38.701385, 32.301109, 29.816582>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.631443, 31.644514, 29.555813> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.278145, 31.831461, 29.540564>,  <38.066166, 31.943628, 29.531414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.278145, 31.831461, 29.540564>,  <38.631443, 31.644514, 29.555813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.278145, 31.831461, 29.540564> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007474, -0.067253, -0.997708,
		-0.468859, -0.881502, 0.055907,
		-0.883241, 0.467367, -0.038121,
		38.013172, 31.971670, 29.529127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.238186, 31.308393, 29.035917>,  <38.631443, 31.644514, 29.555813>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.238186, 31.308393, 29.035917> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.046730, 31.655384, 29.090158>,  <37.931854, 31.863579, 29.122704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.046730, 31.655384, 29.090158>,  <38.238186, 31.308393, 29.035917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.046730, 31.655384, 29.090158> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201904, 0.259052, -0.944525,
		-0.854479, -0.424712, -0.299140,
		-0.478644, 0.867474, 0.135603,
		37.903137, 31.915627, 29.130840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.963337, 31.453037, 28.497778>,  <38.238186, 31.308393, 29.035917>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.963337, 31.453037, 28.497778> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.936302, 31.824589, 28.643442>,  <37.920082, 32.047520, 28.730841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.936302, 31.824589, 28.643442>,  <37.963337, 31.453037, 28.497778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.936302, 31.824589, 28.643442> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080962, 0.368898, -0.925937,
		-0.994423, -0.033098, -0.100137,
		-0.067587, 0.928881, 0.364161,
		37.916027, 32.103252, 28.752691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.428318, 31.880543, 28.178352>,  <37.963337, 31.453037, 28.497778>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.428318, 31.880543, 28.178352> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.714115, 32.135517, 28.293715>,  <37.885593, 32.288502, 28.362932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.714115, 32.135517, 28.293715>,  <37.428318, 31.880543, 28.178352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.714115, 32.135517, 28.293715> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063788, 0.351148, -0.934145,
		-0.696731, 0.685835, 0.210232,
		0.714491, 0.637437, 0.288404,
		37.928463, 32.326748, 28.380236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.334145, 32.432976, 27.843239>,  <37.428318, 31.880543, 28.178352>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.334145, 32.432976, 27.843239> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.697495, 32.545040, 27.967411>,  <37.915504, 32.612278, 28.041914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.697495, 32.545040, 27.967411>,  <37.334145, 32.432976, 27.843239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.697495, 32.545040, 27.967411> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124508, 0.527484, -0.840392,
		-0.399195, 0.802040, 0.444269,
		0.908373, 0.280166, 0.310429,
		37.970005, 32.629089, 28.060539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.365662, 33.105347, 27.632444>,  <37.334145, 32.432976, 27.843239>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.365662, 33.105347, 27.632444> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.737724, 32.968578, 27.685951>,  <37.960964, 32.886517, 27.718056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.737724, 32.968578, 27.685951>,  <37.365662, 33.105347, 27.632444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.737724, 32.968578, 27.685951> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313200, 0.548795, -0.775067,
		0.191601, 0.762832, 0.617557,
		0.930158, -0.341923, 0.133769,
		38.016773, 32.866001, 27.726082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.828201, 33.595695, 27.549332>,  <37.365662, 33.105347, 27.632444>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.828201, 33.595695, 27.549332> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.035835, 33.261967, 27.475088>,  <38.160416, 33.061729, 27.430542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.035835, 33.261967, 27.475088>,  <37.828201, 33.595695, 27.549332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.035835, 33.261967, 27.475088> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312327, 0.387296, -0.867441,
		0.795614, 0.392306, 0.461622,
		0.519087, -0.834325, -0.185610,
		38.191563, 33.011669, 27.419405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.490448, 33.840923, 27.361956>,  <37.828201, 33.595695, 27.549332>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.490448, 33.840923, 27.361956> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.483372, 33.472179, 27.207108>,  <38.479126, 33.250935, 27.114199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.483372, 33.472179, 27.207108>,  <38.490448, 33.840923, 27.361956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.483372, 33.472179, 27.207108> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477929, 0.332288, -0.813123,
		0.878220, -0.199401, 0.434705,
		-0.017690, -0.921859, -0.387122,
		38.478065, 33.195621, 27.090971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.185120, 33.725410, 27.016077>,  <38.490448, 33.840923, 27.361956>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.185120, 33.725410, 27.016077> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.927437, 33.474998, 26.840313>,  <38.772827, 33.324749, 26.734854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.927437, 33.474998, 26.840313>,  <39.185120, 33.725410, 27.016077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.927437, 33.474998, 26.840313> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262641, 0.358510, -0.895818,
		0.718344, -0.692499, -0.066533,
		-0.644206, -0.626032, -0.439412,
		38.734177, 33.287189, 26.708488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.515133, 33.484550, 26.461590>,  <39.185120, 33.725410, 27.016077>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.515133, 33.484550, 26.461590> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.134689, 33.397964, 26.373474>,  <38.906422, 33.346012, 26.320604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.134689, 33.397964, 26.373474>,  <39.515133, 33.484550, 26.461590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.134689, 33.397964, 26.373474> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152180, 0.292201, -0.944171,
		0.268749, -0.931537, -0.244975,
		-0.951113, -0.216465, -0.220290,
		38.849354, 33.333027, 26.307386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.501965, 33.044495, 25.800348>,  <39.515133, 33.484550, 26.461590>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.501965, 33.044495, 25.800348> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.142887, 33.213936, 25.848852>,  <38.927441, 33.315601, 25.877954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.142887, 33.213936, 25.848852>,  <39.501965, 33.044495, 25.800348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.142887, 33.213936, 25.848852> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100770, 0.465287, -0.879405,
		-0.428942, -0.777218, -0.460372,
		-0.897694, 0.423605, 0.121261,
		38.873577, 33.341019, 25.885231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.086441, 32.898758, 25.209980>,  <39.501965, 33.044495, 25.800348>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.086441, 32.898758, 25.209980> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.871441, 33.205219, 25.350887>,  <38.742439, 33.389095, 25.435432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.871441, 33.205219, 25.350887>,  <39.086441, 32.898758, 25.209980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.871441, 33.205219, 25.350887> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074975, 0.459511, -0.885002,
		-0.839921, -0.449281, -0.304432,
		-0.537505, 0.766156, 0.352268,
		38.710190, 33.435066, 25.456568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.350346, 32.878040, 24.883230> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.434074, 33.249668, 25.005219>,  <38.484310, 33.472645, 25.078411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.434074, 33.249668, 25.005219>,  <38.350346, 32.878040, 24.883230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.434074, 33.249668, 25.005219> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026130, 0.317085, -0.948037,
		-0.977497, 0.190477, 0.090650,
		0.209323, 0.929072, 0.304973,
		38.496872, 33.528389, 25.096710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.806244, 33.326359, 24.559944>,  <38.350346, 32.878040, 24.883230>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.806244, 33.326359, 24.559944> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.070614, 33.603836, 24.674467>,  <38.229237, 33.770321, 24.743181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.070614, 33.603836, 24.674467>,  <37.806244, 33.326359, 24.559944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.070614, 33.603836, 24.674467> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033136, 0.408114, -0.912329,
		-0.749723, 0.593491, 0.292718,
		0.660922, 0.693694, 0.286306,
		38.268890, 33.811943, 24.760359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.519039, 33.888088, 24.256355>,  <37.806244, 33.326359, 24.559944>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.519039, 33.888088, 24.256355> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.900589, 33.975674, 24.338509>,  <38.129517, 34.028225, 24.387800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.900589, 33.975674, 24.338509>,  <37.519039, 33.888088, 24.256355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.900589, 33.975674, 24.338509> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077930, 0.480084, -0.873754,
		-0.289922, 0.849456, 0.440875,
		0.953872, 0.218963, 0.205385,
		38.186752, 34.041363, 24.400124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.472851, 34.494698, 24.096241>,  <37.519039, 33.888088, 24.256355>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.472851, 34.494698, 24.096241> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.846142, 34.352531, 24.075171>,  <38.070114, 34.267231, 24.062529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.846142, 34.352531, 24.075171>,  <37.472851, 34.494698, 24.096241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.846142, 34.352531, 24.075171> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077287, 0.341749, -0.936608,
		0.350884, 0.869994, 0.346397,
		0.933224, -0.355412, -0.052675,
		38.126110, 34.245907, 24.059368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.776348, 34.903034, 23.619226>,  <37.472851, 34.494698, 24.096241>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.776348, 34.903034, 23.619226> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.030491, 34.594849, 23.598429>,  <38.182976, 34.409939, 23.585951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.030491, 34.594849, 23.598429>,  <37.776348, 34.903034, 23.619226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.030491, 34.594849, 23.598429> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020081, 0.083790, -0.996281,
		0.771956, 0.631952, 0.068708,
		0.635358, -0.770465, -0.051992,
		38.221100, 34.363708, 23.582830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.113770, 35.094681, 23.048382>,  <37.776348, 34.903034, 23.619226>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.113770, 35.094681, 23.048382> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.205109, 34.709763, 23.107500>,  <38.259914, 34.478813, 23.142971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.205109, 34.709763, 23.107500>,  <38.113770, 35.094681, 23.048382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.205109, 34.709763, 23.107500> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007148, -0.153460, -0.988129,
		0.973552, 0.224585, -0.041922,
		0.228353, -0.962295, 0.147796,
		38.273613, 34.421074, 23.151838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.684418, 34.890530, 22.618526>,  <38.113770, 35.094681, 23.048382>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.684418, 34.890530, 22.618526> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.506947, 34.538464, 22.686008>,  <38.400463, 34.327225, 22.726498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.506947, 34.538464, 22.686008>,  <38.684418, 34.890530, 22.618526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.506947, 34.538464, 22.686008> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090433, -0.231260, -0.968680,
		0.891610, -0.414528, 0.182201,
		-0.443681, -0.880162, 0.168706,
		38.373840, 34.274414, 22.736620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.148594, 34.385136, 22.287045>,  <38.684418, 34.890530, 22.618526>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.148594, 34.385136, 22.287045> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.785755, 34.222763, 22.331593>,  <38.568054, 34.125340, 22.358322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.785755, 34.222763, 22.331593>,  <39.148594, 34.385136, 22.287045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.785755, 34.222763, 22.331593> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001678, -0.261097, -0.965311,
		0.420925, -0.875815, 0.236158,
		-0.907094, -0.405928, 0.111372,
		38.513626, 34.100986, 22.365004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.168896, 33.758564, 22.085608>,  <39.148594, 34.385136, 22.287045>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.168896, 33.758564, 22.085608> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.785473, 33.852337, 22.020844>,  <38.555420, 33.908600, 21.981985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.785473, 33.852337, 22.020844>,  <39.168896, 33.758564, 22.085608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.785473, 33.852337, 22.020844> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112295, -0.211418, -0.970923,
		-0.261851, -0.948864, 0.176330,
		-0.958553, 0.234436, -0.161912,
		38.497906, 33.922668, 21.972271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.846230, 33.129776, 21.742386>,  <39.168896, 33.758564, 22.085608>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.846230, 33.129776, 21.742386> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.630768, 33.456486, 21.659704>,  <38.501492, 33.652512, 21.610096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.630768, 33.456486, 21.659704>,  <38.846230, 33.129776, 21.742386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.630768, 33.456486, 21.659704> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076852, -0.196680, -0.977451,
		-0.839015, -0.542392, 0.043171,
		-0.538653, 0.816779, -0.206702,
		38.469173, 33.701519, 21.597694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.433846, 32.868267, 21.202251>,  <38.846230, 33.129776, 21.742386>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.433846, 32.868267, 21.202251> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.430763, 33.268070, 21.190134>,  <38.428913, 33.507954, 21.182863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.430763, 33.268070, 21.190134>,  <38.433846, 32.868267, 21.202251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.430763, 33.268070, 21.190134> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251384, -0.027386, -0.967500,
		-0.967857, -0.015072, -0.251050,
		-0.007707, 0.999511, -0.030295,
		38.428452, 33.567924, 21.181046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.943039, 33.103291, 20.671011>,  <38.433846, 32.868267, 21.202251>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.943039, 33.103291, 20.671011> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.166740, 33.432182, 20.713278>,  <38.300961, 33.629517, 20.738638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.166740, 33.432182, 20.713278>,  <37.943039, 33.103291, 20.671011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.166740, 33.432182, 20.713278> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199769, -0.009961, -0.979792,
		-0.804564, 0.569065, -0.169827,
		0.559258, 0.822232, 0.105667,
		38.334518, 33.678852, 20.744978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.716999, 33.581627, 20.222660>,  <37.943039, 33.103291, 20.671011>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.716999, 33.581627, 20.222660> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.094112, 33.692444, 20.296858>,  <38.320381, 33.758934, 20.341377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.094112, 33.692444, 20.296858>,  <37.716999, 33.581627, 20.222660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.094112, 33.692444, 20.296858> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175890, 0.059363, -0.982618,
		-0.283239, 0.959022, 0.007238,
		0.942782, 0.277043, 0.185496,
		38.376945, 33.775558, 20.352507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.801949, 33.965218, 19.669052>,  <37.716999, 33.581627, 20.222660>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.801949, 33.965218, 19.669052> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.172100, 33.937965, 19.818197>,  <38.394192, 33.921616, 19.907684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.172100, 33.937965, 19.818197>,  <37.801949, 33.965218, 19.669052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.172100, 33.937965, 19.818197> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379035, 0.164158, -0.910706,
		0.000840, 0.984078, 0.177733,
		0.925382, -0.068132, 0.372862,
		38.449715, 33.917526, 19.930056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.102875, 34.607925, 19.579395>,  <37.801949, 33.965218, 19.669052>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.102875, 34.607925, 19.579395> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.390121, 34.329731, 19.589191>,  <38.562469, 34.162815, 19.595070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.390121, 34.329731, 19.589191>,  <38.102875, 34.607925, 19.579395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.390121, 34.329731, 19.589191> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275419, 0.251710, -0.927786,
		0.639101, 0.673005, 0.372309,
		0.718118, -0.695490, 0.024490,
		38.605556, 34.121082, 19.596539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.527809, 34.914940, 19.230255>,  <38.102875, 34.607925, 19.579395>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.527809, 34.914940, 19.230255> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.667957, 34.540333, 19.225035>,  <38.752045, 34.315567, 19.221903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.667957, 34.540333, 19.225035>,  <38.527809, 34.914940, 19.230255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.667957, 34.540333, 19.225035> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395191, 0.160452, -0.904477,
		0.849156, 0.311744, 0.426322,
		0.350370, -0.936521, -0.013050,
		38.773067, 34.259377, 19.221119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.258713, 34.876762, 19.076670>,  <38.527809, 34.914940, 19.230255>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.258713, 34.876762, 19.076670> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.143948, 34.511234, 18.961697>,  <39.075089, 34.291916, 18.892714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.143948, 34.511234, 18.961697>,  <39.258713, 34.876762, 19.076670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.143948, 34.511234, 18.961697> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498507, 0.113794, -0.859385,
		0.818030, -0.389853, 0.422897,
		-0.286910, -0.913819, -0.287431,
		39.057873, 34.237087, 18.875467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.846729, 34.651478, 18.695219>,  <39.258713, 34.876762, 19.076670>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.846729, 34.651478, 18.695219> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.550098, 34.405426, 18.588133>,  <39.372120, 34.257793, 18.523882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.550098, 34.405426, 18.588133>,  <39.846729, 34.651478, 18.695219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.550098, 34.405426, 18.588133> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361390, -0.030086, -0.931929,
		0.565205, -0.787850, 0.244614,
		-0.741580, -0.615132, -0.267716,
		39.327625, 34.220886, 18.507818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.196529, 34.094166, 18.408001>,  <39.846729, 34.651478, 18.695219>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.196529, 34.094166, 18.408001> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.832436, 34.051147, 18.248043>,  <39.613979, 34.025337, 18.152069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.832436, 34.051147, 18.248043>,  <40.196529, 34.094166, 18.408001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.832436, 34.051147, 18.248043> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412452, -0.321620, -0.852317,
		-0.036950, -0.940741, 0.337106,
		-0.910230, -0.107547, -0.399894,
		39.559368, 34.018883, 18.128075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.157166, 33.483704, 18.056334>,  <40.196529, 34.094166, 18.408001>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.157166, 33.483704, 18.056334> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.837059, 33.668385, 17.903280>,  <39.644997, 33.779194, 17.811449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.837059, 33.668385, 17.903280>,  <40.157166, 33.483704, 18.056334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.837059, 33.668385, 17.903280> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280891, -0.275128, -0.919459,
		-0.529788, -0.843289, 0.090488,
		-0.800266, 0.461701, -0.382632,
		39.596981, 33.806896, 17.788490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.868496, 33.010311, 17.509705>,  <40.157166, 33.483704, 18.056334>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.868496, 33.010311, 17.509705> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.715897, 33.367393, 17.413763>,  <39.624336, 33.581642, 17.356197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.715897, 33.367393, 17.413763>,  <39.868496, 33.010311, 17.509705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.715897, 33.367393, 17.413763> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134889, -0.202940, -0.969856,
		-0.914477, -0.402348, -0.042996,
		-0.381494, 0.892710, -0.239856,
		39.601448, 33.635208, 17.341806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.150013, 32.879013, 17.219650>,  <39.868496, 33.010311, 17.509705>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.150013, 32.879013, 17.219650> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.276917, 33.234505, 17.087282>,  <39.353058, 33.447800, 17.007862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.276917, 33.234505, 17.087282>,  <39.150013, 32.879013, 17.219650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.276917, 33.234505, 17.087282> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248087, -0.259016, -0.933469,
		-0.915313, 0.378251, 0.138306,
		0.317262, 0.888728, -0.330919,
		39.372093, 33.501122, 16.988007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.687912, 33.239292, 16.823460>,  <39.150013, 32.879013, 17.219650>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.687912, 33.239292, 16.823460> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.026535, 33.391739, 16.674818>,  <39.229710, 33.483208, 16.585632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.026535, 33.391739, 16.674818>,  <38.687912, 33.239292, 16.823460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.026535, 33.391739, 16.674818> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336970, -0.156715, -0.928381,
		-0.412054, 0.911150, -0.004245,
		0.846559, 0.381113, -0.371606,
		39.280502, 33.506073, 16.563337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.354389, 33.777122, 16.550510>,  <38.687912, 33.239292, 16.823460>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.354389, 33.777122, 16.550510> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.677345, 33.594288, 16.401278>,  <38.871120, 33.484589, 16.311737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.677345, 33.594288, 16.401278>,  <38.354389, 33.777122, 16.550510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.677345, 33.594288, 16.401278> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453571, -0.076431, -0.887937,
		0.377347, 0.886133, -0.269030,
		0.807392, -0.457084, -0.373084,
		38.919563, 33.457161, 16.289352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.976730, 34.533241, 16.426334>,  <38.354389, 33.777122, 16.550510>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.976730, 34.533241, 16.426334> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.664139, 34.707344, 16.247520>,  <37.476585, 34.811806, 16.140232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.664139, 34.707344, 16.247520>,  <37.976730, 34.533241, 16.426334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.664139, 34.707344, 16.247520> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442947, 0.117574, 0.888805,
		0.439419, 0.892595, 0.100914,
		-0.781478, 0.435258, -0.447037,
		37.429695, 34.837921, 16.113409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.873703, 35.247528, 16.703630>,  <37.976730, 34.533241, 16.426334>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.873703, 35.247528, 16.703630> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.523499, 35.112888, 16.564960>,  <37.313377, 35.032104, 16.481758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.523499, 35.112888, 16.564960>,  <37.873703, 35.247528, 16.703630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.523499, 35.112888, 16.564960> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428591, 0.209634, 0.878842,
		-0.223144, 0.918016, -0.327801,
		-0.875509, -0.336601, -0.346675,
		37.260845, 35.011909, 16.460958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.498600, 35.655476, 17.040247>,  <37.873703, 35.247528, 16.703630>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.498600, 35.655476, 17.040247> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.258060, 35.359646, 16.919313>,  <37.113735, 35.182148, 16.846754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.258060, 35.359646, 16.919313>,  <37.498600, 35.655476, 17.040247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.258060, 35.359646, 16.919313> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523147, 0.078462, 0.848623,
		-0.603901, 0.668483, -0.434091,
		-0.601349, -0.739577, -0.302332,
		37.077656, 35.137772, 16.828613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.889965, 35.873356, 17.172407>,  <37.498600, 35.655476, 17.040247>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.889965, 35.873356, 17.172407> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.853481, 35.475166, 17.161686>,  <36.831593, 35.236252, 17.155254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.853481, 35.475166, 17.161686>,  <36.889965, 35.873356, 17.172407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.853481, 35.475166, 17.161686> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480020, 0.020368, 0.877021,
		-0.872503, 0.092858, -0.479704,
		-0.091209, -0.995471, -0.026802,
		36.826118, 35.176525, 17.153645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.305893, 35.807552, 17.605492>,  <36.889965, 35.873356, 17.172407>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.305893, 35.807552, 17.605492> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.432602, 35.429714, 17.571083>,  <36.508625, 35.203011, 17.550438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.432602, 35.429714, 17.571083>,  <36.305893, 35.807552, 17.605492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.432602, 35.429714, 17.571083> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399812, -0.215215, 0.890973,
		-0.860120, -0.247841, -0.445834,
		0.316770, -0.944594, -0.086021,
		36.527634, 35.146336, 17.545277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.828465, 35.362907, 17.877516>,  <36.305893, 35.807552, 17.605492>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.828465, 35.362907, 17.877516> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.174435, 35.167767, 17.924673>,  <36.382015, 35.050682, 17.952967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.174435, 35.167767, 17.924673>,  <35.828465, 35.362907, 17.877516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.174435, 35.167767, 17.924673> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238064, -0.191993, 0.952084,
		-0.441845, -0.851549, -0.282201,
		0.864927, -0.487856, 0.117892,
		36.433914, 35.021408, 17.960041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.533867, 34.816433, 18.237400>,  <35.828465, 35.362907, 17.877516>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.533867, 34.816433, 18.237400> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.924946, 34.858013, 18.310394>,  <36.159592, 34.882961, 18.354191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.924946, 34.858013, 18.310394>,  <35.533867, 34.816433, 18.237400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.924946, 34.858013, 18.310394> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152953, -0.242997, 0.957892,
		0.143918, -0.964441, -0.221678,
		0.977698, 0.103951, 0.182486,
		36.218254, 34.889198, 18.365139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.739426, 34.317173, 18.587399>,  <35.533867, 34.816433, 18.237400>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.739426, 34.317173, 18.587399> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.052536, 34.552917, 18.667316>,  <36.240402, 34.694363, 18.715267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.052536, 34.552917, 18.667316>,  <35.739426, 34.317173, 18.587399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.052536, 34.552917, 18.667316> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099816, -0.197995, 0.975108,
		0.614248, -0.783232, -0.096158,
		0.782774, 0.589360, 0.199797,
		36.287369, 34.729725, 18.727255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.191238, 33.869038, 19.113031>,  <35.739426, 34.317173, 18.587399>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.191238, 33.869038, 19.113031> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.312717, 34.250145, 19.113819>,  <36.385605, 34.478809, 19.114292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.312717, 34.250145, 19.113819>,  <36.191238, 33.869038, 19.113031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.312717, 34.250145, 19.113819> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014704, 0.002621, 0.999888,
		0.952654, -0.303695, 0.014806,
		0.303700, 0.952765, 0.001969,
		36.403828, 34.535976, 19.114410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.874416, 34.033394, 19.421822>,  <36.191238, 33.869038, 19.113031>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.874416, 34.033394, 19.421822> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.610500, 34.330685, 19.466154>,  <36.452152, 34.509060, 19.492754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.610500, 34.330685, 19.466154>,  <36.874416, 34.033394, 19.421822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.610500, 34.330685, 19.466154> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001871, -0.149116, 0.988818,
		0.751447, 0.652205, 0.099776,
		-0.659791, 0.743231, 0.110832,
		36.412563, 34.553654, 19.499403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.091801, 34.413647, 19.944056>,  <36.874416, 34.033394, 19.421822>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.091801, 34.413647, 19.944056> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.710972, 34.535660, 19.934917>,  <36.482475, 34.608868, 19.929434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.710972, 34.535660, 19.934917>,  <37.091801, 34.413647, 19.944056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.710972, 34.535660, 19.934917> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055721, -0.099514, 0.993475,
		0.300764, 0.947130, 0.111741,
		-0.952069, 0.305028, -0.022845,
		36.425350, 34.627167, 19.928064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.061516, 34.890388, 20.504812>,  <37.091801, 34.413647, 19.944056>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.061516, 34.890388, 20.504812> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.677979, 34.801510, 20.434109>,  <36.447857, 34.748184, 20.391685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.677979, 34.801510, 20.434109>,  <37.061516, 34.890388, 20.504812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.677979, 34.801510, 20.434109> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156421, -0.106167, 0.981968,
		-0.236952, 0.969205, 0.067043,
		-0.958846, -0.222192, -0.176761,
		36.390324, 34.734852, 20.381081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.706051, 35.136108, 21.042364>,  <37.061516, 34.890388, 20.504812>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.706051, 35.136108, 21.042364> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.423058, 34.893764, 20.896818>,  <36.253262, 34.748360, 20.809490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.423058, 34.893764, 20.896818>,  <36.706051, 35.136108, 21.042364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.423058, 34.893764, 20.896818> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199082, -0.323160, 0.925167,
		-0.678109, 0.726981, 0.108015,
		-0.707485, -0.605860, -0.363866,
		36.210812, 34.712006, 20.787659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.190941, 35.174156, 21.566486>,  <36.706051, 35.136108, 21.042364>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.190941, 35.174156, 21.566486> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.133091, 34.829414, 21.372046>,  <36.098381, 34.622570, 21.255381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.133091, 34.829414, 21.372046>,  <36.190941, 35.174156, 21.566486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.133091, 34.829414, 21.372046> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278637, -0.435915, 0.855768,
		-0.949445, 0.259208, -0.177102,
		-0.144620, -0.861852, -0.486103,
		36.089706, 34.570858, 21.226215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.564922, 34.954178, 21.702381>,  <36.190941, 35.174156, 21.566486>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.564922, 34.954178, 21.702381> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.714622, 34.604595, 21.578354>,  <35.804443, 34.394848, 21.503937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.714622, 34.604595, 21.578354>,  <35.564922, 34.954178, 21.702381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.714622, 34.604595, 21.578354> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379233, -0.449372, 0.808855,
		-0.846238, -0.185127, -0.499609,
		0.374251, -0.873952, -0.310070,
		35.826897, 34.342411, 21.485332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.056206, 34.440086, 21.763653>,  <35.564922, 34.954178, 21.702381>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.056206, 34.440086, 21.763653> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.404175, 34.243019, 21.772627>,  <35.612957, 34.124779, 21.778011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.404175, 34.243019, 21.772627>,  <35.056206, 34.440086, 21.763653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.404175, 34.243019, 21.772627> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327906, -0.543821, 0.772487,
		-0.368380, -0.679364, -0.634634,
		0.869927, -0.492669, 0.022435,
		35.665154, 34.095219, 21.779358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.970524, 33.705368, 21.706133>,  <35.056206, 34.440086, 21.763653>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.970524, 33.705368, 21.706133> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.326241, 33.750278, 21.883474>,  <35.539669, 33.777225, 21.989880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.326241, 33.750278, 21.883474>,  <34.970524, 33.705368, 21.706133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.326241, 33.750278, 21.883474> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319918, -0.540052, 0.778458,
		0.326835, -0.834109, -0.444342,
		0.889287, 0.112275, 0.443354,
		35.593025, 33.783962, 22.016481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.007771, 33.056297, 22.231487>,  <34.970524, 33.705368, 21.706133>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.007771, 33.056297, 22.231487> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.353046, 33.237850, 22.319939>,  <35.560211, 33.346783, 22.373009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.353046, 33.237850, 22.319939>,  <35.007771, 33.056297, 22.231487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.353046, 33.237850, 22.319939> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134507, -0.215414, 0.967215,
		0.486636, -0.864631, -0.124893,
		0.863188, 0.453883, 0.221127,
		35.612003, 33.374016, 22.386276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.395988, 32.614059, 22.619045>,  <35.007771, 33.056297, 22.231487>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.395988, 32.614059, 22.619045> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.473248, 32.989250, 22.734215>,  <35.519604, 33.214363, 22.803316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.473248, 32.989250, 22.734215>,  <35.395988, 32.614059, 22.619045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.473248, 32.989250, 22.734215> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024332, -0.297939, 0.954275,
		0.980867, -0.177313, -0.080370,
		0.193150, 0.937972, 0.287925,
		35.531193, 33.270641, 22.820593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.964783, 32.643433, 22.981594>,  <35.395988, 32.614059, 22.619045>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.964783, 32.643433, 22.981594> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.746250, 32.960022, 23.091208>,  <35.615131, 33.149975, 23.156975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.746250, 32.960022, 23.091208>,  <35.964783, 32.643433, 22.981594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.746250, 32.960022, 23.091208> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028594, -0.344612, 0.938309,
		0.837080, 0.504794, 0.210904,
		-0.546333, 0.791471, 0.274034,
		35.582352, 33.197464, 23.173418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.303993, 32.445343, 27.939894> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.938942, 32.593998, 27.871780>,  <38.719910, 32.683189, 27.830914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.938942, 32.593998, 27.871780>,  <39.303993, 32.445343, 27.939894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.938942, 32.593998, 27.871780> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216236, -0.085372, 0.972601,
		0.346917, 0.924445, 0.158275,
		-0.912628, 0.371637, -0.170282,
		38.665154, 32.705490, 27.820696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.159592, 32.979969, 28.477898>,  <39.303993, 32.445343, 27.939894>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.159592, 32.979969, 28.477898> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.799809, 32.863979, 28.347124>,  <38.583939, 32.794384, 28.268660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.799809, 32.863979, 28.347124>,  <39.159592, 32.979969, 28.477898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.799809, 32.863979, 28.347124> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307049, -0.112978, 0.944964,
		-0.310952, 0.950342, 0.012583,
		-0.899461, -0.289975, -0.326933,
		38.529972, 32.776985, 28.249044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.665733, 33.149254, 29.101999>,  <39.159592, 32.979969, 28.477898>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.665733, 33.149254, 29.101999> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.466755, 32.895199, 28.865643>,  <38.347370, 32.742767, 28.723829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.466755, 32.895199, 28.865643>,  <38.665733, 33.149254, 29.101999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.466755, 32.895199, 28.865643> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543594, -0.302615, 0.782898,
		-0.676058, 0.710654, -0.194722,
		-0.497444, -0.635134, -0.590892,
		38.317520, 32.704659, 28.688375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.908352, 33.317242, 29.066940>,  <38.665733, 33.149254, 29.101999>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.908352, 33.317242, 29.066940> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.951908, 32.924843, 29.002703>,  <37.978043, 32.689404, 28.964161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.951908, 32.924843, 29.002703>,  <37.908352, 33.317242, 29.066940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.951908, 32.924843, 29.002703> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559678, -0.194017, 0.805678,
		-0.821525, 0.002152, -0.570168,
		0.108888, -0.980996, -0.160594,
		37.984573, 32.630543, 28.954525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.270725, 32.997826, 29.262846>,  <37.908352, 33.317242, 29.066940>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.270725, 32.997826, 29.262846> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.475834, 32.657406, 29.217628>,  <37.598900, 32.453156, 29.190498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.475834, 32.657406, 29.217628>,  <37.270725, 32.997826, 29.262846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.475834, 32.657406, 29.217628> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317505, -0.310321, 0.896042,
		-0.797656, -0.423574, -0.429336,
		0.512772, -0.851050, -0.113042,
		37.629665, 32.402092, 29.183716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.821617, 32.530048, 29.340872>,  <37.270725, 32.997826, 29.262846>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.821617, 32.530048, 29.340872> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.185207, 32.389793, 29.431046>,  <37.403362, 32.305641, 29.485149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.185207, 32.389793, 29.431046>,  <36.821617, 32.530048, 29.340872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.185207, 32.389793, 29.431046> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284632, -0.126966, 0.950192,
		-0.304550, -0.927865, -0.215211,
		0.908974, -0.350637, 0.225432,
		37.457901, 32.284603, 29.498674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.678658, 32.022659, 29.866117>,  <36.821617, 32.530048, 29.340872>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.678658, 32.022659, 29.866117> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.075375, 32.073181, 29.874113>,  <37.313404, 32.103497, 29.878910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.075375, 32.073181, 29.874113>,  <36.678658, 32.022659, 29.866117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.075375, 32.073181, 29.874113> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010541, -0.236540, 0.971564,
		0.127445, -0.963377, -0.235930,
		0.991790, 0.126308, 0.019991,
		37.372913, 32.111073, 29.880110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.062283, 31.477444, 30.290020>,  <36.678658, 32.022659, 29.866117>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.062283, 31.477444, 30.290020> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.313515, 31.788685, 30.286848>,  <37.464256, 31.975430, 30.284945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.313515, 31.788685, 30.286848>,  <37.062283, 31.477444, 30.290020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.313515, 31.788685, 30.286848> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270487, -0.208757, 0.939818,
		0.729621, -0.592430, -0.341584,
		0.628085, 0.778104, -0.007931,
		37.501942, 32.022118, 30.284468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.617393, 31.292662, 30.833738>,  <37.062283, 31.477444, 30.290020>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.617393, 31.292662, 30.833738> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.680782, 31.682201, 30.768614>,  <37.718815, 31.915924, 30.729538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.680782, 31.682201, 30.768614>,  <37.617393, 31.292662, 30.833738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.680782, 31.682201, 30.768614> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401876, 0.087001, 0.911552,
		0.901877, -0.209887, -0.377578,
		0.158473, 0.973847, -0.162813,
		37.728325, 31.974356, 30.719770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.286770, 31.475401, 31.004772>,  <37.617393, 31.292662, 30.833738>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.286770, 31.475401, 31.004772> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.084961, 31.818918, 31.040392>,  <37.963875, 32.025028, 31.061764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.084961, 31.818918, 31.040392>,  <38.286770, 31.475401, 31.004772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.084961, 31.818918, 31.040392> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249135, 0.046056, 0.967373,
		0.826672, 0.510248, -0.237192,
		-0.504524, 0.858793, 0.089048,
		37.933605, 32.076557, 31.067106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.603840, 31.792919, 31.567286>,  <38.286770, 31.475401, 31.004772>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.603840, 31.792919, 31.567286> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.302692, 32.051052, 31.515547>,  <38.122002, 32.205933, 31.484503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.302692, 32.051052, 31.515547>,  <38.603840, 31.792919, 31.567286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.302692, 32.051052, 31.515547> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042866, 0.148030, 0.988054,
		0.656770, 0.749422, -0.083785,
		-0.752872, 0.645332, -0.129347,
		38.076832, 32.244652, 31.476742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.681458, 32.405640, 32.064220>,  <38.603840, 31.792919, 31.567286>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.681458, 32.405640, 32.064220> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.296841, 32.408634, 31.954395>,  <38.066071, 32.410431, 31.888500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.296841, 32.408634, 31.954395>,  <38.681458, 32.405640, 32.064220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.296841, 32.408634, 31.954395> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273919, 0.047620, 0.960573,
		0.020270, 0.998838, -0.043737,
		-0.961539, 0.007490, -0.274566,
		38.008377, 32.410881, 31.872026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.338017, 32.911667, 32.358803>,  <38.681458, 32.405640, 32.064220>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.338017, 32.911667, 32.358803> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.067818, 32.620869, 32.309505>,  <37.905701, 32.446392, 32.279926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.067818, 32.620869, 32.309505>,  <38.338017, 32.911667, 32.358803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.067818, 32.620869, 32.309505> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226347, 0.045364, 0.972990,
		-0.701765, 0.685145, -0.195195,
		-0.675494, -0.726992, -0.123246,
		37.865170, 32.402771, 32.272533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.092415, 33.026707, 32.340038>,  <38.338017, 32.911667, 32.358803>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.092415, 33.026707, 32.340038> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.789619, 33.141979, 32.105457>,  <38.607941, 33.211143, 31.964710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.789619, 33.141979, 32.105457>,  <39.092415, 33.026707, 32.340038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.789619, 33.141979, 32.105457> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431063, 0.894738, -0.116745,
		0.491076, -0.341171, -0.801528,
		-0.756987, 0.288178, -0.586450,
		38.562523, 33.228432, 31.929522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.357929, 33.684448, 32.636597>,  <39.092415, 33.026707, 32.340038>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.357929, 33.684448, 32.636597> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.475243, 34.049309, 32.751122>,  <39.545631, 34.268223, 32.819836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.475243, 34.049309, 32.751122>,  <39.357929, 33.684448, 32.636597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.475243, 34.049309, 32.751122> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528909, 0.404281, -0.746198,
		-0.796392, 0.067414, 0.601011,
		0.293282, 0.912147, 0.286311,
		39.563229, 34.322952, 32.837013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.771759, 34.062229, 32.675236>,  <39.357929, 33.684448, 32.636597>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.771759, 34.062229, 32.675236> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.079010, 34.310856, 32.613747>,  <39.263363, 34.460030, 32.576851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.079010, 34.310856, 32.613747>,  <38.771759, 34.062229, 32.675236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.079010, 34.310856, 32.613747> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555020, 0.526648, -0.643890,
		-0.319259, 0.579913, 0.749516,
		0.768132, 0.621564, -0.153727,
		39.309448, 34.497326, 32.567627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.397934, 34.700615, 32.391357>,  <38.771759, 34.062229, 32.675236>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.397934, 34.700615, 32.391357> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.783081, 34.767677, 32.306709>,  <39.014168, 34.807915, 32.255920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.783081, 34.767677, 32.306709>,  <38.397934, 34.700615, 32.391357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.783081, 34.767677, 32.306709> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253709, 0.293844, -0.921568,
		-0.092319, 0.941036, 0.325467,
		0.962865, 0.167652, -0.211622,
		39.071941, 34.817974, 32.243221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.478024, 35.411980, 32.248211>,  <38.397934, 34.700615, 32.391357>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.478024, 35.411980, 32.248211> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.793922, 35.241821, 32.071423>,  <38.983459, 35.139725, 31.965349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.793922, 35.241821, 32.071423>,  <38.478024, 35.411980, 32.248211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.793922, 35.241821, 32.071423> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165248, 0.546325, -0.821110,
		0.590759, 0.721503, 0.361161,
		0.789745, -0.425397, -0.441973,
		39.030846, 35.114201, 31.938831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.904289, 35.935730, 31.932384>,  <38.478024, 35.411980, 32.248211>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.904289, 35.935730, 31.932384> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.019981, 35.595554, 31.756613>,  <39.089397, 35.391449, 31.651150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.019981, 35.595554, 31.756613>,  <38.904289, 35.935730, 31.932384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.019981, 35.595554, 31.756613> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232871, 0.382749, -0.894021,
		0.928503, 0.360907, -0.087341,
		0.289229, -0.850441, -0.439428,
		39.106750, 35.340424, 31.624784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.315418, 36.142052, 31.409149>,  <38.904289, 35.935730, 31.932384>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.315418, 36.142052, 31.409149> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.207836, 35.770176, 31.308474>,  <39.143288, 35.547050, 31.248068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.207836, 35.770176, 31.308474>,  <39.315418, 36.142052, 31.409149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.207836, 35.770176, 31.308474> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090696, 0.235709, -0.967582,
		0.958874, -0.283061, 0.020925,
		-0.268953, -0.929687, -0.251688,
		39.127151, 35.491268, 31.232967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.586395, 36.129684, 30.753380>,  <39.315418, 36.142052, 31.409149>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.586395, 36.129684, 30.753380> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.385365, 35.784451, 30.773399>,  <39.264744, 35.577312, 30.785412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.385365, 35.784451, 30.773399>,  <39.586395, 36.129684, 30.753380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.385365, 35.784451, 30.773399> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064638, -0.020216, -0.997704,
		0.862112, -0.504660, -0.045628,
		-0.502579, -0.863082, 0.050048,
		39.234592, 35.525528, 30.788414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.930073, 35.471004, 30.489147>,  <39.586395, 36.129684, 30.753380>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.930073, 35.471004, 30.489147> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.537144, 35.403858, 30.456028>,  <39.301384, 35.363571, 30.436157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.537144, 35.403858, 30.456028>,  <39.930073, 35.471004, 30.489147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.537144, 35.403858, 30.456028> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086281, -0.013546, -0.996179,
		0.166100, -0.985717, 0.027790,
		-0.982327, -0.167863, -0.082799,
		39.242447, 35.353500, 30.431189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.896564, 35.019638, 29.969669>,  <39.930073, 35.471004, 30.489147>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.896564, 35.019638, 29.969669> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.534416, 35.186310, 30.002380>,  <39.317127, 35.286312, 30.022007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.534416, 35.186310, 30.002380>,  <39.896564, 35.019638, 29.969669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.534416, 35.186310, 30.002380> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134745, -0.099283, -0.985894,
		-0.402685, -0.903614, 0.146033,
		-0.905366, 0.416682, 0.081778,
		39.262806, 35.311314, 30.026915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.453243, 34.588627, 29.578821>,  <39.896564, 35.019638, 29.969669>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.453243, 34.588627, 29.578821> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.231636, 34.920841, 29.601707>,  <39.098671, 35.120171, 29.615438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.231636, 34.920841, 29.601707>,  <39.453243, 34.588627, 29.578821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.231636, 34.920841, 29.601707> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249783, -0.100273, -0.963096,
		-0.794149, -0.547864, 0.263007,
		-0.554018, 0.830536, 0.057216,
		39.065430, 35.170002, 29.618872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.876343, 34.519794, 29.120623>,  <39.453243, 34.588627, 29.578821>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.876343, 34.519794, 29.120623> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.898514, 34.915215, 29.176756>,  <38.911816, 35.152466, 29.210436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.898514, 34.915215, 29.176756>,  <38.876343, 34.519794, 29.120623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.898514, 34.915215, 29.176756> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201735, 0.148737, -0.968081,
		-0.977871, 0.025349, 0.207670,
		0.055428, 0.988552, 0.140332,
		38.915142, 35.211781, 29.218855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.243549, 34.903343, 28.852726>,  <38.876343, 34.519794, 29.120623>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.243549, 34.903343, 28.852726> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.550854, 35.159397, 28.852247>,  <38.735237, 35.313030, 28.851959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.550854, 35.159397, 28.852247>,  <38.243549, 34.903343, 28.852726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.550854, 35.159397, 28.852247> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080319, 0.094539, -0.992276,
		-0.635078, 0.762423, 0.124046,
		0.768261, 0.640136, -0.001197,
		38.781330, 35.351437, 28.851889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.114029, 35.339336, 28.319649>,  <38.243549, 34.903343, 28.852726>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.114029, 35.339336, 28.319649> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.502449, 35.411850, 28.381880>,  <38.735500, 35.455360, 28.419218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.502449, 35.411850, 28.381880>,  <38.114029, 35.339336, 28.319649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.502449, 35.411850, 28.381880> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137728, 0.107281, -0.984643,
		-0.195195, 0.977561, 0.079206,
		0.971046, 0.181288, 0.155578,
		38.793762, 35.466236, 28.428553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.306339, 36.091248, 28.070293>,  <38.114029, 35.339336, 28.319649>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.306339, 36.091248, 28.070293> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.638378, 35.868397, 28.060921>,  <38.837601, 35.734688, 28.055296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.638378, 35.868397, 28.060921>,  <38.306339, 36.091248, 28.070293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.638378, 35.868397, 28.060921> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157629, 0.274759, -0.948504,
		0.534872, 0.783659, 0.315896,
		0.830099, -0.557123, -0.023433,
		38.887409, 35.701260, 28.053890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.074772, 36.678211, 28.368319>,  <38.306339, 36.091248, 28.070293>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.074772, 36.678211, 28.368319> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.821552, 36.871906, 28.126736>,  <37.669621, 36.988125, 27.981787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.821552, 36.871906, 28.126736>,  <38.074772, 36.678211, 28.368319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.821552, 36.871906, 28.126736> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706298, -0.041974, 0.706670,
		0.316846, 0.873929, 0.368587,
		-0.633050, 0.484237, -0.603955,
		37.631638, 37.017178, 27.945549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.860573, 37.318138, 28.752127>,  <38.074772, 36.678211, 28.368319>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.860573, 37.318138, 28.752127> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.581558, 37.236439, 28.477398>,  <37.414150, 37.187420, 28.312561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.581558, 37.236439, 28.477398>,  <37.860573, 37.318138, 28.752127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.581558, 37.236439, 28.477398> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681999, -0.104798, 0.723806,
		-0.219817, 0.973292, -0.066200,
		-0.697538, -0.204253, -0.686820,
		37.372295, 37.175163, 28.271351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.329830, 37.741417, 28.895662>,  <37.860573, 37.318138, 28.752127>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.329830, 37.741417, 28.895662> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.184341, 37.425587, 28.697966>,  <37.097050, 37.236088, 28.579348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.184341, 37.425587, 28.697966>,  <37.329830, 37.741417, 28.895662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.184341, 37.425587, 28.697966> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613456, -0.196242, 0.764958,
		-0.700983, 0.581430, -0.412992,
		-0.363723, -0.789575, -0.494244,
		37.075226, 37.188713, 28.549692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.583199, 37.801762, 29.003351>,  <37.329830, 37.741417, 28.895662>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.583199, 37.801762, 29.003351> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.700928, 37.432968, 28.902697>,  <36.771564, 37.211693, 28.842304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.700928, 37.432968, 28.902697>,  <36.583199, 37.801762, 29.003351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.700928, 37.432968, 28.902697> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452733, -0.366386, 0.812892,
		-0.841670, -0.125325, -0.525248,
		0.294319, -0.921984, -0.251638,
		36.789223, 37.156372, 28.827206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.998444, 37.427471, 28.824581>,  <36.583199, 37.801762, 29.003351>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.998444, 37.427471, 28.824581> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.264416, 37.151222, 28.938360>,  <36.424000, 36.985474, 29.006628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.264416, 37.151222, 28.938360>,  <35.998444, 37.427471, 28.824581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.264416, 37.151222, 28.938360> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643431, -0.336257, 0.687698,
		-0.379286, -0.640298, -0.667953,
		0.664935, -0.690615, 0.284450,
		36.463894, 36.944038, 29.023695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.575565, 36.786022, 28.865208>,  <35.998444, 37.427471, 28.824581>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.575565, 36.786022, 28.865208> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.907513, 36.705143, 29.073221>,  <36.106682, 36.656616, 29.198029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.907513, 36.705143, 29.073221>,  <35.575565, 36.786022, 28.865208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.907513, 36.705143, 29.073221> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556332, -0.228731, 0.798860,
		-0.042575, -0.952261, -0.302303,
		0.829869, -0.202193, 0.520035,
		36.156475, 36.644485, 29.229231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.514091, 35.973831, 29.230820>,  <35.575565, 36.786022, 28.865208>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.514091, 35.973831, 29.230820> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.778503, 36.211018, 29.414745>,  <35.937149, 36.353329, 29.525101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.778503, 36.211018, 29.414745>,  <35.514091, 35.973831, 29.230820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.778503, 36.211018, 29.414745> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390899, -0.250942, 0.885565,
		0.640498, -0.765126, 0.065911,
		0.661029, 0.592967, 0.459815,
		35.976810, 36.388908, 29.552691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.737423, 35.626831, 29.912502>,  <35.514091, 35.973831, 29.230820>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.737423, 35.626831, 29.912502> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.861710, 36.004158, 29.959156>,  <35.936283, 36.230553, 29.987148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.861710, 36.004158, 29.959156>,  <35.737423, 35.626831, 29.912502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.861710, 36.004158, 29.959156> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251259, -0.036826, 0.967219,
		0.916691, -0.329840, 0.225575,
		0.310720, 0.943319, 0.116633,
		35.954926, 36.287155, 29.994146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.148281, 35.629333, 30.562092>,  <35.737423, 35.626831, 29.912502>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.148281, 35.629333, 30.562092> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.091702, 36.023560, 30.524876>,  <36.057755, 36.260094, 30.502546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.091702, 36.023560, 30.524876>,  <36.148281, 35.629333, 30.562092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.091702, 36.023560, 30.524876> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146568, 0.072100, 0.986570,
		0.979035, 0.153190, 0.134253,
		-0.141453, 0.985563, -0.093041,
		36.049267, 36.319229, 30.496964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.484016, 35.965839, 31.125504>,  <36.148281, 35.629333, 30.562092>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.484016, 35.965839, 31.125504> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.202763, 36.214588, 30.987583>,  <36.034012, 36.363838, 30.904831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.202763, 36.214588, 30.987583>,  <36.484016, 35.965839, 31.125504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.202763, 36.214588, 30.987583> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358312, 0.108971, 0.927221,
		0.614182, 0.775504, 0.146201,
		-0.703131, 0.621868, -0.344800,
		35.991825, 36.401150, 30.884144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.585915, 36.570480, 31.558130>,  <36.484016, 35.965839, 31.125504>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.585915, 36.570480, 31.558130> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.217484, 36.606030, 31.406488>,  <35.996426, 36.627357, 31.315504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.217484, 36.606030, 31.406488>,  <36.585915, 36.570480, 31.558130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.217484, 36.606030, 31.406488> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317153, 0.393619, 0.862831,
		0.225903, 0.914968, -0.334368,
		-0.921077, 0.088870, -0.379104,
		35.941162, 36.632690, 31.292757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.481415, 37.228313, 31.723133>,  <36.585915, 36.570480, 31.558130>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.481415, 37.228313, 31.723133> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.141441, 37.029552, 31.653051>,  <35.937458, 36.910297, 31.611002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.141441, 37.029552, 31.653051>,  <36.481415, 37.228313, 31.723133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.141441, 37.029552, 31.653051> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382474, 0.353161, 0.853810,
		-0.362385, 0.792695, -0.490216,
		-0.849936, -0.496902, -0.175205,
		35.886459, 36.880482, 31.600491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.610874, 38.109890, 24.717228> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.277912, 37.914551, 24.612444>,  <39.078136, 37.797348, 24.549574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.277912, 37.914551, 24.612444>,  <39.610874, 38.109890, 24.717228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.277912, 37.914551, 24.612444> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320746, 0.039069, 0.946359,
		-0.451919, 0.871773, -0.189157,
		-0.832401, -0.488349, -0.261961,
		39.028191, 37.768047, 24.533855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.169537, 38.548401, 25.138298>,  <39.610874, 38.109890, 24.717228>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.169537, 38.548401, 25.138298> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.976093, 38.210300, 25.047363>,  <38.860027, 38.007442, 24.992802>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.976093, 38.210300, 25.047363>,  <39.169537, 38.548401, 25.138298>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.976093, 38.210300, 25.047363> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532023, 0.077619, 0.843165,
		-0.695037, 0.528708, -0.487228,
		-0.483606, -0.845247, -0.227336,
		38.831013, 37.956726, 24.979162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.511169, 38.684292, 25.456203>,  <39.169537, 38.548401, 25.138298>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.511169, 38.684292, 25.456203> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.486115, 38.296238, 25.362469>,  <38.471081, 38.063404, 25.306227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.486115, 38.296238, 25.362469>,  <38.511169, 38.684292, 25.456203>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.486115, 38.296238, 25.362469> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288153, -0.207220, 0.934895,
		-0.955534, 0.126087, -0.266567,
		-0.062640, -0.970135, -0.234338,
		38.467323, 38.005196, 25.292168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.829613, 38.432800, 25.445139>,  <38.511169, 38.684292, 25.456203>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.829613, 38.432800, 25.445139> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.050800, 38.111526, 25.533789>,  <38.183514, 37.918762, 25.586979>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.050800, 38.111526, 25.533789>,  <37.829613, 38.432800, 25.445139>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.050800, 38.111526, 25.533789> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582380, -0.182353, 0.792200,
		-0.595870, -0.567131, -0.568595,
		0.552966, -0.803187, 0.221627,
		38.216690, 37.870571, 25.600277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.371410, 37.923321, 25.654940>,  <37.829613, 38.432800, 25.445139>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.371410, 37.923321, 25.654940> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.726845, 37.802334, 25.792887>,  <37.940105, 37.729740, 25.875654>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.726845, 37.802334, 25.792887>,  <37.371410, 37.923321, 25.654940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.726845, 37.802334, 25.792887> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447817, -0.409082, 0.795054,
		-0.099400, -0.860909, -0.498954,
		0.888583, -0.302469, 0.344867,
		37.993420, 37.711594, 25.896347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.231030, 37.240040, 25.906593>,  <37.371410, 37.923321, 25.654940>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.231030, 37.240040, 25.906593> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.565205, 37.377647, 26.078035>,  <37.765709, 37.460213, 26.180901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.565205, 37.377647, 26.078035>,  <37.231030, 37.240040, 25.906593>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.565205, 37.377647, 26.078035> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265995, -0.429345, 0.863081,
		0.480933, -0.835055, -0.267183,
		0.835434, 0.344015, 0.428606,
		37.815834, 37.480850, 26.206617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.445984, 36.659744, 26.179184>,  <37.231030, 37.240040, 25.906593>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.445984, 36.659744, 26.179184> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.598625, 36.961010, 26.393520>,  <37.690208, 37.141769, 26.522121>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.598625, 36.961010, 26.393520>,  <37.445984, 36.659744, 26.179184>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.598625, 36.961010, 26.393520> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332242, -0.429201, 0.839882,
		0.862551, -0.498530, 0.086448,
		0.381603, 0.753163, 0.535841,
		37.713104, 37.186958, 26.554272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.586975, 36.307156, 26.810816>,  <37.445984, 36.659744, 26.179184>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.586975, 36.307156, 26.810816> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.635071, 36.694309, 26.899122>,  <37.663929, 36.926601, 26.952106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.635071, 36.694309, 26.899122>,  <37.586975, 36.307156, 26.810816>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.635071, 36.694309, 26.899122> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355259, -0.165704, 0.919964,
		0.927003, -0.189044, 0.323927,
		0.120237, 0.967887, 0.220767,
		37.671143, 36.984676, 26.965353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.060486, 36.364719, 27.384897>,  <37.586975, 36.307156, 26.810816>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.060486, 36.364719, 27.384897> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.834923, 36.695030, 27.380772>,  <37.699585, 36.893215, 27.378296>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.834923, 36.695030, 27.380772>,  <38.060486, 36.364719, 27.384897>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.834923, 36.695030, 27.380772> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250074, -0.158838, 0.955109,
		0.787068, 0.541169, 0.296075,
		-0.563903, 0.825776, -0.010316,
		37.665752, 36.942764, 27.377676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.849735, 36.394009, 27.501150>,  <38.060486, 36.364719, 27.384897>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.849735, 36.394009, 27.501150> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.041481, 36.051430, 27.577785>,  <39.156528, 35.845882, 27.623766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.041481, 36.051430, 27.577785>,  <38.849735, 36.394009, 27.501150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.041481, 36.051430, 27.577785> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520633, 0.101776, -0.847693,
		0.706506, 0.506101, 0.494683,
		0.479365, -0.856448, 0.191588,
		39.185291, 35.794495, 27.635262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.605518, 36.540504, 27.243814>,  <38.849735, 36.394009, 27.501150>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.605518, 36.540504, 27.243814> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.527020, 36.148308, 27.248255>,  <39.479919, 35.912991, 27.250919>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.527020, 36.148308, 27.248255>,  <39.605518, 36.540504, 27.243814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.527020, 36.148308, 27.248255> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468825, -0.103766, -0.877175,
		0.861215, -0.166935, 0.480043,
		-0.196243, -0.980492, 0.011101,
		39.468147, 35.854160, 27.251585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.169495, 36.321499, 27.006958>,  <39.605518, 36.540504, 27.243814>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.169495, 36.321499, 27.006958> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.923626, 36.006207, 26.995205>,  <39.776104, 35.817032, 26.988153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.923626, 36.006207, 26.995205>,  <40.169495, 36.321499, 27.006958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.923626, 36.006207, 26.995205> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521254, -0.377959, -0.765142,
		0.592006, -0.485628, 0.643191,
		-0.614673, -0.788234, -0.029381,
		39.739223, 35.769737, 26.986391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.623161, 35.847038, 26.948877>,  <40.169495, 36.321499, 27.006958>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.623161, 35.847038, 26.948877> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.272568, 35.718361, 26.805611>,  <40.062210, 35.641155, 26.719650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.272568, 35.718361, 26.805611>,  <40.623161, 35.847038, 26.948877>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.272568, 35.718361, 26.805611> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447062, -0.267850, -0.853459,
		0.178617, -0.908169, 0.378584,
		-0.876488, -0.321692, -0.358165,
		40.009621, 35.621853, 26.698162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.714748, 35.094387, 26.776398>,  <40.623161, 35.847038, 26.948877>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.714748, 35.094387, 26.776398> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.426239, 35.284672, 26.575016>,  <40.253136, 35.398842, 26.454187>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.426239, 35.284672, 26.575016>,  <40.714748, 35.094387, 26.776398>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.426239, 35.284672, 26.575016> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429804, -0.262603, -0.863891,
		-0.543172, -0.839486, -0.015055,
		-0.721271, 0.475712, -0.503453,
		40.209858, 35.427387, 26.423981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.621765, 34.727055, 26.143042>,  <40.714748, 35.094387, 26.776398>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.621765, 34.727055, 26.143042> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.447311, 35.074986, 26.050798>,  <40.342640, 35.283745, 25.995453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.447311, 35.074986, 26.050798>,  <40.621765, 34.727055, 26.143042>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.447311, 35.074986, 26.050798> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311898, -0.094264, -0.945428,
		-0.844099, -0.484264, -0.230186,
		-0.436139, 0.869829, -0.230610,
		40.316471, 35.335934, 25.981615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.393230, 34.616589, 25.467632>,  <40.621765, 34.727055, 26.143042>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.393230, 34.616589, 25.467632> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.398811, 35.012390, 25.525173>,  <40.402161, 35.249870, 25.559698>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.398811, 35.012390, 25.525173>,  <40.393230, 34.616589, 25.467632>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.398811, 35.012390, 25.525173> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241434, 0.136274, -0.960801,
		-0.970317, 0.048134, -0.236998,
		0.013951, 0.989501, 0.143850,
		40.402996, 35.309242, 25.568329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.853912, 34.984089, 25.026398>,  <40.393230, 34.616589, 25.467632>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.853912, 34.984089, 25.026398> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.130863, 35.264580, 25.094383>,  <40.297035, 35.432877, 25.135176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.130863, 35.264580, 25.094383>,  <39.853912, 34.984089, 25.026398>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.130863, 35.264580, 25.094383> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211505, 0.027967, -0.976977,
		-0.689838, 0.712388, -0.128950,
		0.692380, 0.701229, 0.169966,
		40.338577, 35.474949, 25.145372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.741112, 35.412735, 24.451826>,  <39.853912, 34.984089, 25.026398>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.741112, 35.412735, 24.451826> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.093021, 35.515335, 24.611927>,  <40.304169, 35.576893, 24.707987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.093021, 35.515335, 24.611927>,  <39.741112, 35.412735, 24.451826>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.093021, 35.515335, 24.611927> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370427, 0.157812, -0.915357,
		-0.297951, 0.953575, 0.043826,
		0.879778, 0.256498, 0.400250,
		40.356956, 35.592285, 24.732002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.996445, 36.081825, 24.121525>,  <39.741112, 35.412735, 24.451826>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.996445, 36.081825, 24.121525> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.339436, 35.935173, 24.265917>,  <40.545231, 35.847179, 24.352552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.339436, 35.935173, 24.265917>,  <39.996445, 36.081825, 24.121525>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.339436, 35.935173, 24.265917> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423026, 0.103007, -0.900243,
		0.292877, 0.924645, 0.243423,
		0.857480, -0.366635, 0.360981,
		40.596680, 35.825184, 24.374210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.546444, 36.489906, 23.935753>,  <39.996445, 36.081825, 24.121525>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.546444, 36.489906, 23.935753> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.707066, 36.128201, 23.993803>,  <40.803440, 35.911179, 24.028633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.707066, 36.128201, 23.993803>,  <40.546444, 36.489906, 23.935753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.707066, 36.128201, 23.993803> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430071, 0.046283, -0.901608,
		0.808574, 0.424458, 0.407483,
		0.401554, -0.904264, 0.145124,
		40.827534, 35.856922, 24.037340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.183411, 36.577991, 23.581022>,  <40.546444, 36.489906, 23.935753>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.183411, 36.577991, 23.581022> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.172073, 36.187729, 23.668011>,  <41.165272, 35.953571, 23.720203>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.172073, 36.187729, 23.668011>,  <41.183411, 36.577991, 23.581022>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.172073, 36.187729, 23.668011> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284277, -0.216442, -0.933991,
		0.958323, 0.035348, 0.283492,
		-0.028345, -0.975655, 0.217470,
		41.163570, 35.895031, 23.733252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.881195, 36.359432, 23.351725>,  <41.183411, 36.577991, 23.581022>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.881195, 36.359432, 23.351725> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.628868, 36.049301, 23.339489>,  <41.477470, 35.863224, 23.332148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.628868, 36.049301, 23.339489>,  <41.881195, 36.359432, 23.351725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.628868, 36.049301, 23.339489> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225563, -0.145518, -0.963299,
		0.742420, -0.614568, 0.266681,
		-0.630820, -0.775326, -0.030589,
		41.439621, 35.816704, 23.330313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.270763, 35.742443, 23.057190>,  <41.881195, 36.359432, 23.351725>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.270763, 35.742443, 23.057190> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.879349, 35.668262, 23.021229>,  <41.644501, 35.623756, 22.999653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.879349, 35.668262, 23.021229>,  <42.270763, 35.742443, 23.057190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.879349, 35.668262, 23.021229> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149878, -0.340937, -0.928062,
		0.141457, -0.921613, 0.361413,
		-0.978533, -0.185448, -0.089902,
		41.585789, 35.612629, 22.994259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<33.635414, 35.557404, 21.725880> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.936234, 35.768764, 21.883471>,  <34.116726, 35.895580, 21.978025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.936234, 35.768764, 21.883471>,  <33.635414, 35.557404, 21.725880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.936234, 35.768764, 21.883471> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430027, -0.059640, 0.900844,
		0.499505, -0.846896, 0.182376,
		0.752045, 0.528403, 0.393979,
		34.161846, 35.927284, 22.001663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.019947, 35.037781, 22.144960>,  <33.635414, 35.557404, 21.725880>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.019947, 35.037781, 22.144960> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.105469, 35.401066, 22.288868>,  <34.156780, 35.619038, 22.375212>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.105469, 35.401066, 22.288868>,  <34.019947, 35.037781, 22.144960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.105469, 35.401066, 22.288868> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073241, -0.352346, 0.933000,
		0.974127, -0.225828, -0.008814,
		0.213803, 0.908215, 0.359770,
		34.169609, 35.673531, 22.396799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.292416, 34.875168, 22.757912>,  <34.019947, 35.037781, 22.144960>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.292416, 34.875168, 22.757912> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.231709, 35.267769, 22.804598>,  <34.195282, 35.503330, 22.832609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.231709, 35.267769, 22.804598>,  <34.292416, 34.875168, 22.757912>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.231709, 35.267769, 22.804598> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150415, -0.139644, 0.978711,
		0.976904, 0.130983, 0.168827,
		-0.151770, 0.981501, 0.116717,
		34.186176, 35.562218, 22.839613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.778767, 35.020100, 23.294271>,  <34.292416, 34.875168, 22.757912>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.778767, 35.020100, 23.294271> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.453331, 35.248272, 23.249233>,  <34.258068, 35.385178, 23.222210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.453331, 35.248272, 23.249233>,  <34.778767, 35.020100, 23.294271>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.453331, 35.248272, 23.249233> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193100, -0.082421, 0.977711,
		0.548441, 0.817196, 0.177208,
		-0.813588, 0.570435, -0.112598,
		34.209255, 35.419403, 23.215454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.997284, 35.521049, 23.947517>,  <34.778767, 35.020100, 23.294271>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.997284, 35.521049, 23.947517> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.632107, 35.647312, 23.844061>,  <34.413002, 35.723072, 23.781986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.632107, 35.647312, 23.844061>,  <34.997284, 35.521049, 23.947517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.632107, 35.647312, 23.844061> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375452, -0.401335, 0.835444,
		0.159913, 0.859820, 0.484910,
		-0.912942, 0.315659, -0.258642,
		34.358223, 35.742008, 23.766468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.802662, 35.969013, 24.507662>,  <34.997284, 35.521049, 23.947517>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.802662, 35.969013, 24.507662> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.472996, 35.858299, 24.310015>,  <34.275196, 35.791870, 24.191427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.472996, 35.858299, 24.310015>,  <34.802662, 35.969013, 24.507662>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.472996, 35.858299, 24.310015> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389517, -0.356335, 0.849295,
		-0.411139, 0.892423, 0.185867,
		-0.824161, -0.276780, -0.494116,
		34.225746, 35.775265, 24.161779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.224060, 36.324089, 24.874916>,  <34.802662, 35.969013, 24.507662>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.224060, 36.324089, 24.874916> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.055264, 36.008987, 24.695419>,  <33.953987, 35.819927, 24.587721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.055264, 36.008987, 24.695419>,  <34.224060, 36.324089, 24.874916>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.055264, 36.008987, 24.695419> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345568, -0.317838, 0.882928,
		-0.838157, 0.527658, -0.138098,
		-0.421991, -0.787754, -0.448740,
		33.928665, 35.772663, 24.560797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.467571, 36.340759, 25.003279>,  <34.224060, 36.324089, 24.874916>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.467571, 36.340759, 25.003279> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.579285, 35.965927, 24.919483>,  <33.646313, 35.741028, 24.869205>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.579285, 35.965927, 24.919483>,  <33.467571, 36.340759, 25.003279>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.579285, 35.965927, 24.919483> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465846, -0.323007, 0.823805,
		-0.839636, -0.132483, -0.526744,
		0.279282, -0.937078, -0.209491,
		33.663071, 35.684803, 24.856636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.943230, 35.951241, 25.276056>,  <33.467571, 36.340759, 25.003279>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.943230, 35.951241, 25.276056> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.232258, 35.680305, 25.220764>,  <33.405674, 35.517746, 25.187588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.232258, 35.680305, 25.220764>,  <32.943230, 35.951241, 25.276056>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.232258, 35.680305, 25.220764> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224736, -0.419258, 0.879612,
		-0.653748, -0.604515, -0.455165,
		0.722570, -0.677336, -0.138233,
		33.449028, 35.477104, 25.179295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.633919, 35.300240, 25.350151>,  <32.943230, 35.951241, 25.276056>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.633919, 35.300240, 25.350151> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.020004, 35.240005, 25.435654>,  <33.251656, 35.203865, 25.486956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.020004, 35.240005, 25.435654>,  <32.633919, 35.300240, 25.350151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.020004, 35.240005, 25.435654> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261454, -0.545538, 0.796260,
		-0.003293, -0.824446, -0.565930,
		0.965210, -0.150587, 0.213758,
		33.309566, 35.194828, 25.499781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.750603, 34.590759, 25.490734>,  <32.633919, 35.300240, 25.350151>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.750603, 34.590759, 25.490734> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.096100, 34.725182, 25.640944>,  <33.303398, 34.805836, 25.731068>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.096100, 34.725182, 25.640944>,  <32.750603, 34.590759, 25.490734>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.096100, 34.725182, 25.640944> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120716, -0.585507, 0.801629,
		0.489261, -0.737733, -0.465160,
		0.863743, 0.336054, 0.375521,
		33.355225, 34.825996, 25.753599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.175827, 33.996128, 25.752617>,  <32.750603, 34.590759, 25.490734>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.175827, 33.996128, 25.752617> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.280506, 34.338531, 25.930946>,  <33.343315, 34.543976, 26.037945>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.280506, 34.338531, 25.930946>,  <33.175827, 33.996128, 25.752617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.280506, 34.338531, 25.930946> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122612, -0.428695, 0.895091,
		0.957330, -0.288907, -0.007231,
		0.261698, 0.856011, 0.445826,
		33.359016, 34.595333, 26.064693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.573029, 33.742565, 26.254913>,  <33.175827, 33.996128, 25.752617>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.573029, 33.742565, 26.254913> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.549149, 34.124985, 26.369743>,  <33.534821, 34.354435, 26.438643>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.549149, 34.124985, 26.369743>,  <33.573029, 33.742565, 26.254913>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.549149, 34.124985, 26.369743> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153895, -0.292966, 0.943656,
		0.986282, 0.012158, 0.164621,
		-0.059701, 0.956045, 0.287076,
		33.531239, 34.411797, 26.455866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.082668, 33.922005, 26.808010>,  <33.573029, 33.742565, 26.254913>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.082668, 33.922005, 26.808010> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.807831, 34.207584, 26.861950>,  <33.642929, 34.378933, 26.894314>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.807831, 34.207584, 26.861950>,  <34.082668, 33.922005, 26.808010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.807831, 34.207584, 26.861950> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172722, -0.340776, 0.924142,
		0.705744, 0.611677, 0.357458,
		-0.687090, 0.713948, 0.134851,
		33.601704, 34.421768, 26.902405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.859287, 34.163986, 27.101961>,  <34.082668, 33.922005, 26.808010>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.859287, 34.163986, 27.101961> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.972645, 33.783825, 27.153221>,  <35.040661, 33.555729, 27.183977>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.972645, 33.783825, 27.153221>,  <34.859287, 34.163986, 27.101961>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.972645, 33.783825, 27.153221> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379683, -0.011516, -0.925045,
		0.880640, 0.310812, 0.357588,
		0.283397, -0.950402, 0.128152,
		35.057663, 33.498703, 27.191666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.476929, 34.051373, 26.807796>,  <34.859287, 34.163986, 27.101961>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.476929, 34.051373, 26.807796> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.319660, 33.683598, 26.804712>,  <35.225300, 33.462933, 26.802862>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.319660, 33.683598, 26.804712>,  <35.476929, 34.051373, 26.807796>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.319660, 33.683598, 26.804712> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321533, -0.129629, -0.937984,
		0.861414, -0.371266, 0.346594,
		-0.393170, -0.919434, -0.007709,
		35.201710, 33.407768, 26.802399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.073235, 33.774456, 26.615349>,  <35.476929, 34.051373, 26.807796>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.073235, 33.774456, 26.615349> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.739655, 33.556362, 26.581297>,  <35.539505, 33.425507, 26.560865>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.739655, 33.556362, 26.581297>,  <36.073235, 33.774456, 26.615349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.739655, 33.556362, 26.581297> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242552, -0.223594, -0.944020,
		0.495675, -0.807916, 0.318714,
		-0.833952, -0.545232, -0.085132,
		35.489468, 33.392792, 26.555758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.247120, 33.218964, 26.319315>,  <36.073235, 33.774456, 26.615349>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.247120, 33.218964, 26.319315> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.854038, 33.235565, 26.247122>,  <35.618191, 33.245525, 26.203806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.854038, 33.235565, 26.247122>,  <36.247120, 33.218964, 26.319315>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.854038, 33.235565, 26.247122> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169893, -0.185842, -0.967781,
		-0.073704, -0.981703, 0.175577,
		-0.982703, 0.041501, -0.180481,
		35.559227, 33.248016, 26.192978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.109501, 32.674484, 25.843235>,  <36.247120, 33.218964, 26.319315>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.109501, 32.674484, 25.843235> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.795395, 32.914192, 25.780951>,  <35.606934, 33.058018, 25.743580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.795395, 32.914192, 25.780951>,  <36.109501, 32.674484, 25.843235>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.795395, 32.914192, 25.780951> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051889, -0.186907, -0.981006,
		-0.616987, -0.778426, 0.115676,
		-0.785261, 0.599265, -0.155711,
		35.559818, 33.093971, 25.734238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.728752, 32.378452, 25.213326>,  <36.109501, 32.674484, 25.843235>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.728752, 32.378452, 25.213326> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.566116, 32.743855, 25.218925>,  <35.468536, 32.963097, 25.222286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.566116, 32.743855, 25.218925>,  <35.728752, 32.378452, 25.213326>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.566116, 32.743855, 25.218925> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050900, 0.037952, -0.997983,
		-0.912193, -0.405055, -0.061928,
		-0.406588, 0.913505, 0.014002,
		35.444141, 33.017906, 25.223125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.371975, 32.314510, 24.713959>,  <35.728752, 32.378452, 25.213326>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.371975, 32.314510, 24.713959> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.385223, 32.710144, 24.771395>,  <35.393173, 32.947525, 24.805857>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.385223, 32.710144, 24.771395>,  <35.371975, 32.314510, 24.713959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.385223, 32.710144, 24.771395> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039849, 0.142250, -0.989028,
		-0.998657, 0.038479, -0.034702,
		0.033120, 0.989082, 0.143592,
		35.395161, 33.006870, 24.814472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.763157, 32.636898, 24.420412>,  <35.371975, 32.314510, 24.713959>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.763157, 32.636898, 24.420412> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.064190, 32.899921, 24.434473>,  <35.244808, 33.057735, 24.442909>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.064190, 32.899921, 24.434473>,  <34.763157, 32.636898, 24.420412>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.064190, 32.899921, 24.434473> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157586, 0.231677, -0.959944,
		-0.639368, 0.716894, 0.277978,
		0.752579, 0.657562, 0.035154,
		35.289963, 33.097191, 24.445019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.548325, 33.173878, 23.858643>,  <34.763157, 32.636898, 24.420412>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.548325, 33.173878, 23.858643> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.942234, 33.227036, 23.903458>,  <35.178581, 33.258930, 23.930346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.942234, 33.227036, 23.903458>,  <34.548325, 33.173878, 23.858643>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.942234, 33.227036, 23.903458> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060426, 0.342601, -0.937536,
		-0.162981, 0.930034, 0.329355,
		0.984777, 0.132899, 0.112036,
		35.237667, 33.266907, 23.937069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.762051, 33.882084, 23.660217>,  <34.548325, 33.173878, 23.858643>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.762051, 33.882084, 23.660217> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.116589, 33.697311, 23.647472>,  <35.329311, 33.586449, 23.639826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.116589, 33.697311, 23.647472>,  <34.762051, 33.882084, 23.660217>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.116589, 33.697311, 23.647472> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162076, 0.373979, -0.913165,
		0.433736, 0.804213, 0.406342,
		0.886343, -0.461931, -0.031864,
		35.382492, 33.558731, 23.637913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.260880, 34.406052, 23.534994>,  <34.762051, 33.882084, 23.660217>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.260880, 34.406052, 23.534994> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.393509, 34.043507, 23.430252>,  <35.473087, 33.825981, 23.367407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.393509, 34.043507, 23.430252>,  <35.260880, 34.406052, 23.534994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.393509, 34.043507, 23.430252> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296086, 0.363509, -0.883286,
		0.895763, 0.215344, 0.388891,
		0.331576, -0.906360, -0.261857,
		35.492981, 33.771599, 23.351694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.807663, 34.547691, 23.052162>,  <35.260880, 34.406052, 23.534994>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.807663, 34.547691, 23.052162> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.769222, 34.155617, 22.982872>,  <35.746159, 33.920372, 22.941298>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.769222, 34.155617, 22.982872>,  <35.807663, 34.547691, 23.052162>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.769222, 34.155617, 22.982872> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313833, 0.135319, -0.939786,
		0.944603, -0.144675, 0.294610,
		-0.096097, -0.980182, -0.173227,
		35.740395, 33.861561, 22.930904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.384068, 34.310432, 22.751736>,  <35.807663, 34.547691, 23.052162>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.384068, 34.310432, 22.751736> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.140797, 34.013771, 22.638546>,  <35.994835, 33.835773, 22.570631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.140797, 34.013771, 22.638546>,  <36.384068, 34.310432, 22.751736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.140797, 34.013771, 22.638546> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320063, 0.097113, -0.942406,
		0.726419, -0.663716, 0.178314,
		-0.608173, -0.741654, -0.282975,
		35.958344, 33.791275, 22.553654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.811752, 33.862179, 22.372602>,  <36.384068, 34.310432, 22.751736>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.811752, 33.862179, 22.372602> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.428608, 33.815784, 22.267498>,  <36.198719, 33.787949, 22.204435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.428608, 33.815784, 22.267498>,  <36.811752, 33.862179, 22.372602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.428608, 33.815784, 22.267498> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215061, 0.316751, -0.923806,
		0.190380, -0.941390, -0.278460,
		-0.957864, -0.115989, -0.262759,
		36.141247, 33.780987, 22.188669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.421986, 33.410938, 22.423126>,  <36.811752, 33.862179, 22.372602>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.421986, 33.410938, 22.423126> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.763382, 33.619358, 22.419832>,  <37.968220, 33.744411, 22.417856>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.763382, 33.619358, 22.419832>,  <37.421986, 33.410938, 22.423126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.763382, 33.619358, 22.419832> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004682, 0.008135, 0.999956,
		0.521093, -0.853488, 0.004503,
		0.853487, 0.521049, -0.008235,
		38.019428, 33.775673, 22.417362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.807991, 33.168671, 23.010191>,  <37.421986, 33.410938, 22.423126>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.807991, 33.168671, 23.010191> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.984509, 33.515934, 22.919355>,  <38.090420, 33.724293, 22.864855>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.984509, 33.515934, 22.919355>,  <37.807991, 33.168671, 23.010191>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.984509, 33.515934, 22.919355> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187653, 0.158188, 0.969413,
		0.877523, -0.470410, -0.093104,
		0.441294, 0.868154, -0.227088,
		38.116898, 33.776379, 22.851229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.559994, 33.098858, 23.308153>,  <37.807991, 33.168671, 23.010191>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.559994, 33.098858, 23.308153> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.493587, 33.489159, 23.251093>,  <38.453743, 33.723339, 23.216856>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.493587, 33.489159, 23.251093>,  <38.559994, 33.098858, 23.308153>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.493587, 33.489159, 23.251093> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229738, 0.178948, 0.956660,
		0.958988, 0.126051, -0.253876,
		-0.166018, 0.975750, -0.142650,
		38.443783, 33.781883, 23.208298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.144711, 33.430168, 23.577904>,  <38.559994, 33.098858, 23.308153>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.144711, 33.430168, 23.577904> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.859127, 33.710205, 23.573145>,  <38.687778, 33.878227, 23.570290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.859127, 33.710205, 23.573145>,  <39.144711, 33.430168, 23.577904>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.859127, 33.710205, 23.573145> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222174, 0.242624, 0.944337,
		0.664008, 0.671571, -0.328764,
		-0.713955, 0.700090, -0.011899,
		38.644939, 33.920231, 23.569574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.416142, 34.022701, 23.916214>,  <39.144711, 33.430168, 23.577904>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.416142, 34.022701, 23.916214> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.026337, 34.090485, 23.975012>,  <38.792454, 34.131157, 24.010290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.026337, 34.090485, 23.975012>,  <39.416142, 34.022701, 23.916214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.026337, 34.090485, 23.975012> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149847, 0.004103, 0.988701,
		0.166943, 0.985529, -0.029392,
		-0.974513, 0.169461, 0.146994,
		38.733982, 34.141323, 24.019110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.433720, 34.386051, 24.587740>,  <39.416142, 34.022701, 23.916214>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.433720, 34.386051, 24.587740> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.047855, 34.289341, 24.545835>,  <38.816338, 34.231316, 24.520693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.047855, 34.289341, 24.545835>,  <39.433720, 34.386051, 24.587740>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.047855, 34.289341, 24.545835> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045911, -0.237274, 0.970357,
		-0.259463, 0.940876, 0.217789,
		-0.964661, -0.241773, -0.104760,
		38.758457, 34.216808, 24.514408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.185974, 34.600094, 25.178106>,  <39.433720, 34.386051, 24.587740>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.185974, 34.600094, 25.178106> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.904591, 34.352993, 25.037521>,  <38.735760, 34.204731, 24.953171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.904591, 34.352993, 25.037521>,  <39.185974, 34.600094, 25.178106>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.904591, 34.352993, 25.037521> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252034, -0.245550, 0.936047,
		-0.664550, 0.747049, 0.017039,
		-0.703457, -0.617756, -0.351462,
		38.693554, 34.167667, 24.932083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.633118, 34.703705, 25.575241>,  <39.185974, 34.600094, 25.178106>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.633118, 34.703705, 25.575241> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.575741, 34.342514, 25.413225>,  <38.541313, 34.125801, 25.316015>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.575741, 34.342514, 25.413225>,  <38.633118, 34.703705, 25.575241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.575741, 34.342514, 25.413225> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010992, -0.407793, 0.913008,
		-0.989597, 0.135420, 0.048571,
		-0.143447, -0.902976, -0.405039,
		38.532707, 34.071621, 25.291714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.067719, 34.488056, 25.969959>,  <38.633118, 34.703705, 25.575241>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.067719, 34.488056, 25.969959> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.251740, 34.170017, 25.811882>,  <38.362152, 33.979195, 25.717035>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.251740, 34.170017, 25.811882>,  <38.067719, 34.488056, 25.969959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.251740, 34.170017, 25.811882> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078829, -0.479907, 0.873771,
		-0.884386, -0.370827, -0.283458,
		0.460052, -0.795096, -0.395191,
		38.389755, 33.931488, 25.693325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.687000, 33.841900, 26.033278>,  <38.067719, 34.488056, 25.969959>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.687000, 33.841900, 26.033278> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.061192, 33.703716, 26.003504>,  <38.285706, 33.620808, 25.985640>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.061192, 33.703716, 26.003504>,  <37.687000, 33.841900, 26.033278>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.061192, 33.703716, 26.003504> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168575, -0.621363, 0.765174,
		-0.310586, -0.703255, -0.639507,
		0.935478, -0.345456, -0.074435,
		38.341835, 33.600079, 25.981173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.599220, 33.135239, 26.077766>,  <37.687000, 33.841900, 26.033278>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.599220, 33.135239, 26.077766> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.989986, 33.191635, 26.141953>,  <38.224445, 33.225475, 26.180464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.989986, 33.191635, 26.141953>,  <37.599220, 33.135239, 26.077766>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.989986, 33.191635, 26.141953> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026266, -0.666225, 0.745288,
		0.211988, -0.732301, -0.647145,
		0.976919, 0.140994, 0.160466,
		38.283062, 33.233932, 26.190092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.901749, 32.382370, 26.221245>,  <37.599220, 33.135239, 26.077766>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.901749, 32.382370, 26.221245> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.112633, 32.677696, 26.389502>,  <38.239162, 32.854893, 26.490456>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.112633, 32.677696, 26.389502>,  <37.901749, 32.382370, 26.221245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.112633, 32.677696, 26.389502> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099266, -0.545150, 0.832441,
		0.843919, -0.397113, -0.360697,
		0.527207, 0.738317, 0.420643,
		38.270794, 32.899193, 26.515694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.464016, 32.008007, 26.669514>,  <37.901749, 32.382370, 26.221245>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.464016, 32.008007, 26.669514> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.453121, 32.387798, 26.794571>,  <38.446587, 32.615673, 26.869606>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.453121, 32.387798, 26.794571>,  <38.464016, 32.008007, 26.669514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.453121, 32.387798, 26.794571> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117490, -0.307550, 0.944250,
		0.992701, 0.062449, -0.103178,
		-0.027235, 0.949480, 0.312643,
		38.444950, 32.672642, 26.888363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.949238, 31.965708, 27.250097>,  <38.464016, 32.008007, 26.669514>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.949238, 31.965708, 27.250097> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.730316, 32.297390, 27.295486>,  <38.598965, 32.496399, 27.322720>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.730316, 32.297390, 27.295486>,  <38.949238, 31.965708, 27.250097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.730316, 32.297390, 27.295486> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123828, -0.214318, 0.968883,
		0.827723, 0.516222, 0.219976,
		-0.547304, 0.829206, 0.113473,
		38.566124, 32.546150, 27.329529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<42.153511, 34.809334, 22.736118> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.836853, 35.042416, 22.662628>,  <41.646858, 35.182262, 22.618534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.836853, 35.042416, 22.662628>,  <42.153511, 34.809334, 22.736118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.836853, 35.042416, 22.662628> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089198, -0.407709, -0.908745,
		-0.604435, -0.703015, 0.374736,
		-0.791645, 0.582703, -0.183726,
		41.599358, 35.217228, 22.607510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.707741, 34.312668, 22.349518>,  <42.153511, 34.809334, 22.736118>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.707741, 34.312668, 22.349518> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.544979, 34.675385, 22.305393>,  <41.447323, 34.893013, 22.278919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.544979, 34.675385, 22.305393>,  <41.707741, 34.312668, 22.349518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.544979, 34.675385, 22.305393> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079829, -0.155596, -0.984590,
		-0.909977, -0.391825, 0.135700,
		-0.406901, 0.906787, -0.110310,
		41.422909, 34.947422, 22.272301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.046425, 34.264927, 21.868591>,  <41.707741, 34.312668, 22.349518>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.046425, 34.264927, 21.868591> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.150589, 34.651012, 21.877996>,  <41.213089, 34.882664, 21.883640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.150589, 34.651012, 21.877996>,  <41.046425, 34.264927, 21.868591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.150589, 34.651012, 21.877996> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028924, 0.032143, -0.999065,
		-0.965065, 0.259486, 0.036288,
		0.260410, 0.965212, 0.023515,
		41.228710, 34.940575, 21.885052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.437141, 34.750172, 21.400764>,  <41.046425, 34.264927, 21.868591>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.437141, 34.750172, 21.400764> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.775002, 34.963593, 21.383421>,  <40.977718, 35.091644, 21.373014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.775002, 34.963593, 21.383421>,  <40.437141, 34.750172, 21.400764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.775002, 34.963593, 21.383421> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170941, 0.192084, -0.966376,
		-0.507286, 0.823665, 0.253451,
		0.844654, 0.533554, -0.043357,
		41.028397, 35.123657, 21.370415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.301979, 35.346371, 20.944925>,  <40.437141, 34.750172, 21.400764>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.301979, 35.346371, 20.944925> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.701088, 35.321175, 20.953711>,  <40.940552, 35.306057, 20.958981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.701088, 35.321175, 20.953711>,  <40.301979, 35.346371, 20.944925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.701088, 35.321175, 20.953711> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038467, 0.274339, -0.960863,
		0.054497, 0.959568, 0.276150,
		0.997773, -0.062987, 0.021962,
		41.000420, 35.302280, 20.960299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.587589, 35.997704, 20.533134>,  <40.301979, 35.346371, 20.944925>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.587589, 35.997704, 20.533134> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.838245, 35.686100, 20.541811>,  <40.988640, 35.499138, 20.547016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.838245, 35.686100, 20.541811>,  <40.587589, 35.997704, 20.533134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.838245, 35.686100, 20.541811> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055310, 0.016693, -0.998330,
		0.777345, 0.626792, 0.053547,
		0.626639, -0.779008, 0.021692,
		41.026237, 35.452396, 20.548319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.080452, 36.189503, 20.129974>,  <40.587589, 35.997704, 20.533134>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.080452, 36.189503, 20.129974> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.125988, 35.792210, 20.139132>,  <41.153309, 35.553833, 20.144625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.125988, 35.792210, 20.139132>,  <41.080452, 36.189503, 20.129974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.125988, 35.792210, 20.139132> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067029, -0.030667, -0.997280,
		0.991235, 0.111995, -0.070066,
		0.113839, -0.993235, 0.022891,
		41.160141, 35.494240, 20.145998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.588070, 36.126736, 19.681818>,  <41.080452, 36.189503, 20.129974>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.588070, 36.126736, 19.681818> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.413506, 35.768181, 19.712908>,  <41.308769, 35.553047, 19.731562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.413506, 35.768181, 19.712908>,  <41.588070, 36.126736, 19.681818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.413506, 35.768181, 19.712908> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111074, -0.139399, -0.983987,
		0.892867, -0.420786, 0.160400,
		-0.436408, -0.896385, 0.077727,
		41.282581, 35.499264, 19.736225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.041283, 35.764221, 19.322124>,  <41.588070, 36.126736, 19.681818>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.041283, 35.764221, 19.322124> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.699131, 35.558044, 19.342710>,  <41.493839, 35.434338, 19.355062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.699131, 35.558044, 19.342710>,  <42.041283, 35.764221, 19.322124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.699131, 35.558044, 19.342710> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035242, -0.041218, -0.998528,
		0.516801, -0.855935, 0.017092,
		-0.855380, -0.515438, 0.051467,
		41.442516, 35.403412, 19.358150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.184608, 35.286869, 18.863464>,  <42.041283, 35.764221, 19.322124>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.184608, 35.286869, 18.863464> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.786869, 35.282619, 18.905729>,  <41.548225, 35.280067, 18.931087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.786869, 35.282619, 18.905729>,  <42.184608, 35.286869, 18.863464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.786869, 35.282619, 18.905729> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105962, 0.033243, -0.993814,
		0.007034, -0.999391, -0.034179,
		-0.994346, -0.010612, 0.105664,
		41.488567, 35.279430, 18.937428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.823914, 34.805225, 18.266558>,  <42.184608, 35.286869, 18.863464>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.823914, 34.805225, 18.266558> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.513027, 35.039051, 18.359699>,  <41.326496, 35.179348, 18.415585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.513027, 35.039051, 18.359699>,  <41.823914, 34.805225, 18.266558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.513027, 35.039051, 18.359699> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185139, 0.141237, -0.972510,
		-0.601382, -0.798960, -0.001546,
		-0.777215, 0.584564, 0.232856,
		41.279861, 35.214420, 18.429556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.348270, 34.753033, 17.744783>,  <41.823914, 34.805225, 18.266558>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.348270, 34.753033, 17.744783> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.196148, 35.080441, 17.917013>,  <41.104874, 35.276886, 18.020351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.196148, 35.080441, 17.917013>,  <41.348270, 34.753033, 17.744783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.196148, 35.080441, 17.917013> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462714, 0.234707, -0.854873,
		-0.800789, -0.524345, 0.289481,
		-0.380305, 0.818520, 0.430573,
		41.082058, 35.325996, 18.046185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.663040, 34.645794, 17.600130>,  <41.348270, 34.753033, 17.744783>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.663040, 34.645794, 17.600130> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.673592, 35.033432, 17.698236>,  <40.679924, 35.266014, 17.757101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.673592, 35.033432, 17.698236>,  <40.663040, 34.645794, 17.600130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.673592, 35.033432, 17.698236> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582200, 0.214342, -0.784284,
		-0.812618, -0.122102, 0.569863,
		0.026383, 0.969097, 0.245267,
		40.681507, 35.324162, 17.771816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.071594, 34.971851, 17.279224>,  <40.663040, 34.645794, 17.600130>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.071594, 34.971851, 17.279224> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.305935, 35.287563, 17.352768>,  <40.446541, 35.476990, 17.396894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.305935, 35.287563, 17.352768>,  <40.071594, 34.971851, 17.279224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.305935, 35.287563, 17.352768> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580021, 0.566814, -0.585062,
		-0.565994, 0.236120, 0.789872,
		0.585855, 0.789284, 0.183858,
		40.481693, 35.524349, 17.407925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.832188, 34.646004, 16.650122>,  <40.071594, 34.971851, 17.279224>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.832188, 34.646004, 16.650122> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.670494, 34.292484, 16.744354>,  <39.573479, 34.080372, 16.800894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.670494, 34.292484, 16.744354>,  <39.832188, 34.646004, 16.650122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.670494, 34.292484, 16.744354> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414571, 0.406628, 0.814116,
		-0.815306, 0.231428, -0.530770,
		-0.404235, -0.883796, 0.235583,
		39.549225, 34.027344, 16.815029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.026966, 34.717865, 16.888403>,  <39.832188, 34.646004, 16.650122>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.026966, 34.717865, 16.888403> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.194695, 34.391262, 17.047140>,  <39.295330, 34.195301, 17.142382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.194695, 34.391262, 17.047140>,  <39.026966, 34.717865, 16.888403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.194695, 34.391262, 17.047140> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356156, 0.254130, 0.899205,
		-0.835061, -0.518389, -0.184244,
		0.419316, -0.816511, 0.396842,
		39.320488, 34.146309, 17.166193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.698765, 34.684433, 17.428101>,  <39.026966, 34.717865, 16.888403>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.698765, 34.684433, 17.428101> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.967510, 34.400719, 17.513445>,  <39.128757, 34.230492, 17.564651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.967510, 34.400719, 17.513445>,  <38.698765, 34.684433, 17.428101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.967510, 34.400719, 17.513445> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400667, -0.105759, 0.910099,
		-0.622952, -0.696946, -0.355241,
		0.671861, -0.709282, 0.213361,
		39.169067, 34.187935, 17.577454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.367928, 34.020824, 17.654879>,  <38.698765, 34.684433, 17.428101>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.367928, 34.020824, 17.654879> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.734993, 34.009205, 17.813396>,  <38.955231, 34.002232, 17.908506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.734993, 34.009205, 17.813396>,  <38.367928, 34.020824, 17.654879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.734993, 34.009205, 17.813396> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395920, -0.151547, 0.905693,
		0.033749, -0.988023, -0.150570,
		0.917664, -0.029047, 0.396293,
		39.010292, 34.000488, 17.932283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.412498, 33.422455, 18.102909>,  <38.367928, 34.020824, 17.654879>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.412498, 33.422455, 18.102909> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.706573, 33.667324, 18.219349>,  <38.883018, 33.814247, 18.289213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.706573, 33.667324, 18.219349>,  <38.412498, 33.422455, 18.102909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.706573, 33.667324, 18.219349> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237919, -0.169080, 0.956455,
		0.634738, -0.772433, 0.021342,
		0.735189, 0.612176, 0.291098,
		38.927132, 33.850975, 18.306679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.759636, 33.000847, 18.611971>,  <38.412498, 33.422455, 18.102909>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.759636, 33.000847, 18.611971> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.837044, 33.387611, 18.678471>,  <38.883488, 33.619671, 18.718370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.837044, 33.387611, 18.678471>,  <38.759636, 33.000847, 18.611971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.837044, 33.387611, 18.678471> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269955, -0.110432, 0.956519,
		0.943225, -0.229987, 0.239650,
		0.193522, 0.966908, 0.166248,
		38.895100, 33.677685, 18.728346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.153496, 33.007324, 19.130367>,  <38.759636, 33.000847, 18.611971>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.153496, 33.007324, 19.130367> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.042942, 33.389229, 19.174257>,  <38.976608, 33.618370, 19.200590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.042942, 33.389229, 19.174257>,  <39.153496, 33.007324, 19.130367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.042942, 33.389229, 19.174257> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113469, -0.145790, 0.982787,
		0.954325, 0.259178, 0.148631,
		-0.276385, 0.954763, 0.109723,
		38.960026, 33.675659, 19.207174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.460510, 33.174431, 19.738049>,  <39.153496, 33.007324, 19.130367>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.460510, 33.174431, 19.738049> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.184448, 33.460094, 19.691290>,  <39.018810, 33.631493, 19.663235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.184448, 33.460094, 19.691290>,  <39.460510, 33.174431, 19.738049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.184448, 33.460094, 19.691290> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067342, 0.097455, 0.992959,
		0.720525, 0.693164, -0.019166,
		-0.690151, 0.714162, -0.116897,
		38.977402, 33.674343, 19.656221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.651180, 33.527225, 20.313944>,  <39.460510, 33.174431, 19.738049>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.651180, 33.527225, 20.313944> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.301090, 33.684845, 20.201721>,  <39.091038, 33.779415, 20.134388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.301090, 33.684845, 20.201721>,  <39.651180, 33.527225, 20.313944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.301090, 33.684845, 20.201721> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155368, 0.320263, 0.934501,
		0.458091, 0.861485, -0.219078,
		-0.875222, 0.394049, -0.280557,
		39.038525, 33.803059, 20.117554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.500896, 34.283455, 20.647844>,  <39.651180, 33.527225, 20.313944>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.500896, 34.283455, 20.647844> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.140091, 34.143681, 20.546448>,  <38.923607, 34.059814, 20.485611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.140091, 34.143681, 20.546448>,  <39.500896, 34.283455, 20.647844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.140091, 34.143681, 20.546448> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375109, 0.343784, 0.860875,
		-0.213676, 0.871611, -0.441177,
		-0.902018, -0.349438, -0.253491,
		38.869484, 34.038849, 20.470400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.980965, 34.794441, 20.859560>,  <39.500896, 34.283455, 20.647844>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.980965, 34.794441, 20.859560> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.812416, 34.431931, 20.846212>,  <38.711288, 34.214424, 20.838203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.812416, 34.431931, 20.846212>,  <38.980965, 34.794441, 20.859560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.812416, 34.431931, 20.846212> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350013, 0.128574, 0.927879,
		-0.836624, 0.402659, -0.371385,
		-0.421369, -0.906275, -0.033368,
		38.686005, 34.160049, 20.836203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.255753, 34.863659, 21.066469>,  <38.980965, 34.794441, 20.859560>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.255753, 34.863659, 21.066469> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.329712, 34.473175, 21.111788>,  <38.374088, 34.238884, 21.138979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.329712, 34.473175, 21.111788>,  <38.255753, 34.863659, 21.066469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.329712, 34.473175, 21.111788> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384251, 0.034294, 0.922592,
		-0.904524, -0.214121, -0.368767,
		0.184900, -0.976205, 0.113296,
		38.385181, 34.180313, 21.145777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.664192, 34.676750, 21.387428>,  <38.255753, 34.863659, 21.066469>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.664192, 34.676750, 21.387428> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.896740, 34.352505, 21.415499>,  <38.036266, 34.157959, 21.432341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.896740, 34.352505, 21.415499>,  <37.664192, 34.676750, 21.387428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.896740, 34.352505, 21.415499> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418218, -0.223731, 0.880363,
		-0.697931, -0.541161, -0.469081,
		0.581366, -0.810610, 0.070174,
		38.071148, 34.109322, 21.436550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.292698, 34.133202, 21.552650>,  <37.664192, 34.676750, 21.387428>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.292698, 34.133202, 21.552650> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.663445, 34.101974, 21.699526>,  <37.885891, 34.083237, 21.787651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.663445, 34.101974, 21.699526>,  <37.292698, 34.133202, 21.552650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.663445, 34.101974, 21.699526> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375150, -0.157104, 0.913554,
		-0.013630, -0.984492, -0.174900,
		0.926864, -0.078065, 0.367191,
		37.941505, 34.078556, 21.809683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.837181, 33.583408, 21.604486>,  <37.292698, 34.133202, 21.552650>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.837181, 33.583408, 21.604486> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.465527, 33.714039, 21.673832>,  <36.242535, 33.792419, 21.715439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.465527, 33.714039, 21.673832>,  <36.837181, 33.583408, 21.604486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.465527, 33.714039, 21.673832> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071282, 0.301860, -0.950683,
		-0.362806, -0.895670, -0.257189,
		-0.929134, 0.326581, 0.173363,
		36.186787, 33.812012, 21.725842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.333187, 33.197887, 21.178837>,  <36.837181, 33.583408, 21.604486>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.333187, 33.197887, 21.178837> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.177944, 33.555435, 21.268608>,  <36.084797, 33.769966, 21.322470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.177944, 33.555435, 21.268608>,  <36.333187, 33.197887, 21.178837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.177944, 33.555435, 21.268608> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118522, 0.193083, -0.973998,
		-0.913962, -0.404614, 0.031007,
		-0.388107, 0.893872, 0.224426,
		36.061512, 33.823597, 21.335936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.688610, 33.383877, 20.754662>,  <36.333187, 33.197887, 21.178837>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.688610, 33.383877, 20.754662> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.831997, 33.736534, 20.877436>,  <35.918030, 33.948128, 20.951099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.831997, 33.736534, 20.877436>,  <35.688610, 33.383877, 20.754662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.831997, 33.736534, 20.877436> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076536, 0.355432, -0.931563,
		-0.930400, 0.310444, 0.194888,
		0.358467, 0.881642, 0.306933,
		35.939537, 34.001026, 20.969515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.308487, 33.889355, 20.396292>,  <35.688610, 33.383877, 20.754662>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.308487, 33.889355, 20.396292> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.577282, 34.158581, 20.519855>,  <35.738560, 34.320114, 20.593994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.577282, 34.158581, 20.519855>,  <35.308487, 33.889355, 20.396292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.577282, 34.158581, 20.519855> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012133, 0.407062, -0.913320,
		-0.740465, 0.617485, 0.265373,
		0.671985, 0.673062, 0.308907,
		35.778877, 34.360500, 20.612528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.085697, 34.550167, 20.216061>,  <35.308487, 33.889355, 20.396292>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.085697, 34.550167, 20.216061> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.482635, 34.584938, 20.251127>,  <35.720798, 34.605801, 20.272167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.482635, 34.584938, 20.251127>,  <35.085697, 34.550167, 20.216061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.482635, 34.584938, 20.251127> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064359, 0.241741, -0.968204,
		-0.105355, 0.966439, 0.234297,
		0.992350, 0.086926, 0.087668,
		35.780342, 34.611015, 20.277428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.227024, 35.066154, 19.738173>,  <35.085697, 34.550167, 20.216061>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.227024, 35.066154, 19.738173> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.596638, 34.925629, 19.798483>,  <35.818405, 34.841312, 19.834669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.596638, 34.925629, 19.798483>,  <35.227024, 35.066154, 19.738173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.596638, 34.925629, 19.798483> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256242, 0.276457, -0.926235,
		0.283718, 0.894510, 0.345479,
		0.924037, -0.351316, 0.150775,
		35.873848, 34.820232, 19.843716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.619148, 35.609306, 19.515257>,  <35.227024, 35.066154, 19.738173>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.619148, 35.609306, 19.515257> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.840340, 35.276424, 19.499002>,  <35.973053, 35.076694, 19.489250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.840340, 35.276424, 19.499002>,  <35.619148, 35.609306, 19.515257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.840340, 35.276424, 19.499002> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194784, 0.176542, -0.964827,
		0.810109, 0.525611, 0.259724,
		0.552976, -0.832206, -0.040637,
		36.006233, 35.026764, 19.486811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.053101, 36.205502, 19.874010>,  <35.619148, 35.609306, 19.515257>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.053101, 36.205502, 19.874010> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.741310, 36.427471, 19.757748>,  <35.554237, 36.560654, 19.687990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.741310, 36.427471, 19.757748>,  <36.053101, 36.205502, 19.874010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.741310, 36.427471, 19.757748> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385553, -0.059282, 0.920779,
		0.493732, 0.829786, 0.260161,
		-0.779472, 0.554924, -0.290657,
		35.507469, 36.593948, 19.670551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.061005, 36.806332, 20.267706>,  <36.053101, 36.205502, 19.874010>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.061005, 36.806332, 20.267706> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.690479, 36.733246, 20.135910>,  <35.468166, 36.689396, 20.056833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.690479, 36.733246, 20.135910>,  <36.061005, 36.806332, 20.267706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.690479, 36.733246, 20.135910> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326050, -0.049447, 0.944059,
		-0.188784, 0.981922, -0.013770,
		-0.926311, -0.182713, -0.329490,
		35.412586, 36.678432, 20.037064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.684540, 37.244930, 20.672379>,  <36.061005, 36.806332, 20.267706>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.684540, 37.244930, 20.672379> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.445877, 36.962341, 20.520117>,  <35.302681, 36.792789, 20.428759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.445877, 36.962341, 20.520117>,  <35.684540, 37.244930, 20.672379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.445877, 36.962341, 20.520117> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437181, -0.111622, 0.892420,
		-0.672958, 0.698885, -0.242255,
		-0.596658, -0.706470, -0.380656,
		35.266880, 36.750401, 20.405920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.061718, 37.416374, 21.012819>,  <35.684540, 37.244930, 20.672379>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.061718, 37.416374, 21.012819> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.010956, 37.043331, 20.877678>,  <34.980499, 36.819508, 20.796593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.010956, 37.043331, 20.877678>,  <35.061718, 37.416374, 21.012819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.010956, 37.043331, 20.877678> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414004, -0.259722, 0.872437,
		-0.901386, 0.250588, -0.353142,
		-0.126904, -0.932604, -0.337854,
		34.972885, 36.763550, 20.776321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.344528, 37.224483, 20.981148>,  <35.061718, 37.416374, 21.012819>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.344528, 37.224483, 20.981148> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.528168, 36.871117, 21.018660>,  <34.638351, 36.659096, 21.041166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.528168, 36.871117, 21.018660>,  <34.344528, 37.224483, 20.981148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.528168, 36.871117, 21.018660> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481320, -0.158622, 0.862073,
		-0.746699, -0.440913, -0.498032,
		0.459099, -0.883422, 0.093778,
		34.665897, 36.606091, 21.046793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.881699, 36.824127, 21.237400>,  <34.344528, 37.224483, 20.981148>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.881699, 36.824127, 21.237400> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.189693, 36.576935, 21.300936>,  <34.374489, 36.428619, 21.339058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.189693, 36.576935, 21.300936>,  <33.881699, 36.824127, 21.237400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.189693, 36.576935, 21.300936> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429968, -0.318597, 0.844762,
		-0.471439, -0.718747, -0.511025,
		0.769982, -0.617979, 0.158839,
		34.420689, 36.391541, 21.348587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.636032, 36.218517, 21.341940>,  <33.881699, 36.824127, 21.237400>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.636032, 36.218517, 21.341940> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.999035, 36.188080, 21.507175>,  <34.216835, 36.169815, 21.606318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.999035, 36.188080, 21.507175>,  <33.636032, 36.218517, 21.341940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.999035, 36.188080, 21.507175> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412552, -0.346348, 0.842522,
		0.078962, -0.935015, -0.345706,
		0.907505, -0.076095, 0.413091,
		34.271286, 36.165253, 21.631104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<38.882553, 37.787273, 17.984409> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.128582, 37.496777, 17.861607>,  <39.276199, 37.322479, 17.787924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.128582, 37.496777, 17.861607>,  <38.882553, 37.787273, 17.984409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.128582, 37.496777, 17.861607> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110570, -0.306078, 0.945563,
		-0.780676, -0.615540, -0.107961,
		0.615077, -0.726242, -0.307008,
		39.313107, 37.278904, 17.769505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.606106, 37.112556, 18.191837>,  <38.882553, 37.787273, 17.984409>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.606106, 37.112556, 18.191837> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.001842, 37.097546, 18.135572>,  <39.239285, 37.088539, 18.101812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.001842, 37.097546, 18.135572>,  <38.606106, 37.112556, 18.191837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.001842, 37.097546, 18.135572> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123966, -0.289440, 0.949135,
		-0.076335, -0.956460, -0.281704,
		0.989346, -0.037530, -0.140663,
		39.298645, 37.086288, 18.093374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.790401, 36.464924, 18.543821>,  <38.606106, 37.112556, 18.191837>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.790401, 36.464924, 18.543821> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.122833, 36.687336, 18.539322>,  <39.322292, 36.820786, 18.536623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.122833, 36.687336, 18.539322>,  <38.790401, 36.464924, 18.543821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.122833, 36.687336, 18.539322> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087743, -0.111120, 0.989926,
		0.549183, -0.823698, -0.141138,
		0.831083, 0.556035, -0.011248,
		39.372158, 36.854145, 18.535948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.212170, 36.094559, 18.993551>,  <38.790401, 36.464924, 18.543821>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.212170, 36.094559, 18.993551> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.389660, 36.452267, 18.970257>,  <39.496155, 36.666889, 18.956280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.389660, 36.452267, 18.970257>,  <39.212170, 36.094559, 18.993551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.389660, 36.452267, 18.970257> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152103, -0.011110, 0.988302,
		0.883160, -0.447395, -0.140950,
		0.443727, 0.894268, -0.058238,
		39.522778, 36.720547, 18.952785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.726322, 36.019672, 19.565535>,  <39.212170, 36.094559, 18.993551>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.726322, 36.019672, 19.565535> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.691433, 36.412121, 19.496492>,  <39.670502, 36.647591, 19.455067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.691433, 36.412121, 19.496492>,  <39.726322, 36.019672, 19.565535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.691433, 36.412121, 19.496492> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016710, 0.174681, 0.984483,
		0.996049, 0.082983, -0.031630,
		-0.087220, 0.981122, -0.172604,
		39.665268, 36.706459, 19.444712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.325432, 36.460258, 19.844433>,  <39.726322, 36.019672, 19.565535>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.325432, 36.460258, 19.844433> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.003559, 36.692314, 19.793955>,  <39.810436, 36.831547, 19.763668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.003559, 36.692314, 19.793955>,  <40.325432, 36.460258, 19.844433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.003559, 36.692314, 19.793955> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068431, 0.301768, 0.950922,
		0.589754, 0.756551, -0.282526,
		-0.804679, 0.580143, -0.126197,
		39.762154, 36.866356, 19.756096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.466141, 37.046078, 20.184723>,  <40.325432, 36.460258, 19.844433>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.466141, 37.046078, 20.184723> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.067287, 37.056957, 20.156494>,  <39.827976, 37.063484, 20.139557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.067287, 37.056957, 20.156494>,  <40.466141, 37.046078, 20.184723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.067287, 37.056957, 20.156494> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065463, 0.157009, 0.985425,
		0.037883, 0.987222, -0.154779,
		-0.997136, 0.027198, -0.070574,
		39.768147, 37.065117, 20.135323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.227905, 37.742638, 20.424055>,  <40.466141, 37.046078, 20.184723>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.227905, 37.742638, 20.424055> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.911316, 37.502560, 20.470249>,  <39.721363, 37.358513, 20.497965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.911316, 37.502560, 20.470249>,  <40.227905, 37.742638, 20.424055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.911316, 37.502560, 20.470249> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131083, 0.351241, 0.927064,
		-0.596978, 0.718611, -0.356674,
		-0.791476, -0.600191, 0.115485,
		39.673874, 37.322502, 20.504894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.672455, 38.129047, 20.750164>,  <40.227905, 37.742638, 20.424055>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.672455, 38.129047, 20.750164> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.576134, 37.745789, 20.812086>,  <39.518341, 37.515831, 20.849239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.576134, 37.745789, 20.812086>,  <39.672455, 38.129047, 20.750164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.576134, 37.745789, 20.812086> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389748, 0.241535, 0.888683,
		-0.888882, 0.153661, -0.431598,
		-0.240803, -0.958149, 0.154807,
		39.503895, 37.458344, 20.858528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.069405, 38.191601, 21.102547>,  <39.672455, 38.129047, 20.750164>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.069405, 38.191601, 21.102547> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.178425, 37.813770, 21.175743>,  <39.243839, 37.587070, 21.219662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.178425, 37.813770, 21.175743>,  <39.069405, 38.191601, 21.102547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.178425, 37.813770, 21.175743> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210216, 0.127136, 0.969353,
		-0.938895, -0.302669, -0.163914,
		0.272553, -0.944578, 0.182993,
		39.260189, 37.530396, 21.230640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.592346, 37.961605, 21.544682>,  <39.069405, 38.191601, 21.102547>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.592346, 37.961605, 21.544682> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.874191, 37.685844, 21.611916>,  <39.043297, 37.520390, 21.652256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.874191, 37.685844, 21.611916>,  <38.592346, 37.961605, 21.544682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.874191, 37.685844, 21.611916> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259109, -0.029446, 0.965399,
		-0.660599, -0.723780, -0.199378,
		0.704608, -0.689402, 0.168086,
		39.085575, 37.479023, 21.662342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.298920, 37.446232, 22.013824>,  <38.592346, 37.961605, 21.544682>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.298920, 37.446232, 22.013824> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.693890, 37.403461, 22.060398>,  <38.930870, 37.377800, 22.088343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.693890, 37.403461, 22.060398>,  <38.298920, 37.446232, 22.013824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.693890, 37.403461, 22.060398> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111441, 0.051555, 0.992433,
		-0.112118, -0.992930, 0.038991,
		0.987427, -0.106925, 0.116433,
		38.990116, 37.371384, 22.095327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.705036, 37.294876, 21.837698>,  <38.298920, 37.446232, 22.013824>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.705036, 37.294876, 21.837698> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.470951, 37.618889, 21.822880>,  <37.330502, 37.813297, 21.813988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.470951, 37.618889, 21.822880>,  <37.705036, 37.294876, 21.837698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.470951, 37.618889, 21.822880> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191749, 0.093848, -0.976947,
		-0.787885, -0.578821, -0.210244,
		-0.585208, 0.810036, -0.037047,
		37.295387, 37.861900, 21.811766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.314785, 37.305672, 21.107201>,  <37.705036, 37.294876, 21.837698>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.314785, 37.305672, 21.107201> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.267010, 37.673096, 21.257925>,  <37.238346, 37.893551, 21.348360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.267010, 37.673096, 21.257925>,  <37.314785, 37.305672, 21.107201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.267010, 37.673096, 21.257925> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171800, 0.392922, -0.903381,
		-0.977864, -0.043163, -0.204738,
		-0.119439, 0.918558, 0.376809,
		37.231178, 37.948662, 21.370968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.755596, 37.707420, 20.659086>,  <37.314785, 37.305672, 21.107201>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.755596, 37.707420, 20.659086> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.997669, 37.967323, 20.843073>,  <37.142914, 38.123264, 20.953465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.997669, 37.967323, 20.843073>,  <36.755596, 37.707420, 20.659086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.997669, 37.967323, 20.843073> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013127, 0.585847, -0.810315,
		-0.795980, 0.484349, 0.363072,
		0.605180, 0.649761, 0.459965,
		37.179222, 38.162251, 20.981062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.528255, 38.314964, 20.514860>,  <36.755596, 37.707420, 20.659086>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.528255, 38.314964, 20.514860> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.865040, 38.469387, 20.665619>,  <37.067112, 38.562042, 20.756075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.865040, 38.469387, 20.665619>,  <36.528255, 38.314964, 20.514860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.865040, 38.469387, 20.665619> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050754, 0.638794, -0.767702,
		-0.537141, 0.665507, 0.518247,
		0.841964, 0.386061, 0.376899,
		37.117630, 38.585205, 20.778688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.461819, 39.096565, 20.492323>,  <36.528255, 38.314964, 20.514860>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.461819, 39.096565, 20.492323> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.853397, 39.023861, 20.529469>,  <37.088345, 38.980240, 20.551756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.853397, 39.023861, 20.529469>,  <36.461819, 39.096565, 20.492323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.853397, 39.023861, 20.529469> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190504, 0.650324, -0.735382,
		0.073269, 0.737592, 0.671260,
		0.978948, -0.181758, 0.092866,
		37.147083, 38.969334, 20.557329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.882530, 39.780899, 20.372713>,  <36.461819, 39.096565, 20.492323>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.882530, 39.780899, 20.372713> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.132408, 39.475513, 20.307137>,  <37.282333, 39.292282, 20.267792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.132408, 39.475513, 20.307137>,  <36.882530, 39.780899, 20.372713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.132408, 39.475513, 20.307137> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346844, 0.459387, -0.817718,
		0.699614, 0.453961, 0.551780,
		0.624692, -0.763468, -0.163940,
		37.319817, 39.246471, 20.257956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.481388, 40.145287, 20.085129>,  <36.882530, 39.780899, 20.372713>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.481388, 40.145287, 20.085129> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.527546, 39.755245, 20.009377>,  <37.555241, 39.521221, 19.963926>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.527546, 39.755245, 20.009377>,  <37.481388, 40.145287, 20.085129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.527546, 39.755245, 20.009377> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402467, 0.220198, -0.888557,
		0.908133, 0.026312, 0.417854,
		0.115390, -0.975100, -0.189379,
		37.562164, 39.462715, 19.952562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.126408, 40.086681, 19.899466>,  <37.481388, 40.145287, 20.085129>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.126408, 40.086681, 19.899466> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.924797, 39.795250, 19.713936>,  <37.803829, 39.620392, 19.602617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.924797, 39.795250, 19.713936>,  <38.126408, 40.086681, 19.899466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.924797, 39.795250, 19.713936> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312556, 0.346765, -0.884343,
		0.805149, -0.590705, 0.052942,
		-0.504027, -0.728576, -0.463826,
		37.773590, 39.576675, 19.574787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.654560, 39.875511, 19.376461>,  <38.126408, 40.086681, 19.899466>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.654560, 39.875511, 19.376461> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.296551, 39.743137, 19.256853>,  <38.081745, 39.663715, 19.185089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.296551, 39.743137, 19.256853>,  <38.654560, 39.875511, 19.376461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.296551, 39.743137, 19.256853> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276548, 0.114234, -0.954187,
		0.349929, -0.936715, -0.010723,
		-0.895026, -0.330932, -0.299020,
		38.028042, 39.643860, 19.167147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.756199, 39.345795, 18.967087>,  <38.654560, 39.875511, 19.376461>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.756199, 39.345795, 18.967087> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.386627, 39.427540, 18.837725>,  <38.164883, 39.476585, 18.760107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.386627, 39.427540, 18.837725>,  <38.756199, 39.345795, 18.967087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.386627, 39.427540, 18.837725> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337735, 0.038653, -0.940447,
		-0.179694, -0.978131, -0.104734,
		-0.923929, 0.204365, -0.323404,
		38.109447, 39.488850, 18.740704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.630741, 38.901482, 18.421280>,  <38.756199, 39.345795, 18.967087>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.630741, 38.901482, 18.421280> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.341484, 39.173691, 18.374020>,  <38.167931, 39.337017, 18.345663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.341484, 39.173691, 18.374020>,  <38.630741, 38.901482, 18.421280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.341484, 39.173691, 18.374020> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104729, -0.061051, -0.992625,
		-0.682717, -0.730179, -0.027122,
		-0.723138, 0.680523, -0.118151,
		38.124542, 39.377846, 18.338573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.256451, 38.596424, 17.890152>,  <38.630741, 38.901482, 18.421280>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.256451, 38.596424, 17.890152> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.145020, 38.980446, 17.879723>,  <38.078159, 39.210861, 17.873465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.145020, 38.980446, 17.879723>,  <38.256451, 38.596424, 17.890152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.145020, 38.980446, 17.879723> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000366, -0.027042, -0.999634,
		-0.960413, -0.278487, 0.007182,
		-0.278580, 0.960059, -0.026073,
		38.061447, 39.268463, 17.871901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.591206, 38.642242, 17.574024>,  <38.256451, 38.596424, 17.890152>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.591206, 38.642242, 17.574024> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.777199, 38.995232, 17.545681>,  <37.888794, 39.207027, 17.528675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.777199, 38.995232, 17.545681>,  <37.591206, 38.642242, 17.574024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.777199, 38.995232, 17.545681> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247886, 0.052940, -0.967342,
		-0.849905, 0.467367, 0.243371,
		0.464987, 0.882477, -0.070860,
		37.916695, 39.259975, 17.524424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.966209, 38.378571, 17.257664>,  <37.591206, 38.642242, 17.574024>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.966209, 38.378571, 17.257664> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.752911, 38.110142, 17.051634>,  <36.624931, 37.949085, 16.928017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.752911, 38.110142, 17.051634>,  <36.966209, 38.378571, 17.257664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.752911, 38.110142, 17.051634> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666646, -0.041484, 0.744219,
		-0.520793, 0.740229, -0.425248,
		-0.533252, -0.671074, -0.515075,
		36.592934, 37.908821, 16.897112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.248291, 38.522839, 17.327671>,  <36.966209, 38.378571, 17.257664>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.248291, 38.522839, 17.327671> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.285683, 38.135742, 17.234079>,  <36.308117, 37.903484, 17.177923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.285683, 38.135742, 17.234079>,  <36.248291, 38.522839, 17.327671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.285683, 38.135742, 17.234079> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657537, -0.236472, 0.715350,
		-0.747601, 0.086983, -0.658428,
		0.093476, -0.967737, -0.233981,
		36.313725, 37.845421, 17.163885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.555515, 38.198864, 17.219749>,  <36.248291, 38.522839, 17.327671>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.555515, 38.198864, 17.219749> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.800549, 37.893951, 17.303333>,  <35.947571, 37.711002, 17.353483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.800549, 37.893951, 17.303333>,  <35.555515, 38.198864, 17.219749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.800549, 37.893951, 17.303333> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628252, -0.309166, 0.713944,
		-0.479625, -0.568630, -0.668297,
		0.612584, -0.762284, 0.208959,
		35.984325, 37.665268, 17.366022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.142212, 37.709564, 17.391603>,  <35.555515, 38.198864, 17.219749>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.142212, 37.709564, 17.391603> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.478096, 37.567123, 17.555593>,  <35.679626, 37.481659, 17.653988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.478096, 37.567123, 17.555593>,  <35.142212, 37.709564, 17.391603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.478096, 37.567123, 17.555593> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523958, -0.332920, 0.783985,
		-0.142691, -0.873129, -0.466139,
		0.839707, -0.356105, 0.409977,
		35.730007, 37.460293, 17.678587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.972622, 37.100780, 17.730356>,  <35.142212, 37.709564, 17.391603>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.972622, 37.100780, 17.730356> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.325462, 37.164917, 17.907528>,  <35.537167, 37.203400, 18.013830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.325462, 37.164917, 17.907528>,  <34.972622, 37.100780, 17.730356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.325462, 37.164917, 17.907528> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387917, -0.286171, 0.876143,
		0.267238, -0.944667, -0.190231,
		0.882102, 0.160345, 0.442928,
		35.590092, 37.213020, 18.040407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.093151, 36.500565, 18.156239>,  <34.972622, 37.100780, 17.730356>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.093151, 36.500565, 18.156239> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.335487, 36.783375, 18.302156>,  <35.480888, 36.953060, 18.389708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.335487, 36.783375, 18.302156>,  <35.093151, 36.500565, 18.156239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.335487, 36.783375, 18.302156> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233740, -0.280110, 0.931076,
		0.760475, -0.649352, -0.004443,
		0.605841, 0.707022, 0.364797,
		35.517239, 36.995480, 18.411596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.503338, 36.139320, 18.604746>,  <35.093151, 36.500565, 18.156239>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.503338, 36.139320, 18.604746> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.523422, 36.521347, 18.721590>,  <35.535473, 36.750565, 18.791697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.523422, 36.521347, 18.721590>,  <35.503338, 36.139320, 18.604746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.523422, 36.521347, 18.721590> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028314, -0.290999, 0.956304,
		0.998337, -0.056288, 0.012430,
		0.050211, 0.955066, 0.292109,
		35.538486, 36.807865, 18.809223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.006229, 36.183437, 19.157459>,  <35.503338, 36.139320, 18.604746>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.006229, 36.183437, 19.157459> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.758274, 36.492035, 19.214775>,  <35.609501, 36.677193, 19.249165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.758274, 36.492035, 19.214775>,  <36.006229, 36.183437, 19.157459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.758274, 36.492035, 19.214775> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160010, -0.303054, 0.939444,
		0.768199, 0.559427, 0.311307,
		-0.619893, 0.771492, 0.143292,
		35.572308, 36.723484, 19.257763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.700531, 35.803032, 19.292536>,  <36.006229, 36.183437, 19.157459>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.700531, 35.803032, 19.292536> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.618755, 35.416771, 19.228394>,  <36.569691, 35.185013, 19.189909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.618755, 35.416771, 19.228394>,  <36.700531, 35.803032, 19.292536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.618755, 35.416771, 19.228394> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469683, 0.046957, -0.881586,
		0.858838, -0.255547, 0.443952,
		-0.204440, -0.965656, -0.160355,
		36.557423, 35.127075, 19.180286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.340843, 35.451553, 18.974094>,  <36.700531, 35.803032, 19.292536>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.340843, 35.451553, 18.974094> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.020073, 35.222435, 18.906200>,  <36.827610, 35.084965, 18.865463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.020073, 35.222435, 18.906200>,  <37.340843, 35.451553, 18.974094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.020073, 35.222435, 18.906200> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315027, -0.164038, -0.934799,
		0.507608, -0.803115, 0.311994,
		-0.801930, -0.572798, -0.169736,
		36.779495, 35.050594, 18.855280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.515423, 34.874489, 18.627485>,  <37.340843, 35.451553, 18.974094>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.515423, 34.874489, 18.627485> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.122021, 34.860626, 18.556471>,  <36.885979, 34.852310, 18.513863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.122021, 34.860626, 18.556471>,  <37.515423, 34.874489, 18.627485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.122021, 34.860626, 18.556471> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179715, -0.075704, -0.980802,
		0.020552, -0.996528, 0.080683,
		-0.983504, -0.034658, -0.177535,
		36.826969, 34.850227, 18.503210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.461182, 34.261528, 18.150602>,  <37.515423, 34.874489, 18.627485>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.461182, 34.261528, 18.150602> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.134747, 34.485905, 18.094969>,  <36.938885, 34.620533, 18.061588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.134747, 34.485905, 18.094969>,  <37.461182, 34.261528, 18.150602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.134747, 34.485905, 18.094969> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104523, -0.093435, -0.990124,
		-0.568400, -0.822564, 0.017620,
		-0.816086, 0.560944, -0.139085,
		36.889919, 34.654186, 18.053244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.003414, 33.882305, 17.638809>,  <37.461182, 34.261528, 18.150602>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.003414, 33.882305, 17.638809> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.886021, 34.264225, 17.619949>,  <36.815582, 34.493378, 17.608633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.886021, 34.264225, 17.619949>,  <37.003414, 33.882305, 17.638809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.886021, 34.264225, 17.619949> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174895, 0.005139, -0.984574,
		-0.939829, -0.297204, -0.168498,
		-0.293485, 0.954800, -0.047150,
		36.797974, 34.550667, 17.605804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.641281, 33.828060, 17.004234>,  <37.003414, 33.882305, 17.638809>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.641281, 33.828060, 17.004234> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.657833, 34.225224, 17.048822>,  <36.667763, 34.463520, 17.075575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.657833, 34.225224, 17.048822>,  <36.641281, 33.828060, 17.004234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.657833, 34.225224, 17.048822> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077846, 0.108024, -0.991096,
		-0.996106, 0.049691, -0.072824,
		0.041381, 0.992906, 0.111472,
		36.670246, 34.523094, 17.082264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.384727, 34.078262, 16.397995>,  <36.641281, 33.828060, 17.004234>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.384727, 34.078262, 16.397995> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.574780, 34.401016, 16.538387>,  <36.688812, 34.594669, 16.622622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.574780, 34.401016, 16.538387>,  <36.384727, 34.078262, 16.397995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.574780, 34.401016, 16.538387> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204715, 0.286566, -0.935934,
		-0.855769, 0.516543, -0.029025,
		0.475132, 0.806885, 0.350979,
		36.717319, 34.643082, 16.643681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.174263, 34.580177, 15.932901>,  <36.384727, 34.078262, 16.397995>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.174263, 34.580177, 15.932901> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.513412, 34.717476, 16.094538>,  <36.716904, 34.799854, 16.191519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.513412, 34.717476, 16.094538>,  <36.174263, 34.580177, 15.932901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.513412, 34.717476, 16.094538> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301041, 0.315717, -0.899832,
		-0.436439, 0.884594, 0.164359,
		0.847877, 0.343242, 0.404090,
		36.767776, 34.820450, 16.215765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.308563, 35.145210, 15.550583>,  <36.174263, 34.580177, 15.932901>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.308563, 35.145210, 15.550583> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.660263, 35.036667, 15.707187>,  <36.871284, 34.971542, 15.801148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.660263, 35.036667, 15.707187>,  <36.308563, 35.145210, 15.550583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.660263, 35.036667, 15.707187> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430000, 0.098478, -0.897442,
		0.204973, 0.957427, 0.203271,
		0.879253, -0.271358, 0.391509,
		36.924038, 34.955261, 15.824639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.364738, 32.890892, 32.101013> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.763916, 32.905628, 32.122013>,  <35.003422, 32.914471, 32.134613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.763916, 32.905628, 32.122013>,  <34.364738, 32.890892, 32.101013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.763916, 32.905628, 32.122013> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044975, 0.181509, -0.982360,
		-0.045721, 0.982699, 0.179478,
		0.997941, 0.036842, 0.052495,
		35.063297, 32.916679, 32.137760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.593063, 33.512203, 31.708281>,  <34.364738, 32.890892, 32.101013>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.593063, 33.512203, 31.708281> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.910259, 33.268887, 31.721817>,  <35.100578, 33.122894, 31.729939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.910259, 33.268887, 31.721817>,  <34.593063, 33.512203, 31.708281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.910259, 33.268887, 31.721817> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089505, 0.061375, -0.994094,
		0.602626, 0.791334, 0.103115,
		0.792989, -0.608295, 0.033842,
		35.148155, 33.086399, 31.731970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.129280, 33.812061, 31.309824>,  <34.593063, 33.512203, 31.708281>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.129280, 33.812061, 31.309824> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.201267, 33.419521, 31.282812>,  <35.244461, 33.183998, 31.266605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.201267, 33.419521, 31.282812>,  <35.129280, 33.812061, 31.309824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.201267, 33.419521, 31.282812> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141964, 0.093842, -0.985414,
		0.973374, 0.167759, 0.156205,
		0.179970, -0.981351, -0.067528,
		35.255257, 33.125114, 31.262554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.628059, 33.805817, 30.745687>,  <35.129280, 33.812061, 31.309824>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.628059, 33.805817, 30.745687> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.497494, 33.431721, 30.800512>,  <35.419155, 33.207264, 30.833406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.497494, 33.431721, 30.800512>,  <35.628059, 33.805817, 30.745687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.497494, 33.431721, 30.800512> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265469, -0.229871, -0.936315,
		0.907182, -0.269241, 0.323310,
		-0.326414, -0.935237, 0.137060,
		35.399570, 33.151150, 30.841631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.179710, 33.344753, 30.488680>,  <35.628059, 33.805817, 30.745687>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.179710, 33.344753, 30.488680> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.823975, 33.163002, 30.468212>,  <35.610535, 33.053951, 30.455931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.823975, 33.163002, 30.468212>,  <36.179710, 33.344753, 30.488680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.823975, 33.163002, 30.468212> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118158, -0.120263, -0.985685,
		0.441718, -0.882655, 0.160643,
		-0.889339, -0.454376, -0.051170,
		35.557175, 33.026688, 30.452862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.237133, 32.864384, 29.950932>,  <36.179710, 33.344753, 30.488680>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.237133, 32.864384, 29.950932> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.839687, 32.852173, 29.994377>,  <35.601219, 32.844845, 30.020445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.839687, 32.852173, 29.994377>,  <36.237133, 32.864384, 29.950932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.839687, 32.852173, 29.994377> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097796, -0.246984, -0.964072,
		0.056259, -0.968538, 0.242421,
		-0.993615, -0.030530, 0.108614,
		35.541603, 32.843014, 30.026960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.999458, 32.283474, 29.437069>,  <36.237133, 32.864384, 29.950932>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.999458, 32.283474, 29.437069> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.695541, 32.527248, 29.527660>,  <35.513191, 32.673515, 29.582016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.695541, 32.527248, 29.527660>,  <35.999458, 32.283474, 29.437069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.695541, 32.527248, 29.527660> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222830, 0.083151, -0.971305,
		-0.610783, -0.788461, 0.072623,
		-0.759797, 0.609438, 0.226480,
		35.467602, 32.710079, 29.595604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.450184, 31.972160, 29.190077>,  <35.999458, 32.283474, 29.437069>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.450184, 31.972160, 29.190077> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.309105, 32.345184, 29.220901>,  <35.224457, 32.569000, 29.239395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.309105, 32.345184, 29.220901>,  <35.450184, 31.972160, 29.190077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.309105, 32.345184, 29.220901> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323621, -0.044294, -0.945150,
		-0.877995, -0.358289, 0.317418,
		-0.352697, 0.932559, 0.077060,
		35.203297, 32.624950, 29.244019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.726608, 32.025356, 28.830235>,  <35.450184, 31.972160, 29.190077>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.726608, 32.025356, 28.830235> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.880531, 32.394463, 28.822023>,  <34.972885, 32.615929, 28.817097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.880531, 32.394463, 28.822023>,  <34.726608, 32.025356, 28.830235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.880531, 32.394463, 28.822023> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394377, 0.144272, -0.907553,
		-0.834500, 0.357328, 0.419436,
		0.384807, 0.922769, -0.020527,
		34.995972, 32.671291, 28.815865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.265171, 32.446259, 28.586084>,  <34.726608, 32.025356, 28.830235>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.265171, 32.446259, 28.586084> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.607285, 32.631172, 28.492458>,  <34.812553, 32.742119, 28.436283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.607285, 32.631172, 28.492458>,  <34.265171, 32.446259, 28.586084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.607285, 32.631172, 28.492458> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332271, 0.142685, -0.932329,
		-0.397604, 0.875176, 0.275640,
		0.855282, 0.462285, -0.234064,
		34.863869, 32.769859, 28.422239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.020794, 32.894989, 28.077021>,  <34.265171, 32.446259, 28.586084>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.020794, 32.894989, 28.077021> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.418858, 32.913677, 28.042442>,  <34.657696, 32.924889, 28.021696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.418858, 32.913677, 28.042442>,  <34.020794, 32.894989, 28.077021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.418858, 32.913677, 28.042442> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091534, 0.120792, -0.988449,
		-0.035735, 0.991578, 0.124484,
		0.995161, 0.046717, -0.086446,
		34.717407, 32.927692, 28.016508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.136078, 33.521156, 27.746565>,  <34.020794, 32.894989, 28.077021>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.136078, 33.521156, 27.746565> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.454327, 33.294773, 27.660143>,  <34.645275, 33.158943, 27.608290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.454327, 33.294773, 27.660143>,  <34.136078, 33.521156, 27.746565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.454327, 33.294773, 27.660143> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225485, 0.054358, -0.972729,
		0.562265, 0.822642, -0.084366,
		0.795622, -0.565955, -0.216057,
		34.693012, 33.124985, 27.595325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.234390, 34.262424, 27.914009>,  <34.136078, 33.521156, 27.746565>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.234390, 34.262424, 27.914009> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.889267, 34.395271, 27.761559>,  <33.682194, 34.474979, 27.670088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.889267, 34.395271, 27.761559>,  <34.234390, 34.262424, 27.914009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.889267, 34.395271, 27.761559> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489268, -0.358926, 0.794851,
		0.127192, 0.872277, 0.472181,
		-0.862809, 0.332122, -0.381125,
		33.630424, 34.494907, 27.647221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.922157, 34.873497, 28.299452>,  <34.234390, 34.262424, 27.914009>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.922157, 34.873497, 28.299452> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.604008, 34.726433, 28.106701>,  <33.413116, 34.638195, 27.991051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.604008, 34.726433, 28.106701>,  <33.922157, 34.873497, 28.299452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.604008, 34.726433, 28.106701> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502230, -0.045315, 0.863546,
		-0.339330, 0.928854, -0.148609,
		-0.795374, -0.367663, -0.481875,
		33.365395, 34.616135, 27.962139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.355667, 35.217247, 28.456661>,  <33.922157, 34.873497, 28.299452>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.355667, 35.217247, 28.456661> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.203812, 34.869915, 28.328993>,  <33.112698, 34.661514, 28.252392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.203812, 34.869915, 28.328993>,  <33.355667, 35.217247, 28.456661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.203812, 34.869915, 28.328993> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560251, -0.058752, 0.826236,
		-0.736200, 0.492491, -0.464179,
		-0.379643, -0.868332, -0.319172,
		33.089920, 34.609417, 28.233242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.611172, 35.288708, 28.453722>,  <33.355667, 35.217247, 28.456661>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.611172, 35.288708, 28.453722> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.689754, 34.896626, 28.463570>,  <32.736904, 34.661377, 28.469479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.689754, 34.896626, 28.463570>,  <32.611172, 35.288708, 28.453722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.689754, 34.896626, 28.463570> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508459, -0.080377, 0.857327,
		-0.838375, -0.180949, -0.514184,
		0.196461, -0.980203, 0.024619,
		32.748692, 34.602566, 28.470955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.005180, 35.027569, 28.674587>,  <32.611172, 35.288708, 28.453722>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.005180, 35.027569, 28.674587> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.245270, 34.711136, 28.721779>,  <32.389324, 34.521275, 28.750093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.245270, 34.711136, 28.721779>,  <32.005180, 35.027569, 28.674587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.245270, 34.711136, 28.721779> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493037, -0.249797, 0.833377,
		-0.629801, -0.558378, -0.539967,
		0.600221, -0.791085, 0.117978,
		32.425335, 34.473812, 28.757172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.539492, 34.421249, 28.684216>,  <32.005180, 35.027569, 28.674587>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.539492, 34.421249, 28.684216> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.881422, 34.339428, 28.874973>,  <32.086582, 34.290337, 28.989428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.881422, 34.339428, 28.874973>,  <31.539492, 34.421249, 28.684216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.881422, 34.339428, 28.874973> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514074, -0.208590, 0.831996,
		-0.070708, -0.956373, -0.283462,
		0.854827, -0.204550, 0.476898,
		32.137871, 34.278061, 29.018042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.426445, 33.782898, 28.990870>,  <31.539492, 34.421249, 28.684216>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.426445, 33.782898, 28.990870> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.726599, 33.950775, 29.195137>,  <31.906691, 34.051502, 29.317698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.726599, 33.950775, 29.195137>,  <31.426445, 33.782898, 28.990870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.726599, 33.950775, 29.195137> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426095, -0.283505, 0.859109,
		0.505335, -0.862257, -0.033911,
		0.750386, 0.419689, 0.510668,
		31.951715, 34.076683, 29.348337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.575216, 33.296799, 29.505766>,  <31.426445, 33.782898, 28.990870>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.575216, 33.296799, 29.505766> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.695736, 33.664200, 29.608191>,  <31.768047, 33.884640, 29.669645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.695736, 33.664200, 29.608191>,  <31.575216, 33.296799, 29.505766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.695736, 33.664200, 29.608191> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390708, -0.126040, 0.911845,
		0.869808, -0.374784, 0.320891,
		0.301299, 0.918505, 0.256061,
		31.786125, 33.939751, 29.685009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.917685, 33.174736, 30.216825>,  <31.575216, 33.296799, 29.505766>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.917685, 33.174736, 30.216825> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.800615, 33.556267, 30.189821>,  <31.730373, 33.785187, 30.173618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.800615, 33.556267, 30.189821>,  <31.917685, 33.174736, 30.216825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.800615, 33.556267, 30.189821> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260993, -0.011764, 0.965269,
		0.919905, 0.300127, 0.252386,
		-0.292672, 0.953827, -0.067509,
		31.712814, 33.842415, 30.169569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.126457, 33.489838, 30.777315>,  <31.917685, 33.174736, 30.216825>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.126457, 33.489838, 30.777315> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.841074, 33.745720, 30.662945>,  <31.669844, 33.899250, 30.594322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.841074, 33.745720, 30.662945>,  <32.126457, 33.489838, 30.777315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.841074, 33.745720, 30.662945> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287613, 0.104740, 0.952002,
		0.638947, 0.761452, 0.109259,
		-0.713460, 0.639703, -0.285927,
		31.627035, 33.937630, 30.577168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.956306, 33.863525, 31.408192>,  <32.126457, 33.489838, 30.777315>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.956306, 33.863525, 31.408192> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.714027, 34.075085, 31.170403>,  <31.568661, 34.202023, 31.027729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.714027, 34.075085, 31.170403>,  <31.956306, 33.863525, 31.408192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.714027, 34.075085, 31.170403> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465025, 0.370944, 0.803836,
		0.645666, 0.763324, 0.021273,
		-0.605696, 0.528902, -0.594471,
		31.532318, 34.233757, 30.992062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.007309, 34.559963, 31.609406>,  <31.956306, 33.863525, 31.408192>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.007309, 34.559963, 31.609406> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.654745, 34.507763, 31.427816>,  <31.443207, 34.476440, 31.318863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.654745, 34.507763, 31.427816>,  <32.007309, 34.559963, 31.609406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.654745, 34.507763, 31.427816> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466609, 0.390061, 0.793806,
		0.073482, 0.911494, -0.404697,
		-0.881406, -0.130505, -0.453973,
		31.390324, 34.468613, 31.291624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.689022, 35.148392, 31.767696>,  <32.007309, 34.559963, 31.609406>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.689022, 35.148392, 31.767696> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.391388, 34.900730, 31.667311>,  <31.212809, 34.752132, 31.607079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.391388, 34.900730, 31.667311>,  <31.689022, 35.148392, 31.767696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.391388, 34.900730, 31.667311> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563698, 0.380218, 0.733266,
		-0.358586, 0.687079, -0.631933,
		-0.744084, -0.619158, -0.250964,
		31.168163, 34.714981, 31.592022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.048639, 35.567886, 31.853743>,  <31.689022, 35.148392, 31.767696>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.048639, 35.567886, 31.853743> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.955332, 35.179543, 31.875708>,  <30.899347, 34.946537, 31.888885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.955332, 35.179543, 31.875708>,  <31.048639, 35.567886, 31.853743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.955332, 35.179543, 31.875708> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639275, 0.195660, 0.743670,
		-0.732744, 0.138372, -0.666288,
		-0.233269, -0.970861, 0.054911,
		30.885351, 34.888283, 31.892181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.527481, 36.121204, 31.437525>,  <31.048639, 35.567886, 31.853743>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.527481, 36.121204, 31.437525> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.500940, 36.430882, 31.185738>,  <31.485016, 36.616688, 31.034666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.500940, 36.430882, 31.185738>,  <31.527481, 36.121204, 31.437525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.500940, 36.430882, 31.185738> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990940, -0.022698, -0.132373,
		-0.116770, -0.632546, -0.765670,
		-0.066354, 0.774190, -0.629466,
		31.481033, 36.663139, 30.996899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.158131, 36.055321, 31.082253>,  <31.527481, 36.121204, 31.437525>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.158131, 36.055321, 31.082253> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.488083, 36.236111, 31.218065>,  <32.686054, 36.344585, 31.299553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.488083, 36.236111, 31.218065>,  <32.158131, 36.055321, 31.082253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.488083, 36.236111, 31.218065> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083693, 0.496360, -0.864073,
		-0.559073, 0.741176, 0.371612,
		0.824884, 0.451978, 0.339533,
		32.735546, 36.371704, 31.319925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.216114, 36.828419, 30.880308>,  <32.158131, 36.055321, 31.082253>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.216114, 36.828419, 30.880308> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.587326, 36.701920, 30.959047>,  <32.810055, 36.626019, 31.006290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.587326, 36.701920, 30.959047>,  <32.216114, 36.828419, 30.880308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.587326, 36.701920, 30.959047> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237793, 0.096188, -0.966541,
		0.286732, 0.943788, 0.164467,
		0.928029, -0.316248, 0.196846,
		32.865734, 36.607044, 31.018101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.636349, 37.394012, 30.556896>,  <32.216114, 36.828419, 30.880308>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.636349, 37.394012, 30.556896> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.840572, 37.053242, 30.603464>,  <32.963108, 36.848778, 30.631405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.840572, 37.053242, 30.603464>,  <32.636349, 37.394012, 30.556896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.840572, 37.053242, 30.603464> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315387, 0.059588, -0.947091,
		0.799913, 0.520262, 0.299109,
		0.510558, -0.851925, 0.116418,
		32.993740, 36.797665, 30.638390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.366169, 37.465530, 30.401934>,  <32.636349, 37.394012, 30.556896>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.366169, 37.465530, 30.401934> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.367542, 37.067516, 30.362158>,  <33.368366, 36.828709, 30.338293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.367542, 37.067516, 30.362158>,  <33.366169, 37.465530, 30.401934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.367542, 37.067516, 30.362158> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598101, 0.081736, -0.797241,
		0.801413, -0.056737, 0.595414,
		0.003433, -0.995038, -0.099439,
		33.368572, 36.769005, 30.332327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.070667, 37.247227, 30.322205>,  <33.366169, 37.465530, 30.401934>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.070667, 37.247227, 30.322205> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.845196, 36.964859, 30.150646>,  <33.709915, 36.795441, 30.047712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.845196, 36.964859, 30.150646>,  <34.070667, 37.247227, 30.322205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.845196, 36.964859, 30.150646> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541416, 0.076383, -0.837278,
		0.623808, -0.704165, 0.339139,
		-0.563677, -0.705916, -0.428894,
		33.676094, 36.753082, 30.021978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.498333, 36.777130, 29.928431>,  <34.070667, 37.247227, 30.322205>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.498333, 36.777130, 29.928431> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.136391, 36.729839, 29.764837>,  <33.919228, 36.701466, 29.666681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.136391, 36.729839, 29.764837>,  <34.498333, 36.777130, 29.928431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.136391, 36.729839, 29.764837> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412304, -0.004029, -0.911037,
		0.106062, -0.992978, 0.052391,
		-0.904852, -0.118227, -0.408982,
		33.864937, 36.694370, 29.642143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.706974, 36.394203, 29.380335>,  <34.498333, 36.777130, 29.928431>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.706974, 36.394203, 29.380335> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.322929, 36.482243, 29.311352>,  <34.092503, 36.535065, 29.269962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.322929, 36.482243, 29.311352>,  <34.706974, 36.394203, 29.380335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.322929, 36.482243, 29.311352> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180367, 0.016195, -0.983466,
		-0.213669, -0.975343, -0.055248,
		-0.960111, 0.220101, -0.172459,
		34.034897, 36.548271, 29.259615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.392109, 35.922829, 29.011097>,  <34.706974, 36.394203, 29.380335>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.392109, 35.922829, 29.011097> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.170422, 36.250568, 28.952427>,  <34.037411, 36.447212, 28.917225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.170422, 36.250568, 28.952427>,  <34.392109, 35.922829, 29.011097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.170422, 36.250568, 28.952427> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216545, -0.028218, -0.975865,
		-0.803710, -0.572604, -0.161786,
		-0.554218, 0.819347, -0.146674,
		34.004154, 36.496372, 28.908424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.171947, 35.828819, 28.259733>,  <34.392109, 35.922829, 29.011097>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.171947, 35.828819, 28.259733> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.100922, 36.208286, 28.364418>,  <34.058304, 36.435966, 28.427229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.100922, 36.208286, 28.364418>,  <34.171947, 35.828819, 28.259733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.100922, 36.208286, 28.364418> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226306, 0.298175, -0.927296,
		-0.957735, -0.105430, -0.267636,
		-0.177567, 0.948671, 0.261713,
		34.047653, 36.492889, 28.442932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.591049, 36.122967, 27.781874>,  <34.171947, 35.828819, 28.259733>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.591049, 36.122967, 27.781874> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.827515, 36.409035, 27.931036>,  <33.969395, 36.580677, 28.020533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.827515, 36.409035, 27.931036>,  <33.591049, 36.122967, 27.781874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.827515, 36.409035, 27.931036> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260559, 0.268214, -0.927454,
		-0.763307, 0.645439, -0.027787,
		0.591162, 0.715172, 0.372905,
		34.004864, 36.623585, 28.042908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.373764, 36.752296, 27.452530>,  <33.591049, 36.122967, 27.781874>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.373764, 36.752296, 27.452530> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.743004, 36.812824, 27.593945>,  <33.964546, 36.849140, 27.678793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.743004, 36.812824, 27.593945>,  <33.373764, 36.752296, 27.452530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.743004, 36.812824, 27.593945> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232703, 0.512120, -0.826791,
		-0.306160, 0.845480, 0.437526,
		0.923101, 0.151317, 0.353536,
		34.019936, 36.858219, 27.700005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.513256, 37.436337, 27.286457>,  <33.373764, 36.752296, 27.452530>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.513256, 37.436337, 27.286457> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.854786, 37.234241, 27.336617>,  <34.059704, 37.112984, 27.366713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.854786, 37.234241, 27.336617>,  <33.513256, 37.436337, 27.286457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.854786, 37.234241, 27.336617> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380768, 0.441884, -0.812253,
		0.354966, 0.741268, 0.569667,
		0.853824, -0.505233, 0.125397,
		34.110931, 37.082672, 27.374235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.959656, 37.924282, 27.089094>,  <33.513256, 37.436337, 27.286457>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.959656, 37.924282, 27.089094> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.142284, 37.568745, 27.073578>,  <34.251862, 37.355423, 27.064268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.142284, 37.568745, 27.073578>,  <33.959656, 37.924282, 27.089094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.142284, 37.568745, 27.073578> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499597, 0.292219, -0.815482,
		0.736169, 0.352946, 0.577481,
		0.456572, -0.888840, -0.038792,
		34.279255, 37.302094, 27.061941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.719009, 38.094540, 27.073122>,  <33.959656, 37.924282, 27.089094>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.719009, 38.094540, 27.073122> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.669369, 37.722000, 26.936192>,  <34.639584, 37.498478, 26.854034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.669369, 37.722000, 26.936192>,  <34.719009, 38.094540, 27.073122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.669369, 37.722000, 26.936192> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551854, 0.221934, -0.803867,
		0.824655, -0.288674, 0.486427,
		-0.124101, -0.931350, -0.342325,
		34.632137, 37.442596, 26.833494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.376228, 37.968380, 26.736975>,  <34.719009, 38.094540, 27.073122>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.376228, 37.968380, 26.736975> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.135365, 37.695553, 26.570993>,  <34.990845, 37.531857, 26.471405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.135365, 37.695553, 26.570993>,  <35.376228, 37.968380, 26.736975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.135365, 37.695553, 26.570993> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516853, 0.063095, -0.853745,
		0.608494, -0.728562, 0.314535,
		-0.602161, -0.682067, -0.414953,
		34.954716, 37.490932, 26.446508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.868141, 37.606033, 26.272331>,  <35.376228, 37.968380, 26.736975>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.868141, 37.606033, 26.272331> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.499432, 37.490475, 26.168886>,  <35.278206, 37.421139, 26.106819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.499432, 37.490475, 26.168886>,  <35.868141, 37.606033, 26.272331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.499432, 37.490475, 26.168886> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235362, 0.113153, -0.965299,
		0.308134, -0.950650, -0.036306,
		-0.921769, -0.288896, -0.258613,
		35.222900, 37.403805, 26.091303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.975716, 36.953228, 25.922541>,  <35.868141, 37.606033, 26.272331>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.975716, 36.953228, 25.922541> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.631660, 37.115898, 25.799397>,  <35.425228, 37.213501, 25.725510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.631660, 37.115898, 25.799397>,  <35.975716, 36.953228, 25.922541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.631660, 37.115898, 25.799397> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284773, -0.117862, -0.951321,
		-0.423166, -0.905937, -0.014434,
		-0.860136, 0.406677, -0.307862,
		35.373619, 37.237900, 25.707039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.816105, 36.600113, 25.247286>,  <35.975716, 36.953228, 25.922541>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.816105, 36.600113, 25.247286> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.581490, 36.923622, 25.230043>,  <35.440720, 37.117725, 25.219698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.581490, 36.923622, 25.230043>,  <35.816105, 36.600113, 25.247286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.581490, 36.923622, 25.230043> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254150, 0.133262, -0.957940,
		-0.769011, -0.572826, -0.283712,
		-0.586541, 0.808771, -0.043104,
		35.405525, 37.166252, 25.217112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.398705, 36.582382, 24.708416>,  <35.816105, 36.600113, 25.247286>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.398705, 36.582382, 24.708416> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.393673, 36.972580, 24.796278>,  <35.390656, 37.206699, 24.848995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.393673, 36.972580, 24.796278>,  <35.398705, 36.582382, 24.708416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.393673, 36.972580, 24.796278> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339809, 0.210770, -0.916573,
		-0.940410, 0.063111, -0.334134,
		-0.012579, 0.975496, 0.219656,
		35.389900, 37.265228, 24.862175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.230785, 36.922466, 24.080267>,  <35.398705, 36.582382, 24.708416>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.230785, 36.922466, 24.080267> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.386040, 37.210304, 24.310585>,  <35.479191, 37.383007, 24.448776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.386040, 37.210304, 24.310585>,  <35.230785, 36.922466, 24.080267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.386040, 37.210304, 24.310585> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551597, 0.319125, -0.770649,
		-0.738304, 0.616721, -0.273062,
		0.388134, 0.719593, 0.575793,
		35.502480, 37.426182, 24.483322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.124405, 37.503452, 23.692331>,  <35.230785, 36.922466, 24.080267>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.124405, 37.503452, 23.692331> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.437168, 37.549419, 23.937418>,  <35.624825, 37.577000, 24.084469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.437168, 37.549419, 23.937418>,  <35.124405, 37.503452, 23.692331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.437168, 37.549419, 23.937418> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588111, 0.190004, -0.786145,
		-0.206764, 0.975034, 0.080978,
		0.781904, 0.114922, 0.612715,
		35.671738, 37.583897, 24.121233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.327148, 38.155792, 23.592442>,  <35.124405, 37.503452, 23.692331>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.327148, 38.155792, 23.592442> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.647282, 37.957245, 23.726955>,  <35.839359, 37.838116, 23.807665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.647282, 37.957245, 23.726955>,  <35.327148, 38.155792, 23.592442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.647282, 37.957245, 23.726955> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502685, 0.249834, -0.827581,
		0.326770, 0.831385, 0.449467,
		0.800330, -0.496370, 0.336287,
		35.887383, 37.808334, 23.827841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.963360, 38.668869, 23.546728>,  <35.327148, 38.155792, 23.592442>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.963360, 38.668869, 23.546728> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.141834, 38.314304, 23.596045>,  <36.248917, 38.101566, 23.625635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.141834, 38.314304, 23.596045>,  <35.963360, 38.668869, 23.546728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.141834, 38.314304, 23.596045> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460885, 0.109498, -0.880679,
		0.767141, 0.449768, 0.457388,
		0.446184, -0.886408, 0.123291,
		36.275688, 38.048382, 23.633032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.652168, 38.844337, 23.467604>,  <35.963360, 38.668869, 23.546728>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.652168, 38.844337, 23.467604> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.575176, 38.463192, 23.373800>,  <36.528980, 38.234505, 23.317518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.575176, 38.463192, 23.373800>,  <36.652168, 38.844337, 23.467604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.575176, 38.463192, 23.373800> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571402, 0.085449, -0.816210,
		0.797778, -0.291105, 0.528023,
		-0.192484, -0.952867, -0.234508,
		36.517429, 38.177330, 23.303448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.232555, 38.601147, 23.218542>,  <36.652168, 38.844337, 23.467604>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.232555, 38.601147, 23.218542> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.972092, 38.330402, 23.081223>,  <36.815815, 38.167957, 22.998831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.972092, 38.330402, 23.081223>,  <37.232555, 38.601147, 23.218542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.972092, 38.330402, 23.081223> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538970, -0.093948, -0.837069,
		0.534324, -0.730095, 0.425981,
		-0.651160, -0.676857, -0.343301,
		36.776745, 38.127346, 22.978231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.649811, 38.074417, 22.983988>,  <37.232555, 38.601147, 23.218542>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.649811, 38.074417, 22.983988> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.298744, 38.019024, 22.800453>,  <37.088104, 37.985786, 22.690332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.298744, 38.019024, 22.800453>,  <37.649811, 38.074417, 22.983988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.298744, 38.019024, 22.800453> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430721, 0.191991, -0.881827,
		0.210223, -0.971575, -0.108849,
		-0.877659, -0.138496, -0.458838,
		37.035446, 37.977478, 22.662802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.772869, 37.520000, 22.534559>,  <37.649811, 38.074417, 22.983988>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.772869, 37.520000, 22.534559> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.446651, 37.708969, 22.400867>,  <37.250923, 37.822350, 22.320652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.446651, 37.708969, 22.400867>,  <37.772869, 37.520000, 22.534559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.446651, 37.708969, 22.400867> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379955, 0.001496, -0.925003,
		-0.436493, -0.881370, -0.180720,
		-0.815541, 0.472424, -0.334228,
		37.201988, 37.850697, 22.300598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.364212, 36.980366, 22.592339>,  <37.772869, 37.520000, 22.534559>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.364212, 36.980366, 22.592339> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.727570, 37.147049, 22.578611>,  <38.945583, 37.247059, 22.570375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.727570, 37.147049, 22.578611>,  <38.364212, 36.980366, 22.592339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.727570, 37.147049, 22.578611> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054917, -0.037538, 0.997785,
		0.414495, -0.908265, -0.056984,
		0.908393, 0.416707, -0.034320,
		39.000088, 37.272060, 22.568316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.942657, 36.561527, 22.934586>,  <38.364212, 36.980366, 22.592339>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.942657, 36.561527, 22.934586> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.043007, 36.947338, 22.967434>,  <39.103218, 37.178825, 22.987143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.043007, 36.947338, 22.967434>,  <38.942657, 36.561527, 22.934586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.043007, 36.947338, 22.967434> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023656, -0.090917, 0.995578,
		0.967731, -0.247821, -0.045626,
		0.250873, 0.964531, 0.082120,
		39.118267, 37.236698, 22.992069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.358070, 36.534122, 23.540499>,  <38.942657, 36.561527, 22.934586>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.358070, 36.534122, 23.540499> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.291714, 36.923843, 23.479563>,  <39.251900, 37.157677, 23.443001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.291714, 36.923843, 23.479563>,  <39.358070, 36.534122, 23.540499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.291714, 36.923843, 23.479563> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038557, 0.147955, 0.988242,
		0.985390, 0.169817, 0.013022,
		-0.165893, 0.974306, -0.152341,
		39.241947, 37.216137, 23.433861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.686687, 36.888130, 24.125299>,  <39.358070, 36.534122, 23.540499>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.686687, 36.888130, 24.125299> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.436291, 37.156273, 23.965921>,  <39.286053, 37.317158, 23.870295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.436291, 37.156273, 23.965921>,  <39.686687, 36.888130, 24.125299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.436291, 37.156273, 23.965921> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286595, 0.277421, 0.917006,
		0.725260, 0.688228, 0.018458,
		-0.625989, 0.670358, -0.398445,
		39.248493, 37.357380, 23.846388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.840805, 37.478310, 24.434980>,  <39.686687, 36.888130, 24.125299>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.840805, 37.478310, 24.434980> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.475708, 37.527916, 24.279282>,  <39.256649, 37.557682, 24.185862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.475708, 37.527916, 24.279282>,  <39.840805, 37.478310, 24.434980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.475708, 37.527916, 24.279282> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359901, 0.206730, 0.909799,
		0.193303, 0.970506, -0.144057,
		-0.912746, 0.124020, -0.389248,
		39.201885, 37.565121, 24.162508>
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
