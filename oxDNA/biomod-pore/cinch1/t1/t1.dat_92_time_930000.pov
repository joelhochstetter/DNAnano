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
	right 1.6 * <0.581683, 0, 0.813415>
	location <-54.4937, 30, 90.4225>
	look_at <30, 30, 30>
	direction <84.4937, 0, -60.4225>
	angle 67.0682
}


# declare cpy_camera_pos = <-54.4937, 30, 90.4225>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 48
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <0.231732, -1, 1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <-0.231732, 1, -1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<42.907566, 31.997335, 23.091665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.618233, 31.910416, 23.353832>,  <42.444633, 31.858265, 23.511133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.618233, 31.910416, 23.353832>,  <42.907566, 31.997335, 23.091665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.618233, 31.910416, 23.353832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404936, -0.635350, -0.657538,
		0.559303, -0.741020, 0.371577,
		-0.723331, -0.217298, 0.655419,
		42.401234, 31.845226, 23.550457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.761440, 31.192434, 23.158804>,  <42.907566, 31.997335, 23.091665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.761440, 31.192434, 23.158804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.444176, 31.425259, 23.230461>,  <42.253815, 31.564953, 23.273457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.444176, 31.425259, 23.230461>,  <42.761440, 31.192434, 23.158804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.444176, 31.425259, 23.230461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540185, -0.536572, -0.648298,
		-0.281225, -0.610979, 0.740011,
		-0.793166, 0.582061, 0.179144,
		42.206226, 31.599876, 23.284204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.067387, 30.902191, 23.301773>,  <42.761440, 31.192434, 23.158804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.067387, 30.902191, 23.301773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.018623, 31.250599, 23.111420>,  <41.989365, 31.459644, 22.997208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.018623, 31.250599, 23.111420>,  <42.067387, 30.902191, 23.301773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.018623, 31.250599, 23.111420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668368, -0.426500, -0.609411,
		-0.733772, 0.243772, 0.634156,
		-0.121910, 0.871018, -0.475883,
		41.982052, 31.511904, 22.968655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.288296, 31.162281, 23.250507>,  <42.067387, 30.902191, 23.301773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.288296, 31.162281, 23.250507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.506210, 31.274685, 22.934471>,  <41.636959, 31.342127, 22.744850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.506210, 31.274685, 22.934471>,  <41.288296, 31.162281, 23.250507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.506210, 31.274685, 22.934471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672934, -0.415687, -0.611852,
		-0.500366, 0.865008, -0.037362,
		0.544788, 0.281008, -0.790089,
		41.669647, 31.358988, 22.697445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.751900, 31.619572, 22.919720>,  <41.288296, 31.162281, 23.250507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.751900, 31.619572, 22.919720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.060493, 31.464581, 22.717861>,  <41.245651, 31.371586, 22.596746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.060493, 31.464581, 22.717861>,  <40.751900, 31.619572, 22.919720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.060493, 31.464581, 22.717861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611316, -0.671273, -0.419147,
		-0.176346, 0.631866, -0.754750,
		0.771488, -0.387476, -0.504646,
		41.291939, 31.348337, 22.566467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.908062, 32.201363, 22.569881>,  <40.751900, 31.619572, 22.919720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.908062, 32.201363, 22.569881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.585804, 32.433598, 22.522793>,  <40.392448, 32.572937, 22.494539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.585804, 32.433598, 22.522793>,  <40.908062, 32.201363, 22.569881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.585804, 32.433598, 22.522793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512464, 0.782725, 0.353160,
		0.297183, 0.224193, -0.928127,
		-0.805644, 0.580585, -0.117722,
		40.344112, 32.607773, 22.487476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.114033, 32.700584, 22.209249>,  <40.908062, 32.201363, 22.569881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.114033, 32.700584, 22.209249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.795452, 32.815277, 22.422211>,  <40.604305, 32.884094, 22.549988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.795452, 32.815277, 22.422211>,  <41.114033, 32.700584, 22.209249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.795452, 32.815277, 22.422211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488915, 0.823448, 0.287916,
		-0.355853, 0.489611, -0.796021,
		-0.796449, 0.286731, 0.532404,
		40.556519, 32.901295, 22.581932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.015633, 33.416458, 22.129734>,  <41.114033, 32.700584, 22.209249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.015633, 33.416458, 22.129734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.837326, 33.332474, 22.477806>,  <40.730343, 33.282085, 22.686649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.837326, 33.332474, 22.477806>,  <41.015633, 33.416458, 22.129734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.837326, 33.332474, 22.477806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483987, 0.761233, 0.431603,
		-0.753026, 0.613549, -0.237715,
		-0.445766, -0.209957, 0.870178,
		40.703598, 33.269485, 22.738859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.902561, 34.105350, 22.427048>,  <41.015633, 33.416458, 22.129734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.902561, 34.105350, 22.427048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.824829, 33.856331, 22.730274>,  <40.778191, 33.706917, 22.912210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.824829, 33.856331, 22.730274>,  <40.902561, 34.105350, 22.427048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.824829, 33.856331, 22.730274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277932, 0.706188, 0.651193,
		-0.940739, 0.337236, 0.035795,
		-0.194328, -0.622552, 0.758067,
		40.766529, 33.669567, 22.957695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.470150, 34.482075, 22.843821>,  <40.902561, 34.105350, 22.427048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.470150, 34.482075, 22.843821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.644062, 34.198257, 23.065636>,  <40.748409, 34.027966, 23.198725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.644062, 34.198257, 23.065636>,  <40.470150, 34.482075, 22.843821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.644062, 34.198257, 23.065636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309036, 0.695950, 0.648190,
		-0.845851, -0.110448, 0.521860,
		0.434780, -0.709545, 0.554537,
		40.774498, 33.985394, 23.231997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.116573, 34.603844, 23.478424>,  <40.470150, 34.482075, 22.843821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.116573, 34.603844, 23.478424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.456303, 34.406937, 23.554661>,  <40.660141, 34.288792, 23.600403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.456303, 34.406937, 23.554661>,  <40.116573, 34.603844, 23.478424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.456303, 34.406937, 23.554661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280924, 0.727182, 0.626329,
		-0.446915, -0.478413, 0.755902,
		0.849322, -0.492267, 0.190591,
		40.711098, 34.259258, 23.611837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.068157, 34.444321, 24.207897>,  <40.116573, 34.603844, 23.478424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.068157, 34.444321, 24.207897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.456657, 34.445892, 24.112690>,  <40.689758, 34.446835, 24.055565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.456657, 34.445892, 24.112690>,  <40.068157, 34.444321, 24.207897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.456657, 34.445892, 24.112690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189662, 0.591490, 0.783688,
		0.143861, -0.806302, 0.573742,
		0.971253, 0.003925, -0.238017,
		40.748032, 34.447071, 24.041285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.406418, 34.435764, 24.840694>,  <40.068157, 34.444321, 24.207897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.406418, 34.435764, 24.840694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.697308, 34.552254, 24.592072>,  <40.871841, 34.622147, 24.442898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.697308, 34.552254, 24.592072>,  <40.406418, 34.435764, 24.840694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.697308, 34.552254, 24.592072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305379, 0.673705, 0.672952,
		0.614721, -0.679200, 0.401006,
		0.727229, 0.291219, -0.621554,
		40.915474, 34.639622, 24.405605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.018833, 34.584637, 25.298687>,  <40.406418, 34.435764, 24.840694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.018833, 34.584637, 25.298687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.121918, 34.763584, 24.956123>,  <41.183769, 34.870953, 24.750586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.121918, 34.763584, 24.956123>,  <41.018833, 34.584637, 25.298687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.121918, 34.763584, 24.956123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449362, 0.729167, 0.516128,
		0.855369, -0.517853, -0.013115,
		0.257716, 0.447373, -0.856411,
		41.199234, 34.897797, 24.699200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.644878, 34.916847, 25.440020>,  <41.018833, 34.584637, 25.298687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.644878, 34.916847, 25.440020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.560581, 35.100002, 25.094551>,  <41.510002, 35.209896, 24.887270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.560581, 35.100002, 25.094551>,  <41.644878, 34.916847, 25.440020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.560581, 35.100002, 25.094551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238871, 0.880851, 0.408708,
		0.947907, -0.120174, -0.295009,
		-0.210743, 0.457886, -0.863671,
		41.497360, 35.237370, 24.835449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.298687, 35.267612, 25.303833>,  <41.644878, 34.916847, 25.440020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.298687, 35.267612, 25.303833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.003700, 35.438091, 25.094261>,  <41.826710, 35.540379, 24.968517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.003700, 35.438091, 25.094261>,  <42.298687, 35.267612, 25.303833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.003700, 35.438091, 25.094261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137144, 0.854086, 0.501726,
		0.661316, 0.298151, -0.688308,
		-0.737464, 0.426197, -0.523930,
		41.782459, 35.565948, 24.937082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.547459, 35.982544, 25.147743>,  <42.298687, 35.267612, 25.303833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.547459, 35.982544, 25.147743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.158131, 36.035995, 25.073128>,  <41.924534, 36.068066, 25.028358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.158131, 36.035995, 25.073128>,  <42.547459, 35.982544, 25.147743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.158131, 36.035995, 25.073128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017924, 0.854737, 0.518753,
		0.228762, 0.501567, -0.834325,
		-0.973318, 0.133625, -0.186541,
		41.866135, 36.076084, 25.017166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.504242, 36.624035, 24.948387>,  <42.547459, 35.982544, 25.147743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.504242, 36.624035, 24.948387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.128067, 36.533710, 25.050049>,  <41.902363, 36.479515, 25.111046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.128067, 36.533710, 25.050049>,  <42.504242, 36.624035, 24.948387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.128067, 36.533710, 25.050049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117470, 0.917344, 0.380370,
		-0.319037, 0.327857, -0.889227,
		-0.940434, -0.225810, 0.254153,
		41.845936, 36.465969, 25.126295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.931049, 37.054131, 24.584084>,  <42.504242, 36.624035, 24.948387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.931049, 37.054131, 24.584084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.803234, 36.924004, 24.940075>,  <41.726543, 36.845928, 25.153669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.803234, 36.924004, 24.940075>,  <41.931049, 37.054131, 24.584084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.803234, 36.924004, 24.940075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137768, 0.945190, 0.296034,
		-0.937505, -0.028017, -0.346842,
		-0.319538, -0.325318, 0.889980,
		41.707375, 36.826408, 25.207069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.395157, 37.477001, 24.803457>,  <41.931049, 37.054131, 24.584084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.395157, 37.477001, 24.803457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.502724, 37.310696, 25.150978>,  <41.567265, 37.210911, 25.359491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.502724, 37.310696, 25.150978>,  <41.395157, 37.477001, 24.803457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.502724, 37.310696, 25.150978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022142, 0.899125, 0.437132,
		-0.962908, -0.136790, 0.232586,
		0.268919, -0.415768, 0.868803,
		41.583401, 37.185966, 25.411619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.953152, 37.739349, 25.240479>,  <41.395157, 37.477001, 24.803457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.953152, 37.739349, 25.240479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.224724, 37.573414, 25.482788>,  <41.387669, 37.473854, 25.628174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.224724, 37.573414, 25.482788>,  <40.953152, 37.739349, 25.240479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.224724, 37.573414, 25.482788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003589, 0.826945, 0.562271,
		-0.734191, -0.379570, 0.562929,
		0.678933, -0.414835, 0.605774,
		41.428402, 37.448963, 25.664520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.713417, 37.860088, 25.801994>,  <40.953152, 37.739349, 25.240479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.713417, 37.860088, 25.801994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.092457, 37.804539, 25.917076>,  <41.319881, 37.771210, 25.986126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.092457, 37.804539, 25.917076>,  <40.713417, 37.860088, 25.801994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.092457, 37.804539, 25.917076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096429, 0.734227, 0.672021,
		-0.304570, -0.664548, 0.682359,
		0.947596, -0.138878, 0.287706,
		41.376736, 37.762875, 26.003387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.763836, 37.848446, 26.546207>,  <40.713417, 37.860088, 25.801994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.763836, 37.848446, 26.546207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.140450, 37.914459, 26.428711>,  <41.366417, 37.954067, 26.358213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.140450, 37.914459, 26.428711>,  <40.763836, 37.848446, 26.546207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.140450, 37.914459, 26.428711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096659, 0.702878, 0.704713,
		0.322762, -0.691902, 0.645830,
		0.941532, 0.165029, -0.293741,
		41.422909, 37.963966, 26.340590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.096359, 38.030430, 27.164188>,  <40.763836, 37.848446, 26.546207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.096359, 38.030430, 27.164188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.340137, 38.165367, 26.877197>,  <41.486404, 38.246330, 26.705004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.340137, 38.165367, 26.877197>,  <41.096359, 38.030430, 27.164188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.340137, 38.165367, 26.877197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104534, 0.862868, 0.494502,
		0.785905, -0.376374, 0.490608,
		0.609447, 0.337346, -0.717476,
		41.522972, 38.266571, 26.661955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.681812, 38.331890, 27.521280>,  <41.096359, 38.030430, 27.164188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.681812, 38.331890, 27.521280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.680874, 38.507854, 27.162064>,  <41.680309, 38.613434, 26.946533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.680874, 38.507854, 27.162064>,  <41.681812, 38.331890, 27.521280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.680874, 38.507854, 27.162064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193493, 0.881271, 0.431186,
		0.981099, -0.172752, -0.087189,
		-0.002349, 0.439906, -0.898041,
		41.680168, 38.639828, 26.892651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.188400, 38.792816, 27.585503>,  <41.681812, 38.331890, 27.521280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.188400, 38.792816, 27.585503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.945896, 38.920319, 27.294067>,  <41.800396, 38.996822, 27.119205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.945896, 38.920319, 27.294067>,  <42.188400, 38.792816, 27.585503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.945896, 38.920319, 27.294067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002018, 0.915536, 0.402230,
		0.795265, 0.245326, -0.554408,
		-0.606258, 0.318760, -0.728589,
		41.764019, 39.015945, 27.075491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.474762, 39.576115, 27.366915>,  <42.188400, 38.792816, 27.585503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.474762, 39.576115, 27.366915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.100788, 39.468864, 27.273949>,  <41.876404, 39.404514, 27.218168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.100788, 39.468864, 27.273949>,  <42.474762, 39.576115, 27.366915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.100788, 39.468864, 27.273949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326359, 0.906852, 0.266662,
		0.139268, 0.325161, -0.935347,
		-0.934930, -0.268122, -0.232415,
		41.820309, 39.388428, 27.204224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.226471, 39.901520, 26.709541>,  <42.474762, 39.576115, 27.366915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.226471, 39.901520, 26.709541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.968445, 39.839615, 27.008858>,  <41.813629, 39.802471, 27.188448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.968445, 39.839615, 27.008858>,  <42.226471, 39.901520, 26.709541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.968445, 39.839615, 27.008858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029586, 0.983598, 0.177930,
		-0.763555, 0.092638, -0.639063,
		-0.645065, -0.154767, 0.748291,
		41.774925, 39.793186, 27.233345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.819622, 40.452778, 26.580980>,  <42.226471, 39.901520, 26.709541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.819622, 40.452778, 26.580980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.704411, 40.387871, 26.958488>,  <41.635284, 40.348927, 27.184994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.704411, 40.387871, 26.958488>,  <41.819622, 40.452778, 26.580980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.704411, 40.387871, 26.958488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251142, 0.963843, 0.089075,
		-0.924103, -0.211364, -0.318370,
		-0.288032, -0.162270, 0.943772,
		41.618000, 40.339191, 27.241621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.120701, 40.584972, 26.591278>,  <41.819622, 40.452778, 26.580980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.120701, 40.584972, 26.591278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.311298, 40.642220, 26.938259>,  <41.425655, 40.676567, 27.146448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.311298, 40.642220, 26.938259>,  <41.120701, 40.584972, 26.591278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.311298, 40.642220, 26.938259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469587, 0.875561, 0.113491,
		-0.743264, -0.461421, 0.484405,
		0.476493, 0.143116, 0.867451,
		41.454247, 40.685154, 27.198494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.571743, 40.526836, 27.171495>,  <41.120701, 40.584972, 26.591278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.571743, 40.526836, 27.171495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.884029, 40.769676, 27.230701>,  <41.071404, 40.915379, 27.266224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.884029, 40.769676, 27.230701>,  <40.571743, 40.526836, 27.171495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.884029, 40.769676, 27.230701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624586, 0.750847, 0.214758,
		0.019244, -0.260112, 0.965387,
		0.780719, 0.607100, 0.148013,
		41.118244, 40.951805, 27.275105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.462017, 40.858112, 27.725071>,  <40.571743, 40.526836, 27.171495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.462017, 40.858112, 27.725071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.693382, 41.075348, 27.481598>,  <40.832203, 41.205688, 27.335514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.693382, 41.075348, 27.481598>,  <40.462017, 40.858112, 27.725071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.693382, 41.075348, 27.481598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664755, 0.746280, 0.034158,
		0.472800, 0.384868, 0.792677,
		0.578413, 0.543086, -0.608684,
		40.866905, 41.238274, 27.298992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.896614, 40.632042, 28.124054>,  <40.462017, 40.858112, 27.725071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.896614, 40.632042, 28.124054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.766422, 40.908150, 27.865570>,  <39.688305, 41.073814, 27.710480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.766422, 40.908150, 27.865570>,  <39.896614, 40.632042, 28.124054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.766422, 40.908150, 27.865570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379517, -0.721329, -0.579354,
		-0.866042, 0.056679, 0.496749,
		-0.325482, 0.690269, -0.646212,
		39.668777, 41.115231, 27.671707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.418892, 40.235836, 27.673441>,  <39.896614, 40.632042, 28.124054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.418892, 40.235836, 27.673441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.464626, 40.571110, 27.460133>,  <39.492065, 40.772274, 27.332148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.464626, 40.571110, 27.460133>,  <39.418892, 40.235836, 27.673441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.464626, 40.571110, 27.460133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363753, -0.464193, -0.807595,
		-0.924452, 0.286316, 0.251817,
		0.114336, 0.838181, -0.533272,
		39.498928, 40.822563, 27.300152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.791996, 40.491627, 27.425243>,  <39.418892, 40.235836, 27.673441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.791996, 40.491627, 27.425243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.107452, 40.570621, 27.192333>,  <39.296726, 40.618019, 27.052588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.107452, 40.570621, 27.192333>,  <38.791996, 40.491627, 27.425243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.107452, 40.570621, 27.192333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354933, -0.627064, -0.693407,
		-0.502062, 0.753518, -0.424435,
		0.788642, 0.197487, -0.582274,
		39.344044, 40.629868, 27.017651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.584980, 40.517921, 26.684366>,  <38.791996, 40.491627, 27.425243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.584980, 40.517921, 26.684366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.973030, 40.421722, 26.697128>,  <39.205860, 40.364002, 26.704786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.973030, 40.421722, 26.697128>,  <38.584980, 40.517921, 26.684366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.973030, 40.421722, 26.697128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163586, -0.745585, -0.646021,
		0.179153, 0.621502, -0.762653,
		0.970126, -0.240496, 0.031905,
		39.264069, 40.349575, 26.706699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.968674, 40.544559, 26.065899>,  <38.584980, 40.517921, 26.684366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.968674, 40.544559, 26.065899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.141285, 40.270287, 26.300373>,  <39.244854, 40.105721, 26.441057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.141285, 40.270287, 26.300373>,  <38.968674, 40.544559, 26.065899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.141285, 40.270287, 26.300373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371523, -0.727225, -0.577161,
		0.822040, 0.031281, -0.568569,
		0.431532, -0.685686, 0.586187,
		39.270744, 40.064579, 26.476229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.349976, 40.103722, 25.670130>,  <38.968674, 40.544559, 26.065899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.349976, 40.103722, 25.670130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.246647, 39.905041, 26.001564>,  <39.184650, 39.785831, 26.200424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.246647, 39.905041, 26.001564>,  <39.349976, 40.103722, 25.670130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.246647, 39.905041, 26.001564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286120, -0.779880, -0.556706,
		0.922718, -0.380882, 0.059339,
		-0.258317, -0.496704, 0.828587,
		39.169151, 39.756031, 26.250141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.750477, 39.448067, 25.608379>,  <39.349976, 40.103722, 25.670130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.750477, 39.448067, 25.608379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.419796, 39.434162, 25.833004>,  <39.221386, 39.425819, 25.967779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.419796, 39.434162, 25.833004>,  <39.750477, 39.448067, 25.608379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.419796, 39.434162, 25.833004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298857, -0.818516, -0.490629,
		0.476699, -0.573432, 0.666284,
		-0.826706, -0.034758, 0.561560,
		39.171783, 39.423737, 26.001472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.630672, 38.769154, 25.702570>,  <39.750477, 39.448067, 25.608379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.630672, 38.769154, 25.702570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.268002, 38.887337, 25.822994>,  <39.050400, 38.958248, 25.895248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.268002, 38.887337, 25.822994>,  <39.630672, 38.769154, 25.702570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.268002, 38.887337, 25.822994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367684, -0.903371, -0.220746,
		0.206749, -0.310841, 0.927703,
		-0.906677, 0.295463, 0.301062,
		38.995998, 38.975975, 25.913313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.456680, 38.227070, 26.079863>,  <39.630672, 38.769154, 25.702570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.456680, 38.227070, 26.079863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.107105, 38.402504, 25.996082>,  <38.897358, 38.507767, 25.945814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.107105, 38.402504, 25.996082>,  <39.456680, 38.227070, 26.079863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.107105, 38.402504, 25.996082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370185, -0.879899, -0.297895,
		-0.314948, -0.182808, 0.931337,
		-0.873940, 0.438588, -0.209450,
		38.844925, 38.534081, 25.933247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.942379, 37.882572, 26.377186>,  <39.456680, 38.227070, 26.079863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.942379, 37.882572, 26.377186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.761341, 38.095474, 26.091007>,  <38.652718, 38.223213, 25.919300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.761341, 38.095474, 26.091007>,  <38.942379, 37.882572, 26.377186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.761341, 38.095474, 26.091007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369858, -0.842108, -0.392504,
		-0.811393, 0.086967, 0.577995,
		-0.452599, 0.532251, -0.715446,
		38.625561, 38.255150, 25.876373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.322208, 37.480865, 26.292583>,  <38.942379, 37.882572, 26.377186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.322208, 37.480865, 26.292583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.360035, 37.719883, 25.974087>,  <38.382729, 37.863293, 25.782990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.360035, 37.719883, 25.974087>,  <38.322208, 37.480865, 26.292583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.360035, 37.719883, 25.974087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262259, -0.756618, -0.598956,
		-0.960353, 0.265461, 0.085162,
		0.094565, 0.597544, -0.796240,
		38.388405, 37.899147, 25.735214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.746964, 37.373360, 25.880936>,  <38.322208, 37.480865, 26.292583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.746964, 37.373360, 25.880936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.996059, 37.522903, 25.606003>,  <38.145515, 37.612629, 25.441044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.996059, 37.522903, 25.606003>,  <37.746964, 37.373360, 25.880936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.996059, 37.522903, 25.606003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254038, -0.734256, -0.629550,
		-0.740041, 0.566654, -0.362275,
		0.622739, 0.373861, -0.687331,
		38.182880, 37.635063, 25.399803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.385395, 37.261566, 25.271381>,  <37.746964, 37.373360, 25.880936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.385395, 37.261566, 25.271381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.767052, 37.313457, 25.163471>,  <37.996048, 37.344593, 25.098726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.767052, 37.313457, 25.163471>,  <37.385395, 37.261566, 25.271381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.767052, 37.313457, 25.163471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091023, -0.732812, -0.674316,
		-0.285169, 0.667951, -0.687401,
		0.954146, 0.129724, -0.269774,
		38.053295, 37.352375, 25.082539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.366920, 37.243603, 24.609982>,  <37.385395, 37.261566, 25.271381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.366920, 37.243603, 24.609982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.754356, 37.175980, 24.682915>,  <37.986820, 37.135406, 24.726675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.754356, 37.175980, 24.682915>,  <37.366920, 37.243603, 24.609982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.754356, 37.175980, 24.682915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002454, -0.726757, -0.686891,
		0.248635, 0.665766, -0.703517,
		0.968594, -0.169059, 0.182331,
		38.044933, 37.125263, 24.737614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.645908, 37.296547, 23.986334>,  <37.366920, 37.243603, 24.609982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.645908, 37.296547, 23.986334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.895473, 37.084846, 24.216335>,  <38.045212, 36.957829, 24.354336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.895473, 37.084846, 24.216335>,  <37.645908, 37.296547, 23.986334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.895473, 37.084846, 24.216335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038026, -0.714343, -0.698762,
		0.780568, 0.457832, -0.425563,
		0.623914, -0.529249, 0.575002,
		38.082649, 36.926071, 24.388836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.185024, 37.196716, 23.492880>,  <37.645908, 37.296547, 23.986334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.185024, 37.196716, 23.492880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.265476, 36.937553, 23.786755>,  <38.313747, 36.782055, 23.963079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.265476, 36.937553, 23.786755>,  <38.185024, 37.196716, 23.492880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.265476, 36.937553, 23.786755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333323, -0.659987, -0.673285,
		0.921110, 0.380304, 0.083220,
		0.201129, -0.647908, 0.734685,
		38.325813, 36.743179, 24.007160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.812958, 36.981880, 23.337086>,  <38.185024, 37.196716, 23.492880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.812958, 36.981880, 23.337086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.682907, 36.711906, 23.602039>,  <38.604877, 36.549923, 23.761011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.682907, 36.711906, 23.602039>,  <38.812958, 36.981880, 23.337086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.682907, 36.711906, 23.602039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372429, -0.735218, -0.566348,
		0.869245, 0.062554, 0.490408,
		-0.325129, -0.674938, 0.662382,
		38.585369, 36.509426, 23.800755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.334694, 36.561951, 23.323135>,  <38.812958, 36.981880, 23.337086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.334694, 36.561951, 23.323135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.006241, 36.380550, 23.461739>,  <38.809170, 36.271709, 23.544901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.006241, 36.380550, 23.461739>,  <39.334694, 36.561951, 23.323135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.006241, 36.380550, 23.461739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195177, -0.793657, -0.576206,
		0.536322, -0.405513, 0.740215,
		-0.821136, -0.453505, 0.346509,
		38.759899, 36.244499, 23.565691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.445408, 35.709587, 23.380676>,  <39.334694, 36.561951, 23.323135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.445408, 35.709587, 23.380676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.050323, 35.771629, 23.388260>,  <38.813271, 35.808857, 23.392811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.050323, 35.771629, 23.388260>,  <39.445408, 35.709587, 23.380676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.050323, 35.771629, 23.388260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143329, -0.850925, -0.505354,
		-0.062252, -0.501864, 0.862704,
		-0.987715, 0.155109, 0.018960,
		38.754009, 35.818161, 23.393948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.329002, 35.023582, 23.382673>,  <39.445408, 35.709587, 23.380676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.329002, 35.023582, 23.382673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.993183, 35.231182, 23.318424>,  <38.791691, 35.355743, 23.279875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.993183, 35.231182, 23.318424>,  <39.329002, 35.023582, 23.382673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.993183, 35.231182, 23.318424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317527, -0.708639, -0.630085,
		-0.440839, -0.477983, 0.759732,
		-0.839546, 0.519002, -0.160623,
		38.741318, 35.386883, 23.270237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.743210, 34.641090, 23.566246>,  <39.329002, 35.023582, 23.382673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.743210, 34.641090, 23.566246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.647114, 34.920094, 23.296204>,  <38.589455, 35.087494, 23.134178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.647114, 34.920094, 23.296204>,  <38.743210, 34.641090, 23.566246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.647114, 34.920094, 23.296204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205380, -0.716253, -0.666933,
		-0.948738, -0.021572, 0.315328,
		-0.240242, 0.697507, -0.675106,
		38.575043, 35.129345, 23.093672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.183350, 34.335873, 23.295761>,  <38.743210, 34.641090, 23.566246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.183350, 34.335873, 23.295761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.251759, 34.626286, 23.029339>,  <38.292805, 34.800533, 22.869486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.251759, 34.626286, 23.029339>,  <38.183350, 34.335873, 23.295761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.251759, 34.626286, 23.029339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295755, -0.607011, -0.737608,
		-0.939830, 0.323135, 0.110917,
		0.171019, 0.726031, -0.666056,
		38.303066, 34.844093, 22.829521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.632694, 34.467827, 22.961649>,  <38.183350, 34.335873, 23.295761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.632694, 34.467827, 22.961649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.939274, 34.570591, 22.726173>,  <38.123222, 34.632248, 22.584888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.939274, 34.570591, 22.726173>,  <37.632694, 34.467827, 22.961649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.939274, 34.570591, 22.726173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335118, -0.621942, -0.707731,
		-0.547954, 0.739720, -0.390591,
		0.766447, 0.256910, -0.588689,
		38.169209, 34.647663, 22.549566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.269958, 34.507931, 22.275539>,  <37.632694, 34.467827, 22.961649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.269958, 34.507931, 22.275539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.663578, 34.479969, 22.210106>,  <37.899750, 34.463192, 22.170847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.663578, 34.479969, 22.210106>,  <37.269958, 34.507931, 22.275539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.663578, 34.479969, 22.210106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160492, -0.745515, -0.646877,
		-0.076733, 0.662813, -0.744843,
		0.984050, -0.069904, -0.163582,
		37.958794, 34.459000, 22.161032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.356136, 34.612400, 21.571615>,  <37.269958, 34.507931, 22.275539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.356136, 34.612400, 21.571615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.668533, 34.400742, 21.704311>,  <37.855972, 34.273746, 21.783930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.668533, 34.400742, 21.704311>,  <37.356136, 34.612400, 21.571615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.668533, 34.400742, 21.704311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237240, -0.742721, -0.626166,
		0.577724, 0.410330, -0.705595,
		0.780995, -0.529146, 0.331741,
		37.902832, 34.241997, 21.803833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.871857, 34.503616, 21.054115>,  <37.356136, 34.612400, 21.571615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.871857, 34.503616, 21.054115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.869865, 34.187370, 21.299030>,  <37.868671, 33.997623, 21.445980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.869865, 34.187370, 21.299030>,  <37.871857, 34.503616, 21.054115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.869865, 34.187370, 21.299030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542133, -0.512372, -0.666008,
		0.840278, -0.335255, -0.426072,
		-0.004975, -0.790619, 0.612288,
		37.868374, 33.950184, 21.482718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542217, 35.206005, 21.147524>,  <37.871857, 34.503616, 21.054115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.542217, 35.206005, 21.147524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.384018, 34.929443, 20.905685>,  <37.289097, 34.763504, 20.760582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.384018, 34.929443, 20.905685>,  <37.542217, 35.206005, 21.147524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.384018, 34.929443, 20.905685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814315, 0.568434, -0.117366,
		0.424821, 0.445914, -0.787838,
		-0.395498, -0.691407, -0.604597,
		37.265369, 34.722023, 20.724306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.358059, 35.570919, 20.441368>,  <37.542217, 35.206005, 21.147524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.358059, 35.570919, 20.441368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.158165, 35.262299, 20.598835>,  <37.038227, 35.077126, 20.693316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.158165, 35.262299, 20.598835>,  <37.358059, 35.570919, 20.441368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.158165, 35.262299, 20.598835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860705, 0.493340, -0.125707,
		-0.097221, -0.401650, -0.910618,
		-0.499734, -0.771552, 0.393665,
		37.008244, 35.030834, 20.716934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.740627, 35.306549, 19.924772>,  <37.358059, 35.570919, 20.441368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.740627, 35.306549, 19.924772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.655308, 35.177715, 20.293720>,  <36.604115, 35.100414, 20.515089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.655308, 35.177715, 20.293720>,  <36.740627, 35.306549, 19.924772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.655308, 35.177715, 20.293720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912193, 0.403744, -0.069963,
		-0.349868, -0.856303, -0.379917,
		-0.213299, -0.322080, 0.922371,
		36.591316, 35.081093, 20.570431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.575027, 34.973461, 19.329943>,  <36.740627, 35.306549, 19.924772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.575027, 34.973461, 19.329943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.864410, 34.948048, 19.054966>,  <37.038040, 34.932800, 18.889980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.864410, 34.948048, 19.054966>,  <36.575027, 34.973461, 19.329943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.864410, 34.948048, 19.054966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218075, 0.965803, 0.140240,
		0.655023, -0.251371, 0.712571,
		0.723456, -0.063533, -0.687441,
		37.081448, 34.928989, 18.848734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.815243, 35.206882, 19.449831>,  <36.575027, 34.973461, 19.329943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.815243, 35.206882, 19.449831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.695698, 35.573883, 19.554813>,  <35.623970, 35.794083, 19.617802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.695698, 35.573883, 19.554813>,  <35.815243, 35.206882, 19.449831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.695698, 35.573883, 19.554813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076084, 0.251239, -0.964930,
		-0.951259, -0.308347, -0.005278,
		-0.298859, 0.917497, 0.262454,
		35.606041, 35.849133, 19.633549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.216522, 35.365078, 19.069458>,  <35.815243, 35.206882, 19.449831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.216522, 35.365078, 19.069458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.415718, 35.701214, 19.155090>,  <35.535236, 35.902897, 19.206470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.415718, 35.701214, 19.155090>,  <35.216522, 35.365078, 19.069458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.415718, 35.701214, 19.155090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033549, 0.265354, -0.963567,
		-0.866533, 0.472665, 0.160337,
		0.497990, 0.840342, 0.214080,
		35.565117, 35.953316, 19.219315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.776558, 35.218121, 18.628340>,  <35.216522, 35.365078, 19.069458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.776558, 35.218121, 18.628340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.679668, 35.193649, 19.015656>,  <34.621536, 35.178967, 19.248045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.679668, 35.193649, 19.015656>,  <34.776558, 35.218121, 18.628340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.679668, 35.193649, 19.015656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279168, -0.951409, -0.129946,
		0.929191, -0.301791, 0.213370,
		-0.242219, -0.061179, 0.968291,
		34.607002, 35.175297, 19.306143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.100979, 34.625618, 18.896658>,  <34.776558, 35.218121, 18.628340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.100979, 34.625618, 18.896658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.758411, 34.728153, 19.075920>,  <34.552872, 34.789673, 19.183477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.758411, 34.728153, 19.075920>,  <35.100979, 34.625618, 18.896658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.758411, 34.728153, 19.075920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407216, -0.868984, -0.281144,
		0.317371, -0.423272, 0.848597,
		-0.856417, 0.256336, 0.448153,
		34.501488, 34.805054, 19.210365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.985912, 34.041126, 19.173897>,  <35.100979, 34.625618, 18.896658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.985912, 34.041126, 19.173897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.638676, 34.236176, 19.211060>,  <34.430332, 34.353207, 19.233356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.638676, 34.236176, 19.211060>,  <34.985912, 34.041126, 19.173897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.638676, 34.236176, 19.211060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476870, -0.871188, 0.116735,
		0.137863, 0.057033, 0.988808,
		-0.868095, 0.487626, 0.092907,
		34.378246, 34.382462, 19.238932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.784557, 33.829075, 19.856979>,  <34.985912, 34.041126, 19.173897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.784557, 33.829075, 19.856979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.474796, 33.942127, 19.630554>,  <34.288940, 34.009956, 19.494699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.474796, 33.942127, 19.630554>,  <34.784557, 33.829075, 19.856979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.474796, 33.942127, 19.630554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425552, -0.894741, 0.135440,
		-0.468200, 0.345773, 0.813160,
		-0.774400, 0.282629, -0.566062,
		34.242477, 34.026917, 19.460735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.167416, 33.534344, 20.169739>,  <34.784557, 33.829075, 19.856979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.167416, 33.534344, 20.169739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.039310, 33.590294, 19.794960>,  <33.962448, 33.623863, 19.570093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.039310, 33.590294, 19.794960>,  <34.167416, 33.534344, 20.169739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.039310, 33.590294, 19.794960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393331, -0.919393, -0.002810,
		-0.861815, 0.367630, 0.349463,
		-0.320260, 0.139876, -0.936946,
		33.943233, 33.632256, 19.513876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.326145, 33.444519, 20.203815>,  <34.167416, 33.534344, 20.169739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.326145, 33.444519, 20.203815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.467777, 33.416855, 19.830753>,  <33.552757, 33.400257, 19.606916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.467777, 33.416855, 19.830753>,  <33.326145, 33.444519, 20.203815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.467777, 33.416855, 19.830753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460198, -0.881052, -0.109382,
		-0.814154, 0.467936, -0.343787,
		0.354078, -0.069156, -0.932655,
		33.574001, 33.396107, 19.550957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.762798, 33.394943, 19.761766>,  <33.326145, 33.444519, 20.203815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.762798, 33.394943, 19.761766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.053905, 33.203327, 19.565449>,  <33.228569, 33.088356, 19.447659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.053905, 33.203327, 19.565449>,  <32.762798, 33.394943, 19.761766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.053905, 33.203327, 19.565449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627065, -0.754603, -0.193297,
		-0.277756, 0.448434, -0.849564,
		0.727765, -0.479042, -0.490793,
		33.272236, 33.059616, 19.418211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.386837, 33.084270, 19.229540>,  <32.762798, 33.394943, 19.761766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.386837, 33.084270, 19.229540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.722057, 32.866974, 19.249817>,  <32.923187, 32.736595, 19.261984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.722057, 32.866974, 19.249817>,  <32.386837, 33.084270, 19.229540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.722057, 32.866974, 19.249817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496997, -0.798426, -0.339869,
		0.225106, 0.259632, -0.939106,
		0.838047, -0.543239, 0.050694,
		32.973473, 32.704002, 19.265026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.477203, 32.803787, 18.572718>,  <32.386837, 33.084270, 19.229540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.477203, 32.803787, 18.572718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.711002, 32.587219, 18.814453>,  <32.851284, 32.457279, 18.959496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.711002, 32.587219, 18.814453>,  <32.477203, 32.803787, 18.572718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.711002, 32.587219, 18.814453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559441, -0.808384, -0.183142,
		0.587696, -0.231047, -0.775391,
		0.584499, -0.541417, 0.604341,
		32.886353, 32.424793, 18.995756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.289906, 32.111832, 18.389828>,  <32.477203, 32.803787, 18.572718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.289906, 32.111832, 18.389828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.477737, 32.047878, 18.737144>,  <32.590439, 32.009506, 18.945534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.477737, 32.047878, 18.737144>,  <32.289906, 32.111832, 18.389828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.477737, 32.047878, 18.737144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498190, -0.859923, 0.111083,
		0.728903, -0.484737, -0.483456,
		0.469581, -0.159884, 0.868292,
		32.618610, 31.999912, 18.997631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.547344, 31.358440, 18.346220>,  <32.289906, 32.111832, 18.389828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.547344, 31.358440, 18.346220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.545853, 31.465755, 18.731552>,  <32.544956, 31.530146, 18.962751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.545853, 31.465755, 18.731552>,  <32.547344, 31.358440, 18.346220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.545853, 31.465755, 18.731552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433224, -0.868675, 0.240250,
		0.901278, -0.416443, 0.119468,
		-0.003728, 0.268289, 0.963331,
		32.544735, 31.546242, 19.020552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.865509, 30.843657, 18.631592>,  <32.547344, 31.358440, 18.346220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.865509, 30.843657, 18.631592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.662487, 30.996719, 18.940388>,  <32.540676, 31.088556, 19.125666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.662487, 30.996719, 18.940388>,  <32.865509, 30.843657, 18.631592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.662487, 30.996719, 18.940388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247300, -0.922970, 0.294904,
		0.825369, -0.041235, 0.563085,
		-0.507551, 0.382656, 0.771989,
		32.510223, 31.111517, 19.171984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.017834, 30.582588, 19.298243>,  <32.865509, 30.843657, 18.631592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.017834, 30.582588, 19.298243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.668049, 30.729191, 19.425354>,  <32.458176, 30.817152, 19.501621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.668049, 30.729191, 19.425354>,  <33.017834, 30.582588, 19.298243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.668049, 30.729191, 19.425354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228174, -0.888876, 0.397287,
		0.428072, 0.274906, 0.860919,
		-0.874466, 0.366506, 0.317777,
		32.405708, 30.839142, 19.520687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.008415, 30.653826, 20.096746>,  <33.017834, 30.582588, 19.298243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.008415, 30.653826, 20.096746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.629883, 30.598644, 19.979832>,  <32.402763, 30.565535, 19.909683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.629883, 30.598644, 19.979832>,  <33.008415, 30.653826, 20.096746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.629883, 30.598644, 19.979832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084233, -0.767810, 0.635116,
		-0.312037, 0.625649, 0.714980,
		-0.946328, -0.137955, -0.292286,
		32.345985, 30.557259, 19.892145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.769943, 30.389227, 20.741915>,  <33.008415, 30.653826, 20.096746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.769943, 30.389227, 20.741915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.500347, 30.335121, 20.451412>,  <32.338589, 30.302658, 20.277111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.500347, 30.335121, 20.451412>,  <32.769943, 30.389227, 20.741915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.500347, 30.335121, 20.451412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208944, -0.908048, 0.363030,
		-0.708579, 0.396424, 0.583749,
		-0.673986, -0.135265, -0.726254,
		32.298153, 30.294542, 20.233536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.193172, 30.238346, 21.041750>,  <32.769943, 30.389227, 20.741915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.193172, 30.238346, 21.041750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.108963, 30.090984, 20.679543>,  <32.058437, 30.002567, 20.462219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.108963, 30.090984, 20.679543>,  <32.193172, 30.238346, 21.041750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.108963, 30.090984, 20.679543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316570, -0.850673, 0.419688,
		-0.924913, 0.375013, 0.062458,
		-0.210520, -0.368402, -0.905517,
		32.045807, 29.980463, 20.407887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.588049, 29.803633, 21.113424>,  <32.193172, 30.238346, 21.041750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.588049, 29.803633, 21.113424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.743521, 29.671570, 20.769348>,  <31.836803, 29.592333, 20.562902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.743521, 29.671570, 20.769348>,  <31.588049, 29.803633, 21.113424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.743521, 29.671570, 20.769348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236656, -0.938046, 0.253107,
		-0.890462, 0.105192, -0.442732,
		0.388678, -0.330158, -0.860189,
		31.860125, 29.572523, 20.511292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.050642, 29.391081, 20.755047>,  <31.588049, 29.803633, 21.113424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.050642, 29.391081, 20.755047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.395937, 29.283394, 20.584240>,  <31.603113, 29.218782, 20.481756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.395937, 29.283394, 20.584240>,  <31.050642, 29.391081, 20.755047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.395937, 29.283394, 20.584240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249910, -0.962896, 0.101862,
		-0.438594, 0.018784, -0.898489,
		0.863238, -0.269217, -0.427015,
		31.654909, 29.202629, 20.456135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.897932, 28.849581, 20.249060>,  <31.050642, 29.391081, 20.755047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.897932, 28.849581, 20.249060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.288031, 28.793610, 20.317543>,  <31.522091, 28.760027, 20.358633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.288031, 28.793610, 20.317543>,  <30.897932, 28.849581, 20.249060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.288031, 28.793610, 20.317543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147494, -0.988538, 0.032226,
		0.164735, -0.056681, -0.984708,
		0.975248, -0.139929, 0.171207,
		31.580605, 28.751631, 20.368904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.138330, 28.317127, 19.790905>,  <30.897932, 28.849581, 20.249060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.138330, 28.317127, 19.790905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.416580, 28.331646, 20.077900>,  <31.583530, 28.340357, 20.250097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.416580, 28.331646, 20.077900>,  <31.138330, 28.317127, 19.790905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.416580, 28.331646, 20.077900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005385, -0.998431, 0.055729,
		0.718385, -0.042630, -0.694338,
		0.695625, 0.036296, 0.717488,
		31.625267, 28.342535, 20.293146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.474634, 27.718445, 19.668491>,  <31.138330, 28.317127, 19.790905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.474634, 27.718445, 19.668491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.607380, 27.826450, 20.030033>,  <31.687027, 27.891254, 20.246958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.607380, 27.826450, 20.030033>,  <31.474634, 27.718445, 19.668491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.607380, 27.826450, 20.030033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226096, -0.952998, 0.201681,
		0.915830, 0.137427, -0.377318,
		0.331867, 0.270016, 0.903856,
		31.706940, 27.907455, 20.301189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.182034, 27.414047, 19.783062>,  <31.474634, 27.718445, 19.668491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.182034, 27.414047, 19.783062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.061615, 27.500095, 20.154675>,  <31.989365, 27.551723, 20.377642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.061615, 27.500095, 20.154675>,  <32.182034, 27.414047, 19.783062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.061615, 27.500095, 20.154675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416226, -0.846884, 0.330973,
		0.857980, 0.486323, 0.165409,
		-0.301042, 0.215121, 0.929030,
		31.971302, 27.564632, 20.433384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.803627, 27.436954, 20.249306>,  <32.182034, 27.414047, 19.783062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.803627, 27.436954, 20.249306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.479134, 27.349396, 20.466187>,  <32.284439, 27.296862, 20.596315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.479134, 27.349396, 20.466187>,  <32.803627, 27.436954, 20.249306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.479134, 27.349396, 20.466187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401802, -0.882358, 0.244948,
		0.424798, 0.416568, 0.803752,
		-0.811234, -0.218896, 0.542202,
		32.235764, 27.283728, 20.628847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.049313, 27.038733, 20.725533>,  <32.803627, 27.436954, 20.249306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.049313, 27.038733, 20.725533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.665836, 26.968342, 20.814926>,  <32.435749, 26.926107, 20.868563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.665836, 26.968342, 20.814926>,  <33.049313, 27.038733, 20.725533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.665836, 26.968342, 20.814926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246765, -0.905326, 0.345676,
		0.141495, 0.386544, 0.911352,
		-0.958690, -0.175979, 0.223485,
		32.378231, 26.915548, 20.881971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.045418, 26.817719, 21.407320>,  <33.049313, 27.038733, 20.725533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.045418, 26.817719, 21.407320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.708195, 26.686020, 21.237217>,  <32.505859, 26.607000, 21.135155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.708195, 26.686020, 21.237217>,  <33.045418, 26.817719, 21.407320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.708195, 26.686020, 21.237217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194837, -0.923974, 0.329107,
		-0.501284, 0.194602, 0.843116,
		-0.843062, -0.329246, -0.425257,
		32.455276, 26.587246, 21.109640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.730621, 26.429991, 21.910761>,  <33.045418, 26.817719, 21.407320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.730621, 26.429991, 21.910761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.574997, 26.299595, 21.566120>,  <32.481621, 26.221357, 21.359335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.574997, 26.299595, 21.566120>,  <32.730621, 26.429991, 21.910761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.574997, 26.299595, 21.566120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268656, -0.934788, 0.232368,
		-0.881167, -0.141069, 0.451270,
		-0.389062, -0.325991, -0.861603,
		32.458279, 26.201797, 21.307640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.363327, 25.737450, 22.032974>,  <32.730621, 26.429991, 21.910761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.363327, 25.737450, 22.032974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.405457, 25.759289, 21.635799>,  <32.430733, 25.772392, 21.397493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.405457, 25.759289, 21.635799>,  <32.363327, 25.737450, 22.032974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.405457, 25.759289, 21.635799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054006, -0.997332, -0.049109,
		-0.992970, -0.048452, -0.107993,
		0.105325, 0.054596, -0.992938,
		32.437054, 25.775667, 21.337917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.980570, 25.203428, 21.777775>,  <32.363327, 25.737450, 22.032974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.980570, 25.203428, 21.777775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.255703, 25.295212, 21.502316>,  <32.420784, 25.350283, 21.337040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.255703, 25.295212, 21.502316>,  <31.980570, 25.203428, 21.777775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.255703, 25.295212, 21.502316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174778, -0.973163, -0.149690,
		-0.704513, -0.017398, -0.709478,
		0.687833, 0.229460, -0.688647,
		32.462051, 25.364050, 21.295721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.793169, 24.756575, 21.189001>,  <31.980570, 25.203428, 21.777775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.793169, 24.756575, 21.189001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.167492, 24.882435, 21.125431>,  <32.392086, 24.957951, 21.087288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.167492, 24.882435, 21.125431>,  <31.793169, 24.756575, 21.189001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.167492, 24.882435, 21.125431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274234, -0.933101, -0.232633,
		-0.221493, 0.174117, -0.959492,
		0.935808, 0.314652, -0.158927,
		32.448235, 24.976831, 21.077753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.047543, 24.559967, 20.593904>,  <31.793169, 24.756575, 21.189001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.047543, 24.559967, 20.593904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.398445, 24.612885, 20.778481>,  <32.608986, 24.644636, 20.889225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.398445, 24.612885, 20.778481>,  <32.047543, 24.559967, 20.593904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.398445, 24.612885, 20.778481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278356, -0.923351, -0.264463,
		0.391082, 0.360445, -0.846838,
		0.877253, 0.132296, 0.461438,
		32.661621, 24.652573, 20.916912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.623837, 24.496426, 20.170780>,  <32.047543, 24.559967, 20.593904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.623837, 24.496426, 20.170780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.809994, 24.446865, 20.521336>,  <32.921688, 24.417130, 20.731668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.809994, 24.446865, 20.521336>,  <32.623837, 24.496426, 20.170780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.809994, 24.446865, 20.521336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361814, -0.877014, -0.316126,
		0.807774, 0.464213, -0.363328,
		0.465394, -0.123901, 0.876388,
		32.949612, 24.409695, 20.784252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.293804, 24.444389, 20.038589>,  <32.623837, 24.496426, 20.170780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.293804, 24.444389, 20.038589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.253944, 24.269382, 20.396057>,  <33.230026, 24.164379, 20.610538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.253944, 24.269382, 20.396057>,  <33.293804, 24.444389, 20.038589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.253944, 24.269382, 20.396057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669115, -0.694209, -0.265252,
		0.736447, 0.571535, 0.361930,
		-0.099654, -0.437517, 0.893671,
		33.224049, 24.138128, 20.664158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.969074, 24.265593, 20.253958>,  <33.293804, 24.444389, 20.038589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.969074, 24.265593, 20.253958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.771168, 24.036316, 20.515232>,  <33.652424, 23.898750, 20.671997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.771168, 24.036316, 20.515232>,  <33.969074, 24.265593, 20.253958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.771168, 24.036316, 20.515232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629377, -0.754639, -0.185487,
		0.599240, 0.319328, 0.734126,
		-0.494769, -0.573193, 0.653187,
		33.622738, 23.864359, 20.711187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.429684, 23.844902, 20.731451>,  <33.969074, 24.265593, 20.253958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.429684, 23.844902, 20.731451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.098663, 23.620396, 20.736225>,  <33.900051, 23.485691, 20.739090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.098663, 23.620396, 20.736225>,  <34.429684, 23.844902, 20.731451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.098663, 23.620396, 20.736225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559267, -0.826079, -0.069384,
		0.048804, -0.050743, 0.997519,
		-0.827550, -0.561266, 0.011937,
		33.850399, 23.452017, 20.739807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.611237, 23.191864, 21.062986>,  <34.429684, 23.844902, 20.731451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.611237, 23.191864, 21.062986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.248611, 23.107620, 20.916679>,  <34.031036, 23.057074, 20.828896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.248611, 23.107620, 20.916679>,  <34.611237, 23.191864, 21.062986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.248611, 23.107620, 20.916679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300937, -0.930168, -0.210295,
		-0.295934, -0.300719, 0.906638,
		-0.906565, -0.210607, -0.365766,
		33.976643, 23.044437, 20.806950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.407169, 22.575928, 21.461081>,  <34.611237, 23.191864, 21.062986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.407169, 22.575928, 21.461081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.212120, 22.587585, 21.112053>,  <34.095093, 22.594580, 20.902636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.212120, 22.587585, 21.112053>,  <34.407169, 22.575928, 21.461081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.212120, 22.587585, 21.112053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343478, -0.912442, -0.222424,
		-0.802652, -0.408167, 0.434913,
		-0.487619, 0.029146, -0.872570,
		34.065834, 22.596329, 20.850283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.085297, 22.013567, 21.500423>,  <34.407169, 22.575928, 21.461081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.085297, 22.013567, 21.500423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.022358, 22.070164, 21.109482>,  <33.984592, 22.104122, 20.874916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.022358, 22.070164, 21.109482>,  <34.085297, 22.013567, 21.500423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.022358, 22.070164, 21.109482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285448, -0.940921, -0.182175,
		-0.945389, -0.307649, 0.107664,
		-0.157349, 0.141494, -0.977354,
		33.975151, 22.112612, 20.816277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.737034, 21.402819, 21.259750>,  <34.085297, 22.013567, 21.500423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.737034, 21.402819, 21.259750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.923759, 21.565739, 20.945759>,  <34.035797, 21.663490, 20.757364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.923759, 21.565739, 20.945759>,  <33.737034, 21.402819, 21.259750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.923759, 21.565739, 20.945759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300541, -0.907864, -0.292333,
		-0.831720, -0.099452, -0.546215,
		0.466816, 0.407299, -0.784978,
		34.063805, 21.687929, 20.710266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.619690, 20.989420, 20.715998>,  <33.737034, 21.402819, 21.259750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.619690, 20.989420, 20.715998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.933327, 21.196491, 20.579052>,  <34.121510, 21.320734, 20.496883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.933327, 21.196491, 20.579052>,  <33.619690, 20.989420, 20.715998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.933327, 21.196491, 20.579052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466737, -0.855421, -0.224523,
		-0.409098, 0.016252, -0.912346,
		0.784089, 0.517678, -0.342365,
		34.168552, 21.351795, 20.476343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.857395, 20.628609, 20.037327>,  <33.619690, 20.989420, 20.715998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.857395, 20.628609, 20.037327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.168121, 20.842316, 20.170666>,  <34.354557, 20.970541, 20.250669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.168121, 20.842316, 20.170666>,  <33.857395, 20.628609, 20.037327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.168121, 20.842316, 20.170666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590343, -0.802103, -0.090139,
		0.219219, 0.266810, -0.938486,
		0.776813, 0.534268, 0.333346,
		34.401165, 21.002596, 20.270670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.452080, 20.489824, 19.611092>,  <33.857395, 20.628609, 20.037327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.452080, 20.489824, 19.611092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.590164, 20.611034, 19.966396>,  <34.673016, 20.683760, 20.179579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.590164, 20.611034, 19.966396>,  <34.452080, 20.489824, 19.611092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.590164, 20.611034, 19.966396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512263, -0.853864, 0.092209,
		0.786396, 0.423192, -0.449989,
		0.345207, 0.303026, 0.888261,
		34.693726, 20.701942, 20.232874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.111881, 20.399088, 19.517422>,  <34.452080, 20.489824, 19.611092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.111881, 20.399088, 19.517422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.046658, 20.404942, 19.912025>,  <35.007523, 20.408453, 20.148787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.046658, 20.404942, 19.912025>,  <35.111881, 20.399088, 19.517422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.046658, 20.404942, 19.912025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612918, -0.782037, 0.112912,
		0.773137, 0.623060, 0.118553,
		-0.163064, 0.014633, 0.986507,
		34.997738, 20.409332, 20.207977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.777382, 20.379522, 19.807076>,  <35.111881, 20.399088, 19.517422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.777382, 20.379522, 19.807076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.547195, 20.282684, 20.119545>,  <35.409084, 20.224581, 20.307026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.547195, 20.282684, 20.119545>,  <35.777382, 20.379522, 19.807076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.547195, 20.282684, 20.119545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761041, -0.508240, 0.403124,
		0.299427, 0.826487, 0.476720,
		-0.575465, -0.242097, 0.781172,
		35.374557, 20.210054, 20.353897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.068851, 20.487301, 20.400848>,  <35.777382, 20.379522, 19.807076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.068851, 20.487301, 20.400848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.825195, 20.198555, 20.532219>,  <35.679001, 20.025307, 20.611042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.825195, 20.198555, 20.532219>,  <36.068851, 20.487301, 20.400848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.825195, 20.198555, 20.532219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778434, -0.465038, 0.421639,
		-0.151636, 0.512493, 0.845196,
		-0.609136, -0.721865, 0.328426,
		35.642456, 19.981995, 20.630747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.119595, 20.418194, 21.097757>,  <36.068851, 20.487301, 20.400848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.119595, 20.418194, 21.097757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.013775, 20.052971, 20.973602>,  <35.950283, 19.833838, 20.899109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.013775, 20.052971, 20.973602>,  <36.119595, 20.418194, 21.097757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.013775, 20.052971, 20.973602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806936, -0.385826, 0.447206,
		-0.528080, -0.132153, 0.838849,
		-0.264550, -0.913058, -0.310386,
		35.934410, 19.779053, 20.880486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.924107, 19.913305, 21.636606>,  <36.119595, 20.418194, 21.097757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.924107, 19.913305, 21.636606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.079994, 19.677773, 21.353371>,  <36.173527, 19.536453, 21.183430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.079994, 19.677773, 21.353371>,  <35.924107, 19.913305, 21.636606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.079994, 19.677773, 21.353371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781999, -0.194510, 0.592152,
		-0.486410, -0.784500, 0.384662,
		0.389722, -0.588834, -0.708090,
		36.196911, 19.501122, 21.140944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.902378, 19.215637, 21.836483>,  <35.924107, 19.913305, 21.636606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.902378, 19.215637, 21.836483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.182209, 19.394196, 21.613297>,  <36.350109, 19.501329, 21.479385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.182209, 19.394196, 21.613297>,  <35.902378, 19.215637, 21.836483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.182209, 19.394196, 21.613297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654676, -0.087501, 0.750829,
		0.286344, -0.890548, -0.353458,
		0.699576, 0.446395, -0.557965,
		36.392082, 19.528114, 21.445908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.519051, 18.723661, 21.467749>,  <35.902378, 19.215637, 21.836483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.519051, 18.723661, 21.467749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.479671, 18.529137, 21.815037>,  <35.456043, 18.412422, 22.023411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.479671, 18.529137, 21.815037>,  <35.519051, 18.723661, 21.467749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.479671, 18.529137, 21.815037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267094, 0.853361, 0.447701,
		-0.958628, -0.187821, -0.213904,
		-0.098449, -0.486311, 0.868222,
		35.450138, 18.383244, 22.075504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.938766, 18.931837, 21.892500>,  <35.519051, 18.723661, 21.467749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.938766, 18.931837, 21.892500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.096516, 18.773640, 22.224297>,  <35.191166, 18.678720, 22.423374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.096516, 18.773640, 22.224297>,  <34.938766, 18.931837, 21.892500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.096516, 18.773640, 22.224297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276388, 0.809807, 0.517515,
		-0.876403, -0.433354, 0.210053,
		0.394370, -0.395496, 0.829491,
		35.214825, 18.654991, 22.473145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.486858, 18.944683, 22.502010>,  <34.938766, 18.931837, 21.892500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.486858, 18.944683, 22.502010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.854649, 18.985706, 22.653820>,  <35.075325, 19.010321, 22.744905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.854649, 18.985706, 22.653820>,  <34.486858, 18.944683, 22.502010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.854649, 18.985706, 22.653820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331197, 0.722195, 0.607243,
		-0.211813, -0.684045, 0.698010,
		0.919480, 0.102556, 0.379524,
		35.130493, 19.016474, 22.767677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.357281, 19.092764, 23.283737>,  <34.486858, 18.944683, 22.502010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.357281, 19.092764, 23.283737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.700703, 19.218235, 23.121510>,  <34.906757, 19.293518, 23.024174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.700703, 19.218235, 23.121510>,  <34.357281, 19.092764, 23.283737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.700703, 19.218235, 23.121510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098151, 0.876942, 0.470467,
		0.503234, -0.364116, 0.783693,
		0.858558, 0.313676, -0.405569,
		34.958271, 19.312338, 22.999840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.771687, 19.550793, 23.795345>,  <34.357281, 19.092764, 23.283737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.771687, 19.550793, 23.795345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.915527, 19.660995, 23.438744>,  <35.001831, 19.727118, 23.224783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.915527, 19.660995, 23.438744>,  <34.771687, 19.550793, 23.795345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.915527, 19.660995, 23.438744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129103, 0.960918, 0.244884,
		0.924130, 0.027035, 0.381119,
		0.359604, 0.275508, -0.891504,
		35.023407, 19.743649, 23.171291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.479271, 19.978525, 23.791292>,  <34.771687, 19.550793, 23.795345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.479271, 19.978525, 23.791292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.247013, 20.069496, 23.478592>,  <35.107658, 20.124079, 23.290972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.247013, 20.069496, 23.478592>,  <35.479271, 19.978525, 23.791292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.247013, 20.069496, 23.478592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233036, 0.873594, 0.427233,
		0.780096, 0.430245, -0.454245,
		-0.580641, 0.227428, -0.781750,
		35.072823, 20.137724, 23.244066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.625576, 20.769991, 23.665699>,  <35.479271, 19.978525, 23.791292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.625576, 20.769991, 23.665699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.286301, 20.670601, 23.478577>,  <35.082737, 20.610966, 23.366302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.286301, 20.670601, 23.478577>,  <35.625576, 20.769991, 23.665699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.286301, 20.670601, 23.478577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422388, 0.850196, 0.314252,
		0.319643, 0.464139, -0.826077,
		-0.848184, -0.248477, -0.467806,
		35.031845, 20.596058, 23.338234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.337280, 21.428244, 23.524275>,  <35.625576, 20.769991, 23.665699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.337280, 21.428244, 23.524275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.022469, 21.202679, 23.424206>,  <34.833580, 21.067339, 23.364164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.022469, 21.202679, 23.424206>,  <35.337280, 21.428244, 23.524275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.022469, 21.202679, 23.424206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608429, 0.776546, 0.163679,
		0.101969, 0.281032, -0.954266,
		-0.787030, -0.563913, -0.250172,
		34.786358, 21.033504, 23.349154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.913712, 21.884413, 23.099165>,  <35.337280, 21.428244, 23.524275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.913712, 21.884413, 23.099165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.678127, 21.602409, 23.257198>,  <34.536777, 21.433207, 23.352018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.678127, 21.602409, 23.257198>,  <34.913712, 21.884413, 23.099165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.678127, 21.602409, 23.257198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541098, 0.707116, 0.455192,
		-0.600283, 0.054311, -0.797941,
		-0.588959, -0.705009, 0.395082,
		34.501438, 21.390907, 23.375723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.255184, 22.139105, 22.925055>,  <34.913712, 21.884413, 23.099165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.255184, 22.139105, 22.925055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.215027, 21.887959, 23.233784>,  <34.190933, 21.737270, 23.419022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.215027, 21.887959, 23.233784>,  <34.255184, 22.139105, 22.925055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.215027, 21.887959, 23.233784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608364, 0.652565, 0.451722,
		-0.787284, -0.424199, -0.447481,
		-0.100390, -0.627865, 0.771821,
		34.184910, 21.699598, 23.465330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.541237, 22.057159, 22.935017>,  <34.255184, 22.139105, 22.925055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.541237, 22.057159, 22.935017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.698013, 21.968544, 23.292183>,  <33.792080, 21.915375, 23.506483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.698013, 21.968544, 23.292183>,  <33.541237, 22.057159, 22.935017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.698013, 21.968544, 23.292183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590813, 0.683373, 0.428884,
		-0.705209, -0.695646, 0.136958,
		0.391944, -0.221537, 0.892917,
		33.815598, 21.902082, 23.560059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.962032, 22.057760, 23.296547>,  <33.541237, 22.057159, 22.935017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.962032, 22.057760, 23.296547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.233315, 22.058899, 23.590492>,  <33.396084, 22.059582, 23.766859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.233315, 22.058899, 23.590492>,  <32.962032, 22.057760, 23.296547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.233315, 22.058899, 23.590492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535621, 0.686568, 0.491665,
		-0.503133, -0.727060, 0.467162,
		0.678209, 0.002849, 0.734864,
		33.436779, 22.059753, 23.810951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.641666, 21.970449, 23.848288>,  <32.962032, 22.057760, 23.296547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.641666, 21.970449, 23.848288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.977684, 22.175457, 23.919445>,  <33.179295, 22.298462, 23.962139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.977684, 22.175457, 23.919445>,  <32.641666, 21.970449, 23.848288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.977684, 22.175457, 23.919445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535236, 0.729420, 0.425992,
		0.088569, -0.453068, 0.887065,
		0.840046, 0.512519, 0.177894,
		33.229698, 22.329212, 23.972813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.528580, 22.214779, 24.435642>,  <32.641666, 21.970449, 23.848288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.528580, 22.214779, 24.435642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.813347, 22.447075, 24.277702>,  <32.984207, 22.586452, 24.182938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.813347, 22.447075, 24.277702>,  <32.528580, 22.214779, 24.435642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.813347, 22.447075, 24.277702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486246, 0.813316, 0.319504,
		0.506687, -0.035468, 0.861400,
		0.711922, 0.580741, -0.394850,
		33.026924, 22.621298, 24.159246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.455746, 22.857038, 24.852098>,  <32.528580, 22.214779, 24.435642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.455746, 22.857038, 24.852098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.674973, 22.950726, 24.530910>,  <32.806507, 23.006939, 24.338198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.674973, 22.950726, 24.530910>,  <32.455746, 22.857038, 24.852098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.674973, 22.950726, 24.530910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367761, 0.929702, 0.020171,
		0.751248, 0.284246, 0.595677,
		0.548068, 0.234220, -0.802971,
		32.839394, 23.020992, 24.290020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.912548, 23.330637, 24.982531>,  <32.455746, 22.857038, 24.852098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.912548, 23.330637, 24.982531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.879616, 23.390404, 24.588394>,  <32.859856, 23.426264, 24.351912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.879616, 23.390404, 24.588394>,  <32.912548, 23.330637, 24.982531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.879616, 23.390404, 24.588394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262805, 0.950447, 0.166084,
		0.961330, 0.272627, -0.038987,
		-0.082334, 0.149415, -0.985341,
		32.854916, 23.435228, 24.292791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.171753, 24.025639, 24.851948>,  <32.912548, 23.330637, 24.982531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.171753, 24.025639, 24.851948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.960476, 23.958492, 24.519001>,  <32.833710, 23.918203, 24.319233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.960476, 23.958492, 24.519001>,  <33.171753, 24.025639, 24.851948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.960476, 23.958492, 24.519001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332618, 0.942830, 0.020922,
		0.781268, 0.287911, -0.553830,
		-0.528191, -0.167868, -0.832367,
		32.802017, 23.908133, 24.269291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.290333, 24.519323, 24.520754>,  <33.171753, 24.025639, 24.851948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.290333, 24.519323, 24.520754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.962170, 24.403561, 24.323502>,  <32.765270, 24.334103, 24.205151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.962170, 24.403561, 24.323502>,  <33.290333, 24.519323, 24.520754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.962170, 24.403561, 24.323502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259389, 0.956972, -0.130084,
		0.509559, 0.021190, -0.860175,
		-0.820407, -0.289405, -0.493130,
		32.716049, 24.316740, 24.175562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.303154, 24.816631, 23.873247>,  <33.290333, 24.519323, 24.520754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.303154, 24.816631, 23.873247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.913677, 24.742668, 23.926502>,  <32.679989, 24.698290, 23.958456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.913677, 24.742668, 23.926502>,  <33.303154, 24.816631, 23.873247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.913677, 24.742668, 23.926502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218796, 0.921863, -0.319839,
		-0.063595, -0.340556, -0.938071,
		-0.973696, -0.184906, 0.133138,
		32.621567, 24.687197, 23.966444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.015385, 24.905899, 23.203617>,  <33.303154, 24.816631, 23.873247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.015385, 24.905899, 23.203617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.771381, 24.972191, 23.513565>,  <32.624981, 25.011965, 23.699533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.771381, 24.972191, 23.513565>,  <33.015385, 24.905899, 23.203617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.771381, 24.972191, 23.513565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120388, 0.947149, -0.297348,
		-0.783197, -0.274670, -0.557816,
		-0.610007, 0.165727, 0.774871,
		32.588379, 25.021910, 23.746027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.849358, 25.512520, 23.102005>,  <33.015385, 24.905899, 23.203617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.849358, 25.512520, 23.102005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.651867, 25.501492, 23.449677>,  <32.533371, 25.494875, 23.658279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.651867, 25.501492, 23.449677>,  <32.849358, 25.512520, 23.102005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.651867, 25.501492, 23.449677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319382, 0.935397, -0.151749,
		-0.808844, -0.352523, -0.470636,
		-0.493726, -0.027571, 0.869180,
		32.503750, 25.493219, 23.710430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.137669, 25.837070, 23.003325>,  <32.849358, 25.512520, 23.102005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.137669, 25.837070, 23.003325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.220150, 25.852467, 23.394424>,  <32.269638, 25.861704, 23.629086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.220150, 25.852467, 23.394424>,  <32.137669, 25.837070, 23.003325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.220150, 25.852467, 23.394424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330019, 0.943416, 0.032460,
		-0.921176, -0.329370, 0.207242,
		0.206207, 0.038492, 0.977751,
		32.282013, 25.864014, 23.687750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.469080, 26.138676, 23.396807>,  <32.137669, 25.837070, 23.003325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.469080, 26.138676, 23.396807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.801531, 26.198223, 23.611122>,  <32.000999, 26.233952, 23.739712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.801531, 26.198223, 23.611122>,  <31.469080, 26.138676, 23.396807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.801531, 26.198223, 23.611122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183744, 0.982902, 0.011933,
		-0.524852, -0.108366, 0.844267,
		0.831125, 0.148866, 0.535789,
		32.050869, 26.242884, 23.771858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.289062, 26.714182, 23.778965>,  <31.469080, 26.138676, 23.396807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.289062, 26.714182, 23.778965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.686232, 26.682854, 23.814678>,  <31.924534, 26.664057, 23.836107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.686232, 26.682854, 23.814678>,  <31.289062, 26.714182, 23.778965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.686232, 26.682854, 23.814678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078406, 0.996918, 0.002559,
		-0.089210, 0.004460, 0.996003,
		0.992922, -0.078321, 0.089285,
		31.984108, 26.659357, 23.841463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.356813, 27.284903, 24.179764>,  <31.289062, 26.714182, 23.778965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.356813, 27.284903, 24.179764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.731228, 27.224754, 24.052498>,  <31.955875, 27.188665, 23.976139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.731228, 27.224754, 24.052498>,  <31.356813, 27.284903, 24.179764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.731228, 27.224754, 24.052498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211882, 0.962681, 0.168380,
		0.280972, -0.225022, 0.932963,
		0.936034, -0.150368, -0.318164,
		32.012039, 27.179644, 23.957048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.700195, 27.844883, 24.527245>,  <31.356813, 27.284903, 24.179764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.700195, 27.844883, 24.527245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.959784, 27.705696, 24.256615>,  <32.115536, 27.622183, 24.094236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.959784, 27.705696, 24.256615>,  <31.700195, 27.844883, 24.527245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.959784, 27.705696, 24.256615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538993, 0.837902, 0.086063,
		0.536956, -0.420521, 0.731328,
		0.648972, -0.347969, -0.676574,
		32.154476, 27.601305, 24.053642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.443554, 27.870708, 24.783915>,  <31.700195, 27.844883, 24.527245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.443554, 27.870708, 24.783915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.446190, 27.880898, 24.384052>,  <32.447773, 27.887011, 24.144135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.446190, 27.880898, 24.384052>,  <32.443554, 27.870708, 24.783915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.446190, 27.880898, 24.384052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496148, 0.867867, 0.025385,
		0.868213, -0.496144, -0.006912,
		0.006596, 0.025469, -0.999654,
		32.448166, 27.888538, 24.084156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.132339, 28.143652, 24.623354>,  <32.443554, 27.870708, 24.783915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.132339, 28.143652, 24.623354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.917305, 28.196472, 24.290234>,  <32.788284, 28.228165, 24.090361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.917305, 28.196472, 24.290234>,  <33.132339, 28.143652, 24.623354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.917305, 28.196472, 24.290234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542421, 0.810338, -0.221655,
		0.645581, -0.570889, -0.507258,
		-0.537591, 0.132051, -0.832801,
		32.756027, 28.236088, 24.040394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.594582, 28.422020, 24.248898>,  <33.132339, 28.143652, 24.623354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.594582, 28.422020, 24.248898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.280918, 28.491833, 24.010693>,  <33.092720, 28.533720, 23.867769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.280918, 28.491833, 24.010693>,  <33.594582, 28.422020, 24.248898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.280918, 28.491833, 24.010693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389848, 0.885182, -0.253913,
		0.482820, -0.431267, -0.762164,
		-0.784158, 0.174533, -0.595512,
		33.045670, 28.544193, 23.832039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.766541, 28.693205, 23.474813>,  <33.594582, 28.422020, 24.248898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.766541, 28.693205, 23.474813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.399948, 28.822025, 23.569756>,  <33.179993, 28.899317, 23.626720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.399948, 28.822025, 23.569756>,  <33.766541, 28.693205, 23.474813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.399948, 28.822025, 23.569756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260070, 0.930419, -0.258232,
		-0.304003, -0.174938, -0.936472,
		-0.916486, 0.322051, 0.237354,
		33.125004, 28.918640, 23.640963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.606010, 29.169497, 23.015696>,  <33.766541, 28.693205, 23.474813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.606010, 29.169497, 23.015696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.332794, 29.275463, 23.287952>,  <33.168865, 29.339043, 23.451305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.332794, 29.275463, 23.287952>,  <33.606010, 29.169497, 23.015696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.332794, 29.275463, 23.287952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184614, 0.964263, -0.190040,
		-0.706661, -0.004150, -0.707540,
		-0.683043, 0.264915, 0.680641,
		33.127880, 29.354939, 23.492146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.201992, 29.618309, 22.685352>,  <33.606010, 29.169497, 23.015696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.201992, 29.618309, 22.685352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.153759, 29.691456, 23.075638>,  <33.124821, 29.735344, 23.309809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.153759, 29.691456, 23.075638>,  <33.201992, 29.618309, 22.685352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.153759, 29.691456, 23.075638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049368, 0.980566, -0.189875,
		-0.991475, -0.071064, -0.109209,
		-0.120580, 0.182865, 0.975716,
		33.117584, 29.746315, 23.368353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.674900, 30.219900, 22.681263>,  <33.201992, 29.618309, 22.685352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.674900, 30.219900, 22.681263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.815075, 30.221706, 23.055893>,  <32.899181, 30.222790, 23.280670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.815075, 30.221706, 23.055893>,  <32.674900, 30.219900, 22.681263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.815075, 30.221706, 23.055893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156599, 0.985629, -0.063347,
		-0.923401, 0.168866, 0.344696,
		0.350440, 0.004516, 0.936575,
		32.920208, 30.223061, 23.336864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.275757, 30.726562, 23.102301>,  <32.674900, 30.219900, 22.681263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.275757, 30.726562, 23.102301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.625351, 30.682240, 23.291565>,  <32.835106, 30.655645, 23.405123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.625351, 30.682240, 23.291565>,  <32.275757, 30.726562, 23.102301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.625351, 30.682240, 23.291565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074125, 0.992661, 0.095551,
		-0.480274, -0.048437, 0.875780,
		0.873981, -0.110808, 0.473159,
		32.887547, 30.648996, 23.433512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.206825, 31.223692, 23.584019>,  <32.275757, 30.726562, 23.102301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.206825, 31.223692, 23.584019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.598835, 31.148422, 23.609756>,  <32.834042, 31.103260, 23.625198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.598835, 31.148422, 23.609756>,  <32.206825, 31.223692, 23.584019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.598835, 31.148422, 23.609756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185838, 0.981742, 0.040594,
		-0.070809, -0.027825, 0.997102,
		0.980026, -0.188174, 0.064345,
		32.892841, 31.091970, 23.629061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.495224, 31.689907, 24.148781>,  <32.206825, 31.223692, 23.584019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.495224, 31.689907, 24.148781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.780491, 31.569092, 23.895748>,  <32.951653, 31.496603, 23.743929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.780491, 31.569092, 23.895748>,  <32.495224, 31.689907, 24.148781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.780491, 31.569092, 23.895748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350500, 0.935153, -0.051356,
		0.607071, -0.185094, 0.772790,
		0.713171, -0.302040, -0.632581,
		32.994442, 31.478479, 23.705975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.122776, 32.047455, 24.416185>,  <32.495224, 31.689907, 24.148781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.122776, 32.047455, 24.416185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.138962, 31.949471, 24.028709>,  <33.148674, 31.890678, 23.796225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.138962, 31.949471, 24.028709>,  <33.122776, 32.047455, 24.416185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.138962, 31.949471, 24.028709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430280, 0.879255, -0.204376,
		0.901788, -0.408537, 0.140978,
		0.040460, -0.244964, -0.968688,
		33.151100, 31.875982, 23.738104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.604828, 32.475906, 24.163160>,  <33.122776, 32.047455, 24.416185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.604828, 32.475906, 24.163160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.466522, 32.335804, 23.814960>,  <33.383537, 32.251743, 23.606041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.466522, 32.335804, 23.814960>,  <33.604828, 32.475906, 24.163160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.466522, 32.335804, 23.814960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002463, 0.928055, -0.372436,
		0.938319, -0.126630, -0.321749,
		-0.345762, -0.350256, -0.870499,
		33.362793, 32.230728, 23.553812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.056286, 32.741356, 23.731621>,  <33.604828, 32.475906, 24.163160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.056286, 32.741356, 23.731621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.735870, 32.639580, 23.514881>,  <33.543621, 32.578514, 23.384838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.735870, 32.639580, 23.514881>,  <34.056286, 32.741356, 23.731621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.735870, 32.639580, 23.514881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038114, 0.881657, -0.470348,
		0.597398, -0.397420, -0.696544,
		-0.801039, -0.254437, -0.541847,
		33.495560, 32.563248, 23.352327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.217915, 32.863564, 23.075468>,  <34.056286, 32.741356, 23.731621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.217915, 32.863564, 23.075468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.817940, 32.862110, 23.079880>,  <33.577957, 32.861237, 23.082527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.817940, 32.862110, 23.079880>,  <34.217915, 32.863564, 23.075468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.817940, 32.862110, 23.079880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009314, 0.818283, -0.574740,
		-0.006934, -0.574804, -0.818262,
		-0.999933, -0.003636, 0.011028,
		33.517960, 32.861019, 23.083189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.979233, 32.961308, 22.328156>,  <34.217915, 32.863564, 23.075468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.979233, 32.961308, 22.328156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.654587, 33.040611, 22.547962>,  <33.459797, 33.088196, 22.679846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.654587, 33.040611, 22.547962>,  <33.979233, 32.961308, 22.328156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.654587, 33.040611, 22.547962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250770, 0.731338, -0.634239,
		-0.527630, -0.652562, -0.543848,
		-0.811617, 0.198263, 0.549518,
		33.411102, 33.100090, 22.712818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.372231, 32.947418, 21.879356>,  <33.979233, 32.961308, 22.328156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.372231, 32.947418, 21.879356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.302711, 33.180378, 22.196999>,  <33.260998, 33.320152, 22.387585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.302711, 33.180378, 22.196999>,  <33.372231, 32.947418, 21.879356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.302711, 33.180378, 22.196999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125163, 0.786775, -0.604417,
		-0.976794, -0.204441, -0.063848,
		-0.173802, 0.582399, 0.794106,
		33.250572, 33.355099, 22.435230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.842606, 33.341026, 21.679262>,  <33.372231, 32.947418, 21.879356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.842606, 33.341026, 21.679262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.966511, 33.548172, 21.998226>,  <33.040855, 33.672459, 22.189604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.966511, 33.548172, 21.998226>,  <32.842606, 33.341026, 21.679262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.966511, 33.548172, 21.998226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294803, 0.849639, -0.437270,
		-0.903957, -0.099628, 0.415855,
		0.309763, 0.517868, 0.797408,
		33.059441, 33.703533, 22.237448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.223423, 33.758118, 21.756227>,  <32.842606, 33.341026, 21.679262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.223423, 33.758118, 21.756227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.511250, 33.937084, 21.968662>,  <32.683945, 34.044464, 22.096123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.511250, 33.937084, 21.968662>,  <32.223423, 33.758118, 21.756227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.511250, 33.937084, 21.968662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469967, 0.876783, -0.101889,
		-0.511233, -0.176277, 0.841170,
		0.719563, 0.447411, 0.531086,
		32.727119, 34.071308, 22.127989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.904139, 34.224659, 22.179615>,  <32.223423, 33.758118, 21.756227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.904139, 34.224659, 22.179615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.276600, 34.365559, 22.141937>,  <32.500076, 34.450100, 22.119329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.276600, 34.365559, 22.141937>,  <31.904139, 34.224659, 22.179615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.276600, 34.365559, 22.141937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352908, 0.935603, 0.010134,
		0.091700, 0.023806, 0.995502,
		0.931154, 0.352250, -0.094196,
		32.555946, 34.471233, 22.113678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.214249, 33.981647, 22.625231>,  <31.904139, 34.224659, 22.179615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.214249, 33.981647, 22.625231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.882856, 34.168732, 22.748432>,  <30.684021, 34.280983, 22.822353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.882856, 34.168732, 22.748432>,  <31.214249, 33.981647, 22.625231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.882856, 34.168732, 22.748432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237132, -0.791236, 0.563661,
		0.507335, 0.393944, 0.766433,
		-0.828480, 0.467711, 0.308005,
		30.634312, 34.309044, 22.840834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.125828, 33.953175, 23.249958>,  <31.214249, 33.981647, 22.625231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.125828, 33.953175, 23.249958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.732880, 33.998146, 23.190216>,  <30.497110, 34.025131, 23.154371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.732880, 33.998146, 23.190216>,  <31.125828, 33.953175, 23.249958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.732880, 33.998146, 23.190216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167694, -0.883081, 0.438231,
		-0.082623, 0.455551, 0.886367,
		-0.982371, 0.112431, -0.149356,
		30.438168, 34.031876, 23.145409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.760944, 33.905041, 23.859512>,  <31.125828, 33.953175, 23.249958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.760944, 33.905041, 23.859512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.472782, 33.826569, 23.593422>,  <30.299885, 33.779484, 23.433767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.472782, 33.826569, 23.593422>,  <30.760944, 33.905041, 23.859512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.472782, 33.826569, 23.593422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060123, -0.937883, 0.341702,
		-0.690940, 0.286160, 0.663863,
		-0.720407, -0.196183, -0.665226,
		30.256660, 33.767715, 23.393854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.281878, 33.466019, 24.240196>,  <30.760944, 33.905041, 23.859512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.281878, 33.466019, 24.240196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.205910, 33.392262, 23.854465>,  <30.160328, 33.348007, 23.623026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.205910, 33.392262, 23.854465>,  <30.281878, 33.466019, 24.240196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.205910, 33.392262, 23.854465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234426, -0.945278, 0.226922,
		-0.953402, 0.269160, 0.136301,
		-0.189921, -0.184396, -0.964328,
		30.148933, 33.336945, 23.565166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.599482, 33.114052, 24.270195>,  <30.281878, 33.466019, 24.240196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.599482, 33.114052, 24.270195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.801418, 33.044945, 23.931896>,  <29.922581, 33.003479, 23.728918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.801418, 33.044945, 23.931896>,  <29.599482, 33.114052, 24.270195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.801418, 33.044945, 23.931896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140886, -0.983120, 0.116735,
		-0.851637, 0.060221, -0.520662,
		0.504843, -0.172770, -0.845745,
		29.952871, 32.993114, 23.678173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.117596, 32.714912, 23.947559>,  <29.599482, 33.114052, 24.270195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.117596, 32.714912, 23.947559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.483536, 32.665516, 23.793781>,  <29.703100, 32.635880, 23.701515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.483536, 32.665516, 23.793781>,  <29.117596, 32.714912, 23.947559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.483536, 32.665516, 23.793781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102793, -0.991945, 0.074020,
		-0.390488, -0.028199, -0.920176,
		0.914851, -0.123492, -0.384444,
		29.757992, 32.628468, 23.678448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.051020, 32.194649, 23.529398>,  <29.117596, 32.714912, 23.947559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.051020, 32.194649, 23.529398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.446945, 32.193024, 23.586319>,  <29.684502, 32.192047, 23.620472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.446945, 32.193024, 23.586319>,  <29.051020, 32.194649, 23.529398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.446945, 32.193024, 23.586319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007089, -0.999760, 0.020738,
		0.142184, -0.021536, -0.989606,
		0.989815, -0.004066, 0.142303,
		29.743889, 32.191803, 23.629009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.393353, 31.749706, 22.976532>,  <29.051020, 32.194649, 23.529398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.393353, 31.749706, 22.976532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.645813, 31.766544, 23.286339>,  <29.797289, 31.776648, 23.472223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.645813, 31.766544, 23.286339>,  <29.393353, 31.749706, 22.976532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.645813, 31.766544, 23.286339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031112, -0.999097, 0.028951,
		0.775037, 0.005825, -0.631889,
		0.631149, 0.042098, 0.774518,
		29.835157, 31.779173, 23.518694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.050846, 31.357861, 22.826229>,  <29.393353, 31.749706, 22.976532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.050846, 31.357861, 22.826229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.020412, 31.378685, 23.224525>,  <30.002151, 31.391180, 23.463503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.020412, 31.378685, 23.224525>,  <30.050846, 31.357861, 22.826229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.020412, 31.378685, 23.224525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000410, -0.998638, 0.052181,
		0.997101, 0.003562, 0.076002,
		-0.076085, 0.052061, 0.995741,
		29.997587, 31.394302, 23.523249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.398190, 30.761126, 23.056374>,  <30.050846, 31.357861, 22.826229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.398190, 30.761126, 23.056374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.207312, 30.857227, 23.394501>,  <30.092785, 30.914888, 23.597378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.207312, 30.857227, 23.394501>,  <30.398190, 30.761126, 23.056374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.207312, 30.857227, 23.394501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151501, -0.969992, 0.190167,
		0.865640, -0.037320, 0.499274,
		-0.477195, 0.240256, 0.845318,
		30.064154, 30.929304, 23.648096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.567743, 30.406929, 23.587624>,  <30.398190, 30.761126, 23.056374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.567743, 30.406929, 23.587624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.228746, 30.514477, 23.770695>,  <30.025349, 30.579006, 23.880537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.228746, 30.514477, 23.770695>,  <30.567743, 30.406929, 23.587624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.228746, 30.514477, 23.770695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160897, -0.951780, 0.261203,
		0.505836, 0.147728, 0.849886,
		-0.847492, 0.268870, 0.457676,
		29.974499, 30.595139, 23.907997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.617048, 30.103439, 24.298893>,  <30.567743, 30.406929, 23.587624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.617048, 30.103439, 24.298893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.236101, 30.173912, 24.199326>,  <30.007534, 30.216196, 24.139585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.236101, 30.173912, 24.199326>,  <30.617048, 30.103439, 24.298893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.236101, 30.173912, 24.199326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240936, -0.935070, 0.259990,
		-0.186949, 0.307579, 0.932977,
		-0.952366, 0.176183, -0.248917,
		29.950392, 30.226767, 24.124651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.172277, 29.859739, 24.869095>,  <30.617048, 30.103439, 24.298893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.172277, 29.859739, 24.869095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.987871, 29.825428, 24.515800>,  <29.877228, 29.804842, 24.303823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.987871, 29.825428, 24.515800>,  <30.172277, 29.859739, 24.869095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.987871, 29.825428, 24.515800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272958, -0.933354, 0.233120,
		-0.844369, 0.348559, 0.406876,
		-0.461015, -0.085779, -0.883237,
		29.849567, 29.799694, 24.250830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.493082, 29.525545, 24.997395>,  <30.172277, 29.859739, 24.869095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.493082, 29.525545, 24.997395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.610239, 29.456146, 24.621284>,  <29.680532, 29.414507, 24.395618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.610239, 29.456146, 24.621284>,  <29.493082, 29.525545, 24.997395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.610239, 29.456146, 24.621284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279342, -0.956022, 0.089388,
		-0.914430, 0.236477, -0.328474,
		0.292891, -0.173496, -0.940273,
		29.698107, 29.404097, 24.339203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.038660, 29.075497, 24.698418>,  <29.493082, 29.525545, 24.997395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.038660, 29.075497, 24.698418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.375877, 29.017612, 24.491215>,  <29.578209, 28.982882, 24.366892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.375877, 29.017612, 24.491215>,  <29.038660, 29.075497, 24.698418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.375877, 29.017612, 24.491215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211709, -0.974657, -0.072267,
		-0.494422, 0.170591, -0.852318,
		0.843046, -0.144713, -0.518008,
		29.628792, 28.974199, 24.335812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.850168, 28.640297, 24.175200>,  <29.038660, 29.075497, 24.698418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.850168, 28.640297, 24.175200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.248913, 28.609013, 24.170322>,  <29.488159, 28.590242, 24.167397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.248913, 28.609013, 24.170322>,  <28.850168, 28.640297, 24.175200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.248913, 28.609013, 24.170322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079121, -0.979802, -0.183651,
		0.002419, 0.184039, -0.982916,
		0.996862, -0.078213, -0.012191,
		29.547972, 28.585548, 24.166664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.003851, 28.231441, 23.629705>,  <28.850168, 28.640297, 24.175200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.003851, 28.231441, 23.629705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.330898, 28.234177, 23.859993>,  <29.527126, 28.235817, 23.998165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.330898, 28.234177, 23.859993>,  <29.003851, 28.231441, 23.629705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.330898, 28.234177, 23.859993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005044, -0.999806, 0.019037,
		0.575738, -0.018469, -0.817426,
		0.817619, 0.006837, 0.575720,
		29.576183, 28.236227, 24.032709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.472361, 27.737062, 23.259119>,  <29.003851, 28.231441, 23.629705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.472361, 27.737062, 23.259119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.568335, 27.777233, 23.645351>,  <29.625919, 27.801336, 23.877090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.568335, 27.777233, 23.645351>,  <29.472361, 27.737062, 23.259119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.568335, 27.777233, 23.645351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000143, -0.994631, 0.103485,
		0.970790, -0.024968, -0.238630,
		0.239933, 0.100428, 0.965581,
		29.640314, 27.807362, 23.935026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.973791, 27.244799, 23.369833>,  <29.472361, 27.737062, 23.259119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.973791, 27.244799, 23.369833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.844471, 27.321930, 23.740410>,  <29.766878, 27.368210, 23.962755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.844471, 27.321930, 23.740410>,  <29.973791, 27.244799, 23.369833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.844471, 27.321930, 23.740410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109748, -0.964771, 0.239107,
		0.939911, 0.178979, 0.290748,
		-0.323300, 0.192831, 0.926441,
		29.747480, 27.379780, 24.018343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.417074, 26.848974, 23.710997>,  <29.973791, 27.244799, 23.369833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.417074, 26.848974, 23.710997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.119106, 26.933506, 23.964115>,  <29.940325, 26.984226, 24.115986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.119106, 26.933506, 23.964115>,  <30.417074, 26.848974, 23.710997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.119106, 26.933506, 23.964115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040234, -0.932547, 0.358800,
		0.665938, 0.292738, 0.686172,
		-0.744922, 0.211331, 0.632796,
		29.895630, 26.996906, 24.153954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.651596, 26.693195, 24.415747>,  <30.417074, 26.848974, 23.710997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.651596, 26.693195, 24.415747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.252350, 26.668659, 24.415413>,  <30.012802, 26.653936, 24.415213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.252350, 26.668659, 24.415413>,  <30.651596, 26.693195, 24.415747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.252350, 26.668659, 24.415413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057783, -0.944602, 0.323090,
		-0.020609, 0.322434, 0.946368,
		-0.998116, -0.061342, -0.000836,
		29.952915, 26.650257, 24.415163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.481558, 26.409842, 24.985529>,  <30.651596, 26.693195, 24.415747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.481558, 26.409842, 24.985529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.137621, 26.345829, 24.791595>,  <29.931259, 26.307421, 24.675236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.137621, 26.345829, 24.791595>,  <30.481558, 26.409842, 24.985529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.137621, 26.345829, 24.791595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020072, -0.959469, 0.281098,
		-0.510168, 0.231968, 0.828202,
		-0.859840, -0.160031, -0.484835,
		29.879669, 26.297819, 24.646145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.060150, 25.964722, 25.420439>,  <30.481558, 26.409842, 24.985529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.060150, 25.964722, 25.420439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.899128, 25.938499, 25.055222>,  <29.802515, 25.922766, 24.836090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.899128, 25.938499, 25.055222>,  <30.060150, 25.964722, 25.420439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.899128, 25.938499, 25.055222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088312, -0.989998, 0.110019,
		-0.911125, 0.124921, 0.392741,
		-0.402556, -0.065558, -0.913045,
		29.778360, 25.918833, 24.781307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.389370, 25.437706, 25.454641>,  <30.060150, 25.964722, 25.420439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.389370, 25.437706, 25.454641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.540937, 25.450718, 25.084698>,  <29.631878, 25.458525, 24.862732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.540937, 25.450718, 25.084698>,  <29.389370, 25.437706, 25.454641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.540937, 25.450718, 25.084698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169119, -0.980119, -0.103761,
		-0.909845, 0.195729, -0.365887,
		0.378921, 0.032528, -0.924857,
		29.654613, 25.460476, 24.807241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.965754, 24.935629, 25.161648>,  <29.389370, 25.437706, 25.454641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.965754, 24.935629, 25.161648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.289583, 24.998814, 24.935501>,  <29.483881, 25.036724, 24.799812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.289583, 24.998814, 24.935501>,  <28.965754, 24.935629, 25.161648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.289583, 24.998814, 24.935501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044783, -0.976928, -0.208822,
		-0.585309, 0.143738, -0.797968,
		0.809573, 0.157961, -0.565368,
		29.532455, 25.046202, 24.765890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.903105, 24.485727, 24.706139>,  <28.965754, 24.935629, 25.161648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.903105, 24.485727, 24.706139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.274849, 24.598709, 24.611053>,  <29.497896, 24.666498, 24.554003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.274849, 24.598709, 24.611053>,  <28.903105, 24.485727, 24.706139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.274849, 24.598709, 24.611053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184195, -0.912809, -0.364488,
		-0.319938, 0.294956, -0.900356,
		0.929361, 0.282454, -0.237713,
		29.553658, 24.683445, 24.539740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.019218, 24.296968, 24.009922>,  <28.903105, 24.485727, 24.706139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.019218, 24.296968, 24.009922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.392071, 24.332752, 24.150280>,  <29.615782, 24.354223, 24.234495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.392071, 24.332752, 24.150280>,  <29.019218, 24.296968, 24.009922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.392071, 24.332752, 24.150280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211684, -0.920808, -0.327571,
		0.293802, 0.379618, -0.877252,
		0.932132, 0.089459, 0.350894,
		29.671711, 24.359591, 24.255548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.522596, 24.202162, 23.457430>,  <29.019218, 24.296968, 24.009922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.522596, 24.202162, 23.457430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.738880, 24.127102, 23.785435>,  <29.868650, 24.082066, 23.982237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.738880, 24.127102, 23.785435>,  <29.522596, 24.202162, 23.457430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.738880, 24.127102, 23.785435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049610, -0.965992, -0.253768,
		0.839744, 0.177896, -0.513013,
		0.540711, -0.187649, 0.820012,
		29.901093, 24.070807, 24.031439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.173634, 23.858881, 23.313192>,  <29.522596, 24.202162, 23.457430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.173634, 23.858881, 23.313192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.124193, 23.769241, 23.699871>,  <30.094528, 23.715458, 23.931879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.124193, 23.769241, 23.699871>,  <30.173634, 23.858881, 23.313192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.124193, 23.769241, 23.699871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105262, -0.971631, -0.211786,
		0.986733, 0.075579, 0.143686,
		-0.123603, -0.224101, 0.966696,
		30.087112, 23.702011, 23.989880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.816092, 23.474672, 23.450029>,  <30.173634, 23.858881, 23.313192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.816092, 23.474672, 23.450029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.546799, 23.378731, 23.729809>,  <30.385223, 23.321165, 23.897676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.546799, 23.378731, 23.729809>,  <30.816092, 23.474672, 23.450029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.546799, 23.378731, 23.729809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060254, -0.960577, -0.271406,
		0.736974, -0.140574, 0.661141,
		-0.673230, -0.239856, 0.699450,
		30.344830, 23.306774, 23.939644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.077839, 22.915401, 23.772110>,  <30.816092, 23.474672, 23.450029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.077839, 22.915401, 23.772110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.680477, 22.918720, 23.817848>,  <30.442060, 22.920712, 23.845291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.680477, 22.918720, 23.817848>,  <31.077839, 22.915401, 23.772110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.680477, 22.918720, 23.817848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047379, -0.937934, -0.343563,
		0.104401, -0.346716, 0.932142,
		-0.993406, 0.008295, 0.114348,
		30.382456, 22.921209, 23.852152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.859699, 22.199442, 23.915316>,  <31.077839, 22.915401, 23.772110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.859699, 22.199442, 23.915316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.492630, 22.346428, 23.854851>,  <30.272388, 22.434620, 23.818571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.492630, 22.346428, 23.854851>,  <30.859699, 22.199442, 23.915316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.492630, 22.346428, 23.854851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302474, -0.892744, -0.333943,
		-0.257660, -0.260728, 0.930394,
		-0.917671, 0.367464, -0.151161,
		30.217329, 22.456667, 23.809502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.387661, 21.703882, 24.205818>,  <30.859699, 22.199442, 23.915316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.387661, 21.703882, 24.205818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.180634, 21.908089, 23.931156>,  <30.056417, 22.030613, 23.766359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.180634, 21.908089, 23.931156>,  <30.387661, 21.703882, 24.205818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.180634, 21.908089, 23.931156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398732, -0.853946, -0.334348,
		-0.757056, 0.100741, 0.645537,
		-0.517571, 0.510516, -0.686653,
		30.025362, 22.061243, 23.725161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.807650, 21.423683, 24.331589>,  <30.387661, 21.703882, 24.205818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.807650, 21.423683, 24.331589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.767941, 21.609547, 23.979626>,  <29.744114, 21.721066, 23.768448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.767941, 21.609547, 23.979626>,  <29.807650, 21.423683, 24.331589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.767941, 21.609547, 23.979626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336258, -0.847920, -0.409830,
		-0.936523, 0.255191, 0.240422,
		-0.099274, 0.464659, -0.879907,
		29.738159, 21.748945, 23.715654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.100878, 21.262636, 24.178278>,  <29.807650, 21.423683, 24.331589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.100878, 21.262636, 24.178278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.320112, 21.337929, 23.852291>,  <29.451653, 21.383104, 23.656698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.320112, 21.337929, 23.852291>,  <29.100878, 21.262636, 24.178278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.320112, 21.337929, 23.852291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501484, -0.705850, -0.500290,
		-0.669416, 0.682894, -0.292469,
		0.548084, 0.188234, -0.814967,
		29.484537, 21.394400, 23.607801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.599903, 21.254753, 23.635912>,  <29.100878, 21.262636, 24.178278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.599903, 21.254753, 23.635912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.957575, 21.209686, 23.462593>,  <29.172178, 21.182646, 23.358603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.957575, 21.209686, 23.462593>,  <28.599903, 21.254753, 23.635912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.957575, 21.209686, 23.462593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349709, -0.780064, -0.518848,
		-0.279540, 0.615472, -0.736920,
		0.894182, -0.112669, -0.433296,
		29.225830, 21.175886, 23.332603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.476757, 21.187033, 22.936729>,  <28.599903, 21.254753, 23.635912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.476757, 21.187033, 22.936729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.844549, 21.037708, 22.986034>,  <29.065226, 20.948114, 23.015617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.844549, 21.037708, 22.986034>,  <28.476757, 21.187033, 22.936729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.844549, 21.037708, 22.986034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282076, -0.844861, -0.454580,
		0.273837, 0.383209, -0.882136,
		0.919482, -0.373310, 0.123261,
		29.120394, 20.925714, 23.023012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.643934, 21.013388, 22.277767>,  <28.476757, 21.187033, 22.936729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.643934, 21.013388, 22.277767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.878307, 20.815521, 22.534512>,  <29.018930, 20.696800, 22.688559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.878307, 20.815521, 22.534512>,  <28.643934, 21.013388, 22.277767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.878307, 20.815521, 22.534512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260559, -0.865013, -0.428790,
		0.767328, 0.083999, -0.635730,
		0.585933, -0.494668, 0.641862,
		29.054087, 20.667120, 22.727070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.198835, 20.933193, 21.734816>,  <28.643934, 21.013388, 22.277767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.198835, 20.933193, 21.734816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.156370, 20.765251, 21.374271>,  <29.130892, 20.664486, 21.157946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.156370, 20.765251, 21.374271>,  <29.198835, 20.933193, 21.734816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.156370, 20.765251, 21.374271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138239, 0.903912, -0.404762,
		0.984693, 0.081633, -0.154000,
		-0.106161, -0.419855, -0.901361,
		29.124521, 20.639294, 21.103863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.747107, 21.197969, 21.292091>,  <29.198835, 20.933193, 21.734816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.747107, 21.197969, 21.292091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.482103, 21.065086, 21.023548>,  <29.323101, 20.985357, 20.862423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.482103, 21.065086, 21.023548>,  <29.747107, 21.197969, 21.292091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.482103, 21.065086, 21.023548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018380, 0.888795, -0.457937,
		0.748828, -0.315727, -0.582729,
		-0.662510, -0.332206, -0.671357,
		29.283350, 20.965425, 20.822142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.913286, 21.489508, 20.710209>,  <29.747107, 21.197969, 21.292091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.913286, 21.489508, 20.710209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.538065, 21.377281, 20.628880>,  <29.312933, 21.309946, 20.580082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.538065, 21.377281, 20.628880>,  <29.913286, 21.489508, 20.710209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.538065, 21.377281, 20.628880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148025, 0.855054, -0.496962,
		0.313282, -0.436080, -0.843616,
		-0.938053, -0.280566, -0.203323,
		29.256649, 21.293112, 20.567883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.840601, 21.470800, 19.959488>,  <29.913286, 21.489508, 20.710209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.840601, 21.470800, 19.959488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.472353, 21.519108, 20.108013>,  <29.251404, 21.548092, 20.197128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.472353, 21.519108, 20.108013>,  <29.840601, 21.470800, 19.959488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.472353, 21.519108, 20.108013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141862, 0.782527, -0.606240,
		-0.363775, -0.610792, -0.703278,
		-0.920621, 0.120766, 0.371312,
		29.196167, 21.555338, 20.219406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.472992, 21.852242, 19.446205>,  <29.840601, 21.470800, 19.959488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.472992, 21.852242, 19.446205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.243490, 21.885632, 19.772110>,  <29.105789, 21.905666, 19.967653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.243490, 21.885632, 19.772110>,  <29.472992, 21.852242, 19.446205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.243490, 21.885632, 19.772110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169366, 0.961198, -0.217746,
		-0.801323, -0.262926, -0.537356,
		-0.573756, 0.083475, 0.814761,
		29.071363, 21.910675, 20.016539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.730907, 21.886030, 19.208004>,  <29.472992, 21.852242, 19.446205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.730907, 21.886030, 19.208004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.807957, 22.048988, 19.565086>,  <28.854187, 22.146763, 19.779335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.807957, 22.048988, 19.565086>,  <28.730907, 21.886030, 19.208004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.807957, 22.048988, 19.565086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336810, 0.881924, -0.329801,
		-0.921659, -0.237145, 0.307095,
		0.192624, 0.407396, 0.892706,
		28.865744, 22.171207, 19.832899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.124258, 22.358912, 19.306889>,  <28.730907, 21.886030, 19.208004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.124258, 22.358912, 19.306889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.400799, 22.476578, 19.570858>,  <28.566723, 22.547178, 19.729240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.400799, 22.476578, 19.570858>,  <28.124258, 22.358912, 19.306889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.400799, 22.476578, 19.570858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247068, 0.954557, -0.166668,
		-0.678964, -0.047820, 0.732613,
		0.691351, 0.294167, 0.659925,
		28.608204, 22.564827, 19.768835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.732620, 22.843166, 19.825550>,  <28.124258, 22.358912, 19.306889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.732620, 22.843166, 19.825550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.121235, 22.935272, 19.847790>,  <28.354404, 22.990536, 19.861134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.121235, 22.935272, 19.847790>,  <27.732620, 22.843166, 19.825550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.121235, 22.935272, 19.847790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223264, 0.968538, -0.109942,
		-0.079167, 0.094400, 0.992382,
		0.971538, 0.230267, 0.055600,
		28.412697, 23.004353, 19.864470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.740664, 23.399710, 20.516525>,  <27.732620, 22.843166, 19.825550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.740664, 23.399710, 20.516525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.073343, 23.422218, 20.295578>,  <28.272951, 23.435722, 20.163010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.073343, 23.422218, 20.295578>,  <27.740664, 23.399710, 20.516525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.073343, 23.422218, 20.295578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084622, 0.996075, -0.025945,
		0.548738, 0.068321, 0.833198,
		0.831700, 0.056270, -0.552366,
		28.322853, 23.439100, 20.129868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.200125, 23.784790, 20.894939>,  <27.740664, 23.399710, 20.516525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.200125, 23.784790, 20.894939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.366167, 23.827797, 20.533581>,  <28.465792, 23.853601, 20.316765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.366167, 23.827797, 20.533581>,  <28.200125, 23.784790, 20.894939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.366167, 23.827797, 20.533581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081000, 0.984681, 0.154410,
		0.906160, -0.137272, 0.400037,
		0.415105, 0.107517, -0.903398,
		28.490698, 23.860052, 20.262562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.873634, 24.185423, 21.026756>,  <28.200125, 23.784790, 20.894939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.873634, 24.185423, 21.026756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.742012, 24.244339, 20.653656>,  <28.663038, 24.279688, 20.429796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.742012, 24.244339, 20.653656>,  <28.873634, 24.185423, 21.026756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.742012, 24.244339, 20.653656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135668, 0.984887, 0.107662,
		0.934514, -0.091118, -0.344065,
		-0.329056, 0.147290, -0.932753,
		28.643295, 24.288527, 20.373831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.237217, 24.653006, 20.784124>,  <28.873634, 24.185423, 21.026756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.237217, 24.653006, 20.784124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.948101, 24.667534, 20.508080>,  <28.774632, 24.676250, 20.342453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.948101, 24.667534, 20.508080>,  <29.237217, 24.653006, 20.784124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.948101, 24.667534, 20.508080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145036, 0.984350, -0.100098,
		0.675676, -0.172441, -0.716747,
		-0.722791, 0.036320, -0.690112,
		28.731264, 24.678431, 20.301046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.538874, 24.949617, 20.225006>,  <29.237217, 24.653006, 20.784124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.538874, 24.949617, 20.225006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.143265, 25.006382, 20.208527>,  <28.905899, 25.040442, 20.198639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.143265, 25.006382, 20.208527>,  <29.538874, 24.949617, 20.225006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.143265, 25.006382, 20.208527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141621, 0.989872, 0.009897,
		0.042184, 0.003954, -0.999102,
		-0.989022, 0.141911, -0.041197,
		28.846558, 25.048956, 20.196167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.495983, 25.295959, 19.678505>,  <29.538874, 24.949617, 20.225006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.495983, 25.295959, 19.678505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.172783, 25.382446, 19.897736>,  <28.978863, 25.434340, 20.029274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.172783, 25.382446, 19.897736>,  <29.495983, 25.295959, 19.678505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.172783, 25.382446, 19.897736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337309, 0.932456, 0.129419,
		-0.483074, 0.289441, -0.826355,
		-0.807999, 0.216218, 0.548076,
		28.930384, 25.447311, 20.062159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.293751, 26.011827, 19.458162>,  <29.495983, 25.295959, 19.678505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.293751, 26.011827, 19.458162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.069061, 25.976994, 19.787254>,  <28.934248, 25.956093, 19.984709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.069061, 25.976994, 19.787254>,  <29.293751, 26.011827, 19.458162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.069061, 25.976994, 19.787254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059113, 0.987679, 0.144902,
		-0.825209, 0.130029, -0.549656,
		-0.561725, -0.087083, 0.822728,
		28.900543, 25.950869, 20.034073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.704659, 26.513695, 19.413786>,  <29.293751, 26.011827, 19.458162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.704659, 26.513695, 19.413786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.752829, 26.426105, 19.801094>,  <28.781731, 26.373552, 20.033480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.752829, 26.426105, 19.801094>,  <28.704659, 26.513695, 19.413786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.752829, 26.426105, 19.801094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035191, 0.973815, 0.224602,
		-0.992099, -0.061122, 0.109565,
		0.120425, -0.218972, 0.968271,
		28.788956, 26.360415, 20.091576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.120081, 26.810507, 19.921602>,  <28.704659, 26.513695, 19.413786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.120081, 26.810507, 19.921602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.448683, 26.732086, 20.135777>,  <28.645844, 26.685034, 20.264282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.448683, 26.732086, 20.135777>,  <28.120081, 26.810507, 19.921602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.448683, 26.732086, 20.135777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068764, 0.898116, 0.434348,
		-0.566039, -0.393638, 0.724326,
		0.821505, -0.196050, 0.535437,
		28.695135, 26.673271, 20.296408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.872053, 27.018377, 20.632870>,  <28.120081, 26.810507, 19.921602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.872053, 27.018377, 20.632870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.269455, 27.008446, 20.677296>,  <28.507896, 27.002487, 20.703951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.269455, 27.008446, 20.677296>,  <27.872053, 27.018377, 20.632870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.269455, 27.008446, 20.677296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048321, 0.791538, 0.609206,
		-0.103040, -0.610615, 0.785195,
		0.993503, -0.024831, 0.111066,
		28.567505, 27.000996, 20.710615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.020643, 27.048115, 21.294573>,  <27.872053, 27.018377, 20.632870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.020643, 27.048115, 21.294573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.368208, 27.152710, 21.126469>,  <28.576746, 27.215467, 21.025606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.368208, 27.152710, 21.126469>,  <28.020643, 27.048115, 21.294573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.368208, 27.152710, 21.126469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177585, 0.627843, 0.757810,
		0.462016, -0.733102, 0.499103,
		0.868910, 0.261487, -0.420261,
		28.628881, 27.231155, 21.000391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.534655, 27.002979, 21.844782>,  <28.020643, 27.048115, 21.294573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.534655, 27.002979, 21.844782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.685247, 27.233650, 21.554760>,  <28.775602, 27.372053, 21.380747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.685247, 27.233650, 21.554760>,  <28.534655, 27.002979, 21.844782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.685247, 27.233650, 21.554760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303329, 0.662769, 0.684638,
		0.875359, -0.477684, 0.074599,
		0.376482, 0.576676, -0.725056,
		28.798193, 27.406652, 21.337244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.133694, 27.303375, 22.176369>,  <28.534655, 27.002979, 21.844782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.133694, 27.303375, 22.176369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.048265, 27.535881, 21.862293>,  <28.997009, 27.675385, 21.673849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.048265, 27.535881, 21.862293>,  <29.133694, 27.303375, 22.176369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.048265, 27.535881, 21.862293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338341, 0.797999, 0.498721,
		0.916467, -0.159149, -0.367096,
		-0.213571, 0.581265, -0.785187,
		28.984194, 27.710260, 21.626738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.694292, 27.756964, 22.195078>,  <29.133694, 27.303375, 22.176369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.694292, 27.756964, 22.195078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.398296, 27.895470, 21.964420>,  <29.220699, 27.978573, 21.826025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.398296, 27.895470, 21.964420>,  <29.694292, 27.756964, 22.195078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.398296, 27.895470, 21.964420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077104, 0.895329, 0.438682,
		0.668186, 0.280158, -0.689231,
		-0.739988, 0.346263, -0.576645,
		29.176300, 27.999350, 21.791428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.896246, 28.464310, 21.932808>,  <29.694292, 27.756964, 22.195078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.896246, 28.464310, 21.932808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.501760, 28.478485, 21.868153>,  <29.265070, 28.486990, 21.829359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.501760, 28.478485, 21.868153>,  <29.896246, 28.464310, 21.932808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.501760, 28.478485, 21.868153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019134, 0.945823, 0.324120,
		0.164369, 0.322744, -0.932105,
		-0.986213, 0.035441, -0.161639,
		29.205896, 28.489117, 21.819660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.807425, 29.130548, 21.675739>,  <29.896246, 28.464310, 21.932808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.807425, 29.130548, 21.675739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.450890, 29.003010, 21.804646>,  <29.236969, 28.926487, 21.881989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.450890, 29.003010, 21.804646>,  <29.807425, 29.130548, 21.675739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.450890, 29.003010, 21.804646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182756, 0.903267, 0.388212,
		-0.414872, 0.287132, -0.863387,
		-0.891337, -0.318848, 0.322265,
		29.183489, 28.907356, 21.901325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.374537, 29.656563, 21.515129>,  <29.807425, 29.130548, 21.675739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.374537, 29.656563, 21.515129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.182125, 29.435452, 21.787319>,  <29.066679, 29.302784, 21.950634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.182125, 29.435452, 21.787319>,  <29.374537, 29.656563, 21.515129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.182125, 29.435452, 21.787319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267698, 0.831715, 0.486403,
		-0.834836, 0.051810, -0.548055,
		-0.481027, -0.552780, 0.680476,
		29.037817, 29.269617, 21.991463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.650629, 29.822882, 21.433369>,  <29.374537, 29.656563, 21.515129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.650629, 29.822882, 21.433369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.694754, 29.693520, 21.809292>,  <28.721228, 29.615902, 22.034845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.694754, 29.693520, 21.809292>,  <28.650629, 29.822882, 21.433369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.694754, 29.693520, 21.809292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543231, 0.772225, 0.329498,
		-0.832305, -0.546880, -0.090500,
		0.110309, -0.323405, 0.939809,
		28.727846, 29.596498, 22.091234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.007730, 29.554022, 21.589808>,  <28.650629, 29.822882, 21.433369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.007730, 29.554022, 21.589808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.168974, 29.630775, 21.947731>,  <28.265720, 29.676828, 22.162485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.168974, 29.630775, 21.947731>,  <28.007730, 29.554022, 21.589808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.168974, 29.630775, 21.947731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774286, 0.592728, 0.221707,
		-0.487836, -0.782210, 0.387508,
		0.403109, 0.191886, 0.894809,
		28.289907, 29.688341, 22.216173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.544588, 29.444786, 22.064171>,  <28.007730, 29.554022, 21.589808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.544588, 29.444786, 22.064171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.776142, 29.694584, 22.273895>,  <27.915073, 29.844461, 22.399731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.776142, 29.694584, 22.273895>,  <27.544588, 29.444786, 22.064171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.776142, 29.694584, 22.273895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803775, 0.545256, 0.237995,
		-0.137258, -0.559201, 0.817591,
		0.578883, 0.624492, 0.524313,
		27.949806, 29.881931, 22.431189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.250143, 29.530403, 22.780491>,  <27.544588, 29.444786, 22.064171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.250143, 29.530403, 22.780491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.506027, 29.831936, 22.720478>,  <27.659557, 30.012856, 22.684469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.506027, 29.831936, 22.720478>,  <27.250143, 29.530403, 22.780491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.506027, 29.831936, 22.720478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710252, 0.654375, 0.259490,
		0.293789, -0.059438, 0.954021,
		0.639711, 0.753830, -0.150033,
		27.697941, 30.058084, 22.675468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.162531, 30.025143, 23.405470>,  <27.250143, 29.530403, 22.780491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.162531, 30.025143, 23.405470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.291859, 30.218681, 23.080173>,  <27.369455, 30.334805, 22.884996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.291859, 30.218681, 23.080173>,  <27.162531, 30.025143, 23.405470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.291859, 30.218681, 23.080173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778097, 0.625025, 0.062516,
		0.538542, 0.612566, 0.578562,
		0.323321, 0.483845, -0.813239,
		27.388855, 30.363834, 22.836203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.022816, 30.703512, 23.612984>,  <27.162531, 30.025143, 23.405470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.022816, 30.703512, 23.612984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.034866, 30.694435, 23.213268>,  <27.042097, 30.688990, 22.973438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.034866, 30.694435, 23.213268>,  <27.022816, 30.703512, 23.612984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.034866, 30.694435, 23.213268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766092, 0.641626, -0.037666,
		0.642024, 0.766682, 0.001945,
		0.030126, -0.022692, -0.999288,
		27.043903, 30.687628, 22.913483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.823860, 31.327759, 23.489290>,  <27.022816, 30.703512, 23.612984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.823860, 31.327759, 23.489290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.783081, 31.157379, 23.129696>,  <26.758614, 31.055151, 22.913940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.783081, 31.157379, 23.129696>,  <26.823860, 31.327759, 23.489290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.783081, 31.157379, 23.129696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808931, 0.561472, -0.174300,
		0.578998, 0.709446, -0.401805,
		-0.101946, -0.425951, -0.898984,
		26.752497, 31.029594, 22.860001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.935957, 31.926571, 23.003117>,  <26.823860, 31.327759, 23.489290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.935957, 31.926571, 23.003117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.747330, 31.634922, 22.804722>,  <26.634153, 31.459932, 22.685684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.747330, 31.634922, 22.804722>,  <26.935957, 31.926571, 23.003117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.747330, 31.634922, 22.804722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553456, 0.682598, -0.477227,
		0.686541, 0.049499, -0.725404,
		-0.471538, -0.729115, -0.496028,
		26.605858, 31.416185, 22.655926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.824247, 32.182945, 22.288099>,  <26.935957, 31.926571, 23.003117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.824247, 32.182945, 22.288099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.569107, 31.875267, 22.303562>,  <26.416023, 31.690660, 22.312840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.569107, 31.875267, 22.303562>,  <26.824247, 32.182945, 22.288099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.569107, 31.875267, 22.303562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635790, 0.497571, -0.590079,
		0.434647, -0.400961, -0.806419,
		-0.637850, -0.769190, 0.038659,
		26.377752, 31.644510, 22.315159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.576580, 32.073151, 21.626532>,  <26.824247, 32.182945, 22.288099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.576580, 32.073151, 21.626532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.297113, 31.925407, 21.871624>,  <26.129433, 31.836761, 22.018681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.297113, 31.925407, 21.871624>,  <26.576580, 32.073151, 21.626532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.297113, 31.925407, 21.871624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715341, 0.375355, -0.589403,
		-0.012293, -0.850109, -0.526463,
		-0.698667, -0.369355, 0.612732,
		26.087513, 31.814600, 22.055443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.050320, 31.659555, 21.127419>,  <26.576580, 32.073151, 21.626532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.050320, 31.659555, 21.127419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.854408, 31.733727, 21.468178>,  <25.736862, 31.778229, 21.672634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.854408, 31.733727, 21.468178>,  <26.050320, 31.659555, 21.127419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.854408, 31.733727, 21.468178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.868658, -0.020294, -0.494996,
		-0.074497, -0.982449, 0.171011,
		-0.489779, 0.185425, 0.851900,
		25.707474, 31.789354, 21.723747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.405727, 31.268108, 20.908186>,  <26.050320, 31.659555, 21.127419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.405727, 31.268108, 20.908186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.329033, 31.498123, 21.226322>,  <25.283016, 31.636133, 21.417204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.329033, 31.498123, 21.226322>,  <25.405727, 31.268108, 20.908186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.329033, 31.498123, 21.226322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.923704, 0.168132, -0.344241,
		-0.331675, -0.800663, 0.498929,
		-0.191735, 0.575039, 0.795341,
		25.271513, 31.670635, 21.464924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.703268, 31.049753, 21.204464>,  <25.405727, 31.268108, 20.908186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.703268, 31.049753, 21.204464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.792048, 31.424217, 21.313526>,  <24.845316, 31.648895, 21.378963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.792048, 31.424217, 21.313526>,  <24.703268, 31.049753, 21.204464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.792048, 31.424217, 21.313526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810315, 0.332623, -0.482443,
		-0.542336, -0.113859, 0.832411,
		0.221949, 0.936161, 0.272655,
		24.858633, 31.705065, 21.395323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.094259, 31.345352, 21.451302>,  <24.703268, 31.049753, 21.204464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.094259, 31.345352, 21.451302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.301935, 31.679096, 21.377243>,  <24.426540, 31.879343, 21.332808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.301935, 31.679096, 21.377243>,  <24.094259, 31.345352, 21.451302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.301935, 31.679096, 21.377243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789735, 0.385541, -0.477155,
		-0.326739, 0.393951, 0.859095,
		0.519192, 0.834363, -0.185146,
		24.457693, 31.929405, 21.321699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.638983, 31.841497, 21.622200>,  <24.094259, 31.345352, 21.451302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.638983, 31.841497, 21.622200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.911129, 32.013832, 21.385056>,  <24.074417, 32.117233, 21.242769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.911129, 32.013832, 21.385056>,  <23.638983, 31.841497, 21.622200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.911129, 32.013832, 21.385056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731889, 0.357513, -0.580106,
		-0.037976, 0.828591, 0.558564,
		0.680365, 0.430837, -0.592860,
		24.115238, 32.143082, 21.207197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.509624, 32.566093, 21.630850>,  <23.638983, 31.841497, 21.622200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.509624, 32.566093, 21.630850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.688898, 32.434910, 21.298206>,  <23.796463, 32.356201, 21.098619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.688898, 32.434910, 21.298206>,  <23.509624, 32.566093, 21.630850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.688898, 32.434910, 21.298206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812585, 0.238290, -0.531906,
		0.372608, 0.914144, -0.159698,
		0.448184, -0.327960, -0.831609,
		23.823353, 32.336521, 21.048723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.533689, 33.038490, 21.006386>,  <23.509624, 32.566093, 21.630850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.533689, 33.038490, 21.006386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.531225, 32.650513, 20.909084>,  <23.529747, 32.417725, 20.850704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.531225, 32.650513, 20.909084>,  <23.533689, 33.038490, 21.006386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.531225, 32.650513, 20.909084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681397, 0.182113, -0.708895,
		0.731888, 0.161384, -0.662039,
		-0.006161, -0.969943, -0.243253,
		23.529377, 32.359531, 20.836109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.589075, 33.540699, 21.616653>,  <23.533689, 33.038490, 21.006386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.589075, 33.540699, 21.616653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.354626, 33.819130, 21.450790>,  <23.213957, 33.986187, 21.351273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.354626, 33.819130, 21.450790>,  <23.589075, 33.540699, 21.616653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.354626, 33.819130, 21.450790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716754, -0.206823, 0.665949,
		0.377788, 0.687536, 0.620137,
		-0.586123, 0.696073, -0.414659,
		23.178789, 34.027950, 21.326393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.825594, 33.830231, 21.811556>,  <23.589075, 33.540699, 21.616653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.825594, 33.830231, 21.811556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.083082, 34.095718, 21.963924>,  <23.237576, 34.255013, 22.055346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.083082, 34.095718, 21.963924>,  <22.825594, 33.830231, 21.811556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.083082, 34.095718, 21.963924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738191, 0.669776, 0.080453,
		-0.201733, -0.332982, 0.921101,
		0.643721, 0.663719, 0.380920,
		23.276199, 34.294834, 22.078201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.817297, 33.993977, 22.600756>,  <22.825594, 33.830231, 21.811556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.817297, 33.993977, 22.600756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.891104, 34.274342, 22.325169>,  <22.935387, 34.442562, 22.159817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.891104, 34.274342, 22.325169>,  <22.817297, 33.993977, 22.600756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.891104, 34.274342, 22.325169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804136, 0.510710, 0.304205,
		0.565084, 0.497894, 0.657862,
		0.184515, 0.700912, -0.688968,
		22.946459, 34.484615, 22.118479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.220070, 34.472572, 22.282169>,  <22.817297, 33.993977, 22.600756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.220070, 34.472572, 22.282169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.493151, 34.764851, 22.281273>,  <22.657000, 34.940216, 22.280735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.493151, 34.764851, 22.281273>,  <22.220070, 34.472572, 22.282169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.493151, 34.764851, 22.281273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449050, 0.421971, 0.787588,
		0.576430, -0.536682, 0.616199,
		0.682702, 0.730693, -0.002240,
		22.697962, 34.984058, 22.280602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.810116, 35.064499, 21.967739>,  <22.220070, 34.472572, 22.282169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.810116, 35.064499, 21.967739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.456097, 35.224209, 21.872017>,  <21.243685, 35.320034, 21.814583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.456097, 35.224209, 21.872017>,  <21.810116, 35.064499, 21.967739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.456097, 35.224209, 21.872017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465188, 0.739813, -0.486083,
		-0.017040, -0.541530, -0.840509,
		-0.885048, 0.399278, -0.239307,
		21.190582, 35.343990, 21.800224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.150259, 35.411282, 21.462879>,  <21.810116, 35.064499, 21.967739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.150259, 35.411282, 21.462879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.822838, 35.640560, 21.477940>,  <21.626385, 35.778126, 21.486975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.822838, 35.640560, 21.477940>,  <22.150259, 35.411282, 21.462879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.822838, 35.640560, 21.477940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500692, 0.744069, -0.442344,
		-0.281564, -0.343231, -0.896055,
		-0.818553, 0.573196, 0.037650,
		21.577272, 35.812519, 21.489235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.003540, 35.647923, 20.789093>,  <22.150259, 35.411282, 21.462879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.003540, 35.647923, 20.789093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.832268, 35.896610, 21.051430>,  <21.729504, 36.045822, 21.208832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.832268, 35.896610, 21.051430>,  <22.003540, 35.647923, 20.789093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.832268, 35.896610, 21.051430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566628, 0.750058, -0.341096,
		-0.703984, 0.225565, -0.673445,
		-0.428183, 0.621719, 0.655840,
		21.703814, 36.083126, 21.248182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.877298, 36.222290, 20.408962>,  <22.003540, 35.647923, 20.789093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.877298, 36.222290, 20.408962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.895588, 36.347622, 20.788380>,  <21.906561, 36.422821, 21.016029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.895588, 36.347622, 20.788380>,  <21.877298, 36.222290, 20.408962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.895588, 36.347622, 20.788380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645095, 0.715739, -0.267527,
		-0.762733, 0.624132, -0.169402,
		0.045725, 0.313332, 0.948542,
		21.909306, 36.441620, 21.072943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.833704, 36.955513, 20.419420>,  <21.877298, 36.222290, 20.408962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.833704, 36.955513, 20.419420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.967289, 36.904129, 20.792938>,  <22.047440, 36.873299, 21.017048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.967289, 36.904129, 20.792938>,  <21.833704, 36.955513, 20.419420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.967289, 36.904129, 20.792938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706985, 0.689350, -0.158016,
		-0.623412, 0.712949, 0.321032,
		0.333961, -0.128456, 0.933793,
		22.067478, 36.865593, 21.073076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.881273, 37.547115, 20.703650>,  <21.833704, 36.955513, 20.419420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.881273, 37.547115, 20.703650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.129025, 37.318073, 20.918495>,  <22.277676, 37.180649, 21.047403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.129025, 37.318073, 20.918495>,  <21.881273, 37.547115, 20.703650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.129025, 37.318073, 20.918495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710695, 0.699631, -0.073678,
		-0.333595, 0.427360, 0.840284,
		0.619376, -0.572607, 0.537116,
		22.314837, 37.146290, 21.079630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.129936, 37.931915, 21.249586>,  <21.881273, 37.547115, 20.703650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.129936, 37.931915, 21.249586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.414911, 37.651848, 21.230839>,  <22.585897, 37.483807, 21.219591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.414911, 37.651848, 21.230839>,  <22.129936, 37.931915, 21.249586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.414911, 37.651848, 21.230839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700659, 0.713454, -0.007686,
		0.038820, -0.027364, 0.998872,
		0.712439, -0.700167, -0.046869,
		22.628643, 37.441799, 21.216778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.717010, 38.308712, 21.476444>,  <22.129936, 37.931915, 21.249586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.717010, 38.308712, 21.476444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.889992, 37.961353, 21.379387>,  <22.993780, 37.752937, 21.321152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.889992, 37.961353, 21.379387>,  <22.717010, 38.308712, 21.476444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.889992, 37.961353, 21.379387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855320, 0.480254, -0.194380,
		0.285330, -0.123479, 0.950442,
		0.432452, -0.868394, -0.242645,
		23.019728, 37.700836, 21.306593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.341366, 38.347092, 21.900043>,  <22.717010, 38.308712, 21.476444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.341366, 38.347092, 21.900043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.335579, 38.113205, 21.575600>,  <23.332108, 37.972874, 21.380934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.335579, 38.113205, 21.575600>,  <23.341366, 38.347092, 21.900043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.335579, 38.113205, 21.575600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803926, 0.475547, -0.357154,
		0.594554, -0.657236, 0.463191,
		-0.014465, -0.584719, -0.811107,
		23.331240, 37.937790, 21.332268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.032671, 38.185623, 21.787523>,  <23.341366, 38.347092, 21.900043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.032671, 38.185623, 21.787523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.871683, 38.122337, 21.426861>,  <23.775091, 38.084366, 21.210463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.871683, 38.122337, 21.426861>,  <24.032671, 38.185623, 21.787523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.871683, 38.122337, 21.426861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787517, 0.442333, -0.429137,
		0.466731, -0.882784, -0.053421,
		-0.402466, -0.158222, -0.901658,
		23.750942, 38.074871, 21.156363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.621153, 38.036339, 21.366859>,  <24.032671, 38.185623, 21.787523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.621153, 38.036339, 21.366859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.335060, 38.127914, 21.102730>,  <24.163404, 38.182861, 20.944252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.335060, 38.127914, 21.102730>,  <24.621153, 38.036339, 21.366859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.335060, 38.127914, 21.102730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698062, 0.279885, -0.659070,
		0.033924, -0.932335, -0.360000,
		-0.715233, 0.228944, -0.660323,
		24.120491, 38.196598, 20.904633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.882954, 37.902164, 20.693672>,  <24.621153, 38.036339, 21.366859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.882954, 37.902164, 20.693672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.578398, 38.154625, 20.634426>,  <24.395664, 38.306099, 20.598879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.578398, 38.154625, 20.634426>,  <24.882954, 37.902164, 20.693672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.578398, 38.154625, 20.634426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517081, 0.453412, -0.725979,
		-0.391044, -0.629340, -0.671578,
		-0.761389, 0.631149, -0.148116,
		24.349981, 38.343971, 20.589991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.727406, 37.858971, 19.914263>,  <24.882954, 37.902164, 20.693672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.727406, 37.858971, 19.914263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.632904, 38.212074, 20.076702>,  <24.576202, 38.423935, 20.174166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.632904, 38.212074, 20.076702>,  <24.727406, 37.858971, 19.914263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.632904, 38.212074, 20.076702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688703, 0.446951, -0.570897,
		-0.685472, 0.144806, -0.713554,
		-0.236255, 0.882761, 0.406100,
		24.562027, 38.476902, 20.198532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.794737, 38.368290, 19.301889>,  <24.727406, 37.858971, 19.914263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.794737, 38.368290, 19.301889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.759800, 38.595680, 19.629108>,  <24.738838, 38.732117, 19.825439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.759800, 38.595680, 19.629108>,  <24.794737, 38.368290, 19.301889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.759800, 38.595680, 19.629108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606686, 0.681687, -0.408944,
		-0.790129, 0.460582, -0.404426,
		-0.087340, 0.568478, 0.818049,
		24.733599, 38.766224, 19.874523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.748343, 39.068523, 19.028273>,  <24.794737, 38.368290, 19.301889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.748343, 39.068523, 19.028273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.829784, 39.137558, 19.413761>,  <24.878649, 39.178978, 19.645054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.829784, 39.137558, 19.413761>,  <24.748343, 39.068523, 19.028273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.829784, 39.137558, 19.413761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536944, 0.803418, -0.257315,
		-0.818680, 0.569855, 0.070912,
		0.203604, 0.172583, 0.963722,
		24.890865, 39.189331, 19.702877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.704666, 39.845806, 18.899893>,  <24.748343, 39.068523, 19.028273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.704666, 39.845806, 18.899893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.876060, 39.725582, 19.240730>,  <24.978897, 39.653450, 19.445232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.876060, 39.725582, 19.240730>,  <24.704666, 39.845806, 18.899893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.876060, 39.725582, 19.240730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667052, 0.741333, -0.073947,
		-0.609460, 0.600076, 0.518139,
		0.428487, -0.300558, 0.852094,
		25.004606, 39.635414, 19.496359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.669086, 40.391270, 19.491634>,  <24.704666, 39.845806, 18.899893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.669086, 40.391270, 19.491634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.994226, 40.162552, 19.536034>,  <25.189310, 40.025322, 19.562674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.994226, 40.162552, 19.536034>,  <24.669086, 40.391270, 19.491634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.994226, 40.162552, 19.536034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575099, 0.818079, 0.002766,
		-0.092387, 0.061587, 0.993817,
		0.812850, -0.571798, 0.110999,
		25.238081, 39.991013, 19.569334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.085106, 40.783726, 20.054338>,  <24.669086, 40.391270, 19.491634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.085106, 40.783726, 20.054338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.324635, 40.514050, 19.881420>,  <25.468351, 40.352245, 19.777668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.324635, 40.514050, 19.881420>,  <25.085106, 40.783726, 20.054338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.324635, 40.514050, 19.881420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750854, 0.660390, 0.010179,
		0.278622, -0.330687, 0.901674,
		0.598822, -0.674190, -0.432296,
		25.504282, 40.311794, 19.751732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.767012, 40.973618, 20.255272>,  <25.085106, 40.783726, 20.054338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.767012, 40.973618, 20.255272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.842205, 40.706913, 19.966805>,  <25.887321, 40.546890, 19.793724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.842205, 40.706913, 19.966805>,  <25.767012, 40.973618, 20.255272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.842205, 40.706913, 19.966805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883863, 0.435041, -0.171829,
		0.428308, -0.605114, 0.671111,
		0.187985, -0.666766, -0.721169,
		25.898600, 40.506882, 19.750454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.425121, 40.771851, 20.326750>,  <25.767012, 40.973618, 20.255272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.425121, 40.771851, 20.326750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.346802, 40.687817, 19.943600>,  <26.299810, 40.637394, 19.713709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.346802, 40.687817, 19.943600>,  <26.425121, 40.771851, 20.326750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.346802, 40.687817, 19.943600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848439, 0.453516, -0.272898,
		0.491745, -0.866133, 0.089448,
		-0.195800, -0.210088, -0.957875,
		26.288061, 40.624790, 19.656237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.084822, 40.433178, 20.037533>,  <26.425121, 40.771851, 20.326750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.084822, 40.433178, 20.037533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.861279, 40.594719, 19.747822>,  <26.727152, 40.691643, 19.573996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.861279, 40.594719, 19.747822>,  <27.084822, 40.433178, 20.037533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.861279, 40.594719, 19.747822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738807, 0.639141, -0.213691,
		0.376617, -0.654526, -0.655558,
		-0.558860, 0.403851, -0.724279,
		26.693621, 40.715874, 19.530539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.473259, 40.442661, 19.392157>,  <27.084822, 40.433178, 20.037533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.473259, 40.442661, 19.392157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.186003, 40.718315, 19.430870>,  <27.013649, 40.883709, 19.454098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.186003, 40.718315, 19.430870>,  <27.473259, 40.442661, 19.392157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.186003, 40.718315, 19.430870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669261, 0.722051, -0.175305,
		-0.190692, -0.061121, -0.979745,
		-0.718141, 0.689134, 0.096783,
		26.970560, 40.925056, 19.459906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.865259, 41.086231, 19.386194>,  <27.473259, 40.442661, 19.392157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.865259, 41.086231, 19.386194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.505089, 41.257820, 19.357311>,  <27.288986, 41.360775, 19.339981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.505089, 41.257820, 19.357311>,  <27.865259, 41.086231, 19.386194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.505089, 41.257820, 19.357311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434988, 0.889528, -0.139732,
		0.004287, -0.157227, -0.987553,
		-0.900426, 0.428975, -0.072205,
		27.234961, 41.386513, 19.335649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.088570, 41.711811, 19.042570>,  <27.865259, 41.086231, 19.386194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.088570, 41.711811, 19.042570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.725801, 41.746620, 19.207458>,  <27.508141, 41.767506, 19.306391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.725801, 41.746620, 19.207458>,  <28.088570, 41.711811, 19.042570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.725801, 41.746620, 19.207458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124597, 0.990069, 0.065104,
		-0.402459, 0.110406, -0.908756,
		-0.906919, 0.087027, 0.412219,
		27.453726, 41.772728, 19.331123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.637947, 41.417610, 18.385233>,  <28.088570, 41.711811, 19.042570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.637947, 41.417610, 18.385233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.035372, 41.454861, 18.359436>,  <28.273827, 41.477211, 18.343958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.035372, 41.454861, 18.359436>,  <27.637947, 41.417610, 18.385233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.035372, 41.454861, 18.359436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100529, -0.462480, 0.880912,
		0.052208, -0.881726, -0.468865,
		0.993563, 0.093125, -0.064494,
		28.333441, 41.482800, 18.340088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.920238, 41.825668, 18.448122>,  <27.637947, 41.417610, 18.385233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.920238, 41.825668, 18.448122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.000290, 41.468178, 18.287518>,  <27.048321, 41.253685, 18.191154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.000290, 41.468178, 18.287518>,  <26.920238, 41.825668, 18.448122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.000290, 41.468178, 18.287518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.940806, -0.060873, -0.333435,
		0.273557, 0.444472, -0.853001,
		0.200128, -0.893722, -0.401510,
		27.060328, 41.200062, 18.167065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.777548, 41.815025, 17.683069>,  <26.920238, 41.825668, 18.448122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.777548, 41.815025, 17.683069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.709469, 41.483440, 17.896179>,  <26.668621, 41.284489, 18.024046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.709469, 41.483440, 17.896179>,  <26.777548, 41.815025, 17.683069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.709469, 41.483440, 17.896179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.968756, 0.041778, -0.244473,
		0.180402, -0.557738, -0.810175,
		-0.170199, -0.828965, 0.532775,
		26.658409, 41.234753, 18.056011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.626732, 41.182903, 17.264734>,  <26.777548, 41.815025, 17.683069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.626732, 41.182903, 17.264734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.456623, 41.126728, 17.622375>,  <26.354559, 41.093021, 17.836960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.456623, 41.126728, 17.622375>,  <26.626732, 41.182903, 17.264734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.456623, 41.126728, 17.622375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898690, -0.051532, -0.435547,
		0.107244, -0.988747, -0.104298,
		-0.425271, -0.140441, 0.894104,
		26.329042, 41.084595, 17.890606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.132708, 41.662445, 17.284664>,  <26.626732, 41.182903, 17.264734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.132708, 41.662445, 17.284664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.994686, 42.010956, 17.145058>,  <25.911873, 42.220062, 17.061295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.994686, 42.010956, 17.145058>,  <26.132708, 41.662445, 17.284664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.994686, 42.010956, 17.145058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.938522, -0.316069, 0.138843,
		0.010658, 0.375467, 0.926775,
		-0.345055, 0.871278, -0.349015,
		25.891171, 42.272339, 17.040354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.695200, 41.981133, 17.752222>,  <26.132708, 41.662445, 17.284664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.695200, 41.981133, 17.752222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.594101, 42.089634, 17.380730>,  <25.533442, 42.154736, 17.157835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.594101, 42.089634, 17.380730>,  <25.695200, 41.981133, 17.752222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.594101, 42.089634, 17.380730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.937937, -0.304289, 0.166378,
		-0.237471, 0.913142, 0.331330,
		-0.252747, 0.271257, -0.928730,
		25.518276, 42.171009, 17.102110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.968273, 42.326145, 17.825090>,  <25.695200, 41.981133, 17.752222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.968273, 42.326145, 17.825090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.058716, 42.111988, 17.499580>,  <25.112982, 41.983494, 17.304274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.058716, 42.111988, 17.499580>,  <24.968273, 42.326145, 17.825090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.058716, 42.111988, 17.499580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.906195, -0.422067, 0.025897,
		-0.357333, 0.731584, -0.580602,
		0.226107, -0.535392, -0.813776,
		25.126549, 41.951370, 17.255447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.430517, 42.393135, 17.458464>,  <24.968273, 42.326145, 17.825090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.430517, 42.393135, 17.458464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.611284, 42.049770, 17.361389>,  <24.719744, 41.843750, 17.303144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.611284, 42.049770, 17.361389>,  <24.430517, 42.393135, 17.458464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.611284, 42.049770, 17.361389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886462, -0.462573, -0.014535,
		-0.099784, 0.221702, -0.969995,
		0.451916, -0.858414, -0.242688,
		24.746859, 41.792248, 17.288582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.147270, 42.093525, 16.767927>,  <24.430517, 42.393135, 17.458464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.147270, 42.093525, 16.767927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.282879, 41.813095, 17.018864>,  <24.364244, 41.644836, 17.169426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.282879, 41.813095, 17.018864>,  <24.147270, 42.093525, 16.767927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.282879, 41.813095, 17.018864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834992, -0.531444, -0.142675,
		0.433422, -0.475453, -0.765565,
		0.339020, -0.701079, 0.627339,
		24.384584, 41.602772, 17.207066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.963642, 41.496368, 16.501547>,  <24.147270, 42.093525, 16.767927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.963642, 41.496368, 16.501547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.012453, 41.377342, 16.880295>,  <24.041739, 41.305927, 17.107544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.012453, 41.377342, 16.880295>,  <23.963642, 41.496368, 16.501547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.012453, 41.377342, 16.880295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.881684, -0.470595, -0.034267,
		0.455789, -0.830658, -0.319786,
		0.122025, -0.297569, 0.946870,
		24.049061, 41.288071, 17.164356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.807798, 40.688007, 16.535980>,  <23.963642, 41.496368, 16.501547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.807798, 40.688007, 16.535980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.789686, 40.832840, 16.908398>,  <23.778818, 40.919739, 17.131849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.789686, 40.832840, 16.908398>,  <23.807798, 40.688007, 16.535980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.789686, 40.832840, 16.908398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849615, -0.504187, 0.154757,
		0.525456, -0.784022, 0.330462,
		-0.045282, 0.362083, 0.931045,
		23.776102, 40.941463, 17.187712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.614777, 40.027637, 16.925179>,  <23.807798, 40.688007, 16.535980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.614777, 40.027637, 16.925179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.545485, 40.329102, 17.178791>,  <23.503910, 40.509979, 17.330957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.545485, 40.329102, 17.178791>,  <23.614777, 40.027637, 16.925179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.545485, 40.329102, 17.178791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663188, -0.565199, 0.490644,
		0.728130, -0.335487, 0.597725,
		-0.173229, 0.753657, 0.634029,
		23.493515, 40.555199, 17.368999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.649132, 39.791088, 17.616119>,  <23.614777, 40.027637, 16.925179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.649132, 39.791088, 17.616119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.403175, 40.106110, 17.599781>,  <23.255602, 40.295124, 17.589977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.403175, 40.106110, 17.599781>,  <23.649132, 39.791088, 17.616119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.403175, 40.106110, 17.599781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699752, -0.520986, 0.488796,
		0.363673, 0.329138, 0.871442,
		-0.614889, 0.787555, -0.040846,
		23.218708, 40.342377, 17.587526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.396378, 39.967422, 18.313055>,  <23.649132, 39.791088, 17.616119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.396378, 39.967422, 18.313055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.110359, 40.153286, 18.104134>,  <22.938749, 40.264805, 17.978781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.110359, 40.153286, 18.104134>,  <23.396378, 39.967422, 18.313055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.110359, 40.153286, 18.104134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685432, -0.319090, 0.654495,
		0.137455, 0.825998, 0.546656,
		-0.715045, 0.464659, -0.522306,
		22.895845, 40.292683, 17.947441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.870796, 40.154476, 18.807852>,  <23.396378, 39.967422, 18.313055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.870796, 40.154476, 18.807852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.645300, 40.238529, 18.488342>,  <22.510002, 40.288960, 18.296637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.645300, 40.238529, 18.488342>,  <22.870796, 40.154476, 18.807852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.645300, 40.238529, 18.488342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824580, -0.198904, 0.529627,
		-0.047586, 0.957226, 0.285402,
		-0.563740, 0.210134, -0.798775,
		22.476177, 40.301571, 18.248711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.319712, 40.629978, 18.927050>,  <22.870796, 40.154476, 18.807852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.319712, 40.629978, 18.927050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.195984, 40.431667, 18.602451>,  <22.121748, 40.312679, 18.407692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.195984, 40.431667, 18.602451>,  <22.319712, 40.629978, 18.927050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.195984, 40.431667, 18.602451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851645, -0.235260, 0.468353,
		-0.423112, 0.835976, -0.349457,
		-0.309318, -0.495779, -0.811496,
		22.103188, 40.282932, 18.359003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.685997, 40.711536, 19.022198>,  <22.319712, 40.629978, 18.927050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.685997, 40.711536, 19.022198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.717894, 40.407150, 18.764648>,  <21.737032, 40.224518, 18.610119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.717894, 40.407150, 18.764648>,  <21.685997, 40.711536, 19.022198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.717894, 40.407150, 18.764648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664059, -0.522282, 0.535021,
		-0.743416, 0.384905, -0.546974,
		0.079743, -0.760967, -0.643872,
		21.741816, 40.178860, 18.571487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.985212, 40.492832, 18.915724>,  <21.685997, 40.711536, 19.022198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.985212, 40.492832, 18.915724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.215389, 40.177956, 18.827000>,  <21.353495, 39.989029, 18.773766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.215389, 40.177956, 18.827000>,  <20.985212, 40.492832, 18.915724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.215389, 40.177956, 18.827000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563636, -0.578237, 0.589879,
		-0.592611, -0.214412, -0.776427,
		0.575436, -0.787191, -0.221819,
		21.388021, 39.941799, 18.760456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.640917, 39.918751, 18.570007>,  <20.985212, 40.492832, 18.915724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.640917, 39.918751, 18.570007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.950274, 39.747002, 18.756557>,  <21.135887, 39.643951, 18.868486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.950274, 39.747002, 18.756557>,  <20.640917, 39.918751, 18.570007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.950274, 39.747002, 18.756557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627207, -0.625117, 0.464587,
		0.092059, -0.651821, -0.752764,
		0.773393, -0.429369, 0.466374,
		21.182291, 39.618191, 18.896469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.424122, 39.193485, 18.579952>,  <20.640917, 39.918751, 18.570007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.424122, 39.193485, 18.579952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.727499, 39.210419, 18.840099>,  <20.909525, 39.220577, 18.996187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.727499, 39.210419, 18.840099>,  <20.424122, 39.193485, 18.579952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.727499, 39.210419, 18.840099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440449, -0.702236, 0.559347,
		0.480387, -0.710685, -0.513960,
		0.758441, 0.042330, 0.650366,
		20.955030, 39.223118, 19.035210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.648809, 38.536243, 18.679873>,  <20.424122, 39.193485, 18.579952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.648809, 38.536243, 18.679873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.760092, 38.729240, 19.012089>,  <20.826860, 38.845039, 19.211418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.760092, 38.729240, 19.012089>,  <20.648809, 38.536243, 18.679873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.760092, 38.729240, 19.012089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644912, -0.546963, 0.533778,
		0.711821, -0.684127, 0.158998,
		0.278206, 0.482495, 0.830542,
		20.843554, 38.873989, 19.261251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.703554, 38.010872, 19.238377>,  <20.648809, 38.536243, 18.679873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.703554, 38.010872, 19.238377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.737253, 38.344082, 19.457092>,  <20.757473, 38.544006, 19.588322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.737253, 38.344082, 19.457092>,  <20.703554, 38.010872, 19.238377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.737253, 38.344082, 19.457092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364168, -0.485040, 0.795058,
		0.927515, -0.266106, 0.262496,
		0.084248, 0.833021, 0.546789,
		20.762527, 38.593987, 19.621130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.085218, 37.810280, 19.898067>,  <20.703554, 38.010872, 19.238377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.085218, 37.810280, 19.898067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.888510, 38.156361, 19.937214>,  <20.770485, 38.364010, 19.960701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.888510, 38.156361, 19.937214>,  <21.085218, 37.810280, 19.898067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.888510, 38.156361, 19.937214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488432, -0.367159, 0.791599,
		0.720828, 0.341486, 0.603153,
		-0.491773, 0.865206, 0.097866,
		20.740978, 38.415924, 19.966574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.175346, 37.931179, 20.606222>,  <21.085218, 37.810280, 19.898067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.175346, 37.931179, 20.606222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.835876, 38.115913, 20.503101>,  <20.632195, 38.226753, 20.441229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.835876, 38.115913, 20.503101>,  <21.175346, 37.931179, 20.606222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.835876, 38.115913, 20.503101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430423, -0.319775, 0.844085,
		0.307390, 0.827316, 0.470169,
		-0.848674, 0.461835, -0.257800,
		20.581274, 38.254463, 20.425762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.933500, 38.218861, 21.262741>,  <21.175346, 37.931179, 20.606222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.933500, 38.218861, 21.262741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.623009, 38.243401, 21.011757>,  <20.436714, 38.258125, 20.861166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.623009, 38.243401, 21.011757>,  <20.933500, 38.218861, 21.262741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.623009, 38.243401, 21.011757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628067, -0.161755, 0.761162,
		-0.054801, 0.984922, 0.164088,
		-0.776227, 0.061346, -0.627461,
		20.390141, 38.261803, 20.823519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.548834, 38.632462, 21.530762>,  <20.933500, 38.218861, 21.262741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.548834, 38.632462, 21.530762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.305231, 38.413422, 21.301243>,  <20.159069, 38.281998, 21.163530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.305231, 38.413422, 21.301243>,  <20.548834, 38.632462, 21.530762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.305231, 38.413422, 21.301243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560160, -0.215233, 0.799935,
		-0.561545, 0.808584, -0.175666,
		-0.609006, -0.547600, -0.573799,
		20.122530, 38.249142, 21.129103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.872963, 38.790794, 21.596724>,  <20.548834, 38.632462, 21.530762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.872963, 38.790794, 21.596724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.840332, 38.423130, 21.442589>,  <19.820753, 38.202530, 21.350107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.840332, 38.423130, 21.442589>,  <19.872963, 38.790794, 21.596724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.840332, 38.423130, 21.442589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769290, -0.187741, 0.610693,
		-0.633670, 0.346255, -0.691787,
		-0.081578, -0.919163, -0.385337,
		19.815859, 38.147381, 21.326988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.118216, 38.580975, 21.525274>,  <19.872963, 38.790794, 21.596724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.118216, 38.580975, 21.525274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.326870, 38.239918, 21.513252>,  <19.452063, 38.035286, 21.506039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.326870, 38.239918, 21.513252>,  <19.118216, 38.580975, 21.525274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.326870, 38.239918, 21.513252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634453, -0.411225, 0.654494,
		-0.570407, -0.322338, -0.755469,
		0.521636, -0.852638, -0.030058,
		19.483360, 37.984127, 21.504234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.572241, 38.232014, 21.493727>,  <19.118216, 38.580975, 21.525274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.572241, 38.232014, 21.493727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.856039, 37.965385, 21.585209>,  <19.026318, 37.805408, 21.640099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.856039, 37.965385, 21.585209>,  <18.572241, 38.232014, 21.493727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.856039, 37.965385, 21.585209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614326, -0.426009, 0.664169,
		-0.345280, -0.611726, -0.711739,
		0.709496, -0.666565, 0.228707,
		19.068888, 37.765415, 21.653820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.343952, 37.598942, 21.265348>,  <18.572241, 38.232014, 21.493727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.343952, 37.598942, 21.265348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.604790, 37.532505, 21.561237>,  <18.761292, 37.492641, 21.738771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.604790, 37.532505, 21.561237>,  <18.343952, 37.598942, 21.265348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.604790, 37.532505, 21.561237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755753, -0.219777, 0.616876,
		0.060116, -0.961307, -0.268840,
		0.652092, -0.166093, 0.739723,
		18.800417, 37.482677, 21.783154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.123446, 36.993347, 21.649454>,  <18.343952, 37.598942, 21.265348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.123446, 36.993347, 21.649454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.330404, 37.223640, 21.902699>,  <18.454580, 37.361816, 22.054646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.330404, 37.223640, 21.902699>,  <18.123446, 36.993347, 21.649454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.330404, 37.223640, 21.902699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775683, 0.003075, 0.631115,
		0.361406, -0.817633, 0.448176,
		0.517399, 0.575731, 0.633113,
		18.485624, 37.396358, 22.092632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.067915, 36.683849, 22.232351>,  <18.123446, 36.993347, 21.649454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.067915, 36.683849, 22.232351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.094986, 37.082294, 22.254921>,  <18.111229, 37.321362, 22.268463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.094986, 37.082294, 22.254921>,  <18.067915, 36.683849, 22.232351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.094986, 37.082294, 22.254921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802832, 0.020795, 0.595842,
		0.592351, -0.085624, 0.801117,
		0.067677, 0.996110, 0.056424,
		18.115290, 37.381126, 22.271849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.206554, 36.911026, 22.956692>,  <18.067915, 36.683849, 22.232351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.206554, 36.911026, 22.956692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.014015, 37.192162, 22.747189>,  <17.898491, 37.360844, 22.621487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.014015, 37.192162, 22.747189>,  <18.206554, 36.911026, 22.956692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.014015, 37.192162, 22.747189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713846, 0.032424, 0.699552,
		0.508653, 0.710611, 0.486111,
		-0.481347, 0.702838, -0.523760,
		17.869612, 37.403011, 22.590061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.074711, 37.637997, 23.327787>,  <18.206554, 36.911026, 22.956692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.074711, 37.637997, 23.327787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.797346, 37.553364, 23.052277>,  <17.630928, 37.502586, 22.886971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.797346, 37.553364, 23.052277>,  <18.074711, 37.637997, 23.327787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.797346, 37.553364, 23.052277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720497, 0.214191, 0.659550,
		0.007984, 0.953602, -0.300964,
		-0.693412, -0.211578, -0.688778,
		17.589323, 37.489891, 22.845644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<31.463194, 27.066004, 16.710405> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.650770, 27.181404, 17.044319>,  <31.763315, 27.250645, 17.244667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.650770, 27.181404, 17.044319>,  <31.463194, 27.066004, 16.710405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.650770, 27.181404, 17.044319> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346441, 0.929487, -0.126620,
		-0.812450, -0.229826, 0.535822,
		0.468939, 0.288503, 0.834783,
		31.791452, 27.267956, 17.294754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.052280, 27.570019, 17.100861>,  <31.463194, 27.066004, 16.710405>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.052280, 27.570019, 17.100861> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.409048, 27.637859, 17.268536>,  <31.623108, 27.678564, 17.369141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.409048, 27.637859, 17.268536>,  <31.052280, 27.570019, 17.100861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.409048, 27.637859, 17.268536> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236430, 0.965105, 0.112577,
		-0.385465, -0.199518, 0.900894,
		0.891918, 0.169603, 0.419186,
		31.676624, 27.688740, 17.394291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.887625, 27.964155, 17.731857>,  <31.052280, 27.570019, 17.100861>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.887625, 27.964155, 17.731857> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.273382, 28.054173, 17.676285>,  <31.504837, 28.108183, 17.642941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.273382, 28.054173, 17.676285>,  <30.887625, 27.964155, 17.731857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.273382, 28.054173, 17.676285> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185102, 0.949545, 0.253183,
		0.188899, -0.218451, 0.957390,
		0.964393, 0.225041, -0.138933,
		31.562700, 28.121685, 17.634605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.146713, 28.352064, 18.333014>,  <30.887625, 27.964155, 17.731857>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.146713, 28.352064, 18.333014> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.396559, 28.431133, 18.030811>,  <31.546465, 28.478575, 17.849491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.396559, 28.431133, 18.030811>,  <31.146713, 28.352064, 18.333014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.396559, 28.431133, 18.030811> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039721, 0.974224, 0.222060,
		0.779925, -0.108692, 0.616363,
		0.624612, 0.197672, -0.755504,
		31.583942, 28.490435, 17.804161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.661390, 28.853481, 18.582550>,  <31.146713, 28.352064, 18.333014>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.661390, 28.853481, 18.582550> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.659876, 28.895821, 18.184799>,  <31.658966, 28.921225, 17.946150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.659876, 28.895821, 18.184799>,  <31.661390, 28.853481, 18.582550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.659876, 28.895821, 18.184799> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018776, 0.994199, 0.105902,
		0.999817, 0.019071, -0.001778,
		-0.003788, 0.105849, -0.994375,
		31.658739, 28.927576, 17.886486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.207596, 29.393318, 18.464390>,  <31.661390, 28.853481, 18.582550>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.207596, 29.393318, 18.464390> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.949572, 29.380531, 18.159004>,  <31.794758, 29.372860, 17.975773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.949572, 29.380531, 18.159004>,  <32.207596, 29.393318, 18.464390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.949572, 29.380531, 18.159004> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096431, 0.994542, 0.039834,
		0.758023, 0.099317, -0.644622,
		-0.645060, -0.031966, -0.763463,
		31.756054, 29.370941, 17.929966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.090145, 29.990509, 18.403008>,  <32.207596, 29.393318, 18.464390>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.090145, 29.990509, 18.403008> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.814295, 29.876377, 18.136772>,  <31.648785, 29.807898, 17.977032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.814295, 29.876377, 18.136772>,  <32.090145, 29.990509, 18.403008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.814295, 29.876377, 18.136772> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307511, 0.947507, -0.087568,
		0.655633, 0.144287, -0.741165,
		-0.689624, -0.285329, -0.665587,
		31.607409, 29.790779, 17.937096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.178192, 30.426577, 17.847521>,  <32.090145, 29.990509, 18.403008>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.178192, 30.426577, 17.847521> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.796606, 30.307880, 17.864971>,  <31.567656, 30.236664, 17.875441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.796606, 30.307880, 17.864971>,  <32.178192, 30.426577, 17.847521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.796606, 30.307880, 17.864971> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289773, 0.949389, 0.121215,
		-0.077387, 0.102993, -0.991667,
		-0.953962, -0.296739, 0.043625,
		31.510418, 30.218859, 17.878059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.743158, 30.907454, 17.470844>,  <32.178192, 30.426577, 17.847521>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.743158, 30.907454, 17.470844> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.475935, 30.709274, 17.692917>,  <31.315601, 30.590366, 17.826160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.475935, 30.709274, 17.692917>,  <31.743158, 30.907454, 17.470844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.475935, 30.709274, 17.692917> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547203, 0.832708, 0.084656,
		-0.504249, -0.247243, -0.827408,
		-0.668058, -0.495448, 0.555184,
		31.275517, 30.560640, 17.859472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.149778, 31.082500, 17.189886>,  <31.743158, 30.907454, 17.470844>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.149778, 31.082500, 17.189886> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.020857, 30.963787, 17.549450>,  <30.943504, 30.892559, 17.765188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.020857, 30.963787, 17.549450>,  <31.149778, 31.082500, 17.189886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.020857, 30.963787, 17.549450> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511682, 0.853529, 0.098337,
		-0.796431, -0.428262, -0.426952,
		-0.322302, -0.296782, 0.898911,
		30.924166, 30.874752, 17.819122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.343390, 30.988037, 17.241777>,  <31.149778, 31.082500, 17.189886>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.343390, 30.988037, 17.241777> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.427065, 31.043980, 17.628906>,  <30.477270, 31.077545, 17.861183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.427065, 31.043980, 17.628906>,  <30.343390, 30.988037, 17.241777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.427065, 31.043980, 17.628906> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643030, 0.765315, 0.028394,
		-0.736718, -0.628279, 0.250024,
		0.209187, 0.139854, 0.967823,
		30.489820, 31.085936, 17.919252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.741972, 30.992455, 17.564119>,  <30.343390, 30.988037, 17.241777>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.741972, 30.992455, 17.564119> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.981693, 31.171612, 17.829517>,  <30.125526, 31.279106, 17.988756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.981693, 31.171612, 17.829517>,  <29.741972, 30.992455, 17.564119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.981693, 31.171612, 17.829517> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690912, 0.708017, 0.146124,
		-0.404319, -0.545990, 0.733772,
		0.599305, 0.447892, 0.663496,
		30.161486, 31.305979, 18.028566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.430149, 31.032845, 18.260006>,  <29.741972, 30.992455, 17.564119>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.430149, 31.032845, 18.260006> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.700752, 31.324677, 18.219913>,  <29.863113, 31.499777, 18.195858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.700752, 31.324677, 18.219913>,  <29.430149, 31.032845, 18.260006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.700752, 31.324677, 18.219913> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704543, 0.680809, 0.200294,
		0.214370, -0.064883, 0.974595,
		0.676509, 0.729582, -0.100233,
		29.903706, 31.543550, 18.189844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.258642, 31.444294, 18.802515>,  <29.430149, 31.032845, 18.260006>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.258642, 31.444294, 18.802515> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.486727, 31.685379, 18.579231>,  <29.623577, 31.830030, 18.445261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.486727, 31.685379, 18.579231>,  <29.258642, 31.444294, 18.802515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.486727, 31.685379, 18.579231> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560733, 0.782143, 0.271716,
		0.600365, 0.158071, 0.783948,
		0.570210, 0.602715, -0.558207,
		29.657789, 31.866194, 18.411768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.278324, 31.961823, 19.232342>,  <29.258642, 31.444294, 18.802515>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.278324, 31.961823, 19.232342> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.356644, 32.063168, 18.853401>,  <29.403635, 32.123974, 18.626038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.356644, 32.063168, 18.853401>,  <29.278324, 31.961823, 19.232342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.356644, 32.063168, 18.853401> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515398, 0.848452, 0.120390,
		0.834282, 0.464690, 0.296709,
		0.195799, 0.253363, -0.947349,
		29.415384, 32.139175, 18.569197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.436110, 32.673779, 19.187157>,  <29.278324, 31.961823, 19.232342>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.436110, 32.673779, 19.187157> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.348204, 32.610664, 18.802074>,  <29.295460, 32.572796, 18.571024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.348204, 32.610664, 18.802074>,  <29.436110, 32.673779, 19.187157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.348204, 32.610664, 18.802074> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636055, 0.771416, 0.018763,
		0.739687, 0.616458, -0.269892,
		-0.219766, -0.157788, -0.962708,
		29.282274, 32.563328, 18.513262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.493635, 33.312836, 18.856676>,  <29.436110, 32.673779, 19.187157>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.493635, 33.312836, 18.856676> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.276020, 33.087906, 18.607578>,  <29.145451, 32.952950, 18.458118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.276020, 33.087906, 18.607578>,  <29.493635, 33.312836, 18.856676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.276020, 33.087906, 18.607578> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745728, 0.664243, 0.051682,
		0.384593, 0.492516, -0.780715,
		-0.544038, -0.562325, -0.622746,
		29.112808, 32.919209, 18.420753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.170649, 33.783131, 18.528919>,  <29.493635, 33.312836, 18.856676>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.170649, 33.783131, 18.528919> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.937263, 33.467918, 18.450348>,  <28.797232, 33.278793, 18.403206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.937263, 33.467918, 18.450348>,  <29.170649, 33.783131, 18.528919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.937263, 33.467918, 18.450348> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811400, 0.575943, 0.099595,
		0.034648, 0.217492, -0.975447,
		-0.583463, -0.788027, -0.196428,
		28.762224, 33.231510, 18.391420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.773996, 33.982014, 18.007219>,  <29.170649, 33.783131, 18.528919>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.773996, 33.982014, 18.007219> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.589323, 33.662468, 18.161446>,  <28.478519, 33.470741, 18.253981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.589323, 33.662468, 18.161446>,  <28.773996, 33.982014, 18.007219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.589323, 33.662468, 18.161446> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866153, 0.499777, -0.001636,
		-0.191389, -0.334712, -0.922680,
		-0.461681, -0.798869, 0.385564,
		28.450819, 33.422806, 18.277115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.318552, 33.850826, 17.515781>,  <28.773996, 33.982014, 18.007219>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.318552, 33.850826, 17.515781> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.186647, 33.685249, 17.855171>,  <28.107504, 33.585903, 18.058805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.186647, 33.685249, 17.855171>,  <28.318552, 33.850826, 17.515781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.186647, 33.685249, 17.855171> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789811, 0.613301, -0.007754,
		-0.517160, -0.672691, -0.529181,
		-0.329763, -0.413943, 0.848474,
		28.087719, 33.561066, 18.109713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.594860, 33.766296, 17.376974>,  <28.318552, 33.850826, 17.515781>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.594860, 33.766296, 17.376974> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.609625, 33.703411, 17.771725>,  <27.618484, 33.665680, 18.008575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.609625, 33.703411, 17.771725>,  <27.594860, 33.766296, 17.376974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.609625, 33.703411, 17.771725> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758837, 0.638165, 0.130045,
		-0.650233, -0.753678, -0.095742,
		0.036912, -0.157212, 0.986875,
		27.620699, 33.656246, 18.067787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.964811, 33.523273, 17.655384>,  <27.594860, 33.766296, 17.376974>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.964811, 33.523273, 17.655384> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.138117, 33.720413, 17.957214>,  <27.242100, 33.838696, 18.138311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.138117, 33.720413, 17.957214>,  <26.964811, 33.523273, 17.655384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.138117, 33.720413, 17.957214> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857682, 0.482680, 0.177207,
		-0.276881, -0.723962, 0.631836,
		0.433265, 0.492849, 0.754573,
		27.268097, 33.868267, 18.183586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.564144, 33.469082, 18.270250>,  <26.964811, 33.523273, 17.655384>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.564144, 33.469082, 18.270250> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.786753, 33.800793, 18.249908>,  <26.920319, 33.999817, 18.237703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.786753, 33.800793, 18.249908>,  <26.564144, 33.469082, 18.270250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.786753, 33.800793, 18.249908> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804556, 0.553183, 0.216049,
		0.207297, -0.079319, 0.975057,
		0.556522, 0.829275, -0.050857,
		26.953709, 34.049576, 18.234652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.119591, 33.913715, 18.664885>,  <26.564144, 33.469082, 18.270250>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.119591, 33.913715, 18.664885> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.790495, 33.715317, 18.553822>,  <25.593039, 33.596279, 18.487185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.790495, 33.715317, 18.553822>,  <26.119591, 33.913715, 18.664885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.790495, 33.715317, 18.553822> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501696, -0.863262, 0.055494,
		-0.267215, -0.093642, 0.959076,
		-0.822737, -0.495994, -0.277657,
		25.543674, 33.566517, 18.470524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.147177, 33.332752, 19.089024>,  <26.119591, 33.913715, 18.664885>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.147177, 33.332752, 19.089024> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.913713, 33.206070, 18.789948>,  <25.773636, 33.130062, 18.610502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.913713, 33.206070, 18.789948>,  <26.147177, 33.332752, 19.089024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.913713, 33.206070, 18.789948> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326793, -0.934555, 0.140759,
		-0.743338, -0.162186, 0.648956,
		-0.583657, -0.316705, -0.747691,
		25.738617, 33.111057, 18.565639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.767830, 32.783337, 19.361378>,  <26.147177, 33.332752, 19.089024>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.767830, 32.783337, 19.361378> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.728050, 32.721188, 18.968243>,  <25.704182, 32.683899, 18.732361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.728050, 32.721188, 18.968243>,  <25.767830, 32.783337, 19.361378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.728050, 32.721188, 18.968243> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307786, -0.944097, 0.118102,
		-0.946244, -0.290758, 0.141712,
		-0.099451, -0.155371, -0.982837,
		25.698215, 32.674576, 18.673391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.258989, 32.183861, 19.202026>,  <25.767830, 32.783337, 19.361378>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.258989, 32.183861, 19.202026> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.515917, 32.218227, 18.897385>,  <25.670074, 32.238850, 18.714600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.515917, 32.218227, 18.897385>,  <25.258989, 32.183861, 19.202026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.515917, 32.218227, 18.897385> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282065, -0.950456, 0.130663,
		-0.712645, -0.298750, -0.634733,
		0.642321, 0.085920, -0.761605,
		25.708612, 32.244003, 18.668903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.122828, 31.521315, 18.726189>,  <25.258989, 32.183861, 19.202026>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.122828, 31.521315, 18.726189> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.480310, 31.684277, 18.651020>,  <25.694799, 31.782053, 18.605919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.480310, 31.684277, 18.651020>,  <25.122828, 31.521315, 18.726189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.480310, 31.684277, 18.651020> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420029, -0.906971, 0.031285,
		-0.157692, -0.106891, -0.981686,
		0.893705, 0.407403, -0.187920,
		25.748423, 31.806498, 18.594645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.298855, 31.223360, 18.086418>,  <25.122828, 31.521315, 18.726189>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.298855, 31.223360, 18.086418> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.623751, 31.339142, 18.288994>,  <25.818689, 31.408611, 18.410540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.623751, 31.339142, 18.288994>,  <25.298855, 31.223360, 18.086418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.623751, 31.339142, 18.288994> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423444, -0.889709, -0.170624,
		0.401196, 0.353036, -0.845226,
		0.812242, 0.289453, 0.506439,
		25.867424, 31.425978, 18.440926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.843664, 30.911869, 17.706144>,  <25.298855, 31.223360, 18.086418>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.843664, 30.911869, 17.706144> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.032011, 31.023884, 18.040775>,  <26.145020, 31.091093, 18.241554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.032011, 31.023884, 18.040775>,  <25.843664, 30.911869, 17.706144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.032011, 31.023884, 18.040775> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561601, -0.826468, -0.039441,
		0.680361, 0.488395, -0.546424,
		0.470865, 0.280038, 0.836579,
		26.173271, 31.107895, 18.291750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.629797, 30.943743, 17.592123>,  <25.843664, 30.911869, 17.706144>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.629797, 30.943743, 17.592123> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.572304, 30.891312, 17.984482>,  <26.537807, 30.859852, 18.219896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.572304, 30.891312, 17.984482>,  <26.629797, 30.943743, 17.592123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.572304, 30.891312, 17.984482> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692949, -0.720968, 0.005195,
		0.706514, 0.680459, 0.194458,
		-0.143732, -0.131079, 0.980897,
		26.529184, 30.851988, 18.278751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.280554, 30.923111, 17.931973>,  <26.629797, 30.943743, 17.592123>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.280554, 30.923111, 17.931973> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.038708, 30.730385, 18.185680>,  <26.893600, 30.614748, 18.337904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.038708, 30.730385, 18.185680>,  <27.280554, 30.923111, 17.931973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.038708, 30.730385, 18.185680> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613711, -0.789395, -0.014640,
		0.507742, 0.380405, 0.772975,
		-0.604613, -0.481817, 0.634268,
		26.857325, 30.585840, 18.375961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.814646, 30.751638, 18.557503>,  <27.280554, 30.923111, 17.931973>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.814646, 30.751638, 18.557503> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.499308, 30.508209, 18.593609>,  <27.310104, 30.362152, 18.615273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.499308, 30.508209, 18.593609>,  <27.814646, 30.751638, 18.557503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.499308, 30.508209, 18.593609> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579428, -0.783753, -0.223595,
		0.206820, -0.123968, 0.970493,
		-0.788346, -0.608575, 0.090265,
		27.262804, 30.325636, 18.620687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.960051, 30.280962, 19.010990>,  <27.814646, 30.751638, 18.557503>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.960051, 30.280962, 19.010990> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.677286, 30.105518, 18.789036>,  <27.507627, 30.000252, 18.655863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.677286, 30.105518, 18.789036>,  <27.960051, 30.280962, 19.010990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.677286, 30.105518, 18.789036> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448710, -0.884531, 0.127527,
		-0.546747, -0.158832, 0.822095,
		-0.706913, -0.438607, -0.554885,
		27.465212, 29.973936, 18.622570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.919373, 29.580898, 19.197216>,  <27.960051, 30.280962, 19.010990>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.919373, 29.580898, 19.197216> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.701916, 29.576382, 18.861519>,  <27.571442, 29.573671, 18.660101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.701916, 29.576382, 18.861519>,  <27.919373, 29.580898, 19.197216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.701916, 29.576382, 18.861519> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293817, -0.939200, -0.177693,
		-0.786211, -0.343185, 0.513903,
		-0.543640, -0.011289, -0.839243,
		27.538824, 29.572994, 18.609747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.489132, 29.008589, 19.115292>,  <27.919373, 29.580898, 19.197216>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.489132, 29.008589, 19.115292> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.504549, 29.136856, 18.736729>,  <27.513800, 29.213816, 18.509590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.504549, 29.136856, 18.736729>,  <27.489132, 29.008589, 19.115292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.504549, 29.136856, 18.736729> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506667, -0.822605, -0.258086,
		-0.861280, -0.469566, -0.194177,
		0.038542, 0.320668, -0.946407,
		27.516111, 29.233057, 18.452806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.128145, 28.444241, 18.668016>,  <27.489132, 29.008589, 19.115292>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.128145, 28.444241, 18.668016> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.381639, 28.652584, 18.439251>,  <27.533735, 28.777590, 18.301991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.381639, 28.652584, 18.439251>,  <27.128145, 28.444241, 18.668016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.381639, 28.652584, 18.439251> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539149, -0.827585, -0.156274,
		-0.554705, -0.209312, -0.805289,
		0.633735, 0.520857, -0.571916,
		27.571760, 28.808842, 18.267675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.196226, 28.117975, 17.964317>,  <27.128145, 28.444241, 18.668016>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.196226, 28.117975, 17.964317> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.524355, 28.342022, 18.010513>,  <27.721231, 28.476450, 18.038231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.524355, 28.342022, 18.010513>,  <27.196226, 28.117975, 17.964317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.524355, 28.342022, 18.010513> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569313, -0.780592, -0.257990,
		-0.054352, 0.277386, -0.959220,
		0.820322, 0.560119, 0.115492,
		27.770452, 28.510057, 18.045160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.583303, 27.756344, 17.596113>,  <27.196226, 28.117975, 17.964317>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.583303, 27.756344, 17.596113> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.854385, 28.009762, 17.745426>,  <28.017035, 28.161812, 17.835014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.854385, 28.009762, 17.745426>,  <27.583303, 27.756344, 17.596113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.854385, 28.009762, 17.745426> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726030, -0.657008, -0.203031,
		0.116620, 0.408609, -0.905228,
		0.677702, 0.633545, 0.373283,
		28.057695, 28.199825, 17.857410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.130486, 27.896919, 17.026379>,  <27.583303, 27.756344, 17.596113>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.130486, 27.896919, 17.026379> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.280077, 27.939278, 17.394928>,  <28.369831, 27.964693, 17.616058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.280077, 27.939278, 17.394928>,  <28.130486, 27.896919, 17.026379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.280077, 27.939278, 17.394928> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676758, -0.710448, -0.193037,
		0.634146, 0.695737, -0.337356,
		0.373977, 0.105894, 0.921373,
		28.392269, 27.971046, 17.671339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<28.838442, 27.877888, 16.851009> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.784357, 27.796566, 17.238903>,  <28.751907, 27.747774, 17.471640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.784357, 27.796566, 17.238903>,  <28.838442, 27.877888, 16.851009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.784357, 27.796566, 17.238903> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679226, -0.731580, -0.058669,
		0.721367, 0.650737, 0.237005,
		-0.135209, -0.203302, 0.969735,
		28.743793, 27.735575, 17.529823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.511171, 27.771477, 17.209620>,  <28.838442, 27.877888, 16.851009>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.511171, 27.771477, 17.209620> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.243000, 27.591042, 17.445263>,  <29.082098, 27.482780, 17.586649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.243000, 27.591042, 17.445263>,  <29.511171, 27.771477, 17.209620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.243000, 27.591042, 17.445263> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604669, -0.792300, 0.081462,
		0.430004, 0.410830, 0.803938,
		-0.670427, -0.451087, 0.589108,
		29.041872, 27.455715, 17.621996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.915354, 27.375168, 17.740238>,  <29.511171, 27.771477, 17.209620>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.915354, 27.375168, 17.740238> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.550514, 27.211472, 17.730480>,  <29.331610, 27.113255, 17.724625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.550514, 27.211472, 17.730480>,  <29.915354, 27.375168, 17.740238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.550514, 27.211472, 17.730480> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409754, -0.911928, -0.022120,
		-0.013194, -0.030172, 0.999458,
		-0.912101, -0.409240, -0.024395,
		29.276884, 27.088699, 17.723162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.047558, 26.829020, 18.181635>,  <29.915354, 27.375168, 17.740238>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.047558, 26.829020, 18.181635> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.713234, 26.733875, 17.983707>,  <29.512640, 26.676788, 17.864952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.713234, 26.733875, 17.983707>,  <30.047558, 26.829020, 18.181635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.713234, 26.733875, 17.983707> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249411, -0.967409, 0.043745,
		-0.489095, -0.086850, 0.867896,
		-0.835811, -0.237859, -0.494816,
		29.462490, 26.662518, 17.835262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.828232, 26.155218, 18.486584>,  <30.047558, 26.829020, 18.181635>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.828232, 26.155218, 18.486584> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.656851, 26.191578, 18.126991>,  <29.554022, 26.213394, 17.911236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.656851, 26.191578, 18.126991>,  <29.828232, 26.155218, 18.486584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.656851, 26.191578, 18.126991> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276287, -0.934094, -0.226130,
		-0.860288, -0.345262, 0.375099,
		-0.428452, 0.090902, -0.898980,
		29.528315, 26.218849, 17.857298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.501909, 25.580202, 18.394730>,  <29.828232, 26.155218, 18.486584>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.501909, 25.580202, 18.394730> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.550602, 25.709576, 18.019375>,  <29.579817, 25.787199, 17.794161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.550602, 25.709576, 18.019375>,  <29.501909, 25.580202, 18.394730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.550602, 25.709576, 18.019375> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214899, -0.931583, -0.293208,
		-0.969020, -0.165966, -0.182909,
		0.121732, 0.323432, -0.938389,
		29.587122, 25.806604, 17.737858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.088270, 25.104527, 18.114906>,  <29.501909, 25.580202, 18.394730>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.088270, 25.104527, 18.114906> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.322386, 25.257877, 17.829121>,  <29.462856, 25.349888, 17.657650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.322386, 25.257877, 17.829121>,  <29.088270, 25.104527, 18.114906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.322386, 25.257877, 17.829121> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147288, -0.916766, -0.371276,
		-0.797334, 0.112072, -0.593042,
		0.585291, 0.383379, -0.714462,
		29.497972, 25.372890, 17.614782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.914600, 24.764996, 17.527365>,  <29.088270, 25.104527, 18.114906>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.914600, 24.764996, 17.527365> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.259796, 24.941044, 17.428131>,  <29.466913, 25.046673, 17.368591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.259796, 24.941044, 17.428131>,  <28.914600, 24.764996, 17.527365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.259796, 24.941044, 17.428131> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252489, -0.801026, -0.542777,
		-0.437608, 0.405773, -0.802401,
		0.862988, 0.440121, -0.248082,
		29.518692, 25.073080, 17.353706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.996044, 24.781624, 16.789936>,  <28.914600, 24.764996, 17.527365>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.996044, 24.781624, 16.789936> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.367159, 24.799118, 16.938152>,  <29.589827, 24.809614, 17.027082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.367159, 24.799118, 16.938152>,  <28.996044, 24.781624, 16.789936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.367159, 24.799118, 16.938152> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219384, -0.867244, -0.446944,
		0.301804, 0.495959, -0.814211,
		0.927785, 0.043735, 0.370543,
		29.645494, 24.812239, 17.049314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.487196, 24.428104, 16.222797>,  <28.996044, 24.781624, 16.789936>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.487196, 24.428104, 16.222797> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.667988, 24.443913, 16.579258>,  <29.776463, 24.453398, 16.793135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.667988, 24.443913, 16.579258>,  <29.487196, 24.428104, 16.222797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.667988, 24.443913, 16.579258> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311515, -0.943113, -0.116171,
		0.835868, 0.330115, -0.438577,
		0.451977, 0.039520, 0.891154,
		29.803581, 24.455769, 16.846603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.117905, 24.187685, 16.037754>,  <29.487196, 24.428104, 16.222797>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.117905, 24.187685, 16.037754> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.073067, 24.136677, 16.431946>,  <30.046164, 24.106071, 16.668461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.073067, 24.136677, 16.431946>,  <30.117905, 24.187685, 16.037754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.073067, 24.136677, 16.431946> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016736, -0.991833, -0.126437,
		0.993556, 0.002320, 0.113315,
		-0.112096, -0.127519, 0.985481,
		30.039438, 24.098421, 16.727591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.531033, 23.589863, 16.178225>,  <30.117905, 24.187685, 16.037754>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.531033, 23.589863, 16.178225> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.324883, 23.604378, 16.520702>,  <30.201193, 23.613087, 16.726189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.324883, 23.604378, 16.520702>,  <30.531033, 23.589863, 16.178225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.324883, 23.604378, 16.520702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058011, -0.998289, 0.007392,
		0.854999, -0.045859, 0.516598,
		-0.515375, 0.036288, 0.856196,
		30.170271, 23.615265, 16.777561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.801048, 23.071554, 16.584541>,  <30.531033, 23.589863, 16.178225>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.801048, 23.071554, 16.584541> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.449228, 23.139458, 16.762337>,  <30.238136, 23.180201, 16.869015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.449228, 23.139458, 16.762337>,  <30.801048, 23.071554, 16.584541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.449228, 23.139458, 16.762337> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088062, -0.976127, 0.198548,
		0.467583, 0.135490, 0.873503,
		-0.879552, 0.169760, 0.444489,
		30.185364, 23.190386, 16.895683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.903612, 22.902901, 17.317596>,  <30.801048, 23.071554, 16.584541>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.903612, 22.902901, 17.317596> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.515553, 22.873169, 17.225258>,  <30.282717, 22.855330, 17.169855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.515553, 22.873169, 17.225258>,  <30.903612, 22.902901, 17.317596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.515553, 22.873169, 17.225258> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030967, -0.906116, 0.421895,
		-0.240530, 0.416449, 0.876764,
		-0.970148, -0.074328, -0.230844,
		30.224508, 22.850870, 17.156004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.622826, 22.635941, 17.891081>,  <30.903612, 22.902901, 17.317596>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.622826, 22.635941, 17.891081> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.321856, 22.586445, 17.632301>,  <30.141273, 22.556747, 17.477034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.321856, 22.586445, 17.632301>,  <30.622826, 22.635941, 17.891081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.321856, 22.586445, 17.632301> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183694, -0.903808, 0.386507,
		-0.632544, 0.409659, 0.657319,
		-0.752426, -0.123737, -0.646950,
		30.096128, 22.549324, 17.438217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.043272, 22.431423, 18.361094>,  <30.622826, 22.635941, 17.891081>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.043272, 22.431423, 18.361094> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.042353, 22.291622, 17.986320>,  <30.041801, 22.207741, 17.761457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.042353, 22.291622, 17.986320>,  <30.043272, 22.431423, 18.361094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.042353, 22.291622, 17.986320> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175634, -0.922230, 0.344448,
		-0.984453, 0.165349, -0.059265,
		-0.002298, -0.349502, -0.936933,
		30.041664, 22.186771, 17.705240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.585941, 21.880219, 18.467310>,  <30.043272, 22.431423, 18.361094>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.585941, 21.880219, 18.467310> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.755426, 21.818951, 18.110210>,  <29.857119, 21.782190, 17.895950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.755426, 21.818951, 18.110210>,  <29.585941, 21.880219, 18.467310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.755426, 21.818951, 18.110210> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027588, -0.987324, 0.156304,
		-0.905375, -0.041600, -0.422569,
		0.423715, -0.153172, -0.892751,
		29.882542, 21.772999, 17.842384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.172234, 21.429817, 18.160166>,  <29.585941, 21.880219, 18.467310>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.172234, 21.429817, 18.160166> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.535034, 21.413242, 17.992531>,  <29.752714, 21.403297, 17.891951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.535034, 21.413242, 17.992531>,  <29.172234, 21.429817, 18.160166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.535034, 21.413242, 17.992531> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086845, -0.955352, 0.282417,
		-0.412076, -0.292548, -0.862907,
		0.907001, -0.041438, -0.419085,
		29.807135, 21.400810, 17.866806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.199310, 20.902136, 17.956888>,  <29.172234, 21.429817, 18.160166>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.199310, 20.902136, 17.956888> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.593740, 20.967720, 17.945805>,  <29.830399, 21.007071, 17.939154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.593740, 20.967720, 17.945805>,  <29.199310, 20.902136, 17.956888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.593740, 20.967720, 17.945805> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159418, -0.884728, 0.437997,
		0.047298, -0.436316, -0.898549,
		0.986077, 0.163961, -0.027711,
		29.889565, 21.016909, 17.937490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.560724, 20.247730, 17.803127>,  <29.199310, 20.902136, 17.956888>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.560724, 20.247730, 17.803127> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.867981, 20.454330, 17.954487>,  <30.052334, 20.578291, 18.045303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.867981, 20.454330, 17.954487>,  <29.560724, 20.247730, 17.803127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.867981, 20.454330, 17.954487> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409857, -0.850688, 0.329162,
		0.491913, -0.097752, -0.865139,
		0.768140, 0.516502, 0.378400,
		30.098423, 20.609282, 18.068007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.068520, 19.820518, 17.700161>,  <29.560724, 20.247730, 17.803127>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.068520, 19.820518, 17.700161> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.238316, 20.058048, 17.973564>,  <30.340193, 20.200565, 18.137606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.238316, 20.058048, 17.973564>,  <30.068520, 19.820518, 17.700161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.238316, 20.058048, 17.973564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501393, -0.782750, 0.368656,
		0.753933, 0.186217, -0.630007,
		0.424488, 0.593823, 0.683509,
		30.365662, 20.236195, 18.178617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.763630, 19.568022, 17.767969>,  <30.068520, 19.820518, 17.700161>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.763630, 19.568022, 17.767969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.687000, 19.805763, 18.080391>,  <30.641024, 19.948408, 18.267843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.687000, 19.805763, 18.080391>,  <30.763630, 19.568022, 17.767969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.687000, 19.805763, 18.080391> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626023, -0.538900, 0.563632,
		0.755907, 0.596934, -0.268840,
		-0.191573, 0.594354, 0.781053,
		30.629528, 19.984070, 18.314707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.435894, 19.756901, 18.135654>,  <30.763630, 19.568022, 17.767969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.435894, 19.756901, 18.135654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.142164, 19.808662, 18.402195>,  <30.965927, 19.839720, 18.562120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.142164, 19.808662, 18.402195>,  <31.435894, 19.756901, 18.135654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.142164, 19.808662, 18.402195> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594764, -0.350457, 0.723489,
		0.327149, 0.927596, 0.180384,
		-0.734322, 0.129403, 0.666353,
		30.921867, 19.847483, 18.602100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.964670, 19.313572, 17.645061>,  <31.435894, 19.756901, 18.135654>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.964670, 19.313572, 17.645061> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.279102, 19.195168, 17.428005>,  <32.467762, 19.124125, 17.297771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.279102, 19.195168, 17.428005>,  <31.964670, 19.313572, 17.645061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.279102, 19.195168, 17.428005> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098744, -0.806470, 0.582971,
		-0.610188, -0.511844, -0.604720,
		0.786079, -0.296010, -0.542640,
		32.514927, 19.106365, 17.265213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.377277, 19.914032, 17.840038>,  <31.964670, 19.313572, 17.645061>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.377277, 19.914032, 17.840038> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.762432, 19.852154, 17.928509>,  <32.993526, 19.815027, 17.981590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.762432, 19.852154, 17.928509>,  <32.377277, 19.914032, 17.840038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.762432, 19.852154, 17.928509> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031717, 0.748921, 0.661900,
		-0.268037, -0.644350, 0.716219,
		0.962886, -0.154697, 0.221176,
		33.051296, 19.805744, 17.994862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.482864, 19.631250, 18.594908>,  <32.377277, 19.914032, 17.840038>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.482864, 19.631250, 18.594908> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.794037, 19.825771, 18.435745>,  <32.980740, 19.942484, 18.340248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.794037, 19.825771, 18.435745>,  <32.482864, 19.631250, 18.594908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.794037, 19.825771, 18.435745> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199395, 0.791585, 0.577612,
		0.595870, -0.370003, 0.712767,
		0.777933, 0.486304, -0.397905,
		33.027416, 19.971663, 18.316374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.569679, 20.123093, 19.022686>,  <32.482864, 19.631250, 18.594908>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.569679, 20.123093, 19.022686> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.838634, 20.244419, 18.752605>,  <33.000008, 20.317215, 18.590557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.838634, 20.244419, 18.752605>,  <32.569679, 20.123093, 19.022686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.838634, 20.244419, 18.752605> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099163, 0.940875, 0.323915,
		0.733527, -0.150842, 0.662710,
		0.672387, 0.303317, -0.675199,
		33.040352, 20.335415, 18.550045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.948666, 20.650396, 19.314281>,  <32.569679, 20.123093, 19.022686>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.948666, 20.650396, 19.314281> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.017723, 20.719112, 18.926327>,  <33.059158, 20.760342, 18.693554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.017723, 20.719112, 18.926327>,  <32.948666, 20.650396, 19.314281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.017723, 20.719112, 18.926327> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111761, 0.981731, 0.153994,
		0.978624, 0.081811, 0.188685,
		0.172640, 0.171790, -0.969888,
		33.069515, 20.770649, 18.635361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.513088, 21.141199, 19.285177>,  <32.948666, 20.650396, 19.314281>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.513088, 21.141199, 19.285177> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.312748, 21.163200, 18.939663>,  <33.192543, 21.176401, 18.732355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.312748, 21.163200, 18.939663>,  <33.513088, 21.141199, 19.285177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.312748, 21.163200, 18.939663> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019812, 0.996989, 0.074972,
		0.865308, 0.054663, -0.498252,
		-0.500850, 0.055002, -0.863785,
		33.162495, 21.179701, 18.680527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.787819, 21.720129, 19.060863>,  <33.513088, 21.141199, 19.285177>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.787819, 21.720129, 19.060863> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.467327, 21.665424, 18.827858>,  <33.275032, 21.632603, 18.688055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.467327, 21.665424, 18.827858>,  <33.787819, 21.720129, 19.060863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.467327, 21.665424, 18.827858> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122645, 0.990396, -0.063825,
		0.585647, 0.020303, -0.810312,
		-0.801234, -0.136759, -0.582513,
		33.226955, 21.624397, 18.653105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.840061, 22.275698, 18.449984>,  <33.787819, 21.720129, 19.060863>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.840061, 22.275698, 18.449984> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.458641, 22.157372, 18.427208>,  <33.229790, 22.086376, 18.413542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.458641, 22.157372, 18.427208>,  <33.840061, 22.275698, 18.449984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.458641, 22.157372, 18.427208> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298812, 0.952771, 0.054213,
		0.038212, 0.068709, -0.996905,
		-0.953547, -0.295815, -0.056939,
		33.172577, 22.068626, 18.410126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.528198, 22.547373, 17.963156>,  <33.840061, 22.275698, 18.449984>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.528198, 22.547373, 17.963156> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.203392, 22.464096, 18.181252>,  <33.008507, 22.414131, 18.312109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.203392, 22.464096, 18.181252>,  <33.528198, 22.547373, 17.963156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.203392, 22.464096, 18.181252> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324014, 0.937831, -0.124455,
		-0.485432, -0.277724, -0.828991,
		-0.812017, -0.208190, 0.545239,
		32.959785, 22.401640, 18.344824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.971828, 22.856417, 17.660458>,  <33.528198, 22.547373, 17.963156>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.971828, 22.856417, 17.660458> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.853569, 22.820274, 18.040863>,  <32.782612, 22.798590, 18.269106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.853569, 22.820274, 18.040863>,  <32.971828, 22.856417, 17.660458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.853569, 22.820274, 18.040863> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460023, 0.885956, -0.058839,
		-0.837239, -0.454883, -0.303499,
		-0.295651, -0.090354, 0.951013,
		32.764874, 22.793169, 18.326166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.392426, 23.147125, 17.609039>,  <32.971828, 22.856417, 17.660458>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.392426, 23.147125, 17.609039> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.442749, 23.146172, 18.005859>,  <32.472942, 23.145599, 18.243952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.442749, 23.146172, 18.005859>,  <32.392426, 23.147125, 17.609039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.442749, 23.146172, 18.005859> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450158, 0.890982, 0.059229,
		-0.884042, -0.454032, 0.111019,
		0.125808, -0.002385, 0.992052,
		32.480492, 23.145456, 18.303474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.796154, 23.387516, 17.995743>,  <32.392426, 23.147125, 17.609039>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.796154, 23.387516, 17.995743> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.108578, 23.463017, 18.233841>,  <32.296032, 23.508316, 18.376699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.108578, 23.463017, 18.233841>,  <31.796154, 23.387516, 17.995743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.108578, 23.463017, 18.233841> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315106, 0.942095, 0.114737,
		-0.539123, -0.277182, 0.795309,
		0.781060, 0.188749, 0.595247,
		32.342896, 23.519642, 18.412415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.543695, 23.839722, 18.623581>,  <31.796154, 23.387516, 17.995743>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.543695, 23.839722, 18.623581> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.937014, 23.884796, 18.566406>,  <32.173004, 23.911840, 18.532101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.937014, 23.884796, 18.566406>,  <31.543695, 23.839722, 18.623581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.937014, 23.884796, 18.566406> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118678, 0.992347, -0.034092,
		0.138002, 0.050486, 0.989145,
		0.983296, 0.112685, -0.142937,
		32.232002, 23.918602, 18.523525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.746517, 24.351086, 19.058239>,  <31.543695, 23.839722, 18.623581>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.746517, 24.351086, 19.058239> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.022369, 24.333000, 18.769138>,  <32.187881, 24.322149, 18.595678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.022369, 24.333000, 18.769138>,  <31.746517, 24.351086, 19.058239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.022369, 24.333000, 18.769138> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010500, 0.998568, -0.052448,
		0.724087, 0.028580, 0.689117,
		0.689629, -0.045213, -0.722750,
		32.229259, 24.319437, 18.552313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.194305, 24.819376, 19.273199>,  <31.746517, 24.351086, 19.058239>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.194305, 24.819376, 19.273199> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.285137, 24.764748, 18.887497>,  <32.339634, 24.731970, 18.656076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.285137, 24.764748, 18.887497>,  <32.194305, 24.819376, 19.273199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.285137, 24.764748, 18.887497> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027733, 0.988810, -0.146580,
		0.973482, 0.060027, 0.220747,
		0.227076, -0.136571, -0.964254,
		32.353260, 24.723776, 18.598221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.636894, 25.364367, 19.117086>,  <32.194305, 24.819376, 19.273199>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.636894, 25.364367, 19.117086> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.507900, 25.247242, 18.757027>,  <32.430504, 25.176968, 18.540991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.507900, 25.247242, 18.757027>,  <32.636894, 25.364367, 19.117086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.507900, 25.247242, 18.757027> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085850, 0.956081, -0.280248,
		0.942675, -0.013097, -0.333455,
		-0.322480, -0.292809, -0.900149,
		32.411156, 25.159399, 18.486982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.993736, 25.701027, 18.742071>,  <32.636894, 25.364367, 19.117086>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.993736, 25.701027, 18.742071> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.693958, 25.616703, 18.491028>,  <32.514091, 25.566109, 18.340403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.693958, 25.616703, 18.491028>,  <32.993736, 25.701027, 18.742071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.693958, 25.616703, 18.491028> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048441, 0.927953, -0.369537,
		0.660291, -0.307350, -0.685239,
		-0.749446, -0.210808, -0.627606,
		32.469124, 25.553461, 18.302746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.194885, 25.944815, 18.146383>,  <32.993736, 25.701027, 18.742071>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.194885, 25.944815, 18.146383> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.797951, 25.907597, 18.113857>,  <32.559792, 25.885265, 18.094341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.797951, 25.907597, 18.113857>,  <33.194885, 25.944815, 18.146383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.797951, 25.907597, 18.113857> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053024, 0.915017, -0.399915,
		0.111613, -0.392538, -0.912938,
		-0.992336, -0.093043, -0.081314,
		32.500252, 25.879684, 18.089462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.128548, 26.331879, 17.650389>,  <33.194885, 25.944815, 18.146383>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.128548, 26.331879, 17.650389> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.748371, 26.309837, 17.772781>,  <32.520264, 26.296612, 17.846216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.748371, 26.309837, 17.772781>,  <33.128548, 26.331879, 17.650389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.748371, 26.309837, 17.772781> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198525, 0.864965, -0.460894,
		-0.239265, -0.498798, -0.833039,
		-0.950442, -0.055103, 0.305980,
		32.463238, 26.293306, 17.864574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.758755, 26.621630, 17.121643>,  <33.128548, 26.331879, 17.650389>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.758755, 26.621630, 17.121643> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.484081, 26.627419, 17.412369>,  <32.319279, 26.630892, 17.586803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.484081, 26.627419, 17.412369>,  <32.758755, 26.621630, 17.121643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.484081, 26.627419, 17.412369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337385, 0.879259, -0.336266,
		-0.643925, -0.476124, -0.598888,
		-0.686682, 0.014474, 0.726814,
		32.278076, 26.631762, 17.630413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.148808, 26.723751, 16.798897>,  <32.758755, 26.621630, 17.121643>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.148808, 26.723751, 16.798897> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.077888, 26.840694, 17.174789>,  <32.035339, 26.910860, 17.400324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.077888, 26.840694, 17.174789>,  <32.148808, 26.723751, 16.798897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.077888, 26.840694, 17.174789> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158312, 0.933950, -0.320429,
		-0.971342, -0.205580, -0.119299,
		-0.177293, 0.292359, 0.939730,
		32.024700, 26.928402, 17.456709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<26.116621, 41.761196, 19.164482> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.404177, 41.483356, 19.153687>,  <26.576710, 41.316654, 19.147209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.404177, 41.483356, 19.153687>,  <26.116621, 41.761196, 19.164482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.404177, 41.483356, 19.153687> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627612, -0.665275, 0.404367,
		-0.298827, -0.273757, -0.914199,
		0.718892, -0.694598, -0.026989,
		26.619844, 41.274979, 19.145590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.075605, 41.291447, 18.555021>,  <26.116621, 41.761196, 19.164482>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.075605, 41.291447, 18.555021> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.248093, 41.125645, 18.875580>,  <26.351585, 41.026165, 19.067915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.248093, 41.125645, 18.875580>,  <26.075605, 41.291447, 18.555021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.248093, 41.125645, 18.875580> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715432, -0.698277, 0.023795,
		0.549733, -0.583605, -0.597661,
		0.431220, -0.414505, 0.801396,
		26.377459, 41.001293, 19.115999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.968428, 40.569290, 18.408976>,  <26.075605, 41.291447, 18.555021>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.968428, 40.569290, 18.408976> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.073486, 40.582130, 18.794720>,  <26.136520, 40.589836, 19.026165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.073486, 40.582130, 18.794720>,  <25.968428, 40.569290, 18.408976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.073486, 40.582130, 18.794720> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655334, -0.727632, 0.202704,
		0.708205, -0.685216, -0.170071,
		0.262645, 0.032103, 0.964358,
		26.152281, 40.591763, 19.084026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.075470, 39.877369, 18.655735>,  <25.968428, 40.569290, 18.408976>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.075470, 39.877369, 18.655735> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.982018, 40.097214, 18.976570>,  <25.925945, 40.229122, 19.169071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.982018, 40.097214, 18.976570>,  <26.075470, 39.877369, 18.655735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.982018, 40.097214, 18.976570> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489770, -0.779142, 0.391232,
		0.839965, -0.301434, 0.451216,
		-0.233631, 0.549613, 0.802086,
		25.911928, 40.262096, 19.217196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.178600, 39.350037, 19.171204>,  <26.075470, 39.877369, 18.655735>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.178600, 39.350037, 19.171204> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.987446, 39.653793, 19.347816>,  <25.872753, 39.836048, 19.453785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.987446, 39.653793, 19.347816>,  <26.178600, 39.350037, 19.171204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.987446, 39.653793, 19.347816> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617080, -0.647948, 0.446515,
		0.625170, -0.059079, 0.778249,
		-0.477885, 0.759390, 0.441534,
		25.844080, 39.881611, 19.480276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.214077, 39.188148, 19.799484>,  <26.178600, 39.350037, 19.171204>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.214077, 39.188148, 19.799484> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.905416, 39.435329, 19.739227>,  <25.720221, 39.583637, 19.703074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.905416, 39.435329, 19.739227>,  <26.214077, 39.188148, 19.799484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.905416, 39.435329, 19.739227> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608434, -0.648130, 0.457968,
		0.185367, 0.445047, 0.876112,
		-0.771652, 0.617949, -0.150640,
		25.673922, 39.620712, 19.694035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.828672, 39.255894, 20.459785>,  <26.214077, 39.188148, 19.799484>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.828672, 39.255894, 20.459785> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.580618, 39.369823, 20.167400>,  <25.431786, 39.438183, 19.991968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.580618, 39.369823, 20.167400>,  <25.828672, 39.255894, 20.459785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.580618, 39.369823, 20.167400> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724122, -0.566273, 0.393678,
		-0.301796, 0.773440, 0.557413,
		-0.620134, 0.284824, -0.730964,
		25.394577, 39.455269, 19.948111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.299910, 39.391598, 20.876747>,  <25.828672, 39.255894, 20.459785>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.299910, 39.391598, 20.876747> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.153412, 39.363873, 20.505573>,  <25.065514, 39.347237, 20.282869>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.153412, 39.363873, 20.505573>,  <25.299910, 39.391598, 20.876747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.153412, 39.363873, 20.505573> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794152, -0.496440, 0.350528,
		-0.484960, 0.865299, 0.126772,
		-0.366246, -0.069316, -0.927933,
		25.043537, 39.343079, 20.227194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.627155, 39.587940, 20.898102>,  <25.299910, 39.391598, 20.876747>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.627155, 39.587940, 20.898102> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.645773, 39.357563, 20.571636>,  <24.656944, 39.219337, 20.375757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.645773, 39.357563, 20.571636>,  <24.627155, 39.587940, 20.898102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.645773, 39.357563, 20.571636> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775418, -0.535911, 0.333955,
		-0.629730, 0.617324, -0.471541,
		0.046545, -0.575944, -0.816164,
		24.659737, 39.184780, 20.326788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.024632, 39.580593, 20.556942>,  <24.627155, 39.587940, 20.898102>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.024632, 39.580593, 20.556942> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.188801, 39.229603, 20.457680>,  <24.287302, 39.019009, 20.398123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.188801, 39.229603, 20.457680>,  <24.024632, 39.580593, 20.556942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.188801, 39.229603, 20.457680> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733712, -0.479361, 0.481538,
		-0.541497, -0.015559, -0.840559,
		0.410423, -0.877480, -0.248157,
		24.311928, 38.966358, 20.383234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.427101, 39.205547, 20.392323>,  <24.024632, 39.580593, 20.556942>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.427101, 39.205547, 20.392323> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.712626, 38.935986, 20.468559>,  <23.883940, 38.774246, 20.514301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.712626, 38.935986, 20.468559>,  <23.427101, 39.205547, 20.392323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.712626, 38.935986, 20.468559> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679555, -0.600672, 0.421187,
		-0.169358, -0.430165, -0.886722,
		0.713809, -0.673908, 0.190592,
		23.926767, 38.733814, 20.525736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.128887, 38.549641, 20.123421>,  <23.427101, 39.205547, 20.392323>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.128887, 38.549641, 20.123421> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.452719, 38.429016, 20.324875>,  <23.647017, 38.356644, 20.445747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.452719, 38.429016, 20.324875>,  <23.128887, 38.549641, 20.123421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.452719, 38.429016, 20.324875> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503298, -0.798147, 0.331137,
		0.302118, -0.521559, -0.797935,
		0.809578, -0.301557, 0.503634,
		23.695593, 38.338551, 20.475965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.247557, 37.827427, 19.985929>,  <23.128887, 38.549641, 20.123421>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.247557, 37.827427, 19.985929> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.407705, 37.895645, 20.346066>,  <23.503794, 37.936577, 20.562147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.407705, 37.895645, 20.346066>,  <23.247557, 37.827427, 19.985929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.407705, 37.895645, 20.346066> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327824, -0.890844, 0.314530,
		0.855707, -0.421082, -0.300758,
		0.400372, 0.170550, 0.900342,
		23.527817, 37.946812, 20.616169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.545555, 37.283909, 20.241903>,  <23.247557, 37.827427, 19.985929>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.545555, 37.283909, 20.241903> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.444481, 37.487148, 20.571262>,  <23.383837, 37.609093, 20.768877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.444481, 37.487148, 20.571262>,  <23.545555, 37.283909, 20.241903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.444481, 37.487148, 20.571262> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610321, -0.744049, 0.271843,
		0.750772, -0.433846, 0.498116,
		-0.252685, 0.508102, 0.823397,
		23.368675, 37.639580, 20.818281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.729773, 36.851833, 20.781321>,  <23.545555, 37.283909, 20.241903>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.729773, 36.851833, 20.781321> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.459297, 37.111038, 20.921520>,  <23.297012, 37.266560, 21.005640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.459297, 37.111038, 20.921520>,  <23.729773, 36.851833, 20.781321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.459297, 37.111038, 20.921520> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576657, -0.761626, 0.295621,
		0.458517, -0.002225, 0.888683,
		-0.676186, 0.648013, 0.350501,
		23.256441, 37.305443, 21.026670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.491819, 36.455288, 21.267670>,  <23.729773, 36.851833, 20.781321>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.491819, 36.455288, 21.267670> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.238047, 36.762962, 21.237072>,  <23.085783, 36.947567, 21.218714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.238047, 36.762962, 21.237072>,  <23.491819, 36.455288, 21.267670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.238047, 36.762962, 21.237072> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750212, -0.588880, 0.300668,
		0.186224, 0.248140, 0.950656,
		-0.634430, 0.769186, -0.076494,
		23.047718, 36.993717, 21.214125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.087029, 36.462044, 21.893721>,  <23.491819, 36.455288, 21.267670>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.087029, 36.462044, 21.893721> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.865065, 36.666618, 21.631268>,  <22.731886, 36.789364, 21.473797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.865065, 36.666618, 21.631268>,  <23.087029, 36.462044, 21.893721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.865065, 36.666618, 21.631268> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772353, -0.609773, 0.177897,
		-0.309107, 0.605481, 0.733379,
		-0.554908, 0.511438, -0.656131,
		22.698591, 36.820049, 21.434429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.480536, 36.557930, 22.250072>,  <23.087029, 36.462044, 21.893721>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.480536, 36.557930, 22.250072> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.361000, 36.653191, 21.880428>,  <22.289278, 36.710346, 21.658642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.361000, 36.653191, 21.880428>,  <22.480536, 36.557930, 22.250072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.361000, 36.653191, 21.880428> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865117, -0.476366, 0.156996,
		-0.402824, 0.846379, 0.348389,
		-0.298839, 0.238155, -0.924109,
		22.271349, 36.724636, 21.603195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.808796, 36.900162, 22.317888>,  <22.480536, 36.557930, 22.250072>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.808796, 36.900162, 22.317888> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.850605, 36.743103, 21.952396>,  <21.875690, 36.648869, 21.733101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.850605, 36.743103, 21.952396>,  <21.808796, 36.900162, 22.317888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.850605, 36.743103, 21.952396> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857007, -0.501716, 0.117561,
		-0.504594, 0.770788, -0.388936,
		0.104521, -0.392641, -0.913733,
		21.881962, 36.625309, 21.678276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.099323, 36.898071, 22.044071>,  <21.808796, 36.900162, 22.317888>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.099323, 36.898071, 22.044071> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.275593, 36.637657, 21.796860>,  <21.381355, 36.481407, 21.648533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.275593, 36.637657, 21.796860>,  <21.099323, 36.898071, 22.044071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.275593, 36.637657, 21.796860> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724729, -0.664285, 0.183011,
		-0.529693, 0.367255, -0.764558,
		0.440673, -0.651037, -0.618028,
		21.407795, 36.442345, 21.611452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.519278, 36.529022, 21.683784>,  <21.099323, 36.898071, 22.044071>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.519278, 36.529022, 21.683784> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.844864, 36.308754, 21.609783>,  <21.040216, 36.176594, 21.565382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.844864, 36.308754, 21.609783>,  <20.519278, 36.529022, 21.683784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.844864, 36.308754, 21.609783> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513471, -0.830946, 0.214189,
		-0.271676, -0.079348, -0.959112,
		0.813965, -0.550667, -0.185005,
		21.089054, 36.143555, 21.554281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.051325, 37.012314, 22.012602>,  <20.519278, 36.529022, 21.683784>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.051325, 37.012314, 22.012602> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.757515, 37.264751, 21.912846>,  <19.581228, 37.416214, 21.852991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.757515, 37.264751, 21.912846>,  <20.051325, 37.012314, 22.012602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.757515, 37.264751, 21.912846> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440843, 0.164395, -0.882401,
		-0.515876, -0.758089, -0.398965,
		-0.734526, 0.631091, -0.249391,
		19.537157, 37.454079, 21.838028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.885906, 36.784107, 21.348251>,  <20.051325, 37.012314, 22.012602>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.885906, 36.784107, 21.348251> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.779497, 37.163879, 21.414951>,  <19.715652, 37.391743, 21.454971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.779497, 37.163879, 21.414951>,  <19.885906, 36.784107, 21.348251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.779497, 37.163879, 21.414951> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552482, 0.291921, -0.780733,
		-0.789933, -0.115567, -0.602204,
		-0.266023, 0.949435, 0.166750,
		19.699690, 37.448711, 21.464975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.745148, 37.056232, 20.671797>,  <19.885906, 36.784107, 21.348251>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.745148, 37.056232, 20.671797> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.752272, 37.386810, 20.896893>,  <19.756546, 37.585155, 21.031950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.752272, 37.386810, 20.896893>,  <19.745148, 37.056232, 20.671797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.752272, 37.386810, 20.896893> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336669, 0.525006, -0.781679,
		-0.941455, 0.203379, -0.268886,
		0.017811, 0.826441, 0.562741,
		19.757614, 37.634743, 21.065716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.378984, 37.555656, 20.331915>,  <19.745148, 37.056232, 20.671797>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.378984, 37.555656, 20.331915> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.604940, 37.782673, 20.571514>,  <19.740515, 37.918884, 20.715273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.604940, 37.782673, 20.571514>,  <19.378984, 37.555656, 20.331915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.604940, 37.782673, 20.571514> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294244, 0.539648, -0.788797,
		-0.770921, 0.621835, 0.137847,
		0.564890, 0.567540, 0.598997,
		19.774408, 37.952934, 20.751213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.346012, 38.277435, 20.089355>,  <19.378984, 37.555656, 20.331915>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.346012, 38.277435, 20.089355> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.681974, 38.274132, 20.306423>,  <19.883553, 38.272148, 20.436665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.681974, 38.274132, 20.306423>,  <19.346012, 38.277435, 20.089355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.681974, 38.274132, 20.306423> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442322, 0.589821, -0.675620,
		-0.314499, 0.807492, 0.499047,
		0.839906, -0.008257, 0.542670,
		19.933947, 38.271656, 20.469225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.563211, 38.988853, 20.060801>,  <19.346012, 38.277435, 20.089355>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.563211, 38.988853, 20.060801> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.870098, 38.757351, 20.171379>,  <20.054230, 38.618450, 20.237726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.870098, 38.757351, 20.171379>,  <19.563211, 38.988853, 20.060801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.870098, 38.757351, 20.171379> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587742, 0.461830, -0.664283,
		0.256783, 0.672130, 0.694481,
		0.767217, -0.578753, 0.276449,
		20.100264, 38.583725, 20.254314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.007662, 39.522530, 20.185734>,  <19.563211, 38.988853, 20.060801>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.007662, 39.522530, 20.185734> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.214083, 39.186928, 20.116726>,  <20.337934, 38.985565, 20.075321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.214083, 39.186928, 20.116726>,  <20.007662, 39.522530, 20.185734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.214083, 39.186928, 20.116726> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667381, 0.520091, -0.533018,
		0.536929, 0.159930, 0.828329,
		0.516052, -0.839004, -0.172518,
		20.368898, 38.935226, 20.064970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.630630, 39.710945, 20.315279>,  <20.007662, 39.522530, 20.185734>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.630630, 39.710945, 20.315279> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.661144, 39.369263, 20.109558>,  <20.679453, 39.164253, 19.986126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.661144, 39.369263, 20.109558>,  <20.630630, 39.710945, 20.315279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.661144, 39.369263, 20.109558> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727342, 0.400492, -0.557298,
		0.682023, -0.331557, 0.651855,
		0.076287, -0.854211, -0.514300,
		20.684031, 39.112999, 19.955269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.350716, 39.512615, 20.250593>,  <20.630630, 39.710945, 20.315279>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.350716, 39.512615, 20.250593> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.204821, 39.312553, 19.936443>,  <21.117285, 39.192516, 19.747953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.204821, 39.312553, 19.936443>,  <21.350716, 39.512615, 20.250593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.204821, 39.312553, 19.936443> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730907, 0.368756, -0.574277,
		0.576839, -0.783495, 0.231068,
		-0.364735, -0.500155, -0.785375,
		21.095400, 39.162506, 19.700830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.930830, 39.358524, 19.888216>,  <21.350716, 39.512615, 20.250593>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.930830, 39.358524, 19.888216> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.638336, 39.291302, 19.623775>,  <21.462839, 39.250969, 19.465111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.638336, 39.291302, 19.623775>,  <21.930830, 39.358524, 19.888216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.638336, 39.291302, 19.623775> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568762, 0.384820, -0.726927,
		0.376570, -0.907563, -0.185809,
		-0.731235, -0.168058, -0.661099,
		21.418966, 39.240883, 19.425446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.245249, 39.016171, 19.279793>,  <21.930830, 39.358524, 19.888216>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.245249, 39.016171, 19.279793> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.905233, 39.190121, 19.160923>,  <21.701223, 39.294491, 19.089602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.905233, 39.190121, 19.160923>,  <22.245249, 39.016171, 19.279793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.905233, 39.190121, 19.160923> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459713, 0.337164, -0.821574,
		-0.257089, -0.834986, -0.486522,
		-0.850041, 0.434878, -0.297172,
		21.650221, 39.320583, 19.071772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.190104, 38.857330, 18.480194>,  <22.245249, 39.016171, 19.279793>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.190104, 38.857330, 18.480194> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.943466, 39.164291, 18.550522>,  <21.795485, 39.348469, 18.592718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.943466, 39.164291, 18.550522>,  <22.190104, 38.857330, 18.480194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.943466, 39.164291, 18.550522> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233384, 0.391456, -0.890109,
		-0.751894, -0.507801, -0.420468,
		-0.616593, 0.767398, 0.175821,
		21.758488, 39.394512, 18.603268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.894615, 39.045525, 17.965225>,  <22.190104, 38.857330, 18.480194>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.894615, 39.045525, 17.965225> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.885262, 39.395508, 18.158676>,  <21.879648, 39.605499, 18.274746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.885262, 39.395508, 18.158676>,  <21.894615, 39.045525, 17.965225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.885262, 39.395508, 18.158676> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427733, 0.446001, -0.786211,
		-0.903603, 0.188477, -0.384680,
		-0.023385, 0.874963, 0.483626,
		21.878246, 39.657997, 18.303764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.740652, 39.575291, 17.382481>,  <21.894615, 39.045525, 17.965225>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.740652, 39.575291, 17.382481> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.853098, 39.814404, 17.682781>,  <21.920565, 39.957870, 17.862961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.853098, 39.814404, 17.682781>,  <21.740652, 39.575291, 17.382481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.853098, 39.814404, 17.682781> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687722, 0.420138, -0.592049,
		-0.669338, 0.682741, -0.293004,
		0.281114, 0.597787, 0.750750,
		21.937431, 39.993740, 17.908007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.875751, 40.366512, 17.076433>,  <21.740652, 39.575291, 17.382481>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.875751, 40.366512, 17.076433> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.070004, 40.343014, 17.425308>,  <22.186556, 40.328915, 17.634634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.070004, 40.343014, 17.425308>,  <21.875751, 40.366512, 17.076433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.070004, 40.343014, 17.425308> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743372, 0.552732, -0.376676,
		-0.459956, 0.831286, 0.312097,
		0.485632, -0.058750, 0.872187,
		22.215693, 40.325390, 17.686964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.152754, 41.038570, 17.273233>,  <21.875751, 40.366512, 17.076433>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.152754, 41.038570, 17.273233> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.380318, 40.791897, 17.490871>,  <22.516855, 40.643890, 17.621454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.380318, 40.791897, 17.490871>,  <22.152754, 41.038570, 17.273233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.380318, 40.791897, 17.490871> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807518, 0.544176, -0.227568,
		-0.155745, 0.568833, 0.807572,
		0.568909, -0.616686, 0.544096,
		22.550991, 40.606892, 17.654100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.496794, 41.467190, 17.772146>,  <22.152754, 41.038570, 17.273233>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.496794, 41.467190, 17.772146> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.710041, 41.135723, 17.703926>,  <22.837990, 40.936844, 17.662994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.710041, 41.135723, 17.703926>,  <22.496794, 41.467190, 17.772146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.710041, 41.135723, 17.703926> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799745, 0.559372, -0.217972,
		0.276027, -0.020190, 0.960938,
		0.533121, -0.828671, -0.170548,
		22.869978, 40.887123, 17.652761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.109262, 41.611710, 18.025854>,  <22.496794, 41.467190, 17.772146>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.109262, 41.611710, 18.025854> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.238760, 41.274448, 17.854137>,  <23.316458, 41.072094, 17.751108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.238760, 41.274448, 17.854137>,  <23.109262, 41.611710, 18.025854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.238760, 41.274448, 17.854137> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911910, 0.399011, -0.095974,
		0.252212, -0.360403, 0.898053,
		0.323743, -0.843149, -0.429290,
		23.335882, 41.021503, 17.725351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.664135, 41.354774, 18.423773>,  <23.109262, 41.611710, 18.025854>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.664135, 41.354774, 18.423773> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.690006, 41.228825, 18.045002>,  <23.705528, 41.153255, 17.817739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.690006, 41.228825, 18.045002>,  <23.664135, 41.354774, 18.423773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.690006, 41.228825, 18.045002> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923213, 0.379090, -0.062997,
		0.378807, -0.870141, 0.315215,
		0.064679, -0.314874, -0.946927,
		23.709410, 41.134361, 17.760923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.262657, 40.964127, 18.391958>,  <23.664135, 41.354774, 18.423773>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.262657, 40.964127, 18.391958> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.188732, 41.075039, 18.014820>,  <24.144377, 41.141586, 17.788538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.188732, 41.075039, 18.014820>,  <24.262657, 40.964127, 18.391958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.188732, 41.075039, 18.014820> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946683, 0.307830, -0.095036,
		0.263884, -0.910140, -0.319392,
		-0.184814, 0.277284, -0.942845,
		24.133287, 41.158226, 17.731966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.771664, 40.672287, 17.970228>,  <24.262657, 40.964127, 18.391958>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.771664, 40.672287, 17.970228> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.653015, 40.941463, 17.699181>,  <24.581827, 41.102970, 17.536552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.653015, 40.941463, 17.699181>,  <24.771664, 40.672287, 17.970228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.653015, 40.941463, 17.699181> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953071, 0.253620, -0.165327,
		0.060602, -0.694856, -0.716591,
		-0.296620, 0.672943, -0.677617,
		24.564030, 41.143345, 17.495895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<26.361288, 29.461975, 18.046272> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.690887, 29.605911, 18.221333>,  <26.888647, 29.692272, 18.326368>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.690887, 29.605911, 18.221333>,  <26.361288, 29.461975, 18.046272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.690887, 29.605911, 18.221333> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551637, 0.685791, 0.474749,
		-0.129306, -0.632619, 0.763592,
		0.824000, 0.359838, 0.437653,
		26.938087, 29.713863, 18.352629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.240242, 29.607929, 18.734821>,  <26.361288, 29.461975, 18.046272>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.240242, 29.607929, 18.734821> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.564211, 29.836224, 18.680729>,  <26.758593, 29.973200, 18.648273>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.564211, 29.836224, 18.680729>,  <26.240242, 29.607929, 18.734821>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.564211, 29.836224, 18.680729> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509691, 0.798936, 0.319242,
		0.290243, -0.189636, 0.937975,
		0.809922, 0.570735, -0.135230,
		26.807188, 30.007444, 18.640160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.101593, 30.028969, 19.212292>,  <26.240242, 29.607929, 18.734821>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.101593, 30.028969, 19.212292> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.373034, 30.205875, 18.977718>,  <26.535898, 30.312019, 18.836975>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.373034, 30.205875, 18.977718>,  <26.101593, 30.028969, 19.212292>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.373034, 30.205875, 18.977718> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416442, 0.889340, 0.188812,
		0.605043, 0.116087, 0.787684,
		0.678601, 0.442264, -0.586432,
		26.576614, 30.338554, 18.801788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.374409, 30.635473, 19.579533>,  <26.101593, 30.028969, 19.212292>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.374409, 30.635473, 19.579533> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.414223, 30.716610, 19.189877>,  <26.438110, 30.765291, 18.956083>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.414223, 30.716610, 19.189877>,  <26.374409, 30.635473, 19.579533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.414223, 30.716610, 19.189877> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331629, 0.929791, 0.159721,
		0.938145, 0.307155, 0.159813,
		0.099533, 0.202840, -0.974140,
		26.444082, 30.777462, 18.897635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.584284, 31.385784, 19.478228>,  <26.374409, 30.635473, 19.579533>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.584284, 31.385784, 19.478228> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.487379, 31.299850, 19.099777>,  <26.429235, 31.248291, 18.872707>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.487379, 31.299850, 19.099777>,  <26.584284, 31.385784, 19.478228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.487379, 31.299850, 19.099777> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262695, 0.953275, -0.149192,
		0.933970, 0.212398, -0.287380,
		-0.242264, -0.214834, -0.946126,
		26.414700, 31.235401, 18.815939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.971916, 31.847616, 18.926638>,  <26.584284, 31.385784, 19.478228>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.971916, 31.847616, 18.926638> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.615650, 31.712093, 18.805363>,  <26.401890, 31.630779, 18.732597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.615650, 31.712093, 18.805363>,  <26.971916, 31.847616, 18.926638>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.615650, 31.712093, 18.805363> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267567, 0.929744, -0.252950,
		0.367589, -0.144170, -0.918745,
		-0.890666, -0.338807, -0.303189,
		26.348450, 31.610451, 18.714405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.962559, 32.234272, 18.296776>,  <26.971916, 31.847616, 18.926638>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.962559, 32.234272, 18.296776> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.600615, 32.094128, 18.393501>,  <26.383448, 32.010040, 18.451536>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.600615, 32.094128, 18.393501>,  <26.962559, 32.234272, 18.296776>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.600615, 32.094128, 18.393501> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418401, 0.836713, -0.353344,
		-0.078533, -0.420903, -0.903700,
		-0.904861, -0.350360, 0.241816,
		26.329157, 31.989019, 18.466045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.506943, 32.489632, 17.724981>,  <26.962559, 32.234272, 18.296776>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.506943, 32.489632, 17.724981> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.239985, 32.380836, 18.002285>,  <26.079809, 32.315559, 18.168667>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.239985, 32.380836, 18.002285>,  <26.506943, 32.489632, 17.724981>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.239985, 32.380836, 18.002285> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569683, 0.786027, -0.240047,
		-0.479632, -0.555144, -0.679535,
		-0.667394, -0.271985, 0.693260,
		26.039766, 32.299240, 18.210262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.802919, 32.514145, 17.425430>,  <26.506943, 32.489632, 17.724981>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.802919, 32.514145, 17.425430> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.750841, 32.557194, 17.819683>,  <25.719595, 32.583023, 18.056234>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.750841, 32.557194, 17.819683>,  <25.802919, 32.514145, 17.425430>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.750841, 32.557194, 17.819683> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540293, 0.825825, -0.161541,
		-0.831344, -0.553561, -0.049372,
		-0.130195, 0.107620, 0.985630,
		25.711782, 32.589481, 18.115372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.993727, 32.667278, 17.643312>,  <25.802919, 32.514145, 17.425430>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.993727, 32.667278, 17.643312> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.223577, 32.815712, 17.935093>,  <25.361488, 32.904774, 18.110161>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.223577, 32.815712, 17.935093>,  <24.993727, 32.667278, 17.643312>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.223577, 32.815712, 17.935093> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623994, 0.775372, 0.097104,
		-0.529561, -0.510971, 0.677107,
		0.574627, 0.371089, 0.729450,
		25.395966, 32.927040, 18.153929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.526062, 32.914341, 18.063749>,  <24.993727, 32.667278, 17.643312>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.526062, 32.914341, 18.063749> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.851194, 33.123016, 18.167397>,  <25.046274, 33.248222, 18.229584>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.851194, 33.123016, 18.167397>,  <24.526062, 32.914341, 18.063749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.851194, 33.123016, 18.167397> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560951, 0.820921, 0.106876,
		-0.156958, -0.232224, 0.959915,
		0.812833, 0.521690, 0.259117,
		25.095045, 33.279522, 18.245132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.405228, 33.311554, 18.667278>,  <24.526062, 32.914341, 18.063749>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.405228, 33.311554, 18.667278> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.707666, 33.499943, 18.485508>,  <24.889130, 33.612976, 18.376446>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.707666, 33.499943, 18.485508>,  <24.405228, 33.311554, 18.667278>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.707666, 33.499943, 18.485508> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356458, 0.878683, 0.317576,
		0.548866, -0.078135, 0.832251,
		0.756098, 0.470969, -0.454427,
		24.934496, 33.641232, 18.349180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.292978, 32.766853, 19.143637>,  <24.405228, 33.311554, 18.667278>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.292978, 32.766853, 19.143637> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.114212, 33.071239, 19.331764>,  <24.006952, 33.253872, 19.444641>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.114212, 33.071239, 19.331764>,  <24.292978, 32.766853, 19.143637>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.114212, 33.071239, 19.331764> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433425, -0.644110, 0.630289,
		0.782564, 0.077838, 0.617685,
		-0.446918, 0.760962, 0.470321,
		23.980137, 33.299526, 19.472860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.359547, 32.757854, 19.949518>,  <24.292978, 32.766853, 19.143637>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.359547, 32.757854, 19.949518> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.032940, 32.965240, 19.847939>,  <23.836975, 33.089672, 19.786991>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.032940, 32.965240, 19.847939>,  <24.359547, 32.757854, 19.949518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.032940, 32.965240, 19.847939> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506529, -0.432312, 0.746012,
		0.276999, 0.737764, 0.615610,
		-0.816517, 0.518469, -0.253949,
		23.787985, 33.120781, 19.771753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.930265, 32.800465, 20.446167>,  <24.359547, 32.757854, 19.949518>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.930265, 32.800465, 20.446167> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.679789, 32.610062, 20.693165>,  <24.529503, 32.495819, 20.841364>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.679789, 32.610062, 20.693165>,  <24.930265, 32.800465, 20.446167>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.679789, 32.610062, 20.693165> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768539, -0.243512, 0.591649,
		-0.131259, 0.845058, 0.518313,
		-0.626193, -0.476004, 0.617497,
		24.491930, 32.467262, 20.878414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.128941, 33.003876, 21.113010>,  <24.930265, 32.800465, 20.446167>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.128941, 33.003876, 21.113010> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.927900, 32.663506, 21.174099>,  <24.807276, 32.459286, 21.210752>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.927900, 32.663506, 21.174099>,  <25.128941, 33.003876, 21.113010>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.927900, 32.663506, 21.174099> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589848, -0.208372, 0.780167,
		-0.632039, 0.482194, 0.606643,
		-0.502599, -0.850923, 0.152722,
		24.777121, 32.408230, 21.219915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.138494, 32.904583, 21.784412>,  <25.128941, 33.003876, 21.113010>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.138494, 32.904583, 21.784412> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.037727, 32.535149, 21.668808>,  <24.977266, 32.313488, 21.599445>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.037727, 32.535149, 21.668808>,  <25.138494, 32.904583, 21.784412>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.037727, 32.535149, 21.668808> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597582, -0.383366, 0.704220,
		-0.761205, 0.004698, 0.648495,
		-0.251920, -0.923584, -0.289013,
		24.962151, 32.258072, 21.582104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.951475, 32.596020, 22.419846>,  <25.138494, 32.904583, 21.784412>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.951475, 32.596020, 22.419846> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.061640, 32.323158, 22.148903>,  <25.127739, 32.159443, 21.986338>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.061640, 32.323158, 22.148903>,  <24.951475, 32.596020, 22.419846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.061640, 32.323158, 22.148903> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596341, -0.431420, 0.676945,
		-0.754006, -0.590376, 0.287977,
		0.275413, -0.682153, -0.677359,
		25.144264, 32.118511, 21.945696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.970322, 31.962309, 22.738596>,  <24.951475, 32.596020, 22.419846>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.970322, 31.962309, 22.738596> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.225473, 31.912167, 22.434650>,  <25.378565, 31.882080, 22.252283>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.225473, 31.912167, 22.434650>,  <24.970322, 31.962309, 22.738596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.225473, 31.912167, 22.434650> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606113, -0.526985, 0.595747,
		-0.475120, -0.840579, -0.260171,
		0.637878, -0.125358, -0.759866,
		25.416838, 31.874559, 22.206690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.144104, 31.300907, 22.770479>,  <24.970322, 31.962309, 22.738596>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.144104, 31.300907, 22.770479> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.441530, 31.465034, 22.559292>,  <25.619986, 31.563511, 22.432579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.441530, 31.465034, 22.559292>,  <25.144104, 31.300907, 22.770479>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.441530, 31.465034, 22.559292> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645618, -0.646063, 0.407160,
		-0.174034, -0.643614, -0.745301,
		0.743565, 0.410320, -0.527966,
		25.664600, 31.588131, 22.400902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.468269, 30.773453, 22.550171>,  <25.144104, 31.300907, 22.770479>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.468269, 30.773453, 22.550171> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.754166, 31.043377, 22.476658>,  <25.925703, 31.205332, 22.432550>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.754166, 31.043377, 22.476658>,  <25.468269, 30.773453, 22.550171>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.754166, 31.043377, 22.476658> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696618, -0.663511, 0.272905,
		0.062219, -0.323081, -0.944324,
		0.714739, 0.674813, -0.183782,
		25.968588, 31.245821, 22.421524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.981930, 30.430956, 21.970278>,  <25.468269, 30.773453, 22.550171>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.981930, 30.430956, 21.970278> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.151676, 30.708263, 22.203274>,  <26.253523, 30.874647, 22.343071>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.151676, 30.708263, 22.203274>,  <25.981930, 30.430956, 21.970278>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.151676, 30.708263, 22.203274> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754076, -0.626699, 0.196514,
		0.501282, 0.355847, -0.788726,
		0.424365, 0.693268, 0.582489,
		26.278986, 30.916245, 22.378021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.617901, 30.388695, 21.702417>,  <25.981930, 30.430956, 21.970278>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.617901, 30.388695, 21.702417> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.657873, 30.586494, 22.047783>,  <26.681856, 30.705175, 22.255003>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.657873, 30.586494, 22.047783>,  <26.617901, 30.388695, 21.702417>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.657873, 30.586494, 22.047783> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913286, -0.389962, 0.117637,
		0.394870, 0.776787, -0.490591,
		0.099933, 0.494501, 0.863413,
		26.687853, 30.734844, 22.306807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.185556, 30.704281, 21.625854>,  <26.617901, 30.388695, 21.702417>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.185556, 30.704281, 21.625854> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.153353, 30.709831, 22.024517>,  <27.134031, 30.713161, 22.263716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.153353, 30.709831, 22.024517>,  <27.185556, 30.704281, 21.625854>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.153353, 30.709831, 22.024517> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914144, -0.397542, 0.079377,
		0.397315, 0.917479, 0.019319,
		-0.080507, 0.013877, 0.996657,
		27.129200, 30.713995, 22.323515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.759312, 30.973352, 21.778450>,  <27.185556, 30.704281, 21.625854>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.759312, 30.973352, 21.778450> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.656389, 30.805664, 22.126713>,  <27.594635, 30.705051, 22.335670>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.656389, 30.805664, 22.126713>,  <27.759312, 30.973352, 21.778450>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.656389, 30.805664, 22.126713> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860179, -0.509919, 0.008686,
		0.440324, 0.751157, 0.491810,
		-0.257308, -0.419220, 0.870659,
		27.579197, 30.679897, 22.387911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.283457, 31.133907, 22.364273>,  <27.759312, 30.973352, 21.778450>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.283457, 31.133907, 22.364273> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.097437, 30.789864, 22.448120>,  <27.985825, 30.583437, 22.498428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.097437, 30.789864, 22.448120>,  <28.283457, 31.133907, 22.364273>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.097437, 30.789864, 22.448120> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882511, -0.469135, 0.032944,
		0.070004, 0.200312, 0.977228,
		-0.465051, -0.860109, 0.209619,
		27.957922, 30.531832, 22.511005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.732212, 30.743767, 22.863735>,  <28.283457, 31.133907, 22.364273>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.732212, 30.743767, 22.863735> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.471474, 30.474133, 22.724766>,  <28.315031, 30.312351, 22.641384>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.471474, 30.474133, 22.724766>,  <28.732212, 30.743767, 22.863735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.471474, 30.474133, 22.724766> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720642, -0.693272, -0.006972,
		-0.236158, -0.254911, 0.937683,
		-0.651847, -0.674088, -0.347421,
		28.275919, 30.271906, 22.620539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.729612, 30.097088, 23.347591>,  <28.732212, 30.743767, 22.863735>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.729612, 30.097088, 23.347591> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.633568, 29.973381, 22.979527>,  <28.575941, 29.899157, 22.758688>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.633568, 29.973381, 22.979527>,  <28.729612, 30.097088, 23.347591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.633568, 29.973381, 22.979527> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543121, -0.828449, 0.136718,
		-0.804591, -0.466933, 0.366887,
		-0.240109, -0.309266, -0.920164,
		28.561535, 29.880602, 22.703478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.708218, 30.554739, 23.946272>,  <28.729612, 30.097088, 23.347591>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.708218, 30.554739, 23.946272> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.091209, 30.454201, 24.002922>,  <29.321005, 30.393879, 24.036913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.091209, 30.454201, 24.002922>,  <28.708218, 30.554739, 23.946272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.091209, 30.454201, 24.002922> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252613, 0.967523, 0.009249,
		-0.139352, 0.026921, 0.989877,
		0.957480, -0.251344, 0.141627,
		29.378454, 30.378798, 24.045410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.893841, 30.998192, 24.501694>,  <28.708218, 30.554739, 23.946272>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.893841, 30.998192, 24.501694> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.243076, 30.876778, 24.349072>,  <29.452618, 30.803930, 24.257498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.243076, 30.876778, 24.349072>,  <28.893841, 30.998192, 24.501694>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.243076, 30.876778, 24.349072> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271790, 0.952702, -0.135972,
		0.404781, 0.015012, 0.914291,
		0.873088, -0.303534, -0.381556,
		29.505003, 30.785717, 24.234604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.326464, 31.478191, 24.703075>,  <28.893841, 30.998192, 24.501694>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.326464, 31.478191, 24.703075> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.540545, 31.296082, 24.418461>,  <29.668993, 31.186815, 24.247692>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.540545, 31.296082, 24.418461>,  <29.326464, 31.478191, 24.703075>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.540545, 31.296082, 24.418461> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470523, 0.860231, -0.196497,
		0.701545, -0.229628, 0.674615,
		0.535203, -0.455273, -0.711536,
		29.701105, 31.159500, 24.205000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.040232, 31.727585, 24.741541>,  <29.326464, 31.478191, 24.703075>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.040232, 31.727585, 24.741541> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.049732, 31.600521, 24.362377>,  <30.055433, 31.524282, 24.134880>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.049732, 31.600521, 24.362377>,  <30.040232, 31.727585, 24.741541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.049732, 31.600521, 24.362377> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565296, 0.786302, -0.249337,
		0.824546, -0.529926, 0.198248,
		0.023753, -0.317659, -0.947907,
		30.056858, 31.505224, 24.078005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.762733, 31.814606, 24.413284>,  <30.040232, 31.727585, 24.741541>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.762733, 31.814606, 24.413284> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.475754, 31.822952, 24.134766>,  <30.303566, 31.827959, 23.967653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.475754, 31.822952, 24.134766>,  <30.762733, 31.814606, 24.413284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.475754, 31.822952, 24.134766> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352482, 0.873022, -0.337029,
		0.600853, -0.487234, -0.633703,
		-0.717449, 0.020864, -0.696299,
		30.260519, 31.829212, 23.925877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.000141, 32.281231, 23.843288>,  <30.762733, 31.814606, 24.413284>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.000141, 32.281231, 23.843288> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.606497, 32.253445, 23.777931>,  <30.370310, 32.236774, 23.738718>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.606497, 32.253445, 23.777931>,  <31.000141, 32.281231, 23.843288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.606497, 32.253445, 23.777931> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032493, 0.834281, -0.550382,
		0.174544, -0.546947, -0.818770,
		-0.984113, -0.069461, -0.163391,
		30.311262, 32.232605, 23.728914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.955961, 32.393562, 23.107271>,  <31.000141, 32.281231, 23.843288>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.955961, 32.393562, 23.107271> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.609295, 32.455437, 23.296993>,  <30.401295, 32.492561, 23.410826>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.609295, 32.455437, 23.296993>,  <30.955961, 32.393562, 23.107271>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.609295, 32.455437, 23.296993> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067712, 0.905451, -0.419015,
		-0.494273, -0.395262, -0.774249,
		-0.866666, 0.154682, 0.474304,
		30.349295, 32.501842, 23.439285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.539583, 32.657677, 22.553696>,  <30.955961, 32.393562, 23.107271>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.539583, 32.657677, 22.553696> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.346901, 32.769032, 22.886070>,  <30.231291, 32.835846, 23.085495>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.346901, 32.769032, 22.886070>,  <30.539583, 32.657677, 22.553696>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.346901, 32.769032, 22.886070> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032429, 0.941887, -0.334362,
		-0.875732, -0.188011, -0.444685,
		-0.481707, 0.278391, 0.830937,
		30.202389, 32.852551, 23.135351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.044319, 33.018120, 22.321590>,  <30.539583, 32.657677, 22.553696>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.044319, 33.018120, 22.321590> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.070370, 33.122425, 22.706871>,  <30.086000, 33.185009, 22.938040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.070370, 33.122425, 22.706871>,  <30.044319, 33.018120, 22.321590>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.070370, 33.122425, 22.706871> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048083, 0.964951, -0.257988,
		-0.996718, -0.029513, 0.075380,
		0.065124, 0.260766, 0.963203,
		30.089907, 33.200653, 22.995832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.425137, 33.477375, 22.443998>,  <30.044319, 33.018120, 22.321590>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.425137, 33.477375, 22.443998> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.670115, 33.573990, 22.745083>,  <29.817101, 33.631958, 22.925734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.670115, 33.573990, 22.745083>,  <29.425137, 33.477375, 22.443998>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.670115, 33.573990, 22.745083> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009851, 0.949774, -0.312782,
		-0.790453, 0.198976, 0.579303,
		0.612443, 0.241533, 0.752712,
		29.853848, 33.646450, 22.970896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.266357, 34.052757, 22.676361>,  <29.425137, 33.477375, 22.443998>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.266357, 34.052757, 22.676361> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.640331, 34.049000, 22.818237>,  <29.864716, 34.046745, 22.903364>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.640331, 34.049000, 22.818237>,  <29.266357, 34.052757, 22.676361>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.640331, 34.049000, 22.818237> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068359, 0.985690, -0.154085,
		-0.348170, 0.168306, 0.922199,
		0.934936, -0.009392, 0.354693,
		29.920813, 34.046181, 22.924644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.371653, 34.744144, 23.050138>,  <29.266357, 34.052757, 22.676361>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.371653, 34.744144, 23.050138> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.739891, 34.613029, 22.965233>,  <29.960835, 34.534359, 22.914289>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.739891, 34.613029, 22.965233>,  <29.371653, 34.744144, 23.050138>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.739891, 34.613029, 22.965233> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326726, 0.944225, -0.041094,
		0.213896, -0.031522, 0.976348,
		0.920597, -0.327788, -0.212265,
		30.016069, 34.514694, 22.901554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<28.641655, 26.780605, 24.524837> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.035601, 26.729733, 24.477741>,  <29.271969, 26.699209, 24.449484>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.035601, 26.729733, 24.477741>,  <28.641655, 26.780605, 24.524837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.035601, 26.729733, 24.477741> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113641, 0.986801, -0.115366,
		0.130857, 0.100240, 0.986321,
		0.984867, -0.127183, -0.117738,
		29.331060, 26.691578, 24.442419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.940805, 27.164236, 25.027483>,  <28.641655, 26.780605, 24.524837>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.940805, 27.164236, 25.027483> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.245789, 27.129482, 24.771011>,  <29.428778, 27.108631, 24.617128>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.245789, 27.129482, 24.771011>,  <28.940805, 27.164236, 25.027483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.245789, 27.129482, 24.771011> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041632, 0.982303, -0.182614,
		0.645699, 0.165929, 0.745345,
		0.762456, -0.086884, -0.641180,
		29.474525, 27.103416, 24.578657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.429087, 27.523510, 25.249908>,  <28.940805, 27.164236, 25.027483>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.429087, 27.523510, 25.249908> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.519802, 27.494614, 24.861404>,  <29.574232, 27.477276, 24.628302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.519802, 27.494614, 24.861404>,  <29.429087, 27.523510, 25.249908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.519802, 27.494614, 24.861404> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254684, 0.966944, -0.012453,
		0.940055, -0.244541, 0.237692,
		0.226790, -0.072243, -0.971261,
		29.587839, 27.472940, 24.570026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.946045, 27.953562, 25.267632>,  <29.429087, 27.523510, 25.249908>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.946045, 27.953562, 25.267632> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.854343, 27.906174, 24.881180>,  <29.799322, 27.877741, 24.649309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.854343, 27.906174, 24.881180>,  <29.946045, 27.953562, 25.267632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.854343, 27.906174, 24.881180> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180969, 0.970072, -0.161898,
		0.956396, -0.211956, -0.200954,
		-0.229255, -0.118472, -0.966130,
		29.785566, 27.870632, 24.591341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.495407, 28.261513, 24.915325>,  <29.946045, 27.953562, 25.267632>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.495407, 28.261513, 24.915325> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.214052, 28.238358, 24.631947>,  <30.045240, 28.224464, 24.461920>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.214052, 28.238358, 24.631947>,  <30.495407, 28.261513, 24.915325>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.214052, 28.238358, 24.631947> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129303, 0.969629, -0.207608,
		0.698948, -0.237633, -0.674539,
		-0.703386, -0.057887, -0.708447,
		30.003036, 28.220991, 24.419413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.850615, 28.552086, 24.237196>,  <30.495407, 28.261513, 24.915325>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.850615, 28.552086, 24.237196> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.452572, 28.569862, 24.201897>,  <30.213747, 28.580528, 24.180717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.452572, 28.569862, 24.201897>,  <30.850615, 28.552086, 24.237196>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.452572, 28.569862, 24.201897> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069141, 0.951236, -0.300616,
		0.070586, -0.305247, -0.949654,
		-0.995107, 0.044441, -0.088249,
		30.154039, 28.583195, 24.175423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.619986, 28.873728, 23.544819>,  <30.850615, 28.552086, 24.237196>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.619986, 28.873728, 23.544819> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.313005, 28.912952, 23.798244>,  <30.128817, 28.936487, 23.950300>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.313005, 28.912952, 23.798244>,  <30.619986, 28.873728, 23.544819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.313005, 28.912952, 23.798244> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088370, 0.962620, -0.256035,
		-0.634987, -0.252482, -0.730098,
		-0.767452, 0.098060, 0.633563,
		30.082769, 28.942371, 23.988314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.021107, 29.112637, 23.126150>,  <30.619986, 28.873728, 23.544819>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.021107, 29.112637, 23.126150> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.965597, 29.209530, 23.510246>,  <29.932291, 29.267666, 23.740704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.965597, 29.209530, 23.510246>,  <30.021107, 29.112637, 23.126150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.965597, 29.209530, 23.510246> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268799, 0.924010, -0.271940,
		-0.953147, -0.295850, -0.063114,
		-0.138771, 0.242234, 0.960242,
		29.923965, 29.282200, 23.798319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.367857, 29.470100, 23.099642>,  <30.021107, 29.112637, 23.126150>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.367857, 29.470100, 23.099642> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.549606, 29.582352, 23.437824>,  <29.658655, 29.649702, 23.640734>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.549606, 29.582352, 23.437824>,  <29.367857, 29.470100, 23.099642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.549606, 29.582352, 23.437824> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132551, 0.959817, -0.247351,
		-0.880894, 0.000324, 0.473313,
		0.454373, 0.280628, 0.845454,
		29.685919, 29.666540, 23.691460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.735527, 29.207964, 23.379095>,  <29.367857, 29.470100, 23.099642>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.735527, 29.207964, 23.379095> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.750130, 29.318409, 22.994923>,  <28.758892, 29.384676, 22.764420>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.750130, 29.318409, 22.994923>,  <28.735527, 29.207964, 23.379095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.750130, 29.318409, 22.994923> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175547, -0.947899, -0.265838,
		-0.983794, -0.158895, -0.083078,
		0.036509, 0.276114, -0.960431,
		28.761082, 29.401243, 22.706793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.425133, 28.688288, 22.979666>,  <28.735527, 29.207964, 23.379095>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.425133, 28.688288, 22.979666> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.617971, 28.885017, 22.689648>,  <28.733675, 29.003056, 22.515636>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.617971, 28.885017, 22.689648>,  <28.425133, 28.688288, 22.979666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.617971, 28.885017, 22.689648> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142272, -0.860531, -0.489126,
		-0.864489, 0.132652, -0.484832,
		0.482097, 0.491822, -0.725047,
		28.762600, 29.032564, 22.472134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.093544, 28.373629, 22.425653>,  <28.425133, 28.688288, 22.979666>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.093544, 28.373629, 22.425653> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.417393, 28.529343, 22.249939>,  <28.611702, 28.622770, 22.144510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.417393, 28.529343, 22.249939>,  <28.093544, 28.373629, 22.425653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.417393, 28.529343, 22.249939> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026215, -0.771653, -0.635503,
		-0.586369, 0.502999, -0.634951,
		0.809620, 0.389285, -0.439287,
		28.660278, 28.646128, 22.118153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.926819, 28.543797, 21.687460>,  <28.093544, 28.373629, 22.425653>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.926819, 28.543797, 21.687460> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.317411, 28.498798, 21.761032>,  <28.551767, 28.471800, 21.805176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.317411, 28.498798, 21.761032>,  <27.926819, 28.543797, 21.687460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.317411, 28.498798, 21.761032> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011696, -0.824193, -0.566188,
		0.215288, 0.555023, -0.803493,
		0.976481, -0.112496, 0.183930,
		28.610355, 28.465050, 21.816212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.242472, 28.545753, 21.059067>,  <27.926819, 28.543797, 21.687460>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.242472, 28.545753, 21.059067> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.496424, 28.363831, 21.308891>,  <28.648794, 28.254677, 21.458786>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.496424, 28.363831, 21.308891>,  <28.242472, 28.545753, 21.059067>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.496424, 28.363831, 21.308891> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029126, -0.793713, -0.607595,
		0.772061, 0.403942, -0.490666,
		0.634881, -0.454809, 0.624560,
		28.686888, 28.227388, 21.496260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.697306, 28.496841, 20.647587>,  <28.242472, 28.545753, 21.059067>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.697306, 28.496841, 20.647587> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.767090, 28.254112, 20.957767>,  <28.808960, 28.108475, 21.143877>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.767090, 28.254112, 20.957767>,  <28.697306, 28.496841, 20.647587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.767090, 28.254112, 20.957767> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124907, -0.767530, -0.628725,
		0.976710, 0.206547, -0.058106,
		0.174459, -0.606824, 0.775454,
		28.819427, 28.072065, 21.190403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.309410, 28.205242, 20.475348>,  <28.697306, 28.496841, 20.647587>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.309410, 28.205242, 20.475348> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.144285, 27.947067, 20.732407>,  <29.045210, 27.792162, 20.886642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.144285, 27.947067, 20.732407>,  <29.309410, 28.205242, 20.475348>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.144285, 27.947067, 20.732407> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176334, -0.748860, -0.638838,
		0.893585, -0.150398, 0.422950,
		-0.412811, -0.645437, 0.642650,
		29.020441, 27.753437, 20.925201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.726553, 27.602816, 20.492603>,  <29.309410, 28.205242, 20.475348>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.726553, 27.602816, 20.492603> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.382824, 27.480141, 20.656315>,  <29.176586, 27.406536, 20.754541>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.382824, 27.480141, 20.656315>,  <29.726553, 27.602816, 20.492603>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.382824, 27.480141, 20.656315> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164884, -0.923657, -0.345936,
		0.484128, -0.229786, 0.844286,
		-0.859322, -0.306686, 0.409280,
		29.125027, 27.388134, 20.779099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.918264, 26.898350, 20.794477>,  <29.726553, 27.602816, 20.492603>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.918264, 26.898350, 20.794477> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.520638, 26.937527, 20.775562>,  <29.282061, 26.961033, 20.764214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.520638, 26.937527, 20.775562>,  <29.918264, 26.898350, 20.794477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.520638, 26.937527, 20.775562> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075182, -0.932985, -0.351976,
		-0.078595, -0.346333, 0.934814,
		-0.994068, 0.097944, -0.047290,
		29.222418, 26.966909, 20.761375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.657688, 26.313398, 21.095383>,  <29.918264, 26.898350, 20.794477>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.657688, 26.313398, 21.095383> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.372311, 26.439590, 20.845112>,  <29.201084, 26.515305, 20.694950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.372311, 26.439590, 20.845112>,  <29.657688, 26.313398, 21.095383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.372311, 26.439590, 20.845112> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201963, -0.947603, -0.247507,
		-0.670976, -0.050219, 0.739776,
		-0.713443, 0.315479, -0.625677,
		29.158278, 26.534235, 20.657410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.081242, 25.951797, 21.293505>,  <29.657688, 26.313398, 21.095383>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.081242, 25.951797, 21.293505> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.979261, 26.089256, 20.931973>,  <28.918074, 26.171732, 20.715054>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.979261, 26.089256, 20.931973>,  <29.081242, 25.951797, 21.293505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.979261, 26.089256, 20.931973> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356869, -0.902170, -0.242350,
		-0.898689, 0.260759, 0.352652,
		-0.254957, 0.343648, -0.903826,
		28.902775, 26.192350, 20.660824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.385405, 25.828167, 21.239067>,  <29.081242, 25.951797, 21.293505>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.385405, 25.828167, 21.239067> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.543804, 25.853577, 20.872646>,  <28.638844, 25.868822, 20.652794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.543804, 25.853577, 20.872646>,  <28.385405, 25.828167, 21.239067>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.543804, 25.853577, 20.872646> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358162, -0.907903, -0.217787,
		-0.845520, 0.414338, -0.336776,
		0.395998, 0.063523, -0.916052,
		28.662603, 25.872633, 20.597832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.832827, 25.680828, 20.715368>,  <28.385405, 25.828167, 21.239067>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.832827, 25.680828, 20.715368> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.178680, 25.610462, 20.527130>,  <28.386192, 25.568243, 20.414186>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.178680, 25.610462, 20.527130>,  <27.832827, 25.680828, 20.715368>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.178680, 25.610462, 20.527130> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400548, -0.806787, -0.434346,
		-0.303262, 0.564046, -0.768039,
		0.864635, -0.175916, -0.470595,
		28.438070, 25.557688, 20.385952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.547857, 25.383284, 20.136042>,  <27.832827, 25.680828, 20.715368>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.547857, 25.383284, 20.136042> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.933531, 25.278290, 20.151302>,  <28.164934, 25.215294, 20.160460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.933531, 25.278290, 20.151302>,  <27.547857, 25.383284, 20.136042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.933531, 25.278290, 20.151302> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229890, -0.898730, -0.373410,
		0.132303, 0.351264, -0.926881,
		0.964182, -0.262484, 0.038152,
		28.222786, 25.199545, 20.162748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.248371, 25.770397, 20.321045> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.998573, 25.620560, 20.595181>,  <32.848694, 25.530657, 20.759663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.998573, 25.620560, 20.595181>,  <33.248371, 25.770397, 20.321045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.998573, 25.620560, 20.595181> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473702, 0.879322, 0.048977,
		-0.620982, -0.294062, -0.726574,
		-0.624490, -0.374593, 0.685341,
		32.811226, 25.508183, 20.800783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.672783, 25.917124, 20.110384>,  <33.248371, 25.770397, 20.321045>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.672783, 25.917124, 20.110384> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.606079, 25.861916, 20.500900>,  <32.566059, 25.828791, 20.735210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.606079, 25.861916, 20.500900>,  <32.672783, 25.917124, 20.110384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.606079, 25.861916, 20.500900> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585706, 0.810394, 0.014524,
		-0.793184, -0.569397, -0.215977,
		-0.166757, -0.138019, 0.976290,
		32.556053, 25.820509, 20.793787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.999014, 25.853203, 20.145967>,  <32.672783, 25.917124, 20.110384>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.999014, 25.853203, 20.145967> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.127842, 25.955448, 20.510590>,  <32.205139, 26.016796, 20.729362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.127842, 25.955448, 20.510590>,  <31.999014, 25.853203, 20.145967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.127842, 25.955448, 20.510590> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667821, 0.743818, 0.027377,
		-0.671032, -0.617572, 0.410269,
		0.322073, 0.255615, 0.911554,
		32.224464, 26.032133, 20.784056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.364285, 26.086334, 20.586708>,  <31.999014, 25.853203, 20.145967>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.364285, 26.086334, 20.586708> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.706776, 26.256420, 20.704056>,  <31.912270, 26.358473, 20.774464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.706776, 26.256420, 20.704056>,  <31.364285, 26.086334, 20.586708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.706776, 26.256420, 20.704056> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416968, 0.904103, -0.093464,
		-0.304978, -0.042299, 0.951419,
		0.856227, 0.425216, 0.293369,
		31.963644, 26.383986, 20.792067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.150591, 26.631578, 21.062140>,  <31.364285, 26.086334, 20.586708>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.150591, 26.631578, 21.062140> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.518631, 26.728672, 20.939178>,  <31.739454, 26.786928, 20.865402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.518631, 26.728672, 20.939178>,  <31.150591, 26.631578, 21.062140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.518631, 26.728672, 20.939178> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280524, 0.956104, -0.084688,
		0.273354, 0.164156, 0.947803,
		0.920100, 0.242732, -0.307404,
		31.794661, 26.801491, 20.846956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.171951, 27.218779, 21.396132>,  <31.150591, 26.631578, 21.062140>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.171951, 27.218779, 21.396132> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.487200, 27.219284, 21.149925>,  <31.676350, 27.219587, 21.002201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.487200, 27.219284, 21.149925>,  <31.171951, 27.218779, 21.396132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.487200, 27.219284, 21.149925> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177706, 0.957881, -0.225574,
		0.589307, 0.287161, 0.755152,
		0.788123, 0.001263, -0.615517,
		31.723637, 27.219664, 20.965271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.527109, 27.710976, 21.639215>,  <31.171951, 27.218779, 21.396132>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.527109, 27.710976, 21.639215> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.658566, 27.667965, 21.263889>,  <31.737438, 27.642159, 21.038694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.658566, 27.667965, 21.263889>,  <31.527109, 27.710976, 21.639215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.658566, 27.667965, 21.263889> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033013, 0.991583, -0.125192,
		0.943879, 0.072120, 0.322323,
		0.328639, -0.107525, -0.938315,
		31.757156, 27.635708, 20.982395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.026237, 28.053741, 21.567081>,  <31.527109, 27.710976, 21.639215>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.026237, 28.053741, 21.567081> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.928740, 28.028122, 21.179993>,  <31.870239, 28.012751, 20.947739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.928740, 28.028122, 21.179993>,  <32.026237, 28.053741, 21.567081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.928740, 28.028122, 21.179993> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049279, 0.995710, -0.078312,
		0.968586, -0.066777, -0.239546,
		-0.243748, -0.064047, -0.967722,
		31.855616, 28.008907, 20.889677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.443439, 28.590826, 21.345705>,  <32.026237, 28.053741, 21.567081>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.443439, 28.590826, 21.345705> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.216217, 28.503044, 21.028427>,  <32.079884, 28.450375, 20.838060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.216217, 28.503044, 21.028427>,  <32.443439, 28.590826, 21.345705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.216217, 28.503044, 21.028427> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045403, 0.953967, -0.296453,
		0.821739, -0.204414, -0.531939,
		-0.568052, -0.219456, -0.793193,
		32.045803, 28.437208, 20.790468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.802967, 28.761608, 20.603275>,  <32.443439, 28.590826, 21.345705>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.802967, 28.761608, 20.603275> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.409592, 28.743000, 20.533199>,  <32.173569, 28.731836, 20.491154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.409592, 28.743000, 20.533199>,  <32.802967, 28.761608, 20.603275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.409592, 28.743000, 20.533199> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028177, 0.915524, -0.401274,
		0.179059, -0.399563, -0.899048,
		-0.983435, -0.046519, -0.175191,
		32.114563, 28.729044, 20.480642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.726746, 28.858538, 19.879208>,  <32.802967, 28.761608, 20.603275>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.726746, 28.858538, 19.879208> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.401585, 28.968288, 20.084694>,  <32.206490, 29.034140, 20.207985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.401585, 28.968288, 20.084694>,  <32.726746, 28.858538, 19.879208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.401585, 28.968288, 20.084694> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001521, 0.881067, -0.472989,
		-0.582397, -0.385276, -0.715805,
		-0.812903, 0.274379, 0.513717,
		32.157715, 29.050602, 20.238810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.358978, 29.156452, 19.399805>,  <32.726746, 28.858538, 19.879208>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.358978, 29.156452, 19.399805> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.182976, 29.275787, 19.738602>,  <32.077374, 29.347387, 19.941879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.182976, 29.275787, 19.738602>,  <32.358978, 29.156452, 19.399805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.182976, 29.275787, 19.738602> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005453, 0.944071, -0.329698,
		-0.897980, -0.140449, -0.417020,
		-0.440002, 0.298337, 0.846991,
		32.050976, 29.365288, 19.992699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.884865, 29.685413, 19.157257>,  <32.358978, 29.156452, 19.399805>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.884865, 29.685413, 19.157257> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.905813, 29.749508, 19.551533>,  <31.918383, 29.787966, 19.788097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.905813, 29.749508, 19.551533>,  <31.884865, 29.685413, 19.157257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.905813, 29.749508, 19.551533> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154072, 0.976521, -0.150562,
		-0.986671, -0.143982, 0.075831,
		0.052373, 0.160238, 0.985688,
		31.921526, 29.797579, 19.847239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.309889, 30.128824, 19.301680>,  <31.884865, 29.685413, 19.157257>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.309889, 30.128824, 19.301680> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.603340, 30.180981, 19.568451>,  <31.779411, 30.212275, 19.728514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.603340, 30.180981, 19.568451>,  <31.309889, 30.128824, 19.301680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.603340, 30.180981, 19.568451> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005905, 0.980158, -0.198130,
		-0.679528, 0.149292, 0.718299,
		0.733626, 0.130393, 0.666926,
		31.823427, 30.220098, 19.768528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.735661, 30.573387, 19.041336>,  <31.309889, 30.128824, 19.301680>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.735661, 30.573387, 19.041336> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.760271, 30.648899, 18.649300>,  <30.775038, 30.694206, 18.414078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.760271, 30.648899, 18.649300>,  <30.735661, 30.573387, 19.041336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.760271, 30.648899, 18.649300> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418622, -0.896289, -0.146358,
		-0.906074, -0.401283, -0.134175,
		0.061528, 0.188780, -0.980090,
		30.778730, 30.705534, 18.355272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.350819, 30.018665, 18.585814>,  <30.735661, 30.573387, 19.041336>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.350819, 30.018665, 18.585814> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.655392, 30.198982, 18.399475>,  <30.838135, 30.307173, 18.287672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.655392, 30.198982, 18.399475>,  <30.350819, 30.018665, 18.585814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.655392, 30.198982, 18.399475> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291371, -0.879938, -0.375250,
		-0.579074, 0.149993, -0.801359,
		0.761430, 0.450790, -0.465846,
		30.883821, 30.334219, 18.259722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.349150, 29.643221, 17.961624>,  <30.350819, 30.018665, 18.585814>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.349150, 29.643221, 17.961624> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.697395, 29.834511, 17.915432>,  <30.906342, 29.949284, 17.887716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.697395, 29.834511, 17.915432>,  <30.349150, 29.643221, 17.961624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.697395, 29.834511, 17.915432> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381269, -0.804207, -0.455945,
		-0.310915, 0.352921, -0.882484,
		0.870612, 0.478224, -0.115482,
		30.958578, 29.977978, 17.880787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.568670, 29.524906, 17.284660>,  <30.349150, 29.643221, 17.961624>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.568670, 29.524906, 17.284660> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.907251, 29.642750, 17.462074>,  <31.110399, 29.713455, 17.568523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.907251, 29.642750, 17.462074>,  <30.568670, 29.524906, 17.284660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.907251, 29.642750, 17.462074> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472060, -0.800560, -0.369137,
		0.246326, 0.521833, -0.816709,
		0.846453, 0.294608, 0.443535,
		31.161188, 29.731133, 17.595135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.075111, 29.313734, 16.823828>,  <30.568670, 29.524906, 17.284660>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.075111, 29.313734, 16.823828> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.299795, 29.346790, 17.153107>,  <31.434605, 29.366623, 17.350674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.299795, 29.346790, 17.153107>,  <31.075111, 29.313734, 16.823828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.299795, 29.346790, 17.153107> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434249, -0.876371, -0.208332,
		0.704211, 0.474494, -0.528150,
		0.561707, 0.082639, 0.823198,
		31.468307, 29.371582, 17.400066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.832821, 29.217875, 16.639023>,  <31.075111, 29.313734, 16.823828>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.832821, 29.217875, 16.639023> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.787352, 29.111195, 17.021843>,  <31.760069, 29.047186, 17.251535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.787352, 29.111195, 17.021843>,  <31.832821, 29.217875, 16.639023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.787352, 29.111195, 17.021843> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402760, -0.892963, -0.201001,
		0.908219, 0.362614, 0.208923,
		-0.113675, -0.266699, 0.957053,
		31.753248, 29.031185, 17.308958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.359398, 28.753515, 16.740189>,  <31.832821, 29.217875, 16.639023>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.359398, 28.753515, 16.740189> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.132053, 28.684010, 17.061878>,  <31.995647, 28.642305, 17.254892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.132053, 28.684010, 17.061878>,  <32.359398, 28.753515, 16.740189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.132053, 28.684010, 17.061878> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457937, -0.878867, 0.133740,
		0.683565, 0.444295, 0.579086,
		-0.568360, -0.173765, 0.804222,
		31.961546, 28.631880, 17.303144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.726723, 28.247459, 17.130280>,  <32.359398, 28.753515, 16.740189>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.726723, 28.247459, 17.130280> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.359993, 28.213566, 17.286358>,  <32.139954, 28.193230, 17.380005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.359993, 28.213566, 17.286358>,  <32.726723, 28.247459, 17.130280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.359993, 28.213566, 17.286358> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195425, -0.947406, 0.253441,
		0.348198, 0.308614, 0.885164,
		-0.916825, -0.084735, 0.390195,
		32.084946, 28.188145, 17.403416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.877674, 27.944958, 17.810801>,  <32.726723, 28.247459, 17.130280>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.877674, 27.944958, 17.810801> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.494930, 27.871342, 17.720867>,  <32.265285, 27.827173, 17.666906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.494930, 27.871342, 17.720867>,  <32.877674, 27.944958, 17.810801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.494930, 27.871342, 17.720867> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088528, -0.921690, 0.377692,
		-0.276738, 0.341494, 0.898220,
		-0.956859, -0.184039, -0.224835,
		32.207874, 27.816130, 17.653418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.475136, 27.697767, 18.401634>,  <32.877674, 27.944958, 17.810801>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.475136, 27.697767, 18.401634> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.264603, 27.574795, 18.084534>,  <32.138283, 27.501011, 17.894274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.264603, 27.574795, 18.084534>,  <32.475136, 27.697767, 18.401634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.264603, 27.574795, 18.084534> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023275, -0.926787, 0.374866,
		-0.849958, 0.215757, 0.480646,
		-0.526336, -0.307433, -0.792752,
		32.106701, 27.482565, 17.846708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.809937, 27.362007, 18.665405>,  <32.475136, 27.697767, 18.401634>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.809937, 27.362007, 18.665405> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.892096, 27.229698, 18.296970>,  <31.941391, 27.150312, 18.075909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.892096, 27.229698, 18.296970>,  <31.809937, 27.362007, 18.665405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.892096, 27.229698, 18.296970> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040263, -0.937501, 0.345646,
		-0.977850, -0.108081, -0.179241,
		0.205396, -0.330774, -0.921087,
		31.953714, 27.130466, 18.020645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.480181, 26.786575, 18.649397>,  <31.809937, 27.362007, 18.665405>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.480181, 26.786575, 18.649397> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.712633, 26.737518, 18.327591>,  <31.852104, 26.708084, 18.134508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.712633, 26.737518, 18.327591>,  <31.480181, 26.786575, 18.649397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.712633, 26.737518, 18.327591> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148602, -0.955966, 0.253073,
		-0.800126, -0.266621, -0.537319,
		0.581134, -0.122643, -0.804514,
		31.886972, 26.700726, 18.086237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.196487, 26.276331, 18.326967>,  <31.480181, 26.786575, 18.649397>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.196487, 26.276331, 18.326967> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.570976, 26.277634, 18.186413>,  <31.795670, 26.278416, 18.102079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.570976, 26.277634, 18.186413>,  <31.196487, 26.276331, 18.326967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.570976, 26.277634, 18.186413> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120914, -0.941880, 0.313436,
		-0.329944, -0.335934, -0.882204,
		0.936225, 0.003255, -0.351387,
		31.851843, 26.278610, 18.080997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.164484, 25.835083, 17.916105>,  <31.196487, 26.276331, 18.326967>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.164484, 25.835083, 17.916105> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.562592, 25.845963, 17.953415>,  <31.801456, 25.852489, 17.975801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.562592, 25.845963, 17.953415>,  <31.164484, 25.835083, 17.916105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.562592, 25.845963, 17.953415> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019775, -0.996630, 0.079614,
		0.095125, -0.077393, -0.992452,
		0.995269, 0.027199, 0.093274,
		31.861172, 25.854122, 17.981398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.743351, 25.567337, 17.278454>,  <31.164484, 25.835083, 17.916105>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.743351, 25.567337, 17.278454> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.374123, 25.414364, 17.262032>,  <30.152586, 25.322580, 17.252178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.374123, 25.414364, 17.262032>,  <30.743351, 25.567337, 17.278454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.374123, 25.414364, 17.262032> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383221, 0.923563, 0.013177,
		0.032880, 0.027897, -0.999070,
		-0.923071, -0.382431, -0.041057,
		30.097200, 25.299635, 17.249714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.319706, 25.887882, 16.685770>,  <30.743351, 25.567337, 17.278454>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.319706, 25.887882, 16.685770> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.079048, 25.735680, 16.966694>,  <29.934654, 25.644358, 17.135248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.079048, 25.735680, 16.966694>,  <30.319706, 25.887882, 16.685770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.079048, 25.735680, 16.966694> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529923, 0.848028, 0.005488,
		-0.597667, -0.368869, -0.711850,
		-0.601644, -0.380505, 0.702310,
		29.898556, 25.621529, 17.177387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.630899, 26.285843, 16.547932>,  <30.319706, 25.887882, 16.685770>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.630899, 26.285843, 16.547932> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.615822, 26.115189, 16.909386>,  <29.606775, 26.012796, 17.126259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.615822, 26.115189, 16.909386>,  <29.630899, 26.285843, 16.547932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.615822, 26.115189, 16.909386> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695526, 0.660493, 0.282828,
		-0.717511, -0.617842, -0.321635,
		-0.037695, -0.426638, 0.903637,
		29.604513, 25.987198, 17.180477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.919832, 26.181406, 16.698050>,  <29.630899, 26.285843, 16.547932>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.919832, 26.181406, 16.698050> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.113186, 26.217422, 17.046356>,  <29.229198, 26.239033, 17.255341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.113186, 26.217422, 17.046356>,  <28.919832, 26.181406, 16.698050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.113186, 26.217422, 17.046356> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692010, 0.648516, 0.317095,
		-0.536153, -0.755857, 0.375793,
		0.483386, 0.090041, 0.870765,
		29.258202, 26.244434, 17.307585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.390499, 26.247318, 17.189619>,  <28.919832, 26.181406, 16.698050>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.390499, 26.247318, 17.189619> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.721203, 26.392414, 17.361614>,  <28.919624, 26.479471, 17.464811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.721203, 26.392414, 17.361614>,  <28.390499, 26.247318, 17.189619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.721203, 26.392414, 17.361614> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506985, 0.811684, 0.290060,
		-0.243799, -0.457807, 0.854970,
		0.826757, 0.362741, 0.429989,
		28.969231, 26.501236, 17.490610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.107443, 26.529242, 17.809929>,  <28.390499, 26.247318, 17.189619>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.107443, 26.529242, 17.809929> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.465778, 26.704193, 17.778492>,  <28.680779, 26.809164, 17.759630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.465778, 26.704193, 17.778492>,  <28.107443, 26.529242, 17.809929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.465778, 26.704193, 17.778492> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395573, 0.865453, 0.307430,
		0.202481, -0.244318, 0.948320,
		0.895837, 0.437378, -0.078592,
		28.734529, 26.835407, 17.754913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.307890, 26.810772, 18.479155>,  <28.107443, 26.529242, 17.809929>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.307890, 26.810772, 18.479155> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.510004, 27.016972, 18.202332>,  <28.631273, 27.140692, 18.036238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.510004, 27.016972, 18.202332>,  <28.307890, 26.810772, 18.479155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.510004, 27.016972, 18.202332> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412953, 0.848624, 0.330618,
		0.757731, 0.118731, 0.641675,
		0.505286, 0.515501, -0.692059,
		28.661591, 27.171621, 17.994713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.418350, 27.501753, 18.787685>,  <28.307890, 26.810772, 18.479155>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.418350, 27.501753, 18.787685> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.535673, 27.565205, 18.410580>,  <28.606068, 27.603275, 18.184317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.535673, 27.565205, 18.410580>,  <28.418350, 27.501753, 18.787685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.535673, 27.565205, 18.410580> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123462, 0.984165, 0.127185,
		0.948013, 0.079092, 0.308248,
		0.293307, 0.158630, -0.942766,
		28.623665, 27.612793, 18.127750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.919262, 28.066566, 18.864922>,  <28.418350, 27.501753, 18.787685>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.919262, 28.066566, 18.864922> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.739809, 28.047592, 18.507938>,  <28.632137, 28.036207, 18.293749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.739809, 28.047592, 18.507938>,  <28.919262, 28.066566, 18.864922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.739809, 28.047592, 18.507938> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270424, 0.958985, 0.084969,
		0.851821, 0.279461, -0.443061,
		-0.448634, -0.047436, -0.892455,
		28.605219, 28.033361, 18.240202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.832022, 28.796757, 18.723890>,  <28.919262, 28.066566, 18.864922>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.832022, 28.796757, 18.723890> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.609262, 28.637478, 18.432327>,  <28.475607, 28.541910, 18.257389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.609262, 28.637478, 18.432327>,  <28.832022, 28.796757, 18.723890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.609262, 28.637478, 18.432327> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358241, 0.906915, -0.221739,
		0.749353, 0.137639, -0.647708,
		-0.556896, -0.398197, -0.728908,
		28.442194, 28.518019, 18.213655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.860575, 29.243391, 18.070719>,  <28.832022, 28.796757, 18.723890>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.860575, 29.243391, 18.070719> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.530409, 29.017776, 18.061279>,  <28.332310, 28.882408, 18.055614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.530409, 29.017776, 18.061279>,  <28.860575, 29.243391, 18.070719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.530409, 29.017776, 18.061279> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543897, 0.805749, -0.234402,
		0.151227, -0.180642, -0.971853,
		-0.825413, -0.564036, -0.023601,
		28.282785, 28.848566, 18.054199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.456484, 29.487007, 17.523600>,  <28.860575, 29.243391, 18.070719>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.456484, 29.487007, 17.523600> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.197426, 29.286495, 17.753128>,  <28.041990, 29.166187, 17.890844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.197426, 29.286495, 17.753128>,  <28.456484, 29.487007, 17.523600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.197426, 29.286495, 17.753128> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648512, 0.758000, -0.069771,
		-0.399982, -0.417317, -0.816003,
		-0.647647, -0.501281, 0.573822,
		28.003132, 29.136110, 17.925274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.829226, 29.725002, 17.223288>,  <28.456484, 29.487007, 17.523600>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.829226, 29.725002, 17.223288> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.734577, 29.557117, 17.573795>,  <27.677788, 29.456387, 17.784100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.734577, 29.557117, 17.573795>,  <27.829226, 29.725002, 17.223288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.734577, 29.557117, 17.573795> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784753, 0.614315, 0.082337,
		-0.572865, -0.668174, -0.474731,
		-0.236619, -0.419714, 0.876271,
		27.663591, 29.431204, 17.836678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.133221, 29.634295, 17.367222>,  <27.829226, 29.725002, 17.223288>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.133221, 29.634295, 17.367222> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.248732, 29.608715, 17.749325>,  <27.318039, 29.593369, 17.978586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.248732, 29.608715, 17.749325>,  <27.133221, 29.634295, 17.367222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.248732, 29.608715, 17.749325> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792169, 0.544369, 0.275917,
		-0.537657, -0.836405, 0.106545,
		0.288778, -0.063947, 0.955258,
		27.335365, 29.589531, 18.035902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<41.073338, 39.371689, 26.074305> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.302227, 39.266464, 26.385010>,  <41.439560, 39.203331, 26.571432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.302227, 39.266464, 26.385010>,  <41.073338, 39.371689, 26.074305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.302227, 39.266464, 26.385010> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154038, -0.895825, -0.416858,
		0.805501, 0.358187, -0.472091,
		0.572224, -0.263059, 0.776762,
		41.473896, 39.187546, 26.618038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.704056, 39.159920, 25.750406>,  <41.073338, 39.371689, 26.074305>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.704056, 39.159920, 25.750406> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.693123, 38.999619, 26.116718>,  <41.686565, 38.903439, 26.336506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.693123, 38.999619, 26.116718>,  <41.704056, 39.159920, 25.750406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.693123, 38.999619, 26.116718> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319965, -0.871430, -0.371795,
		0.947035, 0.282856, 0.152043,
		-0.027330, -0.400752, 0.915779,
		41.684925, 38.879395, 26.391453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.246479, 38.728302, 25.721968>,  <41.704056, 39.159920, 25.750406>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.246479, 38.728302, 25.721968> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.014931, 38.576443, 26.010628>,  <41.876003, 38.485329, 26.183825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.014931, 38.576443, 26.010628>,  <42.246479, 38.728302, 25.721968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.014931, 38.576443, 26.010628> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268707, -0.924384, -0.270758,
		0.769875, 0.037180, 0.637111,
		-0.578869, -0.379646, 0.721651,
		41.841270, 38.462547, 26.227123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.667751, 38.266541, 26.111685>,  <42.246479, 38.728302, 25.721968>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.667751, 38.266541, 26.111685> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.286736, 38.159214, 26.169197>,  <42.058125, 38.094818, 26.203705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.286736, 38.159214, 26.169197>,  <42.667751, 38.266541, 26.111685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.286736, 38.159214, 26.169197> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199206, -0.906578, -0.372065,
		0.230178, -0.325766, 0.917003,
		-0.952541, -0.268314, 0.143780,
		42.000973, 38.078720, 26.212332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.648193, 37.546196, 26.286249>,  <42.667751, 38.266541, 26.111685>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.648193, 37.546196, 26.286249> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.268890, 37.600082, 26.171246>,  <42.041309, 37.632416, 26.102243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.268890, 37.600082, 26.171246>,  <42.648193, 37.546196, 26.286249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.268890, 37.600082, 26.171246> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035672, -0.944995, -0.325134,
		-0.315494, -0.298054, 0.900904,
		-0.948257, 0.134715, -0.287508,
		41.984413, 37.640495, 26.084993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.426834, 36.908352, 26.394806>,  <42.648193, 37.546196, 26.286249>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.426834, 36.908352, 26.394806> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.133175, 37.074665, 26.180088>,  <41.956978, 37.174454, 26.051256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.133175, 37.074665, 26.180088>,  <42.426834, 36.908352, 26.394806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.133175, 37.074665, 26.180088> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258339, -0.902173, -0.345464,
		-0.627920, -0.114948, 0.769743,
		-0.734151, 0.415779, -0.536796,
		41.912930, 37.199398, 26.019049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.756981, 36.553970, 26.540110>,  <42.426834, 36.908352, 26.394806>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.756981, 36.553970, 26.540110> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.712627, 36.749279, 26.193863>,  <41.686016, 36.866467, 25.986115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.712627, 36.749279, 26.193863>,  <41.756981, 36.553970, 26.540110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.712627, 36.749279, 26.193863> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132225, -0.870493, -0.474087,
		-0.984998, 0.061888, 0.161086,
		-0.110884, 0.488275, -0.865617,
		41.679363, 36.895760, 25.934177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.025608, 36.326817, 26.160624>,  <41.756981, 36.553970, 26.540110>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.025608, 36.326817, 26.160624> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.263634, 36.505688, 25.893513>,  <41.406448, 36.613010, 25.733246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.263634, 36.505688, 25.893513>,  <41.025608, 36.326817, 26.160624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.263634, 36.505688, 25.893513> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262006, -0.677565, -0.687211,
		-0.759767, 0.583899, -0.286034,
		0.595068, 0.447177, -0.667777,
		41.442154, 36.639839, 25.693180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.619205, 36.365578, 25.509680>,  <41.025608, 36.326817, 26.160624>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.619205, 36.365578, 25.509680> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.004562, 36.371269, 25.402588>,  <41.235775, 36.374683, 25.338333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.004562, 36.371269, 25.402588>,  <40.619205, 36.365578, 25.509680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.004562, 36.371269, 25.402588> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158686, -0.774642, -0.612167,
		-0.216104, 0.632240, -0.744024,
		0.963389, 0.014225, -0.267731,
		41.293579, 36.375538, 25.322269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.540791, 36.112694, 24.900349>,  <40.619205, 36.365578, 25.509680>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.540791, 36.112694, 24.900349> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.939728, 36.104965, 24.928467>,  <41.179089, 36.100330, 24.945337>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.939728, 36.104965, 24.928467>,  <40.540791, 36.112694, 24.900349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.939728, 36.104965, 24.928467> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024963, -0.815469, -0.578263,
		0.068495, 0.578479, -0.812816,
		0.997339, -0.019317, 0.070296,
		41.238930, 36.099171, 24.949556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.810284, 36.207870, 24.293358>,  <40.540791, 36.112694, 24.900349>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.810284, 36.207870, 24.293358> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.090595, 36.011230, 24.500137>,  <41.258781, 35.893246, 24.624205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.090595, 36.011230, 24.500137>,  <40.810284, 36.207870, 24.293358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.090595, 36.011230, 24.500137> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048922, -0.756064, -0.652667,
		0.711696, 0.432088, -0.553886,
		0.700783, -0.491597, 0.516949,
		41.300831, 35.863750, 24.655222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.141010, 35.940414, 23.794777>,  <40.810284, 36.207870, 24.293358>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.141010, 35.940414, 23.794777> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.253063, 35.722786, 24.111134>,  <41.320293, 35.592209, 24.300947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.253063, 35.722786, 24.111134>,  <41.141010, 35.940414, 23.794777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.253063, 35.722786, 24.111134> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043632, -0.815813, -0.576668,
		0.958969, 0.196052, -0.204797,
		0.280133, -0.544071, 0.790893,
		41.337105, 35.559566, 24.348402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.666672, 35.501701, 23.580767>,  <41.141010, 35.940414, 23.794777>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.666672, 35.501701, 23.580767> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.511684, 35.333473, 23.908909>,  <41.418694, 35.232536, 24.105795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.511684, 35.333473, 23.908909>,  <41.666672, 35.501701, 23.580767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.511684, 35.333473, 23.908909> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025518, -0.884638, -0.465579,
		0.921529, -0.201332, 0.332038,
		-0.387470, -0.420572, 0.820358,
		41.395443, 35.207302, 24.155016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.065060, 34.932323, 23.734028>,  <41.666672, 35.501701, 23.580767>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.065060, 34.932323, 23.734028> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.708054, 34.859081, 23.898903>,  <41.493851, 34.815136, 23.997828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.708054, 34.859081, 23.898903>,  <42.065060, 34.932323, 23.734028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.708054, 34.859081, 23.898903> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112997, -0.793965, -0.597370,
		0.436641, -0.579735, 0.687933,
		-0.892511, -0.183102, 0.412186,
		41.440300, 34.804150, 24.022558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.969048, 34.315788, 23.462648>,  <42.065060, 34.932323, 23.734028>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.969048, 34.315788, 23.462648> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.630829, 34.327545, 23.675884>,  <41.427898, 34.334599, 23.803825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.630829, 34.327545, 23.675884>,  <41.969048, 34.315788, 23.462648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.630829, 34.327545, 23.675884> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261998, -0.892835, -0.366338,
		0.465195, -0.449425, 0.762634,
		-0.845548, 0.029390, 0.533090,
		41.377163, 34.336361, 23.835812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.802208, 33.632137, 23.902365>,  <41.969048, 34.315788, 23.462648>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.802208, 33.632137, 23.902365> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.464523, 33.821373, 23.801575>,  <41.261913, 33.934914, 23.741100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.464523, 33.821373, 23.801575>,  <41.802208, 33.632137, 23.902365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.464523, 33.821373, 23.801575> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298546, -0.805439, -0.511995,
		-0.445168, -0.357008, 0.821201,
		-0.844213, 0.473090, -0.251973,
		41.211258, 33.963299, 23.725983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.359203, 33.128544, 23.971365>,  <41.802208, 33.632137, 23.902365>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.359203, 33.128544, 23.971365> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.185654, 33.399326, 23.733547>,  <41.081524, 33.561798, 23.590857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.185654, 33.399326, 23.733547>,  <41.359203, 33.128544, 23.971365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.185654, 33.399326, 23.733547> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486821, -0.731411, -0.477538,
		-0.758131, 0.082248, 0.646895,
		-0.433870, 0.676958, -0.594545,
		41.055492, 33.602413, 23.555183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.784988, 32.899635, 23.968285>,  <41.359203, 33.128544, 23.971365>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.784988, 32.899635, 23.968285> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.781113, 33.126862, 23.639114>,  <40.778786, 33.263199, 23.441612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.781113, 33.126862, 23.639114>,  <40.784988, 32.899635, 23.968285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.781113, 33.126862, 23.639114> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518198, -0.706690, -0.481726,
		-0.855205, 0.421770, 0.301220,
		-0.009692, 0.568066, -0.822926,
		40.778206, 33.297283, 23.392237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.068611, 32.883217, 23.795109>,  <40.784988, 32.899635, 23.968285>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.068611, 32.883217, 23.795109> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.261497, 32.993500, 23.462494>,  <40.377228, 33.059669, 23.262924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.261497, 32.993500, 23.462494>,  <40.068611, 32.883217, 23.795109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.261497, 32.993500, 23.462494> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637702, -0.540344, -0.548967,
		-0.600671, 0.794992, -0.084742,
		0.482214, 0.275708, -0.831537,
		40.406162, 33.076214, 23.213032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.560711, 33.034435, 23.375662>,  <40.068611, 32.883217, 23.795109>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.560711, 33.034435, 23.375662> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.862637, 33.013592, 23.114117>,  <40.043793, 33.001083, 22.957190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.862637, 33.013592, 23.114117>,  <39.560711, 33.034435, 23.375662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.862637, 33.013592, 23.114117> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510064, -0.673387, -0.535149,
		-0.412415, 0.737451, -0.534865,
		0.754817, -0.052112, -0.653862,
		40.089081, 32.997959, 22.917957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.271606, 33.305733, 22.716803>,  <39.560711, 33.034435, 23.375662>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.271606, 33.305733, 22.716803> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.592033, 33.073647, 22.657951>,  <39.784290, 32.934395, 22.622641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.592033, 33.073647, 22.657951>,  <39.271606, 33.305733, 22.716803>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.592033, 33.073647, 22.657951> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559732, -0.638997, -0.527621,
		0.212116, 0.505013, -0.836641,
		0.801067, -0.580212, -0.147130,
		39.832352, 32.899582, 22.613811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.006439, 33.633526, 21.996231>,  <39.271606, 33.305733, 22.716803>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.006439, 33.633526, 21.996231> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.656368, 33.814629, 21.928032>,  <38.446323, 33.923290, 21.887112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.656368, 33.814629, 21.928032>,  <39.006439, 33.633526, 21.996231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.656368, 33.814629, 21.928032> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302588, 0.787239, 0.537304,
		0.377493, 0.418646, -0.825975,
		-0.875180, 0.452758, -0.170500,
		38.393814, 33.950455, 21.876883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.226566, 34.368896, 21.921040>,  <39.006439, 33.633526, 21.996231>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.226566, 34.368896, 21.921040> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.836422, 34.400383, 22.003483>,  <38.602337, 34.419277, 22.052950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.836422, 34.400383, 22.003483>,  <39.226566, 34.368896, 21.921040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.836422, 34.400383, 22.003483> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194640, 0.746890, 0.635823,
		-0.103890, 0.660272, -0.743806,
		-0.975357, 0.078719, 0.206110,
		38.543816, 34.424000, 22.065315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.143856, 35.067234, 21.840992>,  <39.226566, 34.368896, 21.921040>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.143856, 35.067234, 21.840992> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.823509, 34.934109, 22.040127>,  <38.631302, 34.854233, 22.159607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.823509, 34.934109, 22.040127>,  <39.143856, 35.067234, 21.840992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.823509, 34.934109, 22.040127> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061217, 0.781483, 0.620916,
		-0.595700, 0.527750, -0.605493,
		-0.800870, -0.332813, 0.497837,
		38.583248, 34.834267, 22.189478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.789032, 35.689713, 21.951324>,  <39.143856, 35.067234, 21.840992>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.789032, 35.689713, 21.951324> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.655712, 35.426182, 22.221096>,  <38.575722, 35.268063, 22.382959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.655712, 35.426182, 22.221096>,  <38.789032, 35.689713, 21.951324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.655712, 35.426182, 22.221096> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045245, 0.703332, 0.709421,
		-0.941736, 0.266962, -0.204609,
		-0.333297, -0.658829, 0.674431,
		38.555721, 35.228535, 22.423426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.334461, 36.129391, 22.231760>,  <38.789032, 35.689713, 21.951324>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.334461, 36.129391, 22.231760> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.380440, 35.821854, 22.483368>,  <38.408028, 35.637329, 22.634333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.380440, 35.821854, 22.483368>,  <38.334461, 36.129391, 22.231760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.380440, 35.821854, 22.483368> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082396, 0.638413, 0.765271,
		-0.989948, -0.036138, 0.136735,
		0.114949, -0.768845, 0.629018,
		38.414925, 35.591202, 22.672073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.962570, 36.263653, 22.816824>,  <38.334461, 36.129391, 22.231760>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.962570, 36.263653, 22.816824> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.183479, 35.962955, 22.960979>,  <38.316025, 35.782536, 23.047472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.183479, 35.962955, 22.960979>,  <37.962570, 36.263653, 22.816824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.183479, 35.962955, 22.960979> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035930, 0.453355, 0.890606,
		-0.832890, -0.478908, 0.277385,
		0.552271, -0.751743, 0.360387,
		38.349159, 35.737434, 23.069096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.571835, 36.105389, 23.397840>,  <37.962570, 36.263653, 22.816824>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.571835, 36.105389, 23.397840> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.940357, 35.950596, 23.412991>,  <38.161472, 35.857719, 23.422081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.940357, 35.950596, 23.412991>,  <37.571835, 36.105389, 23.397840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.940357, 35.950596, 23.412991> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156272, 0.457708, 0.875261,
		-0.356050, -0.800466, 0.482165,
		0.921308, -0.386985, 0.037876,
		38.216751, 35.834499, 23.424353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.683464, 35.668835, 23.981754>,  <37.571835, 36.105389, 23.397840>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.683464, 35.668835, 23.981754> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.033386, 35.820747, 23.861431>,  <38.243340, 35.911896, 23.789238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.033386, 35.820747, 23.861431>,  <37.683464, 35.668835, 23.981754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.033386, 35.820747, 23.861431> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171423, 0.338087, 0.925371,
		0.453136, -0.861084, 0.230656,
		0.874804, 0.379779, -0.300809,
		38.295826, 35.934681, 23.771189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.165947, 35.428352, 24.425152>,  <37.683464, 35.668835, 23.981754>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.165947, 35.428352, 24.425152> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.288132, 35.764294, 24.245667>,  <38.361443, 35.965858, 24.137976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.288132, 35.764294, 24.245667>,  <38.165947, 35.428352, 24.425152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.288132, 35.764294, 24.245667> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051182, 0.456075, 0.888468,
		0.950828, -0.294360, 0.096328,
		0.305462, 0.839850, -0.448715,
		38.379772, 36.016247, 24.111052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.442883, 35.841091, 24.977152>,  <38.165947, 35.428352, 24.425152>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.442883, 35.841091, 24.977152> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.409000, 36.120136, 24.692574>,  <38.388672, 36.287563, 24.521826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.409000, 36.120136, 24.692574>,  <38.442883, 35.841091, 24.977152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.409000, 36.120136, 24.692574> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052898, 0.716154, 0.695935,
		0.995001, 0.021318, -0.097566,
		-0.084708, 0.697617, -0.711446,
		38.383587, 36.329422, 24.479139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.972282, 36.317436, 25.130463>,  <38.442883, 35.841091, 24.977152>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.972282, 36.317436, 25.130463> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.701508, 36.495617, 24.896084>,  <38.539043, 36.602528, 24.755457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.701508, 36.495617, 24.896084>,  <38.972282, 36.317436, 25.130463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.701508, 36.495617, 24.896084> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037935, 0.816130, 0.576622,
		0.735066, 0.368107, -0.569364,
		-0.676934, 0.445454, -0.585945,
		38.498428, 36.629253, 24.720301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.257626, 36.954357, 25.103765>,  <38.972282, 36.317436, 25.130463>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.257626, 36.954357, 25.103765> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.879539, 36.984573, 24.976734>,  <38.652687, 37.002705, 24.900517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.879539, 36.984573, 24.976734>,  <39.257626, 36.954357, 25.103765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.879539, 36.984573, 24.976734> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062178, 0.913379, 0.402335,
		0.320461, 0.400040, -0.858646,
		-0.945219, 0.075544, -0.317576,
		38.595974, 37.007236, 24.881462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.267757, 37.577991, 24.756214>,  <39.257626, 36.954357, 25.103765>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.267757, 37.577991, 24.756214> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.891682, 37.510471, 24.874565>,  <38.666035, 37.469959, 24.945576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.891682, 37.510471, 24.874565>,  <39.267757, 37.577991, 24.756214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.891682, 37.510471, 24.874565> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019666, 0.894033, 0.447570,
		-0.340075, 0.414983, -0.843883,
		-0.940193, -0.168803, 0.295877,
		38.609623, 37.459831, 24.963327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.871399, 38.042606, 24.423923>,  <39.267757, 37.577991, 24.756214>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.871399, 38.042606, 24.423923> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.691132, 37.929028, 24.762455>,  <38.582970, 37.860882, 24.965574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.691132, 37.929028, 24.762455>,  <38.871399, 38.042606, 24.423923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.691132, 37.929028, 24.762455> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018697, 0.950860, 0.309056,
		-0.892495, 0.123458, -0.433832,
		-0.450669, -0.283942, 0.846330,
		38.555931, 37.843845, 25.016354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.618313, 38.658272, 24.684263>,  <38.871399, 38.042606, 24.423923>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.618313, 38.658272, 24.684263> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.547165, 38.415852, 24.994377>,  <38.504475, 38.270401, 25.180447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.547165, 38.415852, 24.994377>,  <38.618313, 38.658272, 24.684263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.547165, 38.415852, 24.994377> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118374, 0.795305, 0.594539,
		-0.976908, 0.013978, -0.213202,
		-0.177871, -0.606048, 0.775286,
		38.493805, 38.234035, 25.226963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.948330, 38.869614, 24.978382>,  <38.618313, 38.658272, 24.684263>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.948330, 38.869614, 24.978382> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.178040, 38.684422, 25.248451>,  <38.315865, 38.573307, 25.410492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.178040, 38.684422, 25.248451>,  <37.948330, 38.869614, 24.978382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.178040, 38.684422, 25.248451> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114490, 0.862040, 0.493740,
		-0.810616, -0.206243, 0.548056,
		0.574276, -0.462980, 0.675171,
		38.350323, 38.545528, 25.451002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.729786, 39.128586, 25.568851>,  <37.948330, 38.869614, 24.978382>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.729786, 39.128586, 25.568851> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.077858, 38.965786, 25.679939>,  <38.286701, 38.868107, 25.746592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.077858, 38.965786, 25.679939>,  <37.729786, 39.128586, 25.568851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.077858, 38.965786, 25.679939> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240692, 0.842937, 0.481170,
		-0.429939, -0.351860, 0.831472,
		0.870183, -0.407003, 0.277722,
		38.338913, 38.843685, 25.763256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.837276, 39.301392, 26.347359>,  <37.729786, 39.128586, 25.568851>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.837276, 39.301392, 26.347359> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.198048, 39.187672, 26.217316>,  <38.414513, 39.119438, 26.139290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.198048, 39.187672, 26.217316>,  <37.837276, 39.301392, 26.347359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.198048, 39.187672, 26.217316> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426083, 0.708680, 0.562339,
		0.070523, -0.645714, 0.760316,
		0.901931, -0.284299, -0.325106,
		38.468628, 39.102383, 26.119783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.270000, 39.049942, 26.911777>,  <37.837276, 39.301392, 26.347359>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.270000, 39.049942, 26.911777> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.513584, 39.194798, 26.629494>,  <38.659733, 39.281712, 26.460123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.513584, 39.194798, 26.629494>,  <38.270000, 39.049942, 26.911777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.513584, 39.194798, 26.629494> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360823, 0.665846, 0.653035,
		0.706385, -0.652306, 0.274803,
		0.608956, 0.362139, -0.705711,
		38.696270, 39.303440, 26.417780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.904789, 39.084759, 27.285107>,  <38.270000, 39.049942, 26.911777>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.904789, 39.084759, 27.285107> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.966187, 39.313152, 26.962513>,  <39.003025, 39.450188, 26.768957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.966187, 39.313152, 26.962513>,  <38.904789, 39.084759, 27.285107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.966187, 39.313152, 26.962513> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540254, 0.634882, 0.552314,
		0.827385, -0.520483, -0.211026,
		0.153493, 0.570984, -0.806485,
		39.012234, 39.484447, 26.720568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.569607, 39.333054, 27.508612>,  <38.904789, 39.084759, 27.285107>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.569607, 39.333054, 27.508612> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.481609, 39.536163, 27.175442>,  <39.428810, 39.658028, 26.975540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.481609, 39.536163, 27.175442>,  <39.569607, 39.333054, 27.508612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.481609, 39.536163, 27.175442> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519900, 0.783505, 0.340329,
		0.825412, -0.358166, -0.436362,
		-0.219997, 0.507776, -0.832926,
		39.415611, 39.688496, 26.925564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<27.745441, 24.717777, 19.438009> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.042265, 24.720604, 19.706127>,  <28.220360, 24.722300, 19.866999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.042265, 24.720604, 19.706127>,  <27.745441, 24.717777, 19.438009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.042265, 24.720604, 19.706127> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224986, -0.944566, -0.239116,
		0.631448, 0.328246, -0.702515,
		0.742061, 0.007067, 0.670295,
		28.264883, 24.722725, 19.907215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.341951, 24.460302, 19.090555>,  <27.745441, 24.717777, 19.438009>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.341951, 24.460302, 19.090555> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.443926, 24.399433, 19.472519>,  <28.505112, 24.362911, 19.701696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.443926, 24.399433, 19.472519>,  <28.341951, 24.460302, 19.090555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.443926, 24.399433, 19.472519> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139541, -0.971413, -0.192055,
		0.956836, 0.182211, -0.226415,
		0.254937, -0.152171, 0.954909,
		28.520407, 24.353783, 19.758991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.946041, 24.010796, 19.073978>,  <28.341951, 24.460302, 19.090555>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.946041, 24.010796, 19.073978> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.803581, 23.979824, 19.446465>,  <28.718105, 23.961241, 19.669956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.803581, 23.979824, 19.446465>,  <28.946041, 24.010796, 19.073978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.803581, 23.979824, 19.446465> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304203, -0.951881, 0.037197,
		0.883525, 0.296526, 0.362568,
		-0.356152, -0.077430, 0.931215,
		28.696735, 23.956594, 19.725828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.453213, 23.652628, 19.476675>,  <28.946041, 24.010796, 19.073978>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.453213, 23.652628, 19.476675> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.109100, 23.588634, 19.670303>,  <28.902634, 23.550240, 19.786480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.109100, 23.588634, 19.670303>,  <29.453213, 23.652628, 19.476675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.109100, 23.588634, 19.670303> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277260, -0.943615, 0.180881,
		0.427840, 0.289822, 0.856128,
		-0.860279, -0.159982, 0.484073,
		28.851017, 23.540640, 19.815525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.643606, 23.347738, 20.161009>,  <29.453213, 23.652628, 19.476675>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.643606, 23.347738, 20.161009> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.267506, 23.236076, 20.083035>,  <29.041845, 23.169079, 20.036249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.267506, 23.236076, 20.083035>,  <29.643606, 23.347738, 20.161009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.267506, 23.236076, 20.083035> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214130, -0.929954, 0.298886,
		-0.264717, 0.239286, 0.934166,
		-0.940252, -0.279153, -0.194937,
		28.985430, 23.152330, 20.024553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.457047, 23.003485, 20.707579>,  <29.643606, 23.347738, 20.161009>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.457047, 23.003485, 20.707579> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.203342, 22.881161, 20.423553>,  <29.051119, 22.807766, 20.253138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.203342, 22.881161, 20.423553>,  <29.457047, 23.003485, 20.707579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.203342, 22.881161, 20.423553> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105745, -0.944126, 0.312160,
		-0.765852, 0.122906, 0.631161,
		-0.634262, -0.305811, -0.710065,
		29.013063, 22.789417, 20.210533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.885599, 22.634104, 21.081688>,  <29.457047, 23.003485, 20.707579>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.885599, 22.634104, 21.081688> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.883829, 22.503307, 20.703682>,  <28.882767, 22.424829, 20.476877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.883829, 22.503307, 20.703682>,  <28.885599, 22.634104, 21.081688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.883829, 22.503307, 20.703682> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109889, -0.939144, 0.325473,
		-0.993934, 0.105286, -0.031778,
		-0.004424, -0.326991, -0.945017,
		28.882502, 22.405210, 20.420177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.267374, 22.275206, 20.983362>,  <28.885599, 22.634104, 21.081688>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.267374, 22.275206, 20.983362> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.501211, 22.139397, 20.688614>,  <28.641514, 22.057911, 20.511765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.501211, 22.139397, 20.688614>,  <28.267374, 22.275206, 20.983362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.501211, 22.139397, 20.688614> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174938, -0.939613, 0.294149,
		-0.792243, -0.043050, -0.608685,
		0.584591, -0.339520, -0.736871,
		28.676588, 22.037540, 20.467552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.000875, 21.665674, 20.720036>,  <28.267374, 22.275206, 20.983362>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.000875, 21.665674, 20.720036> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.377848, 21.618851, 20.594738>,  <28.604031, 21.590755, 20.519560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.377848, 21.618851, 20.594738>,  <28.000875, 21.665674, 20.720036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.377848, 21.618851, 20.594738> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061495, -0.981421, 0.181746,
		-0.328701, -0.152020, -0.932119,
		0.942430, -0.117061, -0.313246,
		28.660576, 21.583733, 20.500765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.020941, 21.098389, 20.234562>,  <28.000875, 21.665674, 20.720036>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.020941, 21.098389, 20.234562> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.406782, 21.136635, 20.332863>,  <28.638287, 21.159582, 20.391844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.406782, 21.136635, 20.332863>,  <28.020941, 21.098389, 20.234562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.406782, 21.136635, 20.332863> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102799, -0.994565, -0.016533,
		0.242834, 0.041210, -0.969192,
		0.964606, 0.095618, 0.245750,
		28.696163, 21.165319, 20.406588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.418417, 20.584618, 19.955267>,  <28.020941, 21.098389, 20.234562>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.418417, 20.584618, 19.955267> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.679897, 20.692894, 20.237942>,  <28.836784, 20.757860, 20.407547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.679897, 20.692894, 20.237942>,  <28.418417, 20.584618, 19.955267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.679897, 20.692894, 20.237942> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219323, -0.961525, 0.165428,
		0.724276, 0.046852, -0.687916,
		0.653698, 0.270692, 0.706685,
		28.876007, 20.774101, 20.449947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.918921, 20.107689, 19.948250>,  <28.418417, 20.584618, 19.955267>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.918921, 20.107689, 19.948250> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.982401, 20.274002, 20.306454>,  <29.020489, 20.373791, 20.521376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.982401, 20.274002, 20.306454>,  <28.918921, 20.107689, 19.948250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.982401, 20.274002, 20.306454> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260306, -0.892534, 0.368272,
		0.952394, 0.174661, -0.249878,
		0.158701, 0.415785, 0.895509,
		29.030012, 20.398737, 20.575106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.653448, 19.925457, 20.187809>,  <28.918921, 20.107689, 19.948250>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.653448, 19.925457, 20.187809> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.402784, 19.997845, 20.491005>,  <29.252386, 20.041277, 20.672922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.402784, 19.997845, 20.491005>,  <29.653448, 19.925457, 20.187809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.402784, 19.997845, 20.491005> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064264, -0.957349, 0.281698,
		0.776638, 0.225241, 0.588303,
		-0.626661, 0.180971, 0.757988,
		29.214787, 20.052135, 20.718401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.942154, 20.062424, 19.442036>,  <29.653448, 19.925457, 20.187809>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.942154, 20.062424, 19.442036> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.275156, 19.994228, 19.231182>,  <30.474957, 19.953312, 19.104670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.275156, 19.994228, 19.231182>,  <29.942154, 20.062424, 19.442036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.275156, 19.994228, 19.231182> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370516, 0.536052, -0.758529,
		0.411890, 0.826790, 0.383098,
		0.832505, -0.170487, -0.527134,
		30.524908, 19.943083, 19.073042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.314085, 20.663116, 19.403976>,  <29.942154, 20.062424, 19.442036>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.314085, 20.663116, 19.403976> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.422338, 20.458233, 19.077934>,  <30.487291, 20.335302, 18.882309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.422338, 20.458233, 19.077934>,  <30.314085, 20.663116, 19.403976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.422338, 20.458233, 19.077934> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275509, 0.770079, -0.575389,
		0.922416, 0.380289, 0.067292,
		0.270634, -0.512209, -0.815107,
		30.503529, 20.304569, 18.833403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.745258, 21.071468, 19.047529>,  <30.314085, 20.663116, 19.403976>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.745258, 21.071468, 19.047529> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.632626, 20.802174, 18.774044>,  <30.565046, 20.640596, 18.609953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.632626, 20.802174, 18.774044>,  <30.745258, 21.071468, 19.047529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.632626, 20.802174, 18.774044> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170521, 0.736313, -0.654802,
		0.944264, -0.067793, -0.322133,
		-0.281582, -0.673236, -0.683713,
		30.548151, 20.600203, 18.568930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.990915, 21.452938, 18.507126>,  <30.745258, 21.071468, 19.047529>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.990915, 21.452938, 18.507126> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.735373, 21.171135, 18.383495>,  <30.582047, 21.002052, 18.309317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.735373, 21.171135, 18.383495>,  <30.990915, 21.452938, 18.507126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.735373, 21.171135, 18.383495> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304592, 0.600546, -0.739302,
		0.706459, -0.378168, -0.598252,
		-0.638858, -0.704509, -0.309075,
		30.543715, 20.959782, 18.290773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.136948, 21.344116, 17.830437>,  <30.990915, 21.452938, 18.507126>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.136948, 21.344116, 17.830437> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.752748, 21.239628, 17.868820>,  <30.522228, 21.176935, 17.891851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.752748, 21.239628, 17.868820>,  <31.136948, 21.344116, 17.830437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.752748, 21.239628, 17.868820> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268800, 0.781582, -0.562917,
		0.072043, -0.566475, -0.820924,
		-0.960498, -0.261219, 0.095961,
		30.464600, 21.161263, 17.897608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.886440, 21.188002, 17.166058>,  <31.136948, 21.344116, 17.830437>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.886440, 21.188002, 17.166058> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.579184, 21.308414, 17.392097>,  <30.394829, 21.380663, 17.527721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.579184, 21.308414, 17.392097>,  <30.886440, 21.188002, 17.166058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.579184, 21.308414, 17.392097> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199430, 0.726189, -0.657934,
		-0.608430, -0.618084, -0.497780,
		-0.768141, 0.301034, 0.565100,
		30.348742, 21.398726, 17.561626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.313498, 21.524439, 16.653303>,  <30.886440, 21.188002, 17.166058>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.313498, 21.524439, 16.653303> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.186272, 21.644501, 17.013023>,  <30.109936, 21.716537, 17.228855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.186272, 21.644501, 17.013023>,  <30.313498, 21.524439, 16.653303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.186272, 21.644501, 17.013023> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290544, 0.872059, -0.393825,
		-0.902451, -0.386548, -0.190164,
		-0.318067, 0.300157, 0.899300,
		30.090851, 21.734549, 17.282814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.714239, 21.853188, 16.461176>,  <30.313498, 21.524439, 16.653303>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.714239, 21.853188, 16.461176> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.808100, 21.943752, 16.839314>,  <29.864416, 21.998091, 17.066196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.808100, 21.943752, 16.839314>,  <29.714239, 21.853188, 16.461176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.808100, 21.943752, 16.839314> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245724, 0.954729, -0.167668,
		-0.940510, -0.192950, 0.279663,
		0.234650, 0.226413, 0.945345,
		29.878494, 22.011677, 17.122917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.198137, 22.168850, 16.660900>,  <29.714239, 21.853188, 16.461176>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.198137, 22.168850, 16.660900> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.483496, 22.288219, 16.914516>,  <29.654711, 22.359840, 17.066687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.483496, 22.288219, 16.914516>,  <29.198137, 22.168850, 16.660900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.483496, 22.288219, 16.914516> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177680, 0.952254, -0.248280,
		-0.677859, 0.064467, 0.732360,
		0.713398, 0.298424, 0.634039,
		29.697515, 22.377747, 17.104729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.970156, 22.720573, 17.020113>,  <29.198137, 22.168850, 16.660900>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.970156, 22.720573, 17.020113> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.356186, 22.782185, 17.104874>,  <29.587805, 22.819151, 17.155731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.356186, 22.782185, 17.104874>,  <28.970156, 22.720573, 17.020113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.356186, 22.782185, 17.104874> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081560, 0.945347, -0.315702,
		-0.248949, 0.287394, 0.924894,
		0.965076, 0.154028, 0.211903,
		29.645708, 22.828394, 17.168444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.978020, 23.445543, 17.347700>,  <28.970156, 22.720573, 17.020113>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.978020, 23.445543, 17.347700> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.363235, 23.361420, 17.280380>,  <29.594364, 23.310946, 17.239988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.363235, 23.361420, 17.280380>,  <28.978020, 23.445543, 17.347700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.363235, 23.361420, 17.280380> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194556, 0.975216, -0.105368,
		0.186287, 0.068730, 0.980088,
		0.963040, -0.210311, -0.168299,
		29.652147, 23.298326, 17.229891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.436504, 23.658600, 17.830971>,  <28.978020, 23.445543, 17.347700>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.436504, 23.658600, 17.830971> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.669916, 23.655376, 17.506149>,  <29.809963, 23.653442, 17.311256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.669916, 23.655376, 17.506149>,  <29.436504, 23.658600, 17.830971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.669916, 23.655376, 17.506149> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166546, 0.979884, 0.109952,
		0.794831, -0.199404, 0.573133,
		0.583529, -0.008060, -0.812052,
		29.844975, 23.652958, 17.262533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.010746, 23.970264, 18.083315>,  <29.436504, 23.658600, 17.830971>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.010746, 23.970264, 18.083315> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.015554, 23.999298, 17.684399>,  <30.018440, 24.016718, 17.445049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.015554, 23.999298, 17.684399>,  <30.010746, 23.970264, 18.083315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.015554, 23.999298, 17.684399> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164187, 0.983682, 0.073572,
		0.986356, -0.164627, -0.000090,
		0.012024, 0.072583, -0.997290,
		30.019161, 24.021072, 17.385212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.527206, 24.418900, 17.936977>,  <30.010746, 23.970264, 18.083315>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.527206, 24.418900, 17.936977> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.312973, 24.457073, 17.601349>,  <30.184433, 24.479977, 17.399971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.312973, 24.457073, 17.601349>,  <30.527206, 24.418900, 17.936977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.312973, 24.457073, 17.601349> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096435, 0.994006, 0.051500,
		0.838958, -0.053333, -0.541576,
		-0.535584, 0.095434, -0.839073,
		30.152298, 24.485703, 17.349627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.883112, 24.872456, 17.498928>,  <30.527206, 24.418900, 17.936977>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.883112, 24.872456, 17.498928> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.504717, 24.870518, 17.369263>,  <30.277679, 24.869354, 17.291464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.504717, 24.870518, 17.369263>,  <30.883112, 24.872456, 17.498928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.504717, 24.870518, 17.369263> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073097, 0.977329, 0.198708,
		0.315852, 0.211671, -0.924896,
		-0.945989, -0.004845, -0.324164,
		30.220921, 24.869064, 17.272013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.458239, 25.236528, 17.550636>,  <30.883112, 24.872456, 17.498928>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.458239, 25.236528, 17.550636> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.763796, 25.341785, 17.786339>,  <31.947130, 25.404940, 17.927759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.763796, 25.341785, 17.786339>,  <31.458239, 25.236528, 17.550636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.763796, 25.341785, 17.786339> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272551, -0.959211, 0.075028,
		0.584963, 0.103289, -0.804456,
		0.763894, 0.263144, 0.589255,
		31.992964, 25.420729, 17.963116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.028595, 24.800846, 17.291029>,  <31.458239, 25.236528, 17.550636>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.028595, 24.800846, 17.291029> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.145817, 24.926586, 17.652206>,  <32.216148, 25.002031, 17.868912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.145817, 24.926586, 17.652206>,  <32.028595, 24.800846, 17.291029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.145817, 24.926586, 17.652206> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294780, -0.928103, 0.227441,
		0.909519, 0.199517, -0.364647,
		0.293052, 0.314352, 0.902941,
		32.233734, 25.020891, 17.923088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.694958, 24.670942, 17.349712>,  <32.028595, 24.800846, 17.291029>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.694958, 24.670942, 17.349712> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.554096, 24.668324, 17.724079>,  <32.469578, 24.666752, 17.948700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.554096, 24.668324, 17.724079>,  <32.694958, 24.670942, 17.349712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.554096, 24.668324, 17.724079> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367804, -0.920493, 0.131956,
		0.860642, 0.390704, 0.326567,
		-0.352158, -0.006546, 0.935918,
		32.448448, 24.666359, 18.004854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.198093, 24.206280, 17.668085>,  <32.694958, 24.670942, 17.349712>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.198093, 24.206280, 17.668085> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.925056, 24.260292, 17.955372>,  <32.761234, 24.292700, 18.127745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.925056, 24.260292, 17.955372>,  <33.198093, 24.206280, 17.668085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.925056, 24.260292, 17.955372> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142045, -0.939523, 0.311640,
		0.716863, 0.314742, 0.622129,
		-0.682591, 0.135032, 0.718217,
		32.720280, 24.300802, 18.170837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.526482, 23.866941, 18.423553>,  <33.198093, 24.206280, 17.668085>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.526482, 23.866941, 18.423553> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.129730, 23.900543, 18.461754>,  <32.891678, 23.920704, 18.484674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.129730, 23.900543, 18.461754>,  <33.526482, 23.866941, 18.423553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.129730, 23.900543, 18.461754> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041572, -0.923738, 0.380761,
		0.120205, 0.373698, 0.919728,
		-0.991878, 0.084004, 0.095503,
		32.832169, 23.925745, 18.490404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.387009, 23.649031, 19.103743>,  <33.526482, 23.866941, 18.423553>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.387009, 23.649031, 19.103743> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.051872, 23.599205, 18.891136>,  <32.850792, 23.569309, 18.763573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.051872, 23.599205, 18.891136>,  <33.387009, 23.649031, 19.103743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.051872, 23.599205, 18.891136> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025536, -0.981497, 0.189767,
		-0.545318, 0.145422, 0.825518,
		-0.837840, -0.124564, -0.531515,
		32.800522, 23.561836, 18.731682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.890171, 23.273264, 19.517023>,  <33.387009, 23.649031, 19.103743>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.890171, 23.273264, 19.517023> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.783390, 23.237705, 19.133183>,  <32.719322, 23.216370, 18.902878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.783390, 23.237705, 19.133183>,  <32.890171, 23.273264, 19.517023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.783390, 23.237705, 19.133183> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048678, -0.995709, 0.078700,
		-0.962480, -0.025703, 0.270134,
		-0.266952, -0.088897, -0.959601,
		32.703304, 23.211037, 18.845303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.817669, 22.800247, 20.232260>,  <32.890171, 23.273264, 19.517023>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.817669, 22.800247, 20.232260> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.175449, 22.861038, 20.400478>,  <33.390118, 22.897512, 20.501410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.175449, 22.861038, 20.400478>,  <32.817669, 22.800247, 20.232260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.175449, 22.861038, 20.400478> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311777, 0.886132, 0.342877,
		-0.320551, -0.437804, 0.839985,
		0.894451, 0.151979, 0.420548,
		33.443783, 22.906631, 20.526642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.702095, 22.883999, 21.002291>,  <32.817669, 22.800247, 20.232260>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.702095, 22.883999, 21.002291> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.057682, 23.045052, 20.914997>,  <33.271034, 23.141684, 20.862621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.057682, 23.045052, 20.914997>,  <32.702095, 22.883999, 21.002291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.057682, 23.045052, 20.914997> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312888, 0.881924, 0.352577,
		0.334425, -0.245146, 0.909980,
		0.888966, 0.402633, -0.218234,
		33.324371, 23.165842, 20.849527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.858601, 23.210623, 21.538774>,  <32.702095, 22.883999, 21.002291>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.858601, 23.210623, 21.538774> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.067856, 23.397114, 21.253410>,  <33.193409, 23.509008, 21.082191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.067856, 23.397114, 21.253410>,  <32.858601, 23.210623, 21.538774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.067856, 23.397114, 21.253410> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232725, 0.883429, 0.406685,
		0.819856, -0.046724, 0.570660,
		0.523139, 0.466230, -0.713411,
		33.224796, 23.536983, 21.039387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.272133, 23.813250, 21.949873>,  <32.858601, 23.210623, 21.538774>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.272133, 23.813250, 21.949873> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.252472, 23.903553, 21.560696>,  <33.240677, 23.957735, 21.327190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.252472, 23.903553, 21.560696>,  <33.272133, 23.813250, 21.949873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.252472, 23.903553, 21.560696> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319730, 0.919303, 0.229465,
		0.946233, 0.322357, 0.027000,
		-0.049149, 0.225760, -0.972942,
		33.237728, 23.971281, 21.268812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.502644, 24.445490, 21.939110>,  <33.272133, 23.813250, 21.949873>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.502644, 24.445490, 21.939110> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.320427, 24.412819, 21.584526>,  <33.211098, 24.393215, 21.371777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.320427, 24.412819, 21.584526>,  <33.502644, 24.445490, 21.939110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.320427, 24.412819, 21.584526> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293972, 0.953723, 0.063193,
		0.840275, 0.289381, -0.458472,
		-0.455542, -0.081679, -0.886459,
		33.183765, 24.388315, 21.318588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.706886, 24.967184, 21.570694>,  <33.502644, 24.445490, 21.939110>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.706886, 24.967184, 21.570694> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.389400, 24.864193, 21.350250>,  <33.198910, 24.802399, 21.217983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.389400, 24.864193, 21.350250>,  <33.706886, 24.967184, 21.570694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.389400, 24.864193, 21.350250> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253847, 0.963540, -0.084573,
		0.552791, 0.072770, -0.830137,
		-0.793716, -0.257479, -0.551109,
		33.151287, 24.786949, 21.184917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.747952, 25.363514, 20.962116>,  <33.706886, 24.967184, 21.570694>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.747952, 25.363514, 20.962116> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.369072, 25.243214, 21.006584>,  <33.141743, 25.171034, 21.033264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.369072, 25.243214, 21.006584>,  <33.747952, 25.363514, 20.962116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.369072, 25.243214, 21.006584> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304060, 0.952554, -0.013710,
		-0.101771, -0.046789, -0.993707,
		-0.947201, -0.300752, 0.111169,
		33.084911, 25.152988, 21.039934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<29.781441, 19.942057, 23.548067> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.582642, 20.160057, 23.277966>,  <29.463362, 20.290857, 23.115906>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.582642, 20.160057, 23.277966>,  <29.781441, 19.942057, 23.548067>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.582642, 20.160057, 23.277966> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363645, 0.837349, 0.408178,
		0.787879, -0.042688, -0.614349,
		-0.497000, 0.545000, -0.675253,
		29.433542, 20.323557, 23.075390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.271553, 20.400051, 23.074930>,  <29.781441, 19.942057, 23.548067>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.271553, 20.400051, 23.074930> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.901798, 20.546780, 23.116779>,  <29.679945, 20.634817, 23.141888>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.901798, 20.546780, 23.116779>,  <30.271553, 20.400051, 23.074930>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.901798, 20.546780, 23.116779> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381407, 0.893028, 0.238811,
		-0.005828, 0.260657, -0.965414,
		-0.924389, 0.366824, 0.104621,
		29.624481, 20.656826, 23.148165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.350346, 21.075108, 22.672468>,  <30.271553, 20.400051, 23.074930>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.350346, 21.075108, 22.672468> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.012356, 21.107868, 22.883869>,  <29.809563, 21.127525, 23.010710>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.012356, 21.107868, 22.883869>,  <30.350346, 21.075108, 22.672468>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.012356, 21.107868, 22.883869> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242108, 0.939725, 0.241457,
		-0.476869, 0.331979, -0.813871,
		-0.844973, 0.081901, 0.528501,
		29.758863, 21.132439, 23.042419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.156471, 21.728373, 22.538464>,  <30.350346, 21.075108, 22.672468>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.156471, 21.728373, 22.538464> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.939497, 21.632446, 22.860519>,  <29.809313, 21.574890, 23.053753>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.939497, 21.632446, 22.860519>,  <30.156471, 21.728373, 22.538464>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.939497, 21.632446, 22.860519> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155463, 0.913183, 0.376734,
		-0.825588, 0.329523, -0.458060,
		-0.542435, -0.239816, 0.805141,
		29.776766, 21.560501, 23.102062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.563749, 22.191515, 22.508905>,  <30.156471, 21.728373, 22.538464>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.563749, 22.191515, 22.508905> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.630510, 22.049374, 22.876789>,  <29.670567, 21.964088, 23.097519>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.630510, 22.049374, 22.876789>,  <29.563749, 22.191515, 22.508905>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.630510, 22.049374, 22.876789> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106201, 0.933848, 0.341540,
		-0.980237, 0.040670, 0.193600,
		0.166903, -0.355351, 0.919711,
		29.680582, 21.942768, 23.152702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.228542, 22.702057, 22.910570>,  <29.563749, 22.191515, 22.508905>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.228542, 22.702057, 22.910570> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.458504, 22.509472, 23.175201>,  <29.596479, 22.393921, 23.333981>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.458504, 22.509472, 23.175201>,  <29.228542, 22.702057, 22.910570>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.458504, 22.509472, 23.175201> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092432, 0.841593, 0.532144,
		-0.812984, -0.244780, 0.528336,
		0.574903, -0.481460, 0.661576,
		29.630974, 22.365034, 23.373674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.095636, 22.996922, 23.524605>,  <29.228542, 22.702057, 22.910570>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.095636, 22.996922, 23.524605> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.448513, 22.820637, 23.590946>,  <29.660240, 22.714867, 23.630751>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.448513, 22.820637, 23.590946>,  <29.095636, 22.996922, 23.524605>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.448513, 22.820637, 23.590946> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315498, 0.814669, 0.486595,
		-0.349564, -0.376944, 0.857740,
		0.882194, -0.440712, 0.165854,
		29.713171, 22.688423, 23.640703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.194590, 22.846617, 24.306334>,  <29.095636, 22.996922, 23.524605>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.194590, 22.846617, 24.306334> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.571651, 22.854740, 24.173073>,  <29.797888, 22.859615, 24.093117>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.571651, 22.854740, 24.173073>,  <29.194590, 22.846617, 24.306334>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.571651, 22.854740, 24.173073> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167137, 0.835262, 0.523834,
		0.288908, -0.549477, 0.783969,
		0.942655, 0.020310, -0.333152,
		29.854448, 22.860832, 24.073128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.453712, 22.996786, 24.888319>,  <29.194590, 22.846617, 24.306334>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.453712, 22.996786, 24.888319> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.735323, 23.070351, 24.613941>,  <29.904289, 23.114491, 24.449314>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.735323, 23.070351, 24.613941>,  <29.453712, 22.996786, 24.888319>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.735323, 23.070351, 24.613941> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224419, 0.858776, 0.460587,
		0.673780, -0.478205, 0.563330,
		0.704029, 0.183912, -0.685944,
		29.946531, 23.125525, 24.408157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.031565, 23.310514, 25.216825>,  <29.453712, 22.996786, 24.888319>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.031565, 23.310514, 25.216825> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.059980, 23.443470, 24.840641>,  <30.077030, 23.523243, 24.614929>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.059980, 23.443470, 24.840641>,  <30.031565, 23.310514, 25.216825>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.059980, 23.443470, 24.840641> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157135, 0.927343, 0.339623,
		0.985019, -0.171907, 0.013647,
		0.071039, 0.332391, -0.940463,
		30.081293, 23.543188, 24.558502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.566448, 23.866613, 25.181444>,  <30.031565, 23.310514, 25.216825>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.566448, 23.866613, 25.181444> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.360746, 23.925964, 24.843563>,  <30.237326, 23.961575, 24.640835>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.360746, 23.925964, 24.843563>,  <30.566448, 23.866613, 25.181444>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.360746, 23.925964, 24.843563> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094856, 0.988718, 0.115925,
		0.852375, -0.020510, -0.522528,
		-0.514256, 0.148377, -0.844704,
		30.206470, 23.970478, 24.590153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.910872, 24.357286, 24.707327>,  <30.566448, 23.866613, 25.181444>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.910872, 24.357286, 24.707327> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.523691, 24.373955, 24.608265>,  <30.291382, 24.383955, 24.548828>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.523691, 24.373955, 24.608265>,  <30.910872, 24.357286, 24.707327>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.523691, 24.373955, 24.608265> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014347, 0.975353, 0.220185,
		0.250726, 0.216681, -0.943497,
		-0.967952, 0.041670, -0.247655,
		30.233305, 24.386456, 24.533968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.397161, 24.285295, 24.139307>,  <30.910872, 24.357286, 24.707327>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.397161, 24.285295, 24.139307> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.770025, 24.425896, 24.104607>,  <31.993744, 24.510256, 24.083786>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.770025, 24.425896, 24.104607>,  <31.397161, 24.285295, 24.139307>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.770025, 24.425896, 24.104607> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328323, -0.921691, -0.206612,
		-0.152582, 0.164113, -0.974569,
		0.932160, 0.351499, -0.086751,
		32.049675, 24.531345, 24.078581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.628273, 23.766495, 23.711927>,  <31.397161, 24.285295, 24.139307>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.628273, 23.766495, 23.711927> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.961184, 23.949532, 23.837097>,  <32.160931, 24.059355, 23.912199>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.961184, 23.949532, 23.837097>,  <31.628273, 23.766495, 23.711927>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.961184, 23.949532, 23.837097> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509800, -0.853512, -0.107801,
		0.217755, 0.249249, -0.943641,
		0.832278, 0.457594, 0.312924,
		32.210869, 24.086809, 23.930975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.138142, 23.689291, 23.229937>,  <31.628273, 23.766495, 23.711927>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.138142, 23.689291, 23.229937> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.334984, 23.763111, 23.570236>,  <32.453091, 23.807404, 23.774416>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.334984, 23.763111, 23.570236>,  <32.138142, 23.689291, 23.229937>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.334984, 23.763111, 23.570236> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558505, -0.816564, -0.145928,
		0.667761, 0.546960, -0.504907,
		0.492105, 0.184548, 0.850749,
		32.482616, 23.818476, 23.825460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.791180, 23.597490, 23.044199>,  <32.138142, 23.689291, 23.229937>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.791180, 23.597490, 23.044199> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.809303, 23.546562, 23.440529>,  <32.820175, 23.516005, 23.678328>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.809303, 23.546562, 23.440529>,  <32.791180, 23.597490, 23.044199>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.809303, 23.546562, 23.440529> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694657, -0.708775, -0.122841,
		0.717913, 0.693850, 0.056333,
		0.045306, -0.127321, 0.990826,
		32.822895, 23.508366, 23.737778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.490910, 23.424141, 23.208780>,  <32.791180, 23.597490, 23.044199>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.490910, 23.424141, 23.208780> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.318954, 23.313221, 23.552479>,  <33.215782, 23.246670, 23.758698>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.318954, 23.313221, 23.552479>,  <33.490910, 23.424141, 23.208780>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.318954, 23.313221, 23.552479> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583162, -0.811810, 0.029770,
		0.689288, 0.513876, 0.510698,
		-0.429888, -0.277300, 0.859245,
		33.189987, 23.230030, 23.810251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.996204, 23.301655, 23.727016>,  <33.490910, 23.424141, 23.208780>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.996204, 23.301655, 23.727016> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.684612, 23.075813, 23.836128>,  <33.497658, 22.940308, 23.901594>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.684612, 23.075813, 23.836128>,  <33.996204, 23.301655, 23.727016>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.684612, 23.075813, 23.836128> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618181, -0.764385, 0.183215,
		0.105064, 0.311348, 0.944470,
		-0.778982, -0.564605, 0.272779,
		33.450916, 22.906431, 23.917961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.328804, 22.954779, 24.327995>,  <33.996204, 23.301655, 23.727016>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.328804, 22.954779, 24.327995> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.986244, 22.766315, 24.243534>,  <33.780708, 22.653238, 24.192858>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.986244, 22.766315, 24.243534>,  <34.328804, 22.954779, 24.327995>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.986244, 22.766315, 24.243534> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493777, -0.866901, -0.068312,
		-0.150862, -0.162764, 0.975063,
		-0.856402, -0.471158, -0.211152,
		33.729324, 22.624968, 24.180189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.316437, 22.263453, 24.684050>,  <34.328804, 22.954779, 24.327995>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.316437, 22.263453, 24.684050> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.042030, 22.197372, 24.400616>,  <33.877388, 22.157724, 24.230555>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.042030, 22.197372, 24.400616>,  <34.316437, 22.263453, 24.684050>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.042030, 22.197372, 24.400616> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453287, -0.858832, -0.238619,
		-0.569136, -0.484889, 0.664054,
		-0.686014, -0.165201, -0.708586,
		33.836227, 22.147812, 24.188040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.192120, 21.602287, 24.709625>,  <34.316437, 22.263453, 24.684050>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.192120, 21.602287, 24.709625> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.058224, 21.691891, 24.343506>,  <33.977886, 21.745653, 24.123835>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.058224, 21.691891, 24.343506>,  <34.192120, 21.602287, 24.709625>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.058224, 21.691891, 24.343506> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389342, -0.851667, -0.350823,
		-0.858114, -0.473799, 0.197875,
		-0.334743, 0.224005, -0.915297,
		33.957802, 21.759092, 24.068916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.014858, 20.933319, 24.479427>,  <34.192120, 21.602287, 24.709625>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.014858, 20.933319, 24.479427> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.079002, 21.162872, 24.158195>,  <34.117489, 21.300604, 23.965456>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.079002, 21.162872, 24.158195>,  <34.014858, 20.933319, 24.479427>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.079002, 21.162872, 24.158195> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274127, -0.807499, -0.522303,
		-0.948229, -0.136388, -0.286811,
		0.160364, 0.573885, -0.803081,
		34.127113, 21.335037, 23.917271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.702953, 20.541109, 23.896446>,  <34.014858, 20.933319, 24.479427>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.702953, 20.541109, 23.896446> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.959332, 20.800026, 23.731426>,  <34.113159, 20.955376, 23.632414>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.959332, 20.800026, 23.731426>,  <33.702953, 20.541109, 23.896446>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.959332, 20.800026, 23.731426> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466323, -0.755277, -0.460544,
		-0.609694, 0.102805, -0.785941,
		0.640949, 0.647293, -0.412548,
		34.151615, 20.994213, 23.607662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.785694, 20.231222, 23.291775>,  <33.702953, 20.541109, 23.896446>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.785694, 20.231222, 23.291775> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.098045, 20.481030, 23.286083>,  <34.285458, 20.630915, 23.282669>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.098045, 20.481030, 23.286083>,  <33.785694, 20.231222, 23.291775>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.098045, 20.481030, 23.286083> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538177, -0.684137, -0.492262,
		-0.317161, 0.376740, -0.870331,
		0.780880, 0.624519, -0.014229,
		34.332310, 20.668385, 23.281815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.995964, 20.370787, 22.589882>,  <33.785694, 20.231222, 23.291775>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.995964, 20.370787, 22.589882> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.310978, 20.441494, 22.826035>,  <34.499985, 20.483919, 22.967726>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.310978, 20.441494, 22.826035>,  <33.995964, 20.370787, 22.589882>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.310978, 20.441494, 22.826035> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541232, -0.656527, -0.525395,
		0.294726, 0.733297, -0.612709,
		0.787530, 0.176770, 0.590380,
		34.547237, 20.494526, 23.003149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.490791, 20.449532, 22.119467>,  <33.995964, 20.370787, 22.589882>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.490791, 20.449532, 22.119467> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.668514, 20.390312, 22.472889>,  <34.775150, 20.354780, 22.684942>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.668514, 20.390312, 22.472889>,  <34.490791, 20.449532, 22.119467>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.668514, 20.390312, 22.472889> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619817, -0.661305, -0.422495,
		0.646850, 0.735361, -0.202061,
		0.444310, -0.148050, 0.883555,
		34.801807, 20.345898, 22.737955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.832211, 20.466421, 21.477386>,  <34.490791, 20.449532, 22.119467>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.832211, 20.466421, 21.477386> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.892071, 20.463547, 21.081902>,  <34.927986, 20.461823, 20.844610>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.892071, 20.463547, 21.081902>,  <34.832211, 20.466421, 21.477386>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.892071, 20.463547, 21.081902> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319694, 0.945908, -0.055264,
		0.935629, 0.324356, 0.139253,
		0.149646, -0.007188, -0.988714,
		34.936966, 20.461390, 20.785288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.208218, 21.151684, 21.311827>,  <34.832211, 20.466421, 21.477386>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.208218, 21.151684, 21.311827> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.022892, 21.018364, 20.983376>,  <34.911697, 20.938372, 20.786304>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.022892, 21.018364, 20.983376>,  <35.208218, 21.151684, 21.311827>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.022892, 21.018364, 20.983376> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275110, 0.934894, -0.224250,
		0.842411, 0.122003, -0.524842,
		-0.463312, -0.333300, -0.821129,
		34.883900, 20.918373, 20.737038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.365093, 21.679937, 20.761086>,  <35.208218, 21.151684, 21.311827>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.365093, 21.679937, 20.761086> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.079437, 21.459122, 20.588921>,  <34.908043, 21.326633, 20.485622>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.079437, 21.459122, 20.588921>,  <35.365093, 21.679937, 20.761086>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.079437, 21.459122, 20.588921> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417187, 0.829394, -0.371565,
		0.562099, -0.085788, -0.822609,
		-0.714142, -0.552038, -0.430412,
		34.865196, 21.293510, 20.459797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.217449, 22.035164, 20.159851>,  <35.365093, 21.679937, 20.761086>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.217449, 22.035164, 20.159851> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.891022, 21.828121, 20.262703>,  <34.695164, 21.703896, 20.324413>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.891022, 21.828121, 20.262703>,  <35.217449, 22.035164, 20.159851>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.891022, 21.828121, 20.262703> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561846, 0.814791, -0.142984,
		-0.135497, -0.261152, -0.955741,
		-0.816070, -0.517605, 0.257129,
		34.646202, 21.672840, 20.339842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.701683, 22.104080, 19.649961>,  <35.217449, 22.035164, 20.159851>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.701683, 22.104080, 19.649961> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.480606, 21.984364, 19.961079>,  <34.347961, 21.912535, 20.147749>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.480606, 21.984364, 19.961079>,  <34.701683, 22.104080, 19.649961>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.480606, 21.984364, 19.961079> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493472, 0.869614, -0.016032,
		-0.671580, -0.392679, -0.628318,
		-0.552690, -0.299290, 0.777791,
		34.314800, 21.894577, 20.194416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.960232, 22.389130, 19.523447>,  <34.701683, 22.104080, 19.649961>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.960232, 22.389130, 19.523447> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.962639, 22.302269, 19.913895>,  <33.964081, 22.250153, 20.148163>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.962639, 22.302269, 19.913895>,  <33.960232, 22.389130, 19.523447>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.962639, 22.302269, 19.913895> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522549, 0.831575, 0.188216,
		-0.852588, -0.511203, -0.108470,
		0.006015, -0.217152, 0.976119,
		33.964443, 22.237123, 20.206730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.327538, 22.407471, 19.792656>,  <33.960232, 22.389130, 19.523447>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.327538, 22.407471, 19.792656> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.549042, 22.484989, 20.116581>,  <33.681946, 22.531500, 20.310936>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.549042, 22.484989, 20.116581>,  <33.327538, 22.407471, 19.792656>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.549042, 22.484989, 20.116581> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401011, 0.914397, 0.055391,
		-0.729754, -0.355416, 0.584071,
		0.553759, 0.193797, 0.809811,
		33.715168, 22.543129, 20.359524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.626385, 22.599445, 19.559870>,  <33.327538, 22.407471, 19.792656>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.626385, 22.599445, 19.559870> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.647617, 22.667526, 19.166279>,  <32.660355, 22.708374, 18.930124>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.647617, 22.667526, 19.166279>,  <32.626385, 22.599445, 19.559870>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.647617, 22.667526, 19.166279> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033384, -0.984514, -0.172096,
		-0.998032, 0.041984, -0.046574,
		0.053078, 0.170202, -0.983979,
		32.663540, 22.718586, 18.871086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.075077, 22.153015, 19.243866>,  <32.626385, 22.599445, 19.559870>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.075077, 22.153015, 19.243866> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.349163, 22.231548, 18.963314>,  <32.513615, 22.278669, 18.794983>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.349163, 22.231548, 18.963314>,  <32.075077, 22.153015, 19.243866>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.349163, 22.231548, 18.963314> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068127, -0.976038, -0.206662,
		-0.725146, 0.093825, -0.682172,
		0.685216, 0.196335, -0.701378,
		32.554729, 22.290449, 18.752901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.950310, 21.761051, 18.574366>,  <32.075077, 22.153015, 19.243866>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.950310, 21.761051, 18.574366> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.337227, 21.844952, 18.517311>,  <32.569378, 21.895292, 18.483078>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.337227, 21.844952, 18.517311>,  <31.950310, 21.761051, 18.574366>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.337227, 21.844952, 18.517311> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173052, -0.956836, -0.233491,
		-0.185455, 0.201171, -0.961841,
		0.967295, 0.209750, -0.142637,
		32.627415, 21.907877, 18.474520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.143982, 21.412901, 17.966167>,  <31.950310, 21.761051, 18.574366>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.143982, 21.412901, 17.966167> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.479046, 21.468128, 18.177547>,  <32.680084, 21.501265, 18.304375>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.479046, 21.468128, 18.177547>,  <32.143982, 21.412901, 17.966167>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.479046, 21.468128, 18.177547> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328653, -0.900181, -0.285765,
		0.436244, 0.413051, -0.799425,
		0.837662, 0.138070, 0.528449,
		32.730343, 21.509548, 18.336082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.703964, 21.235607, 17.464706>,  <32.143982, 21.412901, 17.966167>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.703964, 21.235607, 17.464706> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.847134, 21.204426, 17.836903>,  <32.933037, 21.185717, 18.060221>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.847134, 21.204426, 17.836903>,  <32.703964, 21.235607, 17.464706>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.847134, 21.204426, 17.836903> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166741, -0.975157, -0.145833,
		0.918741, 0.207349, -0.336038,
		0.357928, -0.077951, 0.930490,
		32.954514, 21.181040, 18.116049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.405266, 20.986675, 17.381002>,  <32.703964, 21.235607, 17.464706>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.405266, 20.986675, 17.381002> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.292736, 20.910141, 17.757141>,  <33.225220, 20.864220, 17.982824>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.292736, 20.910141, 17.757141>,  <33.405266, 20.986675, 17.381002>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.292736, 20.910141, 17.757141> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380388, -0.921879, -0.073779,
		0.881001, 0.336940, 0.332127,
		-0.281322, -0.191337, 0.940345,
		33.208340, 20.852739, 18.039244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.059963, 20.806515, 17.787518>,  <33.405266, 20.986675, 17.381002>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.059963, 20.806515, 17.787518> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.750225, 20.654144, 17.989620>,  <33.564381, 20.562723, 18.110882>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.750225, 20.654144, 17.989620>,  <34.059963, 20.806515, 17.787518>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.750225, 20.654144, 17.989620> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476624, -0.876334, 0.069778,
		0.416193, 0.294850, 0.860144,
		-0.774347, -0.380924, 0.505256,
		33.517921, 20.539867, 18.141197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.303444, 20.301334, 18.134598>,  <34.059963, 20.806515, 17.787518>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.303444, 20.301334, 18.134598> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.919373, 20.206200, 18.193241>,  <33.688931, 20.149118, 18.228426>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.919373, 20.206200, 18.193241>,  <34.303444, 20.301334, 18.134598>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.919373, 20.206200, 18.193241> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246198, -0.968329, 0.041548,
		0.132082, 0.075988, 0.988322,
		-0.960178, -0.237835, 0.146607,
		33.631321, 20.134850, 18.237223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.161781, 19.690199, 18.559496>,  <34.303444, 20.301334, 18.134598>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.161781, 19.690199, 18.559496> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.827240, 19.717133, 18.341881>,  <33.626514, 19.733294, 18.211311>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.827240, 19.717133, 18.341881>,  <34.161781, 19.690199, 18.559496>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.827240, 19.717133, 18.341881> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005204, -0.993358, -0.114947,
		-0.548165, -0.093305, 0.831150,
		-0.836354, 0.067335, -0.544038,
		33.576332, 19.737333, 18.178669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<27.749662, 34.354431, 19.227875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.591621, 34.170856, 18.909561>,  <27.496798, 34.060711, 18.718573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.591621, 34.170856, 18.909561>,  <27.749662, 34.354431, 19.227875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.591621, 34.170856, 18.909561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782577, -0.621835, -0.029923,
		-0.481112, -0.634584, 0.604842,
		-0.395100, -0.458939, -0.795783,
		27.473091, 34.033176, 18.670826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.804358, 33.676441, 19.352249>,  <27.749662, 34.354431, 19.227875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.804358, 33.676441, 19.352249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.751900, 33.659561, 18.956062>,  <27.720425, 33.649433, 18.718351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.751900, 33.659561, 18.956062>,  <27.804358, 33.676441, 19.352249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.751900, 33.659561, 18.956062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489704, -0.871448, -0.027713,
		-0.861970, -0.488669, 0.134948,
		-0.131142, -0.042197, -0.990465,
		27.712557, 33.646900, 18.658922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.599190, 33.090054, 19.191282>,  <27.804358, 33.676441, 19.352249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.599190, 33.090054, 19.191282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.763443, 33.212048, 18.847569>,  <27.861994, 33.285244, 18.641340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.763443, 33.212048, 18.847569>,  <27.599190, 33.090054, 19.191282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.763443, 33.212048, 18.847569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631001, -0.775334, 0.026351,
		-0.658195, -0.553028, -0.510822,
		0.410631, 0.304985, -0.859282,
		27.886633, 33.303543, 18.589785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.803497, 32.442589, 18.906160>,  <27.599190, 33.090054, 19.191282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.803497, 32.442589, 18.906160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.006447, 32.717159, 18.697777>,  <28.128216, 32.881901, 18.572746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.006447, 32.717159, 18.697777>,  <27.803497, 32.442589, 18.906160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.006447, 32.717159, 18.697777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739754, -0.657017, -0.145233,
		-0.441970, -0.311694, -0.841136,
		0.507372, 0.686423, -0.520958,
		28.158659, 32.923084, 18.541489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.056002, 32.151302, 18.283724>,  <27.803497, 32.442589, 18.906160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.056002, 32.151302, 18.283724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.270628, 32.488842, 18.285053>,  <28.399405, 32.691368, 18.285851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.270628, 32.488842, 18.285053>,  <28.056002, 32.151302, 18.283724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.270628, 32.488842, 18.285053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778049, -0.493194, -0.389101,
		-0.326705, 0.211363, -0.921189,
		0.536567, 0.843851, 0.003322,
		28.431599, 32.741997, 18.286049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.386887, 32.268539, 17.599983>,  <28.056002, 32.151302, 18.283724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.386887, 32.268539, 17.599983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.609655, 32.473957, 17.861092>,  <28.743317, 32.597206, 18.017757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.609655, 32.473957, 17.861092>,  <28.386887, 32.268539, 17.599983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.609655, 32.473957, 17.861092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806128, -0.523463, -0.275943,
		0.199993, 0.679896, -0.705510,
		0.556921, 0.513544, 0.652772,
		28.776731, 32.628021, 18.056923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.049213, 32.407383, 17.262011>,  <28.386887, 32.268539, 17.599983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.049213, 32.407383, 17.262011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.119970, 32.470375, 17.650631>,  <29.162424, 32.508171, 17.883802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.119970, 32.470375, 17.650631>,  <29.049213, 32.407383, 17.262011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.119970, 32.470375, 17.650631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912604, -0.395921, -0.101984,
		0.368597, 0.904680, -0.213753,
		0.176892, 0.157481, 0.971550,
		29.173038, 32.517620, 17.942097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.781889, 32.512173, 17.342691>,  <29.049213, 32.407383, 17.262011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.781889, 32.512173, 17.342691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.675611, 32.419662, 17.717052>,  <29.611845, 32.364155, 17.941669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.675611, 32.419662, 17.717052>,  <29.781889, 32.512173, 17.342691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.675611, 32.419662, 17.717052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861766, -0.492164, 0.123022,
		0.432166, 0.839217, 0.330072,
		-0.265691, -0.231279, 0.935905,
		29.595903, 32.350277, 17.997824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.385590, 32.633495, 17.716482>,  <29.781889, 32.512173, 17.342691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.385590, 32.633495, 17.716482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.168695, 32.389629, 17.947754>,  <30.038559, 32.243309, 18.086517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.168695, 32.389629, 17.947754>,  <30.385590, 32.633495, 17.716482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.168695, 32.389629, 17.947754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828287, -0.503440, 0.245945,
		0.141136, 0.612259, 0.777959,
		-0.542237, -0.609661, 0.578180,
		30.006023, 32.206730, 18.121208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.784742, 32.489574, 18.265375>,  <30.385590, 32.633495, 17.716482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.784742, 32.489574, 18.265375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.539757, 32.176327, 18.222275>,  <30.392765, 31.988379, 18.196415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.539757, 32.176327, 18.222275>,  <30.784742, 32.489574, 18.265375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.539757, 32.176327, 18.222275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761372, -0.621053, 0.186024,
		-0.212597, 0.031896, 0.976619,
		-0.612466, -0.783119, -0.107749,
		30.356016, 31.941391, 18.189951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.043791, 31.986122, 18.688463>,  <30.784742, 32.489574, 18.265375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.043791, 31.986122, 18.688463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.777929, 31.782673, 18.469543>,  <30.618412, 31.660603, 18.338192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.777929, 31.782673, 18.469543>,  <31.043791, 31.986122, 18.688463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.777929, 31.782673, 18.469543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522786, -0.839923, 0.145682,
		-0.533787, -0.189293, 0.824160,
		-0.664654, -0.508623, -0.547300,
		30.578533, 31.630087, 18.305353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.887033, 31.369534, 19.088463>,  <31.043791, 31.986122, 18.688463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.887033, 31.369534, 19.088463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.756224, 31.287922, 18.719372>,  <30.677738, 31.238955, 18.497917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.756224, 31.287922, 18.719372>,  <30.887033, 31.369534, 19.088463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.756224, 31.287922, 18.719372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448806, -0.892806, 0.038349,
		-0.831641, -0.401585, 0.383539,
		-0.327026, -0.204027, -0.922728,
		30.658115, 31.226713, 18.442553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.172421, 30.756182, 19.595526>,  <30.887033, 31.369534, 19.088463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.172421, 30.756182, 19.595526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.552582, 30.675949, 19.690609>,  <31.780678, 30.627810, 19.747660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.552582, 30.675949, 19.690609>,  <31.172421, 30.756182, 19.595526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.552582, 30.675949, 19.690609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233099, 0.965339, -0.117409,
		-0.205919, 0.166995, 0.964215,
		0.950401, -0.200580, 0.237708,
		31.837702, 30.615774, 19.761921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.313364, 31.366533, 19.915491>,  <31.172421, 30.756182, 19.595526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.313364, 31.366533, 19.915491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.658693, 31.197731, 19.804798>,  <31.865891, 31.096449, 19.738382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.658693, 31.197731, 19.804798>,  <31.313364, 31.366533, 19.915491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.658693, 31.197731, 19.804798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376181, 0.903693, -0.204518,
		0.336390, 0.072464, 0.938931,
		0.863325, -0.422006, -0.276734,
		31.917690, 31.071129, 19.721777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.845785, 31.784979, 20.158487>,  <31.313364, 31.366533, 19.915491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.845785, 31.784979, 20.158487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.075485, 31.580051, 19.903061>,  <32.213306, 31.457096, 19.749805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.075485, 31.580051, 19.903061>,  <31.845785, 31.784979, 20.158487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.075485, 31.580051, 19.903061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504932, 0.835611, -0.216328,
		0.644421, -0.198206, 0.738536,
		0.574252, -0.512317, -0.638566,
		32.247761, 31.426357, 19.711491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.617382, 31.872429, 20.295300>,  <31.845785, 31.784979, 20.158487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.617382, 31.872429, 20.295300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.599873, 31.778416, 19.906898>,  <32.589367, 31.722008, 19.673859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.599873, 31.778416, 19.906898>,  <32.617382, 31.872429, 20.295300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.599873, 31.778416, 19.906898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501743, 0.835295, -0.224803,
		0.863909, -0.497033, 0.081366,
		-0.043770, -0.235034, -0.971001,
		32.586742, 31.707905, 19.615599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.233768, 31.788452, 20.104874>,  <32.617382, 31.872429, 20.295300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.233768, 31.788452, 20.104874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.042870, 31.852673, 19.759281>,  <32.928329, 31.891205, 19.551926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.042870, 31.852673, 19.759281>,  <33.233768, 31.788452, 20.104874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.042870, 31.852673, 19.759281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636268, 0.741277, -0.213710,
		0.606136, -0.651714, -0.455925,
		-0.477244, 0.160553, -0.863980,
		32.899696, 31.900839, 19.500088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.724930, 31.866678, 19.733248>,  <33.233768, 31.788452, 20.104874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.724930, 31.866678, 19.733248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.455734, 32.016869, 19.478344>,  <33.294216, 32.106983, 19.325401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.455734, 32.016869, 19.478344>,  <33.724930, 31.866678, 19.733248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.455734, 32.016869, 19.478344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549665, 0.830391, -0.091212,
		0.494926, -0.411664, -0.765232,
		-0.672991, 0.375478, -0.637260,
		33.253838, 32.129513, 19.287167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.071419, 32.046917, 19.125746>,  <33.724930, 31.866678, 19.733248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.071419, 32.046917, 19.125746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.736473, 32.258274, 19.181770>,  <33.535503, 32.385090, 19.215385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.736473, 32.258274, 19.181770>,  <34.071419, 32.046917, 19.125746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.736473, 32.258274, 19.181770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494643, 0.841487, -0.217318,
		-0.232689, -0.112695, -0.966000,
		-0.837367, 0.528393, 0.140061,
		33.485264, 32.416790, 19.223789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.127327, 32.530380, 18.605520>,  <34.071419, 32.046917, 19.125746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.127327, 32.530380, 18.605520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.861446, 32.702053, 18.850132>,  <33.701920, 32.805058, 18.996899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.861446, 32.702053, 18.850132>,  <34.127327, 32.530380, 18.605520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.861446, 32.702053, 18.850132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306748, 0.903135, -0.300422,
		-0.681232, -0.012105, -0.731968,
		-0.664702, 0.429186, 0.611531,
		33.662037, 32.830811, 19.033590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.993633, 33.188660, 18.318375>,  <34.127327, 32.530380, 18.605520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.993633, 33.188660, 18.318375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.839821, 33.263866, 18.679878>,  <33.747532, 33.308990, 18.896780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.839821, 33.263866, 18.679878>,  <33.993633, 33.188660, 18.318375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.839821, 33.263866, 18.679878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288886, 0.954371, -0.075631,
		-0.876743, 0.232001, -0.421305,
		-0.384535, 0.188018, 0.903760,
		33.724461, 33.320271, 18.951006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.455086, 33.775192, 18.306492>,  <33.993633, 33.188660, 18.318375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.455086, 33.775192, 18.306492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.628464, 33.733574, 18.664555>,  <33.732491, 33.708603, 18.879393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.628464, 33.733574, 18.664555>,  <33.455086, 33.775192, 18.306492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.628464, 33.733574, 18.664555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156733, 0.986878, 0.038811,
		-0.887447, 0.123478, 0.444063,
		0.433444, -0.104042, 0.895155,
		33.758495, 33.702362, 18.933102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.230705, 34.397102, 18.668472>,  <33.455086, 33.775192, 18.306492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.230705, 34.397102, 18.668472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.521557, 34.274048, 18.913960>,  <33.696068, 34.200214, 19.061251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.521557, 34.274048, 18.913960>,  <33.230705, 34.397102, 18.668472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.521557, 34.274048, 18.913960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232224, 0.951494, 0.201822,
		-0.646035, -0.004230, 0.763296,
		0.727125, -0.307640, 0.613716,
		33.739693, 34.181755, 19.098074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.126190, 34.813740, 19.309858>,  <33.230705, 34.397102, 18.668472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.126190, 34.813740, 19.309858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.509674, 34.700722, 19.296986>,  <33.739765, 34.632912, 19.289263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.509674, 34.700722, 19.296986>,  <33.126190, 34.813740, 19.309858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.509674, 34.700722, 19.296986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275358, 0.894093, 0.353236,
		-0.071032, -0.347514, 0.934981,
		0.958714, -0.282545, -0.032182,
		33.797287, 34.615959, 19.287331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.439018, 35.211731, 19.793304>,  <33.126190, 34.813740, 19.309858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.439018, 35.211731, 19.793304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.762756, 35.087524, 19.593891>,  <33.957001, 35.013000, 19.474243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.762756, 35.087524, 19.593891>,  <33.439018, 35.211731, 19.793304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.762756, 35.087524, 19.593891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406826, 0.908602, 0.094530,
		0.423616, -0.279324, 0.861700,
		0.809347, -0.310517, -0.498535,
		34.005562, 34.994370, 19.444330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.054569, 35.448101, 20.197449>,  <33.439018, 35.211731, 19.793304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.054569, 35.448101, 20.197449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.128399, 35.396233, 19.807758>,  <34.172699, 35.365112, 19.573944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.128399, 35.396233, 19.807758>,  <34.054569, 35.448101, 20.197449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.128399, 35.396233, 19.807758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337357, 0.939391, -0.061119,
		0.923104, -0.317380, 0.217137,
		0.184578, -0.129672, -0.974226,
		34.183773, 35.357330, 19.515491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.763016, 35.254078, 20.845686>,  <34.054569, 35.448101, 20.197449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.763016, 35.254078, 20.845686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.693924, 35.560760, 21.093018>,  <33.652470, 35.744770, 21.241417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.693924, 35.560760, 21.093018>,  <33.763016, 35.254078, 20.845686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.693924, 35.560760, 21.093018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.983284, -0.170940, -0.062714,
		0.057614, -0.618823, 0.783414,
		-0.172726, 0.766706, 0.618327,
		33.642105, 35.790771, 21.278515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.351898, 35.131062, 21.493258>,  <33.763016, 35.254078, 20.845686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.351898, 35.131062, 21.493258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.137009, 35.088829, 21.827980>,  <33.008076, 35.063492, 22.028814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.137009, 35.088829, 21.827980>,  <33.351898, 35.131062, 21.493258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.137009, 35.088829, 21.827980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497260, -0.841017, 0.213128,
		0.681267, 0.530607, 0.504313,
		-0.537223, -0.105577, 0.836806,
		32.975842, 35.057156, 22.079021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.789257, 34.893734, 22.052006>,  <33.351898, 35.131062, 21.493258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.789257, 34.893734, 22.052006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.411869, 34.781464, 22.122524>,  <33.185436, 34.714100, 22.164835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.411869, 34.781464, 22.122524>,  <33.789257, 34.893734, 22.052006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.411869, 34.781464, 22.122524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325175, -0.886823, 0.328338,
		0.064186, 0.367105, 0.927962,
		-0.943473, -0.280675, 0.176295,
		33.128826, 34.697262, 22.175413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.805813, 34.666798, 22.708790>,  <33.789257, 34.893734, 22.052006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.805813, 34.666798, 22.708790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.477619, 34.499172, 22.553257>,  <33.280704, 34.398598, 22.459936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.477619, 34.499172, 22.553257>,  <33.805813, 34.666798, 22.708790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.477619, 34.499172, 22.553257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256142, -0.877566, 0.405300,
		-0.511073, 0.232946, 0.827370,
		-0.820485, -0.419063, -0.388833,
		33.231472, 34.373455, 22.436607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.330662, 34.368828, 23.263947>,  <33.805813, 34.666798, 22.708790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.330662, 34.368828, 23.263947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.262127, 34.157028, 22.931618>,  <33.221004, 34.029949, 22.732220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.262127, 34.157028, 22.931618>,  <33.330662, 34.368828, 23.263947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.262127, 34.157028, 22.931618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108604, -0.848307, 0.518248,
		-0.979208, -0.001434, 0.202856,
		-0.171341, -0.529504, -0.830824,
		33.210724, 33.998177, 22.682371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.822578, 34.048813, 23.468227>,  <33.330662, 34.368828, 23.263947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.822578, 34.048813, 23.468227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.972679, 33.835743, 23.164795>,  <33.062740, 33.707901, 22.982735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.972679, 33.835743, 23.164795>,  <32.822578, 34.048813, 23.468227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.972679, 33.835743, 23.164795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108100, -0.837950, 0.534934,
		-0.920598, -0.118732, -0.372024,
		0.375251, -0.532675, -0.758580,
		33.085255, 33.675941, 22.937222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.386726, 33.437630, 23.382898>,  <32.822578, 34.048813, 23.468227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.386726, 33.437630, 23.382898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.722481, 33.339195, 23.189045>,  <32.923935, 33.280132, 23.072733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.722481, 33.339195, 23.189045>,  <32.386726, 33.437630, 23.382898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.722481, 33.339195, 23.189045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024872, -0.908089, 0.418038,
		-0.542963, -0.338843, -0.768360,
		0.839388, -0.246090, -0.484631,
		32.974297, 33.265369, 23.043655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.173794, 32.816551, 23.075954>,  <32.386726, 33.437630, 23.382898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.173794, 32.816551, 23.075954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.573772, 32.817383, 23.072056>,  <32.813759, 32.817883, 23.069717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.573772, 32.817383, 23.072056>,  <32.173794, 32.816551, 23.075954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.573772, 32.817383, 23.072056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003818, -0.983260, 0.182167,
		-0.009205, -0.182195, -0.983219,
		0.999951, 0.002077, -0.009746,
		32.873756, 32.818005, 23.069132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.378685, 32.234745, 22.693911>,  <32.173794, 32.816551, 23.075954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.378685, 32.234745, 22.693911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.727692, 32.337749, 22.859993>,  <32.937096, 32.399551, 22.959642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.727692, 32.337749, 22.859993>,  <32.378685, 32.234745, 22.693911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.727692, 32.337749, 22.859993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108485, -0.930723, 0.349266,
		0.476381, -0.259698, -0.840011,
		0.872521, 0.257512, 0.415205,
		32.989449, 32.415005, 22.984554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.780163, 31.803486, 22.476252>,  <32.378685, 32.234745, 22.693911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.780163, 31.803486, 22.476252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.953068, 31.937260, 22.811226>,  <33.056812, 32.017525, 23.012211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.953068, 31.937260, 22.811226>,  <32.780163, 31.803486, 22.476252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.953068, 31.937260, 22.811226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175963, -0.942113, 0.285411,
		0.884413, 0.023985, -0.466089,
		0.432264, 0.334436, 0.837437,
		33.082748, 32.037590, 23.062456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.499954, 31.577272, 22.468746>,  <32.780163, 31.803486, 22.476252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.499954, 31.577272, 22.468746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.376076, 31.640434, 22.843800>,  <33.301750, 31.678331, 23.068832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.376076, 31.640434, 22.843800>,  <33.499954, 31.577272, 22.468746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.376076, 31.640434, 22.843800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048016, -0.982259, 0.181278,
		0.949624, 0.101161, 0.296616,
		-0.309692, 0.157903, 0.937634,
		33.283169, 31.687805, 23.125090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.925533, 31.208303, 22.871883>,  <33.499954, 31.577272, 22.468746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.925533, 31.208303, 22.871883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.621239, 31.280407, 23.121296>,  <33.438663, 31.323669, 23.270943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.621239, 31.280407, 23.121296>,  <33.925533, 31.208303, 22.871883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.621239, 31.280407, 23.121296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035384, -0.947717, 0.317146,
		0.648097, 0.263327, 0.714583,
		-0.760736, 0.180256, 0.623530,
		33.393017, 31.334484, 23.308355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.138287, 30.910698, 23.432924>,  <33.925533, 31.208303, 22.871883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.138287, 30.910698, 23.432924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.744843, 30.943871, 23.496967>,  <33.508778, 30.963774, 23.535393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.744843, 30.943871, 23.496967>,  <34.138287, 30.910698, 23.432924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.744843, 30.943871, 23.496967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019882, -0.932425, 0.360817,
		0.179212, 0.351719, 0.918791,
		-0.983610, 0.082930, 0.160109,
		33.449760, 30.968750, 23.545000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.001823, 30.543030, 24.065117>,  <34.138287, 30.910698, 23.432924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.001823, 30.543030, 24.065117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.643734, 30.570488, 23.889000>,  <33.428879, 30.586964, 23.783329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.643734, 30.570488, 23.889000>,  <34.001823, 30.543030, 24.065117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.643734, 30.570488, 23.889000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240006, -0.906783, 0.346614,
		-0.375457, 0.415971, 0.828251,
		-0.895226, 0.068647, -0.440293,
		33.375168, 30.591082, 23.756912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.504417, 30.222132, 24.496513>,  <34.001823, 30.543030, 24.065117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.504417, 30.222132, 24.496513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.315170, 30.227951, 24.144161>,  <33.201622, 30.231443, 23.932751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.315170, 30.227951, 24.144161>,  <33.504417, 30.222132, 24.496513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.315170, 30.227951, 24.144161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223347, -0.969180, 0.103950,
		-0.852220, 0.245922, 0.461784,
		-0.473115, 0.014549, -0.880880,
		33.173237, 30.232315, 23.879898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.845112, 29.922661, 24.620867>,  <33.504417, 30.222132, 24.496513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.845112, 29.922661, 24.620867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.925274, 29.888683, 24.230457>,  <32.973370, 29.868298, 23.996212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.925274, 29.888683, 24.230457>,  <32.845112, 29.922661, 24.620867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.925274, 29.888683, 24.230457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364591, -0.931147, 0.006177,
		-0.909346, 0.354612, -0.217577,
		0.200406, -0.084944, -0.976024,
		32.985397, 29.863201, 23.937651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.252449, 29.605326, 24.355974>,  <32.845112, 29.922661, 24.620867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.252449, 29.605326, 24.355974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.531193, 29.538113, 24.077076>,  <32.698441, 29.497786, 23.909737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.531193, 29.538113, 24.077076>,  <32.252449, 29.605326, 24.355974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.531193, 29.538113, 24.077076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328254, -0.939092, -0.101758,
		-0.637679, 0.299785, -0.709574,
		0.696861, -0.168032, -0.697245,
		32.740250, 29.487703, 23.867903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.902626, 29.331537, 23.850216>,  <32.252449, 29.605326, 24.355974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.902626, 29.331537, 23.850216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.276951, 29.200794, 23.797417>,  <32.501545, 29.122349, 23.765738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.276951, 29.200794, 23.797417>,  <31.902626, 29.331537, 23.850216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.276951, 29.200794, 23.797417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349904, -0.906721, -0.235422,
		-0.042735, 0.266496, -0.962888,
		0.935810, -0.326858, -0.131997,
		32.557693, 29.102737, 23.757818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.880938, 28.840721, 23.195040>,  <31.902626, 29.331537, 23.850216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.880938, 28.840721, 23.195040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.210587, 28.764286, 23.408321>,  <32.408375, 28.718426, 23.536291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.210587, 28.764286, 23.408321>,  <31.880938, 28.840721, 23.195040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.210587, 28.764286, 23.408321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097333, -0.975148, -0.199031,
		0.557984, 0.112128, -0.822241,
		0.824124, -0.191087, 0.533203,
		32.457825, 28.706961, 23.568283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.153912, 28.345720, 22.872417>,  <31.880938, 28.840721, 23.195040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.153912, 28.345720, 22.872417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.321938, 28.334881, 23.235252>,  <32.422752, 28.328377, 23.452953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.321938, 28.334881, 23.235252>,  <32.153912, 28.345720, 22.872417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.321938, 28.334881, 23.235252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071065, -0.997467, 0.003113,
		0.904705, -0.065769, -0.420931,
		0.420070, -0.027097, 0.907088,
		32.447960, 28.326752, 23.507378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.583744, 27.887056, 22.763052>,  <32.153912, 28.345720, 22.872417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.583744, 27.887056, 22.763052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.550663, 27.896870, 23.161560>,  <32.530815, 27.902758, 23.400665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.550663, 27.896870, 23.161560>,  <32.583744, 27.887056, 22.763052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.550663, 27.896870, 23.161560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071863, -0.997241, 0.018592,
		0.993980, -0.070057, 0.084238,
		-0.082703, 0.024533, 0.996272,
		32.525852, 27.904230, 23.460442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.860119, 27.259979, 22.946651>,  <32.583744, 27.887056, 22.763052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.860119, 27.259979, 22.946651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.674656, 27.370014, 23.283543>,  <32.563377, 27.436035, 23.485678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.674656, 27.370014, 23.283543>,  <32.860119, 27.259979, 22.946651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.674656, 27.370014, 23.283543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232831, -0.955001, 0.183745,
		0.854874, -0.110901, 0.506844,
		-0.463659, 0.275088, 0.842227,
		32.535557, 27.452541, 23.536211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.161297, 26.832836, 23.408743>,  <32.860119, 27.259979, 22.946651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.161297, 26.832836, 23.408743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.809319, 26.933769, 23.569752>,  <32.598133, 26.994329, 23.666357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.809319, 26.933769, 23.569752>,  <33.161297, 26.832836, 23.408743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.809319, 26.933769, 23.569752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141444, -0.948011, 0.285077,
		0.453529, 0.193918, 0.869889,
		-0.879946, 0.252331, 0.402522,
		32.545334, 27.009468, 23.690508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.273651, 26.648869, 24.036303>,  <33.161297, 26.832836, 23.408743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.273651, 26.648869, 24.036303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.877270, 26.646965, 23.982666>,  <32.639439, 26.645823, 23.950483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.877270, 26.646965, 23.982666>,  <33.273651, 26.648869, 24.036303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.877270, 26.646965, 23.982666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029315, -0.967545, 0.250992,
		-0.130935, 0.252653, 0.958657,
		-0.990957, -0.004760, -0.134092,
		32.579983, 26.645536, 23.942438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.022087, 26.429024, 24.645727>,  <33.273651, 26.648869, 24.036303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.022087, 26.429024, 24.645727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.733471, 26.367542, 24.375690>,  <32.560299, 26.330652, 24.213669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.733471, 26.367542, 24.375690>,  <33.022087, 26.429024, 24.645727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.733471, 26.367542, 24.375690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127815, -0.928718, 0.348061,
		-0.680468, 0.337428, 0.650467,
		-0.721545, -0.153705, -0.675091,
		32.517006, 26.321430, 24.173162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.394474, 26.025976, 24.948753>,  <33.022087, 26.429024, 24.645727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.394474, 26.025976, 24.948753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.395184, 25.955460, 24.555019>,  <32.395611, 25.913149, 24.318779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.395184, 25.955460, 24.555019>,  <32.394474, 26.025976, 24.948753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.395184, 25.955460, 24.555019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019557, -0.984144, 0.176294,
		-0.999807, -0.019565, 0.001698,
		0.001778, -0.176294, -0.984336,
		32.395718, 25.902571, 24.259718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.972235, 25.490208, 24.901423>,  <32.394474, 26.025976, 24.948753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.972235, 25.490208, 24.901423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.140301, 25.467148, 24.539177>,  <32.241138, 25.453312, 24.321829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.140301, 25.467148, 24.539177>,  <31.972235, 25.490208, 24.901423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.140301, 25.467148, 24.539177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035543, -0.996169, 0.079903,
		-0.906751, -0.065760, -0.416506,
		0.420165, -0.057648, -0.905615,
		32.266350, 25.449854, 24.267492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.525370, 25.040686, 24.540991>,  <31.972235, 25.490208, 24.901423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.525370, 25.040686, 24.540991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.881815, 25.053482, 24.359932>,  <32.095684, 25.061161, 24.251297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.881815, 25.053482, 24.359932>,  <31.525370, 25.040686, 24.540991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.881815, 25.053482, 24.359932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013013, -0.998903, -0.044982,
		-0.453592, 0.034193, -0.890553,
		0.891114, 0.031992, -0.452649,
		32.149151, 25.063080, 24.224136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.804155, 25.011023, 24.316463>,  <31.525370, 25.040686, 24.540991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.804155, 25.011023, 24.316463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.429987, 24.914108, 24.419445>,  <30.205486, 24.855961, 24.481234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.429987, 24.914108, 24.419445>,  <30.804155, 25.011023, 24.316463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.429987, 24.914108, 24.419445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213668, 0.967633, 0.134284,
		-0.281654, 0.070603, -0.956915,
		-0.935423, -0.242284, 0.257452,
		30.149361, 24.841423, 24.496681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.476954, 25.368929, 23.933277>,  <30.804155, 25.011023, 24.316463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.476954, 25.368929, 23.933277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.205784, 25.281265, 24.213959>,  <30.043083, 25.228668, 24.382368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.205784, 25.281265, 24.213959>,  <30.476954, 25.368929, 23.933277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.205784, 25.281265, 24.213959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340346, 0.939636, -0.035342,
		-0.651602, -0.262782, -0.711590,
		-0.677923, -0.219158, 0.701706,
		30.002407, 25.215517, 24.424471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.895813, 25.614803, 23.578852>,  <30.476954, 25.368929, 23.933277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.895813, 25.614803, 23.578852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.820726, 25.573273, 23.969540>,  <29.775675, 25.548353, 24.203953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.820726, 25.573273, 23.969540>,  <29.895813, 25.614803, 23.578852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.820726, 25.573273, 23.969540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530456, 0.847630, -0.011842,
		-0.826668, -0.520330, -0.214189,
		-0.187715, -0.103829, 0.976721,
		29.764412, 25.542124, 24.262556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.145901, 25.677448, 23.676270>,  <29.895813, 25.614803, 23.578852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.145901, 25.677448, 23.676270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.336136, 25.754593, 24.019577>,  <29.450277, 25.800880, 24.225561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.336136, 25.754593, 24.019577>,  <29.145901, 25.677448, 23.676270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.336136, 25.754593, 24.019577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330314, 0.943426, -0.028963,
		-0.815297, -0.269723, 0.512386,
		0.475587, 0.192862, 0.858267,
		29.478811, 25.812452, 24.277058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.731266, 25.978472, 24.256617>,  <29.145901, 25.677448, 23.676270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.731266, 25.978472, 24.256617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.103607, 26.096882, 24.342297>,  <29.327011, 26.167929, 24.393705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.103607, 26.096882, 24.342297>,  <28.731266, 25.978472, 24.256617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.103607, 26.096882, 24.342297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313937, 0.947890, 0.054296,
		-0.186965, -0.117787, 0.975280,
		0.930853, 0.296025, 0.214200,
		29.382864, 26.185690, 24.406557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
