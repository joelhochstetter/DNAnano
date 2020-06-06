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
	<24.441055, 35.284420, 34.604050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.388254, 34.962696, 34.835796>,  <24.356573, 34.769661, 34.974846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.388254, 34.962696, 34.835796>,  <24.441055, 35.284420, 34.604050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.388254, 34.962696, 34.835796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827898, 0.231971, 0.510661,
		-0.545125, 0.547065, 0.635263,
		-0.132002, -0.804307, 0.579367,
		24.348654, 34.721405, 35.009605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.215014, 35.463352, 35.358219>,  <24.441055, 35.284420, 34.604050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.215014, 35.463352, 35.358219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.437384, 35.134556, 35.308773>,  <24.570807, 34.937279, 35.279106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.437384, 35.134556, 35.308773>,  <24.215014, 35.463352, 35.358219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.437384, 35.134556, 35.308773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689715, 0.373146, 0.620528,
		-0.463941, -0.430227, 0.774379,
		0.555925, -0.821989, -0.123616,
		24.604160, 34.887959, 35.271687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.697306, 36.015049, 35.408504>,  <24.215014, 35.463352, 35.358219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.697306, 36.015049, 35.408504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.026537, 35.789097, 35.432007>,  <25.224075, 35.653526, 35.446110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.026537, 35.789097, 35.432007>,  <24.697306, 36.015049, 35.408504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.026537, 35.789097, 35.432007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321985, 0.549367, 0.771053,
		-0.467830, -0.615719, 0.634055,
		0.823080, -0.564878, 0.058758,
		25.273460, 35.619633, 35.449635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.772320, 35.493286, 35.932873>,  <24.697306, 36.015049, 35.408504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.772320, 35.493286, 35.932873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.135632, 35.641964, 35.856064>,  <25.353619, 35.731171, 35.809978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.135632, 35.641964, 35.856064>,  <24.772320, 35.493286, 35.932873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.135632, 35.641964, 35.856064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039127, 0.532446, 0.845560,
		0.416530, -0.760491, 0.498152,
		0.908280, 0.371692, -0.192024,
		25.408115, 35.753471, 35.798458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.258459, 35.492699, 36.527878>,  <24.772320, 35.493286, 35.932873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.258459, 35.492699, 36.527878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.435553, 35.779087, 36.311966>,  <25.541809, 35.950920, 36.182419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.435553, 35.779087, 36.311966>,  <25.258459, 35.492699, 36.527878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.435553, 35.779087, 36.311966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041503, 0.584991, 0.809977,
		0.895691, -0.381009, 0.229282,
		0.442736, 0.715973, -0.539784,
		25.568373, 35.993877, 36.150032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.711939, 35.904217, 36.952679>,  <25.258459, 35.492699, 36.527878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.711939, 35.904217, 36.952679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.657166, 36.128296, 36.625893>,  <25.624302, 36.262745, 36.429821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.657166, 36.128296, 36.625893>,  <25.711939, 35.904217, 36.952679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.657166, 36.128296, 36.625893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177613, 0.797479, 0.576611,
		0.974527, 0.224061, -0.009704,
		-0.136935, 0.560200, -0.816961,
		25.616085, 36.296356, 36.380806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.225275, 36.013245, 36.409485>,  <25.711939, 35.904217, 36.952679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.225275, 36.013245, 36.409485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.609457, 36.009045, 36.298195>,  <26.839966, 36.006523, 36.231419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.609457, 36.009045, 36.298195>,  <26.225275, 36.013245, 36.409485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.609457, 36.009045, 36.298195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278427, 0.037876, 0.959710,
		0.000453, -0.999227, 0.039305,
		0.960457, -0.010509, -0.278229,
		26.897594, 36.005894, 36.214725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.649055, 35.314610, 36.607136>,  <26.225275, 36.013245, 36.409485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.649055, 35.314610, 36.607136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.849157, 35.660851, 36.598373>,  <26.969219, 35.868595, 36.593117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.849157, 35.660851, 36.598373>,  <26.649055, 35.314610, 36.607136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.849157, 35.660851, 36.598373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124360, -0.046788, 0.991133,
		0.856901, -0.498543, -0.131052,
		0.500254, 0.865601, -0.021906,
		26.999233, 35.920532, 36.591801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.049894, 35.310173, 37.161858>,  <26.649055, 35.314610, 36.607136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.049894, 35.310173, 37.161858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.115074, 35.696732, 37.082333>,  <27.154182, 35.928665, 37.034618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.115074, 35.696732, 37.082333>,  <27.049894, 35.310173, 37.161858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.115074, 35.696732, 37.082333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070113, 0.212343, 0.974677,
		0.984140, -0.144883, 0.102358,
		0.162949, 0.966395, -0.198817,
		27.163960, 35.986649, 37.022686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.702833, 35.539886, 37.554787>,  <27.049894, 35.310173, 37.161858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.702833, 35.539886, 37.554787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.452139, 35.837223, 37.461281>,  <27.301723, 36.015625, 37.405178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.452139, 35.837223, 37.461281>,  <27.702833, 35.539886, 37.554787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.452139, 35.837223, 37.461281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041673, 0.331533, 0.942523,
		0.778118, 0.580969, -0.238760,
		-0.626734, 0.743344, -0.233761,
		27.264118, 36.060226, 37.391151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.005079, 36.020569, 37.948856>,  <27.702833, 35.539886, 37.554787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.005079, 36.020569, 37.948856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.643042, 36.170486, 37.868523>,  <27.425819, 36.260437, 37.820320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.643042, 36.170486, 37.868523>,  <28.005079, 36.020569, 37.948856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.643042, 36.170486, 37.868523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019612, 0.435026, 0.900204,
		0.424761, 0.818707, -0.386389,
		-0.905093, 0.374794, -0.200839,
		27.371513, 36.282925, 37.808270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.094141, 36.735847, 38.114967>,  <28.005079, 36.020569, 37.948856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.094141, 36.735847, 38.114967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.702364, 36.660149, 38.142891>,  <27.467297, 36.614731, 38.159645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.702364, 36.660149, 38.142891>,  <28.094141, 36.735847, 38.114967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.702364, 36.660149, 38.142891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019632, 0.255020, 0.966737,
		-0.200756, 0.948235, -0.246062,
		-0.979445, -0.189248, 0.069812,
		27.408531, 36.603374, 38.163834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.688717, 37.415165, 38.352520>,  <28.094141, 36.735847, 38.114967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.688717, 37.415165, 38.352520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.490213, 37.079933, 38.443165>,  <27.371111, 36.878796, 38.497551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.490213, 37.079933, 38.443165>,  <27.688717, 37.415165, 38.352520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.490213, 37.079933, 38.443165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026162, 0.275340, 0.960991,
		-0.867781, 0.470971, -0.158566,
		-0.496258, -0.838078, 0.226613,
		27.341335, 36.828510, 38.511150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.294048, 37.673660, 38.908627>,  <27.688717, 37.415165, 38.352520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.294048, 37.673660, 38.908627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.231836, 37.278557, 38.913544>,  <27.194510, 37.041496, 38.916492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.231836, 37.278557, 38.913544>,  <27.294048, 37.673660, 38.908627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.231836, 37.278557, 38.913544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172835, 0.039461, 0.984160,
		-0.972594, 0.150941, -0.176856,
		-0.155529, -0.987755, 0.012292,
		27.185177, 36.982231, 38.917233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.672199, 37.621655, 39.217468>,  <27.294048, 37.673660, 38.908627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.672199, 37.621655, 39.217468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.872425, 37.276905, 39.249989>,  <26.992561, 37.070057, 39.269501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.872425, 37.276905, 39.249989>,  <26.672199, 37.621655, 39.217468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.872425, 37.276905, 39.249989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178307, -0.010749, 0.983916,
		-0.847137, -0.507010, -0.159059,
		0.500565, -0.861873, 0.081298,
		27.022594, 37.018345, 39.274380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.263788, 37.273319, 39.822716>,  <26.672199, 37.621655, 39.217468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.263788, 37.273319, 39.822716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.612818, 37.081276, 39.786674>,  <26.822235, 36.966049, 39.765049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.612818, 37.081276, 39.786674>,  <26.263788, 37.273319, 39.822716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.612818, 37.081276, 39.786674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076201, -0.048408, 0.995917,
		-0.482505, -0.875875, -0.005655,
		0.872572, -0.480104, -0.090100,
		26.874590, 36.937244, 39.759644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.168779, 36.594158, 40.168819>,  <26.263788, 37.273319, 39.822716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.168779, 36.594158, 40.168819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.555273, 36.695015, 40.147583>,  <26.787169, 36.755527, 40.134842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.555273, 36.695015, 40.147583>,  <26.168779, 36.594158, 40.168819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.555273, 36.695015, 40.147583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084009, -0.113478, 0.989982,
		0.243591, -0.961014, -0.130828,
		0.966233, 0.252141, -0.053092,
		26.845142, 36.770657, 40.131657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.419800, 36.225822, 40.625111>,  <26.168779, 36.594158, 40.168819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.419800, 36.225822, 40.625111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.713785, 36.489697, 40.562321>,  <26.890177, 36.648022, 40.524647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.713785, 36.489697, 40.562321>,  <26.419800, 36.225822, 40.625111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.713785, 36.489697, 40.562321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251487, -0.050180, 0.966559,
		0.629750, -0.749862, -0.202784,
		0.734962, 0.659688, -0.156979,
		26.934275, 36.687603, 40.515228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.972195, 35.826965, 40.860149>,  <26.419800, 36.225822, 40.625111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.972195, 35.826965, 40.860149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.075207, 36.213421, 40.853699>,  <27.137014, 36.445293, 40.849827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.075207, 36.213421, 40.853699>,  <26.972195, 35.826965, 40.860149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.075207, 36.213421, 40.853699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216495, -0.041426, 0.975404,
		0.941704, -0.254689, -0.219832,
		0.257531, 0.966135, -0.016127,
		27.152466, 36.503262, 40.848862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.590088, 35.811459, 41.251163>,  <26.972195, 35.826965, 40.860149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.590088, 35.811459, 41.251163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.430489, 36.177277, 41.277725>,  <27.334730, 36.396767, 41.293663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.430489, 36.177277, 41.277725>,  <27.590088, 35.811459, 41.251163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.430489, 36.177277, 41.277725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354781, 0.087190, 0.930875,
		0.845537, 0.394976, -0.359252,
		-0.398997, 0.914544, 0.066407,
		27.310789, 36.451641, 41.297646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.126925, 36.261150, 41.577847>,  <27.590088, 35.811459, 41.251163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.126925, 36.261150, 41.577847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.805271, 36.491165, 41.638115>,  <27.612280, 36.629173, 41.674274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.805271, 36.491165, 41.638115>,  <28.126925, 36.261150, 41.577847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.805271, 36.491165, 41.638115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321244, 0.207107, 0.924072,
		0.500176, 0.791476, -0.351270,
		-0.804131, 0.575041, 0.150666,
		27.564032, 36.663677, 41.683315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.284966, 37.014114, 41.733002>,  <28.126925, 36.261150, 41.577847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.284966, 37.014114, 41.733002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.935572, 36.946110, 41.915482>,  <27.725935, 36.905308, 42.024971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.935572, 36.946110, 41.915482>,  <28.284966, 37.014114, 41.733002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.935572, 36.946110, 41.915482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362069, 0.399582, 0.842164,
		-0.325471, 0.900793, -0.287471,
		-0.873484, -0.170016, 0.456202,
		27.673527, 36.895103, 42.052341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.284409, 37.543522, 42.252190>,  <28.284966, 37.014114, 41.733002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.284409, 37.543522, 42.252190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.930670, 37.386501, 42.353252>,  <27.718426, 37.292290, 42.413891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.930670, 37.386501, 42.353252>,  <28.284409, 37.543522, 42.252190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.930670, 37.386501, 42.353252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101748, 0.366128, 0.924985,
		-0.455605, 0.843716, -0.283843,
		-0.884348, -0.392547, 0.252656,
		27.665365, 37.268738, 42.429050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.085815, 38.090946, 42.591347>,  <28.284409, 37.543522, 42.252190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.085815, 38.090946, 42.591347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.887733, 37.774799, 42.735615>,  <27.768885, 37.585110, 42.822178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.887733, 37.774799, 42.735615>,  <28.085815, 38.090946, 42.591347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.887733, 37.774799, 42.735615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274035, 0.251855, 0.928156,
		-0.824425, 0.558466, 0.091869,
		-0.495206, -0.790370, 0.360674,
		27.739172, 37.537689, 42.843819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.570518, 38.234806, 43.086864>,  <28.085815, 38.090946, 42.591347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.570518, 38.234806, 43.086864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.663879, 37.853245, 43.162327>,  <27.719896, 37.624310, 43.207603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.663879, 37.853245, 43.162327>,  <27.570518, 38.234806, 43.086864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.663879, 37.853245, 43.162327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254935, 0.247256, 0.934812,
		-0.938366, -0.170093, 0.300893,
		0.233402, -0.953904, 0.188654,
		27.733900, 37.567074, 43.218922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.962856, 38.641460, 43.601151>,  <27.570518, 38.234806, 43.086864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.962856, 38.641460, 43.601151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.240358, 38.731251, 43.874886>,  <28.406858, 38.785126, 44.039127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.240358, 38.731251, 43.874886>,  <27.962856, 38.641460, 43.601151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.240358, 38.731251, 43.874886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310229, 0.764381, -0.565226,
		-0.649973, 0.604428, 0.460653,
		0.693753, 0.224474, 0.684338,
		28.448484, 38.798592, 44.080189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.002131, 39.405304, 43.626881>,  <27.962856, 38.641460, 43.601151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.002131, 39.405304, 43.626881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.336512, 39.233887, 43.764015>,  <28.537140, 39.131035, 43.846294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.336512, 39.233887, 43.764015>,  <28.002131, 39.405304, 43.626881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.336512, 39.233887, 43.764015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546073, 0.587318, -0.597378,
		0.054650, 0.686592, 0.724986,
		0.835953, -0.428542, 0.342833,
		28.587297, 39.105324, 43.866863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.534697, 39.846897, 44.010418>,  <28.002131, 39.405304, 43.626881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.534697, 39.846897, 44.010418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.719385, 39.549091, 43.817543>,  <28.830198, 39.370407, 43.701817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.719385, 39.549091, 43.817543>,  <28.534697, 39.846897, 44.010418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.719385, 39.549091, 43.817543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636247, 0.656750, -0.404807,
		0.618063, -0.119882, 0.776934,
		0.461722, -0.744518, -0.482188,
		28.857903, 39.325737, 43.672886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.251547, 39.845516, 44.134136>,  <28.534697, 39.846897, 44.010418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.251547, 39.845516, 44.134136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.181105, 39.695057, 43.770267>,  <29.138840, 39.604782, 43.551949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.181105, 39.695057, 43.770267>,  <29.251547, 39.845516, 44.134136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.181105, 39.695057, 43.770267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693190, 0.608737, -0.385909,
		0.698909, -0.698536, 0.153539,
		-0.176107, -0.376147, -0.909670,
		29.128273, 39.582214, 43.497368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.926529, 39.608231, 43.874905>,  <29.251547, 39.845516, 44.134136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.926529, 39.608231, 43.874905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.651022, 39.705036, 43.601547>,  <29.485718, 39.763119, 43.437531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.651022, 39.705036, 43.601547>,  <29.926529, 39.608231, 43.874905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.651022, 39.705036, 43.601547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637067, 0.651977, -0.411184,
		0.346045, -0.718578, -0.603240,
		-0.688766, 0.242016, -0.683396,
		29.444391, 39.777641, 43.396530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.455608, 39.748219, 43.328449>,  <29.926529, 39.608231, 43.874905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.455608, 39.748219, 43.328449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.087481, 39.891277, 43.265079>,  <29.866604, 39.977112, 43.227058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.087481, 39.891277, 43.265079>,  <30.455608, 39.748219, 43.328449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.087481, 39.891277, 43.265079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389139, 0.795971, -0.463683,
		-0.039735, -0.488385, -0.871723,
		-0.920322, 0.357645, -0.158422,
		29.811384, 39.998569, 43.217552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.840645, 39.375214, 43.866241>,  <30.455608, 39.748219, 43.328449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.840645, 39.375214, 43.866241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.878002, 39.095249, 44.149479>,  <30.900417, 38.927269, 44.319424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.878002, 39.095249, 44.149479>,  <30.840645, 39.375214, 43.866241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.878002, 39.095249, 44.149479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166616, -0.690189, -0.704187,
		0.981589, 0.183747, 0.052157,
		0.093394, -0.699912, 0.708097,
		30.906021, 38.885277, 44.361908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.380947, 39.312725, 43.393513>,  <30.840645, 39.375214, 43.866241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.380947, 39.312725, 43.393513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.473162, 38.923550, 43.387211>,  <31.528490, 38.690044, 43.383430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.473162, 38.923550, 43.387211>,  <31.380947, 39.312725, 43.393513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.473162, 38.923550, 43.387211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140104, -0.017164, -0.989988,
		0.962924, 0.230437, -0.140269,
		0.230537, -0.972936, -0.015758,
		31.542322, 38.631668, 43.382484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.541628, 39.234409, 42.705448>,  <31.380947, 39.312725, 43.393513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.541628, 39.234409, 42.705448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.491274, 38.865654, 42.852020>,  <31.461061, 38.644402, 42.939964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.491274, 38.865654, 42.852020>,  <31.541628, 39.234409, 42.705448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.491274, 38.865654, 42.852020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067598, -0.376477, -0.923957,
		0.989739, -0.091543, 0.109712,
		-0.125886, -0.921892, 0.366426,
		31.453508, 38.589085, 42.961948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.050777, 38.867222, 42.497742>,  <31.541628, 39.234409, 42.705448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.050777, 38.867222, 42.497742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.723766, 38.642044, 42.546318>,  <31.527559, 38.506939, 42.575462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.723766, 38.642044, 42.546318>,  <32.050777, 38.867222, 42.497742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.723766, 38.642044, 42.546318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080432, -0.097196, -0.992010,
		0.570248, -0.820761, 0.034181,
		-0.817525, -0.562942, 0.121441,
		31.478508, 38.473160, 42.582752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.184971, 38.214710, 42.158417>,  <32.050777, 38.867222, 42.497742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.184971, 38.214710, 42.158417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.803278, 38.333950, 42.148743>,  <31.574263, 38.405495, 42.142941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.803278, 38.333950, 42.148743>,  <32.184971, 38.214710, 42.158417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.803278, 38.333950, 42.148743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017139, -0.026215, -0.999509,
		-0.298585, -0.954175, 0.019907,
		-0.954229, 0.298097, -0.024181,
		31.517010, 38.423378, 42.141487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.916315, 37.670750, 41.785042>,  <32.184971, 38.214710, 42.158417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.916315, 37.670750, 41.785042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.642769, 37.962334, 41.772747>,  <31.478642, 38.137283, 41.765369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.642769, 37.962334, 41.772747>,  <31.916315, 37.670750, 41.785042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.642769, 37.962334, 41.772747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171091, -0.201173, -0.964498,
		-0.709262, -0.654331, 0.262294,
		-0.683868, 0.728959, -0.030735,
		31.437609, 38.181023, 41.763527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.247187, 37.428410, 41.475510>,  <31.916315, 37.670750, 41.785042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.247187, 37.428410, 41.475510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.204893, 37.824432, 41.438404>,  <31.179518, 38.062046, 41.416142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.204893, 37.824432, 41.438404>,  <31.247187, 37.428410, 41.475510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.204893, 37.824432, 41.438404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331031, -0.123015, -0.935567,
		-0.937677, -0.068212, 0.340747,
		-0.105734, 0.990058, -0.092768,
		31.173172, 38.121449, 41.410572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.526684, 37.504745, 41.125771>,  <31.247187, 37.428410, 41.475510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.526684, 37.504745, 41.125771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.743032, 37.834259, 41.057835>,  <30.872841, 38.031967, 41.017071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.743032, 37.834259, 41.057835>,  <30.526684, 37.504745, 41.125771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.743032, 37.834259, 41.057835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377293, 0.057145, -0.924329,
		-0.751737, 0.564023, 0.341714,
		0.540871, 0.823779, -0.169844,
		30.905294, 38.081394, 41.006882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.099018, 38.087688, 40.736561>,  <30.526684, 37.504745, 41.125771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.099018, 38.087688, 40.736561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.491226, 38.140709, 40.678585>,  <30.726551, 38.172520, 40.643799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.491226, 38.140709, 40.678585>,  <30.099018, 38.087688, 40.736561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.491226, 38.140709, 40.678585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146095, -0.001055, -0.989270,
		-0.131282, 0.991175, 0.018331,
		0.980521, 0.132551, -0.144944,
		30.785383, 38.180473, 40.635101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.063925, 38.342491, 40.124668>,  <30.099018, 38.087688, 40.736561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.063925, 38.342491, 40.124668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.454941, 38.266090, 40.160286>,  <30.689550, 38.220249, 40.181656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.454941, 38.266090, 40.160286>,  <30.063925, 38.342491, 40.124668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.454941, 38.266090, 40.160286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075526, -0.076939, -0.994171,
		0.196743, 0.978569, -0.060785,
		0.977542, -0.191005, 0.089045,
		30.748203, 38.208790, 40.187000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.333858, 38.713078, 39.642937>,  <30.063925, 38.342491, 40.124668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.333858, 38.713078, 39.642937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.609060, 38.429638, 39.705593>,  <30.774181, 38.259575, 39.743187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.609060, 38.429638, 39.705593>,  <30.333858, 38.713078, 39.642937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.609060, 38.429638, 39.705593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002682, -0.213358, -0.976970,
		0.725700, 0.672582, -0.144891,
		0.688006, -0.708599, 0.156637,
		30.815462, 38.217060, 39.752583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.766750, 38.789024, 39.121353>,  <30.333858, 38.713078, 39.642937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.766750, 38.789024, 39.121353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.870869, 38.430550, 39.265068>,  <30.933340, 38.215466, 39.351295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.870869, 38.430550, 39.265068>,  <30.766750, 38.789024, 39.121353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.870869, 38.430550, 39.265068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000762, -0.372305, -0.928110,
		0.965528, 0.241310, -0.097593,
		0.260296, -0.896191, 0.359287,
		30.948957, 38.161694, 39.372856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.245663, 38.528873, 38.693733>,  <30.766750, 38.789024, 39.121353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.245663, 38.528873, 38.693733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.100849, 38.201694, 38.872574>,  <31.013962, 38.005386, 38.979877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.100849, 38.201694, 38.872574>,  <31.245663, 38.528873, 38.693733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.100849, 38.201694, 38.872574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071762, -0.453759, -0.888230,
		0.929399, -0.353653, 0.105578,
		-0.362032, -0.817944, 0.447102,
		30.992239, 37.956310, 39.006706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.481539, 37.905403, 38.304310>,  <31.245663, 38.528873, 38.693733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.481539, 37.905403, 38.304310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.155991, 37.773170, 38.495445>,  <30.960661, 37.693829, 38.610126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.155991, 37.773170, 38.495445>,  <31.481539, 37.905403, 38.304310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.155991, 37.773170, 38.495445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208374, -0.601610, -0.771132,
		0.542395, -0.727171, 0.420748,
		-0.813872, -0.330586, 0.477834,
		30.911829, 37.673996, 38.638794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.415182, 37.225742, 38.075531>,  <31.481539, 37.905403, 38.304310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.415182, 37.225742, 38.075531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.059790, 37.272312, 38.253090>,  <30.846554, 37.300255, 38.359627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.059790, 37.272312, 38.253090>,  <31.415182, 37.225742, 38.075531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.059790, 37.272312, 38.253090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420242, -0.595051, -0.685063,
		0.184389, -0.795211, 0.577616,
		-0.888480, 0.116420, 0.443902,
		30.793245, 37.307240, 38.386261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.167618, 36.632500, 38.292473>,  <31.415182, 37.225742, 38.075531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.167618, 36.632500, 38.292473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.832825, 36.849823, 38.266323>,  <30.631948, 36.980217, 38.250633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.832825, 36.849823, 38.266323>,  <31.167618, 36.632500, 38.292473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.832825, 36.849823, 38.266323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458067, -0.760948, -0.459491,
		-0.299392, -0.354640, 0.885773,
		-0.836982, 0.543312, -0.065373,
		30.581730, 37.012817, 38.246712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.554522, 36.165562, 38.470684>,  <31.167618, 36.632500, 38.292473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.554522, 36.165562, 38.470684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.407509, 36.469841, 38.256672>,  <30.319302, 36.652409, 38.128265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.407509, 36.469841, 38.256672>,  <30.554522, 36.165562, 38.470684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.407509, 36.469841, 38.256672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519555, -0.645091, -0.560286,
		-0.771352, 0.072054, 0.632317,
		-0.367531, 0.760700, -0.535028,
		30.297249, 36.698051, 38.096165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.856035, 35.899746, 38.186020>,  <30.554522, 36.165562, 38.470684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.856035, 35.899746, 38.186020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.903128, 36.227886, 37.962173>,  <29.931383, 36.424770, 37.827866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.903128, 36.227886, 37.962173>,  <29.856035, 35.899746, 38.186020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.903128, 36.227886, 37.962173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448731, -0.458772, -0.766921,
		-0.885878, 0.341410, 0.314103,
		0.117733, 0.820346, -0.559617,
		29.938448, 36.473991, 37.794289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.200960, 36.054646, 37.873127>,  <29.856035, 35.899746, 38.186020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.200960, 36.054646, 37.873127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.477058, 36.240677, 37.651402>,  <29.642717, 36.352295, 37.518364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.477058, 36.240677, 37.651402>,  <29.200960, 36.054646, 37.873127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.477058, 36.240677, 37.651402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354376, -0.450632, -0.819359,
		-0.630855, 0.761996, -0.146236,
		0.690246, 0.465074, -0.554316,
		29.684132, 36.380199, 37.485107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.869753, 36.217888, 37.188515>,  <29.200960, 36.054646, 37.873127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.869753, 36.217888, 37.188515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.260412, 36.257759, 37.112389>,  <29.494808, 36.281681, 37.066711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.260412, 36.257759, 37.112389>,  <28.869753, 36.217888, 37.188515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.260412, 36.257759, 37.112389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139960, -0.376874, -0.915629,
		-0.162996, 0.920885, -0.354122,
		0.976649, 0.099681, -0.190316,
		29.553408, 36.287663, 37.055294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.911673, 36.566643, 36.537018>,  <28.869753, 36.217888, 37.188515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.911673, 36.566643, 36.537018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.270029, 36.396137, 36.587109>,  <29.485043, 36.293835, 36.617165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.270029, 36.396137, 36.587109>,  <28.911673, 36.566643, 36.537018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.270029, 36.396137, 36.587109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015972, -0.312592, -0.949753,
		0.443988, 0.848875, -0.286856,
		0.895891, -0.426260, 0.125229,
		29.538795, 36.268261, 36.624676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.268883, 36.664227, 35.911427>,  <28.911673, 36.566643, 36.537018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.268883, 36.664227, 35.911427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.440868, 36.349857, 36.089169>,  <29.544060, 36.161236, 36.195816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.440868, 36.349857, 36.089169>,  <29.268883, 36.664227, 35.911427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.440868, 36.349857, 36.089169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065182, -0.463869, -0.883503,
		0.900489, 0.408839, -0.148219,
		0.429965, -0.785924, 0.444358,
		29.569859, 36.114079, 36.222477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.757471, 36.430840, 35.433769>,  <29.268883, 36.664227, 35.911427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.757471, 36.430840, 35.433769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.700270, 36.118500, 35.677021>,  <29.665949, 35.931095, 35.822971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.700270, 36.118500, 35.677021>,  <29.757471, 36.430840, 35.433769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.700270, 36.118500, 35.677021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130565, -0.594191, -0.793656,
		0.981072, -0.192896, -0.016980,
		-0.143003, -0.780851, 0.608130,
		29.657370, 35.884243, 35.859459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.105265, 35.918221, 35.078732>,  <29.757471, 36.430840, 35.433769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.105265, 35.918221, 35.078732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.840574, 35.734962, 35.316124>,  <29.681759, 35.625008, 35.458561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.840574, 35.734962, 35.316124>,  <30.105265, 35.918221, 35.078732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.840574, 35.734962, 35.316124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247457, -0.613759, -0.749710,
		0.707730, -0.642965, 0.292771,
		-0.661727, -0.458144, 0.593482,
		29.642056, 35.597519, 35.494167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.124165, 35.232048, 34.777737>,  <30.105265, 35.918221, 35.078732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.124165, 35.232048, 34.777737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.798300, 35.216625, 35.009197>,  <29.602781, 35.207371, 35.148075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.798300, 35.216625, 35.009197>,  <30.124165, 35.232048, 34.777737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.798300, 35.216625, 35.009197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415690, -0.656934, -0.628999,
		0.404389, -0.752962, 0.519151,
		-0.814660, -0.038555, 0.578655,
		29.553902, 35.205059, 35.182793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.873928, 34.452671, 34.889275>,  <30.124165, 35.232048, 34.777737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.873928, 34.452671, 34.889275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.548851, 34.674313, 34.961384>,  <29.353806, 34.807297, 35.004650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.548851, 34.674313, 34.961384>,  <29.873928, 34.452671, 34.889275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.548851, 34.674313, 34.961384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547629, -0.620619, -0.561190,
		-0.199081, -0.554795, 0.807817,
		-0.812693, 0.554107, 0.180269,
		29.305044, 34.840546, 35.015465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.371271, 34.022171, 35.293541>,  <29.873928, 34.452671, 34.889275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.371271, 34.022171, 35.293541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.231245, 34.317905, 35.063465>,  <29.147230, 34.495346, 34.925419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.231245, 34.317905, 35.063465>,  <29.371271, 34.022171, 35.293541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.231245, 34.317905, 35.063465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448946, -0.671346, -0.589696,
		-0.822133, 0.051798, 0.566934,
		-0.350064, 0.739332, -0.575190,
		29.126226, 34.539703, 34.890907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.895855, 33.488907, 35.056145>,  <29.371271, 34.022171, 35.293541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.895855, 33.488907, 35.056145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.828646, 33.174221, 35.293751>,  <29.788321, 32.985409, 35.436314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.828646, 33.174221, 35.293751>,  <29.895855, 33.488907, 35.056145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.828646, 33.174221, 35.293751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885749, -0.384973, -0.259317,
		0.432687, 0.482573, 0.761515,
		-0.168023, -0.786714, 0.594011,
		29.778238, 32.938206, 35.471954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.361280, 33.523113, 35.565956>,  <29.895855, 33.488907, 35.056145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.361280, 33.523113, 35.565956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.246618, 33.151524, 35.472290>,  <30.177820, 32.928570, 35.416092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.246618, 33.151524, 35.472290>,  <30.361280, 33.523113, 35.565956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.246618, 33.151524, 35.472290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898801, -0.176167, -0.401401,
		0.331640, -0.325529, 0.885464,
		-0.286657, -0.928976, -0.234162,
		30.160622, 32.872829, 35.402042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.772779, 32.907734, 35.844383>,  <30.361280, 33.523113, 35.565956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.772779, 32.907734, 35.844383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.648565, 32.844692, 35.469421>,  <30.574038, 32.806866, 35.244446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.648565, 32.844692, 35.469421>,  <30.772779, 32.907734, 35.844383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.648565, 32.844692, 35.469421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944128, -0.165687, -0.284903,
		-0.110413, -0.973503, 0.200254,
		-0.310534, -0.157608, -0.937405,
		30.555405, 32.797409, 35.188198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.853289, 32.185528, 35.583096>,  <30.772779, 32.907734, 35.844383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.853289, 32.185528, 35.583096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.879642, 32.461998, 35.295227>,  <30.895454, 32.627880, 35.122505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.879642, 32.461998, 35.295227>,  <30.853289, 32.185528, 35.583096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.879642, 32.461998, 35.295227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948327, -0.267718, -0.170302,
		-0.310379, -0.671267, -0.673102,
		0.065884, 0.691179, -0.719675,
		30.899408, 32.669350, 35.079323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.490728, 32.603043, 35.849602>,  <30.853289, 32.185528, 35.583096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.490728, 32.603043, 35.849602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.308096, 32.532776, 35.500736>,  <31.198517, 32.490616, 35.291416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.308096, 32.532776, 35.500736>,  <31.490728, 32.603043, 35.849602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.308096, 32.532776, 35.500736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494770, 0.864874, 0.084820,
		0.739415, 0.470250, -0.481799,
		-0.456582, -0.175662, -0.872167,
		31.171122, 32.480076, 35.239086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.894323, 32.350143, 36.483673>,  <31.490728, 32.603043, 35.849602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.894323, 32.350143, 36.483673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.931639, 32.653233, 36.225327>,  <31.954029, 32.835087, 36.070316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.931639, 32.653233, 36.225327>,  <31.894323, 32.350143, 36.483673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.931639, 32.653233, 36.225327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.991548, 0.129449, 0.008648,
		0.090160, 0.639604, 0.763399,
		0.093290, 0.757727, -0.645869,
		31.959625, 32.880550, 36.031567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.423901, 31.841858, 36.169052>,  <31.894323, 32.350143, 36.483673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.423901, 31.841858, 36.169052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.364292, 31.876848, 35.775070>,  <32.328529, 31.897842, 35.538681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.364292, 31.876848, 35.775070>,  <32.423901, 31.841858, 36.169052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.364292, 31.876848, 35.775070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840377, 0.513728, 0.172770,
		0.521113, 0.853482, -0.003044,
		-0.149020, 0.087474, -0.984958,
		32.319588, 31.903091, 35.479584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.975452, 31.367176, 36.318825>,  <32.423901, 31.841858, 36.169052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.975452, 31.367176, 36.318825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.302120, 31.263351, 36.525002>,  <33.498119, 31.201057, 36.648708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.302120, 31.263351, 36.525002>,  <32.975452, 31.367176, 36.318825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.302120, 31.263351, 36.525002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391119, 0.407809, 0.825056,
		-0.424354, -0.875397, 0.231526,
		0.816670, -0.259562, 0.515440,
		33.547123, 31.185482, 36.679634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.903072, 30.933733, 37.022797>,  <32.975452, 31.367176, 36.318825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.903072, 30.933733, 37.022797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.253777, 31.124180, 37.049946>,  <33.464199, 31.238449, 37.066235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.253777, 31.124180, 37.049946>,  <32.903072, 30.933733, 37.022797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.253777, 31.124180, 37.049946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203516, 0.239430, 0.949344,
		0.435750, -0.846158, 0.306820,
		0.876757, 0.476120, 0.067875,
		33.516804, 31.267015, 37.070309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.069000, 30.831087, 37.705528>,  <32.903072, 30.933733, 37.022797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.069000, 30.831087, 37.705528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.302830, 31.130056, 37.579266>,  <33.443127, 31.309437, 37.503510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.302830, 31.130056, 37.579266>,  <33.069000, 30.831087, 37.705528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.302830, 31.130056, 37.579266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052884, 0.353124, 0.934081,
		0.809618, -0.562729, 0.166900,
		0.584570, 0.747422, -0.315654,
		33.478203, 31.354282, 37.484570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.628265, 30.940554, 38.187649>,  <33.069000, 30.831087, 37.705528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.628265, 30.940554, 38.187649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.635540, 31.283510, 37.981911>,  <33.639904, 31.489285, 37.858467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.635540, 31.283510, 37.981911>,  <33.628265, 30.940554, 38.187649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.635540, 31.283510, 37.981911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008330, 0.514538, 0.857427,
		0.999800, -0.011309, 0.016500,
		0.018187, 0.857393, -0.514341,
		33.640995, 31.540728, 37.827610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.098087, 31.314466, 38.510307>,  <33.628265, 30.940554, 38.187649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.098087, 31.314466, 38.510307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.930538, 31.612099, 38.302120>,  <33.830009, 31.790678, 38.177208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.930538, 31.612099, 38.302120>,  <34.098087, 31.314466, 38.510307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.930538, 31.612099, 38.302120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092463, 0.605148, 0.790725,
		0.903325, 0.283090, -0.322280,
		-0.418873, 0.744081, -0.520470,
		33.804874, 31.835323, 38.145981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.425770, 31.930296, 38.691841>,  <34.098087, 31.314466, 38.510307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.425770, 31.930296, 38.691841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.105343, 32.099663, 38.522602>,  <33.913086, 32.201283, 38.421059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.105343, 32.099663, 38.522602>,  <34.425770, 31.930296, 38.691841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.105343, 32.099663, 38.522602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050275, 0.751940, 0.657311,
		0.596462, 0.505278, -0.623640,
		-0.801065, 0.423415, -0.423102,
		33.865025, 32.226688, 38.395672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.523338, 32.740589, 38.718922>,  <34.425770, 31.930296, 38.691841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.523338, 32.740589, 38.718922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.136036, 32.650734, 38.675079>,  <33.903652, 32.596821, 38.648773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.136036, 32.650734, 38.675079>,  <34.523338, 32.740589, 38.718922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.136036, 32.650734, 38.675079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227890, 0.613258, 0.756294,
		-0.102680, 0.757265, -0.644985,
		-0.968258, -0.224642, -0.109604,
		33.845558, 32.583340, 38.642197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.148640, 33.367313, 38.729233>,  <34.523338, 32.740589, 38.718922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.148640, 33.367313, 38.729233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.889431, 33.071171, 38.800720>,  <33.733906, 32.893486, 38.843613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.889431, 33.071171, 38.800720>,  <34.148640, 33.367313, 38.729233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.889431, 33.071171, 38.800720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452419, 0.562954, 0.691665,
		-0.612687, 0.367360, -0.699758,
		-0.648021, -0.740358, 0.178714,
		33.695026, 32.849064, 38.854336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.432625, 33.683281, 38.814495>,  <34.148640, 33.367313, 38.729233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.432625, 33.683281, 38.814495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.411682, 33.338360, 39.015968>,  <33.399117, 33.131409, 39.136852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.411682, 33.338360, 39.015968>,  <33.432625, 33.683281, 38.814495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.411682, 33.338360, 39.015968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369180, 0.485354, 0.792551,
		-0.927882, -0.144453, -0.343756,
		-0.052357, -0.862302, 0.503681,
		33.395973, 33.079670, 39.167072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.835007, 33.757046, 39.139084>,  <33.432625, 33.683281, 38.814495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.835007, 33.757046, 39.139084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.043354, 33.476269, 39.333393>,  <33.168362, 33.307804, 39.449978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.043354, 33.476269, 39.333393>,  <32.835007, 33.757046, 39.139084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.043354, 33.476269, 39.333393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358558, 0.336520, 0.870741,
		-0.774681, -0.627720, -0.076404,
		0.520870, -0.701942, 0.485770,
		33.199615, 33.265686, 39.479122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.380829, 33.593952, 39.672680>,  <32.835007, 33.757046, 39.139084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.380829, 33.593952, 39.672680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.720200, 33.424629, 39.799793>,  <32.923820, 33.323036, 39.876060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.720200, 33.424629, 39.799793>,  <32.380829, 33.593952, 39.672680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.720200, 33.424629, 39.799793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239238, 0.228875, 0.943600,
		-0.472166, -0.876599, 0.092912,
		0.848424, -0.423308, 0.317783,
		32.974728, 33.297638, 39.895130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.256149, 32.985195, 40.190044>,  <32.380829, 33.593952, 39.672680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.256149, 32.985195, 40.190044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.615829, 33.147488, 40.255558>,  <32.831638, 33.244862, 40.294865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.615829, 33.147488, 40.255558>,  <32.256149, 32.985195, 40.190044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.615829, 33.147488, 40.255558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172036, -0.016332, 0.984955,
		0.402303, -0.913846, 0.055115,
		0.899198, 0.405732, 0.163785,
		32.885590, 33.269207, 40.304695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.584969, 32.584122, 40.747013>,  <32.256149, 32.985195, 40.190044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.584969, 32.584122, 40.747013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.767494, 32.939651, 40.763798>,  <32.877010, 33.152969, 40.773869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.767494, 32.939651, 40.763798>,  <32.584969, 32.584122, 40.747013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.767494, 32.939651, 40.763798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276350, 0.096729, 0.956177,
		0.845818, -0.447915, 0.289766,
		0.456315, 0.888828, 0.041966,
		32.904388, 33.206299, 40.776386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.917789, 32.591103, 41.505905>,  <32.584969, 32.584122, 40.747013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.917789, 32.591103, 41.505905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.934612, 32.969551, 41.377472>,  <32.944706, 33.196621, 41.300411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.934612, 32.969551, 41.377472>,  <32.917789, 32.591103, 41.505905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.934612, 32.969551, 41.377472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077106, 0.317334, 0.945174,
		0.996135, -0.064509, -0.059606,
		0.042057, 0.946117, -0.321081,
		32.947231, 33.253387, 41.281147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.486877, 32.941296, 41.800774>,  <32.917789, 32.591103, 41.505905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.486877, 32.941296, 41.800774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.230618, 33.228493, 41.691921>,  <33.076862, 33.400810, 41.626610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.230618, 33.228493, 41.691921>,  <33.486877, 32.941296, 41.800774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.230618, 33.228493, 41.691921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024238, 0.335328, 0.941790,
		0.767453, 0.609951, -0.197424,
		-0.640647, 0.717994, -0.272132,
		33.038422, 33.443890, 41.610283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.814072, 33.512604, 42.106171>,  <33.486877, 32.941296, 41.800774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.814072, 33.512604, 42.106171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.441143, 33.630665, 42.022598>,  <33.217384, 33.701504, 41.972454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.441143, 33.630665, 42.022598>,  <33.814072, 33.512604, 42.106171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.441143, 33.630665, 42.022598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123418, 0.283350, 0.951042,
		0.339905, 0.912467, -0.227747,
		-0.932326, 0.295156, -0.208927,
		33.161446, 33.719212, 41.959919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.669006, 34.260132, 42.415024>,  <33.814072, 33.512604, 42.106171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.669006, 34.260132, 42.415024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.304832, 34.098652, 42.378971>,  <33.086327, 34.001762, 42.357338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.304832, 34.098652, 42.378971>,  <33.669006, 34.260132, 42.415024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.304832, 34.098652, 42.378971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245639, 0.352353, 0.903055,
		-0.332809, 0.844317, -0.419962,
		-0.910439, -0.403704, -0.090131,
		33.031700, 33.977539, 42.351933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.058392, 34.707363, 42.643005>,  <33.669006, 34.260132, 42.415024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.058392, 34.707363, 42.643005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.878967, 34.349930, 42.650032>,  <32.771313, 34.135471, 42.654247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.878967, 34.349930, 42.650032>,  <33.058392, 34.707363, 42.643005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.878967, 34.349930, 42.650032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464994, 0.250112, 0.849249,
		-0.763267, 0.372768, -0.527700,
		-0.448558, -0.893581, 0.017567,
		32.744400, 34.081856, 42.655304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.462208, 34.889198, 42.883965>,  <33.058392, 34.707363, 42.643005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.462208, 34.889198, 42.883965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.477882, 34.495712, 42.954140>,  <32.487286, 34.259621, 42.996246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.477882, 34.495712, 42.954140>,  <32.462208, 34.889198, 42.883965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.477882, 34.495712, 42.954140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479239, 0.135560, 0.867153,
		-0.876809, -0.118054, -0.466121,
		0.039183, -0.983711, 0.175436,
		32.489639, 34.200600, 43.006771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.779848, 34.705555, 43.094685>,  <32.462208, 34.889198, 42.883965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.779848, 34.705555, 43.094685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.033737, 34.417999, 43.208054>,  <32.186069, 34.245468, 43.276073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.033737, 34.417999, 43.208054>,  <31.779848, 34.705555, 43.094685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.033737, 34.417999, 43.208054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446648, -0.042007, 0.893723,
		-0.630580, -0.693857, -0.347752,
		0.634724, -0.718886, 0.283421,
		32.224155, 34.202332, 43.293079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.339237, 34.305138, 43.465908>,  <31.779848, 34.705555, 43.094685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.339237, 34.305138, 43.465908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.705376, 34.186966, 43.575348>,  <31.925058, 34.116062, 43.641014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.705376, 34.186966, 43.575348>,  <31.339237, 34.305138, 43.465908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.705376, 34.186966, 43.575348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264639, 0.070747, 0.961749,
		-0.303487, -0.952741, -0.013425,
		0.915348, -0.295431, 0.273604,
		31.979980, 34.098335, 43.657429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.229099, 33.760925, 43.934410>,  <31.339237, 34.305138, 43.465908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.229099, 33.760925, 43.934410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.591961, 33.905628, 44.020397>,  <31.809677, 33.992447, 44.071987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.591961, 33.905628, 44.020397>,  <31.229099, 33.760925, 43.934410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.591961, 33.905628, 44.020397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251803, 0.057360, 0.966077,
		0.337151, -0.930508, 0.143125,
		0.907152, 0.361753, 0.214966,
		31.864107, 34.014153, 44.084888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.480343, 33.426434, 44.532845>,  <31.229099, 33.760925, 43.934410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.480343, 33.426434, 44.532845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.704180, 33.757927, 44.536026>,  <31.838482, 33.956821, 44.537937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.704180, 33.757927, 44.536026>,  <31.480343, 33.426434, 44.532845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.704180, 33.757927, 44.536026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139583, 0.084781, 0.986574,
		0.816929, -0.553190, 0.163120,
		0.559592, 0.828730, 0.007956,
		31.872057, 34.006546, 44.538414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.100758, 33.398438, 45.044701>,  <31.480343, 33.426434, 44.532845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.100758, 33.398438, 45.044701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.033058, 33.790981, 45.008274>,  <31.992439, 34.026508, 44.986420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.033058, 33.790981, 45.008274>,  <32.100758, 33.398438, 45.044701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.033058, 33.790981, 45.008274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049633, 0.083792, 0.995246,
		0.984323, 0.172961, 0.034526,
		-0.169246, 0.981358, -0.091063,
		31.982285, 34.085388, 44.980957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.612362, 33.730751, 45.488728>,  <32.100758, 33.398438, 45.044701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.612362, 33.730751, 45.488728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.348949, 34.026260, 45.431370>,  <32.190903, 34.203564, 45.396954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.348949, 34.026260, 45.431370>,  <32.612362, 33.730751, 45.488728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.348949, 34.026260, 45.431370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083240, 0.260883, 0.961775,
		0.747940, 0.621418, -0.233294,
		-0.658527, 0.738769, -0.143398,
		32.151390, 34.247890, 45.388351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.824425, 34.286110, 45.856586>,  <32.612362, 33.730751, 45.488728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.824425, 34.286110, 45.856586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.445675, 34.405483, 45.808647>,  <32.218426, 34.477108, 45.779884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.445675, 34.405483, 45.808647>,  <32.824425, 34.286110, 45.856586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.445675, 34.405483, 45.808647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018665, 0.321055, 0.946877,
		0.321055, 0.898812, -0.298429,
		-0.946877, 0.298429, -0.119852,
		32.161613, 34.495010, 45.772690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.837193, 34.917122, 46.102497>,  <32.824425, 34.286110, 45.856586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.837193, 34.917122, 46.102497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.456059, 34.796200, 46.113201>,  <32.227379, 34.723644, 46.119625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.456059, 34.796200, 46.113201>,  <32.837193, 34.917122, 46.102497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.456059, 34.796200, 46.113201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112347, 0.433270, 0.894234,
		-0.281931, 0.849050, -0.446798,
		-0.952834, -0.302309, 0.026764,
		32.170208, 34.705505, 46.121231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.541569, 35.508698, 46.361069>,  <32.837193, 34.917122, 46.102497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.541569, 35.508698, 46.361069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.253983, 35.234314, 46.405876>,  <32.081432, 35.069683, 46.432762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.253983, 35.234314, 46.405876>,  <32.541569, 35.508698, 46.361069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.253983, 35.234314, 46.405876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170530, 0.330336, 0.928330,
		-0.673801, 0.648335, -0.354477,
		-0.718966, -0.685959, 0.112020,
		32.038292, 35.028526, 46.439484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.838406, 35.770992, 46.580509>,  <32.541569, 35.508698, 46.361069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.838406, 35.770992, 46.580509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.857203, 35.393032, 46.710091>,  <31.868481, 35.166256, 46.787838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.857203, 35.393032, 46.710091>,  <31.838406, 35.770992, 46.580509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.857203, 35.393032, 46.710091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201862, 0.308638, 0.929513,
		-0.978286, -0.109073, -0.176237,
		0.046991, -0.944905, 0.323954,
		31.871300, 35.109562, 46.807278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.257347, 35.672184, 46.963371>,  <31.838406, 35.770992, 46.580509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.257347, 35.672184, 46.963371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.512854, 35.385746, 47.075935>,  <31.666159, 35.213882, 47.143475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.512854, 35.385746, 47.075935>,  <31.257347, 35.672184, 46.963371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.512854, 35.385746, 47.075935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151982, 0.241105, 0.958525,
		-0.754239, -0.655044, 0.045178,
		0.638769, -0.716090, 0.281406,
		31.704485, 35.170918, 47.160358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.962109, 35.440609, 47.591763>,  <31.257347, 35.672184, 46.963371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.962109, 35.440609, 47.591763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.328007, 35.282623, 47.625805>,  <31.547546, 35.187832, 47.646229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.328007, 35.282623, 47.625805>,  <30.962109, 35.440609, 47.591763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.328007, 35.282623, 47.625805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011915, 0.236924, 0.971455,
		-0.403855, -0.887620, 0.221431,
		0.914745, -0.394966, 0.085107,
		31.602430, 35.164135, 47.651337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.852341, 35.045876, 48.071056>,  <30.962109, 35.440609, 47.591763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.852341, 35.045876, 48.071056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.249699, 35.091133, 48.063419>,  <31.488113, 35.118290, 48.058838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.249699, 35.091133, 48.063419>,  <30.852341, 35.045876, 48.071056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.249699, 35.091133, 48.063419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024384, -0.045569, 0.998664,
		0.112126, -0.992533, -0.048027,
		0.993395, 0.113147, -0.019092,
		31.547718, 35.125076, 48.057693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.124567, 34.625896, 48.729988>,  <30.852341, 35.045876, 48.071056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.124567, 34.625896, 48.729988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.403028, 34.894234, 48.627739>,  <31.570105, 35.055237, 48.566391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.403028, 34.894234, 48.627739>,  <31.124567, 34.625896, 48.729988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.403028, 34.894234, 48.627739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160476, 0.201645, 0.966223,
		0.699726, -0.713661, 0.032722,
		0.696154, 0.670840, -0.255622,
		31.611876, 35.095486, 48.551052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.628824, 34.511944, 49.078911>,  <31.124567, 34.625896, 48.729988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.628824, 34.511944, 49.078911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.752821, 34.877121, 48.972744>,  <31.827219, 35.096226, 48.909042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.752821, 34.877121, 48.972744>,  <31.628824, 34.511944, 49.078911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.752821, 34.877121, 48.972744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405552, 0.125523, 0.905412,
		0.859903, -0.388309, -0.331334,
		0.309989, 0.912940, -0.265418,
		31.845818, 35.151005, 48.893120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.318535, 34.506226, 49.178436>,  <31.628824, 34.511944, 49.078911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.318535, 34.506226, 49.178436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.251099, 34.900349, 49.167542>,  <32.210636, 35.136822, 49.161007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.251099, 34.900349, 49.167542>,  <32.318535, 34.506226, 49.178436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.251099, 34.900349, 49.167542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481344, 0.106410, 0.870049,
		0.860165, 0.133575, -0.492213,
		-0.168593, 0.985309, -0.027235,
		32.200520, 35.195942, 49.159370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.905262, 34.788029, 49.372818>,  <32.318535, 34.506226, 49.178436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.905262, 34.788029, 49.372818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.624290, 35.065666, 49.435844>,  <32.455708, 35.232246, 49.473660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.624290, 35.065666, 49.435844>,  <32.905262, 34.788029, 49.372818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.624290, 35.065666, 49.435844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451749, 0.263701, 0.852282,
		0.550010, 0.669852, -0.498786,
		-0.702433, 0.694090, 0.157567,
		32.413559, 35.273891, 49.483116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.219860, 35.246346, 49.876251>,  <32.905262, 34.788029, 49.372818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.219860, 35.246346, 49.876251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.833473, 35.333019, 49.932747>,  <32.601639, 35.385025, 49.966644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.833473, 35.333019, 49.932747>,  <33.219860, 35.246346, 49.876251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.833473, 35.333019, 49.932747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182379, 0.183408, 0.965971,
		0.183408, 0.958858, -0.216686,
		-0.965971, 0.216686, 0.141237,
		32.543682, 35.398026, 49.975117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.165928, 35.823875, 50.386944>,  <33.219860, 35.246346, 49.876251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.165928, 35.823875, 50.386944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.807369, 35.652660, 50.432999>,  <32.592236, 35.549931, 50.460632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.807369, 35.652660, 50.432999>,  <33.165928, 35.823875, 50.386944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.807369, 35.652660, 50.432999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157622, -0.065040, 0.985355,
		-0.414281, 0.901417, 0.125770,
		-0.896396, -0.428038, 0.115138,
		32.538452, 35.524250, 50.467541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.968636, 36.044487, 50.998940>,  <33.165928, 35.823875, 50.386944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.968636, 36.044487, 50.998940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.731438, 35.728329, 50.937447>,  <32.589119, 35.538635, 50.900551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.731438, 35.728329, 50.937447>,  <32.968636, 36.044487, 50.998940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.731438, 35.728329, 50.937447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128278, -0.281217, 0.951032,
		-0.794919, 0.544241, 0.268151,
		-0.592999, -0.790391, -0.153731,
		32.553539, 35.491211, 50.891327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.461365, 35.939915, 51.538960>,  <32.968636, 36.044487, 50.998940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.461365, 35.939915, 51.538960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.536133, 35.576542, 51.389389>,  <32.580994, 35.358521, 51.299648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.536133, 35.576542, 51.389389>,  <32.461365, 35.939915, 51.538960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.536133, 35.576542, 51.389389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158470, -0.403532, 0.901138,
		-0.969509, -0.109184, -0.219387,
		0.186920, -0.908428, -0.373925,
		32.592209, 35.304012, 51.277210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.846436, 35.476624, 51.742092>,  <32.461365, 35.939915, 51.538960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.846436, 35.476624, 51.742092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.178459, 35.267902, 51.663380>,  <32.377674, 35.142670, 51.616154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.178459, 35.267902, 51.663380>,  <31.846436, 35.476624, 51.742092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.178459, 35.267902, 51.663380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160203, -0.561092, 0.812102,
		-0.534172, -0.642566, -0.549334,
		0.830057, -0.521808, -0.196779,
		32.427475, 35.111362, 51.604347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.763622, 34.799763, 51.618217>,  <31.846436, 35.476624, 51.742092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.763622, 34.799763, 51.618217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.119209, 34.850227, 51.794319>,  <32.332561, 34.880505, 51.899979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.119209, 34.850227, 51.794319>,  <31.763622, 34.799763, 51.618217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.119209, 34.850227, 51.794319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312507, -0.535621, 0.784506,
		0.334781, -0.834981, -0.436724,
		0.888967, 0.126158, 0.440253,
		32.385899, 34.888073, 51.926395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.196159, 34.175098, 51.707359>,  <31.763622, 34.799763, 51.618217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.196159, 34.175098, 51.707359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.274891, 34.453964, 51.983105>,  <32.322128, 34.621284, 52.148552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.274891, 34.453964, 51.983105>,  <32.196159, 34.175098, 51.707359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.274891, 34.453964, 51.983105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325863, -0.616629, 0.716647,
		0.924702, -0.365693, 0.105811,
		0.196826, 0.697164, 0.689363,
		32.333939, 34.663113, 52.189915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.919127, 33.897659, 52.305103>,  <32.196159, 34.175098, 51.707359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.919127, 33.897659, 52.305103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.089283, 34.230324, 52.447865>,  <32.191376, 34.429924, 52.533520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.089283, 34.230324, 52.447865>,  <31.919127, 33.897659, 52.305103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.089283, 34.230324, 52.447865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219200, -0.287938, 0.932225,
		0.878062, -0.474794, 0.059813,
		0.425393, 0.831662, 0.356902,
		32.216900, 34.479824, 52.554935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.476170, 33.413265, 52.347004>,  <31.919127, 33.897659, 52.305103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.476170, 33.413265, 52.347004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.348618, 33.072468, 52.513096>,  <32.272087, 32.867989, 52.612751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.348618, 33.072468, 52.513096>,  <32.476170, 33.413265, 52.347004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.348618, 33.072468, 52.513096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354439, 0.299120, 0.885946,
		-0.879028, 0.429682, 0.206598,
		-0.318877, -0.851998, 0.415231,
		32.252953, 32.816868, 52.637665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.522884, 33.900311, 52.809238>,  <32.476170, 33.413265, 52.347004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.522884, 33.900311, 52.809238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.764671, 34.195801, 52.928513>,  <32.909744, 34.373093, 53.000076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.764671, 34.195801, 52.928513>,  <32.522884, 33.900311, 52.809238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.764671, 34.195801, 52.928513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701645, -0.316435, -0.638406,
		-0.377248, 0.595113, -0.709594,
		0.604465, 0.738721, 0.298184,
		32.946011, 34.417416, 53.017967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.790958, 34.317646, 52.288536>,  <32.522884, 33.900311, 52.809238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.790958, 34.317646, 52.288536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.089741, 34.365612, 52.550125>,  <33.269009, 34.394394, 52.707077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.089741, 34.365612, 52.550125>,  <32.790958, 34.317646, 52.288536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.089741, 34.365612, 52.550125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656654, -0.287266, -0.697341,
		0.104241, 0.950315, -0.293319,
		0.746954, 0.119918, 0.653972,
		33.313828, 34.401588, 52.746315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.553753, 34.422276, 52.096020>,  <32.790958, 34.317646, 52.288536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.553753, 34.422276, 52.096020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.483257, 34.030483, 52.135105>,  <33.440960, 33.795406, 52.158558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.483257, 34.030483, 52.135105>,  <33.553753, 34.422276, 52.096020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.483257, 34.030483, 52.135105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281867, -0.145328, -0.948383,
		0.943128, -0.139599, 0.301697,
		-0.176239, -0.979486, 0.097715,
		33.430386, 33.736637, 52.164421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.091637, 34.020000, 51.851364>,  <33.553753, 34.422276, 52.096020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.091637, 34.020000, 51.851364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.734016, 33.842854, 51.824402>,  <33.519444, 33.736565, 51.808224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.734016, 33.842854, 51.824402>,  <34.091637, 34.020000, 51.851364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.734016, 33.842854, 51.824402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094886, -0.040167, -0.994677,
		0.437799, -0.895688, 0.077933,
		-0.894052, -0.442864, -0.067403,
		33.465801, 33.709995, 51.804180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.053688, 33.320862, 51.593941>,  <34.091637, 34.020000, 51.851364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.053688, 33.320862, 51.593941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.726482, 33.513519, 51.468174>,  <33.530159, 33.629116, 51.392712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.726482, 33.513519, 51.468174>,  <34.053688, 33.320862, 51.593941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.726482, 33.513519, 51.468174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256327, -0.184104, -0.948895,
		-0.514920, -0.856809, 0.027141,
		-0.818019, 0.481648, -0.314422,
		33.481075, 33.658012, 51.373848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.787724, 32.884521, 51.050537>,  <34.053688, 33.320862, 51.593941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.787724, 32.884521, 51.050537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.667767, 33.264084, 51.011261>,  <33.595791, 33.491821, 50.987694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.667767, 33.264084, 51.011261>,  <33.787724, 32.884521, 51.050537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.667767, 33.264084, 51.011261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439508, 0.046074, -0.897056,
		-0.846698, -0.312176, -0.430870,
		-0.299891, 0.948906, -0.098193,
		33.577801, 33.548756, 50.981804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.720570, 32.962143, 50.420532>,  <33.787724, 32.884521, 51.050537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.720570, 32.962143, 50.420532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.694855, 33.355320, 50.489452>,  <33.679428, 33.591225, 50.530804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.694855, 33.355320, 50.489452>,  <33.720570, 32.962143, 50.420532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.694855, 33.355320, 50.489452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496561, 0.181276, -0.848862,
		-0.865618, 0.030992, -0.499744,
		-0.064284, 0.982944, 0.172305,
		33.675571, 33.650204, 50.541145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.415512, 33.176964, 49.875881>,  <33.720570, 32.962143, 50.420532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.415512, 33.176964, 49.875881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.632019, 33.474075, 50.033524>,  <33.761921, 33.652340, 50.128109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.632019, 33.474075, 50.033524>,  <33.415512, 33.176964, 49.875881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.632019, 33.474075, 50.033524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551712, 0.039982, -0.833076,
		-0.634545, 0.668347, -0.388157,
		0.541264, 0.742774, 0.394105,
		33.794399, 33.696907, 50.151756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.453739, 33.735493, 49.365448>,  <33.415512, 33.176964, 49.875881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.453739, 33.735493, 49.365448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.754658, 33.790813, 49.623108>,  <33.935207, 33.824005, 49.777702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.754658, 33.790813, 49.623108>,  <33.453739, 33.735493, 49.365448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.754658, 33.790813, 49.623108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651600, -0.011765, -0.758471,
		-0.097318, 0.990321, -0.098967,
		0.752294, 0.138300, 0.644148,
		33.980347, 33.832302, 49.816353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.852104, 34.012630, 48.906811>,  <33.453739, 33.735493, 49.365448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.852104, 34.012630, 48.906811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.087864, 33.942299, 49.222198>,  <34.229321, 33.900101, 49.411430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.087864, 33.942299, 49.222198>,  <33.852104, 34.012630, 48.906811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.087864, 33.942299, 49.222198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807805, 0.137152, -0.573272,
		-0.007341, 0.974819, 0.222876,
		0.589404, -0.175832, 0.788471,
		34.264687, 33.889549, 49.458740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.325821, 34.544910, 48.887043>,  <33.852104, 34.012630, 48.906811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.325821, 34.544910, 48.887043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.466637, 34.226238, 49.083561>,  <34.551128, 34.035034, 49.201473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.466637, 34.226238, 49.083561>,  <34.325821, 34.544910, 48.887043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.466637, 34.226238, 49.083561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807843, -0.006472, -0.589362,
		0.472712, 0.604370, 0.641312,
		0.352042, -0.796678, 0.491295,
		34.572250, 33.987236, 49.230949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.040943, 34.638195, 48.813744>,  <34.325821, 34.544910, 48.887043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.040943, 34.638195, 48.813744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.032074, 34.254467, 48.926327>,  <35.026752, 34.024231, 48.993877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.032074, 34.254467, 48.926327>,  <35.040943, 34.638195, 48.813744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.032074, 34.254467, 48.926327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683205, -0.220076, -0.696274,
		0.729890, 0.176856, 0.660290,
		-0.022174, -0.959317, 0.281460,
		35.025421, 33.966671, 49.010765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.747135, 34.387814, 48.930328>,  <35.040943, 34.638195, 48.813744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.747135, 34.387814, 48.930328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.525913, 34.063011, 48.855732>,  <35.393181, 33.868130, 48.810974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.525913, 34.063011, 48.855732>,  <35.747135, 34.387814, 48.930328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.525913, 34.063011, 48.855732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737064, -0.372500, -0.563898,
		0.388423, -0.449318, 0.804513,
		-0.553051, -0.812008, -0.186488,
		35.359997, 33.819408, 48.799786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.147251, 33.820202, 49.043095>,  <35.747135, 34.387814, 48.930328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.147251, 33.820202, 49.043095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.862919, 33.699390, 48.789005>,  <35.692322, 33.626904, 48.636551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.862919, 33.699390, 48.789005>,  <36.147251, 33.820202, 49.043095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.862919, 33.699390, 48.789005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698725, -0.406807, -0.588466,
		-0.080678, -0.862141, 0.500205,
		-0.710827, -0.302029, -0.635219,
		35.649670, 33.608780, 48.598438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.644539, 33.379208, 48.757618>,  <36.147251, 33.820202, 49.043095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.644539, 33.379208, 48.757618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.307728, 33.385143, 48.541927>,  <36.105640, 33.388702, 48.412514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.307728, 33.385143, 48.541927>,  <36.644539, 33.379208, 48.757618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.307728, 33.385143, 48.541927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466496, -0.481899, -0.741724,
		-0.270855, -0.876101, 0.398853,
		-0.842032, 0.014836, -0.539222,
		36.055119, 33.389595, 48.380161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.682545, 32.746990, 48.395145>,  <36.644539, 33.379208, 48.757618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.682545, 32.746990, 48.395145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.404945, 32.969730, 48.212593>,  <36.238388, 33.103374, 48.103062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.404945, 32.969730, 48.212593>,  <36.682545, 32.746990, 48.395145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.404945, 32.969730, 48.212593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412130, -0.212510, -0.885996,
		-0.590356, -0.802966, -0.082016,
		-0.693995, 0.556854, -0.456382,
		36.196747, 33.136787, 48.075680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.362347, 32.297569, 47.855354>,  <36.682545, 32.746990, 48.395145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.362347, 32.297569, 47.855354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.321434, 32.688671, 47.782101>,  <36.296886, 32.923332, 47.738148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.321434, 32.688671, 47.782101>,  <36.362347, 32.297569, 47.855354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.321434, 32.688671, 47.782101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342407, -0.138242, -0.929326,
		-0.933968, -0.157759, -0.320650,
		-0.102282, 0.977753, -0.183131,
		36.290749, 32.981998, 47.727161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.048931, 32.289059, 47.111671>,  <36.362347, 32.297569, 47.855354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.048931, 32.289059, 47.111671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.178665, 32.659203, 47.190174>,  <36.256508, 32.881290, 47.237274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.178665, 32.659203, 47.190174>,  <36.048931, 32.289059, 47.111671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.178665, 32.659203, 47.190174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226690, 0.125388, -0.965862,
		-0.918377, 0.357756, -0.169102,
		0.324339, 0.925359, 0.196253,
		36.275967, 32.936810, 47.249050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.705521, 32.671951, 46.615826>,  <36.048931, 32.289059, 47.111671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.705521, 32.671951, 46.615826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.990700, 32.920113, 46.746548>,  <36.161808, 33.069012, 46.824982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.990700, 32.920113, 46.746548>,  <35.705521, 32.671951, 46.615826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.990700, 32.920113, 46.746548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130897, 0.340109, -0.931231,
		-0.688889, 0.706699, 0.161271,
		0.712950, 0.620405, 0.326802,
		36.204586, 33.106236, 46.844589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.516685, 33.354851, 46.385529>,  <35.705521, 32.671951, 46.615826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.516685, 33.354851, 46.385529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.912296, 33.335621, 46.441399>,  <36.149662, 33.324081, 46.474922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.912296, 33.335621, 46.441399>,  <35.516685, 33.354851, 46.385529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.912296, 33.335621, 46.441399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147228, 0.243556, -0.958647,
		0.012068, 0.968695, 0.247963,
		0.989029, -0.048076, 0.139680,
		36.209003, 33.321198, 46.483303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.770374, 33.974396, 46.184917>,  <35.516685, 33.354851, 46.385529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.770374, 33.974396, 46.184917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.076355, 33.720493, 46.141224>,  <36.259945, 33.568153, 46.115005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.076355, 33.720493, 46.141224>,  <35.770374, 33.974396, 46.184917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.076355, 33.720493, 46.141224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079172, 0.260982, -0.962091,
		0.639198, 0.727309, 0.249894,
		0.764956, -0.634752, -0.109237,
		36.305843, 33.530067, 46.108452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.099522, 34.264656, 45.639980>,  <35.770374, 33.974396, 46.184917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.099522, 34.264656, 45.639980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.215481, 33.883434, 45.674946>,  <36.285057, 33.654701, 45.695923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.215481, 33.883434, 45.674946>,  <36.099522, 34.264656, 45.639980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.215481, 33.883434, 45.674946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067309, -0.070802, -0.995217,
		0.954689, 0.294392, 0.043624,
		0.289895, -0.953058, 0.087409,
		36.302448, 33.597515, 45.701168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.812908, 34.157726, 45.389694>,  <36.099522, 34.264656, 45.639980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.812908, 34.157726, 45.389694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.638302, 33.799053, 45.360268>,  <36.533539, 33.583851, 45.342609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.638302, 33.799053, 45.360268>,  <36.812908, 34.157726, 45.389694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.638302, 33.799053, 45.360268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303770, -0.069922, -0.950176,
		0.846862, -0.437118, 0.302907,
		-0.436518, -0.896682, -0.073569,
		36.507347, 33.530048, 45.338196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.260143, 33.812946, 44.938522>,  <36.812908, 34.157726, 45.389694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.260143, 33.812946, 44.938522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.907452, 33.625000, 44.921673>,  <36.695835, 33.512234, 44.911564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.907452, 33.625000, 44.921673>,  <37.260143, 33.812946, 44.938522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.907452, 33.625000, 44.921673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056139, -0.015847, -0.998297,
		0.468397, -0.882596, 0.040351,
		-0.881733, -0.469864, -0.042126,
		36.642933, 33.484039, 44.909035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.364307, 33.277149, 44.401714>,  <37.260143, 33.812946, 44.938522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.364307, 33.277149, 44.401714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.967735, 33.259956, 44.451050>,  <36.729790, 33.249641, 44.480652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.967735, 33.259956, 44.451050>,  <37.364307, 33.277149, 44.401714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.967735, 33.259956, 44.451050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111703, -0.210392, -0.971215,
		0.067691, -0.976672, 0.203789,
		-0.991433, -0.042979, 0.123339,
		36.670303, 33.247063, 44.488052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.231766, 32.614780, 44.155228>,  <37.364307, 33.277149, 44.401714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.231766, 32.614780, 44.155228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.918724, 32.863579, 44.145073>,  <36.730900, 33.012859, 44.138981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.918724, 32.863579, 44.145073>,  <37.231766, 32.614780, 44.155228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.918724, 32.863579, 44.145073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158145, -0.238091, -0.958281,
		-0.602092, -0.745944, 0.284698,
		-0.782608, 0.621997, -0.025386,
		36.683941, 33.050179, 44.137459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.586349, 32.203701, 43.936562>,  <37.231766, 32.614780, 44.155228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.586349, 32.203701, 43.936562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.500340, 32.583057, 43.843342>,  <36.448734, 32.810673, 43.787411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.500340, 32.583057, 43.843342>,  <36.586349, 32.203701, 43.936562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.500340, 32.583057, 43.843342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145939, -0.267160, -0.952538,
		-0.965643, -0.170810, 0.195854,
		-0.215027, 0.948393, -0.233053,
		36.435833, 32.867577, 43.773426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.937305, 32.231968, 43.441601>,  <36.586349, 32.203701, 43.936562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.937305, 32.231968, 43.441601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.143764, 32.572430, 43.403397>,  <36.267639, 32.776707, 43.380474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.143764, 32.572430, 43.403397>,  <35.937305, 32.231968, 43.441601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.143764, 32.572430, 43.403397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102766, -0.049163, -0.993490,
		-0.850311, 0.522605, 0.062095,
		0.516150, 0.851156, -0.095510,
		36.298611, 32.827778, 43.374744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.525669, 32.547134, 42.969002>,  <35.937305, 32.231968, 43.441601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.525669, 32.547134, 42.969002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.882114, 32.728588, 42.964340>,  <36.095982, 32.837460, 42.961544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.882114, 32.728588, 42.964340>,  <35.525669, 32.547134, 42.969002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.882114, 32.728588, 42.964340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025955, 0.025315, -0.999343,
		-0.453042, 0.890828, 0.034333,
		0.891111, 0.453635, -0.011652,
		36.149448, 32.864677, 42.960846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.410206, 33.053509, 42.488441>,  <35.525669, 32.547134, 42.969002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.410206, 33.053509, 42.488441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.801029, 32.973515, 42.517750>,  <36.035522, 32.925518, 42.535336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.801029, 32.973515, 42.517750>,  <35.410206, 33.053509, 42.488441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.801029, 32.973515, 42.517750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055366, -0.093719, -0.994058,
		0.205668, 0.975306, -0.080496,
		0.977055, -0.199989, 0.073274,
		36.094147, 32.913517, 42.539730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.704662, 33.570908, 42.149166>,  <35.410206, 33.053509, 42.488441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.704662, 33.570908, 42.149166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.972195, 33.274109, 42.167507>,  <36.132713, 33.096031, 42.178513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.972195, 33.274109, 42.167507>,  <35.704662, 33.570908, 42.149166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.972195, 33.274109, 42.167507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253432, 0.169589, -0.952371,
		0.698880, 0.648599, 0.301473,
		0.668834, -0.741996, 0.045853,
		36.172844, 33.051510, 42.181263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.336121, 33.834187, 41.827114>,  <35.704662, 33.570908, 42.149166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.336121, 33.834187, 41.827114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.343159, 33.434265, 41.830841>,  <36.347382, 33.194313, 41.833076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.343159, 33.434265, 41.830841>,  <36.336121, 33.834187, 41.827114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.343159, 33.434265, 41.830841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195218, -0.005706, -0.980744,
		0.980602, 0.019079, 0.195079,
		0.017599, -0.999802, 0.009320,
		36.348438, 33.134323, 41.833637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.847134, 33.706028, 41.434376>,  <36.336121, 33.834187, 41.827114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.847134, 33.706028, 41.434376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.688557, 33.338985, 41.422909>,  <36.593410, 33.118759, 41.416031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.688557, 33.338985, 41.422909>,  <36.847134, 33.706028, 41.434376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.688557, 33.338985, 41.422909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303003, -0.101309, -0.947589,
		0.866614, -0.384352, 0.318203,
		-0.396445, -0.917611, -0.028664,
		36.569622, 33.063702, 41.414310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.391792, 33.346794, 41.261196>,  <36.847134, 33.706028, 41.434376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.391792, 33.346794, 41.261196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.080944, 33.114002, 41.165382>,  <36.894436, 32.974327, 41.107895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.080944, 33.114002, 41.165382>,  <37.391792, 33.346794, 41.261196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.080944, 33.114002, 41.165382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391434, -0.148934, -0.908073,
		0.492810, -0.799445, 0.343549,
		-0.777121, -0.581984, -0.239534,
		36.847809, 32.939407, 41.093521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.716682, 32.797028, 40.907524>,  <37.391792, 33.346794, 41.261196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.716682, 32.797028, 40.907524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.333538, 32.765583, 40.797020>,  <37.103653, 32.746716, 40.730717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.333538, 32.765583, 40.797020>,  <37.716682, 32.797028, 40.907524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.333538, 32.765583, 40.797020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281664, -0.445510, -0.849816,
		-0.056272, -0.891819, 0.448879,
		-0.957862, -0.078612, -0.276263,
		37.046181, 32.742001, 40.714142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.606522, 32.023979, 40.726334>,  <37.716682, 32.797028, 40.907524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.606522, 32.023979, 40.726334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.325832, 32.265945, 40.575787>,  <37.157417, 32.411125, 40.485458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.325832, 32.265945, 40.575787>,  <37.606522, 32.023979, 40.726334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.325832, 32.265945, 40.575787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069244, -0.467869, -0.881081,
		-0.709076, -0.644337, 0.286427,
		-0.701724, 0.604920, -0.376371,
		37.115314, 32.447422, 40.462875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.237644, 31.494846, 40.386948>,  <37.606522, 32.023979, 40.726334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.237644, 31.494846, 40.386948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.105968, 31.829651, 40.212112>,  <37.026962, 32.030533, 40.107212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.105968, 31.829651, 40.212112>,  <37.237644, 31.494846, 40.386948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.105968, 31.829651, 40.212112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007283, -0.460623, -0.887566,
		-0.944235, -0.295362, 0.145537,
		-0.329191, 0.837011, -0.437088,
		37.007210, 32.080753, 40.080986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.621025, 31.406700, 39.926964>,  <37.237644, 31.494846, 40.386948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.621025, 31.406700, 39.926964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.797890, 31.738985, 39.791664>,  <36.904011, 31.938356, 39.710487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.797890, 31.738985, 39.791664>,  <36.621025, 31.406700, 39.926964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.797890, 31.738985, 39.791664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120981, -0.428903, -0.895213,
		-0.888737, 0.354911, -0.290146,
		0.442165, 0.830711, -0.338244,
		36.930538, 31.988199, 39.690189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.248920, 31.594090, 39.354389>,  <36.621025, 31.406700, 39.926964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.248920, 31.594090, 39.354389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.603889, 31.771078, 39.302700>,  <36.816872, 31.877272, 39.271687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.603889, 31.771078, 39.302700>,  <36.248920, 31.594090, 39.354389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.603889, 31.771078, 39.302700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131584, -0.511835, -0.848947,
		-0.441773, 0.736373, -0.512437,
		0.887425, 0.442470, -0.129220,
		36.870117, 31.903820, 39.263935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.229473, 31.848919, 38.631191>,  <36.248920, 31.594090, 39.354389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.229473, 31.848919, 38.631191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.616154, 31.830271, 38.731838>,  <36.848164, 31.819082, 38.792225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.616154, 31.830271, 38.731838>,  <36.229473, 31.848919, 38.631191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.616154, 31.830271, 38.731838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214379, -0.389386, -0.895779,
		0.139737, 0.919894, -0.366426,
		0.966703, -0.046619, 0.251617,
		36.906166, 31.816284, 38.807323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.560497, 32.016365, 38.016159>,  <36.229473, 31.848919, 38.631191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.560497, 32.016365, 38.016159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.857143, 31.871536, 38.242046>,  <37.035130, 31.784639, 38.377579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.857143, 31.871536, 38.242046>,  <36.560497, 32.016365, 38.016159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.857143, 31.871536, 38.242046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391458, -0.450052, -0.802630,
		0.544765, 0.816307, -0.192029,
		0.741615, -0.362073, 0.564722,
		37.079628, 31.762915, 38.411465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.242443, 32.221985, 37.723110>,  <36.560497, 32.016365, 38.016159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.242443, 32.221985, 37.723110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.303108, 31.891331, 37.939880>,  <37.339508, 31.692940, 38.069942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.303108, 31.891331, 37.939880>,  <37.242443, 32.221985, 37.723110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.303108, 31.891331, 37.939880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239586, -0.501171, -0.831521,
		0.958956, 0.255947, 0.122040,
		0.151663, -0.826631, 0.541922,
		37.348606, 31.643341, 38.102455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.571995, 31.971577, 37.252686>,  <37.242443, 32.221985, 37.723110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.571995, 31.971577, 37.252686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.485455, 31.647734, 37.470943>,  <37.433529, 31.453428, 37.601898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.485455, 31.647734, 37.470943>,  <37.571995, 31.971577, 37.252686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.485455, 31.647734, 37.470943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036183, -0.551850, -0.833158,
		0.975644, -0.200001, 0.090101,
		-0.216354, -0.809606, 0.545646,
		37.420547, 31.404852, 37.634636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.114952, 31.286978, 37.147644>,  <37.571995, 31.971577, 37.252686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.114952, 31.286978, 37.147644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.719368, 31.289892, 37.206833>,  <37.482018, 31.291641, 37.242348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.719368, 31.289892, 37.206833>,  <38.114952, 31.286978, 37.147644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.719368, 31.289892, 37.206833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138173, -0.405705, -0.903499,
		0.053448, -0.913975, 0.402235,
		-0.988965, 0.007288, 0.147971,
		37.422680, 31.292078, 37.251225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.560802, 31.828913, 37.276005>,  <38.114952, 31.286978, 37.147644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.560802, 31.828913, 37.276005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.820793, 31.541653, 37.176571>,  <38.976788, 31.369297, 37.116909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.820793, 31.541653, 37.176571>,  <38.560802, 31.828913, 37.276005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.820793, 31.541653, 37.176571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352722, -0.004656, 0.935716,
		-0.673141, -0.695874, 0.250281,
		0.649975, -0.718149, -0.248584,
		39.015785, 31.326208, 37.101997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.635139, 31.220478, 37.745747>,  <38.560802, 31.828913, 37.276005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.635139, 31.220478, 37.745747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.967262, 31.277647, 37.530281>,  <39.166538, 31.311949, 37.401001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.967262, 31.277647, 37.530281>,  <38.635139, 31.220478, 37.745747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.967262, 31.277647, 37.530281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536705, 0.055272, 0.841958,
		0.150107, -0.988189, -0.030814,
		0.830311, 0.142922, -0.538663,
		39.216354, 31.320524, 37.368683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.060974, 30.695810, 37.936054>,  <38.635139, 31.220478, 37.745747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.060974, 30.695810, 37.936054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.286678, 30.986885, 37.780067>,  <39.422100, 31.161530, 37.686474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.286678, 30.986885, 37.780067>,  <39.060974, 30.695810, 37.936054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.286678, 30.986885, 37.780067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455324, 0.119726, 0.882239,
		0.688685, -0.675377, -0.263777,
		0.564263, 0.727689, -0.389969,
		39.455956, 31.205193, 37.663078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.668335, 30.552372, 38.169292>,  <39.060974, 30.695810, 37.936054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.668335, 30.552372, 38.169292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.658428, 30.944645, 38.091682>,  <39.652485, 31.180008, 38.045116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.658428, 30.944645, 38.091682>,  <39.668335, 30.552372, 38.169292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.658428, 30.944645, 38.091682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233856, 0.194387, 0.952641,
		0.971956, -0.021780, -0.234153,
		-0.024768, 0.980683, -0.194029,
		39.650997, 31.238850, 38.033474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.350628, 30.854794, 38.406002>,  <39.668335, 30.552372, 38.169292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.350628, 30.854794, 38.406002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.082851, 31.151667, 38.393219>,  <39.922188, 31.329790, 38.385548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.082851, 31.151667, 38.393219>,  <40.350628, 30.854794, 38.406002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.082851, 31.151667, 38.393219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052307, 0.090007, 0.994567,
		0.741025, 0.664128, -0.099075,
		-0.669437, 0.742181, -0.031959,
		39.882019, 31.374321, 38.383633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.762718, 31.429010, 38.685570>,  <40.350628, 30.854794, 38.406002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.762718, 31.429010, 38.685570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.377068, 31.527073, 38.726292>,  <40.145679, 31.585911, 38.750725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.377068, 31.527073, 38.726292>,  <40.762718, 31.429010, 38.685570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.377068, 31.527073, 38.726292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162715, 0.242791, 0.956335,
		0.209734, 0.938590, -0.273971,
		-0.964124, 0.245155, 0.101801,
		40.087830, 31.600620, 38.756832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.838959, 31.948996, 39.198849>,  <40.762718, 31.429010, 38.685570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.838959, 31.948996, 39.198849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.453991, 31.840437, 39.202873>,  <40.223011, 31.775301, 39.205288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.453991, 31.840437, 39.202873>,  <40.838959, 31.948996, 39.198849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.453991, 31.840437, 39.202873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010002, 0.072427, 0.997324,
		-0.271399, 0.959739, -0.072419,
		-0.962415, -0.271396, 0.010057,
		40.165268, 31.759018, 39.205891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.467091, 32.445709, 39.601933>,  <40.838959, 31.948996, 39.198849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.467091, 32.445709, 39.601933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.242413, 32.116417, 39.568958>,  <40.107605, 31.918842, 39.549175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.242413, 32.116417, 39.568958>,  <40.467091, 32.445709, 39.601933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.242413, 32.116417, 39.568958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252301, 0.075544, 0.964696,
		-0.787936, 0.562663, -0.250134,
		-0.561695, -0.823227, -0.082437,
		40.073906, 31.869450, 39.544228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.789337, 32.628105, 39.601017>,  <40.467091, 32.445709, 39.601933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.789337, 32.628105, 39.601017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.781933, 32.247147, 39.722736>,  <39.777489, 32.018570, 39.795769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.781933, 32.247147, 39.722736>,  <39.789337, 32.628105, 39.601017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.781933, 32.247147, 39.722736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479397, 0.275543, 0.833219,
		-0.877403, -0.130455, -0.461678,
		-0.018515, -0.952395, 0.304302,
		39.776379, 31.961428, 39.814026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.155182, 32.580330, 39.980618>,  <39.789337, 32.628105, 39.601017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.155182, 32.580330, 39.980618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.418083, 32.311619, 40.117279>,  <39.575825, 32.150391, 40.199276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.418083, 32.311619, 40.117279>,  <39.155182, 32.580330, 39.980618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.418083, 32.311619, 40.117279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269769, 0.213588, 0.938938,
		-0.703735, -0.709288, -0.040845,
		0.657253, -0.671782, 0.341653,
		39.615261, 32.110085, 40.219776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.821369, 32.451614, 40.618530>,  <39.155182, 32.580330, 39.980618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.821369, 32.451614, 40.618530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.173012, 32.261436, 40.631947>,  <39.383995, 32.147327, 40.639996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.173012, 32.261436, 40.631947>,  <38.821369, 32.451614, 40.618530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.173012, 32.261436, 40.631947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104441, 0.260818, 0.959722,
		-0.465046, -0.840192, 0.278943,
		0.879104, -0.475448, 0.033542,
		39.436745, 32.118801, 40.642010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.812874, 31.835169, 41.049057>,  <38.821369, 32.451614, 40.618530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.812874, 31.835169, 41.049057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.173431, 32.007221, 41.029167>,  <39.389767, 32.110451, 41.017235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.173431, 32.007221, 41.029167>,  <38.812874, 31.835169, 41.049057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.173431, 32.007221, 41.029167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013008, 0.141686, 0.989826,
		0.432798, -0.891579, 0.133310,
		0.901397, 0.430129, -0.049724,
		39.443851, 32.136261, 41.014252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.966717, 31.660751, 41.691708>,  <38.812874, 31.835169, 41.049057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.966717, 31.660751, 41.691708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.230240, 31.930420, 41.558163>,  <39.388355, 32.092220, 41.478035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.230240, 31.930420, 41.558163>,  <38.966717, 31.660751, 41.691708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.230240, 31.930420, 41.558163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223821, 0.248038, 0.942540,
		0.718244, -0.695679, 0.012516,
		0.658810, 0.674172, -0.333859,
		39.427883, 32.132671, 41.458004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.571999, 31.423082, 41.833797>,  <38.966717, 31.660751, 41.691708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.571999, 31.423082, 41.833797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.613167, 31.818521, 41.789822>,  <39.637867, 32.055786, 41.763435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.613167, 31.818521, 41.789822>,  <39.571999, 31.423082, 41.833797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.613167, 31.818521, 41.789822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334910, 0.069629, 0.939674,
		0.936613, -0.133527, -0.323925,
		0.102917, 0.988596, -0.109935,
		39.644043, 32.115101, 41.756840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.180660, 31.624479, 42.192554>,  <39.571999, 31.423082, 41.833797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.180660, 31.624479, 42.192554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.920547, 31.926991, 42.163780>,  <39.764481, 32.108498, 42.146515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.920547, 31.926991, 42.163780>,  <40.180660, 31.624479, 42.192554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.920547, 31.926991, 42.163780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035382, 0.124741, 0.991558,
		0.758869, 0.642246, -0.107876,
		-0.650281, 0.756280, -0.071938,
		39.725464, 32.153873, 42.142200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.431858, 32.033279, 42.654602>,  <40.180660, 31.624479, 42.192554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.431858, 32.033279, 42.654602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.078377, 32.216969, 42.618420>,  <39.866287, 32.327183, 42.596710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.078377, 32.216969, 42.618420>,  <40.431858, 32.033279, 42.654602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.078377, 32.216969, 42.618420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035089, 0.257716, 0.965583,
		0.466733, 0.850114, -0.243858,
		-0.883702, 0.459226, -0.090455,
		39.813267, 32.354736, 42.591282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.595867, 32.704357, 43.054401>,  <40.431858, 32.033279, 42.654602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.595867, 32.704357, 43.054401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.197479, 32.679905, 43.028156>,  <39.958447, 32.665234, 43.012409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.197479, 32.679905, 43.028156>,  <40.595867, 32.704357, 43.054401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.197479, 32.679905, 43.028156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085069, 0.412387, 0.907028,
		-0.028389, 0.908955, -0.415926,
		-0.995970, -0.061132, -0.065616,
		39.898689, 32.661564, 43.008472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.334492, 33.339123, 43.217953>,  <40.595867, 32.704357, 43.054401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.334492, 33.339123, 43.217953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.034916, 33.082031, 43.282436>,  <39.855171, 32.927776, 43.321129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.034916, 33.082031, 43.282436>,  <40.334492, 33.339123, 43.217953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.034916, 33.082031, 43.282436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167835, 0.419351, 0.892175,
		-0.641032, 0.641127, -0.421941,
		-0.748939, -0.642729, 0.161213,
		39.810234, 32.889214, 43.330799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.875992, 33.698948, 43.525848>,  <40.334492, 33.339123, 43.217953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.875992, 33.698948, 43.525848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.713486, 33.342194, 43.605328>,  <39.615982, 33.128139, 43.653015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.713486, 33.342194, 43.605328>,  <39.875992, 33.698948, 43.525848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.713486, 33.342194, 43.605328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398169, 0.368522, 0.840031,
		-0.822440, 0.262161, -0.504841,
		-0.406269, -0.891887, 0.198703,
		39.591606, 33.074627, 43.664940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.323448, 33.922203, 43.888481>,  <39.875992, 33.698948, 43.525848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.323448, 33.922203, 43.888481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.361511, 33.530598, 43.960567>,  <39.384350, 33.295635, 44.003819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.361511, 33.530598, 43.960567>,  <39.323448, 33.922203, 43.888481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.361511, 33.530598, 43.960567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316123, 0.141951, 0.938038,
		-0.943934, -0.146231, -0.295981,
		0.095156, -0.979013, 0.180219,
		39.390057, 33.236893, 44.014633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.652817, 33.607613, 44.075771>,  <39.323448, 33.922203, 43.888481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.652817, 33.607613, 44.075771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.940857, 33.380371, 44.235123>,  <39.113682, 33.244026, 44.330734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.940857, 33.380371, 44.235123>,  <38.652817, 33.607613, 44.075771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.940857, 33.380371, 44.235123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395036, 0.136348, 0.908491,
		-0.570437, -0.811582, -0.126237,
		0.720103, -0.568105, 0.398382,
		39.156887, 33.209938, 44.354637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.384212, 33.271759, 44.698193>,  <38.652817, 33.607613, 44.075771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.384212, 33.271759, 44.698193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.777397, 33.248222, 44.767845>,  <39.013309, 33.234100, 44.809635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.777397, 33.248222, 44.767845>,  <38.384212, 33.271759, 44.698193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.777397, 33.248222, 44.767845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166263, 0.119244, 0.978845,
		-0.078359, -0.991120, 0.107430,
		0.982963, -0.058839, 0.174130,
		39.072285, 33.230572, 44.820084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.400127, 32.790791, 45.312733>,  <38.384212, 33.271759, 44.698193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.400127, 32.790791, 45.312733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.757477, 32.970425, 45.318516>,  <38.971886, 33.078205, 45.321983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.757477, 32.970425, 45.318516>,  <38.400127, 32.790791, 45.312733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.757477, 32.970425, 45.318516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159404, 0.286703, 0.944665,
		0.420092, -0.846241, 0.327719,
		0.893372, 0.449086, 0.014453,
		39.025490, 33.105148, 45.322853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.905926, 32.511211, 45.957909>,  <38.400127, 32.790791, 45.312733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.905926, 32.511211, 45.957909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.021107, 32.877628, 45.846237>,  <39.090214, 33.097481, 45.779232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.021107, 32.877628, 45.846237>,  <38.905926, 32.511211, 45.957909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.021107, 32.877628, 45.846237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007255, 0.293609, 0.955898,
		0.957617, -0.273229, 0.091192,
		0.287954, 0.916046, -0.279182,
		39.107494, 33.152443, 45.762482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.406315, 32.749813, 46.514870>,  <38.905926, 32.511211, 45.957909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.406315, 32.749813, 46.514870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.303776, 33.093403, 46.337578>,  <39.242252, 33.299557, 46.231205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.303776, 33.093403, 46.337578>,  <39.406315, 32.749813, 46.514870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.303776, 33.093403, 46.337578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021102, 0.453468, 0.891023,
		0.966355, 0.237762, -0.098118,
		-0.256345, 0.858974, -0.443228,
		39.226871, 33.351093, 46.204609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.676517, 33.236435, 47.006374>,  <39.406315, 32.749813, 46.514870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.676517, 33.236435, 47.006374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.429562, 33.467335, 46.792606>,  <39.281387, 33.605873, 46.664345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.429562, 33.467335, 46.792606>,  <39.676517, 33.236435, 47.006374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.429562, 33.467335, 46.792606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049508, 0.649504, 0.758745,
		0.785095, 0.494903, -0.372421,
		-0.617394, 0.577248, -0.534424,
		39.244343, 33.640511, 46.632278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.903973, 33.927948, 47.035038>,  <39.676517, 33.236435, 47.006374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.903973, 33.927948, 47.035038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.513134, 33.949829, 46.952785>,  <39.278629, 33.962959, 46.903435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.513134, 33.949829, 46.952785>,  <39.903973, 33.927948, 47.035038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.513134, 33.949829, 46.952785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111432, 0.691708, 0.713529,
		0.181269, 0.720102, -0.669772,
		-0.977100, 0.054707, -0.205628,
		39.220005, 33.966240, 46.891098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.760151, 34.581234, 47.006863>,  <39.903973, 33.927948, 47.035038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.760151, 34.581234, 47.006863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.412960, 34.401344, 47.091118>,  <39.204647, 34.293411, 47.141670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.412960, 34.401344, 47.091118>,  <39.760151, 34.581234, 47.006863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.412960, 34.401344, 47.091118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187906, 0.690035, 0.698959,
		-0.459688, 0.567097, -0.683438,
		-0.867973, -0.449725, 0.210640,
		39.152569, 34.266426, 47.154308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.240601, 35.174351, 47.152512>,  <39.760151, 34.581234, 47.006863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.240601, 35.174351, 47.152512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.106728, 34.836941, 47.320534>,  <39.026402, 34.634495, 47.421349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.106728, 34.836941, 47.320534>,  <39.240601, 35.174351, 47.152512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.106728, 34.836941, 47.320534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198544, 0.498879, 0.843623,
		-0.921176, 0.198949, -0.334445,
		-0.334686, -0.843528, 0.420056,
		39.006321, 34.583881, 47.446552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.656998, 35.335289, 47.460663>,  <39.240601, 35.174351, 47.152512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.656998, 35.335289, 47.460663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.757809, 34.983864, 47.622955>,  <38.818295, 34.773010, 47.720329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.757809, 34.983864, 47.622955>,  <38.656998, 35.335289, 47.460663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.757809, 34.983864, 47.622955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310046, 0.323858, 0.893861,
		-0.916709, -0.351070, -0.190774,
		0.252024, -0.878559, 0.405731,
		38.833416, 34.720295, 47.744675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.193108, 35.211205, 47.922527>,  <38.656998, 35.335289, 47.460663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.193108, 35.211205, 47.922527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.471886, 34.948551, 48.037834>,  <38.639153, 34.790958, 48.107018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.471886, 34.948551, 48.037834>,  <38.193108, 35.211205, 47.922527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.471886, 34.948551, 48.037834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178816, 0.230157, 0.956584,
		-0.694472, -0.718234, 0.042990,
		0.696946, -0.656633, 0.288270,
		38.680969, 34.751560, 48.124313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.886494, 34.792538, 48.393269>,  <38.193108, 35.211205, 47.922527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.886494, 34.792538, 48.393269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.273140, 34.746296, 48.484737>,  <38.505127, 34.718552, 48.539619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.273140, 34.746296, 48.484737>,  <37.886494, 34.792538, 48.393269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.273140, 34.746296, 48.484737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231094, -0.007794, 0.972900,
		-0.110689, -0.993265, -0.034249,
		0.966614, -0.115604, 0.228675,
		38.563126, 34.711613, 48.553341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.971581, 34.259434, 48.894257>,  <37.886494, 34.792538, 48.393269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.971581, 34.259434, 48.894257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.310043, 34.470695, 48.922733>,  <38.513123, 34.597454, 48.939819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.310043, 34.470695, 48.922733>,  <37.971581, 34.259434, 48.894257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.310043, 34.470695, 48.922733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189291, 0.172977, 0.966565,
		0.498183, -0.831342, 0.246341,
		0.846158, 0.528156, 0.071191,
		38.563892, 34.629143, 48.944092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.306984, 33.994007, 49.501503>,  <37.971581, 34.259434, 48.894257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.306984, 33.994007, 49.501503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.503593, 34.336933, 49.440296>,  <38.621559, 34.542690, 49.403572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.503593, 34.336933, 49.440296>,  <38.306984, 33.994007, 49.501503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.503593, 34.336933, 49.440296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013464, 0.183167, 0.982990,
		0.870762, -0.481099, 0.101573,
		0.491520, 0.857318, -0.153017,
		38.651051, 34.594128, 49.394390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.951897, 34.027889, 49.933182>,  <38.306984, 33.994007, 49.501503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.951897, 34.027889, 49.933182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.848263, 34.404369, 49.846447>,  <38.786083, 34.630257, 49.794407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.848263, 34.404369, 49.846447>,  <38.951897, 34.027889, 49.933182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.848263, 34.404369, 49.846447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033469, 0.233119, 0.971872,
		0.965275, 0.244538, -0.091899,
		-0.259083, 0.941199, -0.216840,
		38.770538, 34.686729, 49.781395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.229092, 34.428452, 50.462986>,  <38.951897, 34.027889, 49.933182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.229092, 34.428452, 50.462986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.948364, 34.661808, 50.299473>,  <38.779926, 34.801823, 50.201363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.948364, 34.661808, 50.299473>,  <39.229092, 34.428452, 50.462986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.948364, 34.661808, 50.299473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115051, 0.473492, 0.873252,
		0.703001, 0.659898, -0.265187,
		-0.701821, 0.583387, -0.408787,
		38.737820, 34.836823, 50.176838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.331959, 35.084431, 50.749130>,  <39.229092, 34.428452, 50.462986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.331959, 35.084431, 50.749130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.950222, 35.097267, 50.630333>,  <38.721180, 35.104969, 50.559055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.950222, 35.097267, 50.630333>,  <39.331959, 35.084431, 50.749130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.950222, 35.097267, 50.630333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280657, 0.244187, 0.928227,
		0.102309, 0.969197, -0.224031,
		-0.954340, 0.032091, -0.296994,
		38.663921, 35.106895, 50.541233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.999512, 35.756237, 50.940128>,  <39.331959, 35.084431, 50.749130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.999512, 35.756237, 50.940128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.705673, 35.490540, 50.884769>,  <38.529369, 35.331120, 50.851555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.705673, 35.490540, 50.884769>,  <38.999512, 35.756237, 50.940128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.705673, 35.490540, 50.884769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326958, 0.167815, 0.930019,
		-0.594533, 0.728437, -0.340456,
		-0.734594, -0.664242, -0.138397,
		38.485294, 35.291267, 50.843250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.696468, 36.328255, 50.440891>,  <38.999512, 35.756237, 50.940128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.696468, 36.328255, 50.440891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.576878, 36.709743, 50.428059>,  <38.505123, 36.938637, 50.420357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.576878, 36.709743, 50.428059>,  <38.696468, 36.328255, 50.440891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.576878, 36.709743, 50.428059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207544, 0.032170, -0.977696,
		-0.931418, -0.298967, -0.207557,
		-0.298976, 0.953721, -0.032085,
		38.487186, 36.995861, 50.418434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.148621, 36.432934, 49.946609>,  <38.696468, 36.328255, 50.440891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.148621, 36.432934, 49.946609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.343300, 36.778427, 49.998886>,  <38.460110, 36.985725, 50.030254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.343300, 36.778427, 49.998886>,  <38.148621, 36.432934, 49.946609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.343300, 36.778427, 49.998886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083964, 0.195171, -0.977168,
		-0.869523, 0.464617, 0.167513,
		0.486703, 0.863736, 0.130694,
		38.489311, 37.037548, 50.038094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.721298, 36.986980, 49.712120>,  <38.148621, 36.432934, 49.946609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.721298, 36.986980, 49.712120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.107399, 37.087536, 49.683571>,  <38.339058, 37.147869, 49.666439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.107399, 37.087536, 49.683571>,  <37.721298, 36.986980, 49.712120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.107399, 37.087536, 49.683571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126567, 0.210765, -0.969308,
		-0.228630, 0.944660, 0.235258,
		0.965251, 0.251389, -0.071376,
		38.396973, 37.162952, 49.662159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.716221, 37.397896, 49.146954>,  <37.721298, 36.986980, 49.712120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.716221, 37.397896, 49.146954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.112686, 37.367035, 49.190105>,  <38.350567, 37.348518, 49.215996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.112686, 37.367035, 49.190105>,  <37.716221, 37.397896, 49.146954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.112686, 37.367035, 49.190105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115764, 0.106295, -0.987573,
		0.064726, 0.991337, 0.114288,
		0.991166, -0.077152, 0.107881,
		38.410034, 37.343891, 49.222469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.090378, 38.036827, 48.925842>,  <37.716221, 37.397896, 49.146954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.090378, 38.036827, 48.925842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.344421, 37.728752, 48.902378>,  <38.496849, 37.543907, 48.888298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.344421, 37.728752, 48.902378>,  <38.090378, 38.036827, 48.925842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.344421, 37.728752, 48.902378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042867, 0.040686, -0.998252,
		0.771232, 0.636514, -0.007176,
		0.635110, -0.770191, -0.058664,
		38.534954, 37.497696, 48.884777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.696411, 38.263165, 48.496761>,  <38.090378, 38.036827, 48.925842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.696411, 38.263165, 48.496761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.687088, 37.863884, 48.518879>,  <38.681496, 37.624317, 48.532150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.687088, 37.863884, 48.518879>,  <38.696411, 38.263165, 48.496761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.687088, 37.863884, 48.518879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108000, -0.052476, -0.992765,
		0.993878, -0.029110, -0.106583,
		-0.023307, -0.998198, 0.055298,
		38.680096, 37.564426, 48.535469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.217014, 38.022816, 48.003494>,  <38.696411, 38.263165, 48.496761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.217014, 38.022816, 48.003494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.981884, 37.706608, 48.072243>,  <38.840805, 37.516884, 48.113491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.981884, 37.706608, 48.072243>,  <39.217014, 38.022816, 48.003494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.981884, 37.706608, 48.072243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098203, -0.141148, -0.985106,
		0.803007, -0.595945, 0.005338,
		-0.587822, -0.790523, 0.171867,
		38.805538, 37.469452, 48.123802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.508438, 37.637070, 47.565044>,  <39.217014, 38.022816, 48.003494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.508438, 37.637070, 47.565044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.159477, 37.454521, 47.635056>,  <38.950100, 37.344994, 47.677063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.159477, 37.454521, 47.635056>,  <39.508438, 37.637070, 47.565044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.159477, 37.454521, 47.635056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084503, -0.211880, -0.973636,
		0.481424, -0.864195, 0.146281,
		-0.872405, -0.456370, 0.175031,
		38.897755, 37.317612, 47.687565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.618404, 36.984058, 47.377396>,  <39.508438, 37.637070, 47.565044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.618404, 36.984058, 47.377396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.226395, 37.060146, 47.354153>,  <38.991188, 37.105797, 47.340206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.226395, 37.060146, 47.354153>,  <39.618404, 36.984058, 47.377396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.226395, 37.060146, 47.354153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043541, -0.490251, -0.870493,
		-0.194068, -0.850572, 0.488739,
		-0.980022, 0.190215, -0.058108,
		38.932388, 37.117210, 47.336720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.466324, 36.468975, 46.997803>,  <39.618404, 36.984058, 47.377396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.466324, 36.468975, 46.997803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.124062, 36.675869, 47.004971>,  <38.918705, 36.800003, 47.009274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.124062, 36.675869, 47.004971>,  <39.466324, 36.468975, 46.997803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.124062, 36.675869, 47.004971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257610, -0.395619, -0.881546,
		-0.448876, -0.758917, 0.471759,
		-0.855656, 0.517234, 0.017921,
		38.867363, 36.831039, 47.010345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.863056, 36.110870, 46.740795>,  <39.466324, 36.468975, 46.997803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.863056, 36.110870, 46.740795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.738411, 36.488392, 46.696720>,  <38.663624, 36.714905, 46.670277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.738411, 36.488392, 46.696720>,  <38.863056, 36.110870, 46.740795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.738411, 36.488392, 46.696720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234476, -0.188750, -0.953622,
		-0.920826, -0.271321, 0.280114,
		-0.311609, 0.943800, -0.110187,
		38.644928, 36.771530, 46.663666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.125935, 36.155914, 46.447124>,  <38.863056, 36.110870, 46.740795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.125935, 36.155914, 46.447124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.337742, 36.484161, 46.361145>,  <38.464825, 36.681110, 46.309559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.337742, 36.484161, 46.361145>,  <38.125935, 36.155914, 46.447124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.337742, 36.484161, 46.361145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174282, -0.142744, -0.974295,
		-0.830202, 0.553370, 0.067432,
		0.529519, 0.820613, -0.214949,
		38.496597, 36.730347, 46.296661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.818398, 36.378101, 45.863907>,  <38.125935, 36.155914, 46.447124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.818398, 36.378101, 45.863907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.177166, 36.554771, 45.855293>,  <38.392426, 36.660774, 45.850124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.177166, 36.554771, 45.855293>,  <37.818398, 36.378101, 45.863907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.177166, 36.554771, 45.855293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055485, -0.160716, -0.985440,
		-0.438702, 0.882664, -0.168656,
		0.896918, 0.441672, -0.021532,
		38.446243, 36.687271, 45.848835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.826405, 36.688000, 45.288631>,  <37.818398, 36.378101, 45.863907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.826405, 36.688000, 45.288631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.217506, 36.717331, 45.367233>,  <38.452168, 36.734928, 45.414394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.217506, 36.717331, 45.367233>,  <37.826405, 36.688000, 45.288631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.217506, 36.717331, 45.367233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205529, -0.148134, -0.967375,
		-0.041826, 0.986245, -0.159910,
		0.977757, 0.073327, 0.196506,
		38.510834, 36.739330, 45.426186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.073696, 36.947872, 44.671494>,  <37.826405, 36.688000, 45.288631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.073696, 36.947872, 44.671494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.385036, 36.780846, 44.859028>,  <38.571842, 36.680630, 44.971550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.385036, 36.780846, 44.859028>,  <38.073696, 36.947872, 44.671494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.385036, 36.780846, 44.859028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451142, -0.147341, -0.880205,
		0.436623, 0.896621, 0.073698,
		0.778352, -0.417566, 0.468836,
		38.618542, 36.655575, 44.999680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.681499, 37.179863, 44.287991>,  <38.073696, 36.947872, 44.671494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.681499, 37.179863, 44.287991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.803024, 36.861080, 44.496815>,  <38.875938, 36.669811, 44.622108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.803024, 36.861080, 44.496815>,  <38.681499, 37.179863, 44.287991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.803024, 36.861080, 44.496815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510108, -0.326734, -0.795635,
		0.804665, 0.508036, 0.307268,
		0.303817, -0.796959, 0.522064,
		38.894169, 36.621994, 44.653435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.462910, 37.110638, 44.213627>,  <38.681499, 37.179863, 44.287991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.462910, 37.110638, 44.213627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.322891, 36.743774, 44.289833>,  <39.238880, 36.523659, 44.335556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.322891, 36.743774, 44.289833>,  <39.462910, 37.110638, 44.213627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.322891, 36.743774, 44.289833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592109, -0.374235, -0.713691,
		0.725861, -0.137021, 0.674055,
		-0.350045, -0.917155, 0.190511,
		39.217876, 36.468628, 44.346985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.062077, 36.738148, 43.969349>,  <39.462910, 37.110638, 44.213627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.062077, 36.738148, 43.969349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.770245, 36.466827, 44.004253>,  <39.595146, 36.304035, 44.025196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.770245, 36.466827, 44.004253>,  <40.062077, 36.738148, 43.969349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.770245, 36.466827, 44.004253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364724, -0.493851, -0.789359,
		0.578518, -0.544077, 0.607699,
		-0.729584, -0.678301, 0.087264,
		39.551369, 36.263336, 44.030434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.295055, 36.061382, 44.050957>,  <40.062077, 36.738148, 43.969349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.295055, 36.061382, 44.050957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.929928, 35.986237, 43.905918>,  <39.710854, 35.941151, 43.818897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.929928, 35.986237, 43.905918>,  <40.295055, 36.061382, 44.050957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.929928, 35.986237, 43.905918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405472, -0.522539, -0.750030,
		-0.048568, -0.831661, 0.553155,
		-0.912817, -0.187861, -0.362594,
		39.656082, 35.929878, 43.797138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.278198, 35.222622, 44.003727>,  <40.295055, 36.061382, 44.050957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.278198, 35.222622, 44.003727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.982052, 35.375916, 43.782825>,  <39.804363, 35.467892, 43.650284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.982052, 35.375916, 43.782825>,  <40.278198, 35.222622, 44.003727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.982052, 35.375916, 43.782825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253876, -0.601299, -0.757619,
		-0.622420, -0.701119, 0.347886,
		-0.740365, 0.383238, -0.552258,
		39.759941, 35.490887, 43.617149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.965107, 34.674412, 43.614323>,  <40.278198, 35.222622, 44.003727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.965107, 34.674412, 43.614323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.870117, 35.003750, 43.408134>,  <39.813122, 35.201351, 43.284420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.870117, 35.003750, 43.408134>,  <39.965107, 34.674412, 43.614323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.870117, 35.003750, 43.408134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255828, -0.458911, -0.850854,
		-0.937100, -0.333931, -0.101654,
		-0.237476, 0.823342, -0.515474,
		39.798874, 35.250751, 43.253490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.620502, 34.279266, 43.129753>,  <39.965107, 34.674412, 43.614323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.620502, 34.279266, 43.129753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.674534, 34.658253, 43.013775>,  <39.706951, 34.885643, 42.944187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.674534, 34.658253, 43.013775>,  <39.620502, 34.279266, 43.129753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.674534, 34.658253, 43.013775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320471, -0.318674, -0.892046,
		-0.937579, 0.027574, -0.346679,
		0.135075, 0.947463, -0.289946,
		39.715057, 34.942493, 42.926792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.340771, 34.313381, 42.415180>,  <39.620502, 34.279266, 43.129753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.340771, 34.313381, 42.415180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.594074, 34.620014, 42.457764>,  <39.746056, 34.803993, 42.483315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.594074, 34.620014, 42.457764>,  <39.340771, 34.313381, 42.415180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.594074, 34.620014, 42.457764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336526, -0.148866, -0.929833,
		-0.696944, 0.624653, -0.352246,
		0.633261, 0.766581, 0.106460,
		39.784054, 34.849987, 42.489700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.385910, 34.546272, 41.732777>,  <39.340771, 34.313381, 42.415180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.385910, 34.546272, 41.732777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.707066, 34.684814, 41.926853>,  <39.899757, 34.767941, 42.043297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.707066, 34.684814, 41.926853>,  <39.385910, 34.546272, 41.732777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.707066, 34.684814, 41.926853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561197, -0.164631, -0.811144,
		-0.201068, 0.923544, -0.326554,
		0.802889, 0.346356, 0.485188,
		39.947933, 34.788723, 42.072411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.723194, 35.051537, 41.269325>,  <39.385910, 34.546272, 41.732777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.723194, 35.051537, 41.269325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.974648, 34.881844, 41.530045>,  <40.125519, 34.780029, 41.686478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.974648, 34.881844, 41.530045>,  <39.723194, 35.051537, 41.269325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.974648, 34.881844, 41.530045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612768, -0.245893, -0.751034,
		0.478886, 0.871529, 0.105379,
		0.628636, -0.424233, 0.651800,
		40.163239, 34.754574, 41.725586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.361408, 35.244080, 40.894165>,  <39.723194, 35.051537, 41.269325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.361408, 35.244080, 40.894165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.456490, 34.973274, 41.172779>,  <40.513538, 34.810791, 41.339947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.456490, 34.973274, 41.172779>,  <40.361408, 35.244080, 40.894165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.456490, 34.973274, 41.172779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757516, -0.319648, -0.569205,
		0.608002, 0.662935, 0.436865,
		0.237703, -0.677010, 0.696531,
		40.527802, 34.770172, 41.381737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.028984, 35.339462, 40.967690>,  <40.361408, 35.244080, 40.894165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.028984, 35.339462, 40.967690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.953609, 34.974411, 41.112801>,  <40.908382, 34.755383, 41.199867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.953609, 34.974411, 41.112801>,  <41.028984, 35.339462, 40.967690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.953609, 34.974411, 41.112801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590434, -0.400458, -0.700729,
		0.784779, 0.082149, 0.614308,
		-0.188441, -0.912625, 0.362774,
		40.897076, 34.700623, 41.221634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.734032, 34.925510, 41.013664>,  <41.028984, 35.339462, 40.967690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.734032, 34.925510, 41.013664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.408062, 34.698509, 40.966606>,  <41.212482, 34.562309, 40.938370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.408062, 34.698509, 40.966606>,  <41.734032, 34.925510, 41.013664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.408062, 34.698509, 40.966606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371845, -0.356253, -0.857213,
		0.444562, -0.742308, 0.501343,
		-0.814921, -0.567506, -0.117647,
		41.163586, 34.528259, 40.931313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.984455, 34.366249, 40.643070>,  <41.734032, 34.925510, 41.013664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.984455, 34.366249, 40.643070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.590542, 34.316338, 40.594688>,  <41.354195, 34.286392, 40.565659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.590542, 34.316338, 40.594688>,  <41.984455, 34.366249, 40.643070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.590542, 34.316338, 40.594688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158299, -0.356939, -0.920617,
		0.071700, -0.925757, 0.371260,
		-0.984785, -0.124778, -0.120954,
		41.295105, 34.278904, 40.558403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.814976, 33.618595, 40.477734>,  <41.984455, 34.366249, 40.643070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.814976, 33.618595, 40.477734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.499378, 33.830643, 40.353497>,  <41.310020, 33.957870, 40.278954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.499378, 33.830643, 40.353497>,  <41.814976, 33.618595, 40.477734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.499378, 33.830643, 40.353497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042927, -0.456724, -0.888572,
		-0.612904, -0.714408, 0.337594,
		-0.788990, 0.530118, -0.310595,
		41.262680, 33.989677, 40.260319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.444397, 33.166962, 40.153759>,  <41.814976, 33.618595, 40.477734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.444397, 33.166962, 40.153759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.293362, 33.509197, 40.012115>,  <41.202740, 33.714539, 39.927132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.293362, 33.509197, 40.012115>,  <41.444397, 33.166962, 40.153759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.293362, 33.509197, 40.012115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059734, -0.359112, -0.931381,
		-0.924045, -0.372830, 0.084489,
		-0.377588, 0.855591, -0.354107,
		41.180084, 33.765873, 39.905884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.933147, 33.003719, 39.697136>,  <41.444397, 33.166962, 40.153759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.933147, 33.003719, 39.697136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.043156, 33.370430, 39.581284>,  <41.109161, 33.590458, 39.511772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.043156, 33.370430, 39.581284>,  <40.933147, 33.003719, 39.697136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.043156, 33.370430, 39.581284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015727, -0.296917, -0.954774,
		-0.961310, 0.267138, -0.067241,
		0.275021, 0.916776, -0.289630,
		41.125664, 33.645462, 39.494396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.438530, 33.162205, 39.242596>,  <40.933147, 33.003719, 39.697136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.438530, 33.162205, 39.242596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.763828, 33.388943, 39.189968>,  <40.959007, 33.524986, 39.158394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.763828, 33.388943, 39.189968>,  <40.438530, 33.162205, 39.242596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.763828, 33.388943, 39.189968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010233, -0.239988, -0.970722,
		-0.581824, 0.788094, -0.200971,
		0.813251, 0.566846, -0.131566,
		41.007805, 33.558998, 39.150497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.362385, 33.394142, 38.542866>,  <40.438530, 33.162205, 39.242596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.362385, 33.394142, 38.542866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.742081, 33.504951, 38.602463>,  <40.969898, 33.571438, 38.638222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.742081, 33.504951, 38.602463>,  <40.362385, 33.394142, 38.542866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.742081, 33.504951, 38.602463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121783, 0.113068, -0.986096,
		-0.290014, 0.954189, 0.073593,
		0.949242, 0.277019, 0.148995,
		41.026852, 33.588058, 38.647160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.419838, 34.013195, 38.197887>,  <40.362385, 33.394142, 38.542866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.419838, 34.013195, 38.197887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.790024, 33.867172, 38.238396>,  <41.012135, 33.779560, 38.262699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.790024, 33.867172, 38.238396>,  <40.419838, 34.013195, 38.197887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.790024, 33.867172, 38.238396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187146, 0.208116, -0.960034,
		0.329387, 0.907427, 0.260921,
		0.925462, -0.365053, 0.101271,
		41.067661, 33.757656, 38.268776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.912617, 34.502876, 37.988522>,  <40.419838, 34.013195, 38.197887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.912617, 34.502876, 37.988522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.102577, 34.152962, 37.950111>,  <41.216553, 33.943012, 37.927067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.102577, 34.152962, 37.950111>,  <40.912617, 34.502876, 37.988522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.102577, 34.152962, 37.950111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163569, 0.194953, -0.967077,
		0.864703, 0.443563, 0.235671,
		0.474904, -0.874783, -0.096024,
		41.245049, 33.890526, 37.921303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.401215, 34.626293, 37.632217>,  <40.912617, 34.502876, 37.988522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.401215, 34.626293, 37.632217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.411884, 34.230289, 37.576839>,  <41.418285, 33.992687, 37.543613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.411884, 34.230289, 37.576839>,  <41.401215, 34.626293, 37.632217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.411884, 34.230289, 37.576839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503322, 0.132962, -0.853808,
		0.863687, -0.046904, 0.501842,
		0.026678, -0.990011, -0.138445,
		41.419888, 33.933285, 37.535305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.119125, 34.528450, 37.459660>,  <41.401215, 34.626293, 37.632217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.119125, 34.528450, 37.459660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.887157, 34.221794, 37.349419>,  <41.747974, 34.037800, 37.283272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.887157, 34.221794, 37.349419>,  <42.119125, 34.528450, 37.459660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.887157, 34.221794, 37.349419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403233, 0.023838, -0.914787,
		0.707879, -0.641639, 0.295309,
		-0.579923, -0.766636, -0.275605,
		41.713181, 33.991802, 37.266739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.679287, 33.937222, 37.256584>,  <42.119125, 34.528450, 37.459660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.679287, 33.937222, 37.256584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.317799, 33.855694, 37.105984>,  <42.100906, 33.806778, 37.015625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.317799, 33.855694, 37.105984>,  <42.679287, 33.937222, 37.256584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.317799, 33.855694, 37.105984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291635, 0.350759, -0.889897,
		0.313435, -0.914017, -0.257548,
		-0.903719, -0.203815, -0.376499,
		42.046684, 33.794548, 36.993034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.771450, 33.755756, 36.602306>,  <42.679287, 33.937222, 37.256584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.771450, 33.755756, 36.602306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.385849, 33.861012, 36.587063>,  <42.154488, 33.924164, 36.577919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.385849, 33.861012, 36.587063>,  <42.771450, 33.755756, 36.602306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.385849, 33.861012, 36.587063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147674, 0.410704, -0.899730,
		-0.221107, -0.872971, -0.434779,
		-0.964004, 0.263142, -0.038106,
		42.096649, 33.939953, 36.575630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.426476, 33.405270, 35.979050>,  <42.771450, 33.755756, 36.602306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.426476, 33.405270, 35.979050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.246605, 33.747162, 36.082767>,  <42.138683, 33.952297, 36.144997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.246605, 33.747162, 36.082767>,  <42.426476, 33.405270, 35.979050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.246605, 33.747162, 36.082767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252513, 0.400109, -0.880994,
		-0.856756, -0.330684, -0.395748,
		-0.449673, 0.854728, 0.259294,
		42.111702, 34.003582, 36.160557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.146210, 33.720661, 35.434059>,  <42.426476, 33.405270, 35.979050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.146210, 33.720661, 35.434059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.197605, 34.018135, 35.696487>,  <42.228443, 34.196617, 35.853943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.197605, 34.018135, 35.696487>,  <42.146210, 33.720661, 35.434059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.197605, 34.018135, 35.696487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315725, 0.596459, -0.737940,
		-0.940111, 0.301954, -0.158162,
		0.128487, 0.743681, 0.656072,
		42.236153, 34.241238, 35.893311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.790665, 34.336563, 35.204567>,  <42.146210, 33.720661, 35.434059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.790665, 34.336563, 35.204567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.092205, 34.456860, 35.438236>,  <42.273129, 34.529037, 35.578438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.092205, 34.456860, 35.438236>,  <41.790665, 34.336563, 35.204567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.092205, 34.456860, 35.438236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273014, 0.665333, -0.694835,
		-0.597641, 0.683290, 0.419453,
		0.753849, 0.300746, 0.584177,
		42.318359, 34.547085, 35.613491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.831833, 35.076580, 35.054333>,  <41.790665, 34.336563, 35.204567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.831833, 35.076580, 35.054333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.169254, 34.930763, 35.212082>,  <42.371708, 34.843273, 35.306732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.169254, 34.930763, 35.212082>,  <41.831833, 35.076580, 35.054333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.169254, 34.930763, 35.212082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535929, 0.618798, -0.574343,
		-0.034664, 0.695843, 0.717357,
		0.843551, -0.364543, 0.394373,
		42.422321, 34.821400, 35.330395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.218948, 35.683655, 35.226887>,  <41.831833, 35.076580, 35.054333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.218948, 35.683655, 35.226887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.454170, 35.365826, 35.166420>,  <42.595303, 35.175129, 35.130138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.454170, 35.365826, 35.166420>,  <42.218948, 35.683655, 35.226887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.454170, 35.365826, 35.166420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592611, 0.550462, -0.588051,
		0.550462, 0.256219, 0.794571,
		0.588051, -0.794571, -0.151170,
		42.630585, 35.127453, 35.121071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.345478, 35.213417, 35.860649>,  <42.218948, 35.683655, 35.226887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.345478, 35.213417, 35.860649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.240463, 35.029762, 36.200123>,  <42.177456, 34.919571, 36.403809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.240463, 35.029762, 36.200123>,  <42.345478, 35.213417, 35.860649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.240463, 35.029762, 36.200123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665627, 0.550592, 0.503776,
		-0.698582, 0.697168, 0.161063,
		-0.262536, -0.459136, 0.848687,
		42.161701, 34.892021, 36.454727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.363209, 35.620510, 36.543110>,  <42.345478, 35.213417, 35.860649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.363209, 35.620510, 36.543110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.121258, 35.928761, 36.462849>,  <41.976089, 36.113712, 36.414692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.121258, 35.928761, 36.462849>,  <42.363209, 35.620510, 36.543110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.121258, 35.928761, 36.462849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764039, 0.632645, 0.126507,
		0.224434, -0.076789, -0.971459,
		-0.604874, 0.770626, -0.200657,
		41.939796, 36.159946, 36.402653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.652271, 35.994358, 36.074780>,  <42.363209, 35.620510, 36.543110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.652271, 35.994358, 36.074780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.410110, 36.237984, 36.279732>,  <42.264816, 36.384159, 36.402702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.410110, 36.237984, 36.279732>,  <42.652271, 35.994358, 36.074780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.410110, 36.237984, 36.279732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752395, 0.647907, 0.118823,
		-0.259602, 0.457445, -0.850500,
		-0.605400, 0.609066, 0.512377,
		42.228489, 36.420704, 36.433445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.345600, 35.569931, 36.149029>,  <42.652271, 35.994358, 36.074780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.345600, 35.569931, 36.149029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.600979, 35.786324, 35.930042>,  <43.754208, 35.916161, 35.798649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.600979, 35.786324, 35.930042>,  <43.345600, 35.569931, 36.149029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.600979, 35.786324, 35.930042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159643, 0.602755, 0.781793,
		0.752926, -0.586534, 0.298463,
		0.638448, 0.540985, -0.547466,
		43.792515, 35.948620, 35.765804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.697102, 35.835049, 36.590027>,  <43.345600, 35.569931, 36.149029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.697102, 35.835049, 36.590027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.769398, 36.088585, 36.289207>,  <43.812775, 36.240707, 36.108715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.769398, 36.088585, 36.289207>,  <43.697102, 35.835049, 36.590027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.769398, 36.088585, 36.289207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154807, 0.736781, 0.658171,
		0.971271, -0.235380, 0.035044,
		0.180740, 0.633838, -0.752052,
		43.823620, 36.278736, 36.063591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.264553, 36.257515, 36.782909>,  <43.697102, 35.835049, 36.590027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.264553, 36.257515, 36.782909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.059025, 36.474266, 36.516869>,  <43.935707, 36.604317, 36.357243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.059025, 36.474266, 36.516869>,  <44.264553, 36.257515, 36.782909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.059025, 36.474266, 36.516869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054272, 0.794247, 0.605167,
		0.856181, 0.274849, -0.437507,
		-0.513818, 0.541876, -0.665102,
		43.904881, 36.636829, 36.317337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.715263, 36.826336, 36.593731>,  <44.264553, 36.257515, 36.782909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.715263, 36.826336, 36.593731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.351990, 36.951721, 36.482780>,  <44.134026, 37.026951, 36.416210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.351990, 36.951721, 36.482780>,  <44.715263, 36.826336, 36.593731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.351990, 36.951721, 36.482780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137183, 0.848991, 0.510289,
		0.395443, 0.425388, -0.814046,
		-0.908188, 0.313464, -0.277371,
		44.079533, 37.045761, 36.399570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.805290, 37.591644, 36.486732>,  <44.715263, 36.826336, 36.593731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.805290, 37.591644, 36.486732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.408123, 37.552929, 36.514286>,  <44.169823, 37.529697, 36.530819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.408123, 37.552929, 36.514286>,  <44.805290, 37.591644, 36.486732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.408123, 37.552929, 36.514286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041321, 0.824994, 0.563630,
		-0.111380, 0.556792, -0.823151,
		-0.992918, -0.096791, 0.068880,
		44.110249, 37.523891, 36.534950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.502438, 38.348751, 36.430965>,  <44.805290, 37.591644, 36.486732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.502438, 38.348751, 36.430965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.213329, 38.119751, 36.585808>,  <44.039864, 37.982349, 36.678715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.213329, 38.119751, 36.585808>,  <44.502438, 38.348751, 36.430965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.213329, 38.119751, 36.585808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061939, 0.611543, 0.788783,
		-0.688310, 0.546130, -0.477463,
		-0.722767, -0.572501, 0.387105,
		43.996498, 37.948002, 36.701939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.873260, 38.676304, 36.335552>,  <44.502438, 38.348751, 36.430965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.873260, 38.676304, 36.335552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.794170, 38.433662, 36.643562>,  <43.746716, 38.288078, 36.828369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.794170, 38.433662, 36.643562>,  <43.873260, 38.676304, 36.335552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.794170, 38.433662, 36.643562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222652, 0.792790, 0.567371,
		-0.954637, -0.059265, -0.291814,
		-0.197723, -0.606607, 0.770022,
		43.734852, 38.251682, 36.874569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.458847, 39.157997, 36.821938>,  <43.873260, 38.676304, 36.335552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.458847, 39.157997, 36.821938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.606781, 38.859436, 37.043243>,  <43.695541, 38.680298, 37.176029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.606781, 38.859436, 37.043243>,  <43.458847, 39.157997, 36.821938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.606781, 38.859436, 37.043243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008400, 0.592780, 0.805321,
		-0.929059, -0.302484, 0.212962,
		0.369836, -0.746402, 0.553268,
		43.717731, 38.635517, 37.209225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.205349, 39.396500, 37.330765>,  <43.458847, 39.157997, 36.821938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.205349, 39.396500, 37.330765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.472069, 39.119102, 37.439903>,  <43.632099, 38.952663, 37.505386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.472069, 39.119102, 37.439903>,  <43.205349, 39.396500, 37.330765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.472069, 39.119102, 37.439903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168726, 0.497101, 0.851130,
		-0.725885, -0.521497, 0.448478,
		0.666801, -0.693492, 0.272848,
		43.672108, 38.911057, 37.521759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.002987, 39.113873, 38.022976>,  <43.205349, 39.396500, 37.330765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.002987, 39.113873, 38.022976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.399155, 39.067318, 37.993271>,  <43.636856, 39.039387, 37.975449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.399155, 39.067318, 37.993271>,  <43.002987, 39.113873, 38.022976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.399155, 39.067318, 37.993271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120209, 0.462431, 0.878469,
		-0.067899, -0.878983, 0.471993,
		0.990424, -0.116385, -0.074263,
		43.696281, 39.032402, 37.970993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.167484, 38.739765, 38.509968>,  <43.002987, 39.113873, 38.022976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.167484, 38.739765, 38.509968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.495186, 38.954987, 38.430656>,  <43.691807, 39.084118, 38.383068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.495186, 38.954987, 38.430656>,  <43.167484, 38.739765, 38.509968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.495186, 38.954987, 38.430656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140916, 0.146270, 0.979157,
		0.555841, -0.830122, 0.044012,
		0.819258, 0.538054, -0.198280,
		43.740963, 39.116402, 38.371174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.610188, 38.509563, 39.058357>,  <43.167484, 38.739765, 38.509968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.610188, 38.509563, 39.058357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.812809, 38.801430, 38.874622>,  <43.934383, 38.976551, 38.764381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.812809, 38.801430, 38.874622>,  <43.610188, 38.509563, 39.058357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.812809, 38.801430, 38.874622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431592, 0.246610, 0.867705,
		0.746411, -0.637787, -0.189995,
		0.506556, 0.729665, -0.459336,
		43.964775, 39.020329, 38.736820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.258945, 38.441135, 39.070805>,  <43.610188, 38.509563, 39.058357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.258945, 38.441135, 39.070805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.243114, 38.838737, 39.030045>,  <44.233616, 39.077301, 39.005589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.243114, 38.838737, 39.030045>,  <44.258945, 38.441135, 39.070805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.243114, 38.838737, 39.030045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334976, 0.109278, 0.935868,
		0.941395, 0.002903, -0.337293,
		-0.039576, 0.994007, -0.101901,
		44.231243, 39.136940, 38.999474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.869690, 38.629696, 39.424633>,  <44.258945, 38.441135, 39.070805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.869690, 38.629696, 39.424633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.646461, 38.959457, 39.386875>,  <44.512524, 39.157314, 39.364220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.646461, 38.959457, 39.386875>,  <44.869690, 38.629696, 39.424633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.646461, 38.959457, 39.386875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435780, 0.387987, 0.812134,
		0.706153, 0.412092, -0.575785,
		-0.558071, 0.824406, -0.094396,
		44.479038, 39.206779, 39.358555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.238811, 39.135170, 39.613983>,  <44.869690, 38.629696, 39.424633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.238811, 39.135170, 39.613983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.885166, 39.316982, 39.657341>,  <44.672977, 39.426067, 39.683353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.885166, 39.316982, 39.657341>,  <45.238811, 39.135170, 39.613983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.885166, 39.316982, 39.657341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336294, 0.457883, 0.822951,
		0.324423, 0.764034, -0.557676,
		-0.884113, 0.454527, 0.108393,
		44.619934, 39.453339, 39.689857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.438084, 39.811871, 39.864796>,  <45.238811, 39.135170, 39.613983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.438084, 39.811871, 39.864796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.051456, 39.783180, 39.963264>,  <44.819481, 39.765965, 40.022346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.051456, 39.783180, 39.963264>,  <45.438084, 39.811871, 39.864796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.051456, 39.783180, 39.963264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191569, 0.436153, 0.879245,
		-0.170436, 0.897009, -0.407830,
		-0.966567, -0.071727, 0.246176,
		44.761486, 39.761662, 40.037117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.288254, 40.445465, 40.077927>,  <45.438084, 39.811871, 39.864796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.288254, 40.445465, 40.077927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.030380, 40.179298, 40.228451>,  <44.875656, 40.019596, 40.318764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.030380, 40.179298, 40.228451>,  <45.288254, 40.445465, 40.077927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.030380, 40.179298, 40.228451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023382, 0.509190, 0.860337,
		-0.764095, 0.545843, -0.343823,
		-0.644680, -0.665418, 0.376306,
		44.836975, 39.979671, 40.341343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.942902, 40.832657, 40.562420>,  <45.288254, 40.445465, 40.077927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.942902, 40.832657, 40.562420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.855701, 40.456955, 40.668457>,  <44.803383, 40.231533, 40.732079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.855701, 40.456955, 40.668457>,  <44.942902, 40.832657, 40.562420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.855701, 40.456955, 40.668457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025717, 0.266006, 0.963628,
		-0.975609, 0.216890, -0.033835,
		-0.218002, -0.939255, 0.265096,
		44.790302, 40.175179, 40.747986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.371372, 40.753315, 41.084545>,  <44.942902, 40.832657, 40.562420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.371372, 40.753315, 41.084545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.579891, 40.416367, 41.139187>,  <44.705002, 40.214199, 41.171974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.579891, 40.416367, 41.139187>,  <44.371372, 40.753315, 41.084545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.579891, 40.416367, 41.139187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210469, 0.282041, 0.936032,
		-0.827016, -0.459197, 0.324320,
		0.521295, -0.842372, 0.136606,
		44.736279, 40.163654, 41.180168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.272026, 40.587608, 41.796101>,  <44.371372, 40.753315, 41.084545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.272026, 40.587608, 41.796101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.584454, 40.353573, 41.708824>,  <44.771912, 40.213154, 41.656460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.584454, 40.353573, 41.708824>,  <44.272026, 40.587608, 41.796101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.584454, 40.353573, 41.708824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354593, 0.127966, 0.926223,
		-0.514000, -0.800811, 0.307418,
		0.781068, -0.585087, -0.218188,
		44.818775, 40.178047, 41.643368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.324787, 40.146748, 42.417805>,  <44.272026, 40.587608, 41.796101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.324787, 40.146748, 42.417805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.675716, 40.114418, 42.228584>,  <44.886272, 40.095020, 42.115051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.675716, 40.114418, 42.228584>,  <44.324787, 40.146748, 42.417805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.675716, 40.114418, 42.228584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476572, 0.030769, 0.878597,
		-0.056458, -0.996253, 0.065513,
		0.877321, -0.080825, -0.473050,
		44.938911, 40.090172, 42.086670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.651592, 39.878136, 42.953499>,  <44.324787, 40.146748, 42.417805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.651592, 39.878136, 42.953499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.937901, 39.957954, 42.685814>,  <45.109688, 40.005848, 42.525204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.937901, 39.957954, 42.685814>,  <44.651592, 39.878136, 42.953499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.937901, 39.957954, 42.685814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697171, -0.259408, 0.668327,
		-0.040234, -0.944927, -0.324798,
		0.715775, 0.199550, -0.669213,
		45.152634, 40.017818, 42.485050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.094776, 40.082924, 43.427177>,  <44.651592, 39.878136, 42.953499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.094776, 40.082924, 43.427177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.122772, 40.235119, 43.796032>,  <44.139568, 40.326435, 44.017345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.122772, 40.235119, 43.796032>,  <44.094776, 40.082924, 43.427177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.122772, 40.235119, 43.796032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.964610, 0.261394, -0.034640,
		-0.254220, -0.887075, 0.385318,
		0.069991, 0.380488, 0.922133,
		44.143768, 40.349266, 44.072674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.630524, 39.787430, 43.922600>,  <44.094776, 40.082924, 43.427177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.630524, 39.787430, 43.922600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.707794, 40.163731, 44.034073>,  <43.754158, 40.389511, 44.100956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.707794, 40.163731, 44.034073>,  <43.630524, 39.787430, 43.922600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.707794, 40.163731, 44.034073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.980427, 0.174072, 0.091990,
		0.038030, -0.290997, 0.955968,
		0.193176, 0.940755, 0.278681,
		43.765747, 40.445957, 44.117676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.251934, 39.946663, 44.551357>,  <43.630524, 39.787430, 43.922600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.251934, 39.946663, 44.551357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.330303, 40.272602, 44.333134>,  <43.377323, 40.468166, 44.202198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.330303, 40.272602, 44.333134>,  <43.251934, 39.946663, 44.551357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.330303, 40.272602, 44.333134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.964079, 0.261809, 0.044813,
		0.179349, 0.517186, 0.836871,
		0.195924, 0.814846, -0.545563,
		43.389080, 40.517056, 44.169464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.623295, 39.844341, 45.161469>,  <43.251934, 39.946663, 44.551357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.623295, 39.844341, 45.161469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.927788, 39.591557, 45.103291>,  <44.110485, 39.439888, 45.068386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.927788, 39.591557, 45.103291>,  <43.623295, 39.844341, 45.161469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.927788, 39.591557, 45.103291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121413, -0.081420, 0.989257,
		-0.637011, -0.770714, 0.014749,
		0.761233, -0.631958, -0.145440,
		44.156158, 39.401970, 45.059658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.073559, 39.495602, 44.576050>,  <43.623295, 39.844341, 45.161469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.073559, 39.495602, 44.576050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.993679, 39.143696, 44.403481>,  <43.945751, 38.932552, 44.299938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.993679, 39.143696, 44.403481>,  <44.073559, 39.495602, 44.576050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.993679, 39.143696, 44.403481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749898, -0.420622, 0.510616,
		-0.630691, -0.221557, 0.743734,
		-0.199700, -0.879767, -0.431428,
		43.933769, 38.879765, 44.274052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.601730, 38.929672, 44.558674>,  <44.073559, 39.495602, 44.576050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.601730, 38.929672, 44.558674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.734341, 38.903282, 44.935127>,  <44.813908, 38.887447, 45.160999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.734341, 38.903282, 44.935127>,  <44.601730, 38.929672, 44.558674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.734341, 38.903282, 44.935127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932916, -0.125694, -0.337446,
		0.140557, 0.989873, 0.019875,
		0.331531, -0.065972, 0.941135,
		44.833801, 38.883492, 45.217468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.051201, 38.399109, 44.815887>,  <44.601730, 38.929672, 44.558674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.051201, 38.399109, 44.815887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.833431, 38.064526, 44.840984>,  <44.702770, 37.863773, 44.856045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.833431, 38.064526, 44.840984>,  <45.051201, 38.399109, 44.815887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.833431, 38.064526, 44.840984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551192, -0.413132, -0.724920,
		0.632290, -0.360078, 0.685969,
		-0.544423, -0.836461, 0.062747,
		44.670105, 37.813587, 44.859810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.506054, 37.683811, 44.650009>,  <45.051201, 38.399109, 44.815887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.506054, 37.683811, 44.650009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.125103, 37.666172, 44.529320>,  <44.896534, 37.655590, 44.456905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.125103, 37.666172, 44.529320>,  <45.506054, 37.683811, 44.650009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.125103, 37.666172, 44.529320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290573, -0.431284, -0.854144,
		-0.092464, -0.901138, 0.423557,
		-0.952375, -0.044097, -0.301724,
		44.839390, 37.652943, 44.438801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.470146, 37.097591, 44.172852>,  <45.506054, 37.683811, 44.650009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.470146, 37.097591, 44.172852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.136417, 37.308762, 44.109360>,  <44.936180, 37.435463, 44.071266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.136417, 37.308762, 44.109360>,  <45.470146, 37.097591, 44.172852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.136417, 37.308762, 44.109360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157279, -0.048008, -0.986387,
		-0.528363, -0.847930, -0.042978,
		-0.834323, 0.527930, -0.158728,
		44.886120, 37.467140, 44.061741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.856716, 36.723789, 43.888226>,  <45.470146, 37.097591, 44.172852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.856716, 36.723789, 43.888226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.856010, 37.106438, 43.771698>,  <44.855587, 37.336029, 43.701782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.856010, 37.106438, 43.771698>,  <44.856716, 36.723789, 43.888226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.856010, 37.106438, 43.771698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122816, -0.288908, -0.949446,
		-0.992428, -0.037452, -0.116979,
		-0.001763, 0.956624, -0.291321,
		44.855480, 37.393425, 43.684303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.523041, 36.671669, 43.326305>,  <44.856716, 36.723789, 43.888226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.523041, 36.671669, 43.326305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.689144, 37.030224, 43.264286>,  <44.788807, 37.245358, 43.227074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.689144, 37.030224, 43.264286>,  <44.523041, 36.671669, 43.326305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.689144, 37.030224, 43.264286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177361, -0.246950, -0.952659,
		-0.892244, 0.368104, -0.261534,
		0.415263, 0.896390, -0.155052,
		44.813725, 37.299141, 43.217770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.218395, 36.930813, 42.677326>,  <44.523041, 36.671669, 43.326305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.218395, 36.930813, 42.677326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.542622, 37.163998, 42.699722>,  <44.737156, 37.303909, 42.713161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.542622, 37.163998, 42.699722>,  <44.218395, 36.930813, 42.677326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.542622, 37.163998, 42.699722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180711, -0.158027, -0.970758,
		-0.557070, 0.796981, -0.233440,
		0.810566, 0.582965, 0.055991,
		44.785789, 37.338886, 42.716518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.207809, 37.469936, 42.101074>,  <44.218395, 36.930813, 42.677326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.207809, 37.469936, 42.101074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.594616, 37.430813, 42.195148>,  <44.826698, 37.407337, 42.251595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.594616, 37.430813, 42.195148>,  <44.207809, 37.469936, 42.101074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.594616, 37.430813, 42.195148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241195, 0.054819, -0.968927,
		0.081877, 0.993694, 0.076602,
		0.967016, -0.097809, 0.235186,
		44.884720, 37.401470, 42.265705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.655609, 38.100666, 41.877281>,  <44.207809, 37.469936, 42.101074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.655609, 38.100666, 41.877281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.895950, 37.781757, 41.900402>,  <45.040154, 37.590412, 41.914276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.895950, 37.781757, 41.900402>,  <44.655609, 38.100666, 41.877281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.895950, 37.781757, 41.900402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325258, 0.177784, -0.928763,
		0.730197, 0.576848, 0.366140,
		0.600848, -0.797270, 0.057807,
		45.076206, 37.542576, 41.917744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.177589, 38.280087, 41.476875>,  <44.655609, 38.100666, 41.877281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.177589, 38.280087, 41.476875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.251171, 37.890247, 41.527969>,  <45.295319, 37.656342, 41.558624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.251171, 37.890247, 41.527969>,  <45.177589, 38.280087, 41.476875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.251171, 37.890247, 41.527969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424656, -0.038397, -0.904540,
		0.886470, 0.220635, 0.406807,
		0.183954, -0.974600, 0.127732,
		45.306358, 37.597866, 41.566288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.868446, 38.273472, 41.359085>,  <45.177589, 38.280087, 41.476875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.868446, 38.273472, 41.359085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.707623, 37.912952, 41.294567>,  <45.611126, 37.696640, 41.255856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.707623, 37.912952, 41.294567>,  <45.868446, 38.273472, 41.359085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.707623, 37.912952, 41.294567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461642, -0.047419, -0.885798,
		0.790716, -0.430605, 0.435141,
		-0.402063, -0.901294, -0.161290,
		45.587002, 37.642563, 41.246181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.374680, 38.030205, 41.009922>,  <45.868446, 38.273472, 41.359085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.374680, 38.030205, 41.009922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.085594, 37.766296, 40.927574>,  <45.912144, 37.607952, 40.878166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.085594, 37.766296, 40.927574>,  <46.374680, 38.030205, 41.009922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.085594, 37.766296, 40.927574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296132, -0.026468, -0.954780,
		0.624489, -0.750999, 0.214509,
		-0.722717, -0.659773, -0.205866,
		45.868778, 37.568363, 40.865814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.629333, 37.421555, 40.613430>,  <46.374680, 38.030205, 41.009922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.629333, 37.421555, 40.613430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.241047, 37.366856, 40.534424>,  <46.008076, 37.334034, 40.487019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.241047, 37.366856, 40.534424>,  <46.629333, 37.421555, 40.613430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.241047, 37.366856, 40.534424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230043, -0.292192, -0.928280,
		0.069232, -0.946532, 0.315094,
		-0.970715, -0.136752, -0.197514,
		45.949833, 37.325829, 40.475170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.679447, 36.799614, 40.282616>,  <46.629333, 37.421555, 40.613430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.679447, 36.799614, 40.282616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.352722, 37.011410, 40.191006>,  <46.156685, 37.138489, 40.136040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.352722, 37.011410, 40.191006>,  <46.679447, 36.799614, 40.282616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.352722, 37.011410, 40.191006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074697, -0.296578, -0.952083,
		-0.572042, -0.794784, 0.202699,
		-0.816816, 0.529490, -0.229023,
		46.107677, 37.170258, 40.122299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.205437, 36.347557, 39.873692>,  <46.679447, 36.799614, 40.282616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.205437, 36.347557, 39.873692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.077736, 36.718521, 39.795731>,  <46.001118, 36.941101, 39.748955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.077736, 36.718521, 39.795731>,  <46.205437, 36.347557, 39.873692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.077736, 36.718521, 39.795731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048253, -0.189487, -0.980697,
		-0.946441, -0.322491, 0.015743,
		-0.319249, 0.927412, -0.194900,
		45.981960, 36.996746, 39.737259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.681900, 36.305775, 39.470657>,  <46.205437, 36.347557, 39.873692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.681900, 36.305775, 39.470657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.801304, 36.679672, 39.393574>,  <45.872948, 36.904011, 39.347324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.801304, 36.679672, 39.393574>,  <45.681900, 36.305775, 39.470657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.801304, 36.679672, 39.393574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015154, -0.197252, -0.980236,
		-0.954286, 0.295530, -0.044716,
		0.298510, 0.934748, -0.192713,
		45.890858, 36.960098, 39.335758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.248650, 36.500179, 38.784096>,  <45.681900, 36.305775, 39.470657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.248650, 36.500179, 38.784096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.552654, 36.758709, 38.811371>,  <45.735058, 36.913826, 38.827736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.552654, 36.758709, 38.811371>,  <45.248650, 36.500179, 38.784096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.552654, 36.758709, 38.811371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053778, 0.042012, -0.997669,
		-0.647685, 0.761903, -0.002829,
		0.760008, 0.646327, 0.068184,
		45.780655, 36.952606, 38.831825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.122978, 37.109386, 38.253826>,  <45.248650, 36.500179, 38.784096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.122978, 37.109386, 38.253826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.506069, 37.064297, 38.359695>,  <45.735924, 37.037243, 38.423218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.506069, 37.064297, 38.359695>,  <45.122978, 37.109386, 38.253826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.506069, 37.064297, 38.359695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281602, 0.179278, -0.942635,
		0.058805, 0.977319, 0.203442,
		0.957728, -0.112722, 0.264673,
		45.793388, 37.030479, 38.439098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.477718, 37.505394, 37.734806>,  <45.122978, 37.109386, 38.253826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.477718, 37.505394, 37.734806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.764744, 37.270729, 37.884968>,  <45.936958, 37.129929, 37.975063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.764744, 37.270729, 37.884968>,  <45.477718, 37.505394, 37.734806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.764744, 37.270729, 37.884968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453409, -0.015674, -0.891165,
		0.528698, 0.809679, 0.254751,
		0.717564, -0.586663, 0.375403,
		45.980015, 37.094730, 37.997589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.085548, 37.667660, 37.337780>,  <45.477718, 37.505394, 37.734806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.085548, 37.667660, 37.337780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.207348, 37.335583, 37.524570>,  <46.280430, 37.136337, 37.636642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.207348, 37.335583, 37.524570>,  <46.085548, 37.667660, 37.337780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.207348, 37.335583, 37.524570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583431, -0.224965, -0.780384,
		0.752919, 0.510075, 0.415855,
		0.304502, -0.830189, 0.466974,
		46.298698, 37.086525, 37.664661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.818336, 37.608250, 37.298183>,  <46.085548, 37.667660, 37.337780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.818336, 37.608250, 37.298183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.672981, 37.242699, 37.370594>,  <46.585766, 37.023369, 37.414040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.672981, 37.242699, 37.370594>,  <46.818336, 37.608250, 37.298183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.672981, 37.242699, 37.370594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576690, -0.373264, -0.726706,
		0.731693, -0.159681, 0.662666,
		-0.363391, -0.913880, 0.181028,
		46.563965, 36.968536, 37.424904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.397877, 37.105465, 37.146740>,  <46.818336, 37.608250, 37.298183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.397877, 37.105465, 37.146740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.075783, 36.868946, 37.129009>,  <46.882526, 36.727036, 37.118370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.075783, 36.868946, 37.129009>,  <47.397877, 37.105465, 37.146740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.075783, 36.868946, 37.129009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501249, -0.638867, -0.583608,
		0.316766, -0.492160, 0.810825,
		-0.805238, -0.591293, -0.044324,
		46.834213, 36.691559, 37.115711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.660683, 36.450165, 37.100018>,  <47.397877, 37.105465, 37.146740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.660683, 36.450165, 37.100018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.285538, 36.375633, 36.982925>,  <47.060452, 36.330914, 36.912670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.285538, 36.375633, 36.982925>,  <47.660683, 36.450165, 37.100018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.285538, 36.375633, 36.982925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345810, -0.432057, -0.832912,
		0.028720, -0.882388, 0.469646,
		-0.937865, -0.186330, -0.292729,
		47.004177, 36.319733, 36.895107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.558689, 35.745525, 36.985294>,  <47.660683, 36.450165, 37.100018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.558689, 35.745525, 36.985294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.287891, 35.920063, 36.748219>,  <47.125412, 36.024788, 36.605972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.287891, 35.920063, 36.748219>,  <47.558689, 35.745525, 36.985294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.287891, 35.920063, 36.748219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439775, -0.405898, -0.801152,
		-0.590154, -0.803024, 0.082894,
		-0.676990, 0.436348, -0.592692,
		47.084793, 36.050968, 36.570412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.114826, 35.325211, 36.548260>,  <47.558689, 35.745525, 36.985294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.114826, 35.325211, 36.548260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.161785, 35.660976, 36.335999>,  <47.189960, 35.862438, 36.208641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.161785, 35.660976, 36.335999>,  <47.114826, 35.325211, 36.548260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.161785, 35.660976, 36.335999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392456, -0.530069, -0.751668,
		-0.912248, -0.120015, -0.391664,
		0.117397, 0.839418, -0.530655,
		47.197002, 35.912804, 36.176804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.870384, 35.166409, 35.929901>,  <47.114826, 35.325211, 36.548260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.870384, 35.166409, 35.929901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.115940, 35.474358, 35.860115>,  <47.263271, 35.659126, 35.818245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.115940, 35.474358, 35.860115>,  <46.870384, 35.166409, 35.929901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.115940, 35.474358, 35.860115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459083, -0.527979, -0.714480,
		-0.642172, 0.358516, -0.677555,
		0.613887, 0.769873, -0.174464,
		47.300106, 35.705318, 35.807777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.778427, 35.391979, 35.317600>,  <46.870384, 35.166409, 35.929901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.778427, 35.391979, 35.317600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.160351, 35.430679, 35.430008>,  <47.389507, 35.453899, 35.497452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.160351, 35.430679, 35.430008>,  <46.778427, 35.391979, 35.317600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.160351, 35.430679, 35.430008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258300, -0.737831, -0.623607,
		0.147013, 0.668016, -0.729481,
		0.954813, 0.096747, 0.281019,
		47.446796, 35.459705, 35.514313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.108307, 35.352943, 34.712646>,  <46.778427, 35.391979, 35.317600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.108307, 35.352943, 34.712646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.342728, 35.260338, 35.023243>,  <47.483379, 35.204773, 35.209602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.342728, 35.260338, 35.023243>,  <47.108307, 35.352943, 34.712646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.342728, 35.260338, 35.023243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328826, -0.807896, -0.489058,
		0.740550, 0.541946, -0.397342,
		0.586054, -0.231515, 0.776493,
		47.518543, 35.190884, 35.256191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.906750, 35.309612, 34.531696>,  <47.108307, 35.352943, 34.712646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.906750, 35.309612, 34.531696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.794617, 35.063263, 34.826210>,  <47.727337, 34.915451, 35.002918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.794617, 35.063263, 34.826210>,  <47.906750, 35.309612, 34.531696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.794617, 35.063263, 34.826210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160442, -0.786311, -0.596636,
		0.946399, -0.049127, 0.319242,
		-0.280334, -0.615875, 0.736282,
		47.710518, 34.878502, 35.047096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.458378, 37.417015, 43.461102> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.146099, 37.168766, 43.431885>,  <33.958733, 37.019817, 43.414356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.146099, 37.168766, 43.431885>,  <34.458378, 37.417015, 43.461102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.146099, 37.168766, 43.431885> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393637, -0.397622, -0.828823,
		0.485348, -0.675810, 0.554724,
		-0.780696, -0.620627, -0.073039,
		33.911892, 36.982578, 43.409973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.778225, 36.753593, 43.209373>,  <34.458378, 37.417015, 43.461102>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.778225, 36.753593, 43.209373> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.391041, 36.717464, 43.115658>,  <34.158730, 36.695786, 43.059429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.391041, 36.717464, 43.115658>,  <34.778225, 36.753593, 43.209373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.391041, 36.717464, 43.115658> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235540, -0.649949, -0.722556,
		-0.087012, -0.754592, 0.650401,
		-0.967962, -0.090325, -0.234290,
		34.100651, 36.690369, 43.045372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.720650, 36.067924, 43.122444>,  <34.778225, 36.753593, 43.209373>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.720650, 36.067924, 43.122444> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.425056, 36.246719, 42.920807>,  <34.247700, 36.353996, 42.799824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.425056, 36.246719, 42.920807>,  <34.720650, 36.067924, 43.122444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.425056, 36.246719, 42.920807> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237754, -0.527059, -0.815893,
		-0.630382, -0.722779, 0.283212,
		-0.738980, 0.446990, -0.504092,
		34.203362, 36.380817, 42.769581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.333500, 35.565586, 42.767307>,  <34.720650, 36.067924, 43.122444>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.333500, 35.565586, 42.767307> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.232971, 35.889748, 42.555618>,  <34.172653, 36.084244, 42.428604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.232971, 35.889748, 42.555618>,  <34.333500, 35.565586, 42.767307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.232971, 35.889748, 42.555618> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251202, -0.473425, -0.844255,
		-0.934737, -0.345125, -0.084592,
		-0.251325, 0.810406, -0.529223,
		34.157574, 36.132870, 42.396851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.842548, 35.324409, 42.309250>,  <34.333500, 35.565586, 42.767307>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.842548, 35.324409, 42.309250> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.968864, 35.663078, 42.137936>,  <34.044655, 35.866280, 42.035145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.968864, 35.663078, 42.137936>,  <33.842548, 35.324409, 42.309250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.968864, 35.663078, 42.137936> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037286, -0.462110, -0.886039,
		-0.948096, 0.263833, -0.177499,
		0.315791, 0.846668, -0.428287,
		34.063602, 35.917080, 42.009449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.451538, 35.307224, 41.704060>,  <33.842548, 35.324409, 42.309250>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.451538, 35.307224, 41.704060> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.759243, 35.554081, 41.637875>,  <33.943867, 35.702194, 41.598164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.759243, 35.554081, 41.637875>,  <33.451538, 35.307224, 41.704060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.759243, 35.554081, 41.637875> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011684, -0.272509, -0.962082,
		-0.638831, 0.738156, -0.216840,
		0.769258, 0.617142, -0.165463,
		33.990021, 35.739223, 41.588234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.274685, 35.602272, 41.000042>,  <33.451538, 35.307224, 41.704060>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.274685, 35.602272, 41.000042> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.659805, 35.685936, 41.068462>,  <33.890877, 35.736134, 41.109516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.659805, 35.685936, 41.068462>,  <33.274685, 35.602272, 41.000042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.659805, 35.685936, 41.068462> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214621, -0.207427, -0.954417,
		-0.164143, 0.955629, -0.244602,
		0.962806, 0.209158, 0.171050,
		33.948647, 35.748684, 41.119778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.618027, 35.869862, 40.307819>,  <33.274685, 35.602272, 41.000042>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.618027, 35.869862, 40.307819> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.940659, 35.761570, 40.518017>,  <34.134235, 35.696594, 40.644135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.940659, 35.761570, 40.518017>,  <33.618027, 35.869862, 40.307819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.940659, 35.761570, 40.518017> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471973, -0.240297, -0.848233,
		0.355918, 0.932181, -0.066039,
		0.806575, -0.270733, 0.525491,
		34.182632, 35.680351, 40.675663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.271992, 36.144993, 40.015476>,  <33.618027, 35.869862, 40.307819>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.271992, 36.144993, 40.015476> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.369720, 35.820133, 40.227406>,  <34.428360, 35.625217, 40.354565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.369720, 35.820133, 40.227406>,  <34.271992, 36.144993, 40.015476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.369720, 35.820133, 40.227406> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507541, -0.358464, -0.783522,
		0.826262, 0.460342, 0.324619,
		0.244324, -0.812151, 0.529827,
		34.443016, 35.576488, 40.386353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.970890, 36.067097, 39.951790>,  <34.271992, 36.144993, 40.015476>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.970890, 36.067097, 39.951790> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.873657, 35.707062, 40.096436>,  <34.815319, 35.491043, 40.183224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.873657, 35.707062, 40.096436>,  <34.970890, 36.067097, 39.951790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.873657, 35.707062, 40.096436> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669320, -0.425463, -0.609092,
		0.702085, 0.093976, 0.705864,
		-0.243079, -0.900083, 0.361611,
		34.800732, 35.437038, 40.204918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.590485, 35.715889, 40.109615>,  <34.970890, 36.067097, 39.951790>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.590485, 35.715889, 40.109615> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.301971, 35.444275, 40.054977>,  <35.128864, 35.281307, 40.022194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.301971, 35.444275, 40.054977>,  <35.590485, 35.715889, 40.109615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.301971, 35.444275, 40.054977> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627543, -0.557193, -0.543806,
		0.293153, -0.477959, 0.828019,
		-0.721284, -0.679036, -0.136597,
		35.085587, 35.240562, 40.014000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.868221, 35.050716, 40.176121>,  <35.590485, 35.715889, 40.109615>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.868221, 35.050716, 40.176121> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.536911, 34.962486, 39.970089>,  <35.338127, 34.909550, 39.846470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.536911, 34.962486, 39.970089>,  <35.868221, 35.050716, 40.176121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.536911, 34.962486, 39.970089> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530332, -0.605324, -0.593575,
		-0.180864, -0.764807, 0.618352,
		-0.828273, -0.220575, -0.515083,
		35.288429, 34.896313, 39.815563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.858982, 34.322159, 40.094582>,  <35.868221, 35.050716, 40.176121>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.858982, 34.322159, 40.094582> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.625347, 34.477135, 39.809280>,  <35.485165, 34.570122, 39.638100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.625347, 34.477135, 39.809280>,  <35.858982, 34.322159, 40.094582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.625347, 34.477135, 39.809280> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562484, -0.440319, -0.699808,
		-0.585193, -0.809943, 0.039257,
		-0.584090, 0.387441, -0.713252,
		35.450119, 34.593369, 39.595306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.924046, 33.755093, 39.549366>,  <35.858982, 34.322159, 40.094582>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.924046, 33.755093, 39.549366> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.743408, 34.058239, 39.361023>,  <35.635025, 34.240128, 39.248016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.743408, 34.058239, 39.361023>,  <35.924046, 33.755093, 39.549366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.743408, 34.058239, 39.361023> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474190, -0.243169, -0.846175,
		-0.755783, -0.605403, -0.249557,
		-0.451592, 0.757863, -0.470860,
		35.607929, 34.285599, 39.219765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.520737, 33.477791, 39.028633>,  <35.924046, 33.755093, 39.549366>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.520737, 33.477791, 39.028633> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.592010, 33.851131, 38.903988>,  <35.634777, 34.075134, 38.829201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.592010, 33.851131, 38.903988>,  <35.520737, 33.477791, 39.028633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.592010, 33.851131, 38.903988> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391454, -0.357784, -0.847794,
		-0.902781, 0.029082, -0.429117,
		0.178187, 0.933351, -0.311616,
		35.645466, 34.131138, 38.810501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.420574, 33.494225, 38.369957>,  <35.520737, 33.477791, 39.028633>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.420574, 33.494225, 38.369957> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.639805, 33.827789, 38.395863>,  <35.771343, 34.027927, 38.411407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.639805, 33.827789, 38.395863>,  <35.420574, 33.494225, 38.369957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.639805, 33.827789, 38.395863> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335588, -0.148311, -0.930260,
		-0.766153, 0.531591, -0.361138,
		0.548079, 0.833915, 0.064767,
		35.804230, 34.077965, 38.415291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.311810, 33.830132, 37.847313>,  <35.420574, 33.494225, 38.369957>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.311810, 33.830132, 37.847313> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.641876, 34.046021, 37.914005>,  <35.839916, 34.175552, 37.954021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.641876, 34.046021, 37.914005>,  <35.311810, 33.830132, 37.847313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.641876, 34.046021, 37.914005> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308757, -0.183756, -0.933222,
		-0.473038, 0.821546, -0.318272,
		0.825169, 0.539718, 0.166734,
		35.889427, 34.207935, 37.964024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.410473, 34.256264, 37.239925>,  <35.311810, 33.830132, 37.847313>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.410473, 34.256264, 37.239925> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.754078, 34.202831, 37.437614>,  <35.960239, 34.170773, 37.556229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.754078, 34.202831, 37.437614>,  <35.410473, 34.256264, 37.239925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.754078, 34.202831, 37.437614> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449670, -0.264610, -0.853099,
		0.244730, 0.955060, -0.167238,
		0.859013, -0.133577, 0.494220,
		36.011784, 34.162758, 37.585880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.891384, 34.496941, 36.824070>,  <35.410473, 34.256264, 37.239925>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.891384, 34.496941, 36.824070> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.105457, 34.249645, 37.054329>,  <36.233902, 34.101269, 37.192482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.105457, 34.249645, 37.054329>,  <35.891384, 34.496941, 36.824070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.105457, 34.249645, 37.054329> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480348, -0.337826, -0.809407,
		0.694871, 0.709689, 0.116170,
		0.535181, -0.618236, 0.575644,
		36.266010, 34.064175, 37.227020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.652485, 34.535545, 36.631676>,  <35.891384, 34.496941, 36.824070>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.652485, 34.535545, 36.631676> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.647625, 34.177902, 36.810749>,  <36.644711, 33.963318, 36.918194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.647625, 34.177902, 36.810749>,  <36.652485, 34.535545, 36.631676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.647625, 34.177902, 36.810749> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520280, -0.387991, -0.760771,
		0.853909, 0.223678, 0.469901,
		-0.012150, -0.894109, 0.447684,
		36.643982, 33.909668, 36.945053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.296715, 34.279320, 36.523388>,  <36.652485, 34.535545, 36.631676>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.296715, 34.279320, 36.523388> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.083839, 33.947243, 36.589787>,  <36.956116, 33.747997, 36.629623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.083839, 33.947243, 36.589787>,  <37.296715, 34.279320, 36.523388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.083839, 33.947243, 36.589787> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493150, -0.463346, -0.736284,
		0.688171, -0.309981, 0.655997,
		-0.532188, -0.830194, 0.165994,
		36.924183, 33.698185, 36.639584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.949081, 34.661678, 36.333904>,  <37.296715, 34.279320, 36.523388>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.949081, 34.661678, 36.333904> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.326778, 34.562489, 36.420540>,  <38.553398, 34.502975, 36.472523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.326778, 34.562489, 36.420540>,  <37.949081, 34.661678, 36.333904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.326778, 34.562489, 36.420540> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001917, 0.661975, 0.749523,
		-0.329237, -0.707318, 0.625543,
		0.944245, -0.247970, 0.216591,
		38.610050, 34.488098, 36.485516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.921036, 34.416683, 37.036385>,  <37.949081, 34.661678, 36.333904>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.921036, 34.416683, 37.036385> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.264942, 34.577145, 36.909966>,  <38.471287, 34.673420, 36.834114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.264942, 34.577145, 36.909966>,  <37.921036, 34.416683, 37.036385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.264942, 34.577145, 36.909966> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067583, 0.702786, 0.708184,
		0.506202, -0.587511, 0.631340,
		0.859763, 0.401152, -0.316045,
		38.522869, 34.697491, 36.815151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.342922, 34.444359, 37.678734>,  <37.921036, 34.416683, 37.036385>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.342922, 34.444359, 37.678734> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.492237, 34.680511, 37.392487>,  <38.581825, 34.822201, 37.220737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.492237, 34.680511, 37.392487>,  <38.342922, 34.444359, 37.678734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.492237, 34.680511, 37.392487> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241615, 0.806624, 0.539426,
		0.895700, -0.028458, 0.443748,
		0.373288, 0.590380, -0.715617,
		38.604225, 34.857624, 37.177803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.914059, 34.774925, 37.988243>,  <38.342922, 34.444359, 37.678734>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.914059, 34.774925, 37.988243> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.800552, 35.016693, 37.690475>,  <38.732449, 35.161755, 37.511814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.800552, 35.016693, 37.690475>,  <38.914059, 34.774925, 37.988243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.800552, 35.016693, 37.690475> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194365, 0.723959, 0.661896,
		0.938987, 0.332514, -0.087960,
		-0.283769, 0.604416, -0.744417,
		38.715420, 35.198017, 37.467152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.265911, 35.385326, 38.088467>,  <38.914059, 34.774925, 37.988243>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.265911, 35.385326, 38.088467> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.972168, 35.485043, 37.835938>,  <38.795921, 35.544872, 37.684418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.972168, 35.485043, 37.835938>,  <39.265911, 35.385326, 38.088467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.972168, 35.485043, 37.835938> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212769, 0.798687, 0.562875,
		0.644553, 0.547678, -0.533479,
		-0.734357, 0.249295, -0.631325,
		38.751862, 35.559830, 37.646542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.302368, 36.076542, 38.095398>,  <39.265911, 35.385326, 38.088467>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.302368, 36.076542, 38.095398> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.925575, 36.020554, 37.973366>,  <38.699497, 35.986961, 37.900146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.925575, 36.020554, 37.973366>,  <39.302368, 36.076542, 38.095398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.925575, 36.020554, 37.973366> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320120, 0.647965, 0.691133,
		0.100942, 0.748698, -0.655181,
		-0.941984, -0.139972, -0.305080,
		38.642979, 35.978561, 37.881844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.983040, 36.769096, 38.010460>,  <39.302368, 36.076542, 38.095398>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.983040, 36.769096, 38.010460> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.669460, 36.521160, 38.024475>,  <38.481312, 36.372398, 38.032887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.669460, 36.521160, 38.024475>,  <38.983040, 36.769096, 38.010460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.669460, 36.521160, 38.024475> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454512, 0.611468, 0.647708,
		-0.422900, 0.491843, -0.761082,
		-0.783948, -0.619837, 0.035041,
		38.434277, 36.335209, 38.034988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.301907, 37.244617, 38.119270>,  <38.983040, 36.769096, 38.010460>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.301907, 37.244617, 38.119270> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.224846, 36.860748, 38.201164>,  <38.178612, 36.630428, 38.250301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.224846, 36.860748, 38.201164>,  <38.301907, 37.244617, 38.119270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.224846, 36.860748, 38.201164> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337772, 0.260746, 0.904390,
		-0.921302, 0.105074, -0.374383,
		-0.192647, -0.959672, 0.204735,
		38.167053, 36.572845, 38.262585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.711792, 37.358459, 38.391804>,  <38.301907, 37.244617, 38.119270>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.711792, 37.358459, 38.391804> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.796429, 37.003487, 38.555603>,  <37.847210, 36.790501, 38.653881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.796429, 37.003487, 38.555603>,  <37.711792, 37.358459, 38.391804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.796429, 37.003487, 38.555603> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301730, 0.339201, 0.891012,
		-0.929617, -0.312088, -0.195994,
		0.211593, -0.887437, 0.409494,
		37.859905, 36.737255, 38.678452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.180683, 37.305553, 38.958454>,  <37.711792, 37.358459, 38.391804>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.180683, 37.305553, 38.958454> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.442863, 37.008617, 39.014034>,  <37.600174, 36.830456, 39.047382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.442863, 37.008617, 39.014034>,  <37.180683, 37.305553, 38.958454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.442863, 37.008617, 39.014034> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271648, -0.060067, 0.960520,
		-0.704689, -0.667323, -0.241027,
		0.655455, -0.742343, 0.138948,
		37.639500, 36.785915, 39.055717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.831593, 36.674866, 39.324940>,  <37.180683, 37.305553, 38.958454>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.831593, 36.674866, 39.324940> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.223652, 36.680061, 39.404068>,  <37.458889, 36.683178, 39.451546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.223652, 36.680061, 39.404068>,  <36.831593, 36.674866, 39.324940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.223652, 36.680061, 39.404068> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197962, 0.010630, 0.980152,
		0.010630, -0.999859, 0.012991,
		-0.980152, -0.012991, -0.197821,
		37.517696, 36.683960, 39.463413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.984566, 36.019646, 39.590790>,  <36.831593, 36.674866, 39.324940>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.984566, 36.019646, 39.590790> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.261860, 36.279446, 39.715736>,  <37.428234, 36.435326, 39.790707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.261860, 36.279446, 39.715736>,  <36.984566, 36.019646, 39.590790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.261860, 36.279446, 39.715736> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336214, -0.091925, 0.937289,
		0.637486, -0.754783, 0.154646,
		0.693233, 0.649502, 0.312369,
		37.469830, 36.474297, 39.809448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.043129, 35.880539, 40.233883>,  <36.984566, 36.019646, 39.590790>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.043129, 35.880539, 40.233883> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.245319, 36.225670, 40.235867>,  <37.366634, 36.432747, 40.237057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.245319, 36.225670, 40.235867>,  <37.043129, 35.880539, 40.233883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.245319, 36.225670, 40.235867> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242536, 0.136567, 0.960482,
		0.828053, -0.486701, 0.278298,
		0.505474, 0.862828, 0.004957,
		37.396961, 36.484520, 40.237354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.491638, 35.832680, 40.803078>,  <37.043129, 35.880539, 40.233883>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.491638, 35.832680, 40.803078> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.425694, 36.218128, 40.718925>,  <37.386127, 36.449398, 40.668434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.425694, 36.218128, 40.718925>,  <37.491638, 35.832680, 40.803078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.425694, 36.218128, 40.718925> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194860, 0.177273, 0.964678,
		0.966877, 0.200031, 0.158546,
		-0.164860, 0.963619, -0.210379,
		37.376236, 36.507214, 40.655811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960400, 36.210747, 41.245846>,  <37.491638, 35.832680, 40.803078>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.960400, 36.210747, 41.245846> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.637562, 36.421551, 41.139362>,  <37.443859, 36.548031, 41.075470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.637562, 36.421551, 41.139362>,  <37.960400, 36.210747, 41.245846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.637562, 36.421551, 41.139362> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227298, 0.138797, 0.963883,
		0.544922, 0.838451, 0.007766,
		-0.807091, 0.527007, -0.266212,
		37.395435, 36.579655, 41.059498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.054867, 36.843628, 41.646778>,  <37.960400, 36.210747, 41.245846>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.054867, 36.843628, 41.646778> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.667320, 36.835972, 41.548046>,  <37.434792, 36.831379, 41.488808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.667320, 36.835972, 41.548046>,  <38.054867, 36.843628, 41.646778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.667320, 36.835972, 41.548046> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245564, 0.201006, 0.948312,
		0.031460, 0.979403, -0.199449,
		-0.968870, -0.019144, -0.246830,
		37.376659, 36.830227, 41.473999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.764771, 37.394073, 41.996532>,  <38.054867, 36.843628, 41.646778>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.764771, 37.394073, 41.996532> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.465347, 37.142757, 41.911758>,  <37.285694, 36.991966, 41.860893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.465347, 37.142757, 41.911758>,  <37.764771, 37.394073, 41.996532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.465347, 37.142757, 41.911758> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278219, 0.007480, 0.960489,
		-0.601879, 0.777944, -0.180401,
		-0.748556, -0.628289, -0.211936,
		37.240780, 36.954269, 41.848179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.245651, 37.740135, 42.251114>,  <37.764771, 37.394073, 41.996532>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.245651, 37.740135, 42.251114> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.122078, 37.361816, 42.211048>,  <37.047932, 37.134827, 42.187008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.122078, 37.361816, 42.211048>,  <37.245651, 37.740135, 42.251114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.122078, 37.361816, 42.211048> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372536, 0.023436, 0.927722,
		-0.875086, 0.323921, -0.359583,
		-0.308936, -0.945794, -0.100163,
		37.029396, 37.078079, 42.181000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.607590, 37.734169, 42.523495>,  <37.245651, 37.740135, 42.251114>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.607590, 37.734169, 42.523495> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.709305, 37.347672, 42.540009>,  <36.770332, 37.115772, 42.549919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.709305, 37.347672, 42.540009>,  <36.607590, 37.734169, 42.523495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.709305, 37.347672, 42.540009> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427631, -0.074044, 0.900916,
		-0.867450, -0.246749, -0.432026,
		0.254288, -0.966246, 0.041288,
		36.785591, 37.057796, 42.552395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.014900, 37.375599, 42.716782> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.300957, 37.121265, 42.832909>,  <36.472591, 36.968666, 42.902584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.300957, 37.121265, 42.832909>,  <36.014900, 37.375599, 42.716782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.300957, 37.121265, 42.832909> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430760, -0.073816, 0.899443,
		-0.550469, -0.768286, -0.326682,
		0.715143, -0.635837, 0.290313,
		36.515499, 36.930515, 42.920002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.608524, 36.889832, 43.004570>,  <36.014900, 37.375599, 42.716782>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.608524, 36.889832, 43.004570> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.980106, 36.838692, 43.143536>,  <36.203056, 36.808006, 43.226913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.980106, 36.838692, 43.143536>,  <35.608524, 36.889832, 43.004570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.980106, 36.838692, 43.143536> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344732, 0.043226, 0.937706,
		-0.134908, -0.990851, -0.003921,
		0.928957, -0.127855, 0.347409,
		36.258793, 36.800335, 43.247757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.507122, 36.609474, 43.611683>,  <35.608524, 36.889832, 43.004570>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.507122, 36.609474, 43.611683> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.885822, 36.731850, 43.651806>,  <36.113041, 36.805275, 43.675880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.885822, 36.731850, 43.651806>,  <35.507122, 36.609474, 43.611683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.885822, 36.731850, 43.651806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213693, 0.364078, 0.906522,
		0.240823, -0.879686, 0.410068,
		0.946752, 0.305940, 0.100304,
		36.169849, 36.823631, 43.681896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.764427, 36.309509, 44.237091>,  <35.507122, 36.609474, 43.611683>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.764427, 36.309509, 44.237091> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.981316, 36.632927, 44.145657>,  <36.111450, 36.826977, 44.090797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.981316, 36.632927, 44.145657>,  <35.764427, 36.309509, 44.237091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.981316, 36.632927, 44.145657> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231717, 0.405391, 0.884288,
		0.807651, -0.426516, 0.407166,
		0.542224, 0.808543, -0.228583,
		36.143982, 36.875488, 44.077080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.186134, 36.547276, 44.858898>,  <35.764427, 36.309509, 44.237091>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.186134, 36.547276, 44.858898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.195576, 36.879738, 44.636684>,  <36.201241, 37.079216, 44.503357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.195576, 36.879738, 44.636684>,  <36.186134, 36.547276, 44.858898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.195576, 36.879738, 44.636684> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183501, 0.549851, 0.814857,
		0.982736, 0.082709, 0.165496,
		0.023602, 0.831158, -0.555536,
		36.202656, 37.129086, 44.470024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610039, 36.995346, 45.212444>,  <36.186134, 36.547276, 44.858898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.610039, 36.995346, 45.212444> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.382122, 37.226284, 44.978519>,  <36.245373, 37.364849, 44.838165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.382122, 37.226284, 44.978519>,  <36.610039, 36.995346, 45.212444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.382122, 37.226284, 44.978519> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103332, 0.655651, 0.747960,
		0.815267, 0.486611, -0.313925,
		-0.569791, 0.577349, -0.584813,
		36.211185, 37.399490, 44.803074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.962177, 37.698940, 45.270607>,  <36.610039, 36.995346, 45.212444>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.962177, 37.698940, 45.270607> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.585838, 37.746700, 45.143772>,  <36.360035, 37.775356, 45.067673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.585838, 37.746700, 45.143772>,  <36.962177, 37.698940, 45.270607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.585838, 37.746700, 45.143772> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183954, 0.605898, 0.773982,
		0.284535, 0.786531, -0.548096,
		-0.940851, 0.119400, -0.317084,
		36.303581, 37.782520, 45.048645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.841713, 38.395706, 45.380936>,  <36.962177, 37.698940, 45.270607>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.841713, 38.395706, 45.380936> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.490955, 38.205627, 45.351971>,  <36.280502, 38.091579, 45.334591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.490955, 38.205627, 45.351971>,  <36.841713, 38.395706, 45.380936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.490955, 38.205627, 45.351971> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367113, 0.564811, 0.739065,
		-0.310303, 0.674665, -0.669731,
		-0.876892, -0.475201, -0.072416,
		36.227886, 38.063068, 45.330246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.248672, 38.858994, 45.493366>,  <36.841713, 38.395706, 45.380936>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.248672, 38.858994, 45.493366> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.091873, 38.501396, 45.580196>,  <35.997795, 38.286839, 45.632294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.091873, 38.501396, 45.580196>,  <36.248672, 38.858994, 45.493366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.091873, 38.501396, 45.580196> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193173, 0.310689, 0.930675,
		-0.899457, 0.322888, -0.294484,
		-0.391997, -0.893989, 0.217078,
		35.974274, 38.233200, 45.645321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.657169, 39.035912, 45.789627>,  <36.248672, 38.858994, 45.493366>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.657169, 39.035912, 45.789627> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.710476, 38.655552, 45.901363>,  <35.742458, 38.427338, 45.968407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.710476, 38.655552, 45.901363>,  <35.657169, 39.035912, 45.789627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.710476, 38.655552, 45.901363> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034401, 0.277250, 0.960182,
		-0.990483, -0.137570, 0.004236,
		0.133266, -0.950898, 0.279344,
		35.750454, 38.370281, 45.985168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.226410, 39.018505, 46.376030>,  <35.657169, 39.035912, 45.789627>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.226410, 39.018505, 46.376030> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.457691, 38.694695, 46.416733>,  <35.596458, 38.500408, 46.441154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.457691, 38.694695, 46.416733>,  <35.226410, 39.018505, 46.376030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.457691, 38.694695, 46.416733> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000816, 0.124143, 0.992264,
		-0.815893, -0.573812, 0.071119,
		0.578202, -0.809523, 0.101755,
		35.631153, 38.451836, 46.447258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.996674, 38.649334, 46.964420>,  <35.226410, 39.018505, 46.376030>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.996674, 38.649334, 46.964420> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.367474, 38.509758, 46.909409>,  <35.589954, 38.426014, 46.876400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.367474, 38.509758, 46.909409>,  <34.996674, 38.649334, 46.964420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.367474, 38.509758, 46.909409> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157913, 0.030505, 0.986982,
		-0.340203, -0.936648, 0.083380,
		0.926998, -0.348941, -0.137531,
		35.645573, 38.405075, 46.868149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.102894, 38.123989, 47.485279>,  <34.996674, 38.649334, 46.964420>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.102894, 38.123989, 47.485279> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.457890, 38.269455, 47.372066>,  <35.670887, 38.356735, 47.304138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.457890, 38.269455, 47.372066>,  <35.102894, 38.123989, 47.485279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.457890, 38.269455, 47.372066> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274122, 0.077086, 0.958600,
		0.370426, -0.928335, -0.031275,
		0.887492, 0.363664, -0.283032,
		35.724136, 38.378555, 47.287155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.558064, 37.733418, 47.799255>,  <35.102894, 38.123989, 47.485279>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.558064, 37.733418, 47.799255> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.780849, 38.055710, 47.718666>,  <35.914520, 38.249084, 47.670311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.780849, 38.055710, 47.718666>,  <35.558064, 37.733418, 47.799255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.780849, 38.055710, 47.718666> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294525, 0.035210, 0.954995,
		0.776561, -0.591237, -0.217696,
		0.556963, 0.805729, -0.201477,
		35.947937, 38.297428, 47.658222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.128296, 37.630249, 48.251690>,  <35.558064, 37.733418, 47.799255>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.128296, 37.630249, 48.251690> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.141251, 38.014896, 48.142704>,  <36.149025, 38.245686, 48.077312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.141251, 38.014896, 48.142704>,  <36.128296, 37.630249, 48.251690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.141251, 38.014896, 48.142704> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253572, 0.255787, 0.932885,
		0.966774, -0.099303, -0.235556,
		0.032386, 0.961619, -0.272469,
		36.150967, 38.303383, 48.060963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.810993, 37.713459, 48.352058>,  <36.128296, 37.630249, 48.251690>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.810993, 37.713459, 48.352058> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.591106, 38.047451, 48.362030>,  <36.459175, 38.247845, 48.368011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.591106, 38.047451, 48.362030>,  <36.810993, 37.713459, 48.352058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.591106, 38.047451, 48.362030> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412052, 0.245079, 0.877582,
		0.726651, 0.492696, -0.478778,
		-0.549720, 0.834977, 0.024929,
		36.426189, 38.297943, 48.369511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.226734, 38.099140, 48.831642>,  <36.810993, 37.713459, 48.352058>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.226734, 38.099140, 48.831642> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.882908, 38.303276, 48.821083>,  <36.676613, 38.425758, 48.814747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.882908, 38.303276, 48.821083>,  <37.226734, 38.099140, 48.831642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.882908, 38.303276, 48.821083> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157013, 0.312904, 0.936717,
		0.486301, 0.801029, -0.349092,
		-0.859569, 0.510338, -0.026394,
		36.625038, 38.456379, 48.813164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.424583, 38.603569, 49.150883>,  <37.226734, 38.099140, 48.831642>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.424583, 38.603569, 49.150883> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.025719, 38.632656, 49.158749>,  <36.786400, 38.650108, 49.163467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.025719, 38.632656, 49.158749>,  <37.424583, 38.603569, 49.150883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.025719, 38.632656, 49.158749> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038858, 0.272897, 0.961258,
		0.064536, 0.959291, -0.274947,
		-0.997159, 0.072719, 0.019664,
		36.726570, 38.654472, 49.164646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.210758, 39.217728, 49.459690>,  <37.424583, 38.603569, 49.150883>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.210758, 39.217728, 49.459690> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.873940, 39.007637, 49.508846>,  <36.671848, 38.881584, 49.538342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.873940, 39.007637, 49.508846>,  <37.210758, 39.217728, 49.459690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.873940, 39.007637, 49.508846> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000108, 0.227658, 0.973741,
		-0.539409, 0.819946, -0.191642,
		-0.842044, -0.525224, 0.122889,
		36.621326, 38.850071, 49.545712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.641338, 39.658871, 49.864853>,  <37.210758, 39.217728, 49.459690>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.641338, 39.658871, 49.864853> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.607204, 39.262489, 49.906281>,  <36.586723, 39.024662, 49.931137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.607204, 39.262489, 49.906281>,  <36.641338, 39.658871, 49.864853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.607204, 39.262489, 49.906281> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021317, 0.105741, 0.994165,
		-0.996124, 0.082633, -0.030148,
		-0.085339, -0.990954, 0.103570,
		36.581604, 38.965202, 49.937351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.080616, 39.637043, 50.255974>,  <36.641338, 39.658871, 49.864853>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.080616, 39.637043, 50.255974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.247913, 39.278374, 50.314003>,  <36.348293, 39.063171, 50.348820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.247913, 39.278374, 50.314003>,  <36.080616, 39.637043, 50.255974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.247913, 39.278374, 50.314003> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080001, 0.122731, 0.989210,
		-0.904805, -0.425337, -0.020404,
		0.418243, -0.896675, 0.145075,
		36.373386, 39.009373, 50.357525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.654774, 39.377354, 50.825775>,  <36.080616, 39.637043, 50.255974>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.654774, 39.377354, 50.825775> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.990681, 39.161354, 50.848404>,  <36.192223, 39.031754, 50.861980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.990681, 39.161354, 50.848404>,  <35.654774, 39.377354, 50.825775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.990681, 39.161354, 50.848404> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041167, 0.040569, 0.998328,
		-0.541388, -0.840689, 0.011838,
		0.839764, -0.539996, 0.056573,
		36.242611, 38.999355, 50.865376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.254192, 38.934650, 51.336815>,  <35.654774, 39.377354, 50.825775>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.254192, 38.934650, 51.336815> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.174255, 38.566628, 51.471611>,  <35.126293, 38.345814, 51.552490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.174255, 38.566628, 51.471611>,  <35.254192, 38.934650, 51.336815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.174255, 38.566628, 51.471611> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394523, -0.239259, -0.887190,
		0.896892, -0.310247, -0.315170,
		-0.199841, -0.920056, 0.336989,
		35.114304, 38.290611, 51.572708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.464027, 38.588825, 50.854095>,  <35.254192, 38.934650, 51.336815>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.464027, 38.588825, 50.854095> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.224415, 38.332664, 51.046360>,  <35.080647, 38.178967, 51.161720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.224415, 38.332664, 51.046360>,  <35.464027, 38.588825, 50.854095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.224415, 38.332664, 51.046360> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242739, -0.426801, -0.871159,
		0.763042, -0.638532, 0.100218,
		-0.599036, -0.640405, 0.480664,
		35.044704, 38.140545, 51.190559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.471039, 37.930412, 50.550098>,  <35.464027, 38.588825, 50.854095>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.471039, 37.930412, 50.550098> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.133060, 37.918606, 50.763710>,  <34.930271, 37.911522, 50.891876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.133060, 37.918606, 50.763710>,  <35.471039, 37.930412, 50.550098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.133060, 37.918606, 50.763710> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506781, -0.275011, -0.817032,
		0.170977, -0.960988, 0.217414,
		-0.844950, -0.029512, 0.534031,
		34.879574, 37.909752, 50.923920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.158592, 37.319393, 50.367527>,  <35.471039, 37.930412, 50.550098>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.158592, 37.319393, 50.367527> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.865124, 37.564751, 50.484463>,  <34.689041, 37.711967, 50.554626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.865124, 37.564751, 50.484463>,  <35.158592, 37.319393, 50.367527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.865124, 37.564751, 50.484463> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525178, -0.238885, -0.816776,
		-0.431172, -0.752779, 0.497407,
		-0.733675, 0.613398, 0.292342,
		34.645020, 37.748772, 50.572166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.500927, 36.955002, 50.198219>,  <35.158592, 37.319393, 50.367527>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.500927, 36.955002, 50.198219> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.382416, 37.333752, 50.248245>,  <34.311310, 37.561001, 50.278263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.382416, 37.333752, 50.248245>,  <34.500927, 36.955002, 50.198219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.382416, 37.333752, 50.248245> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693542, -0.123253, -0.709795,
		-0.656675, -0.297033, 0.693217,
		-0.296273, 0.946879, 0.125067,
		34.293533, 37.617817, 50.285767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.729446, 36.957066, 50.253979>,  <34.500927, 36.955002, 50.198219>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.729446, 36.957066, 50.253979> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.843418, 37.317902, 50.124336>,  <33.911800, 37.534405, 50.046551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.843418, 37.317902, 50.124336>,  <33.729446, 36.957066, 50.253979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.843418, 37.317902, 50.124336> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537337, -0.129684, -0.833337,
		-0.793780, 0.411592, 0.447778,
		0.284925, 0.902094, -0.324104,
		33.928894, 37.588531, 50.027103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.119419, 37.247875, 50.013020>,  <33.729446, 36.957066, 50.253979>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.119419, 37.247875, 50.013020> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.402721, 37.491943, 49.870998>,  <33.572704, 37.638386, 49.785786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.402721, 37.491943, 49.870998>,  <33.119419, 37.247875, 50.013020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.402721, 37.491943, 49.870998> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399478, -0.068273, -0.914197,
		-0.582058, 0.789322, 0.195395,
		0.708255, 0.610172, -0.355056,
		33.615196, 37.674995, 49.764481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.791767, 37.798168, 49.723442>,  <33.119419, 37.247875, 50.013020>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.791767, 37.798168, 49.723442> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.137333, 37.759590, 49.525711>,  <33.344673, 37.736443, 49.407074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.137333, 37.759590, 49.525711>,  <32.791767, 37.798168, 49.723442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.137333, 37.759590, 49.525711> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501165, -0.067354, -0.862726,
		0.049911, 0.993057, -0.106523,
		0.863911, -0.096445, -0.494324,
		33.396507, 37.730656, 49.377415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.663242, 38.113758, 49.053627>,  <32.791767, 37.798168, 49.723442>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.663242, 38.113758, 49.053627> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.995865, 37.894192, 49.019699>,  <33.195438, 37.762451, 48.999340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.995865, 37.894192, 49.019699>,  <32.663242, 38.113758, 49.053627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.995865, 37.894192, 49.019699> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261766, -0.252609, -0.931487,
		0.489885, 0.796791, -0.353748,
		0.831560, -0.548920, -0.084823,
		33.245335, 37.729515, 48.994251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.998714, 38.305035, 48.488415>,  <32.663242, 38.113758, 49.053627>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.998714, 38.305035, 48.488415> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.156879, 37.941811, 48.543652>,  <33.251778, 37.723877, 48.576794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.156879, 37.941811, 48.543652>,  <32.998714, 38.305035, 48.488415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.156879, 37.941811, 48.543652> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011929, -0.155408, -0.987778,
		0.918427, 0.388931, -0.072282,
		0.395411, -0.908065, 0.138092,
		33.275501, 37.669392, 48.585079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.516857, 38.270588, 47.975285>,  <32.998714, 38.305035, 48.488415>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.516857, 38.270588, 47.975285> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.430069, 37.896004, 48.085537>,  <33.377995, 37.671253, 48.151688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.430069, 37.896004, 48.085537>,  <33.516857, 38.270588, 47.975285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.430069, 37.896004, 48.085537> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097322, -0.301699, -0.948423,
		0.971315, -0.178953, 0.156598,
		-0.216969, -0.936458, 0.275628,
		33.364979, 37.615067, 48.168224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.992619, 37.930054, 47.597466>,  <33.516857, 38.270588, 47.975285>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.992619, 37.930054, 47.597466> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.713829, 37.664246, 47.705273>,  <33.546555, 37.504761, 47.769955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.713829, 37.664246, 47.705273>,  <33.992619, 37.930054, 47.597466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.713829, 37.664246, 47.705273> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061412, -0.319149, -0.945713,
		0.714461, -0.675690, 0.181629,
		-0.696975, -0.664521, 0.269515,
		33.504738, 37.464890, 47.786129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.269135, 37.206711, 47.572628>,  <33.992619, 37.930054, 47.597466>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.269135, 37.206711, 47.572628> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.871445, 37.167599, 47.554958>,  <33.632832, 37.144131, 47.544357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.871445, 37.167599, 47.554958>,  <34.269135, 37.206711, 47.572628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.871445, 37.167599, 47.554958> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073334, -0.318759, -0.944994,
		0.078322, -0.942778, 0.324090,
		-0.994227, -0.097781, -0.044171,
		33.573177, 37.138264, 47.541706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.246899, 36.625736, 47.195835>,  <34.269135, 37.206711, 47.572628>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.246899, 36.625736, 47.195835> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.882690, 36.786163, 47.155659>,  <33.664165, 36.882420, 47.131554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.882690, 36.786163, 47.155659>,  <34.246899, 36.625736, 47.195835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.882690, 36.786163, 47.155659> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071304, -0.086967, -0.993656,
		-0.407263, -0.911909, 0.050587,
		-0.910523, 0.401072, -0.100441,
		33.609535, 36.906487, 47.125526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.011589, 36.166607, 46.697887>,  <34.246899, 36.625736, 47.195835>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.011589, 36.166607, 46.697887> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.758621, 36.476418, 46.693047>,  <33.606838, 36.662304, 46.690140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.758621, 36.476418, 46.693047>,  <34.011589, 36.166607, 46.697887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.758621, 36.476418, 46.693047> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100485, -0.097523, -0.990148,
		-0.768078, -0.624976, 0.139505,
		-0.632423, 0.774529, -0.012105,
		33.568893, 36.708775, 46.689415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.546806, 36.022644, 46.190338>,  <34.011589, 36.166607, 46.697887>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.546806, 36.022644, 46.190338> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.518250, 36.418926, 46.236649>,  <33.501118, 36.656696, 46.264435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.518250, 36.418926, 46.236649>,  <33.546806, 36.022644, 46.190338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.518250, 36.418926, 46.236649> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002396, 0.115902, -0.993258,
		-0.997446, -0.071185, -0.005901,
		-0.071389, 0.990707, 0.115776,
		33.496834, 36.716137, 46.271381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.002205, 36.243973, 45.718010>,  <33.546806, 36.022644, 46.190338>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.002205, 36.243973, 45.718010> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.197418, 36.587143, 45.782253>,  <33.314545, 36.793045, 45.820801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.197418, 36.587143, 45.782253>,  <33.002205, 36.243973, 45.718010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.197418, 36.587143, 45.782253> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047386, 0.157700, -0.986349,
		-0.871540, 0.488979, 0.036309,
		0.488030, 0.857922, 0.160612,
		33.343826, 36.844521, 45.830437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.698139, 36.667896, 45.320618>,  <33.002205, 36.243973, 45.718010>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.698139, 36.667896, 45.320618> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.033161, 36.878838, 45.377750>,  <33.234177, 37.005402, 45.412029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.033161, 36.878838, 45.377750>,  <32.698139, 36.667896, 45.320618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.033161, 36.878838, 45.377750> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017564, 0.235306, -0.971763,
		-0.546068, 0.816415, 0.187820,
		0.837557, 0.527349, 0.142833,
		33.284428, 37.037041, 45.420601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.502377, 37.331421, 45.105522>,  <32.698139, 36.667896, 45.320618>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.502377, 37.331421, 45.105522> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.892208, 37.246010, 45.078373>,  <33.126106, 37.194763, 45.062084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.892208, 37.246010, 45.078373>,  <32.502377, 37.331421, 45.105522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.892208, 37.246010, 45.078373> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042396, 0.121704, -0.991661,
		0.220006, 0.969327, 0.109557,
		0.974577, -0.213526, -0.067871,
		33.184582, 37.181953, 45.058010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.819080, 37.772846, 44.549194>,  <32.502377, 37.331421, 45.105522>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.819080, 37.772846, 44.549194> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.106239, 37.495323, 44.571983>,  <33.278534, 37.328808, 44.585655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.106239, 37.495323, 44.571983>,  <32.819080, 37.772846, 44.549194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.106239, 37.495323, 44.571983> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103108, 0.025035, -0.994355,
		0.688467, 0.719723, 0.089510,
		0.717901, -0.693810, 0.056973,
		33.321609, 37.287182, 44.589077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.225452, 37.930321, 44.065117>,  <32.819080, 37.772846, 44.549194>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.225452, 37.930321, 44.065117> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.356293, 37.555313, 44.112553>,  <33.434795, 37.330307, 44.141014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.356293, 37.555313, 44.112553>,  <33.225452, 37.930321, 44.065117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.356293, 37.555313, 44.112553> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185079, -0.059506, -0.980920,
		0.926688, 0.342808, 0.154050,
		0.327101, -0.937519, 0.118590,
		33.454422, 37.274059, 44.148129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.775532, 37.846416, 43.559151>,  <33.225452, 37.930321, 44.065117>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.775532, 37.846416, 43.559151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.690022, 37.469719, 43.663017>,  <33.638714, 37.243702, 43.725338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.690022, 37.469719, 43.663017>,  <33.775532, 37.846416, 43.559151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.690022, 37.469719, 43.663017> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261148, -0.311227, -0.913750,
		0.941330, -0.127526, 0.312466,
		-0.213775, -0.941740, 0.259665,
		33.625889, 37.187199, 43.740917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<46.041599, 40.255287, 41.287075> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.742020, 40.180904, 41.541477>,  <45.562271, 40.136276, 41.694118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.742020, 40.180904, 41.541477>,  <46.041599, 40.255287, 41.287075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.742020, 40.180904, 41.541477> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506601, -0.457996, -0.730476,
		0.427121, -0.869288, 0.248810,
		-0.748948, -0.185954, 0.636001,
		45.517334, 40.125118, 41.732277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.855022, 39.492184, 41.291477>,  <46.041599, 40.255287, 41.287075>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.855022, 39.492184, 41.291477> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.536259, 39.690399, 41.429680>,  <45.345001, 39.809330, 41.512600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.536259, 39.690399, 41.429680>,  <45.855022, 39.492184, 41.291477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.536259, 39.690399, 41.429680> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548071, -0.352529, -0.758513,
		-0.254071, -0.793830, 0.552524,
		-0.796911, 0.495538, 0.345507,
		45.297184, 39.839062, 41.533333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.322716, 39.022991, 41.425579>,  <45.855022, 39.492184, 41.291477>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.322716, 39.022991, 41.425579> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.173908, 39.378685, 41.319092>,  <45.084625, 39.592102, 41.255199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.173908, 39.378685, 41.319092>,  <45.322716, 39.022991, 41.425579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.173908, 39.378685, 41.319092> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316290, -0.391079, -0.864302,
		-0.872677, -0.237330, 0.426742,
		-0.372015, 0.889231, -0.266220,
		45.062305, 39.645454, 41.239227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.684212, 38.861584, 41.095032>,  <45.322716, 39.022991, 41.425579>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.684212, 38.861584, 41.095032> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.737873, 39.241795, 40.982964>,  <44.770069, 39.469921, 40.915722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.737873, 39.241795, 40.982964>,  <44.684212, 38.861584, 41.095032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.737873, 39.241795, 40.982964> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428584, -0.199260, -0.881255,
		-0.893487, 0.238300, 0.380651,
		0.134155, 0.950531, -0.280168,
		44.778118, 39.526955, 40.898914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.041672, 39.129230, 40.863609>,  <44.684212, 38.861584, 41.095032>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.041672, 39.129230, 40.863609> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.311909, 39.376495, 40.702881>,  <44.474049, 39.524853, 40.606445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.311909, 39.376495, 40.702881>,  <44.041672, 39.129230, 40.863609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.311909, 39.376495, 40.702881> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241942, -0.328940, -0.912832,
		-0.696451, 0.713916, -0.072670,
		0.675589, 0.618161, -0.401816,
		44.514587, 39.561943, 40.582336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.552971, 39.586258, 40.488411>,  <44.041672, 39.129230, 40.863609>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.552971, 39.586258, 40.488411> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.916573, 39.620720, 40.325294>,  <44.134735, 39.641396, 40.227425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.916573, 39.620720, 40.325294>,  <43.552971, 39.586258, 40.488411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.916573, 39.620720, 40.325294> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347560, -0.383305, -0.855733,
		-0.230031, 0.919595, -0.318482,
		0.909004, 0.086154, -0.407787,
		44.189274, 39.646564, 40.202957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.435066, 39.929188, 39.865318>,  <43.552971, 39.586258, 40.488411>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.435066, 39.929188, 39.865318> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.808128, 39.790775, 39.824478>,  <44.031963, 39.707729, 39.799973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.808128, 39.790775, 39.824478>,  <43.435066, 39.929188, 39.865318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.808128, 39.790775, 39.824478> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222006, -0.327366, -0.918447,
		0.284384, 0.879258, -0.382139,
		0.932652, -0.346029, -0.102103,
		44.087925, 39.686966, 39.793846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.645554, 40.295471, 39.300358>,  <43.435066, 39.929188, 39.865318>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.645554, 40.295471, 39.300358> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.890442, 39.980076, 39.323902>,  <44.037376, 39.790836, 39.338028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.890442, 39.980076, 39.323902>,  <43.645554, 40.295471, 39.300358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.890442, 39.980076, 39.323902> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021616, -0.091100, -0.995607,
		0.790389, 0.608262, -0.072818,
		0.612224, -0.788491, 0.058857,
		44.074108, 39.743530, 39.341560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.045147, 40.406002, 38.725559>,  <43.645554, 40.295471, 39.300358>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.045147, 40.406002, 38.725559> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.123516, 40.022858, 38.809570>,  <44.170540, 39.792969, 38.859978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.123516, 40.022858, 38.809570>,  <44.045147, 40.406002, 38.725559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.123516, 40.022858, 38.809570> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048589, -0.223395, -0.973516,
		0.979414, 0.180534, -0.090311,
		0.195928, -0.957863, 0.210024,
		44.182293, 39.735500, 38.872578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.563305, 40.139336, 38.260918>,  <44.045147, 40.406002, 38.725559>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.563305, 40.139336, 38.260918> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.389359, 39.804737, 38.394287>,  <44.284988, 39.603977, 38.474308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.389359, 39.804737, 38.394287>,  <44.563305, 40.139336, 38.260918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.389359, 39.804737, 38.394287> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196032, -0.449324, -0.871596,
		0.878897, -0.313670, 0.359376,
		-0.434870, -0.836492, 0.333420,
		44.258896, 39.553791, 38.494312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.908264, 39.489361, 37.985626>,  <44.563305, 40.139336, 38.260918>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.908264, 39.489361, 37.985626> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.546268, 39.365498, 38.102318>,  <44.329071, 39.291180, 38.172333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.546268, 39.365498, 38.102318>,  <44.908264, 39.489361, 37.985626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.546268, 39.365498, 38.102318> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115513, -0.481117, -0.869013,
		0.409455, -0.820145, 0.399635,
		-0.904988, -0.309659, 0.291734,
		44.274773, 39.272598, 38.189838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.957848, 38.840858, 37.812271>,  <44.908264, 39.489361, 37.985626>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.957848, 38.840858, 37.812271> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.565414, 38.877178, 37.880653>,  <44.329952, 38.898968, 37.921684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.565414, 38.877178, 37.880653>,  <44.957848, 38.840858, 37.812271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.565414, 38.877178, 37.880653> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186973, -0.673159, -0.715470,
		0.050122, -0.733903, 0.677403,
		-0.981086, 0.090796, 0.170960,
		44.271088, 38.904415, 37.931942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.750355, 38.193882, 37.930683>,  <44.957848, 38.840858, 37.812271>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.750355, 38.193882, 37.930683> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.426968, 38.402523, 37.821640>,  <44.232937, 38.527706, 37.756214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.426968, 38.402523, 37.821640>,  <44.750355, 38.193882, 37.930683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.426968, 38.402523, 37.821640> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267772, -0.738467, -0.618841,
		-0.524103, -0.427314, 0.736695,
		-0.808464, 0.521602, -0.272610,
		44.184429, 38.559006, 37.739857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.235039, 37.780289, 38.061489>,  <44.750355, 38.193882, 37.930683>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.235039, 37.780289, 38.061489> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.060818, 38.021496, 37.794159>,  <43.956284, 38.166218, 37.633759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.060818, 38.021496, 37.794159>,  <44.235039, 37.780289, 38.061489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.060818, 38.021496, 37.794159> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346090, -0.797567, -0.494074,
		-0.830973, 0.016106, 0.556080,
		-0.435553, 0.603016, -0.668330,
		43.930153, 38.202400, 37.593658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.757668, 37.335392, 37.804993>,  <44.235039, 37.780289, 38.061489>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.757668, 37.335392, 37.804993> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.756535, 37.626331, 37.530487>,  <43.755856, 37.800896, 37.365784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.756535, 37.626331, 37.530487>,  <43.757668, 37.335392, 37.804993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.756535, 37.626331, 37.530487> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007352, -0.686263, -0.727316,
		-0.999969, 0.002982, 0.007294,
		-0.002836, 0.727348, -0.686264,
		43.755684, 37.844536, 37.324608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.056171, 37.294662, 37.355877>,  <43.757668, 37.335392, 37.804993>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.056171, 37.294662, 37.355877> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.357895, 37.472904, 37.163021>,  <43.538929, 37.579849, 37.047310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.357895, 37.472904, 37.163021>,  <43.056171, 37.294662, 37.355877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.357895, 37.472904, 37.163021> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089623, -0.657615, -0.748004,
		-0.650374, 0.607436, -0.456108,
		0.754308, 0.445605, -0.482136,
		43.584187, 37.606586, 37.018379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.872189, 37.227188, 36.641186>,  <43.056171, 37.294662, 37.355877>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.872189, 37.227188, 36.641186> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.258450, 37.327797, 36.615082>,  <43.490204, 37.388161, 36.599419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.258450, 37.327797, 36.615082>,  <42.872189, 37.227188, 36.641186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.258450, 37.327797, 36.615082> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095725, -0.577827, -0.810526,
		-0.241572, 0.776437, -0.582055,
		0.965650, 0.251518, -0.065262,
		43.548145, 37.403252, 36.595505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.961277, 37.487511, 35.995773>,  <42.872189, 37.227188, 36.641186>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.961277, 37.487511, 35.995773> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.321606, 37.363541, 36.117409>,  <43.537804, 37.289158, 36.190392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.321606, 37.363541, 36.117409>,  <42.961277, 37.487511, 35.995773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.321606, 37.363541, 36.117409> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034450, -0.647137, -0.761595,
		0.432825, 0.696536, -0.572276,
		0.900819, -0.309922, 0.304093,
		43.591850, 37.270565, 36.208637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.315727, 37.319885, 35.417561>,  <42.961277, 37.487511, 35.995773>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.315727, 37.319885, 35.417561> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.516644, 37.120472, 35.700169>,  <43.637192, 37.000824, 35.869736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.516644, 37.120472, 35.700169>,  <43.315727, 37.319885, 35.417561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.516644, 37.120472, 35.700169> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134635, -0.762020, -0.633403,
		0.854156, 0.413273, -0.315632,
		0.502286, -0.498530, 0.706524,
		43.667328, 36.970913, 35.912125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.966095, 37.126812, 35.114635>,  <43.315727, 37.319885, 35.417561>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.966095, 37.126812, 35.114635> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.892231, 36.863079, 35.406162>,  <43.847912, 36.704838, 35.581078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.892231, 36.863079, 35.406162>,  <43.966095, 37.126812, 35.114635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.892231, 36.863079, 35.406162> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199403, -0.751285, -0.629134,
		0.962361, 0.029153, 0.270206,
		-0.184660, -0.659334, 0.728820,
		43.836834, 36.665279, 35.624809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.624821, 36.742908, 35.249119>,  <43.966095, 37.126812, 35.114635>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.624821, 36.742908, 35.249119> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.330688, 36.498245, 35.365852>,  <44.154209, 36.351448, 35.435894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.330688, 36.498245, 35.365852>,  <44.624821, 36.742908, 35.249119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.330688, 36.498245, 35.365852> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371445, -0.723924, -0.581345,
		0.566850, -0.319079, 0.759519,
		-0.735330, -0.611655, 0.291836,
		44.110088, 36.314747, 35.453403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.252392, 36.415337, 35.755653>,  <44.624821, 36.742908, 35.249119>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.252392, 36.415337, 35.755653> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.028946, 36.328678, 35.435402>,  <44.894878, 36.276684, 35.243252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.028946, 36.328678, 35.435402>,  <45.252392, 36.415337, 35.755653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.028946, 36.328678, 35.435402> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151907, 0.922235, -0.355536,
		0.815397, -0.320230, -0.482266,
		-0.558617, -0.216643, -0.800633,
		44.861362, 36.263687, 35.195213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.067162, 36.508423, 35.893856>,  <45.252392, 36.415337, 35.755653>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.067162, 36.508423, 35.893856> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.371101, 36.359108, 36.106754>,  <46.553467, 36.269520, 36.234493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.371101, 36.359108, 36.106754>,  <46.067162, 36.508423, 35.893856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.371101, 36.359108, 36.106754> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503654, 0.179639, 0.845022,
		-0.411047, -0.910158, -0.051508,
		0.759851, -0.373286, 0.532244,
		46.599056, 36.247124, 36.266426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.787739, 36.074627, 36.456295>,  <46.067162, 36.508423, 35.893856>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.787739, 36.074627, 36.456295> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.144424, 36.188606, 36.596954>,  <46.358437, 36.256992, 36.681351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.144424, 36.188606, 36.596954>,  <45.787739, 36.074627, 36.456295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.144424, 36.188606, 36.596954> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414127, 0.200201, 0.887929,
		0.182600, -0.937407, 0.296521,
		0.891715, 0.284934, 0.351649,
		46.411938, 36.274090, 36.702446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.781822, 35.973831, 37.136143>,  <45.787739, 36.074627, 36.456295>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.781822, 35.973831, 37.136143> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.109306, 36.203117, 37.122662>,  <46.305798, 36.340687, 37.114571>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.109306, 36.203117, 37.122662>,  <45.781822, 35.973831, 37.136143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.109306, 36.203117, 37.122662> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158647, 0.282229, 0.946138,
		0.551852, -0.769268, 0.322004,
		0.818712, 0.573214, -0.033707,
		46.354919, 36.375080, 37.112549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.181400, 35.781387, 37.663204>,  <45.781822, 35.973831, 37.136143>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.181400, 35.781387, 37.663204> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.285736, 36.158119, 37.578426>,  <46.348339, 36.384159, 37.527557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.285736, 36.158119, 37.578426>,  <46.181400, 35.781387, 37.663204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.285736, 36.158119, 37.578426> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175995, 0.262261, 0.948812,
		0.949204, -0.210186, 0.234165,
		0.260839, 0.941828, -0.211948,
		46.363987, 36.440666, 37.514843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.668228, 35.960793, 38.152229>,  <46.181400, 35.781387, 37.663204>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.668228, 35.960793, 38.152229> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.537212, 36.309326, 38.006081>,  <46.458603, 36.518444, 37.918392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.537212, 36.309326, 38.006081>,  <46.668228, 35.960793, 38.152229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.537212, 36.309326, 38.006081> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075046, 0.361489, 0.929351,
		0.941851, 0.331822, -0.053014,
		-0.327543, 0.871332, -0.365371,
		46.438950, 36.570724, 37.896469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.914558, 36.396908, 38.631950>,  <46.668228, 35.960793, 38.152229>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.914558, 36.396908, 38.631950> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.636356, 36.604340, 38.433018>,  <46.469437, 36.728798, 38.313656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.636356, 36.604340, 38.433018>,  <46.914558, 36.396908, 38.631950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.636356, 36.604340, 38.433018> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270723, 0.452023, 0.849932,
		0.665568, 0.725772, -0.173992,
		-0.695505, 0.518584, -0.497336,
		46.427704, 36.759914, 38.283817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.959301, 37.176258, 38.913361>,  <46.914558, 36.396908, 38.631950>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.959301, 37.176258, 38.913361> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.607315, 37.122448, 38.731125>,  <46.396122, 37.090160, 38.621784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.607315, 37.122448, 38.731125>,  <46.959301, 37.176258, 38.913361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.607315, 37.122448, 38.731125> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465137, 0.438783, 0.768841,
		0.096476, 0.888466, -0.448687,
		-0.879966, -0.134527, -0.455591,
		46.343327, 37.082088, 38.594448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.764130, 37.795906, 38.943291>,  <46.959301, 37.176258, 38.913361>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.764130, 37.795906, 38.943291> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.449066, 37.552917, 38.902153>,  <46.260029, 37.407124, 38.877468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.449066, 37.552917, 38.902153>,  <46.764130, 37.795906, 38.943291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.449066, 37.552917, 38.902153> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361073, 0.319871, 0.875962,
		-0.499221, 0.727094, -0.471289,
		-0.787658, -0.607468, -0.102848,
		46.212769, 37.370678, 38.871300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.213322, 38.187611, 39.036289>,  <46.764130, 37.795906, 38.943291>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.213322, 38.187611, 39.036289> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.113041, 37.811092, 39.126720>,  <46.052872, 37.585182, 39.180981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.113041, 37.811092, 39.126720>,  <46.213322, 38.187611, 39.036289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.113041, 37.811092, 39.126720> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351011, 0.306036, 0.884948,
		-0.902185, 0.142503, -0.407129,
		-0.250704, -0.941294, 0.226081,
		46.037830, 37.528706, 39.194546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.626373, 38.256813, 39.460293>,  <46.213322, 38.187611, 39.036289>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.626373, 38.256813, 39.460293> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.744640, 37.882263, 39.535961>,  <45.815598, 37.657532, 39.581360>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.744640, 37.882263, 39.535961>,  <45.626373, 38.256813, 39.460293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.744640, 37.882263, 39.535961> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340994, 0.081529, 0.936523,
		-0.892360, -0.341400, -0.295193,
		0.295663, -0.936375, 0.189169,
		45.833340, 37.601349, 39.592712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.055378, 37.913082, 39.847221>,  <45.626373, 38.256813, 39.460293>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.055378, 37.913082, 39.847221> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.372543, 37.682236, 39.925426>,  <45.562843, 37.543728, 39.972351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.372543, 37.682236, 39.925426>,  <45.055378, 37.913082, 39.847221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.372543, 37.682236, 39.925426> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306873, -0.101006, 0.946376,
		-0.526421, -0.810391, -0.257191,
		0.792912, -0.577117, 0.195515,
		45.610416, 37.509102, 39.984081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.746059, 37.301628, 40.084007>,  <45.055378, 37.913082, 39.847221>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.746059, 37.301628, 40.084007> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.123978, 37.288784, 40.214443>,  <45.350727, 37.281078, 40.292706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.123978, 37.288784, 40.214443>,  <44.746059, 37.301628, 40.084007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.123978, 37.288784, 40.214443> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327114, -0.150199, 0.932972,
		0.019022, -0.988134, -0.152410,
		0.944793, -0.032108, 0.326090,
		45.407417, 37.279152, 40.312271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.833530, 36.796970, 40.709736>,  <44.746059, 37.301628, 40.084007>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.833530, 36.796970, 40.709736> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.164749, 37.017029, 40.752964>,  <45.363480, 37.149063, 40.778900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.164749, 37.017029, 40.752964>,  <44.833530, 36.796970, 40.709736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.164749, 37.017029, 40.752964> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200986, 0.111330, 0.973247,
		0.523395, -0.827615, 0.202758,
		0.828048, 0.550144, 0.108069,
		45.413162, 37.182072, 40.785385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.197487, 36.434494, 41.202003>,  <44.833530, 36.796970, 40.709736>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.197487, 36.434494, 41.202003> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.333572, 36.810478, 41.212761>,  <45.415226, 37.036068, 41.219215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.333572, 36.810478, 41.212761>,  <45.197487, 36.434494, 41.202003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.333572, 36.810478, 41.212761> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135701, 0.020774, 0.990532,
		0.930504, -0.340646, 0.134622,
		0.340217, 0.939962, 0.026896,
		45.435638, 37.092468, 41.220829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.629551, 36.386024, 41.706715>,  <45.197487, 36.434494, 41.202003>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.629551, 36.386024, 41.706715> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.510815, 36.765598, 41.663994>,  <45.439571, 36.993343, 41.638363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.510815, 36.765598, 41.663994>,  <45.629551, 36.386024, 41.706715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.510815, 36.765598, 41.663994> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081601, 0.086224, 0.992928,
		0.951434, 0.303457, 0.051839,
		-0.296842, 0.948936, -0.106798,
		45.421761, 37.050278, 41.631954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.081806, 36.763714, 42.112640>,  <45.629551, 36.386024, 41.706715>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.081806, 36.763714, 42.112640> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.752445, 36.981136, 42.047451>,  <45.554829, 37.111591, 42.008335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.752445, 36.981136, 42.047451>,  <46.081806, 36.763714, 42.112640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.752445, 36.981136, 42.047451> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127382, 0.102823, 0.986510,
		0.552980, 0.833051, -0.015425,
		-0.823399, 0.543556, -0.162975,
		45.505424, 37.144203, 41.998558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.130447, 37.275272, 42.608784>,  <46.081806, 36.763714, 42.112640>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.130447, 37.275272, 42.608784> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.742321, 37.307030, 42.517414>,  <45.509445, 37.326084, 42.462593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.742321, 37.307030, 42.517414>,  <46.130447, 37.275272, 42.608784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.742321, 37.307030, 42.517414> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196504, 0.291729, 0.936099,
		0.140956, 0.953201, -0.267469,
		-0.970318, 0.079390, -0.228429,
		45.451225, 37.330845, 42.448887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.898697, 37.955017, 42.856579>,  <46.130447, 37.275272, 42.608784>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.898697, 37.955017, 42.856579> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.556042, 37.752987, 42.814487>,  <45.350449, 37.631771, 42.789234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.556042, 37.752987, 42.814487>,  <45.898697, 37.955017, 42.856579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.556042, 37.752987, 42.814487> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211595, 0.157929, 0.964513,
		-0.470530, 0.848505, -0.242159,
		-0.856638, -0.505072, -0.105229,
		45.299049, 37.601463, 42.782917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.531258, 38.369873, 43.191742>,  <45.898697, 37.955017, 42.856579>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.531258, 38.369873, 43.191742> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.302261, 38.042492, 43.172157>,  <45.164864, 37.846066, 43.160408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.302261, 38.042492, 43.172157>,  <45.531258, 38.369873, 43.191742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.302261, 38.042492, 43.172157> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302935, 0.155655, 0.940214,
		-0.761897, 0.553092, -0.337048,
		-0.572488, -0.818450, -0.048958,
		45.130516, 37.796955, 43.157471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.838028, 38.596622, 43.285591>,  <45.531258, 38.369873, 43.191742>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.838028, 38.596622, 43.285591> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.878437, 38.221706, 43.419025>,  <44.902683, 37.996758, 43.499088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.878437, 38.221706, 43.419025>,  <44.838028, 38.596622, 43.285591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.878437, 38.221706, 43.419025> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277120, 0.295523, 0.914260,
		-0.955510, -0.184805, -0.229887,
		0.101022, -0.937291, 0.333588,
		44.908745, 37.940517, 43.519100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.924019, 37.639809, 40.348167> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.744495, 37.284645, 40.307789>,  <37.636784, 37.071548, 40.283562>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.744495, 37.284645, 40.307789>,  <37.924019, 37.639809, 40.348167>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.744495, 37.284645, 40.307789> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536615, -0.177451, -0.824958,
		0.714575, -0.424414, 0.556107,
		-0.448805, -0.887910, -0.100944,
		37.609852, 37.018272, 40.277504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.430584, 37.287983, 40.192715>,  <37.924019, 37.639809, 40.348167>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.430584, 37.287983, 40.192715> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.111519, 37.076855, 40.075996>,  <37.920078, 36.950180, 40.005966>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.111519, 37.076855, 40.075996>,  <38.430584, 37.287983, 40.192715>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.111519, 37.076855, 40.075996> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450256, -0.199281, -0.870377,
		0.401250, -0.825650, 0.396611,
		-0.797664, -0.527816, -0.291793,
		37.872219, 36.918510, 39.988457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.759068, 36.697525, 39.811062>,  <38.430584, 37.287983, 40.192715>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.759068, 36.697525, 39.811062> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.372910, 36.680244, 39.708179>,  <38.141216, 36.669876, 39.646450>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.372910, 36.680244, 39.708179>,  <38.759068, 36.697525, 39.811062>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.372910, 36.680244, 39.708179> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256712, -0.331403, -0.907893,
		-0.046019, -0.942500, 0.331023,
		-0.965392, -0.043197, -0.257202,
		38.083294, 36.667286, 39.631020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.537971, 36.010498, 39.545006>,  <38.759068, 36.697525, 39.811062>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.537971, 36.010498, 39.545006> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.263374, 36.245491, 39.373615>,  <38.098618, 36.386486, 39.270782>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.263374, 36.245491, 39.373615>,  <38.537971, 36.010498, 39.545006>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.263374, 36.245491, 39.373615> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257805, -0.354336, -0.898879,
		-0.679900, -0.727537, 0.091794,
		-0.686493, 0.587483, -0.428475,
		38.057426, 36.421734, 39.245071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.255825, 35.568966, 39.100464>,  <38.537971, 36.010498, 39.545006>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.255825, 35.568966, 39.100464> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.117634, 35.925343, 38.982567>,  <38.034718, 36.139168, 38.911827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.117634, 35.925343, 38.982567>,  <38.255825, 35.568966, 39.100464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.117634, 35.925343, 38.982567> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094900, -0.279303, -0.955502,
		-0.933615, -0.358080, 0.011944,
		-0.345482, 0.890937, -0.294743,
		38.013988, 36.192623, 38.894142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.697186, 35.448536, 38.653492>,  <38.255825, 35.568966, 39.100464>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.697186, 35.448536, 38.653492> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.839092, 35.806435, 38.544994>,  <37.924236, 36.021172, 38.479897>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.839092, 35.806435, 38.544994>,  <37.697186, 35.448536, 38.653492>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.839092, 35.806435, 38.544994> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291622, -0.381539, -0.877146,
		-0.888311, 0.232083, -0.396285,
		0.354769, 0.894743, -0.271244,
		37.945522, 36.074856, 38.463619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.378574, 35.610916, 38.054890>,  <37.697186, 35.448536, 38.653492>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.378574, 35.610916, 38.054890> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.708817, 35.836224, 38.041664>,  <37.906963, 35.971409, 38.033730>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.708817, 35.836224, 38.041664>,  <37.378574, 35.610916, 38.054890>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.708817, 35.836224, 38.041664> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228098, -0.386785, -0.893515,
		-0.516083, 0.730151, -0.447814,
		0.825609, 0.563273, -0.033067,
		37.956501, 36.005207, 38.031746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.415180, 35.816689, 37.447376>,  <37.378574, 35.610916, 38.054890>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.415180, 35.816689, 37.447376> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.792744, 35.856224, 37.573402>,  <38.019283, 35.879944, 37.649017>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.792744, 35.856224, 37.573402>,  <37.415180, 35.816689, 37.447376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.792744, 35.856224, 37.573402> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327732, -0.396997, -0.857313,
		0.040344, 0.912483, -0.407122,
		0.943909, 0.098839, 0.315066,
		38.075916, 35.885876, 37.667923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.810719, 35.903488, 36.868767>,  <37.415180, 35.816689, 37.447376>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.810719, 35.903488, 36.868767> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.082890, 35.774776, 37.132122>,  <38.246193, 35.697548, 37.290134>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.082890, 35.774776, 37.132122>,  <37.810719, 35.903488, 36.868767>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.082890, 35.774776, 37.132122> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405685, -0.582801, -0.704104,
		0.610275, 0.746191, -0.266014,
		0.680430, -0.321779, 0.658387,
		38.287018, 35.678242, 37.329639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.512268, 35.953312, 36.420738>,  <37.810719, 35.903488, 36.868767>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.512268, 35.953312, 36.420738> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.601479, 35.733421, 36.742748>,  <38.655006, 35.601486, 36.935955>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.601479, 35.733421, 36.742748>,  <38.512268, 35.953312, 36.420738>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.601479, 35.733421, 36.742748> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456656, -0.670684, -0.584507,
		0.861234, 0.497979, 0.101456,
		0.223027, -0.549727, 0.805021,
		38.668388, 35.568504, 36.984253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.285656, 35.730316, 36.503616>,  <38.512268, 35.953312, 36.420738>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.285656, 35.730316, 36.503616> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.069340, 35.450993, 36.691193>,  <38.939548, 35.283398, 36.803738>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.069340, 35.450993, 36.691193>,  <39.285656, 35.730316, 36.503616>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.069340, 35.450993, 36.691193> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267975, -0.671475, -0.690877,
		0.797329, -0.247957, 0.550259,
		-0.540792, -0.698312, 0.468940,
		38.907101, 35.241501, 36.831875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.713394, 35.059681, 36.351906>,  <39.285656, 35.730316, 36.503616>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.713394, 35.059681, 36.351906> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.355381, 34.962502, 36.501511>,  <39.140572, 34.904194, 36.591274>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.355381, 34.962502, 36.501511>,  <39.713394, 35.059681, 36.351906>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.355381, 34.962502, 36.501511> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039918, -0.791596, -0.609740,
		0.444202, -0.560669, 0.698809,
		-0.895037, -0.242952, 0.374010,
		39.086868, 34.889614, 36.613712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.262585, 35.548241, 36.235813>,  <39.713394, 35.059681, 36.351906>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.262585, 35.548241, 36.235813> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.481380, 35.746662, 36.505550>,  <40.612656, 35.865715, 36.667393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.481380, 35.746662, 36.505550>,  <40.262585, 35.548241, 36.235813>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.481380, 35.746662, 36.505550> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822312, 0.469323, 0.321774,
		-0.156868, -0.730526, 0.664623,
		0.546988, 0.496052, 0.674342,
		40.645477, 35.895477, 36.707851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.032482, 35.625725, 36.511639>,  <40.262585, 35.548241, 36.235813>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.032482, 35.625725, 36.511639> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.383347, 35.747978, 36.659790>,  <41.593864, 35.821331, 36.748680>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.383347, 35.747978, 36.659790>,  <41.032482, 35.625725, 36.511639>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.383347, 35.747978, 36.659790> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128793, -0.892780, 0.431691,
		0.462603, -0.330960, -0.822474,
		0.877161, 0.305630, 0.370377,
		41.646496, 35.839668, 36.770905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.247059, 34.864021, 36.530594>,  <41.032482, 35.625725, 36.511639>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.247059, 34.864021, 36.530594> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.468098, 34.565357, 36.382462>,  <41.600719, 34.386158, 36.293583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.468098, 34.565357, 36.382462>,  <41.247059, 34.864021, 36.530594>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.468098, 34.565357, 36.382462> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187063, -0.544106, 0.817898,
		-0.812186, -0.382692, -0.440342,
		0.552595, -0.746657, -0.370328,
		41.633877, 34.341362, 36.271362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.851856, 34.246094, 36.542900>,  <41.247059, 34.864021, 36.530594>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.851856, 34.246094, 36.542900> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.240620, 34.151955, 36.541790>,  <41.473877, 34.095470, 36.541122>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.240620, 34.151955, 36.541790>,  <40.851856, 34.246094, 36.542900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.240620, 34.151955, 36.541790> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111041, -0.468897, 0.876245,
		-0.207520, -0.851322, -0.481858,
		0.971908, -0.235344, -0.002774,
		41.532192, 34.081352, 36.540958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.872921, 33.593060, 36.534328>,  <40.851856, 34.246094, 36.542900>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.872921, 33.593060, 36.534328> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.229820, 33.685337, 36.689594>,  <41.443962, 33.740704, 36.782753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.229820, 33.685337, 36.689594>,  <40.872921, 33.593060, 36.534328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.229820, 33.685337, 36.689594> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251133, -0.460892, 0.851182,
		0.375260, -0.856949, -0.353297,
		0.892251, 0.230690, 0.388162,
		41.497494, 33.754543, 36.806042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.060631, 32.956947, 36.896049>,  <40.872921, 33.593060, 36.534328>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.060631, 32.956947, 36.896049> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.273952, 33.271816, 37.019947>,  <41.401943, 33.460739, 37.094288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.273952, 33.271816, 37.019947>,  <41.060631, 32.956947, 36.896049>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.273952, 33.271816, 37.019947> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193331, -0.243055, 0.950551,
		0.823537, -0.566814, 0.022564,
		0.533301, 0.787176, 0.309748,
		41.433945, 33.507969, 37.112873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.399456, 32.659519, 37.440674>,  <41.060631, 32.956947, 36.896049>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.399456, 32.659519, 37.440674> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.444183, 33.056763, 37.454723>,  <41.471020, 33.295109, 37.463154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.444183, 33.056763, 37.454723>,  <41.399456, 32.659519, 37.440674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.444183, 33.056763, 37.454723> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055904, -0.041574, 0.997570,
		0.992155, -0.109586, -0.060167,
		0.111821, 0.993108, 0.035122,
		41.477730, 33.354694, 37.465260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.935928, 32.785271, 37.961491>,  <41.399456, 32.659519, 37.440674>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.935928, 32.785271, 37.961491> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.712612, 33.116322, 37.938354>,  <41.578621, 33.314953, 37.924473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.712612, 33.116322, 37.938354>,  <41.935928, 32.785271, 37.961491>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.712612, 33.116322, 37.938354> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048085, 0.101877, 0.993634,
		0.828250, 0.551957, -0.096674,
		-0.558292, 0.827626, -0.057839,
		41.545124, 33.364609, 37.921001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.201992, 33.129173, 38.498062>,  <41.935928, 32.785271, 37.961491>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.201992, 33.129173, 38.498062> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.871292, 33.341938, 38.424786>,  <41.672871, 33.469597, 38.380821>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.871292, 33.341938, 38.424786>,  <42.201992, 33.129173, 38.498062>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.871292, 33.341938, 38.424786> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033020, 0.279184, 0.959670,
		0.561602, 0.799454, -0.213251,
		-0.826748, 0.531911, -0.183189,
		41.623268, 33.501511, 38.369827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.335682, 33.821232, 38.878677>,  <42.201992, 33.129173, 38.498062>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.335682, 33.821232, 38.878677> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.945473, 33.779671, 38.801163>,  <41.711346, 33.754734, 38.754654>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.945473, 33.779671, 38.801163>,  <42.335682, 33.821232, 38.878677>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.945473, 33.779671, 38.801163> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219744, 0.428765, 0.876284,
		-0.007960, 0.897421, -0.441103,
		-0.975525, -0.103905, -0.193790,
		41.652817, 33.748501, 38.743027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.113392, 34.460323, 39.102131>,  <42.335682, 33.821232, 38.878677>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.113392, 34.460323, 39.102131> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.800377, 34.211281, 39.101440>,  <41.612568, 34.061855, 39.101025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.800377, 34.211281, 39.101440>,  <42.113392, 34.460323, 39.102131>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.800377, 34.211281, 39.101440> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314320, 0.392661, 0.864304,
		-0.537438, 0.676893, -0.502968,
		-0.782536, -0.622602, -0.001730,
		41.565617, 34.024502, 39.100922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.522049, 34.859848, 39.249470>,  <42.113392, 34.460323, 39.102131>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.522049, 34.859848, 39.249470> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.407497, 34.481319, 39.309425>,  <41.338768, 34.254204, 39.345398>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.407497, 34.481319, 39.309425>,  <41.522049, 34.859848, 39.249470>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.407497, 34.481319, 39.309425> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357474, 0.250675, 0.899652,
		-0.888933, 0.204058, -0.410072,
		-0.286375, -0.946321, 0.149887,
		41.321587, 34.197422, 39.354393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.806934, 34.896664, 39.405048>,  <41.522049, 34.859848, 39.249470>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.806934, 34.896664, 39.405048> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.947239, 34.553501, 39.555225>,  <41.031422, 34.347603, 39.645332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.947239, 34.553501, 39.555225>,  <40.806934, 34.896664, 39.405048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.947239, 34.553501, 39.555225> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386775, 0.232405, 0.892408,
		-0.852859, -0.458239, -0.250297,
		0.350766, -0.857908, 0.375444,
		41.052467, 34.296127, 39.667858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.222919, 34.601612, 39.801758>,  <40.806934, 34.896664, 39.405048>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.222919, 34.601612, 39.801758> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.533836, 34.400768, 39.953392>,  <40.720387, 34.280262, 40.044373>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.533836, 34.400768, 39.953392>,  <40.222919, 34.601612, 39.801758>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.533836, 34.400768, 39.953392> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299201, 0.235021, 0.924794,
		-0.553442, -0.832256, 0.032447,
		0.777291, -0.502111, 0.379082,
		40.767025, 34.250134, 40.067116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.016758, 34.307720, 40.329643>,  <40.222919, 34.601612, 39.801758>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.016758, 34.307720, 40.329643> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.405525, 34.278030, 40.418968>,  <40.638786, 34.260216, 40.472561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.405525, 34.278030, 40.418968>,  <40.016758, 34.307720, 40.329643>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.405525, 34.278030, 40.418968> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209852, 0.156026, 0.965203,
		-0.106485, -0.984960, 0.136068,
		0.971917, -0.074225, 0.223311,
		40.697102, 34.255764, 40.485962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.120117, 33.767639, 40.869930>,  <40.016758, 34.307720, 40.329643>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.120117, 33.767639, 40.869930> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.451530, 33.990604, 40.891144>,  <40.650379, 34.124386, 40.903873>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.451530, 33.990604, 40.891144>,  <40.120117, 33.767639, 40.869930>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.451530, 33.990604, 40.891144> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026371, -0.055766, 0.998096,
		0.559312, -0.828359, -0.031505,
		0.828538, 0.557416, 0.053035,
		40.700092, 34.157829, 40.907055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.260460, 33.154728, 41.133759>,  <40.120117, 33.767639, 40.869930>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.260460, 33.154728, 41.133759> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.046642, 32.833286, 41.238430>,  <39.918350, 32.640419, 41.301235>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.046642, 32.833286, 41.238430>,  <40.260460, 33.154728, 41.133759>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.046642, 32.833286, 41.238430> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096688, -0.365748, -0.925678,
		0.839592, -0.469514, 0.273208,
		-0.534544, -0.803608, 0.261682,
		39.886280, 32.592205, 41.316936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.696739, 32.453865, 40.974171>,  <40.260460, 33.154728, 41.133759>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.696739, 32.453865, 40.974171> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.306896, 32.364983, 40.985229>,  <40.072990, 32.311653, 40.991863>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.306896, 32.364983, 40.985229>,  <40.696739, 32.453865, 40.974171>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.306896, 32.364983, 40.985229> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097125, -0.530765, -0.841935,
		0.201754, -0.817872, 0.538870,
		-0.974609, -0.222202, 0.027648,
		40.014515, 32.298321, 40.993523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.702057, 31.739119, 40.760201>,  <40.696739, 32.453865, 40.974171>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.702057, 31.739119, 40.760201> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.321762, 31.857723, 40.724007>,  <40.093586, 31.928886, 40.702290>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.321762, 31.857723, 40.724007>,  <40.702057, 31.739119, 40.760201>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.321762, 31.857723, 40.724007> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093715, -0.553102, -0.827826,
		-0.295505, -0.778562, 0.553640,
		-0.950734, 0.296511, -0.090481,
		40.036541, 31.946676, 40.696861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.265568, 31.089947, 40.701252>,  <40.702057, 31.739119, 40.760201>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.265568, 31.089947, 40.701252> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.050797, 31.383291, 40.534451>,  <39.921932, 31.559298, 40.434372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.050797, 31.383291, 40.534451>,  <40.265568, 31.089947, 40.701252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.050797, 31.383291, 40.534451> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032443, -0.511878, -0.858445,
		-0.843003, -0.447397, 0.298635,
		-0.536930, 0.733360, -0.417000,
		39.889717, 31.603300, 40.409351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.852562, 30.733294, 40.232933>,  <40.265568, 31.089947, 40.701252>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.852562, 30.733294, 40.232933> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.818314, 31.114019, 40.115139>,  <39.797764, 31.342455, 40.044464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.818314, 31.114019, 40.115139>,  <39.852562, 30.733294, 40.232933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.818314, 31.114019, 40.115139> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200163, -0.305976, -0.930759,
		-0.976014, -0.020747, 0.216716,
		-0.085620, 0.951813, -0.294484,
		39.792629, 31.399563, 40.026794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.348087, 30.784529, 39.630157>,  <39.852562, 30.733294, 40.232933>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.348087, 30.784529, 39.630157> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.572472, 31.114918, 39.607910>,  <39.707100, 31.313152, 39.594563>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.572472, 31.114918, 39.607910>,  <39.348087, 30.784529, 39.630157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.572472, 31.114918, 39.607910> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119272, 0.014151, -0.992761,
		-0.819208, 0.563530, 0.106454,
		0.560957, 0.825974, -0.055620,
		39.740757, 31.362711, 39.591225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.943882, 31.226141, 39.255558>,  <39.348087, 30.784529, 39.630157>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.943882, 31.226141, 39.255558> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.305504, 31.392340, 39.215466>,  <39.522476, 31.492058, 39.191410>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.305504, 31.392340, 39.215466>,  <38.943882, 31.226141, 39.255558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.305504, 31.392340, 39.215466> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176207, 0.148669, -0.973061,
		-0.389401, 0.897363, 0.207619,
		0.904056, 0.415495, -0.100230,
		39.576721, 31.516989, 39.185398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.848507, 31.965464, 38.843800>,  <38.943882, 31.226141, 39.255558>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.848507, 31.965464, 38.843800> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.229160, 31.847116, 38.810677>,  <39.457554, 31.776108, 38.790802>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.229160, 31.847116, 38.810677>,  <38.848507, 31.965464, 38.843800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.229160, 31.847116, 38.810677> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055316, 0.100133, -0.993435,
		0.302219, 0.949965, 0.078923,
		0.951632, -0.295869, -0.082810,
		39.514648, 31.758356, 38.785835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.109352, 32.442764, 38.332047>,  <38.848507, 31.965464, 38.843800>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.109352, 32.442764, 38.332047> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.347141, 32.121136, 38.335526>,  <39.489815, 31.928160, 38.337612>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.347141, 32.121136, 38.335526>,  <39.109352, 32.442764, 38.332047>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.347141, 32.121136, 38.335526> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024587, -0.028991, -0.999277,
		0.803739, 0.593831, -0.037004,
		0.594474, -0.804068, 0.008701,
		39.525482, 31.879915, 38.338135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.639015, 32.488171, 37.736336>,  <39.109352, 32.442764, 38.332047>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.639015, 32.488171, 37.736336> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.661961, 32.096909, 37.816261>,  <39.675728, 31.862152, 37.864216>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.661961, 32.096909, 37.816261>,  <39.639015, 32.488171, 37.736336>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.661961, 32.096909, 37.816261> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065690, -0.203407, -0.976888,
		0.996190, 0.042916, -0.075924,
		0.057368, -0.978153, 0.199813,
		39.679173, 31.803463, 37.876205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.148895, 32.209820, 37.214737>,  <39.639015, 32.488171, 37.736336>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.148895, 32.209820, 37.214737> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.936089, 31.904957, 37.362293>,  <39.808403, 31.722040, 37.450825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.936089, 31.904957, 37.362293>,  <40.148895, 32.209820, 37.214737>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.936089, 31.904957, 37.362293> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198188, -0.311473, -0.929358,
		0.823212, -0.567544, 0.014660,
		-0.532018, -0.762154, 0.368889,
		39.776482, 31.676311, 37.472961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.341267, 31.706480, 36.808502>,  <40.148895, 32.209820, 37.214737>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.341267, 31.706480, 36.808502> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.002747, 31.576128, 36.977066>,  <39.799637, 31.497917, 37.078205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.002747, 31.576128, 36.977066>,  <40.341267, 31.706480, 36.808502>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.002747, 31.576128, 36.977066> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299179, -0.363768, -0.882136,
		0.440766, -0.872625, 0.210359,
		-0.846296, -0.325881, 0.421408,
		39.748859, 31.478363, 37.103489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<40.315445, 33.207417, 45.091400> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.921646, 33.195766, 45.022205>,  <39.685368, 33.188778, 44.980690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.921646, 33.195766, 45.022205>,  <40.315445, 33.207417, 45.091400>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.921646, 33.195766, 45.022205> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172539, -0.338677, -0.924948,
		-0.031648, -0.940452, 0.338450,
		-0.984494, -0.029123, -0.172983,
		39.626297, 33.187031, 44.970310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.163685, 32.509346, 44.837086>,  <40.315445, 33.207417, 45.091400>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.163685, 32.509346, 44.837086> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.864883, 32.727238, 44.684639>,  <39.685600, 32.857971, 44.593170>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.864883, 32.727238, 44.684639>,  <40.163685, 32.509346, 44.837086>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.864883, 32.727238, 44.684639> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080644, -0.494791, -0.865262,
		-0.659907, -0.677092, 0.325683,
		-0.747007, 0.544728, -0.381119,
		39.640781, 32.890656, 44.570305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.856594, 32.055050, 44.318619>,  <40.163685, 32.509346, 44.837086>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.856594, 32.055050, 44.318619> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.680408, 32.407219, 44.248360>,  <39.574696, 32.618519, 44.206203>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.680408, 32.407219, 44.248360>,  <39.856594, 32.055050, 44.318619>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.680408, 32.407219, 44.248360> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146951, -0.263710, -0.953343,
		-0.885662, -0.394101, 0.245533,
		-0.440463, 0.880421, -0.175644,
		39.548271, 32.671345, 44.195667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.198463, 31.890535, 44.001095>,  <39.856594, 32.055050, 44.318619>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.198463, 31.890535, 44.001095> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.289852, 32.266842, 43.900887>,  <39.344685, 32.492626, 43.840759>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.289852, 32.266842, 43.900887>,  <39.198463, 31.890535, 44.001095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.289852, 32.266842, 43.900887> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140037, -0.222899, -0.964731,
		-0.963427, 0.255492, 0.080817,
		0.228467, 0.940766, -0.250525,
		39.358391, 32.549072, 43.825729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.798847, 32.071663, 43.404469>,  <39.198463, 31.890535, 44.001095>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.798847, 32.071663, 43.404469> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.095337, 32.340057, 43.396816>,  <39.273232, 32.501095, 43.392223>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.095337, 32.340057, 43.396816>,  <38.798847, 32.071663, 43.404469>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.095337, 32.340057, 43.396816> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024641, -0.055686, -0.998144,
		-0.670802, 0.739380, -0.057810,
		0.741227, 0.670982, -0.019135,
		39.317703, 32.541351, 43.391075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.601997, 32.622829, 42.957943>,  <38.798847, 32.071663, 43.404469>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.601997, 32.622829, 42.957943> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.001652, 32.631741, 42.971962>,  <39.241444, 32.637089, 42.980373>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.001652, 32.631741, 42.971962>,  <38.601997, 32.622829, 42.957943>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.001652, 32.631741, 42.971962> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032750, 0.096348, -0.994809,
		-0.025543, 0.995098, 0.095535,
		0.999137, 0.022281, 0.035051,
		39.301392, 32.638424, 42.982475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.745415, 32.955730, 42.370972>,  <38.601997, 32.622829, 42.957943>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.745415, 32.955730, 42.370972> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.101379, 32.790676, 42.448723>,  <39.314960, 32.691643, 42.495373>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.101379, 32.790676, 42.448723>,  <38.745415, 32.955730, 42.370972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.101379, 32.790676, 42.448723> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219702, 0.014315, -0.975462,
		0.399725, 0.910785, 0.103395,
		0.889916, -0.412632, 0.194379,
		39.368355, 32.666885, 42.507038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.215206, 33.377567, 42.085659>,  <38.745415, 32.955730, 42.370972>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.215206, 33.377567, 42.085659> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.374866, 33.011127, 42.100861>,  <39.470661, 32.791264, 42.109982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.374866, 33.011127, 42.100861>,  <39.215206, 33.377567, 42.085659>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.374866, 33.011127, 42.100861> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177267, 0.036441, -0.983488,
		0.899588, 0.399292, 0.176940,
		0.399146, -0.916099, 0.038000,
		39.494610, 32.736298, 42.112259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.809841, 33.398499, 41.627331>,  <39.215206, 33.377567, 42.085659>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.809841, 33.398499, 41.627331> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.722172, 33.012226, 41.683071>,  <39.669571, 32.780460, 41.716515>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.722172, 33.012226, 41.683071>,  <39.809841, 33.398499, 41.627331>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.722172, 33.012226, 41.683071> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095974, -0.163468, -0.981869,
		0.970954, -0.201828, 0.128509,
		-0.219176, -0.965683, 0.139349,
		39.656418, 32.722523, 41.724876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.596733, 33.521271, 41.663567>,  <39.809841, 33.398499, 41.627331>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.596733, 33.521271, 41.663567> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.692070, 33.886745, 41.531891>,  <40.749271, 34.106030, 41.452885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.692070, 33.886745, 41.531891>,  <40.596733, 33.521271, 41.663567>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.692070, 33.886745, 41.531891> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337390, 0.395746, 0.854139,
		0.910694, -0.092508, 0.402591,
		0.238339, 0.913689, -0.329192,
		40.763573, 34.160851, 41.433132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.864838, 33.826935, 42.225822>,  <40.596733, 33.521271, 41.663567>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.864838, 33.826935, 42.225822> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.772091, 34.122105, 41.972301>,  <40.716442, 34.299206, 41.820190>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.772091, 34.122105, 41.972301>,  <40.864838, 33.826935, 42.225822>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.772091, 34.122105, 41.972301> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458075, 0.491961, 0.740366,
		0.858141, 0.461993, 0.223957,
		-0.231866, 0.737927, -0.633799,
		40.702530, 34.343483, 41.782162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.189571, 34.501862, 42.502636>,  <40.864838, 33.826935, 42.225822>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.189571, 34.501862, 42.502636> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.879292, 34.557148, 42.256321>,  <40.693123, 34.590321, 42.108532>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.879292, 34.557148, 42.256321>,  <41.189571, 34.501862, 42.502636>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.879292, 34.557148, 42.256321> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451777, 0.559693, 0.694724,
		0.440671, 0.817093, -0.371710,
		-0.775698, 0.138215, -0.615784,
		40.646584, 34.598614, 42.071587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.017246, 35.173897, 42.653118>,  <41.189571, 34.501862, 42.502636>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.017246, 35.173897, 42.653118> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.680901, 35.036243, 42.486015>,  <40.479092, 34.953651, 42.385754>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.680901, 35.036243, 42.486015>,  <41.017246, 35.173897, 42.653118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.680901, 35.036243, 42.486015> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539278, 0.598441, 0.592492,
		0.046110, 0.723493, -0.688789,
		-0.840864, -0.344130, -0.417758,
		40.428642, 34.933006, 42.360687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.711563, 35.741364, 42.439728>,  <41.017246, 35.173897, 42.653118>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.711563, 35.741364, 42.439728> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.423206, 35.467731, 42.484173>,  <40.250191, 35.303551, 42.510841>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.423206, 35.467731, 42.484173>,  <40.711563, 35.741364, 42.439728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.423206, 35.467731, 42.484173> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542929, 0.657084, 0.522942,
		-0.430747, 0.316658, -0.845095,
		-0.720892, -0.684082, 0.111115,
		40.206940, 35.262508, 42.517506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.078503, 36.098595, 42.469234>,  <40.711563, 35.741364, 42.439728>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.078503, 36.098595, 42.469234> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.980194, 35.743877, 42.625793>,  <39.921207, 35.531048, 42.719730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.980194, 35.743877, 42.625793>,  <40.078503, 36.098595, 42.469234>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.980194, 35.743877, 42.625793> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572150, 0.458658, 0.679910,
		-0.782458, -0.056838, -0.620103,
		-0.245771, -0.886793, 0.391400,
		39.906464, 35.477840, 42.743214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.426952, 36.224842, 42.580158>,  <40.078503, 36.098595, 42.469234>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.426952, 36.224842, 42.580158> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.530910, 35.907310, 42.800083>,  <39.593285, 35.716793, 42.932037>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.530910, 35.907310, 42.800083>,  <39.426952, 36.224842, 42.580158>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.530910, 35.907310, 42.800083> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689539, 0.246039, 0.681176,
		-0.676011, -0.556151, -0.483430,
		0.259894, -0.793827, 0.549813,
		39.608879, 35.669163, 42.965027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.836830, 36.152435, 42.915634>,  <39.426952, 36.224842, 42.580158>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.836830, 36.152435, 42.915634> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.115749, 35.958061, 43.126400>,  <39.283100, 35.841434, 43.252861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.115749, 35.958061, 43.126400>,  <38.836830, 36.152435, 42.915634>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.115749, 35.958061, 43.126400> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454673, 0.268428, 0.849246,
		-0.554120, -0.831752, -0.033769,
		0.697297, -0.485938, 0.526917,
		39.324940, 35.812279, 43.284473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.437729, 35.781639, 43.391724>,  <38.836830, 36.152435, 42.915634>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.437729, 35.781639, 43.391724> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.816868, 35.819237, 43.513542>,  <39.044350, 35.841797, 43.586632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.816868, 35.819237, 43.513542>,  <38.437729, 35.781639, 43.391724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.816868, 35.819237, 43.513542> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318653, 0.259450, 0.911672,
		0.006678, -0.961171, 0.275871,
		0.947848, 0.093996, 0.304548,
		39.101223, 35.847435, 43.604908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.524658, 35.503345, 44.037968>,  <38.437729, 35.781639, 43.391724>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.524658, 35.503345, 44.037968> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.836517, 35.753635, 44.047909>,  <39.023632, 35.903809, 44.053875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.836517, 35.753635, 44.047909>,  <38.524658, 35.503345, 44.037968>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.836517, 35.753635, 44.047909> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210273, 0.224203, 0.951587,
		0.589862, -0.747127, 0.306373,
		0.779646, 0.625727, 0.024852,
		39.070412, 35.941353, 44.055363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.810879, 35.338505, 44.719067>,  <38.524658, 35.503345, 44.037968>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.810879, 35.338505, 44.719067> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.940678, 35.700974, 44.610580>,  <39.018559, 35.918453, 44.545490>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.940678, 35.700974, 44.610580>,  <38.810879, 35.338505, 44.719067>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.940678, 35.700974, 44.610580> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095627, 0.316686, 0.943698,
		0.941041, -0.280291, 0.189418,
		0.324495, 0.906172, -0.271211,
		39.038025, 35.972824, 44.529217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.178772, 35.523846, 45.221958>,  <38.810879, 35.338505, 44.719067>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.178772, 35.523846, 45.221958> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.119625, 35.879364, 45.048435>,  <39.084137, 36.092674, 44.944321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.119625, 35.879364, 45.048435>,  <39.178772, 35.523846, 45.221958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.119625, 35.879364, 45.048435> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177755, 0.407599, 0.895693,
		0.972903, 0.209550, 0.097719,
		-0.147863, 0.888792, -0.433803,
		39.075268, 36.146000, 44.918293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.640476, 35.974609, 45.506062>,  <39.178772, 35.523846, 45.221958>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.640476, 35.974609, 45.506062> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.365719, 36.222805, 45.354717>,  <39.200863, 36.371723, 45.263908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.365719, 36.222805, 45.354717>,  <39.640476, 35.974609, 45.506062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.365719, 36.222805, 45.354717> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018520, 0.535397, 0.844397,
		0.726518, 0.573007, -0.379255,
		-0.686898, 0.620493, -0.378364,
		39.159649, 36.408955, 45.241207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.826401, 36.775333, 45.651211>,  <39.640476, 35.974609, 45.506062>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.826401, 36.775333, 45.651211> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.432053, 36.757755, 45.586563>,  <39.195442, 36.747208, 45.547775>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.432053, 36.757755, 45.586563>,  <39.826401, 36.775333, 45.651211>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.432053, 36.757755, 45.586563> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157377, 0.573219, 0.804147,
		0.057300, 0.818223, -0.572039,
		-0.985875, -0.043949, -0.161615,
		39.136292, 36.744572, 45.538078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<30.907230, 34.633472, 45.533665> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.296721, 34.604210, 45.619923>,  <31.530415, 34.586651, 45.671677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.296721, 34.604210, 45.619923>,  <30.907230, 34.633472, 45.533665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.296721, 34.604210, 45.619923> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216705, 0.006726, -0.976214,
		0.069966, 0.997298, 0.022403,
		0.973727, -0.073157, 0.215649,
		31.588839, 34.582264, 45.684616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.271872, 35.207607, 45.364933>,  <30.907230, 34.633472, 45.533665>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.271872, 35.207607, 45.364933> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.529192, 34.901382, 45.361378>,  <31.683584, 34.717648, 45.359245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.529192, 34.901382, 45.361378>,  <31.271872, 35.207607, 45.364933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.529192, 34.901382, 45.361378> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171442, 0.155359, -0.972867,
		0.746173, 0.624320, 0.231192,
		0.643299, -0.765564, -0.008889,
		31.722181, 34.671715, 45.358711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.889111, 35.389439, 44.970791>,  <31.271872, 35.207607, 45.364933>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.889111, 35.389439, 44.970791> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.921843, 34.992069, 44.938751>,  <31.941483, 34.753647, 44.919529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.921843, 34.992069, 44.938751>,  <31.889111, 35.389439, 44.970791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.921843, 34.992069, 44.938751> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445914, 0.108365, -0.888492,
		0.891327, 0.036990, 0.451849,
		0.081830, -0.993423, -0.080094,
		31.946392, 34.694042, 44.914722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.500126, 35.121689, 44.646873>,  <31.889111, 35.389439, 44.970791>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.500126, 35.121689, 44.646873> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.296349, 34.782951, 44.585785>,  <32.174084, 34.579708, 44.549133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.296349, 34.782951, 44.585785>,  <32.500126, 35.121689, 44.646873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.296349, 34.782951, 44.585785> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452426, -0.112630, -0.884661,
		0.731968, -0.519780, 0.440513,
		-0.509444, -0.846843, -0.152721,
		32.143517, 34.528900, 44.539970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.999409, 34.597759, 44.349411>,  <32.500126, 35.121689, 44.646873>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.999409, 34.597759, 44.349411> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.643341, 34.436550, 44.264389>,  <32.429703, 34.339825, 44.213375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.643341, 34.436550, 44.264389>,  <32.999409, 34.597759, 44.349411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.643341, 34.436550, 44.264389> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351790, -0.311459, -0.882744,
		0.289561, -0.860563, 0.419029,
		-0.890167, -0.403019, -0.212551,
		32.376289, 34.315643, 44.200623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.270454, 33.972210, 43.983124>,  <32.999409, 34.597759, 44.349411>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.270454, 33.972210, 43.983124> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.885475, 34.027168, 43.889465>,  <32.654488, 34.060143, 43.833271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.885475, 34.027168, 43.889465>,  <33.270454, 33.972210, 43.983124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.885475, 34.027168, 43.889465> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187023, -0.289616, -0.938693,
		-0.196784, -0.947230, 0.253043,
		-0.962444, 0.137395, -0.234146,
		32.596741, 34.068386, 43.819221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.023304, 33.252434, 43.710026>,  <33.270454, 33.972210, 43.983124>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.023304, 33.252434, 43.710026> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.782429, 33.550945, 43.596581>,  <32.637901, 33.730053, 43.528515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.782429, 33.550945, 43.596581>,  <33.023304, 33.252434, 43.710026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.782429, 33.550945, 43.596581> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165935, -0.230487, -0.958823,
		-0.780917, -0.624456, 0.014964,
		-0.602192, 0.746278, -0.283611,
		32.601772, 33.774830, 43.511497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.612492, 32.934414, 43.222439>,  <33.023304, 33.252434, 43.710026>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.612492, 32.934414, 43.222439> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.564400, 33.326294, 43.158272>,  <32.535545, 33.561420, 43.119774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.564400, 33.326294, 43.158272>,  <32.612492, 32.934414, 43.222439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.564400, 33.326294, 43.158272> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045491, -0.166855, -0.984932,
		-0.991703, -0.111124, 0.064629,
		-0.120234, 0.979699, -0.160416,
		32.528328, 33.620205, 43.110146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.087078, 32.981392, 42.673836>,  <32.612492, 32.934414, 43.222439>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.087078, 32.981392, 42.673836> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.308041, 33.314594, 42.686195>,  <32.440617, 33.514515, 42.693611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.308041, 33.314594, 42.686195>,  <32.087078, 32.981392, 42.673836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.308041, 33.314594, 42.686195> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108272, -0.034950, -0.993507,
		-0.826513, 0.552166, -0.109497,
		0.552407, 0.833002, 0.030897,
		32.473763, 33.564495, 42.695465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.862356, 33.525085, 42.277905>,  <32.087078, 32.981392, 42.673836>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.862356, 33.525085, 42.277905> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.233959, 33.669312, 42.311230>,  <32.456921, 33.755848, 42.331226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.233959, 33.669312, 42.311230>,  <31.862356, 33.525085, 42.277905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.233959, 33.669312, 42.311230> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128470, -0.103094, -0.986340,
		-0.347046, 0.927021, -0.142096,
		0.929007, 0.360561, 0.083316,
		32.512661, 33.777481, 42.336224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.901344, 33.967751, 41.729759>,  <31.862356, 33.525085, 42.277905>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.901344, 33.967751, 41.729759> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.284679, 33.892929, 41.816105>,  <32.514683, 33.848038, 41.867912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.284679, 33.892929, 41.816105>,  <31.901344, 33.967751, 41.729759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.284679, 33.892929, 41.816105> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214090, -0.029865, -0.976357,
		0.189077, 0.981896, 0.011425,
		0.958340, -0.187053, 0.215861,
		32.572182, 33.836815, 41.880863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.398060, 34.540833, 41.357025>,  <31.901344, 33.967751, 41.729759>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.398060, 34.540833, 41.357025> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.590488, 34.196133, 41.421463>,  <32.705944, 33.989311, 41.460125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.590488, 34.196133, 41.421463>,  <32.398060, 34.540833, 41.357025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.590488, 34.196133, 41.421463> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263647, -0.033037, -0.964053,
		0.836098, 0.506252, 0.211306,
		0.481072, -0.861753, 0.161094,
		32.734810, 33.937607, 41.469791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.879513, 34.526134, 40.908291>,  <32.398060, 34.540833, 41.357025>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.879513, 34.526134, 40.908291> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.900414, 34.133862, 40.983696>,  <32.912952, 33.898499, 41.028938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.900414, 34.133862, 40.983696>,  <32.879513, 34.526134, 40.908291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.900414, 34.133862, 40.983696> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361704, -0.157367, -0.918915,
		0.930827, 0.116202, 0.346493,
		0.052253, -0.980680, 0.188512,
		32.916088, 33.839657, 41.040249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.600895, 34.281395, 40.780540>,  <32.879513, 34.526134, 40.908291>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.600895, 34.281395, 40.780540> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.407558, 33.931278, 40.786655>,  <33.291557, 33.721207, 40.790325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.407558, 33.931278, 40.786655>,  <33.600895, 34.281395, 40.780540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.407558, 33.931278, 40.786655> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385351, -0.228413, -0.894054,
		0.786055, -0.426243, 0.447699,
		-0.483345, -0.875296, 0.015292,
		33.262554, 33.668690, 40.791245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.419998, 34.339832, 40.775467>,  <33.600895, 34.281395, 40.780540>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.419998, 34.339832, 40.775467> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.547878, 34.670818, 40.590820>,  <34.624607, 34.869411, 40.480034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.547878, 34.670818, 40.590820>,  <34.419998, 34.339832, 40.775467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.547878, 34.670818, 40.590820> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170800, 0.529532, 0.830917,
		0.931998, -0.186798, 0.310622,
		0.319698, 0.827468, -0.461617,
		34.643787, 34.919060, 40.452335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.830391, 34.633820, 41.220661>,  <34.419998, 34.339832, 40.775467>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.830391, 34.633820, 41.220661> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.691486, 34.910526, 40.967407>,  <34.608143, 35.076550, 40.815453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.691486, 34.910526, 40.967407>,  <34.830391, 34.633820, 41.220661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.691486, 34.910526, 40.967407> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092690, 0.646528, 0.757239,
		0.933177, 0.321645, -0.160394,
		-0.347261, 0.691771, -0.633138,
		34.587307, 35.118057, 40.777466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.270470, 35.290730, 41.207417>,  <34.830391, 34.633820, 41.220661>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.270470, 35.290730, 41.207417> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.901882, 35.395687, 41.092838>,  <34.680729, 35.458664, 41.024094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.901882, 35.395687, 41.092838>,  <35.270470, 35.290730, 41.207417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.901882, 35.395687, 41.092838> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107305, 0.536752, 0.836889,
		0.373344, 0.801901, -0.466443,
		-0.921466, 0.262396, -0.286442,
		34.625443, 35.474407, 41.006905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.233051, 35.935158, 41.417538>,  <35.270470, 35.290730, 41.207417>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.233051, 35.935158, 41.417538> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.848530, 35.848022, 41.350079>,  <34.617817, 35.795742, 41.309601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.848530, 35.848022, 41.350079>,  <35.233051, 35.935158, 41.417538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.848530, 35.848022, 41.350079> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269991, 0.623188, 0.733990,
		-0.054789, 0.751121, -0.657887,
		-0.961303, -0.217838, -0.168652,
		34.560139, 35.782669, 41.299484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.989864, 36.589535, 41.454845>,  <35.233051, 35.935158, 41.417538>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.989864, 36.589535, 41.454845> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.683323, 36.334949, 41.489750>,  <34.499397, 36.182198, 41.510693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.683323, 36.334949, 41.489750>,  <34.989864, 36.589535, 41.454845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.683323, 36.334949, 41.489750> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315659, 0.491376, 0.811732,
		-0.559513, 0.594532, -0.577475,
		-0.766358, -0.636460, 0.087262,
		34.453415, 36.144012, 41.515930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.472702, 37.020130, 41.493710>,  <34.989864, 36.589535, 41.454845>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.472702, 37.020130, 41.493710> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.345303, 36.674782, 41.650246>,  <34.268864, 36.467575, 41.744167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.345303, 36.674782, 41.650246>,  <34.472702, 37.020130, 41.493710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.345303, 36.674782, 41.650246> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297959, 0.483103, 0.823305,
		-0.899876, 0.145619, -0.411118,
		-0.318501, -0.863369, 0.391345,
		34.249752, 36.415771, 41.767651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.743370, 37.138584, 41.688187>,  <34.472702, 37.020130, 41.493710>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.743370, 37.138584, 41.688187> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.908379, 36.846241, 41.905689>,  <34.007385, 36.670834, 42.036190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.908379, 36.846241, 41.905689>,  <33.743370, 37.138584, 41.688187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.908379, 36.846241, 41.905689> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306588, 0.450700, 0.838376,
		-0.857804, -0.512560, -0.038146,
		0.412526, -0.730857, 0.543757,
		34.032135, 36.626984, 42.068817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.191986, 36.990196, 42.136551>,  <33.743370, 37.138584, 41.688187>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.191986, 36.990196, 42.136551> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.497700, 36.813145, 42.324142>,  <33.681129, 36.706913, 42.436699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.497700, 36.813145, 42.324142>,  <33.191986, 36.990196, 42.136551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.497700, 36.813145, 42.324142> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405754, 0.235174, 0.883209,
		-0.501229, -0.865315, 0.000140,
		0.764286, -0.442633, 0.468981,
		33.726986, 36.680355, 42.464836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.897861, 36.499897, 42.644501>,  <33.191986, 36.990196, 42.136551>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.897861, 36.499897, 42.644501> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.258461, 36.573910, 42.800995>,  <33.474819, 36.618317, 42.894890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.258461, 36.573910, 42.800995>,  <32.897861, 36.499897, 42.644501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.258461, 36.573910, 42.800995> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428386, 0.252946, 0.867470,
		0.061550, -0.949621, 0.307296,
		0.901497, 0.185034, 0.391236,
		33.528912, 36.629421, 42.918365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.887066, 36.178600, 43.274078>,  <32.897861, 36.499897, 42.644501>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.887066, 36.178600, 43.274078> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.201042, 36.418495, 43.336281>,  <33.389427, 36.562431, 43.373604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.201042, 36.418495, 43.336281>,  <32.887066, 36.178600, 43.274078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.201042, 36.418495, 43.336281> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275972, 0.113724, 0.954414,
		0.554709, -0.792077, 0.254777,
		0.784944, 0.599733, 0.155508,
		33.436527, 36.598415, 43.382935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.155895, 35.992462, 43.943035>,  <32.887066, 36.178600, 43.274078>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.155895, 35.992462, 43.943035> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.340870, 36.342945, 43.888756>,  <33.451855, 36.553234, 43.856190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.340870, 36.342945, 43.888756>,  <33.155895, 35.992462, 43.943035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.340870, 36.342945, 43.888756> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215336, 0.037474, 0.975821,
		0.860107, -0.480473, -0.171350,
		0.462434, 0.876208, -0.135695,
		33.479599, 36.605808, 43.848049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.803783, 36.028366, 44.309673>,  <33.155895, 35.992462, 43.943035>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.803783, 36.028366, 44.309673> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.697342, 36.410191, 44.256001>,  <33.633476, 36.639286, 44.223797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.697342, 36.410191, 44.256001>,  <33.803783, 36.028366, 44.309673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.697342, 36.410191, 44.256001> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290056, 0.212038, 0.933224,
		0.919269, 0.209417, -0.333300,
		-0.266105, 0.954560, -0.134177,
		33.617512, 36.696560, 44.215748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.272488, 36.425091, 44.762920>,  <33.803783, 36.028366, 44.309673>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.272488, 36.425091, 44.762920> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.952408, 36.659046, 44.709877>,  <33.760361, 36.799419, 44.678051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.952408, 36.659046, 44.709877>,  <34.272488, 36.425091, 44.762920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.952408, 36.659046, 44.709877> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031415, 0.261687, 0.964641,
		0.598909, 0.767741, -0.227776,
		-0.800201, 0.584888, -0.132608,
		33.712349, 36.834511, 44.670094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.507858, 37.058132, 44.988312>,  <34.272488, 36.425091, 44.762920>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.507858, 37.058132, 44.988312> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.109497, 37.087898, 45.008892>,  <33.870480, 37.105759, 45.021240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.109497, 37.087898, 45.008892>,  <34.507858, 37.058132, 44.988312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.109497, 37.087898, 45.008892> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070956, 0.289584, 0.954519,
		0.056132, 0.954255, -0.293677,
		-0.995899, 0.074417, 0.051455,
		33.810726, 37.110222, 45.024330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.045540, 37.539135, 45.149212>,  <34.507858, 37.058132, 44.988312>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.045540, 37.539135, 45.149212> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.408283, 37.689156, 45.226101>,  <35.625931, 37.779167, 45.272232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.408283, 37.689156, 45.226101>,  <35.045540, 37.539135, 45.149212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.408283, 37.689156, 45.226101> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220776, -0.034265, -0.974722,
		-0.358980, 0.926372, -0.113875,
		0.906858, 0.375047, 0.192220,
		35.680340, 37.801670, 45.283768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.101688, 38.112839, 44.616085>,  <35.045540, 37.539135, 45.149212>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.101688, 38.112839, 44.616085> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.460094, 37.999676, 44.752972>,  <35.675140, 37.931778, 44.835106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.460094, 37.999676, 44.752972>,  <35.101688, 38.112839, 44.616085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.460094, 37.999676, 44.752972> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261859, -0.285742, -0.921836,
		0.358585, 0.915594, -0.181946,
		0.896017, -0.282912, 0.342220,
		35.728901, 37.914803, 44.855637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.548523, 38.208035, 44.092644>,  <35.101688, 38.112839, 44.616085>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.548523, 38.208035, 44.092644> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.757141, 37.945644, 44.310886>,  <35.882313, 37.788212, 44.441833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.757141, 37.945644, 44.310886>,  <35.548523, 38.208035, 44.092644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.757141, 37.945644, 44.310886> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369873, -0.402436, -0.837400,
		0.768886, 0.638548, 0.032739,
		0.521545, -0.655974, 0.545609,
		35.913605, 37.748852, 44.474567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.320885, 38.239670, 43.738327>,  <35.548523, 38.208035, 44.092644>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.320885, 38.239670, 43.738327> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.269302, 37.911755, 43.961510>,  <36.238354, 37.715004, 44.095417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.269302, 37.911755, 43.961510>,  <36.320885, 38.239670, 43.738327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.269302, 37.911755, 43.961510> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413593, -0.555840, -0.721098,
		0.901283, 0.137777, 0.410738,
		-0.128953, -0.819792, 0.557953,
		36.230618, 37.665817, 44.128895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.959229, 37.869255, 43.755836>,  <36.320885, 38.239670, 43.738327>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.959229, 37.869255, 43.755836> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.678020, 37.597126, 43.838707>,  <36.509296, 37.433849, 43.888428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.678020, 37.597126, 43.838707>,  <36.959229, 37.869255, 43.755836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.678020, 37.597126, 43.838707> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405622, -0.622866, -0.668961,
		0.584152, -0.386259, 0.713842,
		-0.703020, -0.680325, 0.207173,
		36.467113, 37.393028, 43.900860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.350296, 37.260872, 43.717480>,  <36.959229, 37.869255, 43.755836>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.350296, 37.260872, 43.717480> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.988129, 37.091442, 43.728779>,  <36.770828, 36.989784, 43.735558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.988129, 37.091442, 43.728779>,  <37.350296, 37.260872, 43.717480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.988129, 37.091442, 43.728779> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276294, -0.638492, -0.718324,
		0.322300, -0.642581, 0.695135,
		-0.905419, -0.423578, 0.028244,
		36.716503, 36.964371, 43.737251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.532520, 36.565430, 43.666363>,  <37.350296, 37.260872, 43.717480>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.532520, 36.565430, 43.666363> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.158989, 36.636906, 43.542400>,  <36.934872, 36.679790, 43.468025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.158989, 36.636906, 43.542400>,  <37.532520, 36.565430, 43.666363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.158989, 36.636906, 43.542400> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207186, -0.436060, -0.875743,
		-0.291621, -0.881999, 0.370183,
		-0.933826, 0.178689, -0.309902,
		36.878841, 36.690514, 43.449429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.522614, 36.134014, 43.126137>,  <37.532520, 36.565430, 43.666363>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.522614, 36.134014, 43.126137> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.198853, 36.359104, 43.058945>,  <37.004597, 36.494156, 43.018631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.198853, 36.359104, 43.058945>,  <37.522614, 36.134014, 43.126137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.198853, 36.359104, 43.058945> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123688, -0.116276, -0.985485,
		-0.574088, -0.818427, 0.024511,
		-0.809398, 0.562724, -0.167982,
		36.956032, 36.527920, 43.008549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.060890, 35.803558, 42.533215>,  <37.522614, 36.134014, 43.126137>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.060890, 35.803558, 42.533215> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.959988, 36.190620, 42.534370>,  <36.899445, 36.422859, 42.535065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.959988, 36.190620, 42.534370>,  <37.060890, 35.803558, 42.533215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.959988, 36.190620, 42.534370> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130897, 0.037078, -0.990702,
		-0.958766, -0.249532, -0.136016,
		-0.252255, 0.967656, 0.002886,
		36.884312, 36.480919, 42.535236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.566143, 35.881981, 42.057297>,  <37.060890, 35.803558, 42.533215>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.566143, 35.881981, 42.057297> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.707901, 36.254055, 42.095562>,  <36.792957, 36.477299, 42.118523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.707901, 36.254055, 42.095562>,  <36.566143, 35.881981, 42.057297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.707901, 36.254055, 42.095562> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065239, 0.077461, -0.994859,
		-0.932816, 0.358818, -0.033232,
		0.354399, 0.930188, 0.095666,
		36.814220, 36.533112, 42.124260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.204517, 36.231918, 41.561867>,  <36.566143, 35.881981, 42.057297>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.204517, 36.231918, 41.561867> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.524357, 36.458179, 41.642540>,  <36.716263, 36.593937, 41.690945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.524357, 36.458179, 41.642540>,  <36.204517, 36.231918, 41.561867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.524357, 36.458179, 41.642540> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176812, 0.099202, -0.979233,
		-0.573913, 0.818655, -0.020692,
		0.799601, 0.565653, 0.201681,
		36.764236, 36.627876, 41.703045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.114281, 36.892281, 41.201756>,  <36.204517, 36.231918, 41.561867>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.114281, 36.892281, 41.201756> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.504162, 36.848248, 41.279560>,  <36.738091, 36.821827, 41.326244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.504162, 36.848248, 41.279560>,  <36.114281, 36.892281, 41.201756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.504162, 36.848248, 41.279560> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203266, 0.074759, -0.976265,
		0.092928, 0.991107, 0.095244,
		0.974704, -0.110082, 0.194511,
		36.796574, 36.815224, 41.337914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.464890, 37.421070, 40.715466>,  <36.114281, 36.892281, 41.201756>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.464890, 37.421070, 40.715466> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.755821, 37.173611, 40.834305>,  <36.930382, 37.025135, 40.905609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.755821, 37.173611, 40.834305>,  <36.464890, 37.421070, 40.715466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.755821, 37.173611, 40.834305> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333926, -0.059192, -0.940739,
		0.599568, 0.783438, 0.163529,
		0.727331, -0.618644, 0.297100,
		36.974022, 36.988018, 40.923435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.071194, 37.771267, 40.568645>,  <36.464890, 37.421070, 40.715466>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.071194, 37.771267, 40.568645> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.164062, 37.382298, 40.577457>,  <37.219784, 37.148914, 40.582745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.164062, 37.382298, 40.577457>,  <37.071194, 37.771267, 40.568645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.164062, 37.382298, 40.577457> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443934, 0.085789, -0.891943,
		0.865458, 0.216863, 0.451610,
		0.232173, -0.972425, 0.022026,
		37.233715, 37.090569, 40.584064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<27.900475, 36.348469, 43.546021> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.852516, 36.725388, 43.420990>,  <27.823742, 36.951538, 43.345970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.852516, 36.725388, 43.420990>,  <27.900475, 36.348469, 43.546021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.852516, 36.725388, 43.420990> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406126, -0.333850, -0.850650,
		-0.905918, 0.024957, 0.422718,
		-0.119894, 0.942296, -0.312577,
		27.816547, 37.008076, 43.327217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.264050, 36.324886, 43.153072>,  <27.900475, 36.348469, 43.546021>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.264050, 36.324886, 43.153072> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.401375, 36.692783, 43.076962>,  <27.483770, 36.913521, 43.031296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.401375, 36.692783, 43.076962>,  <27.264050, 36.324886, 43.153072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.401375, 36.692783, 43.076962> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327630, -0.072587, -0.942014,
		-0.880224, 0.385746, 0.276416,
		0.343314, 0.919745, -0.190275,
		27.504370, 36.968708, 43.019878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.697556, 36.459579, 42.719604>,  <27.264050, 36.324886, 43.153072>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.697556, 36.459579, 42.719604> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.989536, 36.716976, 42.627441>,  <27.164724, 36.871414, 42.572144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.989536, 36.716976, 42.627441>,  <26.697556, 36.459579, 42.719604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.989536, 36.716976, 42.627441> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317320, 0.020477, -0.948098,
		-0.605375, 0.765179, 0.219140,
		0.729952, 0.643492, -0.230410,
		27.208521, 36.910023, 42.558319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.411657, 36.996990, 42.350998>,  <26.697556, 36.459579, 42.719604>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.411657, 36.996990, 42.350998> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.796530, 36.967548, 42.246086>,  <27.027452, 36.949883, 42.183140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.796530, 36.967548, 42.246086>,  <26.411657, 36.996990, 42.350998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.796530, 36.967548, 42.246086> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266230, -0.050125, -0.962605,
		0.057706, 0.996027, -0.067825,
		0.962180, -0.073605, -0.262280,
		27.085184, 36.945465, 42.167400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.494526, 37.310253, 41.749332>,  <26.411657, 36.996990, 42.350998>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.494526, 37.310253, 41.749332> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.837435, 37.105057, 41.731804>,  <27.043180, 36.981937, 41.721287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.837435, 37.105057, 41.731804>,  <26.494526, 37.310253, 41.749332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.837435, 37.105057, 41.731804> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034974, 0.026898, -0.999026,
		0.513672, 0.857971, 0.005117,
		0.857274, -0.512993, -0.043823,
		27.094616, 36.951160, 41.718658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.060455, 37.711105, 41.419289>,  <26.494526, 37.310253, 41.749332>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.060455, 37.711105, 41.419289> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.133804, 37.321991, 41.362637>,  <27.177814, 37.088524, 41.328644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.133804, 37.321991, 41.362637>,  <27.060455, 37.711105, 41.419289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.133804, 37.321991, 41.362637> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082150, 0.128408, -0.988313,
		0.979605, 0.192866, -0.056367,
		0.183374, -0.972787, -0.141633,
		27.188816, 37.030155, 41.320148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.629004, 37.708073, 40.937542>,  <27.060455, 37.711105, 41.419289>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.629004, 37.708073, 40.937542> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.473856, 37.342159, 40.892426>,  <27.380768, 37.122612, 40.865356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.473856, 37.342159, 40.892426>,  <27.629004, 37.708073, 40.937542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.473856, 37.342159, 40.892426> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046445, 0.141618, -0.988831,
		0.920544, -0.378297, -0.097416,
		-0.387868, -0.914787, -0.112796,
		27.357496, 37.067722, 40.858585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.015112, 37.405361, 40.334171>,  <27.629004, 37.708073, 40.937542>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.015112, 37.405361, 40.334171> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.692852, 37.175896, 40.393276>,  <27.499496, 37.038216, 40.428738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.692852, 37.175896, 40.393276>,  <28.015112, 37.405361, 40.334171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.692852, 37.175896, 40.393276> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040749, -0.195168, -0.979923,
		0.590988, -0.795497, 0.133861,
		-0.805650, -0.573668, 0.147758,
		27.451157, 37.003796, 40.437603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.133188, 36.737282, 40.110092>,  <28.015112, 37.405361, 40.334171>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.133188, 36.737282, 40.110092> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.736610, 36.786201, 40.091846>,  <27.498663, 36.815552, 40.080898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.736610, 36.786201, 40.091846>,  <28.133188, 36.737282, 40.110092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.736610, 36.786201, 40.091846> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011723, -0.264603, -0.964286,
		-0.129998, -0.956572, 0.260906,
		-0.991445, 0.122296, -0.045611,
		27.439177, 36.822891, 40.078163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.034676, 36.395435, 39.509823>,  <28.133188, 36.737282, 40.110092>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.034676, 36.395435, 39.509823> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.677967, 36.554733, 39.595745>,  <27.463942, 36.650314, 39.647297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.677967, 36.554733, 39.595745>,  <28.034676, 36.395435, 39.509823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.677967, 36.554733, 39.595745> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360718, -0.339096, -0.868848,
		-0.273175, -0.852299, 0.446051,
		-0.891772, 0.398246, 0.214807,
		27.410435, 36.674210, 39.660187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.563301, 35.890945, 39.313160>,  <28.034676, 36.395435, 39.509823>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.563301, 35.890945, 39.313160> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.402697, 36.257217, 39.305931>,  <27.306334, 36.476978, 39.301594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.402697, 36.257217, 39.305931>,  <27.563301, 35.890945, 39.313160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.402697, 36.257217, 39.305931> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218305, -0.114851, -0.969098,
		-0.889456, -0.385159, 0.246011,
		-0.401511, 0.915676, -0.018072,
		27.282244, 36.531921, 39.300510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.908007, 35.737488, 39.072628>,  <27.563301, 35.890945, 39.313160>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.908007, 35.737488, 39.072628> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.988615, 36.126720, 39.027901>,  <27.036980, 36.360260, 39.001064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.988615, 36.126720, 39.027901>,  <26.908007, 35.737488, 39.072628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.988615, 36.126720, 39.027901> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355648, -0.033673, -0.934013,
		-0.912635, 0.227993, 0.339289,
		0.201523, 0.973080, -0.111817,
		27.049072, 36.418644, 38.994354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.373741, 35.929512, 38.641651>,  <26.908007, 35.737488, 39.072628>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.373741, 35.929512, 38.641651> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.674355, 36.193123, 38.629795>,  <26.854723, 36.351288, 38.622681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.674355, 36.193123, 38.629795>,  <26.373741, 35.929512, 38.641651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.674355, 36.193123, 38.629795> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145516, 0.121785, -0.981832,
		-0.643445, 0.742193, 0.187425,
		0.751534, 0.659028, -0.029639,
		26.899815, 36.390831, 38.620903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.134993, 36.479881, 38.241280>,  <26.373741, 35.929512, 38.641651>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.134993, 36.479881, 38.241280> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.533186, 36.506584, 38.214275>,  <26.772102, 36.522606, 38.198071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.533186, 36.506584, 38.214275>,  <26.134993, 36.479881, 38.241280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.533186, 36.506584, 38.214275> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050314, -0.232113, -0.971387,
		-0.080519, 0.970395, -0.227705,
		0.995482, 0.066758, -0.067514,
		26.831831, 36.526611, 38.194019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.145809, 36.744751, 37.635048>,  <26.134993, 36.479881, 38.241280>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.145809, 36.744751, 37.635048> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.520048, 36.615307, 37.691521>,  <26.744591, 36.537640, 37.725403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.520048, 36.615307, 37.691521>,  <26.145809, 36.744751, 37.635048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.520048, 36.615307, 37.691521> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113220, -0.103766, -0.988137,
		0.334421, 0.940483, -0.060444,
		0.935598, -0.323611, 0.141183,
		26.800728, 36.518223, 37.733875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.588346, 37.203716, 37.173271>,  <26.145809, 36.744751, 37.635048>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.588346, 37.203716, 37.173271> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.774076, 36.853584, 37.227242>,  <26.885515, 36.643505, 37.259624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.774076, 36.853584, 37.227242>,  <26.588346, 37.203716, 37.173271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.774076, 36.853584, 37.227242> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276890, -0.001242, -0.960901,
		0.841269, 0.483531, 0.241792,
		0.464325, -0.875326, 0.134929,
		26.913374, 36.590988, 37.267719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.135035, 37.295677, 36.747734>,  <26.588346, 37.203716, 37.173271>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.135035, 37.295677, 36.747734> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.142620, 36.900928, 36.811901>,  <27.147171, 36.664082, 36.850403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.142620, 36.900928, 36.811901>,  <27.135035, 37.295677, 36.747734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.142620, 36.900928, 36.811901> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385614, -0.140813, -0.911852,
		0.922465, 0.079150, 0.377879,
		0.018963, -0.986867, 0.160416,
		27.148310, 36.604870, 36.860027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.706556, 37.013947, 36.522198>,  <27.135035, 37.295677, 36.747734>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.706556, 37.013947, 36.522198> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.533560, 36.653294, 36.520901>,  <27.429762, 36.436901, 36.520123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.533560, 36.653294, 36.520901>,  <27.706556, 37.013947, 36.522198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.533560, 36.653294, 36.520901> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010969, -0.001671, -0.999938,
		0.901571, -0.432501, 0.010612,
		-0.432492, -0.901632, -0.003238,
		27.403812, 36.382805, 36.519928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.100159, 36.571278, 36.094849>,  <27.706556, 37.013947, 36.522198>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.100159, 36.571278, 36.094849> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.728226, 36.424202, 36.089062>,  <27.505066, 36.335957, 36.085590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.728226, 36.424202, 36.089062>,  <28.100159, 36.571278, 36.094849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.728226, 36.424202, 36.089062> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017747, -0.005528, -0.999827,
		0.367549, -0.929931, 0.011666,
		-0.929835, -0.367693, -0.014472,
		27.449276, 36.313892, 36.084721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.941910, 35.862076, 35.740803>,  <28.100159, 36.571278, 36.094849>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.941910, 35.862076, 35.740803> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.673706, 36.158722, 35.749096>,  <27.512783, 36.336708, 35.754074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.673706, 36.158722, 35.749096>,  <27.941910, 35.862076, 35.740803>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.673706, 36.158722, 35.749096> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142080, 0.155791, -0.977518,
		-0.728169, -0.652489, -0.209828,
		-0.670509, 0.741611, 0.020737,
		27.472553, 36.381207, 35.755318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.253582, 35.554955, 35.232750>,  <27.941910, 35.862076, 35.740803>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.253582, 35.554955, 35.232750> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.562458, 35.304852, 35.187523>,  <28.747784, 35.154789, 35.160389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.562458, 35.304852, 35.187523>,  <28.253582, 35.554955, 35.232750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.562458, 35.304852, 35.187523> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482587, 0.461371, 0.744478,
		-0.413322, -0.629441, 0.658004,
		0.772188, -0.625253, -0.113065,
		28.794115, 35.117275, 35.153603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.428949, 35.221031, 35.839211>,  <28.253582, 35.554955, 35.232750>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.428949, 35.221031, 35.839211> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.785610, 35.193542, 35.660221>,  <28.999607, 35.177048, 35.552826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.785610, 35.193542, 35.660221>,  <28.428949, 35.221031, 35.839211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.785610, 35.193542, 35.660221> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440621, 0.358720, 0.822905,
		0.103961, -0.930912, 0.350136,
		0.891653, -0.068727, -0.447472,
		29.053106, 35.172924, 35.525978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.835247, 34.938129, 36.281620>,  <28.428949, 35.221031, 35.839211>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.835247, 34.938129, 36.281620> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.065632, 35.150589, 36.033058>,  <29.203863, 35.278065, 35.883919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.065632, 35.150589, 36.033058>,  <28.835247, 34.938129, 36.281620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.065632, 35.150589, 36.033058> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416388, 0.463537, 0.782147,
		0.703483, -0.709234, 0.045815,
		0.575962, 0.531150, -0.621407,
		29.238420, 35.309933, 35.846638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.464830, 34.764839, 36.514721>,  <28.835247, 34.938129, 36.281620>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.464830, 34.764839, 36.514721> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.515587, 35.108223, 36.315948>,  <29.546040, 35.314255, 36.196686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.515587, 35.108223, 36.315948>,  <29.464830, 34.764839, 36.514721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.515587, 35.108223, 36.315948> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496158, 0.378875, 0.781205,
		0.858910, -0.345684, -0.377857,
		0.126890, 0.858461, -0.496934,
		29.553654, 35.365761, 36.166870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.194536, 35.009338, 36.621174>,  <29.464830, 34.764839, 36.514721>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.194536, 35.009338, 36.621174> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.997232, 35.333858, 36.495640>,  <29.878849, 35.528568, 36.420319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.997232, 35.333858, 36.495640>,  <30.194536, 35.009338, 36.621174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.997232, 35.333858, 36.495640> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200301, 0.457011, 0.866614,
		0.846506, 0.364606, -0.387929,
		-0.493261, 0.811297, -0.313832,
		29.849255, 35.577248, 36.401489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.628107, 35.583027, 36.877552>,  <30.194536, 35.009338, 36.621174>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.628107, 35.583027, 36.877552> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.295650, 35.789177, 36.794033>,  <30.096176, 35.912868, 36.743923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.295650, 35.789177, 36.794033>,  <30.628107, 35.583027, 36.877552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.295650, 35.789177, 36.794033> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196956, 0.623993, 0.756202,
		0.520015, 0.587386, -0.620131,
		-0.831139, 0.515375, -0.208797,
		30.046309, 35.943790, 36.731396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.859055, 36.298389, 36.827442>,  <30.628107, 35.583027, 36.877552>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.859055, 36.298389, 36.827442> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.462170, 36.295334, 36.877171>,  <30.224039, 36.293503, 36.907009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.462170, 36.295334, 36.877171>,  <30.859055, 36.298389, 36.827442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.462170, 36.295334, 36.877171> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082259, 0.709337, 0.700053,
		-0.093534, 0.704828, -0.703185,
		-0.992212, -0.007635, 0.124325,
		30.164507, 36.293045, 36.914467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.604151, 36.970047, 36.772686>,  <30.859055, 36.298389, 36.827442>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.604151, 36.970047, 36.772686> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.337597, 36.772884, 36.996464>,  <30.177664, 36.654587, 37.130730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.337597, 36.772884, 36.996464>,  <30.604151, 36.970047, 36.772686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.337597, 36.772884, 36.996464> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111625, 0.675908, 0.728484,
		-0.737203, 0.547899, -0.395396,
		-0.666387, -0.492904, 0.559441,
		30.137680, 36.625011, 37.164295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.305666, 37.533997, 37.023846>,  <30.604151, 36.970047, 36.772686>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.305666, 37.533997, 37.023846> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.190126, 37.224464, 37.249321>,  <30.120802, 37.038746, 37.384605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.190126, 37.224464, 37.249321>,  <30.305666, 37.533997, 37.023846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.190126, 37.224464, 37.249321> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109046, 0.558363, 0.822399,
		-0.951144, 0.299018, -0.076899,
		-0.288849, -0.773834, 0.563691,
		30.103472, 36.992313, 37.418427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.771774, 37.706764, 37.457844>,  <30.305666, 37.533997, 37.023846>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.771774, 37.706764, 37.457844> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.920000, 37.395756, 37.661076>,  <30.008936, 37.209152, 37.783016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.920000, 37.395756, 37.661076>,  <29.771774, 37.706764, 37.457844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.920000, 37.395756, 37.661076> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104368, 0.578416, 0.809038,
		-0.922924, -0.246775, 0.295490,
		0.370566, -0.777520, 0.508078,
		30.031170, 37.162498, 37.813499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.561813, 37.815025, 38.105709>,  <29.771774, 37.706764, 37.457844>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.561813, 37.815025, 38.105709> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.855196, 37.546967, 38.151211>,  <30.031225, 37.386131, 38.178513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.855196, 37.546967, 38.151211>,  <29.561813, 37.815025, 38.105709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.855196, 37.546967, 38.151211> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243432, 0.415217, 0.876548,
		-0.634652, -0.615218, 0.467680,
		0.733456, -0.670151, 0.113755,
		30.075233, 37.345921, 38.185337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.654253, 37.821918, 38.809284>,  <29.561813, 37.815025, 38.105709>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.654253, 37.821918, 38.809284> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.982283, 37.623737, 38.694740>,  <30.179100, 37.504829, 38.626015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.982283, 37.623737, 38.694740>,  <29.654253, 37.821918, 38.809284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.982283, 37.623737, 38.694740> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482439, 0.329431, 0.811621,
		-0.307785, -0.803741, 0.509185,
		0.820074, -0.495455, -0.286361,
		30.228304, 37.475101, 38.608833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.869425, 37.288124, 39.321365>,  <29.654253, 37.821918, 38.809284>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.869425, 37.288124, 39.321365> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.187979, 37.418907, 39.117847>,  <30.379110, 37.497375, 38.995735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.187979, 37.418907, 39.117847>,  <29.869425, 37.288124, 39.321365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.187979, 37.418907, 39.117847> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397095, 0.351860, 0.847650,
		0.456170, -0.877094, 0.150383,
		0.796382, 0.326957, -0.508797,
		30.426893, 37.516994, 38.965210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.419088, 36.999939, 39.692856>,  <29.869425, 37.288124, 39.321365>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.419088, 36.999939, 39.692856> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.579081, 37.293823, 39.473686>,  <30.675076, 37.470154, 39.342186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.579081, 37.293823, 39.473686>,  <30.419088, 36.999939, 39.692856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.579081, 37.293823, 39.473686> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452556, 0.361543, 0.815156,
		0.797000, -0.574012, -0.187886,
		0.399981, 0.734708, -0.547922,
		30.699076, 37.514236, 39.309311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.181799, 37.025475, 39.826080>,  <30.419088, 36.999939, 39.692856>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.181799, 37.025475, 39.826080> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.067291, 37.383888, 39.690334>,  <30.998587, 37.598938, 39.608887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.067291, 37.383888, 39.690334>,  <31.181799, 37.025475, 39.826080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.067291, 37.383888, 39.690334> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442687, 0.437803, 0.782532,
		0.849752, 0.073785, -0.521994,
		-0.286269, 0.896038, -0.339361,
		30.981411, 37.652699, 39.588528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.750683, 37.393803, 40.070065>,  <31.181799, 37.025475, 39.826080>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.750683, 37.393803, 40.070065> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.456205, 37.644253, 39.967316>,  <31.279518, 37.794521, 39.905666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.456205, 37.644253, 39.967316>,  <31.750683, 37.393803, 40.070065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.456205, 37.644253, 39.967316> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162954, 0.532392, 0.830665,
		0.656858, 0.569673, -0.493974,
		-0.736195, 0.626124, -0.256875,
		31.235348, 37.832088, 39.890251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.028793, 37.924664, 40.243160>,  <31.750683, 37.393803, 40.070065>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.028793, 37.924664, 40.243160> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.639730, 38.015652, 40.224403>,  <31.406294, 38.070244, 40.213150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.639730, 38.015652, 40.224403>,  <32.028793, 37.924664, 40.243160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.639730, 38.015652, 40.224403> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069442, 0.477486, 0.875891,
		0.221630, 0.848684, -0.480225,
		-0.972655, 0.227471, -0.046891,
		31.347935, 38.083893, 40.210335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.012016, 38.577614, 40.413506>,  <32.028793, 37.924664, 40.243160>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.012016, 38.577614, 40.413506> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.642286, 38.443512, 40.486408>,  <31.420446, 38.363049, 40.530151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.642286, 38.443512, 40.486408>,  <32.012016, 38.577614, 40.413506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.642286, 38.443512, 40.486408> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044683, 0.379242, 0.924218,
		-0.378971, 0.862426, -0.335564,
		-0.924329, -0.335257, 0.182258,
		31.364988, 38.342934, 40.541084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.671211, 39.150677, 40.780689>,  <32.012016, 38.577614, 40.413506>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.671211, 39.150677, 40.780689> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.449654, 38.824169, 40.846298>,  <31.316719, 38.628265, 40.885662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.449654, 38.824169, 40.846298>,  <31.671211, 39.150677, 40.780689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.449654, 38.824169, 40.846298> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062414, 0.237159, 0.969464,
		-0.830244, 0.526744, -0.182308,
		-0.553895, -0.816270, 0.164023,
		31.283485, 38.579288, 40.895504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.126669, 39.437962, 41.221855>,  <31.671211, 39.150677, 40.780689>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.126669, 39.437962, 41.221855> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.127518, 39.040352, 41.265518>,  <31.128027, 38.801788, 41.291714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.127518, 39.040352, 41.265518>,  <31.126669, 39.437962, 41.221855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.127518, 39.040352, 41.265518> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038199, 0.108993, 0.993308,
		-0.999268, -0.006277, -0.037739,
		0.002122, -0.994023, 0.109153,
		31.128155, 38.742146, 41.298264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.629433, 39.219921, 41.708511>,  <31.126669, 39.437962, 41.221855>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.629433, 39.219921, 41.708511> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.856409, 38.890617, 41.714916>,  <30.992596, 38.693035, 41.718758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.856409, 38.890617, 41.714916>,  <30.629433, 39.219921, 41.708511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.856409, 38.890617, 41.714916> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062271, -0.023518, 0.997782,
		-0.821056, -0.567180, -0.064610,
		0.567442, -0.823258, 0.016009,
		31.026642, 38.643639, 41.719719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.261259, 38.750484, 42.128853>,  <30.629433, 39.219921, 41.708511>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.261259, 38.750484, 42.128853> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.657574, 38.696545, 42.133873>,  <30.895363, 38.664181, 42.136883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.657574, 38.696545, 42.133873>,  <30.261259, 38.750484, 42.128853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.657574, 38.696545, 42.133873> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002629, 0.073485, 0.997293,
		-0.135409, -0.988137, 0.072453,
		0.990786, -0.134852, 0.012549,
		30.954809, 38.656090, 42.137638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.492012, 37.488304, 45.879513> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.162163, 37.263046, 45.858109>,  <38.964252, 37.127892, 45.845264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.162163, 37.263046, 45.858109>,  <39.492012, 37.488304, 45.879513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.162163, 37.263046, 45.858109> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259175, 0.292042, 0.920619,
		-0.502811, 0.773036, -0.386778,
		-0.824627, -0.563140, -0.053510,
		38.914776, 37.094105, 45.842056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.931908, 37.923683, 46.048565>,  <39.492012, 37.488304, 45.879513>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.931908, 37.923683, 46.048565> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.816536, 37.551208, 46.137745>,  <38.747314, 37.327724, 46.191254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.816536, 37.551208, 46.137745>,  <38.931908, 37.923683, 46.048565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.816536, 37.551208, 46.137745> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140034, 0.271369, 0.952234,
		-0.947207, 0.243427, -0.208667,
		-0.288425, -0.931183, 0.222955,
		38.730007, 37.271854, 46.204632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.346615, 38.006802, 46.443066>,  <38.931908, 37.923683, 46.048565>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.346615, 38.006802, 46.443066> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.449745, 37.625122, 46.503769>,  <38.511623, 37.396114, 46.540192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.449745, 37.625122, 46.503769>,  <38.346615, 38.006802, 46.443066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.449745, 37.625122, 46.503769> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144522, 0.117212, 0.982535,
		-0.955321, -0.275258, -0.107682,
		0.257829, -0.954198, 0.151756,
		38.527096, 37.338863, 46.549297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.956314, 37.705475, 46.856705>,  <38.346615, 38.006802, 46.443066>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.956314, 37.705475, 46.856705> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.227337, 37.414093, 46.897236>,  <38.389950, 37.239265, 46.921555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.227337, 37.414093, 46.897236>,  <37.956314, 37.705475, 46.856705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.227337, 37.414093, 46.897236> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253180, -0.101666, 0.962062,
		-0.690516, -0.677510, -0.253315,
		0.677560, -0.728453, 0.101330,
		38.430607, 37.195557, 46.927635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.642254, 37.043480, 47.221817>,  <37.956314, 37.705475, 46.856705>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.642254, 37.043480, 47.221817> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.039562, 37.066936, 47.261768>,  <38.277946, 37.081009, 47.285740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.039562, 37.066936, 47.261768>,  <37.642254, 37.043480, 47.221817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.039562, 37.066936, 47.261768> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091284, -0.134422, 0.986711,
		0.071287, -0.989187, -0.128165,
		0.993270, 0.058640, 0.099879,
		38.337543, 37.084530, 47.291733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.726986, 36.837185, 47.874416>,  <37.642254, 37.043480, 47.221817>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.726986, 36.837185, 47.874416> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.093037, 36.988655, 47.819057>,  <38.312668, 37.079536, 47.785843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.093037, 36.988655, 47.819057>,  <37.726986, 36.837185, 47.874416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.093037, 36.988655, 47.819057> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171583, -0.055164, 0.983624,
		0.364841, -0.923884, -0.115457,
		0.915124, 0.378676, -0.138396,
		38.367573, 37.102257, 47.777538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.196205, 36.354061, 48.246273>,  <37.726986, 36.837185, 47.874416>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.196205, 36.354061, 48.246273> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.384502, 36.704098, 48.201347>,  <38.497482, 36.914120, 48.174393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.384502, 36.704098, 48.201347>,  <38.196205, 36.354061, 48.246273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.384502, 36.704098, 48.201347> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232873, -0.000454, 0.972507,
		0.850980, -0.483961, -0.203999,
		0.470748, 0.875090, -0.112315,
		38.525726, 36.966625, 48.167652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.772156, 36.203075, 48.644653>,  <38.196205, 36.354061, 48.246273>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.772156, 36.203075, 48.644653> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.722317, 36.597534, 48.600864>,  <38.692413, 36.834209, 48.574593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.722317, 36.597534, 48.600864>,  <38.772156, 36.203075, 48.644653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.722317, 36.597534, 48.600864> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200553, 0.133084, 0.970601,
		0.971727, 0.098979, -0.214357,
		-0.124597, 0.986150, -0.109471,
		38.684937, 36.893379, 48.568024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.377201, 36.520985, 48.947128>,  <38.772156, 36.203075, 48.644653>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.377201, 36.520985, 48.947128> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.080700, 36.788288, 48.921879>,  <38.902802, 36.948669, 48.906731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.080700, 36.788288, 48.921879>,  <39.377201, 36.520985, 48.947128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.080700, 36.788288, 48.921879> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203589, 0.313437, 0.927528,
		0.639610, 0.674680, -0.368384,
		-0.741250, 0.668255, -0.063120,
		38.858326, 36.988766, 48.902943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.629402, 37.000381, 49.354176>,  <39.377201, 36.520985, 48.947128>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.629402, 37.000381, 49.354176> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.247684, 37.107830, 49.301781>,  <39.018654, 37.172298, 49.270344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.247684, 37.107830, 49.301781>,  <39.629402, 37.000381, 49.354176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.247684, 37.107830, 49.301781> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001363, 0.442209, 0.896911,
		0.298858, 0.855741, -0.422365,
		-0.954297, 0.268625, -0.130991,
		38.961395, 37.188419, 49.262482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.549252, 37.731609, 49.561829>,  <39.629402, 37.000381, 49.354176>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.549252, 37.731609, 49.561829> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.197525, 37.544815, 49.599190>,  <38.986488, 37.432739, 49.621609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.197525, 37.544815, 49.599190>,  <39.549252, 37.731609, 49.561829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.197525, 37.544815, 49.599190> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076001, 0.331225, 0.940486,
		-0.470131, 0.819888, -0.326744,
		-0.879318, -0.466984, 0.093407,
		38.933731, 37.404720, 49.627213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.218788, 38.094276, 50.010082>,  <39.549252, 37.731609, 49.561829>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.218788, 38.094276, 50.010082> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.990513, 37.765835, 50.014217>,  <38.853550, 37.568771, 50.016697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.990513, 37.765835, 50.014217>,  <39.218788, 38.094276, 50.010082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.990513, 37.765835, 50.014217> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137840, 0.108199, 0.984527,
		-0.809517, 0.560430, -0.174928,
		-0.570685, -0.821104, 0.010339,
		38.819305, 37.519505, 50.017319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.560619, 38.204746, 50.292522>,  <39.218788, 38.094276, 50.010082>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.560619, 38.204746, 50.292522> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.624588, 37.822765, 50.392517>,  <38.662968, 37.593578, 50.452515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.624588, 37.822765, 50.392517>,  <38.560619, 38.204746, 50.292522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.624588, 37.822765, 50.392517> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197193, 0.217240, 0.955992,
		-0.967234, -0.202178, -0.153568,
		0.159919, -0.954951, 0.249990,
		38.672565, 37.536282, 50.467514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.968166, 37.974529, 50.610722>,  <38.560619, 38.204746, 50.292522>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.968166, 37.974529, 50.610722> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.295227, 37.796566, 50.756870>,  <38.491463, 37.689789, 50.844559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.295227, 37.796566, 50.756870>,  <37.968166, 37.974529, 50.610722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.295227, 37.796566, 50.756870> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335812, 0.146916, 0.930401,
		-0.467625, -0.883442, -0.029280,
		0.817653, -0.444912, 0.365372,
		38.540524, 37.663094, 50.866482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.363148, 38.341679, 50.841106>,  <37.968166, 37.974529, 50.610722>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.363148, 38.341679, 50.841106> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.006317, 38.521912, 50.854816>,  <36.792217, 38.630051, 50.863041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.006317, 38.521912, 50.854816>,  <37.363148, 38.341679, 50.841106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.006317, 38.521912, 50.854816> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055454, -0.033885, -0.997886,
		-0.448471, -0.892090, 0.055215,
		-0.892075, 0.450585, 0.034273,
		36.738693, 38.657085, 50.865097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.881645, 37.869904, 50.569653>,  <37.363148, 38.341679, 50.841106>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.881645, 37.869904, 50.569653> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.698128, 38.219486, 50.505524>,  <36.588017, 38.429237, 50.467045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.698128, 38.219486, 50.505524>,  <36.881645, 37.869904, 50.569653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.698128, 38.219486, 50.505524> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079287, -0.219982, -0.972276,
		-0.885001, -0.433358, 0.170219,
		-0.458789, 0.873961, -0.160325,
		36.560490, 38.481674, 50.457428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.323517, 37.712925, 50.118328>,  <36.881645, 37.869904, 50.569653>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.323517, 37.712925, 50.118328> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.373035, 38.105907, 50.062527>,  <36.402744, 38.341698, 50.029045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.373035, 38.105907, 50.062527>,  <36.323517, 37.712925, 50.118328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.373035, 38.105907, 50.062527> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276635, -0.100843, -0.955669,
		-0.952968, 0.156896, 0.259298,
		0.123792, 0.982453, -0.139504,
		36.410172, 38.400642, 50.020676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.739525, 37.962128, 49.682079>,  <36.323517, 37.712925, 50.118328>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.739525, 37.962128, 49.682079> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.995968, 38.266434, 49.641651>,  <36.149834, 38.449017, 49.617393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.995968, 38.266434, 49.641651>,  <35.739525, 37.962128, 49.682079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.995968, 38.266434, 49.641651> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081766, -0.063242, -0.994643,
		-0.763084, 0.645937, 0.021660,
		0.641106, 0.760767, -0.101075,
		36.188301, 38.494663, 49.611328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.451313, 38.534771, 49.263767>,  <35.739525, 37.962128, 49.682079>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.451313, 38.534771, 49.263767> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.846455, 38.580135, 49.221294>,  <36.083542, 38.607353, 49.195808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.846455, 38.580135, 49.221294>,  <35.451313, 38.534771, 49.263767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.846455, 38.580135, 49.221294> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108290, 0.012549, -0.994040,
		-0.111405, 0.993469, 0.024678,
		0.987858, 0.113414, -0.106184,
		36.142811, 38.614159, 49.189438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.411659, 39.021675, 48.768150>,  <35.451313, 38.534771, 49.263767>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.411659, 39.021675, 48.768150> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.773415, 38.851254, 48.777584>,  <35.990467, 38.749001, 48.783245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.773415, 38.851254, 48.777584>,  <35.411659, 39.021675, 48.768150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.773415, 38.851254, 48.777584> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059936, 0.072107, -0.995594,
		0.422477, 0.901819, 0.090749,
		0.904390, -0.426055, 0.023588,
		36.044731, 38.723438, 48.784660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.850471, 39.490082, 48.362591>,  <35.411659, 39.021675, 48.768150>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.850471, 39.490082, 48.362591> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.003139, 39.120636, 48.376873>,  <36.094738, 38.898968, 48.385445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.003139, 39.120636, 48.376873>,  <35.850471, 39.490082, 48.362591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.003139, 39.120636, 48.376873> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092616, -0.000225, -0.995702,
		0.919648, 0.383333, 0.085456,
		0.381666, -0.923610, 0.035710,
		36.117638, 38.843552, 48.387585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.409184, 39.574463, 47.903511>,  <35.850471, 39.490082, 48.362591>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.409184, 39.574463, 47.903511> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.322578, 39.184681, 47.927372>,  <36.270615, 38.950813, 47.941689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.322578, 39.184681, 47.927372>,  <36.409184, 39.574463, 47.903511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.322578, 39.184681, 47.927372> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105253, -0.037450, -0.993740,
		0.970590, -0.221435, -0.094456,
		-0.216512, -0.974455, 0.059656,
		36.257626, 38.892345, 47.945271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.758942, 39.232460, 47.395466>,  <36.409184, 39.574463, 47.903511>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.758942, 39.232460, 47.395466> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.508934, 38.930733, 47.475822>,  <36.358929, 38.749695, 47.524036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.508934, 38.930733, 47.475822>,  <36.758942, 39.232460, 47.395466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.508934, 38.930733, 47.475822> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079911, -0.194173, -0.977707,
		0.776510, -0.627137, 0.061083,
		-0.625017, -0.754318, 0.200893,
		36.321430, 38.704437, 47.536091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.900917, 38.743523, 46.948269>,  <36.758942, 39.232460, 47.395466>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.900917, 38.743523, 46.948269> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.532063, 38.634659, 47.058243>,  <36.310749, 38.569340, 47.124229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.532063, 38.634659, 47.058243>,  <36.900917, 38.743523, 46.948269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.532063, 38.634659, 47.058243> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143238, -0.419985, -0.896156,
		0.359367, -0.865761, 0.348300,
		-0.922138, -0.272159, 0.274938,
		36.255421, 38.553013, 47.140724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.890068, 38.066940, 46.708786>,  <36.900917, 38.743523, 46.948269>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.890068, 38.066940, 46.708786> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.499489, 38.125656, 46.772022>,  <36.265141, 38.160885, 46.809963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.499489, 38.125656, 46.772022>,  <36.890068, 38.066940, 46.708786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.499489, 38.125656, 46.772022> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206334, -0.421549, -0.883019,
		-0.062976, -0.894846, 0.441911,
		-0.976453, 0.146791, 0.158090,
		36.206554, 38.169693, 46.819450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.533985, 37.515751, 46.342785>,  <36.890068, 38.066940, 46.708786>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.533985, 37.515751, 46.342785> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.260700, 37.801476, 46.403427>,  <36.096729, 37.972908, 46.439812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.260700, 37.801476, 46.403427>,  <36.533985, 37.515751, 46.342785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.260700, 37.801476, 46.403427> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450090, -0.248456, -0.857723,
		-0.575013, -0.654242, 0.491252,
		-0.683213, 0.714309, 0.151602,
		36.055737, 38.015770, 46.448906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.793564, 37.116814, 46.296207>,  <36.533985, 37.515751, 46.342785>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.793564, 37.116814, 46.296207> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.781693, 37.508018, 46.213646>,  <35.774570, 37.742741, 46.164108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.781693, 37.508018, 46.213646>,  <35.793564, 37.116814, 46.296207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.781693, 37.508018, 46.213646> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259784, -0.206949, -0.943231,
		-0.965211, 0.025631, 0.260214,
		-0.029675, 0.978016, -0.206408,
		35.772789, 37.801422, 46.151722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.140953, 37.273506, 45.899609>,  <35.793564, 37.116814, 46.296207>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.140953, 37.273506, 45.899609> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.413956, 37.551788, 45.810001>,  <35.577759, 37.718758, 45.756237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.413956, 37.551788, 45.810001>,  <35.140953, 37.273506, 45.899609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.413956, 37.551788, 45.810001> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036696, -0.273500, -0.961172,
		-0.729959, 0.664225, -0.161136,
		0.682505, 0.695703, -0.224018,
		35.618706, 37.760498, 45.742794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.473175, 37.479057, 45.613121>,  <35.140953, 37.273506, 45.899609>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.473175, 37.479057, 45.613121> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.100662, 37.347202, 45.551079>,  <33.877155, 37.268089, 45.513855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.100662, 37.347202, 45.551079>,  <34.473175, 37.479057, 45.613121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.100662, 37.347202, 45.551079> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192971, 0.085227, 0.977496,
		-0.309004, 0.940252, -0.142981,
		-0.931278, -0.329641, -0.155106,
		33.821278, 37.248310, 45.504547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.068489, 37.887398, 46.057178>,  <34.473175, 37.479057, 45.613121>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.068489, 37.887398, 46.057178> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.822407, 37.580727, 45.983711>,  <33.674759, 37.396725, 45.939632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.822407, 37.580727, 45.983711>,  <34.068489, 37.887398, 46.057178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.822407, 37.580727, 45.983711> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246357, -0.034345, 0.968570,
		-0.748889, 0.641113, -0.167747,
		-0.615202, -0.766677, -0.183664,
		33.637848, 37.350723, 45.928612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.469532, 38.011688, 46.370541>,  <34.068489, 37.887398, 46.057178>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.469532, 38.011688, 46.370541> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.452751, 37.612919, 46.344044>,  <33.442684, 37.373657, 46.328144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.452751, 37.612919, 46.344044>,  <33.469532, 38.011688, 46.370541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.452751, 37.612919, 46.344044> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216033, -0.055685, 0.974797,
		-0.975484, 0.055206, -0.213032,
		-0.041952, -0.996921, -0.066246,
		33.440166, 37.313843, 46.324169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.780575, 37.769253, 46.645348>,  <33.469532, 38.011688, 46.370541>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.780575, 37.769253, 46.645348> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.999371, 37.435230, 46.668949>,  <33.130650, 37.234818, 46.683109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.999371, 37.435230, 46.668949>,  <32.780575, 37.769253, 46.645348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.999371, 37.435230, 46.668949> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264346, -0.105416, 0.958650,
		-0.794306, -0.539971, -0.278405,
		0.546991, -0.835056, 0.059006,
		33.163467, 37.184715, 46.686649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.411167, 37.400711, 46.915276>,  <32.780575, 37.769253, 46.645348>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.411167, 37.400711, 46.915276> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.773891, 37.247719, 46.986160>,  <32.991524, 37.155922, 47.028690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.773891, 37.247719, 46.986160>,  <32.411167, 37.400711, 46.915276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.773891, 37.247719, 46.986160> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182331, 0.023157, 0.982964,
		-0.380072, -0.923672, -0.048740,
		0.906808, -0.382484, 0.177216,
		33.045933, 37.132973, 47.039326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.264244, 37.009781, 47.486076>,  <32.411167, 37.400711, 46.915276>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.264244, 37.009781, 47.486076> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.659130, 37.072758, 47.496037>,  <32.896061, 37.110546, 47.502014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.659130, 37.072758, 47.496037>,  <32.264244, 37.009781, 47.486076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.659130, 37.072758, 47.496037> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056482, 0.199439, 0.978281,
		0.149056, -0.967179, 0.205781,
		0.987214, 0.157442, 0.024901,
		32.955296, 37.119991, 47.503506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.454563, 36.741474, 48.056202>,  <32.264244, 37.009781, 47.486076>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.454563, 36.741474, 48.056202> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.791706, 36.944427, 47.984474>,  <32.993992, 37.066200, 47.941437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.791706, 36.944427, 47.984474>,  <32.454563, 36.741474, 48.056202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.791706, 36.944427, 47.984474> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117747, 0.151263, 0.981456,
		0.525094, -0.848343, 0.067751,
		0.842860, 0.507379, -0.179317,
		33.044563, 37.096642, 47.930679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.483112, 35.965187, 48.112144>,  <32.454563, 36.741474, 48.056202>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.483112, 35.965187, 48.112144> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.213318, 35.709637, 48.260147>,  <32.051441, 35.556305, 48.348949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.213318, 35.709637, 48.260147>,  <32.483112, 35.965187, 48.112144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.213318, 35.709637, 48.260147> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166069, -0.357042, -0.919207,
		0.719368, -0.681439, 0.134722,
		-0.674486, -0.638875, 0.370010,
		32.010971, 35.517975, 48.371151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.767990, 35.338280, 48.016407>,  <32.483112, 35.965187, 48.112144>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.767990, 35.338280, 48.016407> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.368454, 35.321762, 48.026344>,  <32.128735, 35.311852, 48.032307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.368454, 35.321762, 48.026344>,  <32.767990, 35.338280, 48.016407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.368454, 35.321762, 48.026344> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010114, -0.324342, -0.945886,
		0.047121, -0.945038, 0.323547,
		-0.998838, -0.041299, 0.024841,
		32.068802, 35.309372, 48.033798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.778610, 34.701607, 47.640770>,  <32.767990, 35.338280, 48.016407>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.778610, 34.701607, 47.640770> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.396675, 34.819427, 47.656353>,  <32.167515, 34.890121, 47.665703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.396675, 34.819427, 47.656353>,  <32.778610, 34.701607, 47.640770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.396675, 34.819427, 47.656353> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167661, -0.425906, -0.889097,
		-0.245294, -0.855478, 0.456058,
		-0.954840, 0.294553, 0.038958,
		32.110222, 34.907795, 47.668041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.442242, 34.122955, 47.489075>,  <32.778610, 34.701607, 47.640770>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.442242, 34.122955, 47.489075> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.203606, 34.427372, 47.387180>,  <32.060425, 34.610023, 47.326042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.203606, 34.427372, 47.387180>,  <32.442242, 34.122955, 47.489075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.203606, 34.427372, 47.387180> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010545, -0.324816, -0.945718,
		-0.802476, -0.561522, 0.201808,
		-0.596592, 0.761044, -0.254736,
		32.024628, 34.655685, 47.310760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.915567, 33.831074, 47.058323>,  <32.442242, 34.122955, 47.489075>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.915567, 33.831074, 47.058323> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.921467, 34.225540, 46.992287>,  <31.925007, 34.462219, 46.952663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.921467, 34.225540, 46.992287>,  <31.915567, 33.831074, 47.058323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.921467, 34.225540, 46.992287> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118235, -0.162234, -0.979643,
		-0.992876, 0.033966, 0.114207,
		0.014746, 0.986167, -0.165094,
		31.925890, 34.521389, 46.942757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.307228, 34.021324, 46.699043>,  <31.915567, 33.831074, 47.058323>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.307228, 34.021324, 46.699043> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.562147, 34.317593, 46.613945>,  <31.715099, 34.495354, 46.562885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.562147, 34.317593, 46.613945>,  <31.307228, 34.021324, 46.699043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.562147, 34.317593, 46.613945> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239362, -0.072157, -0.968246,
		-0.732500, 0.667985, 0.131303,
		0.637299, 0.740668, -0.212745,
		31.753336, 34.539795, 46.550121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.917555, 34.387718, 46.271488>,  <31.307228, 34.021324, 46.699043>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.917555, 34.387718, 46.271488> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.303434, 34.473011, 46.209660>,  <31.534962, 34.524189, 46.172562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.303434, 34.473011, 46.209660>,  <30.917555, 34.387718, 46.271488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.303434, 34.473011, 46.209660> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133123, -0.111591, -0.984797,
		-0.227241, 0.970607, -0.079265,
		0.964697, 0.213234, -0.154568,
		31.592844, 34.536980, 46.163288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<37.885952, 34.447922, 51.171734> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.888187, 34.846573, 51.139008>,  <37.889530, 35.085766, 51.119373>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.888187, 34.846573, 51.139008>,  <37.885952, 34.447922, 51.171734>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.888187, 34.846573, 51.139008> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192162, -0.081359, -0.977985,
		-0.981347, -0.010255, -0.191970,
		0.005589, 0.996632, -0.081812,
		37.889866, 35.145561, 51.114464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.384209, 34.691296, 50.663601>,  <37.885952, 34.447922, 51.171734>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.384209, 34.691296, 50.663601> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.708904, 34.924019, 50.683914>,  <37.903721, 35.063652, 50.696102>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.708904, 34.924019, 50.683914>,  <37.384209, 34.691296, 50.663601>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.708904, 34.924019, 50.683914> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113460, -0.071813, -0.990944,
		-0.572894, 0.810148, -0.124306,
		0.811738, 0.581810, 0.050778,
		37.952427, 35.098560, 50.699146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.491417, 35.156185, 50.028320>,  <37.384209, 34.691296, 50.663601>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.491417, 35.156185, 50.028320> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.857834, 35.151951, 50.188698>,  <38.077682, 35.149410, 50.284924>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.857834, 35.151951, 50.188698>,  <37.491417, 35.156185, 50.028320>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.857834, 35.151951, 50.188698> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398628, -0.086414, -0.913033,
		0.044310, 0.996203, -0.074940,
		0.916042, -0.010584, 0.400943,
		38.132645, 35.148777, 50.308979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.738949, 35.611862, 49.667435>,  <37.491417, 35.156185, 50.028320>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.738949, 35.611862, 49.667435> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.036064, 35.385731, 49.810913>,  <38.214333, 35.250050, 49.896999>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.036064, 35.385731, 49.810913>,  <37.738949, 35.611862, 49.667435>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.036064, 35.385731, 49.810913> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441961, 0.011577, -0.896960,
		0.502928, 0.824782, 0.258454,
		0.742788, -0.565333, 0.358699,
		38.258900, 35.216129, 49.918522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.451572, 35.878223, 49.514690>,  <37.738949, 35.611862, 49.667435>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.451572, 35.878223, 49.514690> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.515453, 35.489883, 49.586178>,  <38.553783, 35.256878, 49.629070>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.515453, 35.489883, 49.586178>,  <38.451572, 35.878223, 49.514690>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.515453, 35.489883, 49.586178> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444279, -0.090982, -0.891257,
		0.881539, 0.221736, 0.416799,
		0.159702, -0.970853, 0.178717,
		38.563362, 35.198627, 49.639793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.130455, 35.790852, 49.172470>,  <38.451572, 35.878223, 49.514690>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.130455, 35.790852, 49.172470> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.993076, 35.420353, 49.234589>,  <38.910648, 35.198055, 49.271858>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.993076, 35.420353, 49.234589>,  <39.130455, 35.790852, 49.172470>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.993076, 35.420353, 49.234589> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426685, -0.301191, -0.852774,
		0.836651, -0.226618, 0.498658,
		-0.343445, -0.926244, 0.155298,
		38.890041, 35.142479, 49.281178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.687683, 35.280590, 49.054436>,  <39.130455, 35.790852, 49.172470>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.687683, 35.280590, 49.054436> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.337147, 35.091221, 49.018879>,  <39.126827, 34.977600, 48.997543>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.337147, 35.091221, 49.018879>,  <39.687683, 35.280590, 49.054436>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.337147, 35.091221, 49.018879> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213360, -0.216043, -0.952787,
		0.431867, -0.853929, 0.290336,
		-0.876338, -0.473424, -0.088892,
		39.074245, 34.949192, 48.992210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.828011, 34.590515, 48.760933>,  <39.687683, 35.280590, 49.054436>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.828011, 34.590515, 48.760933> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.439766, 34.649223, 48.684658>,  <39.206818, 34.684448, 48.638893>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.439766, 34.649223, 48.684658>,  <39.828011, 34.590515, 48.760933>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.439766, 34.649223, 48.684658> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071801, -0.579704, -0.811658,
		-0.229673, -0.801500, 0.552131,
		-0.970616, 0.146772, -0.190690,
		39.148582, 34.693256, 48.627449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.666660, 33.996029, 48.584690>,  <39.828011, 34.590515, 48.760933>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.666660, 33.996029, 48.584690> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.375206, 34.227810, 48.438637>,  <39.200333, 34.366879, 48.351006>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.375206, 34.227810, 48.438637>,  <39.666660, 33.996029, 48.584690>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.375206, 34.227810, 48.438637> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017343, -0.548563, -0.835929,
		-0.684683, -0.602755, 0.409752,
		-0.728635, 0.579453, -0.365138,
		39.156616, 34.401646, 48.329094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.202915, 33.551853, 48.316513>,  <39.666660, 33.996029, 48.584690>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.202915, 33.551853, 48.316513> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.123978, 33.906239, 48.148643>,  <39.076614, 34.118870, 48.047920>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.123978, 33.906239, 48.148643>,  <39.202915, 33.551853, 48.316513>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.123978, 33.906239, 48.148643> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266654, -0.460464, -0.846681,
		-0.943372, -0.055182, 0.327116,
		-0.197347, 0.885962, -0.419674,
		39.064774, 34.172028, 48.022739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.578190, 33.498432, 47.945892>,  <39.202915, 33.551853, 48.316513>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.578190, 33.498432, 47.945892> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.729263, 33.834354, 47.789906>,  <38.819908, 34.035908, 47.696312>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.729263, 33.834354, 47.789906>,  <38.578190, 33.498432, 47.945892>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.729263, 33.834354, 47.789906> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347401, -0.261876, -0.900408,
		-0.858295, 0.475543, 0.192845,
		0.377681, 0.839810, -0.389970,
		38.842567, 34.086296, 47.672913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.004955, 33.841503, 47.471077>,  <38.578190, 33.498432, 47.945892>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.004955, 33.841503, 47.471077> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.377163, 33.941551, 47.364063>,  <38.600487, 34.001579, 47.299854>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.377163, 33.941551, 47.364063>,  <38.004955, 33.841503, 47.471077>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.377163, 33.941551, 47.364063> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168435, -0.356397, -0.919027,
		-0.325221, 0.900233, -0.289504,
		0.930517, 0.250124, -0.267538,
		38.656319, 34.016590, 47.283802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.314976, 33.758190, 47.175259>,  <38.004955, 33.841503, 47.471077>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.314976, 33.758190, 47.175259> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.981758, 33.569347, 47.059914>,  <36.781826, 33.456043, 46.990707>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.981758, 33.569347, 47.059914>,  <37.314976, 33.758190, 47.175259>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.981758, 33.569347, 47.059914> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360197, 0.067262, 0.930448,
		-0.419871, 0.878974, -0.226083,
		-0.833046, -0.472103, -0.288362,
		36.731846, 33.427715, 46.973404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.756268, 34.130711, 47.543598>,  <37.314976, 33.758190, 47.175259>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.756268, 34.130711, 47.543598> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.611179, 33.768154, 47.456985>,  <36.524124, 33.550621, 47.405018>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.611179, 33.768154, 47.456985>,  <36.756268, 34.130711, 47.543598>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.611179, 33.768154, 47.456985> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455892, -0.030058, 0.889527,
		-0.812769, 0.421367, -0.402315,
		-0.362725, -0.906392, -0.216528,
		36.502361, 33.496235, 47.392029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.994606, 34.241898, 47.480728>,  <36.756268, 34.130711, 47.543598>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.994606, 34.241898, 47.480728> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.070381, 33.853245, 47.537357>,  <36.115849, 33.620052, 47.571335>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.070381, 33.853245, 47.537357>,  <35.994606, 34.241898, 47.480728>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.070381, 33.853245, 47.537357> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452280, 0.041627, 0.890904,
		-0.871524, -0.232804, -0.431564,
		0.189441, -0.971633, 0.141571,
		36.127213, 33.561756, 47.579830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.413754, 34.029037, 47.666172>,  <35.994606, 34.241898, 47.480728>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.413754, 34.029037, 47.666172> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.653034, 33.723637, 47.763512>,  <35.796600, 33.540394, 47.821915>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.653034, 33.723637, 47.763512>,  <35.413754, 34.029037, 47.666172>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.653034, 33.723637, 47.763512> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491878, -0.110103, 0.863674,
		-0.632625, -0.636348, -0.441414,
		0.598198, -0.763504, 0.243352,
		35.832493, 33.494587, 47.836517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.060398, 33.459545, 47.551983>,  <35.413754, 34.029037, 47.666172>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.060398, 33.459545, 47.551983> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.339638, 33.447483, 47.838127>,  <35.507183, 33.440247, 48.009815>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.339638, 33.447483, 47.838127>,  <35.060398, 33.459545, 47.551983>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.339638, 33.447483, 47.838127> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693775, 0.218502, 0.686245,
		-0.177003, -0.975370, 0.131616,
		0.698101, -0.030156, 0.715363,
		35.549068, 33.438435, 48.052734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.647366, 33.051548, 47.967937>,  <35.060398, 33.459545, 47.551983>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.647366, 33.051548, 47.967937> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.955929, 33.233162, 48.146278>,  <35.141068, 33.342129, 48.253284>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.955929, 33.233162, 48.146278>,  <34.647366, 33.051548, 47.967937>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.955929, 33.233162, 48.146278> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550269, 0.124072, 0.825718,
		0.319586, -0.882304, 0.345550,
		0.771407, 0.454033, 0.445853,
		35.187351, 33.369373, 48.280033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.646454, 32.755608, 48.627518>,  <34.647366, 33.051548, 47.967937>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.646454, 32.755608, 48.627518> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.862637, 33.086987, 48.686295>,  <34.992344, 33.285812, 48.721561>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.862637, 33.086987, 48.686295>,  <34.646454, 32.755608, 48.627518>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.862637, 33.086987, 48.686295> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525125, 0.195672, 0.828225,
		0.657384, -0.524780, 0.540788,
		0.540453, 0.828443, 0.146944,
		35.024773, 33.335518, 48.730377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.810184, 32.729820, 49.348427>,  <34.646454, 32.755608, 48.627518>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.810184, 32.729820, 49.348427> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.887901, 33.111317, 49.256660>,  <34.934532, 33.340214, 49.201599>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.887901, 33.111317, 49.256660>,  <34.810184, 32.729820, 49.348427>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.887901, 33.111317, 49.256660> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581623, 0.300339, 0.755984,
		0.789914, -0.013448, 0.613070,
		0.194295, 0.953738, -0.229420,
		34.946190, 33.397438, 49.187836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.085289, 33.009655, 49.972904>,  <34.810184, 32.729820, 49.348427>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.085289, 33.009655, 49.972904> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.916492, 33.290382, 49.743340>,  <34.815216, 33.458820, 49.605602>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.916492, 33.290382, 49.743340>,  <35.085289, 33.009655, 49.972904>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.916492, 33.290382, 49.743340> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474970, 0.368065, 0.799332,
		0.772222, 0.609903, 0.178022,
		-0.421991, 0.701817, -0.573913,
		34.789894, 33.500927, 49.571167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.158978, 33.602936, 50.360046>,  <35.085289, 33.009655, 49.972904>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.158978, 33.602936, 50.360046> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.871319, 33.688774, 50.095688>,  <34.698723, 33.740276, 49.937073>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.871319, 33.688774, 50.095688>,  <35.158978, 33.602936, 50.360046>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.871319, 33.688774, 50.095688> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547933, 0.409776, 0.729283,
		0.427322, 0.886584, -0.177102,
		-0.719142, 0.214599, -0.660895,
		34.655575, 33.753155, 49.897419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.924721, 34.236435, 50.569698>,  <35.158978, 33.602936, 50.360046>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.924721, 34.236435, 50.569698> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.626892, 34.098724, 50.340935>,  <34.448193, 34.016098, 50.203678>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.626892, 34.098724, 50.340935>,  <34.924721, 34.236435, 50.569698>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.626892, 34.098724, 50.340935> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652866, 0.196919, 0.731430,
		-0.139198, 0.917984, -0.371390,
		-0.744574, -0.344281, -0.571909,
		34.403519, 33.995441, 50.169361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.417576, 34.685497, 50.714855>,  <34.924721, 34.236435, 50.569698>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.417576, 34.685497, 50.714855> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.253067, 34.358006, 50.554585>,  <34.154362, 34.161510, 50.458424>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.253067, 34.358006, 50.554585>,  <34.417576, 34.685497, 50.714855>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.253067, 34.358006, 50.554585> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722895, 0.025215, 0.690498,
		-0.555227, 0.573628, -0.602224,
		-0.411274, -0.818727, -0.400673,
		34.129684, 34.112389, 50.434383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.735996, 34.874382, 50.724174>,  <34.417576, 34.685497, 50.714855>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.735996, 34.874382, 50.724174> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.727348, 34.474712, 50.710415>,  <33.722160, 34.234909, 50.702160>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.727348, 34.474712, 50.710415>,  <33.735996, 34.874382, 50.724174>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.727348, 34.474712, 50.710415> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778091, -0.004788, 0.628133,
		-0.627779, 0.040351, -0.777345,
		-0.021624, -0.999174, -0.034402,
		33.720860, 34.174961, 50.700092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.073116, 34.798374, 50.764763>,  <33.735996, 34.874382, 50.724174>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.073116, 34.798374, 50.764763> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.208817, 34.429150, 50.837273>,  <33.290237, 34.207615, 50.880779>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.208817, 34.429150, 50.837273>,  <33.073116, 34.798374, 50.764763>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.208817, 34.429150, 50.837273> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723335, -0.132772, 0.677612,
		-0.601411, -0.361004, -0.712728,
		0.339251, -0.923064, 0.181277,
		33.310593, 34.152229, 50.891655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.513660, 34.310024, 50.729610>,  <33.073116, 34.798374, 50.764763>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.513660, 34.310024, 50.729610> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.369289, 34.608768, 50.953014>,  <32.282669, 34.788013, 51.087059>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.369289, 34.608768, 50.953014>,  <32.513660, 34.310024, 50.729610>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.369289, 34.608768, 50.953014> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098550, 0.564983, -0.819196,
		-0.927373, -0.350710, -0.130314,
		-0.360926, 0.746858, 0.558512,
		32.261013, 34.832825, 51.120567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.843773, 34.454842, 50.610046>,  <32.513660, 34.310024, 50.729610>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.843773, 34.454842, 50.610046> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.041519, 34.786385, 50.714813>,  <32.160168, 34.985310, 50.777676>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.041519, 34.786385, 50.714813>,  <31.843773, 34.454842, 50.610046>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.041519, 34.786385, 50.714813> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242194, 0.420723, -0.874262,
		-0.834831, 0.368771, 0.408735,
		0.494367, 0.828854, 0.261919,
		32.189831, 35.035042, 50.793388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.368547, 35.015282, 50.452099>,  <31.843773, 34.454842, 50.610046>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.368547, 35.015282, 50.452099> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.746571, 35.144894, 50.469379>,  <31.973385, 35.222660, 50.479748>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.746571, 35.144894, 50.469379>,  <31.368547, 35.015282, 50.452099>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.746571, 35.144894, 50.469379> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097202, 0.404733, -0.909254,
		-0.312112, 0.855100, 0.413994,
		0.945060, 0.324030, 0.043204,
		32.030090, 35.242104, 50.482342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.282974, 35.700245, 50.216183>,  <31.368547, 35.015282, 50.452099>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.282974, 35.700245, 50.216183> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.660305, 35.595360, 50.134815>,  <31.886703, 35.532429, 50.085995>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.660305, 35.595360, 50.134815>,  <31.282974, 35.700245, 50.216183>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.660305, 35.595360, 50.134815> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088586, 0.391753, -0.915796,
		0.319827, 0.881914, 0.346322,
		0.943326, -0.262217, -0.203419,
		31.943302, 35.516693, 50.073792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.578024, 36.230915, 49.846928>,  <31.282974, 35.700245, 50.216183>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.578024, 36.230915, 49.846928> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.804922, 35.922501, 49.731182>,  <31.941061, 35.737450, 49.661736>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.804922, 35.922501, 49.731182>,  <31.578024, 36.230915, 49.846928>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.804922, 35.922501, 49.731182> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070722, 0.304455, -0.949898,
		0.820507, 0.559288, 0.118171,
		0.567244, -0.771041, -0.289362,
		31.975096, 35.691189, 49.644375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.819138, 36.461094, 49.271175>,  <31.578024, 36.230915, 49.846928>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.819138, 36.461094, 49.271175> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.912880, 36.073708, 49.237335>,  <31.969126, 35.841278, 49.217030>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.912880, 36.073708, 49.237335>,  <31.819138, 36.461094, 49.271175>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.912880, 36.073708, 49.237335> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066151, 0.070935, -0.995285,
		0.969898, 0.238847, -0.047441,
		0.234355, -0.968463, -0.084599,
		31.983187, 35.783169, 49.211956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.328396, 36.365025, 48.690601>,  <31.819138, 36.461094, 49.271175>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.328396, 36.365025, 48.690601> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.147125, 36.012226, 48.742313>,  <32.038364, 35.800545, 48.773342>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.147125, 36.012226, 48.742313>,  <32.328396, 36.365025, 48.690601>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.147125, 36.012226, 48.742313> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084206, -0.186738, -0.978794,
		0.887437, -0.432676, 0.158894,
		-0.453172, -0.881998, 0.129284,
		32.011173, 35.747627, 48.781097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.087284, 36.400120, 48.551006>,  <32.328396, 36.365025, 48.690601>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.087284, 36.400120, 48.551006> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.171021, 36.771210, 48.427391>,  <33.221264, 36.993862, 48.353222>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.171021, 36.771210, 48.427391>,  <33.087284, 36.400120, 48.551006>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.171021, 36.771210, 48.427391> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450086, 0.189151, 0.872722,
		0.868100, -0.321792, -0.377958,
		0.209344, 0.927724, -0.309036,
		33.233822, 37.049526, 48.334679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.725273, 36.530510, 48.864429>,  <33.087284, 36.400120, 48.551006>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.725273, 36.530510, 48.864429> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.573837, 36.884560, 48.756187>,  <33.482975, 37.096989, 48.691242>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.573837, 36.884560, 48.756187>,  <33.725273, 36.530510, 48.864429>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.573837, 36.884560, 48.756187> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450052, 0.431521, 0.781820,
		0.808778, 0.174204, -0.561721,
		-0.378590, 0.885123, -0.270604,
		33.460258, 37.150097, 48.675007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.336796, 36.999317, 48.782875>,  <33.725273, 36.530510, 48.864429>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.336796, 36.999317, 48.782875> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.998035, 37.205719, 48.834255>,  <33.794781, 37.329559, 48.865082>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.998035, 37.205719, 48.834255>,  <34.336796, 36.999317, 48.782875>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.998035, 37.205719, 48.834255> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348520, 0.356202, 0.866980,
		0.401611, 0.779013, -0.481505,
		-0.846902, 0.516003, 0.128446,
		33.743965, 37.360519, 48.872787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.564392, 37.755356, 48.845383>,  <34.336796, 36.999317, 48.782875>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.564392, 37.755356, 48.845383> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.207291, 37.741871, 49.025097>,  <33.993031, 37.733780, 49.132923>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.207291, 37.741871, 49.025097>,  <34.564392, 37.755356, 48.845383>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.207291, 37.741871, 49.025097> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385766, 0.457966, 0.800907,
		-0.232755, 0.888330, -0.395846,
		-0.892754, -0.033712, 0.449281,
		33.939465, 37.731758, 49.159882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.516750, 38.413555, 49.151627>,  <34.564392, 37.755356, 48.845383>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.516750, 38.413555, 49.151627> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.257713, 38.174519, 49.340733>,  <34.102291, 38.031097, 49.454197>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.257713, 38.174519, 49.340733>,  <34.516750, 38.413555, 49.151627>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.257713, 38.174519, 49.340733> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193223, 0.471376, 0.860505,
		-0.737080, 0.648608, -0.189792,
		-0.647594, -0.597589, 0.472768,
		34.063435, 37.995243, 49.482563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.214237, 38.893589, 49.618145>,  <34.516750, 38.413555, 49.151627>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.214237, 38.893589, 49.618145> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.149670, 38.519157, 49.743176>,  <34.110928, 38.294498, 49.818192>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.149670, 38.519157, 49.743176>,  <34.214237, 38.893589, 49.618145>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.149670, 38.519157, 49.743176> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293618, 0.256831, 0.920775,
		-0.942195, 0.240411, 0.233391,
		-0.161423, -0.936077, 0.312574,
		34.101242, 38.238335, 49.836948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.890701, 38.815853, 50.225307>,  <34.214237, 38.893589, 49.618145>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.890701, 38.815853, 50.225307> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.040173, 38.445171, 50.241192>,  <34.129856, 38.222763, 50.250725>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.040173, 38.445171, 50.241192>,  <33.890701, 38.815853, 50.225307>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.040173, 38.445171, 50.241192> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264838, 0.147628, 0.952925,
		-0.888947, -0.345567, 0.300592,
		0.373676, -0.926709, 0.039714,
		34.152275, 38.167160, 50.253105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.828587, 38.669514, 50.934486>,  <33.890701, 38.815853, 50.225307>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.828587, 38.669514, 50.934486> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.078671, 38.381264, 50.814613>,  <34.228722, 38.208313, 50.742687>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.078671, 38.381264, 50.814613>,  <33.828587, 38.669514, 50.934486>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.078671, 38.381264, 50.814613> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438424, 0.006615, 0.898744,
		-0.645672, -0.693296, 0.320075,
		0.625213, -0.720623, -0.299687,
		34.266235, 38.165077, 50.724709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.710232, 37.997726, 51.378105>,  <33.828587, 38.669514, 50.934486>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.710232, 37.997726, 51.378105> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.081482, 38.016941, 51.230446>,  <34.304234, 38.028469, 51.141850>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.081482, 38.016941, 51.230446>,  <33.710232, 37.997726, 51.378105>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.081482, 38.016941, 51.230446> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371656, -0.062929, 0.926235,
		0.021267, -0.996861, -0.076261,
		0.928127, 0.048041, -0.369151,
		34.359921, 38.031353, 51.119701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.985657, 32.745548, 36.307247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.353432, 32.850391, 36.424503>,  <36.574097, 32.913300, 36.494858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.353432, 32.850391, 36.424503>,  <35.985657, 32.745548, 36.307247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.353432, 32.850391, 36.424503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393003, 0.638017, 0.662180,
		-0.013464, -0.724039, 0.689628,
		0.919439, 0.262110, 0.293139,
		36.629265, 32.929024, 36.512444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.271996, 32.645554, 37.062607>,  <35.985657, 32.745548, 36.307247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.271996, 32.645554, 37.062607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.470875, 32.965820, 36.928909>,  <36.590202, 33.157982, 36.848690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.470875, 32.965820, 36.928909>,  <36.271996, 32.645554, 37.062607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.470875, 32.965820, 36.928909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242285, 0.498034, 0.832622,
		0.833121, -0.332997, 0.441613,
		0.497199, 0.800672, -0.334243,
		36.620033, 33.206020, 36.828636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.706108, 32.821812, 37.624123>,  <36.271996, 32.645554, 37.062607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.706108, 32.821812, 37.624123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.661633, 33.147743, 37.396549>,  <36.634949, 33.343304, 37.260006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.661633, 33.147743, 37.396549>,  <36.706108, 32.821812, 37.624123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.661633, 33.147743, 37.396549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254576, 0.530029, 0.808863,
		0.960640, 0.234772, 0.148504,
		-0.111187, 0.814832, -0.568934,
		36.628277, 33.392193, 37.225868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.898384, 33.283730, 38.059010>,  <36.706108, 32.821812, 37.624123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.898384, 33.283730, 38.059010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.698177, 33.506165, 37.793602>,  <36.578053, 33.639626, 37.634357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.698177, 33.506165, 37.793602>,  <36.898384, 33.283730, 38.059010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.698177, 33.506165, 37.793602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428816, 0.506559, 0.748007,
		0.752066, 0.658915, -0.015082,
		-0.500513, 0.556083, -0.663520,
		36.548023, 33.672989, 37.594547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.165791, 34.008881, 38.131687>,  <36.898384, 33.283730, 38.059010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.165791, 34.008881, 38.131687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.804775, 34.044804, 37.963234>,  <36.588165, 34.066357, 37.862164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.804775, 34.044804, 37.963234>,  <37.165791, 34.008881, 38.131687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.804775, 34.044804, 37.963234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243267, 0.700629, 0.670776,
		0.355299, 0.707851, -0.610499,
		-0.902543, 0.089812, -0.421130,
		36.534012, 34.071747, 37.836895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.050072, 34.682552, 38.189945>,  <37.165791, 34.008881, 38.131687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.050072, 34.682552, 38.189945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.688332, 34.522732, 38.129940>,  <36.471287, 34.426838, 38.093937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.688332, 34.522732, 38.129940>,  <37.050072, 34.682552, 38.189945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.688332, 34.522732, 38.129940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386611, 0.618059, 0.684496,
		-0.180775, 0.677022, -0.713415,
		-0.904352, -0.399554, -0.150015,
		36.417027, 34.402866, 38.084934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.564339, 35.165024, 38.511566>,  <37.050072, 34.682552, 38.189945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.564339, 35.165024, 38.511566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.323929, 34.849678, 38.459026>,  <36.179684, 34.660473, 38.427502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.323929, 34.849678, 38.459026>,  <36.564339, 35.165024, 38.511566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.323929, 34.849678, 38.459026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639821, 0.376120, 0.670196,
		-0.478952, 0.486848, -0.730468,
		-0.601027, -0.788361, -0.131352,
		36.143620, 34.613171, 38.419621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.839931, 35.371719, 38.662033>,  <36.564339, 35.165024, 38.511566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.839931, 35.371719, 38.662033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.816677, 34.973553, 38.692425>,  <35.802723, 34.734653, 38.710659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.816677, 34.973553, 38.692425>,  <35.839931, 35.371719, 38.662033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.816677, 34.973553, 38.692425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789107, 0.092439, 0.607260,
		-0.611498, -0.024648, -0.790862,
		-0.058139, -0.995413, 0.075976,
		35.799236, 34.674931, 38.715218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.092682, 35.210621, 38.492558>,  <35.839931, 35.371719, 38.662033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.092682, 35.210621, 38.492558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.260769, 34.949966, 38.745155>,  <35.361622, 34.793571, 38.896713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.260769, 34.949966, 38.745155>,  <35.092682, 35.210621, 38.492558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.260769, 34.949966, 38.745155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732890, 0.166617, 0.659630,
		-0.535058, -0.740003, -0.407564,
		0.420221, -0.651640, 0.631490,
		35.386837, 34.754475, 38.934601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.556915, 34.938946, 38.730999>,  <35.092682, 35.210621, 38.492558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.556915, 34.938946, 38.730999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.828037, 34.815163, 38.997780>,  <34.990711, 34.740894, 39.157848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.828037, 34.815163, 38.997780>,  <34.556915, 34.938946, 38.730999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.828037, 34.815163, 38.997780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669726, 0.114468, 0.733733,
		-0.303404, -0.943999, -0.129665,
		0.677800, -0.309457, 0.666951,
		35.031376, 34.722324, 39.197865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.193138, 34.547867, 39.211239>,  <34.556915, 34.938946, 38.730999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.193138, 34.547867, 39.211239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.529957, 34.661209, 39.394833>,  <34.732048, 34.729214, 39.504990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.529957, 34.661209, 39.394833>,  <34.193138, 34.547867, 39.211239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.529957, 34.661209, 39.394833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509040, 0.135948, 0.849939,
		0.178439, -0.949329, 0.258715,
		0.842044, 0.283359, 0.458988,
		34.782570, 34.746216, 39.532528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.320869, 34.185928, 39.866375>,  <34.193138, 34.547867, 39.211239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.320869, 34.185928, 39.866375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.537632, 34.519691, 39.906597>,  <34.667690, 34.719948, 39.930729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.537632, 34.519691, 39.906597>,  <34.320869, 34.185928, 39.866375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.537632, 34.519691, 39.906597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387233, 0.141702, 0.911027,
		0.745917, -0.532625, 0.399898,
		0.541902, 0.834405, 0.100552,
		34.700203, 34.770012, 39.936764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.052860, 33.701889, 40.476139>,  <34.320869, 34.185928, 39.866375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.052860, 33.701889, 40.476139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.678223, 33.564423, 40.448757>,  <33.453442, 33.481941, 40.432327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.678223, 33.564423, 40.448757>,  <34.052860, 33.701889, 40.476139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.678223, 33.564423, 40.448757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248918, -0.514987, -0.820261,
		0.246643, -0.785291, 0.567879,
		-0.936593, -0.343667, -0.068455,
		33.397243, 33.461323, 40.428219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.109222, 32.965454, 40.375973>,  <34.052860, 33.701889, 40.476139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.109222, 32.965454, 40.375973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.754940, 33.061695, 40.217163>,  <33.542370, 33.119438, 40.121876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.754940, 33.061695, 40.217163>,  <34.109222, 32.965454, 40.375973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.754940, 33.061695, 40.217163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237377, -0.500253, -0.832706,
		-0.398960, -0.831782, 0.385967,
		-0.885711, 0.240597, -0.397026,
		33.489227, 33.133873, 40.098057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.890816, 32.367054, 40.134769>,  <34.109222, 32.965454, 40.375973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.890816, 32.367054, 40.134769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.671261, 32.646008, 39.950432>,  <33.539528, 32.813377, 39.839828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.671261, 32.646008, 39.950432>,  <33.890816, 32.367054, 40.134769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.671261, 32.646008, 39.950432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035109, -0.531601, -0.846267,
		-0.835157, -0.480687, 0.267306,
		-0.548890, 0.697381, -0.460847,
		33.506596, 32.855221, 39.812180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.260353, 32.052620, 39.924625>,  <33.890816, 32.367054, 40.134769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.260353, 32.052620, 39.924625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.337826, 32.364014, 39.685814>,  <33.384308, 32.550850, 39.542526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.337826, 32.364014, 39.685814>,  <33.260353, 32.052620, 39.924625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.337826, 32.364014, 39.685814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023154, -0.612013, -0.790509,
		-0.980791, 0.139285, -0.136561,
		0.193683, 0.778486, -0.597032,
		33.395931, 32.597561, 39.506702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.861652, 31.967226, 39.228260>,  <33.260353, 32.052620, 39.924625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.861652, 31.967226, 39.228260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.117947, 32.253418, 39.116875>,  <33.271725, 32.425133, 39.050045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.117947, 32.253418, 39.116875>,  <32.861652, 31.967226, 39.228260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.117947, 32.253418, 39.116875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140247, -0.465668, -0.873776,
		-0.754841, 0.520809, -0.398715,
		0.640739, 0.715480, -0.278463,
		33.310169, 32.468063, 39.033337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.619671, 32.228413, 38.684258>,  <32.861652, 31.967226, 39.228260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.619671, 32.228413, 38.684258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.000538, 32.341499, 38.637886>,  <33.229057, 32.409351, 38.610062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.000538, 32.341499, 38.637886>,  <32.619671, 32.228413, 38.684258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.000538, 32.341499, 38.637886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015066, -0.422378, -0.906295,
		-0.305193, 0.861201, -0.406435,
		0.952171, 0.282718, -0.115932,
		33.286190, 32.426315, 38.603107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.661797, 32.628040, 38.025723>,  <32.619671, 32.228413, 38.684258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.661797, 32.628040, 38.025723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.025776, 32.488277, 38.115089>,  <33.244164, 32.404419, 38.168709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.025776, 32.488277, 38.115089>,  <32.661797, 32.628040, 38.025723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.025776, 32.488277, 38.115089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136832, -0.255605, -0.957049,
		0.391504, 0.901434, -0.184776,
		0.909946, -0.349405, 0.223415,
		33.298759, 32.383457, 38.182114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.036903, 32.600449, 37.442215>,  <32.661797, 32.628040, 38.025723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.036903, 32.600449, 37.442215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.252300, 32.354324, 37.672489>,  <33.381538, 32.206650, 37.810654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.252300, 32.354324, 37.672489>,  <33.036903, 32.600449, 37.442215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.252300, 32.354324, 37.672489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306945, -0.493022, -0.814072,
		0.784736, 0.615076, -0.076621,
		0.538493, -0.615313, 0.575687,
		33.413849, 32.169731, 37.845196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.747513, 32.668110, 37.206738>,  <33.036903, 32.600449, 37.442215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.747513, 32.668110, 37.206738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.689995, 32.315434, 37.386494>,  <33.655483, 32.103828, 37.494347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.689995, 32.315434, 37.386494>,  <33.747513, 32.668110, 37.206738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.689995, 32.315434, 37.386494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346371, -0.470227, -0.811735,
		0.927011, 0.038930, 0.373008,
		-0.143798, -0.881687, 0.449390,
		33.646854, 32.050926, 37.521309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.310085, 32.273975, 36.990932>,  <33.747513, 32.668110, 37.206738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.310085, 32.273975, 36.990932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.058704, 32.007523, 37.151588>,  <33.907875, 31.847652, 37.247982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.058704, 32.007523, 37.151588>,  <34.310085, 32.273975, 36.990932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.058704, 32.007523, 37.151588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270612, -0.671334, -0.689985,
		0.729255, -0.324936, 0.602166,
		-0.628456, -0.666129, 0.401642,
		33.870167, 31.807684, 37.272079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.704979, 31.733532, 37.051380>,  <34.310085, 32.273975, 36.990932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.704979, 31.733532, 37.051380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.325680, 31.608761, 37.075146>,  <34.098099, 31.533899, 37.089405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.325680, 31.608761, 37.075146>,  <34.704979, 31.733532, 37.051380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.325680, 31.608761, 37.075146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191379, -0.710725, -0.676937,
		0.253381, -0.630533, 0.733639,
		-0.948247, -0.311926, 0.059413,
		34.041206, 31.515182, 37.092968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.880398, 31.062643, 37.099052>,  <34.704979, 31.733532, 37.051380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.880398, 31.062643, 37.099052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.503223, 31.114843, 36.976513>,  <34.276920, 31.146164, 36.902988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.503223, 31.114843, 36.976513>,  <34.880398, 31.062643, 37.099052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.503223, 31.114843, 36.976513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164529, -0.617266, -0.769358,
		-0.289500, -0.775856, 0.560569,
		-0.942931, 0.130500, -0.306350,
		34.220345, 31.153994, 36.884609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.522640, 30.315702, 37.104645>,  <34.880398, 31.062643, 37.099052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.522640, 30.315702, 37.104645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.792011, 30.295975, 36.809605>,  <34.953636, 30.284138, 36.632580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.792011, 30.295975, 36.809605>,  <34.522640, 30.315702, 37.104645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.792011, 30.295975, 36.809605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661462, 0.485722, 0.571439,
		0.330086, -0.872721, 0.359724,
		0.673432, -0.049319, -0.737602,
		34.994041, 30.281179, 36.588326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.047718, 29.886580, 37.285156>,  <34.522640, 30.315702, 37.104645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.047718, 29.886580, 37.285156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.174892, 30.158915, 37.021225>,  <35.251198, 30.322315, 36.862865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.174892, 30.158915, 37.021225>,  <35.047718, 29.886580, 37.285156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.174892, 30.158915, 37.021225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589688, 0.402958, 0.699924,
		0.742419, -0.611624, -0.273368,
		0.317934, 0.680838, -0.659831,
		35.270271, 30.363167, 36.823277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.764641, 30.059902, 37.487709>,  <35.047718, 29.886580, 37.285156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.764641, 30.059902, 37.487709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.656429, 30.350729, 37.235302>,  <35.591503, 30.525225, 37.083858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.656429, 30.350729, 37.235302>,  <35.764641, 30.059902, 37.487709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.656429, 30.350729, 37.235302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483417, 0.669426, 0.564072,
		0.832540, -0.152447, -0.532576,
		-0.270529, 0.727068, -0.631019,
		35.575272, 30.568850, 37.045998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.045467, 30.521538, 36.855751>,  <35.764641, 30.059902, 37.487709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.045467, 30.521538, 36.855751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.149914, 30.850460, 36.653511>,  <36.212582, 31.047813, 36.532166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.149914, 30.850460, 36.653511>,  <36.045467, 30.521538, 36.855751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.149914, 30.850460, 36.653511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192988, -0.468730, -0.862002,
		-0.945820, 0.322655, 0.036304,
		0.261113, 0.822305, -0.505603,
		36.228249, 31.097151, 36.501831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.669376, 30.880428, 37.121117>,  <36.045467, 30.521538, 36.855751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.669376, 30.880428, 37.121117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.040295, 30.739464, 37.171597>,  <37.262848, 30.654884, 37.201885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.040295, 30.739464, 37.171597>,  <36.669376, 30.880428, 37.121117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.040295, 30.739464, 37.171597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010089, 0.360540, 0.932689,
		-0.374189, -0.863607, 0.337883,
		0.927298, -0.352411, 0.126197,
		37.318485, 30.633741, 37.209457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.684315, 30.520473, 37.751465>,  <36.669376, 30.880428, 37.121117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.684315, 30.520473, 37.751465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.060074, 30.644094, 37.692108>,  <37.285530, 30.718267, 37.656494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.060074, 30.644094, 37.692108>,  <36.684315, 30.520473, 37.751465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.060074, 30.644094, 37.692108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030999, 0.354499, 0.934542,
		0.341414, -0.882510, 0.323437,
		0.939402, 0.309040, -0.148388,
		37.341892, 30.736809, 37.647591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.211258, 30.398277, 38.387493>,  <36.684315, 30.520473, 37.751465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.211258, 30.398277, 38.387493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.308319, 30.719561, 38.169880>,  <37.366558, 30.912331, 38.039310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.308319, 30.719561, 38.169880>,  <37.211258, 30.398277, 38.387493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.308319, 30.719561, 38.169880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106095, 0.535458, 0.837871,
		0.964294, -0.261033, 0.044716,
		0.242656, 0.803210, -0.544033,
		37.381115, 30.960524, 38.006668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.576302, 30.653278, 38.830044>,  <37.211258, 30.398277, 38.387493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.576302, 30.653278, 38.830044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.512215, 30.966455, 38.589600>,  <37.473763, 31.154362, 38.445332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.512215, 30.966455, 38.589600>,  <37.576302, 30.653278, 38.830044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.512215, 30.966455, 38.589600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016304, 0.610993, 0.791468,
		0.986946, 0.117010, -0.110659,
		-0.160222, 0.782941, -0.601110,
		37.464149, 31.201338, 38.409267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.919888, 31.112497, 39.157089>,  <37.576302, 30.653278, 38.830044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.919888, 31.112497, 39.157089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.653107, 31.302799, 38.927715>,  <37.493038, 31.416981, 38.790092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.653107, 31.302799, 38.927715>,  <37.919888, 31.112497, 39.157089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.653107, 31.302799, 38.927715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083640, 0.716942, 0.692098,
		0.740390, 0.509560, -0.438375,
		-0.666954, 0.475756, -0.573436,
		37.453022, 31.445526, 38.755684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.119637, 31.821346, 39.163357>,  <37.919888, 31.112497, 39.157089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.119637, 31.821346, 39.163357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.731857, 31.808689, 39.066055>,  <37.499191, 31.801096, 39.007675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.731857, 31.808689, 39.066055>,  <38.119637, 31.821346, 39.163357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.731857, 31.808689, 39.066055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197117, 0.690734, 0.695724,
		0.146011, 0.722416, -0.675866,
		-0.969446, -0.031641, -0.243255,
		37.441025, 31.799196, 38.993080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.933159, 32.591026, 39.103725>,  <38.119637, 31.821346, 39.163357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.933159, 32.591026, 39.103725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.596355, 32.381573, 39.155605>,  <37.394272, 32.255901, 39.186733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.596355, 32.381573, 39.155605>,  <37.933159, 32.591026, 39.103725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.596355, 32.381573, 39.155605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211786, 0.541990, 0.813261,
		-0.496145, 0.657308, -0.567262,
		-0.842013, -0.523634, 0.129697,
		37.343750, 32.224483, 39.194515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.475876, 33.081810, 39.312099>,  <37.933159, 32.591026, 39.103725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.475876, 33.081810, 39.312099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.320454, 32.731514, 39.426716>,  <37.227200, 32.521336, 39.495483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.320454, 32.731514, 39.426716>,  <37.475876, 33.081810, 39.312099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.320454, 32.731514, 39.426716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358853, 0.430243, 0.828321,
		-0.848675, 0.219023, -0.481435,
		-0.388555, -0.875740, 0.286539,
		37.203888, 32.468792, 39.512676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.716312, 33.144466, 39.340240>,  <37.475876, 33.081810, 39.312099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.716312, 33.144466, 39.340240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.826340, 32.845554, 39.582203>,  <36.892357, 32.666206, 39.727379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.826340, 32.845554, 39.582203>,  <36.716312, 33.144466, 39.340240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.826340, 32.845554, 39.582203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435472, 0.464095, 0.771349,
		-0.857147, -0.475595, -0.197760,
		0.275070, -0.747279, 0.604906,
		36.908859, 32.621372, 39.763676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.229557, 33.154732, 39.836452>,  <36.716312, 33.144466, 39.340240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.229557, 33.154732, 39.836452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.490009, 32.918514, 40.027149>,  <36.646282, 32.776783, 40.141567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.490009, 32.918514, 40.027149>,  <36.229557, 33.154732, 39.836452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.490009, 32.918514, 40.027149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413797, 0.250350, 0.875270,
		-0.636238, -0.767192, -0.081354,
		0.651133, -0.590544, 0.476744,
		36.685349, 32.741352, 40.170174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.839413, 32.733849, 40.318661>,  <36.229557, 33.154732, 39.836452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.839413, 32.733849, 40.318661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.202778, 32.648746, 40.462620>,  <36.420795, 32.597687, 40.548996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.202778, 32.648746, 40.462620>,  <35.839413, 32.733849, 40.318661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.202778, 32.648746, 40.462620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349772, 0.084796, 0.932989,
		-0.229015, -0.973419, 0.002614,
		0.908412, -0.212755, 0.359895,
		36.475300, 32.584919, 40.570587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.839275, 32.217812, 40.840828>,  <35.839413, 32.733849, 40.318661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.839275, 32.217812, 40.840828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.179153, 32.411716, 40.923794>,  <36.383080, 32.528057, 40.973572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.179153, 32.411716, 40.923794>,  <35.839275, 32.217812, 40.840828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.179153, 32.411716, 40.923794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203064, -0.062175, 0.977189,
		0.486598, -0.872435, 0.045607,
		0.849698, 0.484760, 0.207415,
		36.434063, 32.557144, 40.986019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.158993, 31.875549, 41.413452>,  <35.839275, 32.217812, 40.840828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.158993, 31.875549, 41.413452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.300976, 32.249451, 41.419636>,  <36.386166, 32.473793, 41.423344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.300976, 32.249451, 41.419636>,  <36.158993, 31.875549, 41.413452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.300976, 32.249451, 41.419636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032156, -0.028729, 0.999070,
		0.934328, -0.354134, -0.040255,
		0.354961, 0.934754, 0.015455,
		36.407463, 32.529877, 41.424271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.691669, 31.814907, 41.800045>,  <36.158993, 31.875549, 41.413452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.691669, 31.814907, 41.800045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.591530, 32.202019, 41.810883>,  <36.531448, 32.434284, 41.817387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.591530, 32.202019, 41.810883>,  <36.691669, 31.814907, 41.800045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.591530, 32.202019, 41.810883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256247, 0.039243, 0.965814,
		0.933630, 0.248731, -0.257814,
		-0.250345, 0.967777, 0.027098,
		36.516426, 32.492352, 41.819012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.186565, 32.187141, 42.242031>,  <36.691669, 31.814907, 41.800045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.186565, 32.187141, 42.242031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.879845, 32.443272, 42.224144>,  <36.695812, 32.596951, 42.213413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.879845, 32.443272, 42.224144>,  <37.186565, 32.187141, 42.242031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.879845, 32.443272, 42.224144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101398, 0.189627, 0.976606,
		0.633825, 0.744328, -0.210334,
		-0.766801, 0.640325, -0.044717,
		36.649803, 32.635368, 42.210728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.363548, 32.792717, 42.587406>,  <37.186565, 32.187141, 42.242031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.363548, 32.792717, 42.587406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.971291, 32.866371, 42.560783>,  <36.735935, 32.910564, 42.544811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.971291, 32.866371, 42.560783>,  <37.363548, 32.792717, 42.587406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.971291, 32.866371, 42.560783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005678, 0.313027, 0.949727,
		0.195707, 0.931724, -0.305923,
		-0.980646, 0.184131, -0.066552,
		36.677097, 32.921612, 42.540817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.342178, 33.398884, 42.908096>,  <37.363548, 32.792717, 42.587406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.342178, 33.398884, 42.908096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.969673, 33.253647, 42.920139>,  <36.746170, 33.166504, 42.927364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.969673, 33.253647, 42.920139>,  <37.342178, 33.398884, 42.908096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.969673, 33.253647, 42.920139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079482, 0.283097, 0.955792,
		-0.355567, 0.887703, -0.292498,
		-0.931265, -0.363096, 0.030103,
		36.690292, 33.144718, 42.929169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.910263, 33.949192, 43.231262>,  <37.342178, 33.398884, 42.908096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.910263, 33.949192, 43.231262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.712505, 33.604286, 43.275208>,  <36.593849, 33.397343, 43.301575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.712505, 33.604286, 43.275208>,  <36.910263, 33.949192, 43.231262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.712505, 33.604286, 43.275208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244440, 0.259202, 0.934379,
		-0.834159, 0.435099, -0.338921,
		-0.494396, -0.862266, 0.109860,
		36.564186, 33.345608, 43.308167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.131100, 34.096279, 43.563637>,  <36.910263, 33.949192, 43.231262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.131100, 34.096279, 43.563637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.253162, 33.719921, 43.622410>,  <36.326401, 33.494106, 43.657673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.253162, 33.719921, 43.622410>,  <36.131100, 34.096279, 43.563637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.253162, 33.719921, 43.622410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110373, 0.118311, 0.986823,
		-0.945886, -0.317349, -0.067747,
		0.305153, -0.940899, 0.146935,
		36.344707, 33.437653, 43.666489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.641743, 33.786453, 43.964111>,  <36.131100, 34.096279, 43.563637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.641743, 33.786453, 43.964111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.964607, 33.559895, 44.030663>,  <36.158325, 33.423958, 44.070591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.964607, 33.559895, 44.030663>,  <35.641743, 33.786453, 43.964111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.964607, 33.559895, 44.030663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247582, -0.068951, 0.966410,
		-0.535902, -0.821242, -0.195885,
		0.807163, -0.566399, 0.166374,
		36.206757, 33.389977, 44.080574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.401146, 33.191429, 44.400120>,  <35.641743, 33.786453, 43.964111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.401146, 33.191429, 44.400120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.798588, 33.210007, 44.441307>,  <36.037052, 33.221153, 44.466019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.798588, 33.210007, 44.441307>,  <35.401146, 33.191429, 44.400120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.798588, 33.210007, 44.441307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101467, -0.033576, 0.994272,
		0.049638, -0.998356, -0.028648,
		0.993600, 0.046447, 0.102967,
		36.096668, 33.223938, 44.472198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.588943, 32.714813, 45.034439>,  <35.401146, 33.191429, 44.400120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.588943, 32.714813, 45.034439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.918793, 32.936058, 44.987011>,  <36.116703, 33.068806, 44.958553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.918793, 32.936058, 44.987011>,  <35.588943, 32.714813, 45.034439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.918793, 32.936058, 44.987011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240280, -0.152730, 0.958613,
		0.512113, -0.818986, -0.258847,
		0.824625, 0.553114, -0.118571,
		36.166180, 33.101994, 44.951439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.118153, 32.334568, 45.398525>,  <35.588943, 32.714813, 45.034439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.118153, 32.334568, 45.398525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.261536, 32.704731, 45.349323>,  <36.347565, 32.926830, 45.319801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.261536, 32.704731, 45.349323>,  <36.118153, 32.334568, 45.398525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.261536, 32.704731, 45.349323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361022, -0.015907, 0.932422,
		0.860915, -0.378636, -0.339795,
		0.358454, 0.925409, -0.123002,
		36.369072, 32.982353, 45.312424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.800655, 32.378773, 45.685844>,  <36.118153, 32.334568, 45.398525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.800655, 32.378773, 45.685844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.653656, 32.750088, 45.708576>,  <36.565456, 32.972878, 45.722214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.653656, 32.750088, 45.708576>,  <36.800655, 32.378773, 45.685844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.653656, 32.750088, 45.708576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343089, 0.078522, 0.936015,
		0.864427, 0.363483, -0.347341,
		-0.367500, 0.928286, 0.056831,
		36.543407, 33.028572, 45.725624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.329548, 32.723808, 46.101055>,  <36.800655, 32.378773, 45.685844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.329548, 32.723808, 46.101055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.002323, 32.953453, 46.114681>,  <36.805988, 33.091240, 46.122856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.002323, 32.953453, 46.114681>,  <37.329548, 32.723808, 46.101055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.002323, 32.953453, 46.114681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151187, 0.157524, 0.975873,
		0.554898, 0.803478, -0.215664,
		-0.818065, 0.574116, 0.034066,
		36.756905, 33.125687, 46.124901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.473179, 33.243538, 46.637012>,  <37.329548, 32.723808, 46.101055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.473179, 33.243538, 46.637012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.075443, 33.263111, 46.599270>,  <36.836803, 33.274857, 46.576626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.075443, 33.263111, 46.599270>,  <37.473179, 33.243538, 46.637012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.075443, 33.263111, 46.599270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083365, 0.191642, 0.977918,
		0.065939, 0.980244, -0.186477,
		-0.994335, 0.048937, -0.094355,
		36.777142, 33.277794, 46.570965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.941387, 33.810223, 46.638397>,  <37.473179, 33.243538, 46.637012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.941387, 33.810223, 46.638397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.325573, 33.874168, 46.729561>,  <38.556084, 33.912537, 46.784260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.325573, 33.874168, 46.729561>,  <37.941387, 33.810223, 46.638397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.325573, 33.874168, 46.729561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271254, -0.353292, -0.895325,
		-0.062613, 0.921753, -0.382690,
		0.960469, 0.159865, 0.227908,
		38.613712, 33.922127, 46.797932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.281239, 34.360313, 46.135433>,  <37.941387, 33.810223, 46.638397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.281239, 34.360313, 46.135433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.574577, 34.120663, 46.263958>,  <38.750580, 33.976871, 46.341072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.574577, 34.120663, 46.263958>,  <38.281239, 34.360313, 46.135433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.574577, 34.120663, 46.263958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316810, -0.116999, -0.941245,
		0.601521, 0.792057, 0.104009,
		0.733351, -0.599130, 0.321309,
		38.794582, 33.940922, 46.360352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.699120, 34.381538, 45.565823>,  <38.281239, 34.360313, 46.135433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.699120, 34.381538, 45.565823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.868332, 34.077072, 45.762459>,  <38.969860, 33.894390, 45.880440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.868332, 34.077072, 45.762459>,  <38.699120, 34.381538, 45.565823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.868332, 34.077072, 45.762459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548948, -0.216347, -0.807372,
		0.720901, 0.611406, 0.326320,
		0.423034, -0.761168, 0.491595,
		38.995243, 33.848721, 45.909939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.383308, 34.386116, 45.468124>,  <38.699120, 34.381538, 45.565823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.383308, 34.386116, 45.468124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.304974, 34.002300, 45.549049>,  <39.257973, 33.772011, 45.597603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.304974, 34.002300, 45.549049>,  <39.383308, 34.386116, 45.468124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.304974, 34.002300, 45.549049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540454, -0.277754, -0.794205,
		0.818265, -0.046195, 0.572982,
		-0.195837, -0.959541, 0.202310,
		39.246223, 33.714439, 45.609741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.001167, 33.914528, 45.325356>,  <39.383308, 34.386116, 45.468124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.001167, 33.914528, 45.325356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.687256, 33.666893, 45.313633>,  <39.498909, 33.518311, 45.306599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.687256, 33.666893, 45.313633>,  <40.001167, 33.914528, 45.325356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.687256, 33.666893, 45.313633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339501, -0.389846, -0.856014,
		0.518523, -0.681727, 0.516122,
		-0.784776, -0.619087, -0.029303,
		39.451824, 33.481167, 45.304844>
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
