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
	<24.293301, 34.515408, 35.274883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.361908, 34.872936, 35.109154>,  <24.403072, 35.087452, 35.009716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.361908, 34.872936, 35.109154>,  <24.293301, 34.515408, 35.274883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.361908, 34.872936, 35.109154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872614, -0.333046, -0.357248,
		-0.457304, -0.300268, -0.837086,
		0.171518, 0.893823, -0.414321,
		24.413363, 35.141083, 34.984856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.287331, 34.426258, 34.471939>,  <24.293301, 34.515408, 35.274883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.287331, 34.426258, 34.471939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.522665, 34.710773, 34.625786>,  <24.663866, 34.881481, 34.718094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.522665, 34.710773, 34.625786>,  <24.287331, 34.426258, 34.471939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.522665, 34.710773, 34.625786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767197, -0.340741, -0.543419,
		-0.255474, 0.614788, -0.746169,
		0.588338, 0.711288, 0.384613,
		24.699167, 34.924160, 34.741169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.583490, 34.753510, 33.920547>,  <24.287331, 34.426258, 34.471939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.583490, 34.753510, 33.920547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.832064, 34.838596, 34.222164>,  <24.981207, 34.889648, 34.403133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.832064, 34.838596, 34.222164>,  <24.583490, 34.753510, 33.920547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.832064, 34.838596, 34.222164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780712, -0.248792, -0.573229,
		0.065664, 0.944910, -0.320677,
		0.621432, 0.212716, 0.754039,
		25.018494, 34.902412, 34.448376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.004190, 35.142105, 33.571518>,  <24.583490, 34.753510, 33.920547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.004190, 35.142105, 33.571518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.195135, 34.931087, 33.852608>,  <25.309702, 34.804478, 34.021259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.195135, 34.931087, 33.852608>,  <25.004190, 35.142105, 33.571518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.195135, 34.931087, 33.852608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693545, -0.264855, -0.669961,
		0.539555, 0.807184, 0.239445,
		0.477364, -0.527547, 0.702722,
		25.338345, 34.772823, 34.063423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.699104, 35.353775, 33.553585>,  <25.004190, 35.142105, 33.571518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.699104, 35.353775, 33.553585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.693617, 34.982166, 33.701492>,  <25.690325, 34.759201, 33.790237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.693617, 34.982166, 33.701492>,  <25.699104, 35.353775, 33.553585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.693617, 34.982166, 33.701492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808082, -0.228105, -0.543113,
		0.588911, 0.291356, 0.753854,
		-0.013719, -0.929021, 0.369773,
		25.689501, 34.703461, 33.812424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.262030, 35.088856, 33.996727>,  <25.699104, 35.353775, 33.553585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.262030, 35.088856, 33.996727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.132710, 34.773151, 33.787903>,  <26.055119, 34.583729, 33.662609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.132710, 34.773151, 33.787903>,  <26.262030, 35.088856, 33.996727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.132710, 34.773151, 33.787903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908723, -0.105025, -0.403971,
		0.264009, -0.605011, 0.751173,
		-0.323298, -0.789260, -0.522060,
		26.035721, 34.536373, 33.631287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.751776, 34.581432, 34.008823>,  <26.262030, 35.088856, 33.996727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.751776, 34.581432, 34.008823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.546486, 34.442703, 33.694801>,  <26.423313, 34.359467, 33.506386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.546486, 34.442703, 33.694801>,  <26.751776, 34.581432, 34.008823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.546486, 34.442703, 33.694801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858255, -0.206179, -0.469988,
		0.001140, -0.914988, 0.403479,
		-0.513223, -0.346824, -0.785058,
		26.392519, 34.338657, 33.459286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.019991, 33.926746, 33.871941>,  <26.751776, 34.581432, 34.008823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.019991, 33.926746, 33.871941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.812740, 34.024887, 33.544197>,  <26.688389, 34.083771, 33.347553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.812740, 34.024887, 33.544197>,  <27.019991, 33.926746, 33.871941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.812740, 34.024887, 33.544197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745985, -0.338978, -0.573237,
		-0.418392, -0.908237, -0.007399,
		-0.518127, 0.245357, -0.819356,
		26.657303, 34.098495, 33.298389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.091248, 33.396816, 33.461933>,  <27.019991, 33.926746, 33.871941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.091248, 33.396816, 33.461933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.997183, 33.712185, 33.234570>,  <26.940744, 33.901405, 33.098152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.997183, 33.712185, 33.234570>,  <27.091248, 33.396816, 33.461933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.997183, 33.712185, 33.234570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805137, -0.169581, -0.568328,
		-0.544475, -0.591293, -0.594911,
		-0.235163, 0.788425, -0.568404,
		26.926634, 33.948711, 33.064049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.153683, 33.142429, 32.763031>,  <27.091248, 33.396816, 33.461933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.153683, 33.142429, 32.763031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.154346, 33.538589, 32.707745>,  <27.154745, 33.776287, 32.674572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.154346, 33.538589, 32.707745>,  <27.153683, 33.142429, 32.763031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.154346, 33.538589, 32.707745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732551, -0.095290, -0.674010,
		-0.680711, -0.100131, -0.725677,
		0.001660, 0.990401, -0.138216,
		27.154844, 33.835709, 32.666279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.278002, 33.213055, 32.073986>,  <27.153683, 33.142429, 32.763031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.278002, 33.213055, 32.073986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.398533, 33.555378, 32.242168>,  <27.470852, 33.760773, 32.343079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.398533, 33.555378, 32.242168>,  <27.278002, 33.213055, 32.073986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.398533, 33.555378, 32.242168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772158, 0.039705, -0.634188,
		-0.559441, 0.515759, -0.648859,
		0.301326, 0.855813, 0.420461,
		27.488930, 33.812122, 32.368305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.299210, 33.788696, 31.521416>,  <27.278002, 33.213055, 32.073986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.299210, 33.788696, 31.521416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.540974, 33.789600, 31.840084>,  <27.686031, 33.790142, 32.031284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.540974, 33.789600, 31.840084>,  <27.299210, 33.788696, 31.521416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.540974, 33.789600, 31.840084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794299, 0.075428, -0.602826,
		-0.061455, 0.997149, 0.043792,
		0.604410, 0.002263, 0.796670,
		27.722298, 33.790279, 32.079086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.737925, 34.365105, 31.431398>,  <27.299210, 33.788696, 31.521416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.737925, 34.365105, 31.431398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.921234, 34.115265, 31.684338>,  <28.031219, 33.965363, 31.836102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.921234, 34.115265, 31.684338>,  <27.737925, 34.365105, 31.431398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.921234, 34.115265, 31.684338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847284, 0.092074, -0.523098,
		0.268501, 0.775502, 0.571405,
		0.458275, -0.624595, 0.632349,
		28.058716, 33.927887, 31.874043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.215216, 34.703888, 31.789368>,  <27.737925, 34.365105, 31.431398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.215216, 34.703888, 31.789368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.315065, 34.319683, 31.740208>,  <28.374975, 34.089161, 31.710712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.315065, 34.319683, 31.740208>,  <28.215216, 34.703888, 31.789368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.315065, 34.319683, 31.740208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941326, 0.270469, -0.201870,
		0.227139, -0.065295, 0.971671,
		0.249626, -0.960512, -0.122898,
		28.389954, 34.031528, 31.703339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.657070, 34.501789, 32.358692>,  <28.215216, 34.703888, 31.789368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.657070, 34.501789, 32.358692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.713379, 34.336132, 31.998989>,  <28.747164, 34.236740, 31.783167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.713379, 34.336132, 31.998989>,  <28.657070, 34.501789, 32.358692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.713379, 34.336132, 31.998989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968183, 0.247399, 0.037627,
		0.206893, -0.875946, 0.435790,
		0.140773, -0.414140, -0.899261,
		28.755611, 34.211891, 31.729210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.417681, 34.278236, 33.075649>,  <28.657070, 34.501789, 32.358692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.417681, 34.278236, 33.075649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.223476, 34.246239, 32.727425>,  <28.106955, 34.227039, 32.518490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.223476, 34.246239, 32.727425>,  <28.417681, 34.278236, 33.075649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.223476, 34.246239, 32.727425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849706, 0.277393, 0.448390,
		0.205618, 0.957420, -0.202651,
		-0.485511, -0.079996, -0.870563,
		28.077824, 34.222240, 32.466255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.970531, 34.860691, 32.936283>,  <28.417681, 34.278236, 33.075649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.970531, 34.860691, 32.936283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.803486, 34.562649, 32.728279>,  <27.703259, 34.383823, 32.603477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.803486, 34.562649, 32.728279>,  <27.970531, 34.860691, 32.936283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.803486, 34.562649, 32.728279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847086, 0.112232, 0.519471,
		-0.328700, 0.657432, -0.678041,
		-0.417615, -0.745109, -0.520010,
		27.678202, 34.339115, 32.572277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.303391, 35.096352, 32.651920>,  <27.970531, 34.860691, 32.936283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.303391, 35.096352, 32.651920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.263613, 34.698509, 32.663734>,  <27.239746, 34.459805, 32.670822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.263613, 34.698509, 32.663734>,  <27.303391, 35.096352, 32.651920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.263613, 34.698509, 32.663734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.951839, 0.103739, 0.288514,
		-0.290022, 0.000577, -0.957020,
		-0.099446, -0.994605, 0.029537,
		27.233778, 34.400127, 32.672596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.771498, 34.970856, 32.226513>,  <27.303391, 35.096352, 32.651920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.771498, 34.970856, 32.226513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.788214, 34.656445, 32.473225>,  <26.798244, 34.467796, 32.621250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.788214, 34.656445, 32.473225>,  <26.771498, 34.970856, 32.226513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.788214, 34.656445, 32.473225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.965956, 0.125956, 0.225972,
		-0.255307, -0.605223, -0.754005,
		0.041792, -0.786028, 0.616777,
		26.800751, 34.420635, 32.658257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.180103, 34.436741, 32.088821>,  <26.771498, 34.970856, 32.226513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.180103, 34.436741, 32.088821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.332632, 34.368748, 32.452293>,  <26.424150, 34.327950, 32.670376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.332632, 34.368748, 32.452293>,  <26.180103, 34.436741, 32.088821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.332632, 34.368748, 32.452293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900470, 0.154093, 0.406706,
		-0.209156, -0.973324, -0.094309,
		0.381324, -0.169987, 0.908678,
		26.447029, 34.317753, 32.724895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.386242, 33.786530, 32.204758>,  <26.180103, 34.436741, 32.088821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.386242, 33.786530, 32.204758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.238684, 33.459610, 32.381817>,  <26.150148, 33.263458, 32.488052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.238684, 33.459610, 32.381817>,  <26.386242, 33.786530, 32.204758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.238684, 33.459610, 32.381817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163478, -0.411764, -0.896508,
		0.914981, -0.403082, 0.018288,
		-0.368896, -0.817298, 0.442651,
		26.128016, 33.214420, 32.514610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.676239, 34.037788, 32.413120>,  <26.386242, 33.786530, 32.204758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.676239, 34.037788, 32.413120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.912365, 34.116856, 32.726158>,  <26.054041, 34.164295, 32.913982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.912365, 34.116856, 32.726158>,  <25.676239, 34.037788, 32.413120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.912365, 34.116856, 32.726158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807170, 0.142465, 0.572870,
		0.001746, -0.969861, 0.243651,
		0.590316, 0.197668, 0.782594,
		26.089460, 34.176155, 32.960938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.576319, 33.502033, 32.956158>,  <25.676239, 34.037788, 32.413120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.576319, 33.502033, 32.956158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.702675, 33.831356, 33.144787>,  <25.778488, 34.028950, 33.257965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.702675, 33.831356, 33.144787>,  <25.576319, 33.502033, 32.956158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.702675, 33.831356, 33.144787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831047, 0.000279, 0.556202,
		0.457792, -0.567600, 0.684293,
		0.315891, 0.823305, 0.471574,
		25.797441, 34.078346, 33.286259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.526033, 33.390392, 33.612335>,  <25.576319, 33.502033, 32.956158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.526033, 33.390392, 33.612335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.485125, 33.786026, 33.569889>,  <25.460579, 34.023407, 33.544422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.485125, 33.786026, 33.569889>,  <25.526033, 33.390392, 33.612335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.485125, 33.786026, 33.569889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849527, -0.031343, 0.526613,
		0.517537, 0.144005, 0.843456,
		-0.102271, 0.989080, -0.106115,
		25.454443, 34.082748, 33.538055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.569082, 33.509449, 34.313046>,  <25.526033, 33.390392, 33.612335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.569082, 33.509449, 34.313046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.641319, 33.874344, 34.165958>,  <25.684662, 34.093281, 34.077705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.641319, 33.874344, 34.165958>,  <25.569082, 33.509449, 34.313046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.641319, 33.874344, 34.165958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613443, 0.396701, 0.682874,
		0.768814, 0.102251, 0.631244,
		0.180590, 0.912235, -0.367714,
		25.695496, 34.148014, 34.055645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.977705, 34.004555, 34.897831>,  <25.569082, 33.509449, 34.313046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.977705, 34.004555, 34.897831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.795229, 34.253105, 34.643028>,  <25.685743, 34.402237, 34.490147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.795229, 34.253105, 34.643028>,  <25.977705, 34.004555, 34.897831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.795229, 34.253105, 34.643028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227805, 0.610436, 0.758599,
		0.860229, 0.491180, -0.136923,
		-0.456192, 0.621378, -0.637008,
		25.658371, 34.439518, 34.451927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.119421, 34.577900, 35.230618>,  <25.977705, 34.004555, 34.897831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.119421, 34.577900, 35.230618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.832724, 34.658482, 34.963577>,  <25.660706, 34.706833, 34.803352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.832724, 34.658482, 34.963577>,  <26.119421, 34.577900, 35.230618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.832724, 34.658482, 34.963577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432052, 0.623178, 0.651905,
		0.547365, 0.755688, -0.359620,
		-0.716744, 0.201456, -0.667602,
		25.617701, 34.718918, 34.763298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.720970, 35.079769, 35.507156>,  <26.119421, 34.577900, 35.230618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.720970, 35.079769, 35.507156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.525881, 35.061302, 35.158447>,  <25.408827, 35.050224, 34.949223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.525881, 35.061302, 35.158447>,  <25.720970, 35.079769, 35.507156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.525881, 35.061302, 35.158447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712903, 0.597438, 0.367202,
		0.503881, 0.800585, -0.324295,
		-0.487723, -0.046165, -0.871777,
		25.379564, 35.047451, 34.896915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.562382, 35.789028, 35.177750>,  <25.720970, 35.079769, 35.507156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.562382, 35.789028, 35.177750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.300873, 35.506229, 35.069878>,  <25.143967, 35.336548, 35.005154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.300873, 35.506229, 35.069878>,  <25.562382, 35.789028, 35.177750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.300873, 35.506229, 35.069878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748854, 0.553360, 0.364706,
		-0.108615, 0.440389, -0.891213,
		-0.653774, -0.707001, -0.269683,
		25.104740, 35.294128, 34.988972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.996674, 36.081982, 34.800331>,  <25.562382, 35.789028, 35.177750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.996674, 36.081982, 34.800331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.838919, 35.750294, 34.958748>,  <24.744265, 35.551281, 35.053799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.838919, 35.750294, 34.958748>,  <24.996674, 36.081982, 34.800331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.838919, 35.750294, 34.958748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810753, 0.516865, 0.274827,
		-0.432593, -0.212705, -0.876139,
		-0.394389, -0.829220, 0.396044,
		24.720602, 35.501526, 35.077560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.663782, 36.328365, 34.388260>,  <24.996674, 36.081982, 34.800331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.663782, 36.328365, 34.388260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.035221, 36.284798, 34.530155>,  <26.258085, 36.258659, 34.615292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.035221, 36.284798, 34.530155>,  <25.663782, 36.328365, 34.388260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.035221, 36.284798, 34.530155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032014, 0.975906, 0.215829,
		-0.369701, -0.189062, 0.909712,
		0.928599, -0.108916, 0.354741,
		26.313801, 36.252125, 34.636578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.724871, 36.655254, 35.082916>,  <25.663782, 36.328365, 34.388260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.724871, 36.655254, 35.082916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.088232, 36.637215, 34.916653>,  <26.306248, 36.626392, 34.816895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.088232, 36.637215, 34.916653>,  <25.724871, 36.655254, 35.082916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.088232, 36.637215, 34.916653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179043, 0.940356, 0.289263,
		0.377821, -0.337188, 0.862297,
		0.908402, -0.045099, -0.415657,
		26.360752, 36.623684, 34.791954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.208124, 36.845448, 35.598732>,  <25.724871, 36.655254, 35.082916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.208124, 36.845448, 35.598732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.364969, 36.928745, 35.240318>,  <26.459076, 36.978722, 35.025269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.364969, 36.928745, 35.240318>,  <26.208124, 36.845448, 35.598732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.364969, 36.928745, 35.240318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006320, 0.973408, 0.228990,
		0.919895, -0.095453, 0.380371,
		0.392114, 0.208243, -0.896037,
		26.482603, 36.991219, 34.971508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.721170, 37.396954, 35.749050>,  <26.208124, 36.845448, 35.598732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.721170, 37.396954, 35.749050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.617428, 37.405460, 35.362831>,  <26.555182, 37.410564, 35.131100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.617428, 37.405460, 35.362831>,  <26.721170, 37.396954, 35.749050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.617428, 37.405460, 35.362831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065986, 0.997811, 0.004249,
		0.963525, -0.062611, -0.260192,
		-0.259356, 0.021264, -0.965548,
		26.539621, 37.411839, 35.073166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.272774, 37.658215, 35.258144>,  <26.721170, 37.396954, 35.749050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.272774, 37.658215, 35.258144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.903070, 37.728992, 35.122829>,  <26.681250, 37.771458, 35.041641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.903070, 37.728992, 35.122829>,  <27.272774, 37.658215, 35.258144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.903070, 37.728992, 35.122829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145466, 0.982485, 0.116460,
		0.352972, 0.058430, -0.933808,
		-0.924257, 0.176944, -0.338290,
		26.625793, 37.782074, 35.021343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.924162, 38.011814, 34.955952>,  <27.272774, 37.658215, 35.258144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.924162, 38.011814, 34.955952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.590981, 37.871025, 34.785164>,  <27.391071, 37.786552, 34.682690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.590981, 37.871025, 34.785164>,  <27.924162, 38.011814, 34.955952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.590981, 37.871025, 34.785164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258781, 0.929822, -0.261654,
		0.489104, -0.107453, -0.865581,
		-0.832952, -0.351973, -0.426973,
		27.341095, 37.765434, 34.657070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.831581, 38.353115, 34.336285>,  <27.924162, 38.011814, 34.955952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.831581, 38.353115, 34.336285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.465422, 38.202473, 34.393158>,  <27.245726, 38.112087, 34.427280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.465422, 38.202473, 34.393158>,  <27.831581, 38.353115, 34.336285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.465422, 38.202473, 34.393158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399603, 0.807457, -0.433970,
		0.048633, -0.454071, -0.889638,
		-0.915397, -0.376607, 0.142179,
		27.190802, 38.089489, 34.435810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.481636, 38.353897, 33.752213>,  <27.831581, 38.353115, 34.336285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.481636, 38.353897, 33.752213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.198956, 38.359081, 34.035168>,  <27.029346, 38.362190, 34.204941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.198956, 38.359081, 34.035168>,  <27.481636, 38.353897, 33.752213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.198956, 38.359081, 34.035168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435079, 0.780477, -0.448956,
		-0.557921, -0.625050, -0.545926,
		-0.706703, 0.012961, 0.707391,
		26.986944, 38.362968, 34.247387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.843920, 38.581299, 33.359684>,  <27.481636, 38.353897, 33.752213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.843920, 38.581299, 33.359684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.787045, 38.640961, 33.751099>,  <26.752920, 38.676758, 33.985947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.787045, 38.640961, 33.751099>,  <26.843920, 38.581299, 33.359684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.787045, 38.640961, 33.751099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420753, 0.885717, -0.196144,
		-0.895963, -0.439611, -0.063181,
		-0.142188, 0.149154, 0.978538,
		26.744389, 38.685707, 34.044659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.682468, 39.281101, 33.724426>,  <26.843920, 38.581299, 33.359684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.682468, 39.281101, 33.724426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.524031, 39.036938, 33.998802>,  <26.428968, 38.890442, 34.163429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.524031, 39.036938, 33.998802>,  <26.682468, 39.281101, 33.724426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.524031, 39.036938, 33.998802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576227, 0.746870, 0.331885,
		-0.714894, -0.263802, -0.647561,
		-0.396092, -0.610404, 0.685943,
		26.405203, 38.853817, 34.204586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.841871, 39.986305, 33.698051>,  <26.682468, 39.281101, 33.724426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.841871, 39.986305, 33.698051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.500002, 39.926773, 33.897003>,  <26.294880, 39.891052, 34.016373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.500002, 39.926773, 33.897003>,  <26.841871, 39.986305, 33.698051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.500002, 39.926773, 33.897003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389366, -0.817450, 0.424464,
		0.343407, 0.556439, 0.756602,
		-0.854673, -0.148831, 0.497377,
		26.243601, 39.882122, 34.046215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.944540, 39.987595, 34.458988>,  <26.841871, 39.986305, 33.698051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.944540, 39.987595, 34.458988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.631582, 39.761806, 34.353741>,  <26.443808, 39.626335, 34.290592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.631582, 39.761806, 34.353741>,  <26.944540, 39.987595, 34.458988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.631582, 39.761806, 34.353741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368251, -0.760031, 0.535485,
		-0.502247, 0.322065, 0.802510,
		-0.782393, -0.564471, -0.263123,
		26.396864, 39.592464, 34.274803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.844883, 39.515724, 34.985855>,  <26.944540, 39.987595, 34.458988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.844883, 39.515724, 34.985855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.673088, 39.337914, 34.671417>,  <26.570011, 39.231228, 34.482754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.673088, 39.337914, 34.671417>,  <26.844883, 39.515724, 34.985855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.673088, 39.337914, 34.671417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224631, -0.895689, 0.383774,
		-0.874690, -0.011755, 0.484541,
		-0.429487, -0.444526, -0.786090,
		26.544243, 39.204556, 34.435589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.571119, 38.878716, 35.283123>,  <26.844883, 39.515724, 34.985855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.571119, 38.878716, 35.283123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.615116, 38.817814, 34.890244>,  <26.641514, 38.781273, 34.654514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.615116, 38.817814, 34.890244>,  <26.571119, 38.878716, 35.283123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.615116, 38.817814, 34.890244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228156, -0.957943, 0.174042,
		-0.967392, -0.243238, -0.070629,
		0.109992, -0.152252, -0.982202,
		26.648113, 38.772137, 34.595581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.062990, 38.334019, 35.126724>,  <26.571119, 38.878716, 35.283123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.062990, 38.334019, 35.126724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.351593, 38.336517, 34.849773>,  <26.524755, 38.338017, 34.683601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.351593, 38.336517, 34.849773>,  <26.062990, 38.334019, 35.126724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.351593, 38.336517, 34.849773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136076, -0.981738, 0.132940,
		-0.678904, -0.190134, -0.709182,
		0.721508, 0.006249, -0.692378,
		26.568045, 38.338390, 34.642059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.910971, 37.763748, 34.616188>,  <26.062990, 38.334019, 35.126724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.910971, 37.763748, 34.616188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.304781, 37.827538, 34.587139>,  <26.541067, 37.865810, 34.569710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.304781, 37.827538, 34.587139>,  <25.910971, 37.763748, 34.616188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.304781, 37.827538, 34.587139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158685, -0.987191, -0.016532,
		-0.074325, 0.004752, -0.997223,
		0.984528, 0.159473, -0.072618,
		26.600140, 37.875378, 34.565353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.346025, 37.600594, 33.952385>,  <25.910971, 37.763748, 34.616188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.346025, 37.600594, 33.952385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.524385, 37.530834, 34.303555>,  <26.631401, 37.488979, 34.514256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.524385, 37.530834, 34.303555>,  <26.346025, 37.600594, 33.952385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.524385, 37.530834, 34.303555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057490, -0.973231, -0.222525,
		0.893234, 0.149696, -0.423939,
		0.445901, -0.174395, 0.877929,
		26.658155, 37.478516, 34.566933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.849600, 37.102982, 33.777092>,  <26.346025, 37.600594, 33.952385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.849600, 37.102982, 33.777092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.769758, 37.076843, 34.168171>,  <26.721853, 37.061161, 34.402817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.769758, 37.076843, 34.168171>,  <26.849600, 37.102982, 33.777092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.769758, 37.076843, 34.168171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007122, -0.997844, -0.065239,
		0.979851, -0.006058, 0.199639,
		-0.199604, -0.065346, 0.977695,
		26.709877, 37.057240, 34.461479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.386162, 36.725372, 33.967682>,  <26.849600, 37.102982, 33.777092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.386162, 36.725372, 33.967682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.068676, 36.687374, 34.208012>,  <26.878183, 36.664574, 34.352211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.068676, 36.687374, 34.208012>,  <27.386162, 36.725372, 33.967682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.068676, 36.687374, 34.208012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011745, -0.985152, -0.171282,
		0.608175, -0.143006, 0.780815,
		-0.793716, -0.094998, 0.600824,
		26.830561, 36.658875, 34.388260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.771688, 37.272625, 34.199383>,  <27.386162, 36.725372, 33.967682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.771688, 37.272625, 34.199383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.052156, 37.478371, 34.396885>,  <28.220438, 37.601818, 34.515385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.052156, 37.478371, 34.396885>,  <27.771688, 37.272625, 34.199383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.052156, 37.478371, 34.396885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595546, -0.803271, -0.008931,
		0.392025, 0.300316, -0.869555,
		0.701171, 0.514360, 0.493755,
		28.262508, 37.632679, 34.545010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.482698, 37.364471, 33.837143>,  <27.771688, 37.272625, 34.199383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.482698, 37.364471, 33.837143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.528395, 37.363232, 34.234524>,  <28.555813, 37.362488, 34.472950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.528395, 37.363232, 34.234524>,  <28.482698, 37.364471, 33.837143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.528395, 37.363232, 34.234524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562805, -0.823846, -0.067291,
		0.818657, 0.566805, -0.092370,
		0.114240, -0.003102, 0.993448,
		28.562666, 37.362301, 34.532558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.248425, 37.324951, 34.149029>,  <28.482698, 37.364471, 33.837143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.248425, 37.324951, 34.149029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.986073, 37.167469, 34.406654>,  <28.828661, 37.072979, 34.561230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.986073, 37.167469, 34.406654>,  <29.248425, 37.324951, 34.149029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.986073, 37.167469, 34.406654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641766, -0.740046, 0.201166,
		0.397439, 0.545280, 0.738045,
		-0.655879, -0.393702, 0.644066,
		28.789309, 37.049358, 34.599873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.544140, 37.195404, 34.826630>,  <29.248425, 37.324951, 34.149029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.544140, 37.195404, 34.826630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.254499, 36.940037, 34.722248>,  <29.080715, 36.786816, 34.659618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.254499, 36.940037, 34.722248>,  <29.544140, 37.195404, 34.826630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.254499, 36.940037, 34.722248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625180, -0.767351, 0.142556,
		-0.291254, -0.059918, 0.954768,
		-0.724101, -0.638421, -0.260953,
		29.037270, 36.748512, 34.643963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.276442, 36.791576, 35.432560>,  <29.544140, 37.195404, 34.826630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.276442, 36.791576, 35.432560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.304977, 36.621418, 35.071682>,  <29.322100, 36.519325, 34.855156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.304977, 36.621418, 35.071682>,  <29.276442, 36.791576, 35.432560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.304977, 36.621418, 35.071682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715402, -0.608464, 0.343469,
		-0.695061, -0.669934, 0.260920,
		0.071341, -0.425394, -0.902192,
		29.326380, 36.493801, 34.801025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.896252, 37.430027, 35.172451>,  <29.276442, 36.791576, 35.432560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.896252, 37.430027, 35.172451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.759716, 37.766441, 35.340328>,  <28.677795, 37.968292, 35.441055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.759716, 37.766441, 35.340328>,  <28.896252, 37.430027, 35.172451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.759716, 37.766441, 35.340328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822593, -0.483333, 0.299549,
		0.454785, -0.242992, 0.856811,
		-0.341337, 0.841037, 0.419696,
		28.657314, 38.018753, 35.466236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.741938, 37.365528, 35.914188>,  <28.896252, 37.430027, 35.172451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.741938, 37.365528, 35.914188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.476053, 37.616924, 35.752617>,  <28.316523, 37.767761, 35.655674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.476053, 37.616924, 35.752617>,  <28.741938, 37.365528, 35.914188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.476053, 37.616924, 35.752617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746210, -0.532122, 0.400022,
		0.036473, 0.567312, 0.822695,
		-0.664711, 0.628493, -0.403926,
		28.276640, 37.805473, 35.631439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.168825, 37.731289, 36.399826>,  <28.741938, 37.365528, 35.914188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.168825, 37.731289, 36.399826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.058575, 37.654953, 36.022972>,  <27.992424, 37.609150, 35.796860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.058575, 37.654953, 36.022972>,  <28.168825, 37.731289, 36.399826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.058575, 37.654953, 36.022972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781703, -0.525898, 0.335218,
		-0.559438, 0.828861, -0.004229,
		-0.275625, -0.190839, -0.942131,
		27.975887, 37.597702, 35.740334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.803465, 37.398960, 36.647850>,  <28.168825, 37.731289, 36.399826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.803465, 37.398960, 36.647850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.529282, 37.645763, 36.802486>,  <28.364773, 37.793846, 36.895267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.529282, 37.645763, 36.802486>,  <28.803465, 37.398960, 36.647850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.529282, 37.645763, 36.802486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471675, -0.028191, 0.881321,
		0.554681, 0.786452, -0.271704,
		-0.685457, 0.617008, 0.386587,
		28.323645, 37.830864, 36.918461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.391462, 37.866112, 36.400440>,  <28.803465, 37.398960, 36.647850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.391462, 37.866112, 36.400440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.758682, 37.986309, 36.503891>,  <29.979013, 38.058426, 36.565964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.758682, 37.986309, 36.503891>,  <29.391462, 37.866112, 36.400440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.758682, 37.986309, 36.503891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295223, -0.953545, 0.059954,
		0.264632, 0.021313, -0.964114,
		0.918049, 0.300494, 0.258631,
		30.034098, 38.076458, 36.581482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.969366, 37.861446, 35.793716>,  <29.391462, 37.866112, 36.400440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.969366, 37.861446, 35.793716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.784540, 38.009193, 35.471210>,  <29.673645, 38.097843, 35.277706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.784540, 38.009193, 35.471210>,  <29.969366, 37.861446, 35.793716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.784540, 38.009193, 35.471210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485730, 0.866054, 0.118394,
		0.741998, -0.336920, -0.579590,
		-0.462067, 0.369372, -0.806262,
		29.645920, 38.120007, 35.229332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.487198, 38.085930, 35.294312>,  <29.969366, 37.861446, 35.793716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.487198, 38.085930, 35.294312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.137783, 38.279709, 35.313255>,  <29.928135, 38.395977, 35.324623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.137783, 38.279709, 35.313255>,  <30.487198, 38.085930, 35.294312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.137783, 38.279709, 35.313255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484102, 0.854502, 0.188338,
		0.050771, 0.187447, -0.980962,
		-0.873538, 0.484447, 0.047359,
		29.875721, 38.425041, 35.327461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.500587, 38.874962, 35.284805>,  <30.487198, 38.085930, 35.294312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.500587, 38.874962, 35.284805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.723423, 38.973366, 35.602077>,  <30.857124, 39.032406, 35.792439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.723423, 38.973366, 35.602077>,  <30.500587, 38.874962, 35.284805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.723423, 38.973366, 35.602077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613644, -0.765487, -0.193576,
		0.559545, 0.594567, -0.577407,
		0.557091, 0.246008, 0.793177,
		30.890551, 39.047169, 35.840031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.169573, 39.047157, 35.124107>,  <30.500587, 38.874962, 35.284805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.169573, 39.047157, 35.124107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.174339, 38.913692, 35.501152>,  <31.177198, 38.833614, 35.727379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.174339, 38.913692, 35.501152>,  <31.169573, 39.047157, 35.124107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.174339, 38.913692, 35.501152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514536, -0.806255, -0.291901,
		0.857386, 0.488488, 0.162076,
		0.011916, -0.333665, 0.942616,
		31.177914, 38.813591, 35.783936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.858130, 39.021801, 35.402004>,  <31.169573, 39.047157, 35.124107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.858130, 39.021801, 35.402004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.651842, 38.709023, 35.542061>,  <31.528070, 38.521355, 35.626095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.651842, 38.709023, 35.542061>,  <31.858130, 39.021801, 35.402004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.651842, 38.709023, 35.542061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650322, -0.623336, -0.434204,
		0.557778, 0.003777, 0.829981,
		-0.515718, -0.781945, 0.350139,
		31.497128, 38.474438, 35.647102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.221893, 38.459339, 35.878159>,  <31.858130, 39.021801, 35.402004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.221893, 38.459339, 35.878159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.919201, 38.307209, 35.665478>,  <31.737585, 38.215931, 35.537868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.919201, 38.307209, 35.665478>,  <32.221893, 38.459339, 35.878159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.919201, 38.307209, 35.665478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623304, -0.665000, -0.411422,
		-0.197107, -0.642748, 0.740286,
		-0.756730, -0.380329, -0.531704,
		31.692183, 38.193111, 35.505966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.415710, 37.772472, 35.885006>,  <32.221893, 38.459339, 35.878159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.415710, 37.772472, 35.885006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.167850, 37.853397, 35.581665>,  <32.019135, 37.901955, 35.399662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.167850, 37.853397, 35.581665>,  <32.415710, 37.772472, 35.885006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.167850, 37.853397, 35.581665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293435, -0.836426, -0.462912,
		-0.727960, -0.509372, 0.458927,
		-0.619653, 0.202316, -0.758353,
		31.981955, 37.914093, 35.354160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.196648, 37.130959, 35.731415>,  <32.415710, 37.772472, 35.885006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.196648, 37.130959, 35.731415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.126774, 37.334145, 35.394024>,  <32.084850, 37.456055, 35.191589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.126774, 37.334145, 35.394024>,  <32.196648, 37.130959, 35.731415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.126774, 37.334145, 35.394024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215847, -0.816057, -0.536155,
		-0.960674, -0.275720, 0.032910,
		-0.174685, 0.507967, -0.843478,
		32.074368, 37.486534, 35.140980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.521404, 36.883648, 35.270119>,  <32.196648, 37.130959, 35.731415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.521404, 36.883648, 35.270119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.840824, 37.034130, 35.082165>,  <32.032475, 37.124420, 34.969395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.840824, 37.034130, 35.082165>,  <31.521404, 36.883648, 35.270119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.840824, 37.034130, 35.082165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215639, -0.907614, -0.360191,
		-0.561977, 0.186305, -0.805898,
		0.798550, 0.376202, -0.469883,
		32.080391, 37.146992, 34.941200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.429596, 36.719196, 34.573711>,  <31.521404, 36.883648, 35.270119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.429596, 36.719196, 34.573711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.817772, 36.760727, 34.660858>,  <32.050678, 36.785645, 34.713146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.817772, 36.760727, 34.660858>,  <31.429596, 36.719196, 34.573711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.817772, 36.760727, 34.660858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173291, -0.928075, -0.329617,
		0.167974, 0.357628, -0.918633,
		0.970441, 0.103824, 0.217866,
		32.108906, 36.791874, 34.726219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.714119, 36.380939, 34.069618>,  <31.429596, 36.719196, 34.573711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.714119, 36.380939, 34.069618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.022060, 36.376263, 34.324863>,  <32.206825, 36.373455, 34.478008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.022060, 36.376263, 34.324863>,  <31.714119, 36.380939, 34.069618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.022060, 36.376263, 34.324863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152767, -0.967390, -0.202037,
		0.619665, 0.253021, -0.742964,
		0.769856, -0.011695, 0.638111,
		32.253017, 36.372753, 34.516296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.293270, 36.201843, 33.739670>,  <31.714119, 36.380939, 34.069618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.293270, 36.201843, 33.739670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.386967, 36.118076, 34.119411>,  <32.443184, 36.067818, 34.347256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.386967, 36.118076, 34.119411>,  <32.293270, 36.201843, 33.739670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.386967, 36.118076, 34.119411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346088, -0.894588, -0.282730,
		0.908490, 0.394787, -0.137071,
		0.234240, -0.209419, 0.949355,
		32.457237, 36.055252, 34.404217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.082470, 36.112381, 33.796009>,  <32.293270, 36.201843, 33.739670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.082470, 36.112381, 33.796009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.892532, 35.947609, 34.107094>,  <32.778572, 35.848743, 34.293743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.892532, 35.947609, 34.107094>,  <33.082470, 36.112381, 33.796009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.892532, 35.947609, 34.107094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443556, -0.875266, -0.192787,
		0.760121, 0.253416, 0.598328,
		-0.474841, -0.411934, 0.777712,
		32.750080, 35.824028, 34.340408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.619495, 35.913883, 34.269600>,  <33.082470, 36.112381, 33.796009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.619495, 35.913883, 34.269600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.290825, 35.689304, 34.308861>,  <33.093624, 35.554558, 34.332417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.290825, 35.689304, 34.308861>,  <33.619495, 35.913883, 34.269600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.290825, 35.689304, 34.308861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539864, -0.821876, -0.181844,
		0.182762, -0.096428, 0.978417,
		-0.821672, -0.561446, 0.098150,
		33.044323, 35.520870, 34.338306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.883301, 35.391544, 34.652760>,  <33.619495, 35.913883, 34.269600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.883301, 35.391544, 34.652760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.541496, 35.232010, 34.519646>,  <33.336414, 35.136288, 34.439777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.541496, 35.232010, 34.519646>,  <33.883301, 35.391544, 34.652760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.541496, 35.232010, 34.519646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473451, -0.861575, -0.183119,
		-0.213681, -0.314032, 0.925054,
		-0.854508, -0.398839, -0.332781,
		33.285145, 35.112358, 34.419811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.809521, 34.701866, 34.800571>,  <33.883301, 35.391544, 34.652760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.809521, 34.701866, 34.800571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.541813, 34.725990, 34.504345>,  <33.381187, 34.740467, 34.326607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.541813, 34.725990, 34.504345>,  <33.809521, 34.701866, 34.800571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.541813, 34.725990, 34.504345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363228, -0.842929, -0.396908,
		-0.648186, -0.534633, 0.542238,
		-0.669268, 0.060314, -0.740569,
		33.341034, 34.744083, 34.282173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.371178, 34.072472, 34.819672>,  <33.809521, 34.701866, 34.800571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.371178, 34.072472, 34.819672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.336441, 34.216534, 34.448135>,  <33.315601, 34.302971, 34.225212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.336441, 34.216534, 34.448135>,  <33.371178, 34.072472, 34.819672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.336441, 34.216534, 34.448135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285097, -0.884385, -0.369573,
		-0.954557, -0.296903, -0.025882,
		-0.086837, 0.360157, -0.928842,
		33.310390, 34.324581, 34.169483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.042439, 33.600925, 34.435009>,  <33.371178, 34.072472, 34.819672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.042439, 33.600925, 34.435009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.195023, 33.823002, 34.139374>,  <33.286575, 33.956249, 33.961994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.195023, 33.823002, 34.139374>,  <33.042439, 33.600925, 34.435009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.195023, 33.823002, 34.139374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152093, -0.826344, -0.542240,
		-0.911786, 0.094435, -0.399660,
		0.381463, 0.555192, -0.739086,
		33.309460, 33.989559, 33.917648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.838882, 33.332981, 33.820454>,  <33.042439, 33.600925, 34.435009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.838882, 33.332981, 33.820454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.144268, 33.564880, 33.706600>,  <33.327499, 33.704021, 33.638290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.144268, 33.564880, 33.706600>,  <32.838882, 33.332981, 33.820454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.144268, 33.564880, 33.706600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363759, -0.750147, -0.552231,
		-0.533672, 0.318070, -0.783598,
		0.763462, 0.579751, -0.284631,
		33.373306, 33.738804, 33.621212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.805946, 33.433731, 33.165897>,  <32.838882, 33.332981, 33.820454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.805946, 33.433731, 33.165897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.192600, 33.508865, 33.235558>,  <33.424595, 33.553944, 33.277355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.192600, 33.508865, 33.235558>,  <32.805946, 33.433731, 33.165897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.192600, 33.508865, 33.235558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254347, -0.623412, -0.739368,
		-0.030308, 0.758997, -0.650388,
		0.966638, 0.187833, 0.174155,
		33.482594, 33.565216, 33.287804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.130184, 33.642338, 32.561325>,  <32.805946, 33.433731, 33.165897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.130184, 33.642338, 32.561325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.416107, 33.499062, 32.801575>,  <33.587662, 33.413094, 32.945724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.416107, 33.499062, 32.801575>,  <33.130184, 33.642338, 32.561325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.416107, 33.499062, 32.801575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360837, -0.546786, -0.755528,
		0.599036, 0.756784, -0.261598,
		0.714810, -0.358194, 0.600620,
		33.630550, 33.391602, 32.981762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.513481, 33.499176, 32.052307>,  <33.130184, 33.642338, 32.561325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.513481, 33.499176, 32.052307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.691776, 33.360722, 32.382519>,  <33.798752, 33.277649, 32.580647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.691776, 33.360722, 32.382519>,  <33.513481, 33.499176, 32.052307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.691776, 33.360722, 32.382519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566444, -0.605034, -0.559531,
		0.693152, 0.717022, -0.073616,
		0.445736, -0.346141, 0.825534,
		33.825497, 33.256878, 32.630180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.204899, 33.570831, 31.948162>,  <33.513481, 33.499176, 32.052307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.204899, 33.570831, 31.948162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.151443, 33.269772, 32.206051>,  <34.119370, 33.089138, 32.360783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.151443, 33.269772, 32.206051>,  <34.204899, 33.570831, 31.948162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.151443, 33.269772, 32.206051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575785, -0.588458, -0.567617,
		0.806606, 0.295367, 0.512001,
		-0.133636, -0.752646, 0.644721,
		34.111351, 33.043980, 32.399467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.811939, 33.420750, 32.228809>,  <34.204899, 33.570831, 31.948162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.811939, 33.420750, 32.228809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.636333, 33.064800, 32.278431>,  <34.530968, 32.851231, 32.308205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.636333, 33.064800, 32.278431>,  <34.811939, 33.420750, 32.228809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.636333, 33.064800, 32.278431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615727, -0.398526, -0.679748,
		0.654327, -0.222039, 0.722879,
		-0.439016, -0.889874, 0.124051,
		34.504627, 32.797836, 32.315647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.316235, 32.946709, 32.168316>,  <34.811939, 33.420750, 32.228809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.316235, 32.946709, 32.168316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.990192, 32.716999, 32.137814>,  <34.794567, 32.579174, 32.119511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.990192, 32.716999, 32.137814>,  <35.316235, 32.946709, 32.168316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.990192, 32.716999, 32.137814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385303, -0.439108, -0.811619,
		0.432605, -0.690937, 0.579188,
		-0.815104, -0.574274, -0.076260,
		34.745663, 32.544716, 32.114937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.579052, 32.235188, 32.085579>,  <35.316235, 32.946709, 32.168316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.579052, 32.235188, 32.085579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.215977, 32.273743, 31.922207>,  <34.998131, 32.296875, 31.824184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.215977, 32.273743, 31.922207>,  <35.579052, 32.235188, 32.085579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.215977, 32.273743, 31.922207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310190, -0.501406, -0.807697,
		-0.282641, -0.859826, 0.425220,
		-0.907687, 0.096389, -0.408428,
		34.943672, 32.302658, 31.799679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.645794, 31.693935, 31.606413>,  <35.579052, 32.235188, 32.085579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.645794, 31.693935, 31.606413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.292847, 31.857550, 31.513353>,  <35.081078, 31.955717, 31.457518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.292847, 31.857550, 31.513353>,  <35.645794, 31.693935, 31.606413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.292847, 31.857550, 31.513353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037115, -0.432366, -0.900934,
		-0.469106, -0.803584, 0.366322,
		-0.882362, 0.409038, -0.232651,
		35.028137, 31.980259, 31.443558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.156193, 31.204641, 31.417439>,  <35.645794, 31.693935, 31.606413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.156193, 31.204641, 31.417439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.007381, 31.529270, 31.237238>,  <34.918095, 31.724047, 31.129118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.007381, 31.529270, 31.237238>,  <35.156193, 31.204641, 31.417439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.007381, 31.529270, 31.237238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193341, -0.542442, -0.817542,
		-0.907863, -0.217049, 0.358714,
		-0.372028, 0.811570, -0.450499,
		34.895775, 31.772741, 31.102089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.601730, 31.020451, 31.043028>,  <35.156193, 31.204641, 31.417439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.601730, 31.020451, 31.043028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.703785, 31.371450, 30.880596>,  <34.765018, 31.582050, 30.783136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.703785, 31.371450, 30.880596>,  <34.601730, 31.020451, 31.043028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.703785, 31.371450, 30.880596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048497, -0.407838, -0.911765,
		-0.965689, 0.252315, -0.061496,
		0.255133, 0.877500, -0.406081,
		34.780323, 31.634701, 30.758772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.187767, 31.058317, 30.529345>,  <34.601730, 31.020451, 31.043028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.187767, 31.058317, 30.529345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.473877, 31.323532, 30.441010>,  <34.645542, 31.482660, 30.388008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.473877, 31.323532, 30.441010>,  <34.187767, 31.058317, 30.529345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.473877, 31.323532, 30.441010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105296, -0.210148, -0.971983,
		-0.690868, 0.718486, -0.080498,
		0.715273, 0.663035, -0.220838,
		34.688457, 31.522442, 30.374758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.951859, 31.538267, 29.887821>,  <34.187767, 31.058317, 30.529345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.951859, 31.538267, 29.887821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.348858, 31.498819, 29.916748>,  <34.587055, 31.475151, 29.934105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.348858, 31.498819, 29.916748>,  <33.951859, 31.538267, 29.887821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.348858, 31.498819, 29.916748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032172, -0.359964, -0.932411,
		0.117985, 0.927740, -0.354089,
		0.992494, -0.098619, 0.072317,
		34.646606, 31.469234, 29.938442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.128292, 31.424686, 29.173410>,  <33.951859, 31.538267, 29.887821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.128292, 31.424686, 29.173410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.493145, 31.363361, 29.325472>,  <34.712055, 31.326567, 29.416708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.493145, 31.363361, 29.325472>,  <34.128292, 31.424686, 29.173410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.493145, 31.363361, 29.325472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271262, -0.469526, -0.840216,
		0.307307, 0.869506, -0.386680,
		0.912129, -0.153313, 0.380153,
		34.766785, 31.317368, 29.439518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.474346, 31.398939, 28.667849>,  <34.128292, 31.424686, 29.173410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.474346, 31.398939, 28.667849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.740166, 31.263355, 28.934227>,  <34.899658, 31.182005, 29.094053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.740166, 31.263355, 28.934227>,  <34.474346, 31.398939, 28.667849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.740166, 31.263355, 28.934227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567731, -0.350427, -0.744904,
		0.485857, 0.873102, -0.040438,
		0.664548, -0.338959, 0.665945,
		34.939529, 31.161667, 29.134010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.137321, 31.598921, 28.433186>,  <34.474346, 31.398939, 28.667849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.137321, 31.598921, 28.433186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.183701, 31.275475, 28.663904>,  <35.211529, 31.081406, 28.802336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.183701, 31.275475, 28.663904>,  <35.137321, 31.598921, 28.433186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.183701, 31.275475, 28.663904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417607, -0.487203, -0.766966,
		0.901199, 0.329805, 0.281192,
		0.115951, -0.808617, 0.576796,
		35.218487, 31.032890, 28.836943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.834682, 31.357325, 28.294333>,  <35.137321, 31.598921, 28.433186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.834682, 31.357325, 28.294333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.605129, 31.063665, 28.439489>,  <35.467400, 30.887470, 28.526583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.605129, 31.063665, 28.439489>,  <35.834682, 31.357325, 28.294333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.605129, 31.063665, 28.439489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130455, -0.519418, -0.844504,
		0.808483, -0.437301, 0.393856,
		-0.573878, -0.734147, 0.362893,
		35.432964, 30.843422, 28.548357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.232487, 30.796925, 28.092873>,  <35.834682, 31.357325, 28.294333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.232487, 30.796925, 28.092873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.908237, 30.590158, 28.202915>,  <35.713688, 30.466099, 28.268940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.908237, 30.590158, 28.202915>,  <36.232487, 30.796925, 28.092873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.908237, 30.590158, 28.202915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130445, -0.617421, -0.775742,
		0.570848, -0.592951, 0.567927,
		-0.810627, -0.516914, 0.275106,
		35.665051, 30.435085, 28.285446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.329170, 30.121965, 27.880978>,  <36.232487, 30.796925, 28.092873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.329170, 30.121965, 27.880978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.933380, 30.116276, 27.938583>,  <35.695908, 30.112862, 27.973146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.933380, 30.116276, 27.938583>,  <36.329170, 30.121965, 27.880978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.933380, 30.116276, 27.938583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100547, -0.648157, -0.754840,
		0.104083, -0.761374, 0.639903,
		-0.989473, -0.014226, 0.144016,
		35.636539, 30.112009, 27.981789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.026150, 29.460617, 28.009317>,  <36.329170, 30.121965, 27.880978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.026150, 29.460617, 28.009317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.745220, 29.693172, 27.845009>,  <35.576664, 29.832706, 27.746424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.745220, 29.693172, 27.845009>,  <36.026150, 29.460617, 28.009317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.745220, 29.693172, 27.845009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110630, -0.659168, -0.743814,
		-0.703213, -0.476951, 0.527265,
		-0.702319, 0.581391, -0.410770,
		35.534523, 29.867590, 27.721779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.690174, 29.006546, 27.645082>,  <36.026150, 29.460617, 28.009317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.690174, 29.006546, 27.645082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.544834, 29.342712, 27.484247>,  <35.457630, 29.544413, 27.387747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.544834, 29.342712, 27.484247>,  <35.690174, 29.006546, 27.645082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.544834, 29.342712, 27.484247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135604, -0.474699, -0.869639,
		-0.921729, -0.261462, 0.286448,
		-0.363354, 0.840416, -0.402089,
		35.435829, 29.594837, 27.363621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.001701, 28.885715, 27.460506>,  <35.690174, 29.006546, 27.645082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.001701, 28.885715, 27.460506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.143883, 29.181709, 27.232094>,  <35.229191, 29.359304, 27.095047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.143883, 29.181709, 27.232094>,  <35.001701, 28.885715, 27.460506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.143883, 29.181709, 27.232094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172687, -0.548421, -0.818177,
		-0.918602, 0.389436, -0.067154,
		0.355456, 0.739983, -0.571031,
		35.250519, 29.403704, 27.060785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.511871, 29.053917, 26.943834>,  <35.001701, 28.885715, 27.460506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.511871, 29.053917, 26.943834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.836403, 29.205803, 26.766045>,  <35.031120, 29.296934, 26.659370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.836403, 29.205803, 26.766045>,  <34.511871, 29.053917, 26.943834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.836403, 29.205803, 26.766045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189281, -0.548731, -0.814289,
		-0.553096, 0.744788, -0.373329,
		0.811330, 0.379716, -0.444476,
		35.079803, 29.319717, 26.632702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.354919, 29.150709, 26.242580>,  <34.511871, 29.053917, 26.943834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.354919, 29.150709, 26.242580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.754070, 29.159264, 26.217970>,  <34.993561, 29.164396, 26.203203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.754070, 29.159264, 26.217970>,  <34.354919, 29.150709, 26.242580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.754070, 29.159264, 26.217970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039560, -0.551423, -0.833287,
		-0.051746, 0.833951, -0.549407,
		0.997876, 0.021384, -0.061525,
		35.053432, 29.165678, 26.199512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.563278, 29.274702, 25.524723>,  <34.354919, 29.150709, 26.242580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.563278, 29.274702, 25.524723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.898907, 29.123705, 25.681417>,  <35.100285, 29.033108, 25.775434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.898907, 29.123705, 25.681417>,  <34.563278, 29.274702, 25.524723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.898907, 29.123705, 25.681417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292770, -0.293584, -0.909997,
		0.458524, 0.878242, -0.135820,
		0.839072, -0.377492, 0.391738,
		35.150627, 29.010458, 25.798939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.148613, 29.559948, 25.171310>,  <34.563278, 29.274702, 25.524723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.148613, 29.559948, 25.171310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.207638, 29.188549, 25.307613>,  <35.243053, 28.965710, 25.389395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.207638, 29.188549, 25.307613>,  <35.148613, 29.559948, 25.171310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.207638, 29.188549, 25.307613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192073, -0.311066, -0.930777,
		0.970223, 0.202797, 0.132438,
		0.147562, -0.928499, 0.340755,
		35.251907, 28.910000, 25.409840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.614952, 29.273354, 24.772747>,  <35.148613, 29.559948, 25.171310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.614952, 29.273354, 24.772747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.483601, 28.930170, 24.930773>,  <35.404789, 28.724260, 25.025589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.483601, 28.930170, 24.930773>,  <35.614952, 29.273354, 24.772747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.483601, 28.930170, 24.930773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158199, -0.462307, -0.872493,
		0.931203, -0.224011, 0.287540,
		-0.328381, -0.857957, 0.395064,
		35.385086, 28.672783, 25.049292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.091675, 28.692423, 24.607096>,  <35.614952, 29.273354, 24.772747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.091675, 28.692423, 24.607096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.764645, 28.478411, 24.692247>,  <35.568428, 28.350002, 24.743338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.764645, 28.478411, 24.692247>,  <36.091675, 28.692423, 24.607096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.764645, 28.478411, 24.692247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038078, -0.419114, -0.907135,
		0.574566, -0.733542, 0.363029,
		-0.817572, -0.535032, 0.212877,
		35.519375, 28.317902, 24.756111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.176540, 28.168724, 24.215160>,  <36.091675, 28.692423, 24.607096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.176540, 28.168724, 24.215160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.792660, 28.110155, 24.311102>,  <35.562332, 28.075014, 24.368666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.792660, 28.110155, 24.311102>,  <36.176540, 28.168724, 24.215160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.792660, 28.110155, 24.311102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130238, -0.524570, -0.841347,
		0.249013, -0.838681, 0.484361,
		-0.959703, -0.146424, 0.239853,
		35.504749, 28.066229, 24.383059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.021820, 27.464043, 24.163887>,  <36.176540, 28.168724, 24.215160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.021820, 27.464043, 24.163887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.672832, 27.652308, 24.111311>,  <35.463440, 27.765266, 24.079765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.672832, 27.652308, 24.111311>,  <36.021820, 27.464043, 24.163887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.672832, 27.652308, 24.111311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068250, -0.383699, -0.920933,
		-0.483883, -0.794513, 0.366888,
		-0.872467, 0.470664, -0.131439,
		35.411091, 27.793507, 24.071880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.591492, 26.965797, 23.874445>,  <36.021820, 27.464043, 24.163887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.591492, 26.965797, 23.874445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.378963, 27.293882, 23.789644>,  <35.251446, 27.490734, 23.738764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.378963, 27.293882, 23.789644>,  <35.591492, 26.965797, 23.874445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.378963, 27.293882, 23.789644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369338, -0.449484, -0.813359,
		-0.762419, -0.353858, 0.541758,
		-0.531325, 0.820212, -0.212002,
		35.219566, 27.539946, 23.726044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.849911, 26.819601, 23.717449>,  <35.591492, 26.965797, 23.874445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.849911, 26.819601, 23.717449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.915520, 27.169416, 23.534901>,  <34.954887, 27.379307, 23.425371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.915520, 27.169416, 23.534901>,  <34.849911, 26.819601, 23.717449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.915520, 27.169416, 23.534901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439278, -0.349480, -0.827586,
		-0.883250, 0.336221, 0.326841,
		0.164027, 0.874539, -0.456373,
		34.964729, 27.431778, 23.397989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.258251, 26.911100, 23.387262>,  <34.849911, 26.819601, 23.717449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.258251, 26.911100, 23.387262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.524120, 27.149328, 23.206814>,  <34.683643, 27.292265, 23.098545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.524120, 27.149328, 23.206814>,  <34.258251, 26.911100, 23.387262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.524120, 27.149328, 23.206814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450446, -0.162285, -0.877930,
		-0.596077, 0.786741, 0.160404,
		0.664673, 0.595568, -0.451119,
		34.723522, 27.327999, 23.071478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.470753, 26.943878, 22.688486>,  <34.258251, 26.911100, 23.387262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.470753, 26.943878, 22.688486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.429649, 26.625963, 22.449238>,  <34.404987, 26.435213, 22.305689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.429649, 26.625963, 22.449238>,  <34.470753, 26.943878, 22.688486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.429649, 26.625963, 22.449238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.890806, -0.194036, 0.410871,
		-0.442613, 0.575030, -0.688065,
		-0.102754, -0.794790, -0.598123,
		34.398823, 26.387526, 22.269800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.859066, 27.009645, 22.363018>,  <34.470753, 26.943878, 22.688486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.859066, 27.009645, 22.363018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.930885, 26.618027, 22.324585>,  <33.973976, 26.383057, 22.301525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.930885, 26.618027, 22.324585>,  <33.859066, 27.009645, 22.363018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.930885, 26.618027, 22.324585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.947288, -0.198416, 0.251548,
		-0.265341, 0.045852, -0.963064,
		0.179553, -0.979045, -0.096083,
		33.984753, 26.324314, 22.295759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.231247, 27.579395, 22.055441>,  <33.859066, 27.009645, 22.363018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.231247, 27.579395, 22.055441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.559673, 27.802868, 22.008591>,  <34.756729, 27.936951, 21.980480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.559673, 27.802868, 22.008591>,  <34.231247, 27.579395, 22.055441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.559673, 27.802868, 22.008591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202707, -0.477177, -0.855109,
		-0.533623, 0.678363, -0.505045,
		0.821070, 0.558682, -0.117124,
		34.805996, 27.970472, 21.973454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.276676, 27.828323, 21.374584>,  <34.231247, 27.579395, 22.055441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.276676, 27.828323, 21.374584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.607418, 27.746723, 21.584230>,  <34.805862, 27.697763, 21.710018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.607418, 27.746723, 21.584230>,  <34.276676, 27.828323, 21.374584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.607418, 27.746723, 21.584230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260159, -0.687470, -0.678013,
		0.498628, 0.696971, -0.515365,
		0.826854, -0.203999, 0.524115,
		34.855473, 27.685524, 21.741465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.926376, 27.732086, 20.947304>,  <34.276676, 27.828323, 21.374584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.926376, 27.732086, 20.947304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.960266, 27.527378, 21.289278>,  <34.980602, 27.404554, 21.494463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.960266, 27.527378, 21.289278>,  <34.926376, 27.732086, 20.947304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.960266, 27.527378, 21.289278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209050, -0.829794, -0.517436,
		0.974228, 0.222565, 0.036679,
		0.084727, -0.511768, 0.854935,
		34.985683, 27.373848, 21.545759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.449120, 28.200331, 21.040327>,  <34.926376, 27.732086, 20.947304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.449120, 28.200331, 21.040327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.794273, 28.193064, 20.838295>,  <36.001366, 28.188704, 20.717075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.794273, 28.193064, 20.838295>,  <35.449120, 28.200331, 21.040327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.794273, 28.193064, 20.838295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102695, -0.984808, -0.140023,
		-0.494863, 0.172693, -0.851639,
		0.862882, -0.018167, -0.505079,
		36.053139, 28.187614, 20.686771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.852734, 27.854940, 21.651035>,  <35.449120, 28.200331, 21.040327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.852734, 27.854940, 21.651035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.213478, 27.884733, 21.480816>,  <36.429924, 27.902609, 21.378685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.213478, 27.884733, 21.480816>,  <35.852734, 27.854940, 21.651035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.213478, 27.884733, 21.480816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122072, 0.900950, 0.416398,
		0.414412, -0.427482, 0.803444,
		0.901865, 0.074482, -0.425548,
		36.484039, 27.907078, 21.353151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.472477, 27.865921, 22.193178>,  <35.852734, 27.854940, 21.651035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.472477, 27.865921, 22.193178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.453735, 28.101665, 21.870575>,  <36.442490, 28.243113, 21.677013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.453735, 28.101665, 21.870575>,  <36.472477, 27.865921, 22.193178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.453735, 28.101665, 21.870575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166238, 0.800737, 0.575486,
		0.984972, -0.107106, -0.135496,
		-0.046859, 0.589362, -0.806509,
		36.439678, 28.278475, 21.628622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.049877, 28.379042, 22.093035>,  <36.472477, 27.865921, 22.193178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.049877, 28.379042, 22.093035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.717953, 28.544779, 21.943506>,  <36.518799, 28.644220, 21.853788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.717953, 28.544779, 21.943506>,  <37.049877, 28.379042, 22.093035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.717953, 28.544779, 21.943506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065164, 0.737230, 0.672492,
		0.554234, 0.533679, -0.638758,
		-0.829807, 0.414342, -0.373821,
		36.469009, 28.669081, 21.831360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.119507, 29.057892, 21.701336>,  <37.049877, 28.379042, 22.093035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.119507, 29.057892, 21.701336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.772964, 29.005056, 21.893995>,  <36.565041, 28.973356, 22.009592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.772964, 29.005056, 21.893995>,  <37.119507, 29.057892, 21.701336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.772964, 29.005056, 21.893995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251179, 0.718316, 0.648792,
		-0.431674, 0.683063, -0.589137,
		-0.866352, -0.132088, 0.481650,
		36.513058, 28.965429, 22.038490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.866722, 29.702534, 21.765163>,  <37.119507, 29.057892, 21.701336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.866722, 29.702534, 21.765163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.690533, 29.501242, 22.062550>,  <36.584820, 29.380466, 22.240982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.690533, 29.501242, 22.062550>,  <36.866722, 29.702534, 21.765163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.690533, 29.501242, 22.062550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209520, 0.747640, 0.630187,
		-0.872974, 0.433352, -0.223879,
		-0.440474, -0.503230, 0.743467,
		36.558392, 29.350273, 22.285589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.435852, 30.139170, 22.131744>,  <36.866722, 29.702534, 21.765163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.435852, 30.139170, 22.131744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.531406, 29.855345, 22.396910>,  <36.588741, 29.685051, 22.556009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.531406, 29.855345, 22.396910>,  <36.435852, 30.139170, 22.131744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.531406, 29.855345, 22.396910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077246, 0.666631, 0.741375,
		-0.967969, -0.228314, 0.104441,
		0.238890, -0.709561, 0.662914,
		36.603073, 29.642477, 22.595783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.903378, 30.184959, 22.757534>,  <36.435852, 30.139170, 22.131744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.903378, 30.184959, 22.757534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.234737, 29.998224, 22.881355>,  <36.433552, 29.886183, 22.955648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.234737, 29.998224, 22.881355>,  <35.903378, 30.184959, 22.757534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.234737, 29.998224, 22.881355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113375, 0.401452, 0.908836,
		-0.548550, -0.787971, 0.279633,
		0.828395, -0.466839, 0.309553,
		36.483257, 29.858173, 22.974220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.703526, 30.082720, 23.379492>,  <35.903378, 30.184959, 22.757534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.703526, 30.082720, 23.379492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.098152, 30.018103, 23.369701>,  <36.334927, 29.979332, 23.363827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.098152, 30.018103, 23.369701>,  <35.703526, 30.082720, 23.379492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.098152, 30.018103, 23.369701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056774, 0.198483, 0.978459,
		-0.153208, -0.966699, 0.204987,
		0.986562, -0.161545, -0.024474,
		36.394119, 29.969639, 23.362360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.908981, 29.594246, 24.020885>,  <35.703526, 30.082720, 23.379492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.908981, 29.594246, 24.020885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.217915, 29.827581, 23.920317>,  <36.403275, 29.967583, 23.859976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.217915, 29.827581, 23.920317>,  <35.908981, 29.594246, 24.020885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.217915, 29.827581, 23.920317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006978, 0.387987, 0.921638,
		0.635176, -0.713569, 0.295586,
		0.772336, 0.583339, -0.251420,
		36.449615, 30.002583, 23.844891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.293007, 29.740139, 24.658129>,  <35.908981, 29.594246, 24.020885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.293007, 29.740139, 24.658129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.453995, 30.030363, 24.434851>,  <36.550587, 30.204498, 24.300884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.453995, 30.030363, 24.434851>,  <36.293007, 29.740139, 24.658129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.453995, 30.030363, 24.434851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179878, 0.535194, 0.825355,
		0.897588, -0.432585, 0.084885,
		0.402466, 0.725560, -0.558196,
		36.574734, 30.248032, 24.267391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.838676, 30.020580, 25.100519>,  <36.293007, 29.740139, 24.658129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.838676, 30.020580, 25.100519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.799782, 30.298216, 24.815203>,  <36.776447, 30.464798, 24.644012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.799782, 30.298216, 24.815203>,  <36.838676, 30.020580, 25.100519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.799782, 30.298216, 24.815203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209157, 0.714933, 0.667176,
		0.973036, -0.084317, -0.214691,
		-0.097235, 0.694091, -0.713291,
		36.770611, 30.506443, 24.601215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.401367, 30.439705, 25.184381>,  <36.838676, 30.020580, 25.100519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.401367, 30.439705, 25.184381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.142551, 30.669121, 24.983425>,  <36.987263, 30.806770, 24.862852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.142551, 30.669121, 24.983425>,  <37.401367, 30.439705, 25.184381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.142551, 30.669121, 24.983425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095996, 0.714944, 0.692560,
		0.756391, 0.399885, -0.517653,
		-0.647037, 0.573539, -0.502390,
		36.948441, 30.841183, 24.832708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.714920, 31.130381, 25.169752>,  <37.401367, 30.439705, 25.184381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.714920, 31.130381, 25.169752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.321503, 31.180622, 25.117802>,  <37.085453, 31.210768, 25.086632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.321503, 31.180622, 25.117802>,  <37.714920, 31.130381, 25.169752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.321503, 31.180622, 25.117802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020397, 0.791417, 0.610936,
		0.179521, 0.598233, -0.780955,
		-0.983543, 0.125605, -0.129874,
		37.026440, 31.218304, 25.078840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.551521, 31.885557, 24.987700>,  <37.714920, 31.130381, 25.169752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.551521, 31.885557, 24.987700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.209549, 31.736200, 25.131742>,  <37.004368, 31.646587, 25.218168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.209549, 31.736200, 25.131742>,  <37.551521, 31.885557, 24.987700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.209549, 31.736200, 25.131742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103959, 0.803428, 0.586256,
		-0.508223, 0.463771, -0.725690,
		-0.854928, -0.373391, 0.360108,
		36.953072, 31.624184, 25.239775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.378071, 32.433662, 25.247023>,  <37.551521, 31.885557, 24.987700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.378071, 32.433662, 25.247023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.088707, 32.191368, 25.379543>,  <36.915089, 32.045990, 25.459057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.088707, 32.191368, 25.379543>,  <37.378071, 32.433662, 25.247023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.088707, 32.191368, 25.379543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185736, 0.632908, 0.751618,
		-0.664968, 0.482192, -0.570359,
		-0.723409, -0.605738, 0.331303,
		36.871685, 32.009647, 25.478935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.699715, 32.788895, 25.241404>,  <37.378071, 32.433662, 25.247023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.699715, 32.788895, 25.241404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.731697, 32.491188, 25.506638>,  <36.750885, 32.312565, 25.665777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.731697, 32.491188, 25.506638>,  <36.699715, 32.788895, 25.241404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.731697, 32.491188, 25.506638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187205, 0.642166, 0.743355,
		-0.979062, -0.183567, -0.087986,
		0.079954, -0.744262, 0.663085,
		36.755684, 32.267910, 25.705563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.067932, 32.784897, 25.718754>,  <36.699715, 32.788895, 25.241404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.067932, 32.784897, 25.718754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.317669, 32.551426, 25.926414>,  <36.467510, 32.411343, 26.051010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.317669, 32.551426, 25.926414>,  <36.067932, 32.784897, 25.718754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.317669, 32.551426, 25.926414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345518, 0.389705, 0.853667,
		-0.700586, -0.712352, 0.041635,
		0.624337, -0.583682, 0.519152,
		36.504971, 32.376320, 26.082161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.692795, 32.425327, 26.250538>,  <36.067932, 32.784897, 25.718754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.692795, 32.425327, 26.250538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.063995, 32.406639, 26.398396>,  <36.286716, 32.395428, 26.487110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.063995, 32.406639, 26.398396>,  <35.692795, 32.425327, 26.250538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.063995, 32.406639, 26.398396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320430, 0.406158, 0.855780,
		-0.190115, -0.912608, 0.361944,
		0.927998, -0.046719, 0.369643,
		36.342396, 32.392624, 26.509289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.462605, 32.429962, 26.818285>,  <35.692795, 32.425327, 26.250538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.462605, 32.429962, 26.818285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.854889, 32.498669, 26.855579>,  <36.090260, 32.539894, 26.877956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.854889, 32.498669, 26.855579>,  <35.462605, 32.429962, 26.818285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.854889, 32.498669, 26.855579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142549, 0.302290, 0.942497,
		0.133706, -0.937612, 0.320945,
		0.980715, 0.171768, 0.093238,
		36.149105, 32.550201, 26.883551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.734127, 32.213470, 27.521185>,  <35.462605, 32.429962, 26.818285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.734127, 32.213470, 27.521185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.977760, 32.506107, 27.398682>,  <36.123940, 32.681690, 27.325180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.977760, 32.506107, 27.398682>,  <35.734127, 32.213470, 27.521185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.977760, 32.506107, 27.398682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183689, 0.505774, 0.842882,
		0.771544, -0.457126, 0.442443,
		0.609079, 0.731593, -0.306258,
		36.160484, 32.725586, 27.306805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.941811, 32.476978, 28.197004>,  <35.734127, 32.213470, 27.521185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.941811, 32.476978, 28.197004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.036369, 32.764927, 27.935961>,  <36.093105, 32.937698, 27.779335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.036369, 32.764927, 27.935961>,  <35.941811, 32.476978, 28.197004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.036369, 32.764927, 27.935961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093726, 0.685408, 0.722102,
		0.967127, -0.109533, 0.229496,
		0.236392, 0.719874, -0.652610,
		36.107288, 32.980888, 27.740177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.274853, 33.055500, 28.596365>,  <35.941811, 32.476978, 28.197004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.274853, 33.055500, 28.596365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.208836, 33.260803, 28.259478>,  <36.169224, 33.383984, 28.057346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.208836, 33.260803, 28.259478>,  <36.274853, 33.055500, 28.596365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.208836, 33.260803, 28.259478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084304, 0.858143, 0.506441,
		0.982676, 0.012584, -0.184903,
		-0.165047, 0.513256, -0.842216,
		36.159321, 33.414780, 28.006813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.806950, 33.596844, 28.549334>,  <36.274853, 33.055500, 28.596365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.806950, 33.596844, 28.549334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.478420, 33.692337, 28.342091>,  <36.281303, 33.749634, 28.217745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.478420, 33.692337, 28.342091>,  <36.806950, 33.596844, 28.549334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.478420, 33.692337, 28.342091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052326, 0.872868, 0.485142,
		0.568059, 0.425569, -0.704415,
		-0.821323, 0.238730, -0.518109,
		36.232025, 33.763958, 28.186657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.713692, 34.274490, 28.658348>,  <36.806950, 33.596844, 28.549334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.713692, 34.274490, 28.658348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.363087, 34.225063, 28.472248>,  <36.152725, 34.195408, 28.360588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.363087, 34.225063, 28.472248>,  <36.713692, 34.274490, 28.658348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.363087, 34.225063, 28.472248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346529, 0.832819, 0.431661,
		0.334129, 0.539578, -0.772796,
		-0.876514, -0.123566, -0.465248,
		36.100132, 34.187992, 28.332674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.593243, 34.880272, 28.255413>,  <36.713692, 34.274490, 28.658348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.593243, 34.880272, 28.255413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.254959, 34.697723, 28.366055>,  <36.051991, 34.588196, 28.432440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.254959, 34.697723, 28.366055>,  <36.593243, 34.880272, 28.255413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.254959, 34.697723, 28.366055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279776, 0.820550, 0.498421,
		-0.454430, 0.344131, -0.821625,
		-0.845706, -0.456369, 0.276603,
		36.001247, 34.560814, 28.449036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.050705, 35.389214, 28.225071>,  <36.593243, 34.880272, 28.255413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.050705, 35.389214, 28.225071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.898106, 35.111008, 28.468616>,  <35.806545, 34.944084, 28.614744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.898106, 35.111008, 28.468616>,  <36.050705, 35.389214, 28.225071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.898106, 35.111008, 28.468616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471850, 0.712926, 0.518742,
		-0.794871, -0.089396, -0.600158,
		-0.381495, -0.695518, 0.608865,
		35.783657, 34.902351, 28.651276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.406303, 35.650356, 28.394955>,  <36.050705, 35.389214, 28.225071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.406303, 35.650356, 28.394955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.472095, 35.361984, 28.664238>,  <35.511570, 35.188961, 28.825808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.472095, 35.361984, 28.664238>,  <35.406303, 35.650356, 28.394955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.472095, 35.361984, 28.664238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473768, 0.540879, 0.694977,
		-0.865153, -0.433256, -0.252587,
		0.164484, -0.720929, 0.673206,
		35.521442, 35.145706, 28.866199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.705723, 35.468018, 28.758745>,  <35.406303, 35.650356, 28.394955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.705723, 35.468018, 28.758745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.011333, 35.366581, 28.996046>,  <35.194702, 35.305717, 29.138426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.011333, 35.366581, 28.996046>,  <34.705723, 35.468018, 28.758745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.011333, 35.366581, 28.996046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342242, 0.620182, 0.705865,
		-0.546926, -0.742338, 0.387048,
		0.764030, -0.253592, 0.593253,
		35.240543, 35.290504, 29.174023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.353893, 35.437214, 29.343931>,  <34.705723, 35.468018, 28.758745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.353893, 35.437214, 29.343931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.731468, 35.410515, 29.473259>,  <34.958012, 35.394497, 29.550856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.731468, 35.410515, 29.473259>,  <34.353893, 35.437214, 29.343931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.731468, 35.410515, 29.473259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224595, 0.587953, 0.777090,
		-0.241964, -0.806137, 0.539997,
		0.943934, -0.066747, 0.323317,
		35.014648, 35.390491, 29.570253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.378315, 35.205032, 30.030014>,  <34.353893, 35.437214, 29.343931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.378315, 35.205032, 30.030014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.727081, 35.399323, 30.005249>,  <34.936340, 35.515896, 29.990391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.727081, 35.399323, 30.005249>,  <34.378315, 35.205032, 30.030014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.727081, 35.399323, 30.005249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226724, 0.512549, 0.828184,
		0.434002, -0.708071, 0.557026,
		0.871917, 0.485724, -0.061910,
		34.988655, 35.545040, 29.986675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.646385, 35.290493, 30.698811>,  <34.378315, 35.205032, 30.030014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.646385, 35.290493, 30.698811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.863129, 35.556667, 30.493448>,  <34.993176, 35.716373, 30.370230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.863129, 35.556667, 30.493448>,  <34.646385, 35.290493, 30.698811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.863129, 35.556667, 30.493448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017135, 0.601983, 0.798325,
		0.840297, -0.441373, 0.314786,
		0.541855, 0.665436, -0.513408,
		35.025684, 35.756298, 30.339426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.299507, 35.405132, 31.073496>,  <34.646385, 35.290493, 30.698811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.299507, 35.405132, 31.073496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.247028, 35.736553, 30.855764>,  <35.215542, 35.935406, 30.725126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.247028, 35.736553, 30.855764>,  <35.299507, 35.405132, 31.073496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.247028, 35.736553, 30.855764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187699, 0.559905, 0.807017,
		0.973425, 0.003710, -0.228977,
		-0.131200, 0.828549, -0.544329,
		35.207668, 35.985119, 30.692465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.823910, 35.842010, 31.270420>,  <35.299507, 35.405132, 31.073496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.823910, 35.842010, 31.270420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.558434, 36.087566, 31.099468>,  <35.399147, 36.234898, 30.996897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.558434, 36.087566, 31.099468>,  <35.823910, 35.842010, 31.270420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.558434, 36.087566, 31.099468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054373, 0.530254, 0.846094,
		0.746025, 0.584785, -0.318548,
		-0.663694, 0.613887, -0.427379,
		35.359325, 36.271732, 30.971254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.964375, 36.418407, 31.588436>,  <35.823910, 35.842010, 31.270420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.964375, 36.418407, 31.588436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.619473, 36.534008, 31.422062>,  <35.412533, 36.603367, 31.322237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.619473, 36.534008, 31.422062>,  <35.964375, 36.418407, 31.588436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.619473, 36.534008, 31.422062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131502, 0.665318, 0.734887,
		0.489113, 0.688353, -0.535667,
		-0.862251, 0.289001, -0.415935,
		35.360798, 36.620708, 31.297281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.869526, 37.172066, 31.498465>,  <35.964375, 36.418407, 31.588436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.869526, 37.172066, 31.498465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.495361, 37.031773, 31.516306>,  <35.270863, 36.947598, 31.527010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.495361, 37.031773, 31.516306>,  <35.869526, 37.172066, 31.498465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.495361, 37.031773, 31.516306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201121, 0.631615, 0.748741,
		-0.290779, 0.691411, -0.661361,
		-0.935413, -0.350732, 0.044603,
		35.214737, 36.926552, 31.529686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.416283, 37.776173, 31.618208>,  <35.869526, 37.172066, 31.498465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.416283, 37.776173, 31.618208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.199837, 37.456348, 31.722437>,  <35.069969, 37.264454, 31.784973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.199837, 37.456348, 31.722437>,  <35.416283, 37.776173, 31.618208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.199837, 37.456348, 31.722437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478353, 0.547495, 0.686606,
		-0.691643, 0.246889, -0.678730,
		-0.541117, -0.799559, 0.260571,
		35.037502, 37.216480, 31.800608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.843182, 38.026649, 31.677635>,  <35.416283, 37.776173, 31.618208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.843182, 38.026649, 31.677635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.783928, 37.687702, 31.881603>,  <34.748375, 37.484333, 32.003983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.783928, 37.687702, 31.881603>,  <34.843182, 38.026649, 31.677635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.783928, 37.687702, 31.881603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588058, 0.490023, 0.643479,
		-0.795138, -0.204542, -0.570892,
		-0.148132, -0.847373, 0.509918,
		34.739487, 37.433491, 32.034580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.079407, 37.985188, 31.838163>,  <34.843182, 38.026649, 31.677635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.079407, 37.985188, 31.838163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.292114, 37.773113, 32.102322>,  <34.419739, 37.645870, 32.260818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.292114, 37.773113, 32.102322>,  <34.079407, 37.985188, 31.838163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.292114, 37.773113, 32.102322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528512, 0.401553, 0.747951,
		-0.661735, -0.746767, -0.066674,
		0.531772, -0.530183, 0.660397,
		34.451645, 37.614059, 32.300442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.576065, 37.964397, 32.412949>,  <34.079407, 37.985188, 31.838163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.576065, 37.964397, 32.412949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.918884, 37.831390, 32.570377>,  <34.124577, 37.751587, 32.664833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.918884, 37.831390, 32.570377>,  <33.576065, 37.964397, 32.412949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.918884, 37.831390, 32.570377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346257, 0.193944, 0.917873,
		-0.381544, -0.922938, 0.051081,
		0.857047, -0.332521, 0.393572,
		34.175999, 37.731632, 32.688450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.347462, 37.594017, 33.004360>,  <33.576065, 37.964397, 32.412949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.347462, 37.594017, 33.004360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.735809, 37.671448, 33.060852>,  <33.968819, 37.717907, 33.094746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.735809, 37.671448, 33.060852>,  <33.347462, 37.594017, 33.004360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.735809, 37.671448, 33.060852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188215, 0.251317, 0.949429,
		0.148292, -0.948351, 0.280429,
		0.970868, 0.193573, 0.141225,
		34.027069, 37.729519, 33.103218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.566029, 37.221016, 33.639248>,  <33.347462, 37.594017, 33.004360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.566029, 37.221016, 33.639248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.813828, 37.526550, 33.566826>,  <33.962505, 37.709869, 33.523373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.813828, 37.526550, 33.566826>,  <33.566029, 37.221016, 33.639248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.813828, 37.526550, 33.566826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052512, 0.270454, 0.961300,
		0.783240, -0.586015, 0.207656,
		0.619497, 0.763833, -0.181058,
		33.999676, 37.755699, 33.512508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.032307, 37.178562, 34.128284>,  <33.566029, 37.221016, 33.639248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.032307, 37.178562, 34.128284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.068596, 37.560081, 34.013714>,  <34.090370, 37.788994, 33.944969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.068596, 37.560081, 34.013714>,  <34.032307, 37.178562, 34.128284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.068596, 37.560081, 34.013714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053073, 0.291839, 0.954994,
		0.994461, -0.071438, 0.077097,
		0.090723, 0.953796, -0.286431,
		34.095814, 37.846222, 33.927784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.431919, 37.463665, 34.729164>,  <34.032307, 37.178562, 34.128284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.431919, 37.463665, 34.729164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.234531, 37.761692, 34.549671>,  <34.116100, 37.940510, 34.441975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.234531, 37.761692, 34.549671>,  <34.431919, 37.463665, 34.729164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.234531, 37.761692, 34.549671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054292, 0.488527, 0.870858,
		0.868068, 0.454102, -0.200621,
		-0.493467, 0.745072, -0.448729,
		34.086491, 37.985214, 34.415054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.137573, 37.131630, 34.840141>,  <34.431919, 37.463665, 34.729164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.137573, 37.131630, 34.840141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.487667, 37.140553, 35.033417>,  <35.697723, 37.145905, 35.149384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.487667, 37.140553, 35.033417>,  <35.137573, 37.131630, 34.840141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.487667, 37.140553, 35.033417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483282, 0.001386, -0.875464,
		-0.020194, 0.999750, -0.009565,
		0.875232, 0.022302, 0.483189,
		35.750237, 37.147243, 35.178375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.626995, 37.565472, 34.454418>,  <35.137573, 37.131630, 34.840141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.626995, 37.565472, 34.454418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.880783, 37.342720, 34.668831>,  <36.033058, 37.209068, 34.797478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.880783, 37.342720, 34.668831>,  <35.626995, 37.565472, 34.454418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.880783, 37.342720, 34.668831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571300, -0.129254, -0.810500,
		0.520635, 0.820475, 0.236137,
		0.634473, -0.556880, 0.536031,
		36.071125, 37.175655, 34.829639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.266003, 37.868916, 34.305820>,  <35.626995, 37.565472, 34.454418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.266003, 37.868916, 34.305820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.332649, 37.503136, 34.453342>,  <36.372639, 37.283669, 34.541855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.332649, 37.503136, 34.453342>,  <36.266003, 37.868916, 34.305820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.332649, 37.503136, 34.453342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557212, -0.221261, -0.800349,
		0.813482, 0.338855, 0.472678,
		0.166617, -0.914451, 0.368806,
		36.382633, 37.228802, 34.563984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.114380, 37.765541, 34.399502>,  <36.266003, 37.868916, 34.305820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.114380, 37.765541, 34.399502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.968231, 37.393208, 34.396690>,  <36.880543, 37.169807, 34.395004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.968231, 37.393208, 34.396690>,  <37.114380, 37.765541, 34.399502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.968231, 37.393208, 34.396690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721462, -0.278401, -0.634023,
		0.588215, -0.236722, 0.773282,
		-0.365370, -0.930836, -0.007027,
		36.858620, 37.113956, 34.394581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.740101, 37.275295, 34.336090>,  <37.114380, 37.765541, 34.399502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.740101, 37.275295, 34.336090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.438580, 37.030933, 34.239277>,  <37.257668, 36.884315, 34.181190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.438580, 37.030933, 34.239277>,  <37.740101, 37.275295, 34.336090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.438580, 37.030933, 34.239277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598640, -0.486575, -0.636298,
		0.270948, -0.624534, 0.732492,
		-0.753802, -0.610903, -0.242034,
		37.212440, 36.847664, 34.166668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.953537, 36.620392, 34.216526>,  <37.740101, 37.275295, 34.336090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.953537, 36.620392, 34.216526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.619167, 36.593517, 33.998642>,  <37.418545, 36.577393, 33.867912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.619167, 36.593517, 33.998642>,  <37.953537, 36.620392, 34.216526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.619167, 36.593517, 33.998642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503328, -0.489558, -0.712035,
		-0.218827, -0.869378, 0.443053,
		-0.835928, -0.067188, -0.544711,
		37.368389, 36.573360, 33.835228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.912273, 35.900455, 33.965908>,  <37.953537, 36.620392, 34.216526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.912273, 35.900455, 33.965908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.668316, 36.113503, 33.731182>,  <37.521942, 36.241329, 33.590347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.668316, 36.113503, 33.731182>,  <37.912273, 35.900455, 33.965908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.668316, 36.113503, 33.731182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350624, -0.482700, -0.802535,
		-0.710696, -0.695214, 0.107650,
		-0.609896, 0.532614, -0.586812,
		37.485348, 36.273285, 33.555138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.456947, 35.472042, 33.628727>,  <37.912273, 35.900455, 33.965908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.456947, 35.472042, 33.628727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.453060, 35.798328, 33.397381>,  <37.450726, 35.994102, 33.258572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.453060, 35.798328, 33.397381>,  <37.456947, 35.472042, 33.628727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.453060, 35.798328, 33.397381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335923, -0.542116, -0.770238,
		-0.941839, -0.201774, -0.268749,
		-0.009721, 0.815719, -0.578367,
		37.450146, 36.043045, 33.223869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.342083, 35.224365, 32.861843>,  <37.456947, 35.472042, 33.628727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.342083, 35.224365, 32.861843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.469864, 35.603310, 32.853298>,  <37.546532, 35.830677, 32.848171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.469864, 35.603310, 32.853298>,  <37.342083, 35.224365, 32.861843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.469864, 35.603310, 32.853298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379825, -0.148664, -0.913034,
		-0.868149, 0.283558, -0.407322,
		0.319452, 0.947362, -0.021361,
		37.565701, 35.887520, 32.846889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.041374, 35.497761, 32.224850>,  <37.342083, 35.224365, 32.861843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.041374, 35.497761, 32.224850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.379711, 35.675430, 32.343014>,  <37.582714, 35.782032, 32.413914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.379711, 35.675430, 32.343014>,  <37.041374, 35.497761, 32.224850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.379711, 35.675430, 32.343014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414044, -0.197487, -0.888576,
		-0.336339, 0.873906, -0.350949,
		0.845839, 0.444171, 0.295412,
		37.633461, 35.808681, 32.431637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.256802, 35.834438, 31.652950>,  <37.041374, 35.497761, 32.224850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.256802, 35.834438, 31.652950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.577206, 35.785931, 31.887447>,  <37.769447, 35.756824, 32.028145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.577206, 35.785931, 31.887447>,  <37.256802, 35.834438, 31.652950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.577206, 35.785931, 31.887447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550606, -0.235154, -0.800959,
		0.234991, 0.964363, -0.121587,
		0.801007, -0.121272, 0.586243,
		37.817509, 35.749550, 32.063320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.648270, 35.860336, 31.182457>,  <37.256802, 35.834438, 31.652950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.648270, 35.860336, 31.182457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.930618, 35.778416, 31.453690>,  <38.100029, 35.729263, 31.616430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.930618, 35.778416, 31.453690>,  <37.648270, 35.860336, 31.182457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.930618, 35.778416, 31.453690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586890, -0.366905, -0.721762,
		0.396612, 0.907434, -0.138791,
		0.705874, -0.204805, 0.678083,
		38.142380, 35.716976, 31.657114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.286652, 36.070736, 30.862213>,  <37.648270, 35.860336, 31.182457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.286652, 36.070736, 30.862213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.378304, 35.809799, 31.151197>,  <38.433296, 35.653236, 31.324589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.378304, 35.809799, 31.151197>,  <38.286652, 36.070736, 30.862213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.378304, 35.809799, 31.151197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567723, -0.513335, -0.643567,
		0.790689, 0.557619, 0.252729,
		0.229131, -0.652341, 0.722461,
		38.447044, 35.614098, 31.367935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.950298, 35.846180, 30.807842>,  <38.286652, 36.070736, 30.862213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.950298, 35.846180, 30.807842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.800808, 35.539524, 31.016685>,  <38.711113, 35.355530, 31.141991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.800808, 35.539524, 31.016685>,  <38.950298, 35.846180, 30.807842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.800808, 35.539524, 31.016685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498736, -0.640690, -0.583763,
		0.782043, 0.042225, 0.621793,
		-0.373727, -0.766638, 0.522106,
		38.688690, 35.309532, 31.173317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.460701, 35.387829, 30.655628>,  <38.950298, 35.846180, 30.807842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.460701, 35.387829, 30.655628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.161774, 35.181557, 30.823242>,  <38.982418, 35.057793, 30.923811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.161774, 35.181557, 30.823242>,  <39.460701, 35.387829, 30.655628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.161774, 35.181557, 30.823242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326773, -0.834325, -0.443983,
		0.578566, -0.194866, 0.792015,
		-0.747316, -0.515682, 0.419036,
		38.937580, 35.026852, 30.948954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.684887, 34.759411, 30.806816>,  <39.460701, 35.387829, 30.655628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.684887, 34.759411, 30.806816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.299385, 34.653030, 30.798286>,  <39.068085, 34.589203, 30.793169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.299385, 34.653030, 30.798286>,  <39.684887, 34.759411, 30.806816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.299385, 34.653030, 30.798286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226572, -0.773621, -0.591757,
		0.140881, -0.575138, 0.805834,
		-0.963752, -0.265947, -0.021322,
		39.010258, 34.573246, 30.791889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.672401, 33.973450, 30.766653>,  <39.684887, 34.759411, 30.806816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.672401, 33.973450, 30.766653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.313484, 34.099949, 30.643459>,  <39.098133, 34.175846, 30.569542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.313484, 34.099949, 30.643459>,  <39.672401, 33.973450, 30.766653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.313484, 34.099949, 30.643459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009779, -0.711757, -0.702358,
		-0.441329, -0.627208, 0.641747,
		-0.897292, 0.316246, -0.307985,
		39.044296, 34.194824, 30.551064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.247066, 33.397141, 30.720211>,  <39.672401, 33.973450, 30.766653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.247066, 33.397141, 30.720211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.119305, 33.675819, 30.463274>,  <39.042648, 33.843025, 30.309113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.119305, 33.675819, 30.463274>,  <39.247066, 33.397141, 30.720211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.119305, 33.675819, 30.463274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013170, -0.674517, -0.738142,
		-0.947528, -0.244222, 0.206265,
		-0.319400, 0.696694, -0.642341,
		39.023483, 33.884827, 30.270573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.905293, 32.988049, 30.323723>,  <39.247066, 33.397141, 30.720211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.905293, 32.988049, 30.323723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.968948, 33.326031, 30.119480>,  <39.007141, 33.528820, 29.996935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.968948, 33.326031, 30.119480>,  <38.905293, 32.988049, 30.323723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.968948, 33.326031, 30.119480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046651, -0.523054, -0.851022,
		-0.986154, 0.111610, -0.122656,
		0.159138, 0.844960, -0.510605,
		39.016689, 33.579517, 29.966299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.360291, 32.988094, 29.843489>,  <38.905293, 32.988049, 30.323723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.360291, 32.988094, 29.843489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.618195, 33.244213, 29.676491>,  <38.772938, 33.397884, 29.576292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.618195, 33.244213, 29.676491>,  <38.360291, 32.988094, 29.843489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.618195, 33.244213, 29.676491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050009, -0.509680, -0.858909,
		-0.762751, 0.574665, -0.296599,
		0.644756, 0.640301, -0.417497,
		38.811623, 33.436302, 29.551241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.072735, 33.276203, 29.266388>,  <38.360291, 32.988094, 29.843489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.072735, 33.276203, 29.266388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.465187, 33.312180, 29.197933>,  <38.700661, 33.333767, 29.156860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.465187, 33.312180, 29.197933>,  <38.072735, 33.276203, 29.266388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.465187, 33.312180, 29.197933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111906, -0.457619, -0.882078,
		-0.157653, 0.884587, -0.438920,
		0.981133, 0.089945, -0.171135,
		38.759525, 33.339165, 29.146593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.030968, 33.256210, 28.541199>,  <38.072735, 33.276203, 29.266388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.030968, 33.256210, 28.541199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.418751, 33.220860, 28.632713>,  <38.651421, 33.199650, 28.687622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.418751, 33.220860, 28.632713>,  <38.030968, 33.256210, 28.541199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.418751, 33.220860, 28.632713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154110, -0.506175, -0.848550,
		0.190801, 0.857890, -0.477095,
		0.969456, -0.088379, 0.228788,
		38.709587, 33.194347, 28.701349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.347851, 33.474365, 28.009903>,  <38.030968, 33.256210, 28.541199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.347851, 33.474365, 28.009903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.607670, 33.227039, 28.186888>,  <38.763561, 33.078644, 28.293077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.607670, 33.227039, 28.186888>,  <38.347851, 33.474365, 28.009903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.607670, 33.227039, 28.186888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131031, -0.482201, -0.866206,
		0.748942, 0.620621, -0.232195,
		0.649551, -0.618314, 0.442461,
		38.802536, 33.041546, 28.319626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.906765, 33.391232, 27.533421>,  <38.347851, 33.474365, 28.009903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.906765, 33.391232, 27.533421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.926384, 33.075874, 27.778704>,  <38.938156, 32.886658, 27.925873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.926384, 33.075874, 27.778704>,  <38.906765, 33.391232, 27.533421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.926384, 33.075874, 27.778704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335699, -0.565218, -0.753548,
		0.940691, 0.242812, 0.236942,
		0.049047, -0.788397, 0.613208,
		38.941097, 32.839355, 27.962666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.532726, 33.100101, 27.433279>,  <38.906765, 33.391232, 27.533421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.532726, 33.100101, 27.433279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.313866, 32.811871, 27.603638>,  <39.182549, 32.638931, 27.705853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.313866, 32.811871, 27.603638>,  <39.532726, 33.100101, 27.433279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.313866, 32.811871, 27.603638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339086, -0.656012, -0.674291,
		0.765277, -0.224521, 0.603276,
		-0.547149, -0.720582, 0.425899,
		39.149719, 32.595695, 27.731407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.937805, 32.456123, 27.289677>,  <39.532726, 33.100101, 27.433279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.937805, 32.456123, 27.289677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.574657, 32.315075, 27.380383>,  <39.356770, 32.230446, 27.434807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.574657, 32.315075, 27.380383>,  <39.937805, 32.456123, 27.289677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.574657, 32.315075, 27.380383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146943, -0.774219, -0.615624,
		0.392649, -0.525588, 0.754708,
		-0.907874, -0.352623, 0.226764,
		39.302296, 32.209290, 27.448412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.963947, 31.742701, 27.489656>,  <39.937805, 32.456123, 27.289677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.963947, 31.742701, 27.489656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.615517, 31.841095, 27.319614>,  <39.406460, 31.900131, 27.217588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.615517, 31.841095, 27.319614>,  <39.963947, 31.742701, 27.489656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.615517, 31.841095, 27.319614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081809, -0.780779, -0.619428,
		-0.484285, -0.574347, 0.659995,
		-0.871077, 0.245986, -0.425107,
		39.354195, 31.914890, 27.192081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.668049, 31.122486, 27.588352>,  <39.963947, 31.742701, 27.489656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.668049, 31.122486, 27.588352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.458324, 31.308771, 27.303196>,  <39.332489, 31.420542, 27.132103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.458324, 31.308771, 27.303196>,  <39.668049, 31.122486, 27.588352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.458324, 31.308771, 27.303196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081542, -0.860802, -0.502366,
		-0.847613, -0.205266, 0.489304,
		-0.524312, 0.465710, -0.712889,
		39.301033, 31.448484, 27.089329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.185993, 30.576445, 27.304438>,  <39.668049, 31.122486, 27.588352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.185993, 30.576445, 27.304438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.145893, 30.838112, 27.004568>,  <39.121834, 30.995113, 26.824646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.145893, 30.838112, 27.004568>,  <39.185993, 30.576445, 27.304438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.145893, 30.838112, 27.004568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348370, -0.728854, -0.589415,
		-0.931981, 0.202075, 0.300961,
		-0.100251, 0.654170, -0.749674,
		39.115818, 31.034363, 26.779665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.834030, 30.236115, 26.930016>,  <39.185993, 30.576445, 27.304438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.834030, 30.236115, 26.930016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.917133, 30.538355, 26.681532>,  <38.966995, 30.719700, 26.532442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.917133, 30.538355, 26.681532>,  <38.834030, 30.236115, 26.930016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.917133, 30.538355, 26.681532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215860, -0.583997, -0.782529,
		-0.954066, 0.296670, 0.041775,
		0.207757, 0.755602, -0.621211,
		38.979462, 30.765036, 26.495169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.302929, 30.395987, 26.417337>,  <38.834030, 30.236115, 26.930016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.302929, 30.395987, 26.417337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.658009, 30.498579, 26.264387>,  <38.871056, 30.560135, 26.172617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.658009, 30.498579, 26.264387>,  <38.302929, 30.395987, 26.417337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.658009, 30.498579, 26.264387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237423, -0.456565, -0.857426,
		-0.394492, 0.851919, -0.344397,
		0.887697, 0.256480, -0.382377,
		38.924316, 30.575523, 26.149673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.199001, 30.617479, 25.695925>,  <38.302929, 30.395987, 26.417337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.199001, 30.617479, 25.695925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.586960, 30.528811, 25.736242>,  <38.819736, 30.475609, 25.760433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.586960, 30.528811, 25.736242>,  <38.199001, 30.617479, 25.695925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.586960, 30.528811, 25.736242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006662, -0.437917, -0.898991,
		0.243422, 0.871258, -0.426212,
		0.969898, -0.221673, 0.100794,
		38.877930, 30.462309, 25.766481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.395592, 30.443640, 25.009926>,  <38.199001, 30.617479, 25.695925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.395592, 30.443640, 25.009926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.692600, 30.284428, 25.225418>,  <38.870808, 30.188900, 25.354713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.692600, 30.284428, 25.225418>,  <38.395592, 30.443640, 25.009926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.692600, 30.284428, 25.225418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012693, -0.795784, -0.605447,
		0.669700, 0.456397, -0.585836,
		0.742523, -0.398032, 0.538730,
		38.915356, 30.165018, 25.387037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.851719, 30.113821, 24.472233>,  <38.395592, 30.443640, 25.009926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.851719, 30.113821, 24.472233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.885540, 29.934460, 24.828163>,  <38.905830, 29.826843, 25.041721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.885540, 29.934460, 24.828163>,  <38.851719, 30.113821, 24.472233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.885540, 29.934460, 24.828163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089865, -0.892814, -0.441371,
		0.992359, -0.042646, -0.115783,
		0.084550, -0.448403, 0.889824,
		38.910904, 29.799938, 25.095110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.209259, 29.575203, 24.270302>,  <38.851719, 30.113821, 24.472233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.209259, 29.575203, 24.270302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.080566, 29.476891, 24.636051>,  <39.003349, 29.417902, 24.855501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.080566, 29.476891, 24.636051>,  <39.209259, 29.575203, 24.270302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.080566, 29.476891, 24.636051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058660, -0.969040, -0.239837,
		0.945011, -0.023527, 0.326192,
		-0.321736, -0.245782, 0.914373,
		38.984047, 29.403156, 24.910362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.655052, 29.072992, 24.541334>,  <39.209259, 29.575203, 24.270302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.655052, 29.072992, 24.541334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.326405, 28.990473, 24.753895>,  <39.129215, 28.940962, 24.881432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.326405, 28.990473, 24.753895>,  <39.655052, 29.072992, 24.541334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.326405, 28.990473, 24.753895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226766, -0.973565, -0.027343,
		0.522993, 0.098038, 0.846680,
		-0.821617, -0.206298, 0.531400,
		39.079918, 28.928583, 24.913315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.826805, 28.496252, 25.009790>,  <39.655052, 29.072992, 24.541334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.826805, 28.496252, 25.009790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.430038, 28.495569, 24.959024>,  <39.191978, 28.495159, 24.928566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.430038, 28.495569, 24.959024>,  <39.826805, 28.496252, 25.009790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.430038, 28.495569, 24.959024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008727, -0.998460, -0.054789,
		-0.126625, -0.055453, 0.990399,
		-0.991912, -0.001706, -0.126914,
		39.132465, 28.495058, 24.920950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.613960, 27.951887, 25.345432>,  <39.826805, 28.496252, 25.009790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.613960, 27.951887, 25.345432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.276367, 28.012161, 25.139524>,  <39.073811, 28.048326, 25.015980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.276367, 28.012161, 25.139524>,  <39.613960, 27.951887, 25.345432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.276367, 28.012161, 25.139524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196175, -0.979952, 0.034780,
		-0.499210, 0.130339, 0.856622,
		-0.843982, 0.150686, -0.514771,
		39.023174, 28.057367, 24.985092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.252327, 27.581680, 25.810444>,  <39.613960, 27.951887, 25.345432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.252327, 27.581680, 25.810444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.126839, 27.348503, 26.110247>,  <40.051548, 27.208597, 26.290129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.126839, 27.348503, 26.110247>,  <40.252327, 27.581680, 25.810444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.126839, 27.348503, 26.110247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286906, 0.810655, 0.510414,
		-0.905133, -0.054912, -0.421567,
		-0.313718, -0.582943, 0.749506,
		40.032722, 27.173620, 26.335098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.693707, 27.948137, 26.062811>,  <40.252327, 27.581680, 25.810444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.693707, 27.948137, 26.062811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.756210, 27.677242, 26.350403>,  <39.793713, 27.514706, 26.522959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.756210, 27.677242, 26.350403>,  <39.693707, 27.948137, 26.062811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.756210, 27.677242, 26.350403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141465, 0.705073, 0.694881,
		-0.977534, -0.210290, 0.014367,
		0.156256, -0.677237, 0.718981,
		39.803085, 27.474072, 26.566097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.159489, 28.049543, 26.423117>,  <39.693707, 27.948137, 26.062811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.159489, 28.049543, 26.423117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.418213, 27.852293, 26.655825>,  <39.573448, 27.733942, 26.795450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.418213, 27.852293, 26.655825>,  <39.159489, 28.049543, 26.423117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.418213, 27.852293, 26.655825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179251, 0.643162, 0.744454,
		-0.741282, -0.585807, 0.327614,
		0.646815, -0.493125, 0.581771,
		39.612259, 27.704355, 26.830357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.874733, 27.989159, 27.126322>,  <39.159489, 28.049543, 26.423117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.874733, 27.989159, 27.126322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.268410, 27.952360, 27.186863>,  <39.504616, 27.930281, 27.223186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.268410, 27.952360, 27.186863>,  <38.874733, 27.989159, 27.126322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.268410, 27.952360, 27.186863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083584, 0.512143, 0.854824,
		-0.156155, -0.853959, 0.496356,
		0.984190, -0.091998, 0.151351,
		39.563667, 27.924761, 27.232267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.921577, 27.931101, 27.815971>,  <38.874733, 27.989159, 27.126322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.921577, 27.931101, 27.815971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.294556, 28.011642, 27.695976>,  <39.518345, 28.059967, 27.623980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.294556, 28.011642, 27.695976>,  <38.921577, 27.931101, 27.815971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.294556, 28.011642, 27.695976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141791, 0.559754, 0.816438,
		0.332313, -0.803823, 0.493392,
		0.932450, 0.201354, -0.299989,
		39.574291, 28.072048, 27.605980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.310799, 27.784481, 28.358183>,  <38.921577, 27.931101, 27.815971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.310799, 27.784481, 28.358183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.517506, 28.046535, 28.137730>,  <39.641529, 28.203768, 28.005459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.517506, 28.046535, 28.137730>,  <39.310799, 27.784481, 28.358183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.517506, 28.046535, 28.137730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013838, 0.637276, 0.770511,
		0.856012, -0.405803, 0.320260,
		0.516770, 0.655135, -0.551132,
		39.672539, 28.243076, 27.972389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.897217, 27.969538, 28.753172>,  <39.310799, 27.784481, 28.358183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.897217, 27.969538, 28.753172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.877697, 28.256186, 28.474871>,  <39.865986, 28.428175, 28.307890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.877697, 28.256186, 28.474871>,  <39.897217, 27.969538, 28.753172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.877697, 28.256186, 28.474871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013360, 0.696989, 0.716957,
		0.998719, 0.025695, -0.043590,
		-0.048804, 0.716621, -0.695753,
		39.863056, 28.471172, 28.266144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.486282, 28.402946, 28.903250>,  <39.897217, 27.969538, 28.753172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.486282, 28.402946, 28.903250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.234634, 28.632690, 28.693750>,  <40.083645, 28.770536, 28.568050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.234634, 28.632690, 28.693750>,  <40.486282, 28.402946, 28.903250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.234634, 28.632690, 28.693750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019307, 0.685141, 0.728155,
		0.777065, 0.447988, -0.442128,
		-0.629124, 0.574360, -0.523750,
		40.045898, 28.804998, 28.536625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.739197, 29.100052, 28.959871>,  <40.486282, 28.402946, 28.903250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.739197, 29.100052, 28.959871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.348507, 29.123449, 28.877323>,  <40.114094, 29.137487, 28.827793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.348507, 29.123449, 28.877323>,  <40.739197, 29.100052, 28.959871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.348507, 29.123449, 28.877323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097666, 0.735320, 0.670646,
		0.190977, 0.675192, -0.712491,
		-0.976724, 0.058492, -0.206372,
		40.055489, 29.140997, 28.815411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.575333, 29.832548, 28.886438>,  <40.739197, 29.100052, 28.959871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.575333, 29.832548, 28.886438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.217697, 29.656824, 28.921318>,  <40.003117, 29.551390, 28.942245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.217697, 29.656824, 28.921318>,  <40.575333, 29.832548, 28.886438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.217697, 29.656824, 28.921318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337290, 0.788529, 0.514254,
		-0.294675, 0.430380, -0.853194,
		-0.894093, -0.439312, 0.087197,
		39.949471, 29.525030, 28.947477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.198071, 30.280222, 28.613117>,  <40.575333, 29.832548, 28.886438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.198071, 30.280222, 28.613117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.979137, 30.056482, 28.862133>,  <39.847778, 29.922239, 29.011541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.979137, 30.056482, 28.862133>,  <40.198071, 30.280222, 28.613117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.979137, 30.056482, 28.862133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304648, 0.825977, 0.474292,
		-0.779497, 0.069941, -0.622490,
		-0.547334, -0.559349, 0.622539,
		39.814938, 29.888678, 29.048895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.555687, 30.619503, 28.612373>,  <40.198071, 30.280222, 28.613117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.555687, 30.619503, 28.612373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.562435, 30.380869, 28.933323>,  <39.566486, 30.237688, 29.125893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.562435, 30.380869, 28.933323>,  <39.555687, 30.619503, 28.612373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.562435, 30.380869, 28.933323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365687, 0.743207, 0.560282,
		-0.930585, -0.302871, -0.205624,
		0.016873, -0.596584, 0.802373,
		39.567497, 30.201893, 29.174034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.989895, 30.826971, 29.070137>,  <39.555687, 30.619503, 28.612373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.989895, 30.826971, 29.070137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.258373, 30.636503, 29.297384>,  <39.419460, 30.522223, 29.433733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.258373, 30.636503, 29.297384>,  <38.989895, 30.826971, 29.070137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.258373, 30.636503, 29.297384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166802, 0.649732, 0.741637,
		-0.722269, -0.592547, 0.356671,
		0.671196, -0.476169, 0.568119,
		39.459732, 30.493652, 29.467819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.602322, 30.655172, 29.754471>,  <38.989895, 30.826971, 29.070137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.602322, 30.655172, 29.754471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.999878, 30.665239, 29.797466>,  <39.238411, 30.671280, 29.823263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.999878, 30.665239, 29.797466>,  <38.602322, 30.655172, 29.754471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.999878, 30.665239, 29.797466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107952, 0.425362, 0.898562,
		-0.023106, -0.904673, 0.425479,
		0.993888, 0.025169, 0.107489,
		39.298046, 30.672791, 29.829714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.625717, 30.508457, 30.403574>,  <38.602322, 30.655172, 29.754471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.625717, 30.508457, 30.403574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.991886, 30.649845, 30.326563>,  <39.211586, 30.734678, 30.280355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.991886, 30.649845, 30.326563>,  <38.625717, 30.508457, 30.403574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.991886, 30.649845, 30.326563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057608, 0.588461, 0.806471,
		0.398359, -0.727168, 0.559051,
		0.915419, 0.353471, -0.192528,
		39.266510, 30.755886, 30.268805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.011349, 30.416500, 31.090458>,  <38.625717, 30.508457, 30.403574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.011349, 30.416500, 31.090458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.151058, 30.708405, 30.855356>,  <39.234886, 30.883547, 30.714294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.151058, 30.708405, 30.855356>,  <39.011349, 30.416500, 31.090458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.151058, 30.708405, 30.855356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161425, 0.664743, 0.729424,
		0.923011, -0.159892, 0.349980,
		0.349276, 0.729761, -0.587754,
		39.255840, 30.927334, 30.679029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.488018, 30.765213, 31.447174>,  <39.011349, 30.416500, 31.090458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.488018, 30.765213, 31.447174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.415226, 31.038132, 31.163948>,  <39.371552, 31.201883, 30.994013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.415226, 31.038132, 31.163948>,  <39.488018, 30.765213, 31.447174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.415226, 31.038132, 31.163948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124207, 0.730271, 0.671772,
		0.975427, 0.034300, -0.217637,
		-0.181976, 0.682296, -0.708065,
		39.360634, 31.242821, 30.951529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.898739, 31.346958, 31.731964>,  <39.488018, 30.765213, 31.447174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.898739, 31.346958, 31.731964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.650452, 31.520006, 31.470415>,  <39.501480, 31.623835, 31.313486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.650452, 31.520006, 31.470415>,  <39.898739, 31.346958, 31.731964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.650452, 31.520006, 31.470415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103265, 0.781609, 0.615162,
		0.777201, 0.449365, -0.440487,
		-0.620721, 0.432618, -0.653871,
		39.464237, 31.649792, 31.274254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.160397, 32.008194, 31.734573>,  <39.898739, 31.346958, 31.731964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.160397, 32.008194, 31.734573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.796406, 32.057777, 31.576290>,  <39.578011, 32.087528, 31.481319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.796406, 32.057777, 31.576290>,  <40.160397, 32.008194, 31.734573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.796406, 32.057777, 31.576290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150905, 0.789850, 0.594446,
		0.386235, 0.600644, -0.700036,
		-0.909973, 0.123957, -0.395708,
		39.523415, 32.094963, 31.457579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.049278, 32.715733, 31.455698>,  <40.160397, 32.008194, 31.734573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.049278, 32.715733, 31.455698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.686985, 32.563709, 31.530745>,  <39.469608, 32.472496, 31.575773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.686985, 32.563709, 31.530745>,  <40.049278, 32.715733, 31.455698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.686985, 32.563709, 31.530745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221939, 0.802398, 0.553985,
		-0.361089, 0.460124, -0.811110,
		-0.905736, -0.380055, 0.187618,
		39.415264, 32.449692, 31.587030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.506020, 33.347988, 31.411253>,  <40.049278, 32.715733, 31.455698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.506020, 33.347988, 31.411253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.328800, 33.055592, 31.618851>,  <39.222469, 32.880154, 31.743408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.328800, 33.055592, 31.618851>,  <39.506020, 33.347988, 31.411253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.328800, 33.055592, 31.618851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510166, 0.681615, 0.524530,
		-0.737182, -0.032379, -0.674918,
		-0.443050, -0.730994, 0.518993,
		39.195885, 32.836292, 31.774549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.931606, 33.635700, 31.546690>,  <39.506020, 33.347988, 31.411253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.931606, 33.635700, 31.546690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.941376, 33.319756, 31.791809>,  <38.947239, 33.130188, 31.938881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.941376, 33.319756, 31.791809>,  <38.931606, 33.635700, 31.546690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.941376, 33.319756, 31.791809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621445, 0.468159, 0.628198,
		-0.783077, -0.396164, -0.479421,
		0.024424, -0.789861, 0.612799,
		38.948704, 33.082798, 31.975649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.277828, 33.542110, 31.767124>,  <38.931606, 33.635700, 31.546690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.277828, 33.542110, 31.767124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.518547, 33.374680, 32.039192>,  <38.662979, 33.274223, 32.202435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.518547, 33.374680, 32.039192>,  <38.277828, 33.542110, 31.767124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.518547, 33.374680, 32.039192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521988, 0.438429, 0.731648,
		-0.604457, -0.795346, 0.045354,
		0.601798, -0.418575, 0.680172,
		38.699085, 33.249107, 32.243244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.793633, 33.366203, 32.345413>,  <38.277828, 33.542110, 31.767124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.793633, 33.366203, 32.345413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.167931, 33.360786, 32.486382>,  <38.392509, 33.357536, 32.570961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.167931, 33.360786, 32.486382>,  <37.793633, 33.366203, 32.345413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.167931, 33.360786, 32.486382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289947, 0.539338, 0.790598,
		-0.200780, -0.841981, 0.500756,
		0.935745, -0.013544, 0.352418,
		38.448654, 33.356724, 32.592106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.665630, 33.284859, 33.056068>,  <37.793633, 33.366203, 32.345413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.665630, 33.284859, 33.056068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.050819, 33.392166, 33.045433>,  <38.281933, 33.456551, 33.039051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.050819, 33.392166, 33.045433>,  <37.665630, 33.284859, 33.056068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.050819, 33.392166, 33.045433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095065, 0.430234, 0.897698,
		0.252264, -0.861935, 0.439808,
		0.962978, 0.268268, -0.026593,
		38.339714, 33.472645, 33.037457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.938389, 33.101578, 33.738670>,  <37.665630, 33.284859, 33.056068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.938389, 33.101578, 33.738670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.165379, 33.401810, 33.603256>,  <38.301575, 33.581947, 33.522007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.165379, 33.401810, 33.603256>,  <37.938389, 33.101578, 33.738670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.165379, 33.401810, 33.603256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027393, 0.428129, 0.903303,
		0.822934, -0.503329, 0.263513,
		0.567476, 0.750577, -0.338534,
		38.335621, 33.626984, 33.501698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.506691, 33.224209, 34.224117>,  <37.938389, 33.101578, 33.738670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.506691, 33.224209, 34.224117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.474674, 33.562572, 34.013199>,  <38.455463, 33.765591, 33.886650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.474674, 33.562572, 34.013199>,  <38.506691, 33.224209, 34.224117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.474674, 33.562572, 34.013199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041962, 0.531382, 0.846093,
		0.995908, 0.045594, -0.078027,
		-0.080038, 0.845905, -0.527294,
		38.450665, 33.816345, 33.855011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.032761, 33.653721, 34.531376>,  <38.506691, 33.224209, 34.224117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.032761, 33.653721, 34.531376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.758736, 33.876415, 34.343445>,  <38.594322, 34.010033, 34.230686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.758736, 33.876415, 34.343445>,  <39.032761, 33.653721, 34.531376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.758736, 33.876415, 34.343445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019130, 0.658463, 0.752369,
		0.728236, 0.506430, -0.461737,
		-0.685060, 0.556735, -0.469829,
		38.553219, 34.043434, 34.202496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.273396, 34.270988, 34.760864>,  <39.032761, 33.653721, 34.531376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.273396, 34.270988, 34.760864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.906723, 34.322639, 34.609596>,  <38.686718, 34.353630, 34.518833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.906723, 34.322639, 34.609596>,  <39.273396, 34.270988, 34.760864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.906723, 34.322639, 34.609596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251709, 0.548443, 0.797404,
		0.310373, 0.826157, -0.470247,
		-0.916685, 0.129127, -0.378173,
		38.631718, 34.361378, 34.496143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.121372, 35.052124, 34.718182>,  <39.273396, 34.270988, 34.760864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.121372, 35.052124, 34.718182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.759659, 34.881519, 34.725784>,  <38.542629, 34.779156, 34.730347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.759659, 34.881519, 34.725784>,  <39.121372, 35.052124, 34.718182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.759659, 34.881519, 34.725784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224695, 0.513307, 0.828268,
		-0.363022, 0.744718, -0.560010,
		-0.904283, -0.426511, 0.019008,
		38.488373, 34.753567, 34.731487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.611969, 35.533672, 34.854362>,  <39.121372, 35.052124, 34.718182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.611969, 35.533672, 34.854362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.428020, 35.200256, 34.976818>,  <38.317650, 35.000206, 35.050293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.428020, 35.200256, 34.976818>,  <38.611969, 35.533672, 34.854362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.428020, 35.200256, 34.976818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120100, 0.399980, 0.908621,
		-0.879824, 0.381085, -0.284049,
		-0.459875, -0.833541, 0.306144,
		38.290058, 34.950195, 35.068661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.007286, 35.787106, 35.286335>,  <38.611969, 35.533672, 34.854362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.007286, 35.787106, 35.286335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.052898, 35.399521, 35.374065>,  <38.080265, 35.166969, 35.426704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.052898, 35.399521, 35.374065>,  <38.007286, 35.787106, 35.286335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.052898, 35.399521, 35.374065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187515, 0.195803, 0.962548,
		-0.975620, -0.150891, -0.159367,
		0.114035, -0.968965, 0.219324,
		38.087109, 35.108833, 35.439861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.418919, 35.624645, 35.672089>,  <38.007286, 35.787106, 35.286335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.418919, 35.624645, 35.672089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.712570, 35.366486, 35.756481>,  <37.888760, 35.211590, 35.807117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.712570, 35.366486, 35.756481>,  <37.418919, 35.624645, 35.672089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.712570, 35.366486, 35.756481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222956, 0.064374, 0.972701,
		-0.641366, -0.761124, -0.096638,
		0.734125, -0.645404, 0.210984,
		37.932808, 35.172863, 35.819775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.089355, 35.164555, 36.042702>,  <37.418919, 35.624645, 35.672089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.089355, 35.164555, 36.042702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.469555, 35.098389, 36.147919>,  <37.697674, 35.058689, 36.211048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.469555, 35.098389, 36.147919>,  <37.089355, 35.164555, 36.042702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.469555, 35.098389, 36.147919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274135, -0.047839, 0.960501,
		-0.146297, -0.985063, -0.090817,
		0.950498, -0.165414, 0.263041,
		37.754704, 35.048763, 36.226830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.184433, 34.464222, 36.381351>,  <37.089355, 35.164555, 36.042702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.184433, 34.464222, 36.381351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.491863, 34.691975, 36.498035>,  <37.676323, 34.828629, 36.568047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.491863, 34.691975, 36.498035>,  <37.184433, 34.464222, 36.381351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.491863, 34.691975, 36.498035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208819, -0.207724, 0.955639,
		0.604722, -0.795394, -0.040753,
		0.768574, 0.569385, 0.291709,
		37.722435, 34.862789, 36.585548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.367153, 34.227615, 37.121891>,  <37.184433, 34.464222, 36.381351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.367153, 34.227615, 37.121891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.592274, 34.558102, 37.111870>,  <37.727345, 34.756393, 37.105858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.592274, 34.558102, 37.111870>,  <37.367153, 34.227615, 37.121891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.592274, 34.558102, 37.111870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197420, -0.104918, 0.974689,
		0.802672, -0.553501, -0.222159,
		0.562799, 0.826214, -0.025058,
		37.761112, 34.805965, 37.104351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.054276, 34.118580, 37.322685>,  <37.367153, 34.227615, 37.121891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.054276, 34.118580, 37.322685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.936237, 34.490971, 37.408661>,  <37.865414, 34.714405, 37.460247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.936237, 34.490971, 37.408661>,  <38.054276, 34.118580, 37.322685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.936237, 34.490971, 37.408661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234325, -0.147572, 0.960892,
		0.926288, 0.333922, -0.174603,
		-0.295097, 0.930977, 0.214941,
		37.847710, 34.770264, 37.473145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.365154, 34.116348, 37.993008>,  <38.054276, 34.118580, 37.322685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.365154, 34.116348, 37.993008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.192764, 34.476402, 37.967644>,  <38.089329, 34.692432, 37.952427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.192764, 34.476402, 37.967644>,  <38.365154, 34.116348, 37.993008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.192764, 34.476402, 37.967644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140492, 0.136344, 0.980649,
		0.891359, 0.413729, -0.185222,
		-0.430977, 0.900133, -0.063406,
		38.063473, 34.746441, 37.948624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.812099, 34.681934, 38.421314>,  <38.365154, 34.116348, 37.993008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.812099, 34.681934, 38.421314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.425541, 34.779495, 38.388859>,  <38.193604, 34.838032, 38.369385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.425541, 34.779495, 38.388859>,  <38.812099, 34.681934, 38.421314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.425541, 34.779495, 38.388859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015740, 0.371216, 0.928413,
		0.256560, 0.895941, -0.362582,
		-0.966400, 0.243900, -0.081137,
		38.135620, 34.852665, 38.364517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.816616, 35.352795, 38.742096>,  <38.812099, 34.681934, 38.421314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.816616, 35.352795, 38.742096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.442726, 35.213852, 38.712051>,  <38.218391, 35.130486, 38.694027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.442726, 35.213852, 38.712051>,  <38.816616, 35.352795, 38.742096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.442726, 35.213852, 38.712051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200846, 0.341972, 0.917996,
		-0.293186, 0.873155, -0.389414,
		-0.934721, -0.347356, -0.075108,
		38.162312, 35.109646, 38.689518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.473835, 34.974831, 38.487000>,  <38.816616, 35.352795, 38.742096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.473835, 34.974831, 38.487000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.843002, 35.097515, 38.580082>,  <40.064503, 35.171124, 38.635933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.843002, 35.097515, 38.580082>,  <39.473835, 34.974831, 38.487000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.843002, 35.097515, 38.580082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353520, 0.435744, 0.827738,
		0.152473, -0.846202, 0.510583,
		0.922917, 0.306709, 0.232710,
		40.119877, 35.189529, 38.649895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.660355, 34.819702, 39.201599>,  <39.473835, 34.974831, 38.487000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.660355, 34.819702, 39.201599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.904140, 35.125149, 39.116322>,  <40.050411, 35.308414, 39.065155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.904140, 35.125149, 39.116322>,  <39.660355, 34.819702, 39.201599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.904140, 35.125149, 39.116322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211352, 0.415664, 0.884621,
		0.764125, -0.494083, 0.414722,
		0.609461, 0.763613, -0.213194,
		40.086979, 35.354233, 39.052364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.004433, 34.889709, 39.772343>,  <39.660355, 34.819702, 39.201599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.004433, 34.889709, 39.772343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.021942, 35.230961, 39.564396>,  <40.032448, 35.435711, 39.439629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.021942, 35.230961, 39.564396>,  <40.004433, 34.889709, 39.772343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.021942, 35.230961, 39.564396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229607, 0.515024, 0.825852,
		0.972299, 0.083214, 0.218428,
		0.043774, 0.853127, -0.519863,
		40.035076, 35.486900, 39.408436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.281364, 35.374016, 40.227154>,  <40.004433, 34.889709, 39.772343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.281364, 35.374016, 40.227154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.119354, 35.625103, 39.961246>,  <40.022148, 35.775757, 39.801701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.119354, 35.625103, 39.961246>,  <40.281364, 35.374016, 40.227154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.119354, 35.625103, 39.961246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376728, 0.547910, 0.746907,
		0.833083, 0.552956, 0.014561,
		-0.405028, 0.627721, -0.664769,
		39.997845, 35.813419, 39.761814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.445419, 35.962486, 40.441376>,  <40.281364, 35.374016, 40.227154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.445419, 35.962486, 40.441376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.112553, 35.989628, 40.221233>,  <39.912830, 36.005913, 40.089149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.112553, 35.989628, 40.221233>,  <40.445419, 35.962486, 40.441376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.112553, 35.989628, 40.221233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440609, 0.521686, 0.730553,
		0.336684, 0.850435, -0.404234,
		-0.832170, 0.067857, -0.550353,
		39.862900, 36.009983, 40.056126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.257385, 36.667961, 40.231419>,  <40.445419, 35.962486, 40.441376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.257385, 36.667961, 40.231419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.912167, 36.466362, 40.244881>,  <39.705036, 36.345402, 40.252956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.912167, 36.466362, 40.244881>,  <40.257385, 36.667961, 40.231419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.912167, 36.466362, 40.244881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316351, 0.591257, 0.741847,
		-0.393791, 0.629602, -0.669724,
		-0.863047, -0.504001, 0.033657,
		39.653252, 36.315163, 40.254978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.768131, 37.255016, 40.378273>,  <40.257385, 36.667961, 40.231419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.768131, 37.255016, 40.378273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.580669, 36.903748, 40.416580>,  <39.468193, 36.692986, 40.439564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.580669, 36.903748, 40.416580>,  <39.768131, 37.255016, 40.378273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.580669, 36.903748, 40.416580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586982, 0.390591, 0.709147,
		-0.660163, 0.276129, -0.698525,
		-0.468654, -0.878175, 0.095771,
		39.440075, 36.640297, 40.445312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.101036, 37.431824, 40.376629>,  <39.768131, 37.255016, 40.378273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.101036, 37.431824, 40.376629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.093662, 37.068638, 40.544086>,  <39.089237, 36.850727, 40.644562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.093662, 37.068638, 40.544086>,  <39.101036, 37.431824, 40.376629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.093662, 37.068638, 40.544086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618182, 0.339444, 0.708963,
		-0.785819, -0.245731, -0.567543,
		-0.018434, -0.907961, 0.418648,
		39.088131, 36.796249, 40.669682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.339344, 37.154953, 40.535908>,  <39.101036, 37.431824, 40.376629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.339344, 37.154953, 40.535908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.587097, 36.969219, 40.789131>,  <38.735748, 36.857777, 40.941063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.587097, 36.969219, 40.789131>,  <38.339344, 37.154953, 40.535908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.587097, 36.969219, 40.789131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627990, 0.190898, 0.754445,
		-0.471165, -0.864841, -0.173360,
		0.619380, -0.464337, 0.633055,
		38.772911, 36.829918, 40.979050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.752148, 36.799923, 40.911831>,  <38.339344, 37.154953, 40.535908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.752148, 36.799923, 40.911831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.086113, 36.754177, 41.127182>,  <38.286491, 36.726730, 41.256393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.086113, 36.754177, 41.127182>,  <37.752148, 36.799923, 40.911831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.086113, 36.754177, 41.127182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547538, -0.073218, 0.833571,
		-0.055896, -0.990739, -0.123739,
		0.834912, -0.114345, 0.538375,
		38.336586, 36.719868, 41.288692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.622955, 36.248924, 41.403431>,  <37.752148, 36.799923, 40.911831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.622955, 36.248924, 41.403431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.927025, 36.465904, 41.546478>,  <38.109467, 36.596092, 41.632305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.927025, 36.465904, 41.546478>,  <37.622955, 36.248924, 41.403431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.927025, 36.465904, 41.546478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330283, -0.151367, 0.931666,
		0.559513, -0.826340, 0.064096,
		0.760170, 0.542449, 0.357618,
		38.155075, 36.628639, 41.653763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.027824, 35.891556, 41.899792>,  <37.622955, 36.248924, 41.403431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.027824, 35.891556, 41.899792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.070538, 36.283524, 41.967159>,  <38.096165, 36.518703, 42.007580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.070538, 36.283524, 41.967159>,  <38.027824, 35.891556, 41.899792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.070538, 36.283524, 41.967159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252373, -0.137125, 0.957865,
		0.961720, -0.144787, 0.232662,
		0.106783, 0.979915, 0.168416,
		38.102573, 36.577499, 42.017685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.135395, 35.781345, 42.648140>,  <38.027824, 35.891556, 41.899792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.135395, 35.781345, 42.648140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.147160, 36.174152, 42.573547>,  <38.154221, 36.409836, 42.528793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.147160, 36.174152, 42.573547>,  <38.135395, 35.781345, 42.648140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.147160, 36.174152, 42.573547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143914, 0.188775, 0.971418,
		0.989153, -0.001737, 0.146879,
		0.029415, 0.982019, -0.186478,
		38.155983, 36.468758, 42.517605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.697533, 36.005672, 42.963665>,  <38.135395, 35.781345, 42.648140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.697533, 36.005672, 42.963665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.418236, 36.289974, 42.929516>,  <38.250656, 36.460556, 42.909027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.418236, 36.289974, 42.929516>,  <38.697533, 36.005672, 42.963665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.418236, 36.289974, 42.929516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161211, -0.039923, 0.986112,
		0.697474, 0.702308, 0.142457,
		-0.698241, 0.710753, -0.085375,
		38.208763, 36.503201, 42.903904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.719727, 36.513378, 43.475304>,  <38.697533, 36.005672, 42.963665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.719727, 36.513378, 43.475304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.334328, 36.495358, 43.369751>,  <38.103088, 36.484543, 43.306419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.334328, 36.495358, 43.369751>,  <38.719727, 36.513378, 43.475304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.334328, 36.495358, 43.369751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266054, 0.051913, 0.962559,
		-0.029667, 0.997635, -0.062005,
		-0.963501, -0.045053, -0.263885,
		38.045277, 36.481842, 43.290585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.339302, 37.030018, 43.837700>,  <38.719727, 36.513378, 43.475304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.339302, 37.030018, 43.837700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.084721, 36.737583, 43.739365>,  <37.931973, 36.562122, 43.680363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.084721, 36.737583, 43.739365>,  <38.339302, 37.030018, 43.837700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.084721, 36.737583, 43.739365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405787, 0.046316, 0.912793,
		-0.655947, 0.680708, -0.326144,
		-0.636451, -0.731089, -0.245841,
		37.893784, 36.518257, 43.665611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.721977, 37.192947, 43.971729>,  <38.339302, 37.030018, 43.837700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.721977, 37.192947, 43.971729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.680027, 36.795219, 43.978886>,  <37.654858, 36.556583, 43.983177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.680027, 36.795219, 43.978886>,  <37.721977, 37.192947, 43.971729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.680027, 36.795219, 43.978886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531582, 0.071254, 0.844004,
		-0.840489, 0.079007, -0.536038,
		-0.104877, -0.994324, 0.017889,
		37.648563, 36.496922, 43.984253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.014450, 37.112194, 44.053093>,  <37.721977, 37.192947, 43.971729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.014450, 37.112194, 44.053093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.213741, 36.788776, 44.178329>,  <37.333317, 36.594727, 44.253471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.213741, 36.788776, 44.178329>,  <37.014450, 37.112194, 44.053093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.213741, 36.788776, 44.178329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469563, 0.051942, 0.881370,
		-0.728887, -0.586141, -0.353783,
		0.498231, -0.808542, 0.313090,
		37.363209, 36.546215, 44.272255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.524864, 36.590900, 44.253998>,  <37.014450, 37.112194, 44.053093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.524864, 36.590900, 44.253998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.875263, 36.557583, 44.444023>,  <37.085503, 36.537594, 44.558037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.875263, 36.557583, 44.444023>,  <36.524864, 36.590900, 44.253998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.875263, 36.557583, 44.444023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482279, -0.162556, 0.860803,
		0.005524, -0.983177, -0.182571,
		0.876000, -0.083295, 0.475064,
		37.138062, 36.532593, 44.586544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.129112, 36.205910, 44.830685>,  <36.524864, 36.590900, 44.253998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.129112, 36.205910, 44.830685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.050495, 36.494217, 45.096577>,  <36.003323, 36.667198, 45.256111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.050495, 36.494217, 45.096577>,  <36.129112, 36.205910, 44.830685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.050495, 36.494217, 45.096577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015342, -0.680135, 0.732926,
		0.980375, 0.133855, 0.144735,
		-0.196545, 0.720763, 0.664733,
		35.991531, 36.710445, 45.295998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.664528, 36.203346, 45.439499>,  <36.129112, 36.205910, 44.830685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.664528, 36.203346, 45.439499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.296967, 36.340164, 45.518108>,  <36.076431, 36.422253, 45.565273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.296967, 36.340164, 45.518108>,  <36.664528, 36.203346, 45.439499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.296967, 36.340164, 45.518108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147709, -0.760277, 0.632583,
		0.365783, 0.552255, 0.749144,
		-0.918904, 0.342043, 0.196523,
		36.021294, 36.442776, 45.577065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.404503, 36.299751, 46.099808>,  <36.664528, 36.203346, 45.439499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.404503, 36.299751, 46.099808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.045803, 36.219585, 45.941982>,  <35.830585, 36.171486, 45.847286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.045803, 36.219585, 45.941982>,  <36.404503, 36.299751, 46.099808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.045803, 36.219585, 45.941982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022356, -0.869926, 0.492676,
		-0.441981, 0.450626, 0.775622,
		-0.896746, -0.200414, -0.394565,
		35.776779, 36.159462, 45.823612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.516293, 36.933430, 46.359875>,  <36.404503, 36.299751, 46.099808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.516293, 36.933430, 46.359875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.525581, 36.571495, 46.529922>,  <36.531155, 36.354336, 46.631950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.525581, 36.571495, 46.529922>,  <36.516293, 36.933430, 46.359875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.525581, 36.571495, 46.529922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.954230, 0.106765, 0.279369,
		-0.298172, -0.412152, -0.860944,
		0.023224, -0.904838, 0.425122,
		36.532547, 36.300045, 46.657459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.971954, 36.743858, 45.804905>,  <36.516293, 36.933430, 46.359875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.971954, 36.743858, 45.804905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.299156, 36.535934, 45.903431>,  <37.495476, 36.411179, 45.962547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.299156, 36.535934, 45.903431>,  <36.971954, 36.743858, 45.804905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.299156, 36.535934, 45.903431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180560, -0.174526, -0.967956,
		0.546143, 0.836263, -0.048905,
		0.818001, -0.519812, 0.246312,
		37.544556, 36.379990, 45.977325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.586754, 37.038803, 45.530178>,  <36.971954, 36.743858, 45.804905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.586754, 37.038803, 45.530178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.584682, 36.639618, 45.555611>,  <37.583439, 36.400108, 45.570869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.584682, 36.639618, 45.555611>,  <37.586754, 37.038803, 45.530178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.584682, 36.639618, 45.555611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095307, -0.063785, -0.993402,
		0.995434, 0.000916, 0.095444,
		-0.005178, -0.997963, 0.063581,
		37.583130, 36.340229, 45.574684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.136959, 36.643917, 45.070919>,  <37.586754, 37.038803, 45.530178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.136959, 36.643917, 45.070919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.826565, 36.403782, 45.148315>,  <37.640327, 36.259701, 45.194756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.826565, 36.403782, 45.148315>,  <38.136959, 36.643917, 45.070919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.826565, 36.403782, 45.148315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192508, -0.066715, -0.979025,
		0.600651, -0.796962, -0.063799,
		-0.775989, -0.600334, 0.193494,
		37.593769, 36.223682, 45.206364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.263901, 35.850849, 44.931419>,  <38.136959, 36.643917, 45.070919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.263901, 35.850849, 44.931419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.899532, 36.005230, 44.873100>,  <37.680912, 36.097858, 44.838108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.899532, 36.005230, 44.873100>,  <38.263901, 35.850849, 44.931419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.899532, 36.005230, 44.873100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059582, -0.226618, -0.972160,
		-0.408249, -0.894250, 0.183436,
		-0.910924, 0.385954, -0.145798,
		37.626255, 36.121017, 44.829361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.802963, 35.369312, 44.583000>,  <38.263901, 35.850849, 44.931419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.802963, 35.369312, 44.583000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.675751, 35.737923, 44.493870>,  <37.599422, 35.959087, 44.440392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.675751, 35.737923, 44.493870>,  <37.802963, 35.369312, 44.583000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.675751, 35.737923, 44.493870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165878, -0.177314, -0.970074,
		-0.933456, -0.345475, -0.096470,
		-0.318031, 0.921524, -0.222821,
		37.580341, 36.014381, 44.427025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.378754, 35.218765, 43.931011>,  <37.802963, 35.369312, 44.583000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.378754, 35.218765, 43.931011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.494202, 35.598377, 43.981659>,  <37.563473, 35.826145, 44.012047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.494202, 35.598377, 43.981659>,  <37.378754, 35.218765, 43.931011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.494202, 35.598377, 43.981659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097321, 0.102479, -0.989963,
		-0.952484, 0.298049, -0.062783,
		0.288623, 0.949034, 0.126616,
		37.580788, 35.883087, 44.019646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.994438, 35.600735, 43.497108>,  <37.378754, 35.218765, 43.931011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.994438, 35.600735, 43.497108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.343052, 35.787418, 43.557251>,  <37.552219, 35.899429, 43.593334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.343052, 35.787418, 43.557251>,  <36.994438, 35.600735, 43.497108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.343052, 35.787418, 43.557251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137467, 0.061773, -0.988578,
		-0.470669, 0.882249, -0.010320,
		0.871535, 0.466712, 0.150355,
		37.604511, 35.927433, 43.602356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.095387, 36.241421, 43.180191>,  <36.994438, 35.600735, 43.497108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.095387, 36.241421, 43.180191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.441780, 36.041794, 43.192825>,  <37.649616, 35.922016, 43.200405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.441780, 36.041794, 43.192825>,  <37.095387, 36.241421, 43.180191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.441780, 36.041794, 43.192825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018119, -0.031804, -0.999330,
		0.499741, 0.865977, -0.018499,
		0.865985, -0.499071, 0.031585,
		37.701576, 35.892071, 43.202301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.038265, 36.987110, 43.243717>,  <37.095387, 36.241421, 43.180191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.038265, 36.987110, 43.243717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.428963, 36.905849, 43.271149>,  <37.663380, 36.857094, 43.287609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.428963, 36.905849, 43.271149>,  <37.038265, 36.987110, 43.243717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.428963, 36.905849, 43.271149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141239, 0.368938, -0.918660,
		0.161325, 0.906981, 0.389051,
		0.976743, -0.203152, 0.068582,
		37.721985, 36.844906, 43.291725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.378223, 37.525787, 42.829288>,  <37.038265, 36.987110, 43.243717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.378223, 37.525787, 42.829288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.623497, 37.210102, 42.842854>,  <37.770660, 37.020691, 42.850994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.623497, 37.210102, 42.842854>,  <37.378223, 37.525787, 42.829288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.623497, 37.210102, 42.842854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219554, 0.129026, -0.967031,
		0.758817, 0.600413, 0.252391,
		0.613183, -0.789213, 0.033916,
		37.807453, 36.973339, 42.853027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.930424, 37.744278, 42.387436>,  <37.378223, 37.525787, 42.829288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.930424, 37.744278, 42.387436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.989887, 37.350891, 42.428795>,  <38.025566, 37.114861, 42.453609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.989887, 37.350891, 42.428795>,  <37.930424, 37.744278, 42.387436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.989887, 37.350891, 42.428795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348203, -0.045807, -0.936299,
		0.925557, 0.175190, 0.335637,
		0.148656, -0.983468, 0.103398,
		38.034485, 37.055851, 42.459816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.639053, 37.566868, 42.414738>,  <37.930424, 37.744278, 42.387436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.639053, 37.566868, 42.414738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.523197, 37.196041, 42.319523>,  <38.453682, 36.973545, 42.262394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.523197, 37.196041, 42.319523>,  <38.639053, 37.566868, 42.414738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.523197, 37.196041, 42.319523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667329, -0.017319, -0.744562,
		0.686134, -0.374506, 0.623672,
		-0.289644, -0.927063, -0.238035,
		38.436302, 36.917923, 42.248112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.214962, 37.177925, 42.270870>,  <38.639053, 37.566868, 42.414738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.214962, 37.177925, 42.270870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.904797, 37.013359, 42.079258>,  <38.718697, 36.914619, 41.964291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.904797, 37.013359, 42.079258>,  <39.214962, 37.177925, 42.270870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.904797, 37.013359, 42.079258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528200, -0.006890, -0.849092,
		0.346032, -0.911420, 0.222655,
		-0.775413, -0.411419, -0.479028,
		38.672173, 36.889935, 41.935551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.464779, 36.533031, 42.019867>,  <39.214962, 37.177925, 42.270870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.464779, 36.533031, 42.019867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.140087, 36.634739, 41.809551>,  <38.945274, 36.695763, 41.683361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.140087, 36.634739, 41.809551>,  <39.464779, 36.533031, 42.019867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.140087, 36.634739, 41.809551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459018, -0.278889, -0.843518,
		-0.361118, -0.926049, 0.109665,
		-0.811724, 0.254271, -0.525785,
		38.896568, 36.711018, 41.651817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.577324, 36.051826, 41.575783>,  <39.464779, 36.533031, 42.019867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.577324, 36.051826, 41.575783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.302502, 36.276062, 41.390877>,  <39.137608, 36.410603, 41.279934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.302502, 36.276062, 41.390877>,  <39.577324, 36.051826, 41.575783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.302502, 36.276062, 41.390877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492074, -0.109108, -0.863689,
		-0.534615, -0.820872, -0.200889,
		-0.687059, 0.560593, -0.462260,
		39.096382, 36.444241, 41.252197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.093674, 35.608238, 41.180794>,  <39.577324, 36.051826, 41.575783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.093674, 35.608238, 41.180794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.089733, 35.968201, 41.006401>,  <39.087368, 36.184177, 40.901768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.089733, 35.968201, 41.006401>,  <39.093674, 35.608238, 41.180794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.089733, 35.968201, 41.006401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408465, -0.394345, -0.823194,
		-0.912721, -0.186192, -0.363694,
		-0.009851, 0.899903, -0.435980,
		39.086777, 36.238171, 40.875607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.834156, 35.508949, 40.532104>,  <39.093674, 35.608238, 41.180794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.834156, 35.508949, 40.532104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.026966, 35.859058, 40.516342>,  <39.142654, 36.069122, 40.506886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.026966, 35.859058, 40.516342>,  <38.834156, 35.508949, 40.532104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.026966, 35.859058, 40.516342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347941, -0.232511, -0.908227,
		-0.804106, 0.424078, -0.416619,
		0.482028, 0.875269, -0.039410,
		39.171574, 36.121639, 40.504520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.563595, 35.871742, 39.867954>,  <38.834156, 35.508949, 40.532104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.563595, 35.871742, 39.867954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.922924, 36.002934, 39.984882>,  <39.138519, 36.081646, 40.055038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.922924, 36.002934, 39.984882>,  <38.563595, 35.871742, 39.867954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.922924, 36.002934, 39.984882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342275, -0.105304, -0.933680,
		-0.275442, 0.938799, -0.206854,
		0.898320, 0.327976, 0.292322,
		39.192421, 36.101326, 40.072578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.816349, 36.064415, 39.256844>,  <38.563595, 35.871742, 39.867954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.816349, 36.064415, 39.256844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.138126, 36.067947, 39.494427>,  <39.331192, 36.070065, 39.636978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.138126, 36.067947, 39.494427>,  <38.816349, 36.064415, 39.256844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.138126, 36.067947, 39.494427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585968, -0.175937, -0.791004,
		0.097518, 0.984362, -0.146704,
		0.804445, 0.008827, 0.593961,
		39.379459, 36.070595, 39.672615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.341110, 36.412060, 38.902679>,  <38.816349, 36.064415, 39.256844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.341110, 36.412060, 38.902679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.553440, 36.208729, 39.173923>,  <39.680840, 36.086731, 39.336670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.553440, 36.208729, 39.173923>,  <39.341110, 36.412060, 38.902679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.553440, 36.208729, 39.173923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629456, -0.299278, -0.717090,
		0.567456, 0.807490, 0.161102,
		0.530828, -0.508324, 0.678106,
		39.712688, 36.056232, 39.377354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.055820, 36.636242, 38.893246>,  <39.341110, 36.412060, 38.902679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.055820, 36.636242, 38.893246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.024857, 36.259518, 39.024090>,  <40.006279, 36.033482, 39.102596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.024857, 36.259518, 39.024090>,  <40.055820, 36.636242, 38.893246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.024857, 36.259518, 39.024090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672376, -0.291570, -0.680366,
		0.736151, 0.167273, 0.655821,
		-0.077411, -0.941810, 0.327109,
		40.001633, 35.976974, 39.122223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.848812, 36.346329, 38.735954>,  <40.055820, 36.636242, 38.893246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.848812, 36.346329, 38.735954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.601963, 36.046352, 38.831245>,  <40.453854, 35.866367, 38.888420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.601963, 36.046352, 38.831245>,  <40.848812, 36.346329, 38.735954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.601963, 36.046352, 38.831245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494180, -0.604985, -0.624323,
		0.612328, -0.267557, 0.743954,
		-0.617123, -0.749938, 0.238228,
		40.416824, 35.821369, 38.902714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.194351, 35.800179, 38.981693>,  <40.848812, 36.346329, 38.735954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.194351, 35.800179, 38.981693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.854248, 35.618675, 38.874992>,  <40.650185, 35.509773, 38.810970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.854248, 35.618675, 38.874992>,  <41.194351, 35.800179, 38.981693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.854248, 35.618675, 38.874992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506100, -0.565515, -0.651196,
		0.144634, -0.688690, 0.710483,
		-0.850261, -0.453760, -0.266753,
		40.599171, 35.482548, 38.794968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.340534, 35.012573, 38.856716>,  <41.194351, 35.800179, 38.981693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.340534, 35.012573, 38.856716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.024666, 35.158539, 38.659435>,  <40.835144, 35.246120, 38.541065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.024666, 35.158539, 38.659435>,  <41.340534, 35.012573, 38.856716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.024666, 35.158539, 38.659435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356153, -0.381914, -0.852817,
		-0.499571, -0.849102, 0.171620,
		-0.789673, 0.364920, -0.493204,
		40.787766, 35.268013, 38.511475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.027340, 34.406040, 38.431553>,  <41.340534, 35.012573, 38.856716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.027340, 34.406040, 38.431553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.965416, 34.773582, 38.286369>,  <40.928261, 34.994106, 38.199261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.965416, 34.773582, 38.286369>,  <41.027340, 34.406040, 38.431553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.965416, 34.773582, 38.286369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096928, -0.351489, -0.931161,
		-0.983178, -0.179332, -0.034650,
		-0.154808, 0.918856, -0.362959,
		40.918972, 35.049240, 38.177483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.333214, 34.402611, 38.083405>,  <41.027340, 34.406040, 38.431553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.333214, 34.402611, 38.083405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.609615, 34.659721, 37.951138>,  <40.775455, 34.813988, 37.871777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.609615, 34.659721, 37.951138>,  <40.333214, 34.402611, 38.083405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.609615, 34.659721, 37.951138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078045, -0.388435, -0.918166,
		-0.718622, 0.660266, -0.218245,
		0.691007, 0.642781, -0.330668,
		40.816917, 34.852554, 37.851936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.127281, 34.572132, 37.455154>,  <40.333214, 34.402611, 38.083405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.127281, 34.572132, 37.455154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.519024, 34.652462, 37.464344>,  <40.754070, 34.700661, 37.469856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.519024, 34.652462, 37.464344>,  <40.127281, 34.572132, 37.455154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.519024, 34.652462, 37.464344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085985, -0.311048, -0.946497,
		-0.182938, 0.928933, -0.321895,
		0.979357, 0.200828, 0.022972,
		40.812832, 34.712711, 37.471237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.256779, 34.894581, 36.891323>,  <40.127281, 34.572132, 37.455154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.256779, 34.894581, 36.891323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.608158, 34.739750, 37.003399>,  <40.818985, 34.646851, 37.070644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.608158, 34.739750, 37.003399>,  <40.256779, 34.894581, 36.891323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.608158, 34.739750, 37.003399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223840, -0.184709, -0.956963,
		0.422170, 0.903358, -0.075614,
		0.878447, -0.387076, 0.280186,
		40.871693, 34.623627, 37.087456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.780094, 35.147030, 36.419655>,  <40.256779, 34.894581, 36.891323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.780094, 35.147030, 36.419655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.921604, 34.793301, 36.541515>,  <41.006512, 34.581062, 36.614632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.921604, 34.793301, 36.541515>,  <40.780094, 35.147030, 36.419655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.921604, 34.793301, 36.541515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111868, -0.283370, -0.952464,
		0.928616, 0.371041, -0.001323,
		0.353778, -0.884325, 0.304649,
		41.027737, 34.528004, 36.632912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.582561, 35.069828, 36.412106>,  <40.780094, 35.147030, 36.419655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.582561, 35.069828, 36.412106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.384125, 34.735069, 36.319588>,  <41.265064, 34.534214, 36.264076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.384125, 34.735069, 36.319588>,  <41.582561, 35.069828, 36.412106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.384125, 34.735069, 36.319588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414145, 0.006055, -0.910191,
		0.763138, -0.547325, 0.343593,
		-0.496089, -0.836898, -0.231293,
		41.235298, 34.484001, 36.250198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.130569, 34.815659, 36.190517>,  <41.582561, 35.069828, 36.412106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.130569, 34.815659, 36.190517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.818878, 34.584892, 36.092560>,  <41.631863, 34.446434, 36.033787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.818878, 34.584892, 36.092560>,  <42.130569, 34.815659, 36.190517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.818878, 34.584892, 36.092560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549837, -0.441732, -0.708909,
		0.300804, -0.687052, 0.661420,
		-0.779228, -0.576916, -0.244892,
		41.585110, 34.411816, 36.019093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.769119, 34.863724, 36.530212>,  <42.130569, 34.815659, 36.190517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.769119, 34.863724, 36.530212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.886402, 35.198811, 36.714497>,  <42.956772, 35.399864, 36.825066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.886402, 35.198811, 36.714497>,  <42.769119, 34.863724, 36.530212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.886402, 35.198811, 36.714497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330145, -0.540967, 0.773537,
		0.897237, -0.074705, -0.435185,
		0.293208, 0.837719, 0.460712,
		42.974365, 35.450127, 36.852711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.263515, 34.576675, 35.994530>,  <42.769119, 34.863724, 36.530212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.263515, 34.576675, 35.994530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.199795, 34.541241, 35.601231>,  <43.161564, 34.519981, 35.365250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.199795, 34.541241, 35.601231>,  <43.263515, 34.576675, 35.994530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.199795, 34.541241, 35.601231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.954112, -0.241991, 0.176385,
		-0.253563, 0.966226, -0.045973,
		-0.159302, -0.088588, -0.983247,
		43.152004, 34.514664, 35.306255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.835003, 34.218330, 35.484184>,  <43.263515, 34.576675, 35.994530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.835003, 34.218330, 35.484184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.965889, 34.113670, 35.847385>,  <44.044422, 34.050873, 36.065308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.965889, 34.113670, 35.847385>,  <43.835003, 34.218330, 35.484184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.965889, 34.113670, 35.847385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864747, -0.304492, -0.399371,
		0.380976, 0.915872, 0.126630,
		0.327215, -0.261654, 0.908002,
		44.064053, 34.035175, 36.119785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.509377, 34.525375, 35.564938>,  <43.835003, 34.218330, 35.484184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.509377, 34.525375, 35.564938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.488495, 34.172729, 35.752563>,  <44.475967, 33.961140, 35.865139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.488495, 34.172729, 35.752563>,  <44.509377, 34.525375, 35.564938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.488495, 34.172729, 35.752563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927779, -0.216592, -0.303832,
		0.369460, 0.419328, 0.829255,
		-0.052205, -0.881619, 0.469066,
		44.472832, 33.908245, 35.893284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.107063, 34.424976, 36.008018>,  <44.509377, 34.525375, 35.564938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.107063, 34.424976, 36.008018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.958981, 34.065968, 35.912178>,  <44.870132, 33.850563, 35.854675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.958981, 34.065968, 35.912178>,  <45.107063, 34.424976, 36.008018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.958981, 34.065968, 35.912178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920592, -0.319935, -0.223945,
		0.124339, -0.303476, 0.944691,
		-0.370202, -0.897521, -0.239598,
		44.847919, 33.796711, 35.840298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.566528, 34.028992, 36.309040>,  <45.107063, 34.424976, 36.008018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.566528, 34.028992, 36.309040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.406120, 33.879845, 35.974342>,  <45.309875, 33.790356, 35.773521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.406120, 33.879845, 35.974342>,  <45.566528, 34.028992, 36.309040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.406120, 33.879845, 35.974342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903784, -0.310125, -0.294954,
		-0.149517, -0.874523, 0.461362,
		-0.401024, -0.372871, -0.836748,
		45.285812, 33.767982, 35.723316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.042156, 33.465710, 36.205929>,  <45.566528, 34.028992, 36.309040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.042156, 33.465710, 36.205929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.901478, 33.628563, 35.868752>,  <45.817070, 33.726276, 35.666447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.901478, 33.628563, 35.868752>,  <46.042156, 33.465710, 36.205929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.901478, 33.628563, 35.868752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833847, -0.272998, -0.479761,
		-0.425449, -0.871615, -0.243476,
		-0.351698, 0.407136, -0.842941,
		45.795967, 33.750702, 35.615868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.853191, 32.993240, 35.601200>,  <46.042156, 33.465710, 36.205929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.853191, 32.993240, 35.601200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.978294, 33.358597, 35.496967>,  <46.053356, 33.577812, 35.434429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.978294, 33.358597, 35.496967>,  <45.853191, 32.993240, 35.601200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.978294, 33.358597, 35.496967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864342, -0.387434, -0.320639,
		-0.393826, -0.124949, -0.910653,
		0.312754, 0.913391, -0.260581,
		46.072121, 33.632614, 35.418793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.094055, 33.004696, 34.833527>,  <45.853191, 32.993240, 35.601200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.094055, 33.004696, 34.833527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.267883, 33.266888, 35.080585>,  <46.372181, 33.424202, 35.228821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.267883, 33.266888, 35.080585>,  <46.094055, 33.004696, 34.833527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.267883, 33.266888, 35.080585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900414, -0.331484, -0.281733,
		0.020070, 0.678573, -0.734259,
		0.434572, 0.655482, 0.617649,
		46.398254, 33.463531, 35.265881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.692467, 33.397049, 34.526089>,  <46.094055, 33.004696, 34.833527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.692467, 33.397049, 34.526089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.751930, 33.416290, 34.921177>,  <46.787609, 33.427834, 35.158230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.751930, 33.416290, 34.921177>,  <46.692467, 33.397049, 34.526089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.751930, 33.416290, 34.921177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976776, -0.162996, -0.139071,
		0.154305, 0.985454, -0.071214,
		0.148656, 0.048101, 0.987719,
		46.796528, 33.430721, 35.217491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.306259, 33.828754, 34.723518>,  <46.692467, 33.397049, 34.526089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.306259, 33.828754, 34.723518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.296528, 33.595295, 35.048176>,  <47.290691, 33.455219, 35.242970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.296528, 33.595295, 35.048176>,  <47.306259, 33.828754, 34.723518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.296528, 33.595295, 35.048176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997913, -0.062753, -0.015219,
		0.059815, 0.809575, 0.583961,
		-0.024324, -0.583652, 0.811639,
		47.289230, 33.420200, 35.291668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.886456, 34.179169, 35.100101>,  <47.306259, 33.828754, 34.723518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.886456, 34.179169, 35.100101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.616299, 34.456741, 35.199940>,  <47.454205, 34.623287, 35.259842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.616299, 34.456741, 35.199940>,  <47.886456, 34.179169, 35.100101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.616299, 34.456741, 35.199940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616794, 0.717071, -0.324614,
		-0.404238, -0.065294, -0.912320,
		-0.675394, 0.693935, 0.249594,
		47.413681, 34.664921, 35.274818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.864845, 34.769936, 34.602886>,  <47.886456, 34.179169, 35.100101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.864845, 34.769936, 34.602886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.758904, 34.914627, 34.960434>,  <47.695339, 35.001442, 35.174961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.758904, 34.914627, 34.960434>,  <47.864845, 34.769936, 34.602886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.758904, 34.914627, 34.960434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725861, 0.685028, -0.062143,
		-0.634804, 0.632366, -0.444001,
		-0.264856, 0.361731, 0.893869,
		47.679447, 35.023148, 35.228596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.370396, 28.175072, 31.553570> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.290665, 28.483778, 31.312025>,  <34.242825, 28.669001, 31.167099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.290665, 28.483778, 31.312025>,  <34.370396, 28.175072, 31.553570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.290665, 28.483778, 31.312025> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222542, 0.564473, 0.794887,
		0.954328, 0.292830, 0.059233,
		-0.199331, 0.771765, -0.603860,
		34.230865, 28.715307, 31.130867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.783535, 28.748156, 31.827915>,  <34.370396, 28.175072, 31.553570>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.783535, 28.748156, 31.827915> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.475639, 28.894386, 31.618591>,  <34.290901, 28.982124, 31.492996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.475639, 28.894386, 31.618591>,  <34.783535, 28.748156, 31.827915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.475639, 28.894386, 31.618591> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202089, 0.638060, 0.742993,
		0.605524, 0.677667, -0.417262,
		-0.769741, 0.365576, -0.523310,
		34.244717, 29.004059, 31.461597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.864330, 29.514202, 31.941175>,  <34.783535, 28.748156, 31.827915>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.864330, 29.514202, 31.941175> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.488728, 29.493080, 31.805243>,  <34.263367, 29.480406, 31.723682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.488728, 29.493080, 31.805243>,  <34.864330, 29.514202, 31.941175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.488728, 29.493080, 31.805243> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287769, 0.661721, 0.692325,
		0.188314, 0.747888, -0.636554,
		-0.939003, -0.052806, -0.339830,
		34.207027, 29.477238, 31.703293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.666851, 30.194515, 31.867409>,  <34.864330, 29.514202, 31.941175>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.666851, 30.194515, 31.867409> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.330387, 29.982212, 31.908876>,  <34.128510, 29.854830, 31.933758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.330387, 29.982212, 31.908876>,  <34.666851, 30.194515, 31.867409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.330387, 29.982212, 31.908876> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319372, 0.642249, 0.696791,
		-0.436409, 0.553003, -0.709742,
		-0.841159, -0.530758, 0.103670,
		34.078041, 29.822985, 31.939978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.252445, 30.647991, 32.090199>,  <34.666851, 30.194515, 31.867409>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.252445, 30.647991, 32.090199> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.038967, 30.323483, 32.185703>,  <33.910881, 30.128777, 32.243004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.038967, 30.323483, 32.185703>,  <34.252445, 30.647991, 32.090199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.038967, 30.323483, 32.185703> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468227, 0.518575, 0.715432,
		-0.704225, 0.270030, -0.656621,
		-0.533696, -0.811273, 0.238758,
		33.878857, 30.080101, 32.257332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.596230, 30.916821, 32.240383>,  <34.252445, 30.647991, 32.090199>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.596230, 30.916821, 32.240383> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.609482, 30.557117, 32.414848>,  <33.617432, 30.341295, 32.519527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.609482, 30.557117, 32.414848>,  <33.596230, 30.916821, 32.240383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.609482, 30.557117, 32.414848> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204290, 0.421100, 0.883708,
		-0.978350, -0.118381, -0.169758,
		0.033130, -0.899256, 0.436167,
		33.619419, 30.287340, 32.545700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.030605, 30.869604, 32.693501>,  <33.596230, 30.916821, 32.240383>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.030605, 30.869604, 32.693501> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.297741, 30.593016, 32.803669>,  <33.458023, 30.427063, 32.869770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.297741, 30.593016, 32.803669>,  <33.030605, 30.869604, 32.693501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.297741, 30.593016, 32.803669> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062793, 0.316372, 0.946555,
		-0.741652, -0.649441, 0.167866,
		0.667839, -0.691473, 0.275418,
		33.498093, 30.385574, 32.886295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.725979, 30.614655, 33.362114>,  <33.030605, 30.869604, 32.693501>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.725979, 30.614655, 33.362114> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.109234, 30.500908, 33.375469>,  <33.339188, 30.432659, 33.383480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.109234, 30.500908, 33.375469>,  <32.725979, 30.614655, 33.362114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.109234, 30.500908, 33.375469> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111593, 0.478268, 0.871095,
		-0.263678, -0.830900, 0.489978,
		0.958134, -0.284367, 0.033386,
		33.396675, 30.415598, 33.385487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.838894, 30.423353, 34.041706>,  <32.725979, 30.614655, 33.362114>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.838894, 30.423353, 34.041706> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.219685, 30.473936, 33.930172>,  <33.448158, 30.504286, 33.863251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.219685, 30.473936, 33.930172>,  <32.838894, 30.423353, 34.041706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.219685, 30.473936, 33.930172> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204865, 0.413692, 0.887068,
		0.227528, -0.901591, 0.367919,
		0.951977, 0.126459, -0.278831,
		33.505280, 30.511873, 33.846523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.291786, 30.221869, 34.616245>,  <32.838894, 30.423353, 34.041706>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.291786, 30.221869, 34.616245> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.517555, 30.460165, 34.387680>,  <33.653019, 30.603144, 34.250542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.517555, 30.460165, 34.387680>,  <33.291786, 30.221869, 34.616245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.517555, 30.460165, 34.387680> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426206, 0.382501, 0.819781,
		0.706945, -0.706246, -0.038015,
		0.564427, 0.595743, -0.571413,
		33.686882, 30.638887, 34.216255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.009365, 30.189320, 34.792099>,  <33.291786, 30.221869, 34.616245>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.009365, 30.189320, 34.792099> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.935894, 30.544292, 34.622993>,  <33.891811, 30.757277, 34.521530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.935894, 30.544292, 34.622993>,  <34.009365, 30.189320, 34.792099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.935894, 30.544292, 34.622993> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386680, 0.460636, 0.798932,
		0.903737, -0.016728, -0.427760,
		-0.183677, 0.887431, -0.422763,
		33.880791, 30.810522, 34.496166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.593594, 30.548035, 35.000500>,  <34.009365, 30.189320, 34.792099>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.593594, 30.548035, 35.000500> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.324810, 30.828384, 34.904793>,  <34.163540, 30.996593, 34.847370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.324810, 30.828384, 34.904793>,  <34.593594, 30.548035, 35.000500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.324810, 30.828384, 34.904793> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280400, 0.539795, 0.793723,
		0.685454, 0.466259, -0.559245,
		-0.671958, 0.700874, -0.239266,
		34.123222, 31.038647, 34.833012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.938198, 31.099140, 35.071220>,  <34.593594, 30.548035, 35.000500>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.938198, 31.099140, 35.071220> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.551758, 31.197079, 35.103954>,  <34.319893, 31.255842, 35.123592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.551758, 31.197079, 35.103954>,  <34.938198, 31.099140, 35.071220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.551758, 31.197079, 35.103954> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220754, 0.619191, 0.753571,
		0.133839, 0.746092, -0.652253,
		-0.966103, 0.244845, 0.081830,
		34.261929, 31.270533, 35.128502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.926193, 31.834417, 35.013668>,  <34.938198, 31.099140, 35.071220>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.926193, 31.834417, 35.013668> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.581223, 31.730268, 35.187302>,  <34.374241, 31.667780, 35.291481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.581223, 31.730268, 35.187302>,  <34.926193, 31.834417, 35.013668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.581223, 31.730268, 35.187302> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193539, 0.622793, 0.758071,
		-0.467727, 0.737791, -0.486719,
		-0.862423, -0.260372, 0.434089,
		34.322495, 31.652157, 35.317528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.670235, 32.455627, 35.217758>,  <34.926193, 31.834417, 35.013668>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.670235, 32.455627, 35.217758> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.453728, 32.194237, 35.429417>,  <34.323822, 32.037403, 35.556412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.453728, 32.194237, 35.429417>,  <34.670235, 32.455627, 35.217758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.453728, 32.194237, 35.429417> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008708, 0.633621, 0.773595,
		-0.840802, 0.414117, -0.348652,
		-0.541272, -0.653476, 0.529144,
		34.291348, 31.998194, 35.588161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.121517, 32.748974, 35.529755>,  <34.670235, 32.455627, 35.217758>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.121517, 32.748974, 35.529755> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.146618, 32.415833, 35.749725>,  <34.161678, 32.215946, 35.881706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.146618, 32.415833, 35.749725>,  <34.121517, 32.748974, 35.529755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.146618, 32.415833, 35.749725> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040230, 0.548454, 0.835212,
		-0.997218, -0.074535, 0.000911,
		0.062752, -0.832852, 0.549927,
		34.165443, 32.165977, 35.914703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.575302, 32.729374, 35.961716>,  <34.121517, 32.748974, 35.529755>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.575302, 32.729374, 35.961716> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.862629, 32.503162, 36.123802>,  <34.035027, 32.367435, 36.221054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.862629, 32.503162, 36.123802>,  <33.575302, 32.729374, 35.961716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.862629, 32.503162, 36.123802> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013083, 0.571358, 0.820597,
		-0.695594, -0.594749, 0.403017,
		0.718316, -0.565529, 0.405214,
		34.078125, 32.333504, 36.245365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.255783, 32.614479, 36.571922>,  <33.575302, 32.729374, 35.961716>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.255783, 32.614479, 36.571922> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.623238, 32.482487, 36.658840>,  <33.843712, 32.403290, 36.710991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.623238, 32.482487, 36.658840>,  <33.255783, 32.614479, 36.571922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.623238, 32.482487, 36.658840> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078198, 0.387242, 0.918656,
		-0.387289, -0.860902, 0.329931,
		0.918636, -0.329985, 0.217295,
		33.898827, 32.383492, 36.724030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.184502, 32.429310, 37.321461>,  <33.255783, 32.614479, 36.571922>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.184502, 32.429310, 37.321461> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.572144, 32.484138, 37.239441>,  <33.804729, 32.517036, 37.190228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.572144, 32.484138, 37.239441>,  <33.184502, 32.429310, 37.321461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.572144, 32.484138, 37.239441> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151004, 0.327603, 0.932671,
		0.195012, -0.934820, 0.296784,
		0.969107, 0.137066, -0.205048,
		33.862877, 32.525257, 37.177925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.683815, 32.202606, 37.944210>,  <33.184502, 32.429310, 37.321461>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.683815, 32.202606, 37.944210> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.951363, 32.413078, 37.734165>,  <34.111893, 32.539360, 37.608139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.951363, 32.413078, 37.734165>,  <33.683815, 32.202606, 37.944210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.951363, 32.413078, 37.734165> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455136, 0.268641, 0.848931,
		0.587758, -0.806824, -0.059798,
		0.668873, 0.526182, -0.525110,
		34.152023, 32.570934, 37.576633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.417297, 32.031334, 38.191124>,  <33.683815, 32.202606, 37.944210>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.417297, 32.031334, 38.191124> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.393871, 32.399673, 38.036922>,  <34.379818, 32.620678, 37.944401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.393871, 32.399673, 38.036922>,  <34.417297, 32.031334, 38.191124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.393871, 32.399673, 38.036922> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191361, 0.389363, 0.900987,
		0.979771, -0.021009, -0.199015,
		-0.058561, 0.920845, -0.385507,
		34.376305, 32.675926, 37.921268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.112057, 32.412148, 38.241631>,  <34.417297, 32.031334, 38.191124>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.112057, 32.412148, 38.241631> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.782684, 32.638611, 38.256718>,  <34.585060, 32.774490, 38.265770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.782684, 32.638611, 38.256718>,  <35.112057, 32.412148, 38.241631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.782684, 32.638611, 38.256718> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329553, 0.423079, 0.844037,
		0.461903, 0.707437, -0.534956,
		-0.823432, 0.566160, 0.037717,
		34.535656, 32.808460, 38.268032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.526302, 33.084518, 38.184006>,  <35.112057, 32.412148, 38.241631>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.526302, 33.084518, 38.184006> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.875465, 33.047672, 38.375652>,  <36.084961, 33.025566, 38.490639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.875465, 33.047672, 38.375652>,  <35.526302, 33.084518, 38.184006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.875465, 33.047672, 38.375652> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317218, -0.638964, -0.700784,
		0.370691, 0.763702, -0.528534,
		0.872904, -0.092114, 0.479118,
		36.137337, 33.020039, 38.519386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.043472, 33.318813, 37.677979>,  <35.526302, 33.084518, 38.184006>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.043472, 33.318813, 37.677979> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.221912, 33.097290, 37.959202>,  <36.328976, 32.964375, 38.127937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.221912, 33.097290, 37.959202>,  <36.043472, 33.318813, 37.677979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.221912, 33.097290, 37.959202> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366189, -0.603848, -0.708007,
		0.816641, 0.573293, -0.066578,
		0.446098, -0.553807, 0.703061,
		36.355743, 32.931149, 38.170120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.585018, 33.136078, 37.384960>,  <36.043472, 33.318813, 37.677979>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.585018, 33.136078, 37.384960> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.537960, 32.883621, 37.691639>,  <36.509727, 32.732147, 37.875645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.537960, 32.883621, 37.691639>,  <36.585018, 33.136078, 37.384960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.537960, 32.883621, 37.691639> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418139, -0.731762, -0.538223,
		0.900733, 0.257267, 0.349991,
		-0.117643, -0.631140, 0.766696,
		36.502666, 32.694279, 37.921646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.268425, 32.863422, 37.369034>,  <36.585018, 33.136078, 37.384960>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.268425, 32.863422, 37.369034> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.036175, 32.610886, 37.574669>,  <36.896824, 32.459362, 37.698051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.036175, 32.610886, 37.574669>,  <37.268425, 32.863422, 37.369034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.036175, 32.610886, 37.574669> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353125, -0.764219, -0.539696,
		0.733607, -0.131823, 0.666666,
		-0.580623, -0.631341, 0.514087,
		36.861988, 32.421482, 37.728893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.715828, 32.327278, 37.627365>,  <37.268425, 32.863422, 37.369034>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.715828, 32.327278, 37.627365> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.345764, 32.179844, 37.591068>,  <37.123726, 32.091385, 37.569290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.345764, 32.179844, 37.591068>,  <37.715828, 32.327278, 37.627365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.345764, 32.179844, 37.591068> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317162, -0.619259, -0.718280,
		0.208555, -0.693300, 0.689812,
		-0.925156, -0.368583, -0.090739,
		37.068218, 32.069267, 37.563847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.819046, 31.585314, 37.460266>,  <37.715828, 32.327278, 37.627365>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.819046, 31.585314, 37.460266> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.433384, 31.661968, 37.386852>,  <37.201988, 31.707960, 37.342804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.433384, 31.661968, 37.386852>,  <37.819046, 31.585314, 37.460266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.433384, 31.661968, 37.386852> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026601, -0.758002, -0.651710,
		-0.264012, -0.623466, 0.735927,
		-0.964153, 0.191636, -0.183537,
		37.144138, 31.719460, 37.331791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.483467, 30.936033, 37.460697>,  <37.819046, 31.585314, 37.460266>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.483467, 30.936033, 37.460697> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.272320, 31.198734, 37.245277>,  <37.145634, 31.356356, 37.116028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.272320, 31.198734, 37.245277>,  <37.483467, 30.936033, 37.460697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.272320, 31.198734, 37.245277> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196875, -0.711431, -0.674616,
		-0.826197, -0.250078, 0.504836,
		-0.527862, 0.656755, -0.538548,
		37.113960, 31.395761, 37.083714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.996029, 30.586708, 37.216648>,  <37.483467, 30.936033, 37.460697>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.996029, 30.586708, 37.216648> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.004566, 30.892385, 36.958794>,  <37.009689, 31.075792, 36.804081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.004566, 30.892385, 36.958794>,  <36.996029, 30.586708, 37.216648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.004566, 30.892385, 36.958794> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076436, -0.641646, -0.763183,
		-0.996846, 0.065563, 0.044716,
		0.021344, 0.764193, -0.644634,
		37.010971, 31.121643, 36.765404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.606094, 30.339561, 36.774021>,  <36.996029, 30.586708, 37.216648>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.606094, 30.339561, 36.774021> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.789917, 30.612661, 36.546810>,  <36.900211, 30.776522, 36.410484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.789917, 30.612661, 36.546810>,  <36.606094, 30.339561, 36.774021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.789917, 30.612661, 36.546810> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196821, -0.545373, -0.814758,
		-0.866063, 0.486230, -0.116252,
		0.459560, 0.682751, -0.568027,
		36.927784, 30.817486, 36.376404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.317242, 30.296360, 36.086315>,  <36.606094, 30.339561, 36.774021>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.317242, 30.296360, 36.086315> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.641083, 30.511530, 35.992352>,  <36.835388, 30.640633, 35.935974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.641083, 30.511530, 35.992352>,  <36.317242, 30.296360, 36.086315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.641083, 30.511530, 35.992352> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055927, -0.327692, -0.943128,
		-0.584313, 0.776694, -0.235214,
		0.809599, 0.537927, -0.234913,
		36.883961, 30.672909, 35.921879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.129101, 30.758310, 35.545471>,  <36.317242, 30.296360, 36.086315>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.129101, 30.758310, 35.545471> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.524143, 30.696693, 35.533459>,  <36.761169, 30.659723, 35.526249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.524143, 30.696693, 35.533459>,  <36.129101, 30.758310, 35.545471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.524143, 30.696693, 35.533459> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075760, -0.300342, -0.950818,
		0.137444, 0.941311, -0.308290,
		0.987608, -0.154040, -0.030034,
		36.820427, 30.650482, 35.524448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.290318, 30.986473, 34.859642>,  <36.129101, 30.758310, 35.545471>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.290318, 30.986473, 34.859642> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.614521, 30.777603, 34.965778>,  <36.809044, 30.652281, 35.029461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.614521, 30.777603, 34.965778>,  <36.290318, 30.986473, 34.859642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.614521, 30.777603, 34.965778> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023116, -0.424147, -0.905298,
		0.585267, 0.739888, -0.331706,
		0.810511, -0.522173, 0.265343,
		36.857674, 30.620951, 35.045380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.780769, 31.130177, 34.317268>,  <36.290318, 30.986473, 34.859642>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.780769, 31.130177, 34.317268> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.887535, 30.786947, 34.492752>,  <36.951595, 30.581009, 34.598042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.887535, 30.786947, 34.492752>,  <36.780769, 31.130177, 34.317268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.887535, 30.786947, 34.492752> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013739, -0.451791, -0.892018,
		0.963621, 0.244123, -0.108802,
		0.266918, -0.858073, 0.438709,
		36.967609, 30.529526, 34.624363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.455772, 30.832985, 33.946133>,  <36.780769, 31.130177, 34.317268>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.455772, 30.832985, 33.946133> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.278824, 30.518412, 34.118568>,  <37.172653, 30.329668, 34.222031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.278824, 30.518412, 34.118568>,  <37.455772, 30.832985, 33.946133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.278824, 30.518412, 34.118568> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033431, -0.494801, -0.868363,
		0.896209, -0.369726, 0.245176,
		-0.442370, -0.786432, 0.431085,
		37.146114, 30.282482, 34.247894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.873756, 30.274117, 33.651146>,  <37.455772, 30.832985, 33.946133>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.873756, 30.274117, 33.651146> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.531185, 30.122215, 33.791042>,  <37.325642, 30.031075, 33.874981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.531185, 30.122215, 33.791042>,  <37.873756, 30.274117, 33.651146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.531185, 30.122215, 33.791042> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046992, -0.617291, -0.785330,
		0.514126, -0.689013, 0.510819,
		-0.856427, -0.379754, 0.349743,
		37.274258, 30.008289, 33.895966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.981506, 29.594379, 33.657398>,  <37.873756, 30.274117, 33.651146>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.981506, 29.594379, 33.657398> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.582401, 29.616840, 33.642891>,  <37.342937, 29.630318, 33.634186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.582401, 29.616840, 33.642891>,  <37.981506, 29.594379, 33.657398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.582401, 29.616840, 33.642891> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011454, -0.678109, -0.734872,
		-0.065856, -0.732813, 0.677236,
		-0.997763, 0.056153, -0.036264,
		37.283073, 29.633686, 33.632011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.786522, 28.924646, 33.491631>,  <37.981506, 29.594379, 33.657398>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.786522, 28.924646, 33.491631> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.456966, 29.136827, 33.411808>,  <37.259232, 29.264135, 33.363914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.456966, 29.136827, 33.411808>,  <37.786522, 28.924646, 33.491631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.456966, 29.136827, 33.411808> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231200, -0.636056, -0.736193,
		-0.517444, -0.560405, 0.646682,
		-0.823892, 0.530452, -0.199557,
		37.209801, 29.295963, 33.351940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.302372, 28.428062, 33.535263>,  <37.786522, 28.924646, 33.491631>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.302372, 28.428062, 33.535263> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.149715, 28.727943, 33.319004>,  <37.058121, 28.907873, 33.189251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.149715, 28.727943, 33.319004>,  <37.302372, 28.428062, 33.535263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.149715, 28.727943, 33.319004> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065741, -0.605451, -0.793163,
		-0.921971, -0.267158, 0.280349,
		-0.381637, 0.749704, -0.540645,
		37.035225, 28.952854, 33.156811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.601646, 28.138384, 33.230198> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.698063, 28.465820, 33.021660>,  <36.755913, 28.662283, 32.896538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.698063, 28.465820, 33.021660>,  <36.601646, 28.138384, 33.230198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.698063, 28.465820, 33.021660> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376986, -0.416029, -0.827527,
		-0.894304, 0.396011, 0.208317,
		0.241044, 0.818593, -0.521347,
		36.770374, 28.711399, 32.865257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.994831, 28.351759, 32.887039>,  <36.601646, 28.138384, 33.230198>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.994831, 28.351759, 32.887039> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.316738, 28.465210, 32.678459>,  <36.509884, 28.533279, 32.553310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.316738, 28.465210, 32.678459>,  <35.994831, 28.351759, 32.887039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.316738, 28.465210, 32.678459> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387347, -0.414725, -0.823386,
		-0.449790, 0.864615, -0.223896,
		0.804768, 0.283625, -0.521445,
		36.558170, 28.550297, 32.522026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.704189, 28.479794, 32.239979>,  <35.994831, 28.351759, 32.887039>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.704189, 28.479794, 32.239979> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.092537, 28.489960, 32.144672>,  <36.325546, 28.496059, 32.087486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.092537, 28.489960, 32.144672>,  <35.704189, 28.479794, 32.239979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.092537, 28.489960, 32.144672> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209932, -0.389196, -0.896914,
		-0.115527, 0.920804, -0.372522,
		0.970867, 0.025414, -0.238269,
		36.383797, 28.497583, 32.073193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.788689, 28.772400, 31.591925>,  <35.704189, 28.479794, 32.239979>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.788689, 28.772400, 31.591925> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.099316, 28.522511, 31.624594>,  <36.285690, 28.372578, 31.644196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.099316, 28.522511, 31.624594>,  <35.788689, 28.772400, 31.591925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.099316, 28.522511, 31.624594> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082200, -0.228983, -0.969953,
		0.624653, 0.746518, -0.229173,
		0.776564, -0.624722, 0.081671,
		36.332287, 28.335094, 31.649096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.093117, 28.805952, 30.904888>,  <35.788689, 28.772400, 31.591925>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.093117, 28.805952, 30.904888> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.282238, 28.492954, 31.066954>,  <36.395710, 28.305155, 31.164192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.282238, 28.492954, 31.066954>,  <36.093117, 28.805952, 30.904888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.282238, 28.492954, 31.066954> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014317, -0.452921, -0.891436,
		0.881050, 0.427276, -0.202941,
		0.472806, -0.782494, 0.405164,
		36.424080, 28.258205, 31.188503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.601906, 28.543003, 30.369293>,  <36.093117, 28.805952, 30.904888>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.601906, 28.543003, 30.369293> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.565617, 28.252361, 30.641708>,  <36.543842, 28.077976, 30.805159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.565617, 28.252361, 30.641708>,  <36.601906, 28.543003, 30.369293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.565617, 28.252361, 30.641708> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280947, -0.674756, -0.682476,
		0.955426, 0.129423, 0.265350,
		-0.090718, -0.726605, 0.681040,
		36.538403, 28.034380, 30.846020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.213303, 28.205458, 30.301016>,  <36.601906, 28.543003, 30.369293>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.213303, 28.205458, 30.301016> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.959030, 27.944202, 30.465611>,  <36.806465, 27.787449, 30.564367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.959030, 27.944202, 30.465611>,  <37.213303, 28.205458, 30.301016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.959030, 27.944202, 30.465611> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293899, -0.697669, -0.653362,
		0.713817, -0.294394, 0.635451,
		-0.635680, -0.653139, 0.411486,
		36.768326, 27.748260, 30.589056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.536903, 27.563623, 30.197729>,  <37.213303, 28.205458, 30.301016>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.536903, 27.563623, 30.197729> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.182846, 27.432364, 30.329697>,  <36.970413, 27.353607, 30.408876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.182846, 27.432364, 30.329697>,  <37.536903, 27.563623, 30.197729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.182846, 27.432364, 30.329697> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083956, -0.809991, -0.580401,
		0.457689, -0.486038, 0.744506,
		-0.885140, -0.328148, 0.329918,
		36.917305, 27.333920, 30.428673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.622246, 26.841349, 30.456564>,  <37.536903, 27.563623, 30.197729>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.622246, 26.841349, 30.456564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.241501, 26.906170, 30.352491>,  <37.013054, 26.945063, 30.290047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.241501, 26.906170, 30.352491>,  <37.622246, 26.841349, 30.456564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.241501, 26.906170, 30.352491> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056104, -0.742375, -0.667631,
		-0.301344, -0.650091, 0.697548,
		-0.951863, 0.162052, -0.260183,
		36.955940, 26.954786, 30.274437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.266453, 26.190516, 30.546309>,  <37.622246, 26.841349, 30.456564>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.266453, 26.190516, 30.546309> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.086521, 26.423300, 30.275318>,  <36.978561, 26.562971, 30.112724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.086521, 26.423300, 30.275318>,  <37.266453, 26.190516, 30.546309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.086521, 26.423300, 30.275318> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094389, -0.723328, -0.684023,
		-0.888113, -0.371639, 0.270443,
		-0.449829, 0.581963, -0.677476,
		36.951572, 26.597889, 30.072075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.998486, 25.705158, 30.130901>,  <37.266453, 26.190516, 30.546309>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.998486, 25.705158, 30.130901> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.920612, 26.032429, 29.914499>,  <36.873890, 26.228790, 29.784658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.920612, 26.032429, 29.914499>,  <36.998486, 25.705158, 30.130901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.920612, 26.032429, 29.914499> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060835, -0.540426, -0.839189,
		-0.978978, -0.196287, 0.055437,
		-0.194681, 0.818176, -0.541006,
		36.862209, 26.277882, 29.752197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.415699, 25.550991, 29.740412>,  <36.998486, 25.705158, 30.130901>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.415699, 25.550991, 29.740412> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.608719, 25.840282, 29.542793>,  <36.724533, 26.013857, 29.424223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.608719, 25.840282, 29.542793>,  <36.415699, 25.550991, 29.740412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.608719, 25.840282, 29.542793> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185166, -0.635553, -0.749524,
		-0.856071, 0.270203, -0.440605,
		0.482551, 0.723231, -0.494046,
		36.753483, 26.057251, 29.394579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.288410, 25.412188, 29.053341>,  <36.415699, 25.550991, 29.740412>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.288410, 25.412188, 29.053341> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.586479, 25.677217, 29.023102>,  <36.765320, 25.836235, 29.004959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.586479, 25.677217, 29.023102>,  <36.288410, 25.412188, 29.053341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.586479, 25.677217, 29.023102> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468062, -0.600392, -0.648419,
		-0.475012, 0.447800, -0.757521,
		0.745172, 0.662574, -0.075595,
		36.810032, 25.875990, 29.000423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.304745, 25.583206, 28.290709>,  <36.288410, 25.412188, 29.053341>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.304745, 25.583206, 28.290709> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.646599, 25.632166, 28.492544>,  <36.851711, 25.661543, 28.613646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.646599, 25.632166, 28.492544>,  <36.304745, 25.583206, 28.290709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.646599, 25.632166, 28.492544> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482570, -0.545903, -0.684920,
		0.191623, 0.828859, -0.525617,
		0.854639, 0.122401, 0.504590,
		36.902992, 25.668886, 28.643921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.687073, 26.063194, 27.779554>,  <36.304745, 25.583206, 28.290709>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.687073, 26.063194, 27.779554> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.923946, 25.863535, 28.032591>,  <37.066071, 25.743740, 28.184414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.923946, 25.863535, 28.032591>,  <36.687073, 26.063194, 27.779554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.923946, 25.863535, 28.032591> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499627, -0.388485, -0.774243,
		0.632214, 0.774552, 0.019334,
		0.592180, -0.499147, 0.632594,
		37.101601, 25.713791, 28.222368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.312252, 26.250072, 27.566734>,  <36.687073, 26.063194, 27.779554>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.312252, 26.250072, 27.566734> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.374897, 25.914602, 27.775385>,  <37.412483, 25.713320, 27.900576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.374897, 25.914602, 27.775385>,  <37.312252, 26.250072, 27.566734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.374897, 25.914602, 27.775385> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524950, -0.376681, -0.763242,
		0.836600, 0.393364, 0.381268,
		0.156616, -0.838675, 0.521628,
		37.421883, 25.663000, 27.931873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.995079, 26.031013, 27.548878>,  <37.312252, 26.250072, 27.566734>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.995079, 26.031013, 27.548878> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.816936, 25.679062, 27.615173>,  <37.710052, 25.467890, 27.654951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.816936, 25.679062, 27.615173>,  <37.995079, 26.031013, 27.548878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.816936, 25.679062, 27.615173> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450304, -0.380108, -0.807926,
		0.773876, -0.285182, 0.565497,
		-0.445356, -0.879880, 0.165738,
		37.683331, 25.415098, 27.664894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.528439, 25.640301, 27.389122>,  <37.995079, 26.031013, 27.548878>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.528439, 25.640301, 27.389122> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.235268, 25.368252, 27.395535>,  <38.059364, 25.205023, 27.399382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.235268, 25.368252, 27.395535>,  <38.528439, 25.640301, 27.389122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.235268, 25.368252, 27.395535> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414525, -0.465144, -0.782183,
		0.539437, -0.566634, 0.622843,
		-0.732923, -0.680122, 0.016032,
		38.015392, 25.164215, 27.400345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.837772, 24.957510, 27.395239>,  <38.528439, 25.640301, 27.389122>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.837772, 24.957510, 27.395239> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.473129, 24.948372, 27.231066>,  <38.254345, 24.942888, 27.132563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.473129, 24.948372, 27.231066>,  <38.837772, 24.957510, 27.395239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.473129, 24.948372, 27.231066> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409068, -0.148787, -0.900292,
		-0.040498, -0.988605, 0.144981,
		-0.911605, -0.022847, -0.410432,
		38.199646, 24.941519, 27.107937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.863747, 24.366695, 27.025824>,  <38.837772, 24.957510, 27.395239>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.863747, 24.366695, 27.025824> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.566357, 24.592190, 26.881905>,  <38.387924, 24.727486, 26.795553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.566357, 24.592190, 26.881905>,  <38.863747, 24.366695, 27.025824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.566357, 24.592190, 26.881905> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280701, -0.225266, -0.932986,
		-0.607007, -0.794643, 0.009237,
		-0.743471, 0.563735, -0.359795,
		38.343315, 24.761311, 26.773966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.530769, 23.875237, 26.591795>,  <38.863747, 24.366695, 27.025824>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.530769, 23.875237, 26.591795> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.387451, 24.232901, 26.484390>,  <38.301460, 24.447500, 26.419947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.387451, 24.232901, 26.484390>,  <38.530769, 23.875237, 26.591795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.387451, 24.232901, 26.484390> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073092, -0.259858, -0.962876,
		-0.930743, -0.364619, 0.027749,
		-0.358294, 0.894163, -0.268512,
		38.279964, 24.501150, 26.403837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.919331, 23.743073, 26.050449>,  <38.530769, 23.875237, 26.591795>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.919331, 23.743073, 26.050449> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.080864, 24.106890, 26.011160>,  <38.177784, 24.325180, 25.987587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.080864, 24.106890, 26.011160>,  <37.919331, 23.743073, 26.050449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.080864, 24.106890, 26.011160> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013350, -0.101497, -0.994746,
		-0.914735, 0.403024, -0.028846,
		0.403835, 0.909544, -0.098223,
		38.202015, 24.379753, 25.981693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.472736, 24.211060, 25.586349>,  <37.919331, 23.743073, 26.050449>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.472736, 24.211060, 25.586349> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.862305, 24.289225, 25.540232>,  <38.096046, 24.336123, 25.512562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.862305, 24.289225, 25.540232>,  <37.472736, 24.211060, 25.586349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.862305, 24.289225, 25.540232> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120977, 0.017354, -0.992504,
		-0.191945, 0.980568, 0.040542,
		0.973921, 0.195410, -0.115295,
		38.154480, 24.347847, 25.505644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.435802, 24.740198, 25.183857>,  <37.472736, 24.211060, 25.586349>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.435802, 24.740198, 25.183857> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.795082, 24.565765, 25.161684>,  <38.010651, 24.461105, 25.148380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.795082, 24.565765, 25.161684>,  <37.435802, 24.740198, 25.183857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.795082, 24.565765, 25.161684> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005824, 0.114282, -0.993431,
		0.439552, 0.892621, 0.100109,
		0.898198, -0.436082, -0.055431,
		38.064541, 24.434940, 25.145054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.931149, 24.990368, 24.599144>,  <37.435802, 24.740198, 25.183857>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.931149, 24.990368, 24.599144> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.824944, 25.314112, 24.389595>,  <36.761219, 25.508358, 24.263866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.824944, 25.314112, 24.389595>,  <36.931149, 24.990368, 24.599144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.824944, 25.314112, 24.389595> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438404, 0.382589, 0.813282,
		0.858664, 0.445605, 0.253243,
		-0.265515, 0.809359, -0.523870,
		36.745289, 25.556919, 24.232433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.316193, 25.660933, 24.831848>,  <36.931149, 24.990368, 24.599144>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.316193, 25.660933, 24.831848> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.966583, 25.757984, 24.663458>,  <36.756817, 25.816216, 24.562424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.966583, 25.757984, 24.663458>,  <37.316193, 25.660933, 24.831848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.966583, 25.757984, 24.663458> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270449, 0.476865, 0.836335,
		0.403668, 0.844826, -0.351171,
		-0.874019, 0.242628, -0.420977,
		36.704376, 25.830772, 24.537165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.178600, 26.408285, 25.011410>,  <37.316193, 25.660933, 24.831848>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.178600, 26.408285, 25.011410> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.820339, 26.264919, 24.906071>,  <36.605385, 26.178900, 24.842867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.820339, 26.264919, 24.906071>,  <37.178600, 26.408285, 25.011410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.820339, 26.264919, 24.906071> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420881, 0.491595, 0.762361,
		-0.143781, 0.793645, -0.591146,
		-0.895648, -0.358415, -0.263349,
		36.551643, 26.157394, 24.827066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.788750, 27.006393, 25.111231>,  <37.178600, 26.408285, 25.011410>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.788750, 27.006393, 25.111231> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.549240, 26.686110, 25.103912>,  <36.405537, 26.493938, 25.099522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.549240, 26.686110, 25.103912>,  <36.788750, 27.006393, 25.111231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.549240, 26.686110, 25.103912> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458640, 0.324061, 0.827426,
		-0.656600, 0.503830, -0.561277,
		-0.598770, -0.800712, -0.018299,
		36.369610, 26.445896, 25.098423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.089478, 27.277824, 25.197090>,  <36.788750, 27.006393, 25.111231>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.089478, 27.277824, 25.197090> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.087650, 26.892803, 25.305511>,  <36.086555, 26.661791, 25.370565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.087650, 26.892803, 25.305511>,  <36.089478, 27.277824, 25.197090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.087650, 26.892803, 25.305511> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561748, 0.226717, 0.795637,
		-0.827296, -0.148629, -0.541748,
		-0.004569, -0.962553, 0.271054,
		36.086281, 26.604036, 25.386827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.465584, 27.089857, 25.273275>,  <36.089478, 27.277824, 25.197090>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.465584, 27.089857, 25.273275> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.660511, 26.847403, 25.524710>,  <35.777466, 26.701929, 25.675570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.660511, 26.847403, 25.524710>,  <35.465584, 27.089857, 25.273275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.660511, 26.847403, 25.524710> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582200, 0.310976, 0.751224,
		-0.650820, -0.732046, -0.201349,
		0.487316, -0.606137, 0.628586,
		35.806705, 26.665562, 25.713285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.952267, 26.709164, 25.729385>,  <35.465584, 27.089857, 25.273275>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.952267, 26.709164, 25.729385> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.281078, 26.655781, 25.950817>,  <35.478367, 26.623751, 26.083677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.281078, 26.655781, 25.950817>,  <34.952267, 26.709164, 25.729385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.281078, 26.655781, 25.950817> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449772, 0.444053, 0.774933,
		-0.349238, -0.886006, 0.305002,
		0.822033, -0.133455, 0.553581,
		35.527687, 26.615744, 26.116892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.762371, 26.433102, 26.384836>,  <34.952267, 26.709164, 25.729385>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.762371, 26.433102, 26.384836> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.130684, 26.572254, 26.455420>,  <35.351673, 26.655746, 26.497770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.130684, 26.572254, 26.455420>,  <34.762371, 26.433102, 26.384836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.130684, 26.572254, 26.455420> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337960, 0.485564, 0.806232,
		0.194791, -0.802001, 0.564669,
		0.920782, 0.347882, 0.176461,
		35.406918, 26.676619, 26.508358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.865070, 26.446869, 27.066275>,  <34.762371, 26.433102, 26.384836>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.865070, 26.446869, 27.066275> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.148716, 26.715803, 26.981304>,  <35.318901, 26.877165, 26.930323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.148716, 26.715803, 26.981304>,  <34.865070, 26.446869, 27.066275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.148716, 26.715803, 26.981304> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135809, 0.425867, 0.894535,
		0.691895, -0.605475, 0.393296,
		0.709110, 0.672338, -0.212427,
		35.361450, 26.917505, 26.917576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.329639, 26.318094, 27.568609>,  <34.865070, 26.446869, 27.066275>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.329639, 26.318094, 27.568609> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.386929, 26.687645, 27.426657>,  <35.421303, 26.909376, 27.341484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.386929, 26.687645, 27.426657>,  <35.329639, 26.318094, 27.568609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.386929, 26.687645, 27.426657> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043016, 0.364051, 0.930385,
		0.988756, -0.117983, 0.091881,
		0.143218, 0.923876, -0.354882,
		35.429893, 26.964808, 27.320192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.801601, 26.692001, 28.089008>,  <35.329639, 26.318094, 27.568609>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.801601, 26.692001, 28.089008> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.639538, 26.991480, 27.879131>,  <35.542301, 27.171167, 27.753206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.639538, 26.991480, 27.879131>,  <35.801601, 26.692001, 28.089008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.639538, 26.991480, 27.879131> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186435, 0.494187, 0.849130,
		0.895035, 0.441854, -0.060642,
		-0.405160, 0.748695, -0.524691,
		35.517990, 27.216089, 27.721724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.002739, 27.260374, 28.442226>,  <35.801601, 26.692001, 28.089008>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.002739, 27.260374, 28.442226> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.702415, 27.407969, 28.223087>,  <35.522221, 27.496525, 28.091604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.702415, 27.407969, 28.223087>,  <36.002739, 27.260374, 28.442226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.702415, 27.407969, 28.223087> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376414, 0.442540, 0.813923,
		0.542770, 0.817318, -0.193371,
		-0.750808, 0.368986, -0.547847,
		35.477173, 27.518663, 28.058733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.960510, 27.885651, 28.613726>,  <36.002739, 27.260374, 28.442226>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.960510, 27.885651, 28.613726> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.595837, 27.823492, 28.461573>,  <35.377033, 27.786196, 28.370281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.595837, 27.823492, 28.461573>,  <35.960510, 27.885651, 28.613726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.595837, 27.823492, 28.461573> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408322, 0.446144, 0.796385,
		0.045948, 0.881367, -0.470193,
		-0.911681, -0.155398, -0.380381,
		35.322334, 27.776873, 28.347458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.577686, 28.566231, 28.565884>,  <35.960510, 27.885651, 28.613726>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.577686, 28.566231, 28.565884> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.323822, 28.257528, 28.581875>,  <35.171505, 28.072308, 28.591469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.323822, 28.257528, 28.581875>,  <35.577686, 28.566231, 28.565884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.323822, 28.257528, 28.581875> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502455, 0.451397, 0.737414,
		-0.587149, 0.447922, -0.674256,
		-0.634662, -0.771755, 0.039976,
		35.133423, 28.026001, 28.593868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.952244, 28.854506, 28.565090>,  <35.577686, 28.566231, 28.565884>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.952244, 28.854506, 28.565090> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.878685, 28.498156, 28.731236>,  <34.834549, 28.284346, 28.830923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.878685, 28.498156, 28.731236>,  <34.952244, 28.854506, 28.565090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.878685, 28.498156, 28.731236> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382139, 0.454126, 0.804823,
		-0.905622, -0.010721, -0.423950,
		-0.183899, -0.890873, 0.415363,
		34.823517, 28.230894, 28.855844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.441784, 29.007751, 28.957626>,  <34.952244, 28.854506, 28.565090>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.441784, 29.007751, 28.957626> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.548676, 28.646124, 29.091042>,  <34.612808, 28.429148, 29.171091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.548676, 28.646124, 29.091042>,  <34.441784, 29.007751, 28.957626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.548676, 28.646124, 29.091042> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198559, 0.287038, 0.937114,
		-0.942955, -0.316649, -0.102807,
		0.267226, -0.904070, 0.333538,
		34.628845, 28.374903, 29.191103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.897404, 28.607517, 29.166334>,  <34.441784, 29.007751, 28.957626>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.897404, 28.607517, 29.166334> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.210300, 28.486286, 29.384048>,  <34.398037, 28.413548, 29.514677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.210300, 28.486286, 29.384048>,  <33.897404, 28.607517, 29.166334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.210300, 28.486286, 29.384048> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422426, 0.384103, 0.820988,
		-0.457884, -0.872129, 0.172432,
		0.782239, -0.303077, 0.544285,
		34.444973, 28.395363, 29.547335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.511810, 28.530972, 29.725191>,  <33.897404, 28.607517, 29.166334>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.511810, 28.530972, 29.725191> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.896957, 28.471119, 29.815069>,  <34.128048, 28.435207, 29.868996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.896957, 28.471119, 29.815069>,  <33.511810, 28.530972, 29.725191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.896957, 28.471119, 29.815069> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200740, 0.159675, 0.966544,
		-0.180506, -0.975763, 0.123709,
		0.962871, -0.149634, 0.224697,
		34.185818, 28.426229, 29.882479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.578541, 28.043839, 30.254480>,  <33.511810, 28.530972, 29.725191>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.578541, 28.043839, 30.254480> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.895782, 28.286699, 30.273901>,  <34.086128, 28.432417, 30.285553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.895782, 28.286699, 30.273901>,  <33.578541, 28.043839, 30.254480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.895782, 28.286699, 30.273901> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270565, 0.279770, 0.921153,
		0.545698, -0.743703, 0.386160,
		0.793101, 0.607153, 0.048550,
		34.133713, 28.468845, 30.288465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.930237, 27.908998, 30.909464>,  <33.578541, 28.043839, 30.254480>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.930237, 27.908998, 30.909464> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.078964, 28.263119, 30.797756>,  <34.168201, 28.475592, 30.730732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.078964, 28.263119, 30.797756>,  <33.930237, 27.908998, 30.909464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.078964, 28.263119, 30.797756> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139743, 0.350789, 0.925969,
		0.917727, -0.305266, 0.254145,
		0.371818, 0.885302, -0.279270,
		34.190510, 28.528709, 30.713976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<37.876648, 29.880033, 35.300953> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.584915, 30.143196, 35.225872>,  <37.409874, 30.301094, 35.180824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.584915, 30.143196, 35.225872>,  <37.876648, 29.880033, 35.300953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.584915, 30.143196, 35.225872> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160327, 0.431072, 0.887960,
		0.665109, 0.617523, -0.419875,
		-0.729332, 0.657907, -0.187704,
		37.366116, 30.340569, 35.169559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.077671, 30.567436, 35.498547>,  <37.876648, 29.880033, 35.300953>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.077671, 30.567436, 35.498547> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.681503, 30.620831, 35.484421>,  <37.443802, 30.652866, 35.475945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.681503, 30.620831, 35.484421>,  <38.077671, 30.567436, 35.498547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.681503, 30.620831, 35.484421> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016139, 0.365929, 0.930503,
		0.137133, 0.921020, -0.364578,
		-0.990421, 0.133486, -0.035317,
		37.384377, 30.660877, 35.473827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.967903, 31.308430, 35.666355>,  <38.077671, 30.567436, 35.498547>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.967903, 31.308430, 35.666355> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.616695, 31.129110, 35.733418>,  <37.405972, 31.021519, 35.773655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.616695, 31.129110, 35.733418>,  <37.967903, 31.308430, 35.666355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.616695, 31.129110, 35.733418> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145552, 0.583796, 0.798747,
		-0.455957, 0.676912, -0.577835,
		-0.878019, -0.448300, 0.167660,
		37.353291, 30.994621, 35.783714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.547680, 31.889723, 35.775105>,  <37.967903, 31.308430, 35.666355>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.547680, 31.889723, 35.775105> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.369232, 31.577841, 35.950851>,  <37.262165, 31.390713, 36.056297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.369232, 31.577841, 35.950851>,  <37.547680, 31.889723, 35.775105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.369232, 31.577841, 35.950851> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335391, 0.600798, 0.725641,
		-0.829753, 0.176365, -0.529533,
		-0.446120, -0.779703, 0.439362,
		37.235397, 31.343929, 36.082661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.915081, 32.112202, 36.023098>,  <37.547680, 31.889723, 35.775105>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.915081, 32.112202, 36.023098> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.963940, 31.786484, 36.250080>,  <36.993256, 31.591053, 36.386269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.963940, 31.786484, 36.250080>,  <36.915081, 32.112202, 36.023098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.963940, 31.786484, 36.250080> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331091, 0.505555, 0.796739,
		-0.935660, -0.285197, -0.207854,
		0.122146, -0.814295, 0.567453,
		37.000584, 31.542194, 36.420315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.294243, 32.148544, 36.459827>,  <36.915081, 32.112202, 36.023098>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.294243, 32.148544, 36.459827> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.539333, 31.906502, 36.663162>,  <36.686386, 31.761276, 36.785164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.539333, 31.906502, 36.663162>,  <36.294243, 32.148544, 36.459827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.539333, 31.906502, 36.663162> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241299, 0.469267, 0.849449,
		-0.752557, -0.643141, 0.141520,
		0.612726, -0.605110, 0.508340,
		36.723152, 31.724968, 36.815662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.899773, 31.978212, 37.010990>,  <36.294243, 32.148544, 36.459827>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.899773, 31.978212, 37.010990> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.270687, 31.868010, 37.112373>,  <36.493237, 31.801888, 37.173203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.270687, 31.868010, 37.112373>,  <35.899773, 31.978212, 37.010990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.270687, 31.868010, 37.112373> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146478, 0.356054, 0.922914,
		-0.344516, -0.892928, 0.289807,
		0.927283, -0.275508, 0.253461,
		36.548870, 31.785357, 37.188412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.833679, 31.748096, 37.664139>,  <35.899773, 31.978212, 37.010990>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.833679, 31.748096, 37.664139> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.222286, 31.836815, 37.630756>,  <36.455448, 31.890045, 37.610725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.222286, 31.836815, 37.630756>,  <35.833679, 31.748096, 37.664139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.222286, 31.836815, 37.630756> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030735, 0.467127, 0.883656,
		0.234974, -0.855921, 0.460638,
		0.971515, 0.221794, -0.083456,
		36.513741, 31.903353, 37.605721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.117874, 31.553061, 38.315613>,  <35.833679, 31.748096, 37.664139>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.117874, 31.553061, 38.315613> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.349834, 31.821392, 38.130703>,  <36.489010, 31.982391, 38.019756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.349834, 31.821392, 38.130703>,  <36.117874, 31.553061, 38.315613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.349834, 31.821392, 38.130703> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037163, 0.545059, 0.837574,
		0.813836, -0.502892, 0.291152,
		0.579905, 0.670828, -0.462277,
		36.523808, 32.022640, 37.992020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.564560, 31.742054, 38.792362>,  <36.117874, 31.553061, 38.315613>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.564560, 31.742054, 38.792362> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.579720, 32.055874, 38.544800>,  <36.588818, 32.244167, 38.396263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.579720, 32.055874, 38.544800>,  <36.564560, 31.742054, 38.792362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.579720, 32.055874, 38.544800> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035472, 0.617902, 0.785455,
		0.998652, -0.051725, -0.004409,
		0.037903, 0.784552, -0.618903,
		36.591091, 32.291241, 38.359127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.992973, 32.199680, 39.088345>,  <36.564560, 31.742054, 38.792362>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.992973, 32.199680, 39.088345> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.829842, 32.436771, 38.810539>,  <36.731960, 32.579025, 38.643856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.829842, 32.436771, 38.810539>,  <36.992973, 32.199680, 39.088345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.829842, 32.436771, 38.810539> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016149, 0.755841, 0.654556,
		0.912914, 0.278165, -0.298684,
		-0.407832, 0.592730, -0.694510,
		36.707493, 32.614590, 38.602184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.240967, 32.964912, 39.220093>,  <36.992973, 32.199680, 39.088345>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.240967, 32.964912, 39.220093> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.898506, 32.973724, 39.013588>,  <36.693031, 32.979012, 38.889687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.898506, 32.973724, 39.013588>,  <37.240967, 32.964912, 39.220093>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.898506, 32.973724, 39.013588> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349240, 0.711692, 0.609529,
		0.380845, 0.702146, -0.601621,
		-0.856147, 0.022026, -0.516262,
		36.641663, 32.980331, 38.858707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.117580, 33.673275, 38.978542>,  <37.240967, 32.964912, 39.220093>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.117580, 33.673275, 38.978542> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.777981, 33.476467, 39.055599>,  <36.574219, 33.358383, 39.101833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.777981, 33.476467, 39.055599>,  <37.117580, 33.673275, 38.978542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.777981, 33.476467, 39.055599> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296909, 0.745810, 0.596332,
		-0.437081, 0.449091, -0.779280,
		-0.849002, -0.492021, 0.192640,
		36.523281, 33.328861, 39.113392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.572922, 34.156956, 39.167664>,  <37.117580, 33.673275, 38.978542>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.572922, 34.156956, 39.167664> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.725185, 34.525459, 39.135723>,  <37.816544, 34.746563, 39.116558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.725185, 34.525459, 39.135723>,  <37.572922, 34.156956, 39.167664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.725185, 34.525459, 39.135723> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331741, 0.055449, -0.941739,
		-0.863160, 0.384973, 0.326728,
		0.380661, 0.921261, -0.079850,
		37.839382, 34.801838, 39.111767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.014885, 34.511509, 38.800812>,  <37.572922, 34.156956, 39.167664>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.014885, 34.511509, 38.800812> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.362598, 34.708073, 38.779434>,  <37.571228, 34.826012, 38.766609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.362598, 34.708073, 38.779434>,  <37.014885, 34.511509, 38.800812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.362598, 34.708073, 38.779434> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112213, 0.090887, -0.989519,
		-0.481406, 0.866171, 0.134149,
		0.869285, 0.491413, -0.053442,
		37.623383, 34.855495, 38.763401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.909500, 35.040562, 38.375854>,  <37.014885, 34.511509, 38.800812>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.909500, 35.040562, 38.375854> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.306503, 34.991940, 38.370857>,  <37.544704, 34.962765, 38.367859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.306503, 34.991940, 38.370857>,  <36.909500, 35.040562, 38.375854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.306503, 34.991940, 38.370857> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003646, 0.131665, -0.991287,
		0.122143, 0.983813, 0.131122,
		0.992506, -0.121557, -0.012495,
		37.604256, 34.955471, 38.367107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.094742, 35.638836, 38.027695>,  <36.909500, 35.040562, 38.375854>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.094742, 35.638836, 38.027695> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.396412, 35.377079, 38.005821>,  <37.577415, 35.220024, 37.992699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.396412, 35.377079, 38.005821>,  <37.094742, 35.638836, 38.027695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.396412, 35.377079, 38.005821> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113779, 0.212233, -0.970573,
		0.646741, 0.725760, 0.234518,
		0.754176, -0.654392, -0.054683,
		37.622665, 35.180763, 37.989418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.520439, 35.998913, 37.596802>,  <37.094742, 35.638836, 38.027695>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.520439, 35.998913, 37.596802> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.656879, 35.625751, 37.550591>,  <37.738743, 35.401855, 37.522861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.656879, 35.625751, 37.550591>,  <37.520439, 35.998913, 37.596802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.656879, 35.625751, 37.550591> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010997, 0.118935, -0.992841,
		0.939964, 0.339925, 0.030309,
		0.341097, -0.932902, -0.115532,
		37.759209, 35.345882, 37.515930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.122078, 36.038448, 37.125851>,  <37.520439, 35.998913, 37.596802>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.122078, 36.038448, 37.125851> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.056995, 35.643860, 37.117809>,  <38.017944, 35.407108, 37.112984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.056995, 35.643860, 37.117809>,  <38.122078, 36.038448, 37.125851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.056995, 35.643860, 37.117809> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262165, -0.023578, -0.964735,
		0.951207, -0.162244, 0.262454,
		-0.162711, -0.986469, -0.020107,
		38.008183, 35.347919, 37.111778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.772091, 35.578144, 36.837669>,  <38.122078, 36.038448, 37.125851>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.772091, 35.578144, 36.837669> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.435482, 35.372826, 36.770302>,  <38.233517, 35.249634, 36.729881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.435482, 35.372826, 36.770302>,  <38.772091, 35.578144, 36.837669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.435482, 35.372826, 36.770302> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272315, -0.133796, -0.952860,
		0.466570, -0.847715, 0.252372,
		-0.841521, -0.513301, -0.168421,
		38.183025, 35.218834, 36.719776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.006783, 35.051052, 36.469681>,  <38.772091, 35.578144, 36.837669>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.006783, 35.051052, 36.469681> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.615284, 35.014427, 36.396278>,  <38.380386, 34.992455, 36.352238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.615284, 35.014427, 36.396278>,  <39.006783, 35.051052, 36.469681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.615284, 35.014427, 36.396278> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197203, -0.174596, -0.964690,
		0.056286, -0.980374, 0.188941,
		-0.978745, -0.091558, -0.183506,
		38.321659, 34.986961, 36.341228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.906929, 34.342510, 36.179665>,  <39.006783, 35.051052, 36.469681>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.906929, 34.342510, 36.179665> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.608749, 34.581154, 36.060757>,  <38.429840, 34.724339, 35.989414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.608749, 34.581154, 36.060757>,  <38.906929, 34.342510, 36.179665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.608749, 34.581154, 36.060757> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034785, -0.480180, -0.876480,
		-0.665655, -0.643030, 0.378702,
		-0.745448, 0.596607, -0.297267,
		38.385117, 34.760136, 35.971577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.421555, 33.886856, 35.802040>,  <38.906929, 34.342510, 36.179665>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.421555, 33.886856, 35.802040> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.318401, 34.256287, 35.688541>,  <38.256508, 34.477943, 35.620441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.318401, 34.256287, 35.688541>,  <38.421555, 33.886856, 35.802040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.318401, 34.256287, 35.688541> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203498, -0.339010, -0.918510,
		-0.944503, -0.179126, 0.275369,
		-0.257882, 0.923572, -0.283745,
		38.241035, 34.533360, 35.603416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.896664, 33.709373, 35.392033>,  <38.421555, 33.886856, 35.802040>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.896664, 33.709373, 35.392033> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.025681, 34.080132, 35.315273>,  <38.103092, 34.302586, 35.269218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.025681, 34.080132, 35.315273>,  <37.896664, 33.709373, 35.392033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.025681, 34.080132, 35.315273> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009573, -0.199531, -0.979845,
		-0.946507, 0.317878, -0.055484,
		0.322542, 0.926899, -0.191900,
		38.122444, 34.358200, 35.257702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.519852, 33.980244, 34.765129>,  <37.896664, 33.709373, 35.392033>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.519852, 33.980244, 34.765129> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.853092, 34.200607, 34.784920>,  <38.053036, 34.332825, 34.796795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.853092, 34.200607, 34.784920>,  <37.519852, 33.980244, 34.765129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.853092, 34.200607, 34.784920> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196683, -0.211450, -0.957395,
		-0.516972, 0.807337, -0.284512,
		0.833100, 0.550905, 0.049476,
		38.103024, 34.365879, 34.799763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.395592, 34.427410, 34.180042>,  <37.519852, 33.980244, 34.765129>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.395592, 34.427410, 34.180042> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.788692, 34.420456, 34.253681>,  <38.024555, 34.416283, 34.297863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.788692, 34.420456, 34.253681>,  <37.395592, 34.427410, 34.180042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.788692, 34.420456, 34.253681> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161730, -0.401835, -0.901317,
		0.089641, 0.915547, -0.392094,
		0.982755, -0.017382, 0.184093,
		38.083519, 34.415241, 34.308910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.700691, 34.780922, 33.576862>,  <37.395592, 34.427410, 34.180042>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.700691, 34.780922, 33.576862> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.984825, 34.570576, 33.764008>,  <38.155304, 34.444366, 33.876293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.984825, 34.570576, 33.764008>,  <37.700691, 34.780922, 33.576862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.984825, 34.570576, 33.764008> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190957, -0.495797, -0.847184,
		0.677470, 0.691122, -0.251763,
		0.710331, -0.525866, 0.467862,
		38.197926, 34.412815, 33.904366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.365425, 34.925423, 33.201408>,  <37.700691, 34.780922, 33.576862>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.365425, 34.925423, 33.201408> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.384090, 34.584026, 33.409012>,  <38.395290, 34.379189, 33.533573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.384090, 34.584026, 33.409012>,  <38.365425, 34.925423, 33.201408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.384090, 34.584026, 33.409012> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310012, -0.481547, -0.819759,
		0.949587, 0.199151, 0.242123,
		0.046662, -0.853494, 0.519010,
		38.398090, 34.327980, 33.564716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.814945, 35.260456, 32.756050>,  <38.365425, 34.925423, 33.201408>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.814945, 35.260456, 32.756050> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.627796, 35.396008, 32.429550>,  <38.515507, 35.477341, 32.233650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.627796, 35.396008, 32.429550>,  <38.814945, 35.260456, 32.756050>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.627796, 35.396008, 32.429550> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580470, 0.578609, 0.572945,
		0.666448, 0.741870, -0.074003,
		-0.467869, 0.338882, -0.816246,
		38.487434, 35.497673, 32.184677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.883430, 35.941715, 32.726093>,  <38.814945, 35.260456, 32.756050>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.883430, 35.941715, 32.726093> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.552750, 35.853664, 32.518974>,  <38.354343, 35.800835, 32.394703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.552750, 35.853664, 32.518974>,  <38.883430, 35.941715, 32.726093>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.552750, 35.853664, 32.518974> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502557, 0.702702, 0.503633,
		0.252991, 0.676574, -0.691551,
		-0.826699, -0.220130, -0.517795,
		38.304741, 35.787624, 32.363636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.680714, 36.549213, 32.542309>,  <38.883430, 35.941715, 32.726093>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.680714, 36.549213, 32.542309> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.355350, 36.316898, 32.555298>,  <38.160133, 36.177509, 32.563091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.355350, 36.316898, 32.555298>,  <38.680714, 36.549213, 32.542309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.355350, 36.316898, 32.555298> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480125, 0.701843, 0.526209,
		-0.328408, 0.412430, -0.849734,
		-0.813405, -0.580790, 0.032473,
		38.111328, 36.142662, 32.565041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.206238, 37.042267, 32.614491>,  <38.680714, 36.549213, 32.542309>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.206238, 37.042267, 32.614491> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.022633, 36.695206, 32.690903>,  <37.912472, 36.486969, 32.736748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.022633, 36.695206, 32.690903>,  <38.206238, 37.042267, 32.614491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.022633, 36.695206, 32.690903> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799735, 0.497170, 0.336521,
		-0.386956, 0.001694, -0.922097,
		-0.459009, -0.867652, 0.191028,
		37.884930, 36.434910, 32.748211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.372902, 37.155262, 32.527946>,  <38.206238, 37.042267, 32.614491>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.372902, 37.155262, 32.527946> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.421223, 36.816624, 32.735283>,  <37.450214, 36.613441, 32.859684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.421223, 36.816624, 32.735283>,  <37.372902, 37.155262, 32.527946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.421223, 36.816624, 32.735283> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686549, 0.305890, 0.659608,
		-0.716978, -0.435552, -0.544277,
		0.120805, -0.846596, 0.518344,
		37.457462, 36.562645, 32.890785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.750561, 37.032036, 32.812710>,  <37.372902, 37.155262, 32.527946>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.750561, 37.032036, 32.812710> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.968182, 36.786140, 33.041134>,  <37.098755, 36.638603, 33.178188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.968182, 36.786140, 33.041134>,  <36.750561, 37.032036, 32.812710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.968182, 36.786140, 33.041134> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516716, 0.290762, 0.805272,
		-0.661072, -0.733183, -0.159455,
		0.544048, -0.614736, 0.571062,
		37.131397, 36.601719, 33.212452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.309055, 36.584698, 33.149727>,  <36.750561, 37.032036, 32.812710>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.309055, 36.584698, 33.149727> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.640911, 36.590057, 33.372982>,  <36.840023, 36.593273, 33.506935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.640911, 36.590057, 33.372982>,  <36.309055, 36.584698, 33.149727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.640911, 36.590057, 33.372982> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556656, 0.096546, 0.825114,
		-0.042831, -0.995238, 0.087556,
		0.829638, 0.013398, 0.558140,
		36.889801, 36.594078, 33.540424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.100506, 36.283001, 33.735386>,  <36.309055, 36.584698, 33.149727>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.100506, 36.283001, 33.735386> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.436104, 36.463142, 33.857540>,  <36.637463, 36.571228, 33.930832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.436104, 36.463142, 33.857540>,  <36.100506, 36.283001, 33.735386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.436104, 36.463142, 33.857540> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390172, 0.106739, 0.914534,
		0.379272, -0.886444, 0.265272,
		0.838998, 0.450359, 0.305383,
		36.687805, 36.598251, 33.949154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.334316, 35.938427, 34.432716>,  <36.100506, 36.283001, 33.735386>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.334316, 35.938427, 34.432716> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.495937, 36.304047, 34.418575>,  <36.592911, 36.523418, 34.410091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.495937, 36.304047, 34.418575>,  <36.334316, 35.938427, 34.432716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.495937, 36.304047, 34.418575> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347003, 0.188921, 0.918639,
		0.846364, -0.358908, 0.393513,
		0.404050, 0.914054, -0.035354,
		36.617153, 36.578262, 34.407970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.606384, 36.088814, 35.105789>,  <36.334316, 35.938427, 34.432716>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.606384, 36.088814, 35.105789> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.528095, 36.441357, 34.933784>,  <36.481121, 36.652882, 34.830582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.528095, 36.441357, 34.933784>,  <36.606384, 36.088814, 35.105789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.528095, 36.441357, 34.933784> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385616, 0.334001, 0.860083,
		0.901662, 0.334154, 0.274494,
		-0.195719, 0.881353, -0.430012,
		36.469379, 36.705761, 34.804783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.930588, 36.556835, 35.531300>,  <36.606384, 36.088814, 35.105789>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.930588, 36.556835, 35.531300> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.633465, 36.719112, 35.318264>,  <36.455193, 36.816479, 35.190441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.633465, 36.719112, 35.318264>,  <36.930588, 36.556835, 35.531300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.633465, 36.719112, 35.318264> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451735, 0.283431, 0.845932,
		0.494144, 0.868952, -0.027267,
		-0.742803, 0.405695, -0.532592,
		36.410625, 36.840820, 35.158485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.913731, 37.290218, 35.711620>,  <36.930588, 36.556835, 35.531300>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.913731, 37.290218, 35.711620> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.555721, 37.171139, 35.578766>,  <36.340916, 37.099689, 35.499054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.555721, 37.171139, 35.578766>,  <36.913731, 37.290218, 35.711620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.555721, 37.171139, 35.578766> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434860, 0.416841, 0.798210,
		-0.099178, 0.858847, -0.502539,
		-0.895020, -0.297699, -0.332137,
		36.287216, 37.081829, 35.479126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.998955, 33.647663, 29.058466> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.609375, 33.556965, 29.059658>,  <39.375626, 33.502544, 29.060373>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.609375, 33.556965, 29.059658>,  <39.998955, 33.647663, 29.058466>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.609375, 33.556965, 29.059658> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166172, 0.722582, 0.671016,
		-0.154305, 0.653040, -0.741437,
		-0.973949, -0.226747, 0.002980,
		39.317192, 33.488941, 29.060553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.616241, 34.229530, 28.929541>,  <39.998955, 33.647663, 29.058466>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.616241, 34.229530, 28.929541> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.387756, 33.980797, 29.143845>,  <39.250668, 33.831558, 29.272427>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.387756, 33.980797, 29.143845>,  <39.616241, 34.229530, 28.929541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.387756, 33.980797, 29.143845> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042039, 0.674035, 0.737502,
		-0.819727, 0.398745, -0.411156,
		-0.571209, -0.621835, 0.535762,
		39.216393, 33.794247, 29.304573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.229328, 34.659821, 29.312887>,  <39.616241, 34.229530, 28.929541>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.229328, 34.659821, 29.312887> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.151154, 34.314209, 29.498474>,  <39.104248, 34.106842, 29.609825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.151154, 34.314209, 29.498474>,  <39.229328, 34.659821, 29.312887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.151154, 34.314209, 29.498474> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205654, 0.498678, 0.842037,
		-0.958911, 0.069151, -0.275152,
		-0.195440, -0.864025, 0.463966,
		39.092522, 34.055000, 29.637665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.458420, 34.726627, 29.509275>,  <39.229328, 34.659821, 29.312887>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.458420, 34.726627, 29.509275> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.665554, 34.476276, 29.742556>,  <38.789833, 34.326065, 29.882524>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.665554, 34.476276, 29.742556>,  <38.458420, 34.726627, 29.509275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.665554, 34.476276, 29.742556> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272109, 0.525811, 0.805902,
		-0.811052, -0.576017, 0.101974,
		0.517832, -0.625881, 0.583200,
		38.820904, 34.288513, 29.917515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.927578, 34.562702, 30.029976>,  <38.458420, 34.726627, 29.509275>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.927578, 34.562702, 30.029976> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.272984, 34.454361, 30.200146>,  <38.480225, 34.389355, 30.302248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.272984, 34.454361, 30.200146>,  <37.927578, 34.562702, 30.029976>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.272984, 34.454361, 30.200146> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220608, 0.555700, 0.801580,
		-0.453519, -0.786025, 0.420101,
		0.863512, -0.270854, 0.425424,
		38.532036, 34.373104, 30.327772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.775776, 34.367279, 30.652504>,  <37.927578, 34.562702, 30.029976>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.775776, 34.367279, 30.652504> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.167248, 34.440281, 30.690189>,  <38.402130, 34.484081, 30.712801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.167248, 34.440281, 30.690189>,  <37.775776, 34.367279, 30.652504>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.167248, 34.440281, 30.690189> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178542, 0.529209, 0.829494,
		0.101528, -0.828631, 0.550511,
		0.978681, 0.182507, 0.094216,
		38.460854, 34.495033, 30.718454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.885090, 34.307964, 31.346611>,  <37.775776, 34.367279, 30.652504>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.885090, 34.307964, 31.346611> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.195976, 34.527267, 31.223103>,  <38.382507, 34.658852, 31.148996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.195976, 34.527267, 31.223103>,  <37.885090, 34.307964, 31.346611>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.195976, 34.527267, 31.223103> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131553, 0.621455, 0.772326,
		0.615317, -0.559652, 0.555135,
		0.777225, 0.548255, -0.308768,
		38.429142, 34.691746, 31.130470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.255428, 34.391518, 31.941315>,  <37.885090, 34.307964, 31.346611>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.255428, 34.391518, 31.941315> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.358376, 34.677776, 31.681589>,  <38.420143, 34.849533, 31.525753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.358376, 34.677776, 31.681589>,  <38.255428, 34.391518, 31.941315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.358376, 34.677776, 31.681589> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219797, 0.697693, 0.681846,
		0.940985, -0.032766, 0.336859,
		0.257365, 0.715647, -0.649316,
		38.435585, 34.892471, 31.486794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.788250, 34.750332, 32.270485>,  <38.255428, 34.391518, 31.941315>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.788250, 34.750332, 32.270485> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.673687, 35.021397, 31.999561>,  <38.604950, 35.184036, 31.837008>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.673687, 35.021397, 31.999561>,  <38.788250, 34.750332, 32.270485>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.673687, 35.021397, 31.999561> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275672, 0.618746, 0.735635,
		0.917593, 0.397406, 0.009599,
		-0.286406, 0.677659, -0.677310,
		38.587765, 35.224693, 31.796368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.998589, 34.612988, 32.963570>,  <38.788250, 34.750332, 32.270485>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.998589, 34.612988, 32.963570> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.828835, 34.293633, 33.134441>,  <38.726982, 34.102020, 33.236965>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.828835, 34.293633, 33.134441>,  <38.998589, 34.612988, 32.963570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.828835, 34.293633, 33.134441> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438354, -0.593949, -0.674589,
		0.792303, -0.099029, 0.602037,
		-0.424383, -0.798385, 0.427178,
		38.701519, 34.054115, 33.262596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.414764, 34.018116, 32.889141>,  <38.998589, 34.612988, 32.963570>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.414764, 34.018116, 32.889141> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.088455, 33.813381, 32.996872>,  <38.892670, 33.690540, 33.061512>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.088455, 33.813381, 32.996872>,  <39.414764, 34.018116, 32.889141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.088455, 33.813381, 32.996872> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235791, -0.719526, -0.653211,
		0.528128, -0.469366, 0.707655,
		-0.815771, -0.511838, 0.269330,
		38.843723, 33.659828, 33.077671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.679890, 33.340607, 33.072178>,  <39.414764, 34.018116, 32.889141>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.679890, 33.340607, 33.072178> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.311455, 33.358170, 32.917423>,  <39.090393, 33.368706, 32.824570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.311455, 33.358170, 32.917423>,  <39.679890, 33.340607, 33.072178>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.311455, 33.358170, 32.917423> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276268, -0.626486, -0.728829,
		-0.274375, -0.778195, 0.564917,
		-0.921084, 0.043904, -0.386882,
		39.035130, 33.371342, 32.801357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.369839, 32.726864, 33.208477>,  <39.679890, 33.340607, 33.072178>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.369839, 32.726864, 33.208477> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.164936, 32.886288, 32.904175>,  <39.041996, 32.981941, 32.721592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.164936, 32.886288, 32.904175>,  <39.369839, 32.726864, 33.208477>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.164936, 32.886288, 32.904175> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244650, -0.781382, -0.574098,
		-0.823250, -0.480204, 0.302761,
		-0.512256, 0.398556, -0.760755,
		39.011261, 33.005856, 32.675949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.968369, 32.182980, 32.895321>,  <39.369839, 32.726864, 33.208477>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.968369, 32.182980, 32.895321> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.977100, 32.463165, 32.609978>,  <38.982342, 32.631275, 32.438774>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.977100, 32.463165, 32.609978>,  <38.968369, 32.182980, 32.895321>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.977100, 32.463165, 32.609978> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070327, -0.712834, -0.697798,
		-0.997285, -0.034934, -0.064823,
		0.021832, 0.700462, -0.713355,
		38.983650, 32.673306, 32.395969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.640926, 31.871576, 32.409958>,  <38.968369, 32.182980, 32.895321>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.640926, 31.871576, 32.409958> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.804474, 32.176796, 32.209724>,  <38.902603, 32.359928, 32.089584>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.804474, 32.176796, 32.209724>,  <38.640926, 31.871576, 32.409958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.804474, 32.176796, 32.209724> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109703, -0.585643, -0.803111,
		-0.905974, 0.273454, -0.323162,
		0.408872, 0.763050, -0.500579,
		38.927135, 32.405712, 32.059551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.212795, 31.982067, 31.737926>,  <38.640926, 31.871576, 32.409958>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.212795, 31.982067, 31.737926> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.584408, 32.122997, 31.692719>,  <38.807373, 32.207554, 31.665594>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.584408, 32.122997, 31.692719>,  <38.212795, 31.982067, 31.737926>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.584408, 32.122997, 31.692719> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111730, -0.558322, -0.822067,
		-0.352738, 0.751095, -0.558062,
		0.929028, 0.352326, -0.113021,
		38.863117, 32.228695, 31.658812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.290344, 32.145069, 31.073999>,  <38.212795, 31.982067, 31.737926>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.290344, 32.145069, 31.073999> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.673111, 32.122604, 31.187948>,  <38.902771, 32.109127, 31.256317>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.673111, 32.122604, 31.187948>,  <38.290344, 32.145069, 31.073999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.673111, 32.122604, 31.187948> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205169, -0.563457, -0.800264,
		0.205457, 0.824234, -0.527659,
		0.956918, -0.056161, 0.284873,
		38.960186, 32.105755, 31.273411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.635536, 32.187481, 30.466858>,  <38.290344, 32.145069, 31.073999>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.635536, 32.187481, 30.466858> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.904346, 32.016357, 30.708641>,  <39.065632, 31.913683, 30.853710>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.904346, 32.016357, 30.708641>,  <38.635536, 32.187481, 30.466858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.904346, 32.016357, 30.708641> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307866, -0.580963, -0.753459,
		0.673501, 0.692433, -0.258713,
		0.672023, -0.427806, 0.604456,
		39.105953, 31.888016, 30.889978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.047493, 31.982161, 29.936522>,  <38.635536, 32.187481, 30.466858>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.047493, 31.982161, 29.936522> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.138733, 31.785795, 30.272848>,  <39.193478, 31.667976, 30.474644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.138733, 31.785795, 30.272848>,  <39.047493, 31.982161, 29.936522>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.138733, 31.785795, 30.272848> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377768, -0.751307, -0.541137,
		0.897363, 0.441068, 0.014077,
		0.228102, -0.490914, 0.840816,
		39.207165, 31.638521, 30.525093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.715965, 31.814240, 29.858221>,  <39.047493, 31.982161, 29.936522>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.715965, 31.814240, 29.858221> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.572540, 31.556871, 30.128757>,  <39.486485, 31.402451, 30.291079>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.572540, 31.556871, 30.128757>,  <39.715965, 31.814240, 29.858221>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.572540, 31.556871, 30.128757> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605074, -0.711907, -0.356473,
		0.710855, 0.281418, 0.644584,
		-0.358567, -0.643422, 0.676342,
		39.464970, 31.363844, 30.331659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.378738, 31.410988, 29.974987>,  <39.715965, 31.814240, 29.858221>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.378738, 31.410988, 29.974987> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.057644, 31.192898, 30.071598>,  <39.864986, 31.062044, 30.129564>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.057644, 31.192898, 30.071598>,  <40.378738, 31.410988, 29.974987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.057644, 31.192898, 30.071598> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390639, -0.786814, -0.477833,
		0.450565, -0.289226, 0.844595,
		-0.802741, -0.545227, 0.241528,
		39.816822, 31.029329, 30.144056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.615116, 30.634556, 30.028023>,  <40.378738, 31.410988, 29.974987>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.615116, 30.634556, 30.028023> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.219460, 30.619713, 29.971136>,  <39.982067, 30.610807, 29.937004>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.219460, 30.619713, 29.971136>,  <40.615116, 30.634556, 30.028023>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.219460, 30.619713, 29.971136> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103339, -0.863651, -0.493384,
		-0.104519, -0.502723, 0.858106,
		-0.989139, -0.037108, -0.142218,
		39.922718, 30.608580, 29.928471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.436932, 29.953897, 30.173584>,  <40.615116, 30.634556, 30.028023>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.436932, 29.953897, 30.173584> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.137627, 30.113041, 29.961241>,  <39.958042, 30.208527, 29.833834>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.137627, 30.113041, 29.961241>,  <40.436932, 29.953897, 30.173584>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.137627, 30.113041, 29.961241> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003388, -0.797907, -0.602772,
		-0.663394, -0.452830, 0.595696,
		-0.748263, 0.397857, -0.530860,
		39.913147, 30.232397, 29.801983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.549580, 29.843018, 28.480156> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.906010, 30.016308, 28.426039>,  <35.119869, 30.120281, 28.393568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.906010, 30.016308, 28.426039>,  <34.549580, 29.843018, 28.480156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.906010, 30.016308, 28.426039> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016976, 0.329704, 0.943932,
		0.453543, -0.838815, 0.301145,
		0.891073, 0.433226, -0.135296,
		35.173332, 30.146275, 28.385450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.976696, 29.707483, 29.045280>,  <34.549580, 29.843018, 28.480156>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.976696, 29.707483, 29.045280> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.139111, 30.044828, 28.904499>,  <35.236557, 30.247236, 28.820030>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.139111, 30.044828, 28.904499>,  <34.976696, 29.707483, 29.045280>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.139111, 30.044828, 28.904499> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256517, 0.474829, 0.841865,
		0.877118, -0.251544, 0.409134,
		0.406034, 0.843364, -0.351955,
		35.260921, 30.297838, 28.798912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.242039, 30.016529, 29.615677>,  <34.976696, 29.707483, 29.045280>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.242039, 30.016529, 29.615677> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.235626, 30.324291, 29.360252>,  <35.231777, 30.508947, 29.206997>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.235626, 30.324291, 29.360252>,  <35.242039, 30.016529, 29.615677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.235626, 30.324291, 29.360252> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225312, 0.619439, 0.752017,
		0.974155, 0.155931, 0.163426,
		-0.016031, 0.769403, -0.638563,
		35.230816, 30.555113, 29.168684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.676067, 30.430193, 29.893932>,  <35.242039, 30.016529, 29.615677>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.676067, 30.430193, 29.893932> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.411949, 30.642078, 29.680988>,  <35.253479, 30.769209, 29.553221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.411949, 30.642078, 29.680988>,  <35.676067, 30.430193, 29.893932>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.411949, 30.642078, 29.680988> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115736, 0.628626, 0.769048,
		0.742032, 0.569414, -0.353774,
		-0.660298, 0.529714, -0.532362,
		35.213860, 30.800993, 29.521280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.876751, 31.010525, 29.953863>,  <35.676067, 30.430193, 29.893932>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.876751, 31.010525, 29.953863> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.523811, 31.102066, 29.789381>,  <35.312050, 31.156990, 29.690691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.523811, 31.102066, 29.789381>,  <35.876751, 31.010525, 29.953863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.523811, 31.102066, 29.789381> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177222, 0.647877, 0.740843,
		0.435955, 0.726555, -0.531094,
		-0.882347, 0.228853, -0.411207,
		35.259106, 31.170721, 29.666019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.891426, 31.702581, 29.799036>,  <35.876751, 31.010525, 29.953863>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.891426, 31.702581, 29.799036> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.505348, 31.615355, 29.856781>,  <35.273701, 31.563019, 29.891428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.505348, 31.615355, 29.856781>,  <35.891426, 31.702581, 29.799036>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.505348, 31.615355, 29.856781> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048810, 0.692519, 0.719747,
		-0.256928, 0.687651, -0.679061,
		-0.965197, -0.218068, 0.144363,
		35.215790, 31.549934, 29.900089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.656197, 32.301750, 30.049574>,  <35.891426, 31.702581, 29.799036>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.656197, 32.301750, 30.049574> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.336391, 32.078415, 30.138151>,  <35.144508, 31.944414, 30.191298>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.336391, 32.078415, 30.138151>,  <35.656197, 32.301750, 30.049574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.336391, 32.078415, 30.138151> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147512, 0.539906, 0.828699,
		-0.582250, 0.629892, -0.514024,
		-0.799515, -0.558335, 0.221444,
		35.096539, 31.910915, 30.204584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.136692, 32.744083, 30.272686>,  <35.656197, 32.301750, 30.049574>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.136692, 32.744083, 30.272686> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.998123, 32.392700, 30.404322>,  <34.914982, 32.181870, 30.483303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.998123, 32.392700, 30.404322>,  <35.136692, 32.744083, 30.272686>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.998123, 32.392700, 30.404322> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450336, 0.463480, 0.763140,
		-0.822915, 0.116166, -0.556162,
		-0.346421, -0.878460, 0.329091,
		34.894196, 32.129162, 30.503050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.428074, 32.890366, 30.474876>,  <35.136692, 32.744083, 30.272686>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.428074, 32.890366, 30.474876> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.561256, 32.563316, 30.662760>,  <34.641167, 32.367085, 30.775490>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.561256, 32.563316, 30.662760>,  <34.428074, 32.890366, 30.474876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.561256, 32.563316, 30.662760> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414365, 0.320590, 0.851777,
		-0.847020, -0.478234, -0.232055,
		0.332954, -0.817628, 0.469709,
		34.661144, 32.318027, 30.803673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.978603, 32.721050, 30.881121>,  <34.428074, 32.890366, 30.474876>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.978603, 32.721050, 30.881121> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.263485, 32.507786, 31.063766>,  <34.434414, 32.379826, 31.173355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.263485, 32.507786, 31.063766>,  <33.978603, 32.721050, 30.881121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.263485, 32.507786, 31.063766> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402542, 0.222701, 0.887899,
		-0.575086, -0.816173, -0.056013,
		0.712205, -0.533166, 0.456616,
		34.477146, 32.347836, 31.200750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.734070, 32.267242, 31.314945>,  <33.978603, 32.721050, 30.881121>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.734070, 32.267242, 31.314945> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.101105, 32.286106, 31.472836>,  <34.321327, 32.297424, 31.567570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.101105, 32.286106, 31.472836>,  <33.734070, 32.267242, 31.314945>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.101105, 32.286106, 31.472836> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396319, 0.031028, 0.917588,
		0.031028, -0.998405, 0.047163,
		-0.917588, -0.047163, -0.394724,
		34.376381, 32.300255, 31.591253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.695934, 31.817764, 31.858463>,  <33.734070, 32.267242, 31.314945>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.695934, 31.817764, 31.858463> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.013409, 32.049606, 31.932343>,  <34.203896, 32.188713, 31.976671>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.013409, 32.049606, 31.932343>,  <33.695934, 31.817764, 31.858463>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.013409, 32.049606, 31.932343> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405283, 0.277394, 0.871090,
		0.453656, -0.766230, 0.455069,
		0.793688, 0.579608, 0.184699,
		34.251514, 32.223488, 31.987753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.710434, 31.826860, 32.563118>,  <33.695934, 31.817764, 31.858463>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.710434, 31.826860, 32.563118> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.953930, 32.132317, 32.477058>,  <34.100029, 32.315590, 32.425423>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.953930, 32.132317, 32.477058>,  <33.710434, 31.826860, 32.563118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.953930, 32.132317, 32.477058> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277232, 0.458833, 0.844165,
		0.743354, -0.454232, 0.491016,
		0.608742, 0.763639, -0.215148,
		34.136551, 32.361408, 32.412514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.034897, 32.071083, 33.229546>,  <33.710434, 31.826860, 32.563118>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.034897, 32.071083, 33.229546> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.056946, 32.387062, 32.985268>,  <34.070175, 32.576649, 32.838699>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.056946, 32.387062, 32.985268>,  <34.034897, 32.071083, 33.229546>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.056946, 32.387062, 32.985268> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262534, 0.601569, 0.754448,
		0.963347, 0.118743, 0.240545,
		0.055119, 0.789946, -0.610694,
		34.073483, 32.624046, 32.802059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.317387, 31.416000, 33.432972>,  <34.034897, 32.071083, 33.229546>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.317387, 31.416000, 33.432972> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.146736, 31.166555, 33.694992>,  <34.044346, 31.016888, 33.852203>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.146736, 31.166555, 33.694992>,  <34.317387, 31.416000, 33.432972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.146736, 31.166555, 33.694992> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084036, -0.693808, -0.715240,
		0.900515, -0.360190, 0.243592,
		-0.426628, -0.623614, 0.655053,
		34.018749, 30.979471, 33.891506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.635319, 30.768484, 33.298561>,  <34.317387, 31.416000, 33.432972>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.635319, 30.768484, 33.298561> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.288837, 30.678205, 33.476891>,  <34.080948, 30.624039, 33.583889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.288837, 30.678205, 33.476891>,  <34.635319, 30.768484, 33.298561>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.288837, 30.678205, 33.476891> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126167, -0.764493, -0.632165,
		0.483505, -0.603830, 0.633729,
		-0.866202, -0.225699, 0.445819,
		34.028976, 30.610497, 33.610638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.632954, 30.054199, 33.444256>,  <34.635319, 30.768484, 33.298561>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.632954, 30.054199, 33.444256> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.255825, 30.181850, 33.405796>,  <34.029549, 30.258442, 33.382721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.255825, 30.181850, 33.405796>,  <34.632954, 30.054199, 33.444256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.255825, 30.181850, 33.405796> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131599, -0.621475, -0.772302,
		-0.306217, -0.715490, 0.627937,
		-0.942822, 0.319128, -0.096148,
		33.972977, 30.277588, 33.376953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.315414, 29.442749, 33.295712>,  <34.632954, 30.054199, 33.444256>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.315414, 29.442749, 33.295712> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.046776, 29.721607, 33.195354>,  <33.885593, 29.888922, 33.135139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.046776, 29.721607, 33.195354>,  <34.315414, 29.442749, 33.295712>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.046776, 29.721607, 33.195354> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311603, -0.572984, -0.758019,
		-0.672211, -0.430900, 0.602045,
		-0.671592, 0.697148, -0.250896,
		33.845299, 29.930752, 33.120087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.758190, 29.091854, 33.115345>,  <34.315414, 29.442749, 33.295712>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.758190, 29.091854, 33.115345> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.747753, 29.453051, 32.943798>,  <33.741493, 29.669769, 32.840870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.747753, 29.453051, 32.943798>,  <33.758190, 29.091854, 33.115345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.747753, 29.453051, 32.943798> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242119, -0.421946, -0.873694,
		-0.969896, 0.081041, 0.229640,
		-0.026091, 0.902992, -0.428865,
		33.739925, 29.723948, 32.815140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.256992, 29.032505, 32.600018>,  <33.758190, 29.091854, 33.115345>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.256992, 29.032505, 32.600018> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.468693, 29.354214, 32.491917>,  <33.595711, 29.547239, 32.427055>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.468693, 29.354214, 32.491917>,  <33.256992, 29.032505, 32.600018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.468693, 29.354214, 32.491917> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009881, -0.324345, -0.945887,
		-0.848409, 0.497940, -0.179606,
		0.529249, 0.804274, -0.270257,
		33.627468, 29.595495, 32.410839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.963623, 29.159538, 31.870663>,  <33.256992, 29.032505, 32.600018>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.963623, 29.159538, 31.870663> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.297703, 29.377045, 31.903563>,  <33.498150, 29.507549, 31.923302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.297703, 29.377045, 31.903563>,  <32.963623, 29.159538, 31.870663>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.297703, 29.377045, 31.903563> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257868, -0.255113, -0.931891,
		-0.485750, 0.799521, -0.353289,
		0.835195, 0.543768, 0.082250,
		33.548260, 29.540174, 31.928238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.058331, 29.394463, 31.225500>,  <32.963623, 29.159538, 31.870663>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.058331, 29.394463, 31.225500> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.424377, 29.414352, 31.385546>,  <33.644005, 29.426287, 31.481573>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.424377, 29.414352, 31.385546>,  <33.058331, 29.394463, 31.225500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.424377, 29.414352, 31.385546> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396991, -0.284514, -0.872611,
		0.070446, 0.957381, -0.280104,
		0.915115, 0.049726, 0.400114,
		33.698914, 29.429270, 31.505581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.442379, 29.770077, 30.836399>,  <33.058331, 29.394463, 31.225500>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.442379, 29.770077, 30.836399> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.669636, 29.499155, 31.023365>,  <33.805988, 29.336601, 31.135546>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.669636, 29.499155, 31.023365>,  <33.442379, 29.770077, 30.836399>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.669636, 29.499155, 31.023365> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453633, -0.216141, -0.864581,
		0.686612, 0.703237, 0.184449,
		0.568138, -0.677304, 0.467416,
		33.840076, 29.295963, 31.163589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.988647, 29.832727, 30.416088>,  <33.442379, 29.770077, 30.836399>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.988647, 29.832727, 30.416088> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.067173, 29.504648, 30.631025>,  <34.114288, 29.307800, 30.759987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.067173, 29.504648, 30.631025>,  <33.988647, 29.832727, 30.416088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.067173, 29.504648, 30.631025> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503375, -0.385981, -0.773066,
		0.841471, 0.422249, 0.337094,
		0.196314, -0.820198, 0.537342,
		34.126068, 29.258589, 30.792229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.677765, 29.637495, 30.309425>,  <33.988647, 29.832727, 30.416088>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.677765, 29.637495, 30.309425> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.514362, 29.292738, 30.429602>,  <34.416321, 29.085884, 30.501707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.514362, 29.292738, 30.429602>,  <34.677765, 29.637495, 30.309425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.514362, 29.292738, 30.429602> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465810, -0.479925, -0.743434,
		0.784950, -0.163745, 0.597529,
		-0.408503, -0.861893, 0.300443,
		34.391811, 29.034170, 30.519735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.291298, 29.150999, 30.343678>,  <34.677765, 29.637495, 30.309425>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.291298, 29.150999, 30.343678> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.948235, 28.947016, 30.317266>,  <34.742397, 28.824625, 30.301420>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.948235, 28.947016, 30.317266>,  <35.291298, 29.150999, 30.343678>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.948235, 28.947016, 30.317266> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381965, -0.545838, -0.745764,
		0.344266, -0.664834, 0.662930,
		-0.857661, -0.509958, -0.066030,
		34.690937, 28.794029, 30.297457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.466419, 28.392406, 30.291132>,  <35.291298, 29.150999, 30.343678>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.466419, 28.392406, 30.291132> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.096577, 28.429800, 30.143423>,  <34.874672, 28.452236, 30.054798>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.096577, 28.429800, 30.143423>,  <35.466419, 28.392406, 30.291132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.096577, 28.429800, 30.143423> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244989, -0.596385, -0.764398,
		-0.291689, -0.797236, 0.528519,
		-0.924607, 0.093485, -0.369274,
		34.819195, 28.457846, 30.032640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.410980, 27.701271, 29.999611>,  <35.466419, 28.392406, 30.291132>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.410980, 27.701271, 29.999611> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.085995, 27.901567, 29.880173>,  <34.891003, 28.021746, 29.808510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.085995, 27.901567, 29.880173>,  <35.410980, 27.701271, 29.999611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.085995, 27.901567, 29.880173> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079836, -0.602894, -0.793817,
		-0.577511, -0.621114, 0.529810,
		-0.812470, 0.500736, -0.298591,
		34.842255, 28.051790, 29.790594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.648109, 27.170816, 30.526566>,  <35.410980, 27.701271, 29.999611>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.648109, 27.170816, 30.526566> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.039230, 27.221903, 30.460133>,  <36.273903, 27.252554, 30.420273>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.039230, 27.221903, 30.460133>,  <35.648109, 27.170816, 30.526566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.039230, 27.221903, 30.460133> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066565, 0.562268, 0.824271,
		0.198654, -0.817033, 0.541288,
		0.977806, 0.127714, -0.166083,
		36.332573, 27.260218, 30.410307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.017033, 26.893877, 31.107611>,  <35.648109, 27.170816, 30.526566>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.017033, 26.893877, 31.107611> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.243263, 27.170183, 30.927404>,  <36.379002, 27.335968, 30.819281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.243263, 27.170183, 30.927404>,  <36.017033, 26.893877, 31.107611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.243263, 27.170183, 30.927404> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020245, 0.534487, 0.844934,
		0.824448, -0.486995, 0.288309,
		0.565576, 0.690767, -0.450516,
		36.412937, 27.377413, 30.792250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.483700, 27.048639, 31.726562>,  <36.017033, 26.893877, 31.107611>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.483700, 27.048639, 31.726562> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.510998, 27.342537, 31.456602>,  <36.527378, 27.518875, 31.294626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.510998, 27.342537, 31.456602>,  <36.483700, 27.048639, 31.726562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.510998, 27.342537, 31.456602> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177394, 0.656762, 0.732936,
		0.981771, -0.169744, -0.085518,
		0.068247, 0.734746, -0.674901,
		36.531471, 27.562962, 31.254131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.176647, 27.251341, 31.737427>,  <36.483700, 27.048639, 31.726562>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.176647, 27.251341, 31.737427> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.961132, 27.552101, 31.585453>,  <36.831821, 27.732557, 31.494268>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.961132, 27.552101, 31.585453>,  <37.176647, 27.251341, 31.737427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.961132, 27.552101, 31.585453> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102002, 0.505899, 0.856541,
		0.836242, 0.422741, -0.349269,
		-0.538790, 0.751902, -0.379933,
		36.799496, 27.777672, 31.471474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.522011, 27.793615, 31.916857>,  <37.176647, 27.251341, 31.737427>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.522011, 27.793615, 31.916857> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.169205, 27.959349, 31.827082>,  <36.957520, 28.058788, 31.773216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.169205, 27.959349, 31.827082>,  <37.522011, 27.793615, 31.916857>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.169205, 27.959349, 31.827082> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100195, 0.630306, 0.769854,
		0.460439, 0.656537, -0.597456,
		-0.882018, 0.414333, -0.224436,
		36.904598, 28.083649, 31.759750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.609188, 28.437012, 31.855688>,  <37.522011, 27.793615, 31.916857>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.609188, 28.437012, 31.855688> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.217457, 28.453009, 31.935007>,  <36.982418, 28.462606, 31.982599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.217457, 28.453009, 31.935007>,  <37.609188, 28.437012, 31.855688>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.217457, 28.453009, 31.935007> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162718, 0.738130, 0.654742,
		-0.120187, 0.673472, -0.729377,
		-0.979325, 0.039991, 0.198300,
		36.923660, 28.465006, 31.994497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.450497, 29.090176, 31.810028>,  <37.609188, 28.437012, 31.855688>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.450497, 29.090176, 31.810028> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.181557, 28.909094, 32.044292>,  <37.020191, 28.800444, 32.184853>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.181557, 28.909094, 32.044292>,  <37.450497, 29.090176, 31.810028>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.181557, 28.909094, 32.044292> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212122, 0.640174, 0.738364,
		-0.709187, 0.620672, -0.334394,
		-0.672353, -0.452706, 0.585661,
		36.979851, 28.773283, 32.219990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.091751, 29.698431, 32.105511>,  <37.450497, 29.090176, 31.810028>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.091751, 29.698431, 32.105511> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.010700, 29.381308, 32.335434>,  <36.962070, 29.191034, 32.473389>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.010700, 29.381308, 32.335434>,  <37.091751, 29.698431, 32.105511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.010700, 29.381308, 32.335434> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098874, 0.567418, 0.817472,
		-0.974252, 0.222475, -0.036586,
		-0.202627, -0.792806, 0.574805,
		36.949913, 29.143465, 32.507874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.511238, 29.930546, 32.470528>,  <37.091751, 29.698431, 32.105511>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.511238, 29.930546, 32.470528> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.700256, 29.641727, 32.672657>,  <36.813667, 29.468437, 32.793934>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.700256, 29.641727, 32.672657>,  <36.511238, 29.930546, 32.470528>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.700256, 29.641727, 32.672657> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171359, 0.637715, 0.750969,
		-0.864488, -0.268272, 0.425076,
		0.472542, -0.722045, 0.505327,
		36.842018, 29.425114, 32.824253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.221367, 30.061094, 33.091728>,  <36.511238, 29.930546, 32.470528>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.221367, 30.061094, 33.091728> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.524712, 29.809910, 33.161652>,  <36.706718, 29.659199, 33.203606>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.524712, 29.809910, 33.161652>,  <36.221367, 30.061094, 33.091728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.524712, 29.809910, 33.161652> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126728, 0.405091, 0.905451,
		-0.639402, -0.664503, 0.386784,
		0.758357, -0.627963, 0.174805,
		36.752220, 29.621521, 33.214092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.008537, 29.666010, 33.604454>,  <36.221367, 30.061094, 33.091728>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.008537, 29.666010, 33.604454> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.407761, 29.670727, 33.628922>,  <36.647293, 29.673557, 33.643600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.407761, 29.670727, 33.628922>,  <36.008537, 29.666010, 33.604454>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.407761, 29.670727, 33.628922> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062201, 0.135177, 0.988867,
		0.003388, -0.990752, 0.135648,
		0.998058, 0.011788, 0.061168,
		36.707176, 29.674263, 33.647270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.150620, 29.547729, 34.317337>,  <36.008537, 29.666010, 33.604454>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.150620, 29.547729, 34.317337> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.499084, 29.694262, 34.186573>,  <36.708164, 29.782181, 34.108112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.499084, 29.694262, 34.186573>,  <36.150620, 29.547729, 34.317337>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.499084, 29.694262, 34.186573> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271062, 0.196322, 0.942329,
		0.409382, -0.909539, 0.071731,
		0.871167, 0.366329, -0.326912,
		36.760433, 29.804159, 34.088501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.502701, 29.488846, 34.953300>,  <36.150620, 29.547729, 34.317337>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.502701, 29.488846, 34.953300> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.739578, 29.700603, 34.710304>,  <36.881706, 29.827658, 34.564507>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.739578, 29.700603, 34.710304>,  <36.502701, 29.488846, 34.953300>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.739578, 29.700603, 34.710304> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508485, 0.339327, 0.791392,
		0.625096, -0.777559, -0.068241,
		0.592198, 0.529395, -0.607489,
		36.917236, 29.859423, 34.528057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.248810, 29.336035, 35.148876>,  <36.502701, 29.488846, 34.953300>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.248810, 29.336035, 35.148876> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.173180, 29.697824, 34.995945>,  <37.127804, 29.914898, 34.904186>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.173180, 29.697824, 34.995945>,  <37.248810, 29.336035, 35.148876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.173180, 29.697824, 34.995945> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261798, 0.421693, 0.868123,
		0.946421, 0.064045, -0.316520,
		-0.189074, 0.904474, -0.382332,
		37.116459, 29.969166, 34.881245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<39.627377, 29.446974, 30.233919> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.586838, 29.692535, 29.920780>,  <39.562515, 29.839872, 29.732897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.586838, 29.692535, 29.920780>,  <39.627377, 29.446974, 30.233919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.586838, 29.692535, 29.920780> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162210, -0.766172, -0.621827,
		-0.981538, -0.190005, -0.021934,
		-0.101345, 0.613904, -0.782848,
		39.556435, 29.876707, 29.685926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.156170, 29.105011, 29.857409>,  <39.627377, 29.446974, 30.233919>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.156170, 29.105011, 29.857409> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.349239, 29.360683, 29.617918>,  <39.465080, 29.514086, 29.474224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.349239, 29.360683, 29.617918>,  <39.156170, 29.105011, 29.857409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.349239, 29.360683, 29.617918> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048531, -0.702103, -0.710419,
		-0.874452, 0.313847, -0.369910,
		0.482678, 0.639180, -0.598724,
		39.494041, 29.552437, 29.438301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.801540, 29.027439, 29.231445>,  <39.156170, 29.105011, 29.857409>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.801540, 29.027439, 29.231445> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.140038, 29.191458, 29.095369>,  <39.343136, 29.289869, 29.013723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.140038, 29.191458, 29.095369>,  <38.801540, 29.027439, 29.231445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.140038, 29.191458, 29.095369> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049920, -0.574675, -0.816858,
		-0.530449, 0.708245, -0.465847,
		0.846246, 0.410046, -0.340191,
		39.393909, 29.314472, 28.993313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.807861, 29.189510, 28.470602>,  <38.801540, 29.027439, 29.231445>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.807861, 29.189510, 28.470602> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.196114, 29.176922, 28.566000>,  <39.429066, 29.169369, 28.623238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.196114, 29.176922, 28.566000>,  <38.807861, 29.189510, 28.470602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.196114, 29.176922, 28.566000> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187371, -0.522865, -0.831567,
		0.150869, 0.851834, -0.501615,
		0.970634, -0.031469, 0.238493,
		39.487305, 29.167480, 28.637548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.067337, 29.355347, 27.866846>,  <38.807861, 29.189510, 28.470602>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.067337, 29.355347, 27.866846> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.379925, 29.207945, 28.068247>,  <39.567478, 29.119505, 28.189087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.379925, 29.207945, 28.068247>,  <39.067337, 29.355347, 27.866846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.379925, 29.207945, 28.068247> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222580, -0.589227, -0.776704,
		0.582895, 0.719038, -0.378440,
		0.781467, -0.368504, 0.503502,
		39.614365, 29.097393, 28.219297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.741413, 29.445951, 27.424149>,  <39.067337, 29.355347, 27.866846>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.741413, 29.445951, 27.424149> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.799400, 29.158129, 27.695801>,  <39.834194, 28.985435, 27.858793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.799400, 29.158129, 27.695801>,  <39.741413, 29.445951, 27.424149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.799400, 29.158129, 27.695801> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209796, -0.648422, -0.731802,
		0.966939, 0.248566, 0.056960,
		0.144967, -0.719558, 0.679133,
		39.842892, 28.942261, 27.899540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.359581, 29.085808, 27.279633>,  <39.741413, 29.445951, 27.424149>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.359581, 29.085808, 27.279633> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.099178, 28.842966, 27.461889>,  <39.942936, 28.697260, 27.571243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.099178, 28.842966, 27.461889>,  <40.359581, 29.085808, 27.279633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.099178, 28.842966, 27.461889> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121946, -0.676116, -0.726634,
		0.749211, -0.417481, 0.514191,
		-0.651008, -0.607106, 0.455643,
		39.903877, 28.660835, 27.598583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.756207, 28.418844, 27.216265>,  <40.359581, 29.085808, 27.279633>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.756207, 28.418844, 27.216265> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.392719, 28.310137, 27.342993>,  <40.174625, 28.244913, 27.419029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.392719, 28.310137, 27.342993>,  <40.756207, 28.418844, 27.216265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.392719, 28.310137, 27.342993> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013244, -0.739856, -0.672635,
		0.417203, -0.615431, 0.668720,
		-0.908716, -0.271769, 0.316821,
		40.120106, 28.228605, 27.438040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.842037, 27.695185, 27.396273>,  <40.756207, 28.418844, 27.216265>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.842037, 27.695185, 27.396273> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.445408, 27.741404, 27.372835>,  <40.207432, 27.769135, 27.358772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.445408, 27.741404, 27.372835>,  <40.842037, 27.695185, 27.396273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.445408, 27.741404, 27.372835> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081643, -0.908484, -0.409867,
		-0.100591, -0.401629, 0.910261,
		-0.991572, 0.115545, -0.058595,
		40.147938, 27.776068, 27.355257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.469135, 27.149723, 27.576777>,  <40.842037, 27.695185, 27.396273>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.469135, 27.149723, 27.576777> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.191315, 27.311417, 27.338718>,  <40.024624, 27.408434, 27.195883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.191315, 27.311417, 27.338718>,  <40.469135, 27.149723, 27.576777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.191315, 27.311417, 27.338718> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133102, -0.885144, -0.445875,
		-0.707027, -0.230467, 0.668579,
		-0.694548, 0.404235, -0.595144,
		39.982952, 27.432688, 27.160175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.874893, 26.681122, 27.589556>,  <40.469135, 27.149723, 27.576777>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.874893, 26.681122, 27.589556> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.870190, 26.913498, 27.264011>,  <39.867367, 27.052923, 27.068686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.870190, 26.913498, 27.264011>,  <39.874893, 26.681122, 27.589556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.870190, 26.913498, 27.264011> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160066, -0.804515, -0.571957,
		-0.987036, 0.123544, 0.102452,
		-0.011762, 0.580941, -0.813861,
		39.866661, 27.087780, 27.019854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.210983, 26.515682, 27.184322>,  <39.874893, 26.681122, 27.589556>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.210983, 26.515682, 27.184322> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.509853, 26.648026, 26.953753>,  <39.689175, 26.727432, 26.815411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.509853, 26.648026, 26.953753>,  <39.210983, 26.515682, 27.184322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.509853, 26.648026, 26.953753> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086425, -0.811557, -0.577847,
		-0.658985, 0.481570, -0.577780,
		0.747175, 0.330857, -0.576423,
		39.734005, 26.747282, 26.780827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.988811, 26.515770, 26.370419>,  <39.210983, 26.515682, 27.184322>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.988811, 26.515770, 26.370419> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.378170, 26.476513, 26.453243>,  <39.611786, 26.452959, 26.502937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.378170, 26.476513, 26.453243>,  <38.988811, 26.515770, 26.370419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.378170, 26.476513, 26.453243> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017238, -0.932439, -0.360915,
		0.228494, 0.347743, -0.909321,
		0.973393, -0.098141, 0.207062,
		39.670189, 26.447071, 26.515362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.242039, 26.175745, 25.807581>,  <38.988811, 26.515770, 26.370419>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.242039, 26.175745, 25.807581> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.485699, 26.064278, 26.104574>,  <39.631893, 25.997398, 26.282770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.485699, 26.064278, 26.104574>,  <39.242039, 26.175745, 25.807581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.485699, 26.064278, 26.104574> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187723, -0.960291, -0.206402,
		0.770517, -0.013651, -0.637274,
		0.609150, -0.278667, 0.742483,
		39.668446, 25.980677, 26.327318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.660461, 25.670710, 25.914671>,  <39.242039, 26.175745, 25.807581>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.660461, 25.670710, 25.914671> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.517376, 25.297405, 25.927738>,  <38.431526, 25.073423, 25.935579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.517376, 25.297405, 25.927738>,  <38.660461, 25.670710, 25.914671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.517376, 25.297405, 25.927738> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449960, 0.202910, 0.869691,
		-0.818278, 0.296397, -0.492513,
		-0.357710, -0.933261, 0.032670,
		38.410065, 25.017427, 25.937540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.904873, 25.695560, 26.029221>,  <38.660461, 25.670710, 25.914671>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.904873, 25.695560, 26.029221> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.002399, 25.325607, 26.145939>,  <38.060917, 25.103636, 26.215969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.002399, 25.325607, 26.145939>,  <37.904873, 25.695560, 26.029221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.002399, 25.325607, 26.145939> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551442, 0.115294, 0.826208,
		-0.797788, -0.362352, -0.481909,
		0.243817, -0.924883, 0.291796,
		38.075546, 25.048141, 26.233479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.263062, 25.390394, 26.257605>,  <37.904873, 25.695560, 26.029221>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.263062, 25.390394, 26.257605> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.572701, 25.192083, 26.415070>,  <37.758484, 25.073097, 26.509548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.572701, 25.192083, 26.415070>,  <37.263062, 25.390394, 26.257605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.572701, 25.192083, 26.415070> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406053, 0.088229, 0.909580,
		-0.485684, -0.863955, -0.133015,
		0.774101, -0.495780, 0.393663,
		37.804932, 25.043350, 26.533169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.006466, 24.847715, 26.643723>,  <37.263062, 25.390394, 26.257605>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.006466, 24.847715, 26.643723> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.378300, 24.870213, 26.789442>,  <37.601398, 24.883711, 26.876875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.378300, 24.870213, 26.789442>,  <37.006466, 24.847715, 26.643723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.378300, 24.870213, 26.789442> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367957, 0.082472, 0.926178,
		0.022046, -0.995005, 0.097359,
		0.929581, 0.056242, 0.364301,
		37.657173, 24.887085, 26.898733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.895878, 24.457399, 27.245813>,  <37.006466, 24.847715, 26.643723>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.895878, 24.457399, 27.245813> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.232296, 24.665323, 27.305735>,  <37.434147, 24.790077, 27.341688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.232296, 24.665323, 27.305735>,  <36.895878, 24.457399, 27.245813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.232296, 24.665323, 27.305735> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216991, 0.070496, 0.973625,
		0.495542, -0.851367, 0.172085,
		0.841043, 0.519812, 0.149805,
		37.484608, 24.821266, 27.350676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.094181, 24.317822, 27.929623>,  <36.895878, 24.457399, 27.245813>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.094181, 24.317822, 27.929623> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.277462, 24.665884, 27.857088>,  <37.387432, 24.874722, 27.813568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.277462, 24.665884, 27.857088>,  <37.094181, 24.317822, 27.929623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.277462, 24.665884, 27.857088> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076957, 0.242082, 0.967199,
		0.885510, -0.429218, 0.177887,
		0.458202, 0.870155, -0.181334,
		37.414925, 24.926929, 27.802689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.596161, 24.461044, 28.429663>,  <37.094181, 24.317822, 27.929623>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.596161, 24.461044, 28.429663> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.530647, 24.834209, 28.301382>,  <37.491341, 25.058109, 28.224413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.530647, 24.834209, 28.301382>,  <37.596161, 24.461044, 28.429663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.530647, 24.834209, 28.301382> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075882, 0.312215, 0.946976,
		0.983573, 0.179435, 0.019655,
		-0.163784, 0.932912, -0.320702,
		37.481510, 25.114082, 28.205172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.886173, 24.984026, 28.984085>,  <37.596161, 24.461044, 28.429663>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.886173, 24.984026, 28.984085> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.647022, 25.208170, 28.754814>,  <37.503532, 25.342657, 28.617252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.647022, 25.208170, 28.754814>,  <37.886173, 24.984026, 28.984085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.647022, 25.208170, 28.754814> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430929, 0.378243, 0.819288,
		0.675898, 0.736836, 0.015332,
		-0.597882, 0.560362, -0.573177,
		37.467659, 25.376278, 28.582861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.105141, 25.792572, 29.136930>,  <37.886173, 24.984026, 28.984085>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.105141, 25.792572, 29.136930> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.742790, 25.774876, 28.968439>,  <37.525379, 25.764257, 28.867344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.742790, 25.774876, 28.968439>,  <38.105141, 25.792572, 29.136930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.742790, 25.774876, 28.968439> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336217, 0.679949, 0.651634,
		0.257585, 0.731924, -0.630823,
		-0.905874, -0.044243, -0.421230,
		37.471027, 25.761602, 28.842070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.906494, 26.543463, 28.984430>,  <38.105141, 25.792572, 29.136930>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.906494, 26.543463, 28.984430> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.557022, 26.348949, 28.978600>,  <37.347340, 26.232241, 28.975101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.557022, 26.348949, 28.978600>,  <37.906494, 26.543463, 28.984430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.557022, 26.348949, 28.978600> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412811, 0.725154, 0.551126,
		-0.257432, 0.487525, -0.834295,
		-0.873680, -0.486283, -0.014578,
		37.294918, 26.203064, 28.974226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.406017, 27.018297, 28.780703>,  <37.906494, 26.543463, 28.984430>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.406017, 27.018297, 28.780703> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.204315, 26.723139, 28.960140>,  <37.083294, 26.546043, 29.067802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.204315, 26.723139, 28.960140>,  <37.406017, 27.018297, 28.780703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.204315, 26.723139, 28.960140> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331271, 0.645022, 0.688627,
		-0.797489, 0.198635, -0.569698,
		-0.504253, -0.737896, 0.448596,
		37.053040, 26.501770, 29.094719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.780540, 27.284134, 28.898092>,  <37.406017, 27.018297, 28.780703>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.780540, 27.284134, 28.898092> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.818867, 26.985767, 29.161737>,  <36.841862, 26.806747, 29.319923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.818867, 26.985767, 29.161737>,  <36.780540, 27.284134, 28.898092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.818867, 26.985767, 29.161737> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406120, 0.575244, 0.710042,
		-0.908783, -0.335710, -0.247816,
		0.095813, -0.745917, 0.659111,
		36.847610, 26.761992, 29.359470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.182880, 27.239502, 29.271885>,  <36.780540, 27.284134, 28.898092>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.182880, 27.239502, 29.271885> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.435303, 27.046274, 29.514673>,  <36.586758, 26.930338, 29.660347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.435303, 27.046274, 29.514673>,  <36.182880, 27.239502, 29.271885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.435303, 27.046274, 29.514673> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320106, 0.550562, 0.770982,
		-0.706614, -0.680827, 0.192801,
		0.631054, -0.483070, 0.606972,
		36.624619, 26.901354, 29.696764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.710133, 27.046627, 29.836340>,  <36.182880, 27.239502, 29.271885>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.710133, 27.046627, 29.836340> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.098255, 27.071135, 29.929932>,  <36.331131, 27.085840, 29.986088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.098255, 27.071135, 29.929932>,  <35.710133, 27.046627, 29.836340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.098255, 27.071135, 29.929932> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226224, 0.572181, 0.788309,
		-0.085579, -0.817835, 0.569053,
		0.970309, 0.061270, 0.233980,
		36.389347, 27.089516, 30.000126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.048450, 27.207012, 29.642670>,  <35.710133, 27.046627, 29.836340>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.048450, 27.207012, 29.642670> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.895763, 27.550564, 29.506071>,  <34.804150, 27.756695, 29.424112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.895763, 27.550564, 29.506071>,  <35.048450, 27.207012, 29.642670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.895763, 27.550564, 29.506071> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031490, -0.381342, -0.923898,
		-0.923742, -0.341914, 0.172611,
		-0.381718, 0.858879, -0.341495,
		34.781246, 27.808228, 29.403624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.494228, 27.096336, 29.313019>,  <35.048450, 27.207012, 29.642670>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.494228, 27.096336, 29.313019> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.616074, 27.446705, 29.163370>,  <34.689182, 27.656927, 29.073580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.616074, 27.446705, 29.163370>,  <34.494228, 27.096336, 29.313019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.616074, 27.446705, 29.163370> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084866, -0.416188, -0.905310,
		-0.948687, 0.244020, -0.201113,
		0.304615, 0.875923, -0.374123,
		34.707458, 27.709482, 29.051132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.154869, 27.234993, 28.583168>,  <34.494228, 27.096336, 29.313019>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.154869, 27.234993, 28.583168> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.457752, 27.496124, 28.574751>,  <34.639484, 27.652803, 28.569700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.457752, 27.496124, 28.574751>,  <34.154869, 27.234993, 28.583168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.457752, 27.496124, 28.574751> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150640, -0.205895, -0.966910,
		-0.635561, 0.728985, -0.254248,
		0.757212, 0.652830, -0.021044,
		34.684917, 27.691973, 28.568438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.120255, 27.507139, 27.935852>,  <34.154869, 27.234993, 28.583168>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.120255, 27.507139, 27.935852> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.494560, 27.588531, 28.051046>,  <34.719143, 27.637367, 28.120163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.494560, 27.588531, 28.051046>,  <34.120255, 27.507139, 27.935852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.494560, 27.588531, 28.051046> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324466, -0.177098, -0.929171,
		-0.138067, 0.962929, -0.231745,
		0.935767, 0.203481, 0.287986,
		34.775291, 27.649576, 28.137442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.370464, 27.773281, 27.395927>,  <34.120255, 27.507139, 27.935852>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.370464, 27.773281, 27.395927> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.708870, 27.694023, 27.593916>,  <34.911915, 27.646467, 27.712709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.708870, 27.694023, 27.593916>,  <34.370464, 27.773281, 27.395927>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.708870, 27.694023, 27.593916> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437847, -0.271520, -0.857069,
		0.304220, 0.941815, -0.142952,
		0.846014, -0.198147, 0.494973,
		34.962673, 27.634579, 27.742407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.929325, 28.205818, 27.135180>,  <34.370464, 27.773281, 27.395927>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.929325, 28.205818, 27.135180> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.116161, 27.891884, 27.298084>,  <35.228264, 27.703524, 27.395828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.116161, 27.891884, 27.298084>,  <34.929325, 28.205818, 27.135180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.116161, 27.891884, 27.298084> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477608, -0.163678, -0.863192,
		0.744122, 0.597701, 0.298390,
		0.467090, -0.784833, 0.407263,
		35.256287, 27.656433, 27.420263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.589294, 28.171314, 26.816715>,  <34.929325, 28.205818, 27.135180>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.589294, 28.171314, 26.816715> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.537720, 27.803171, 26.964401>,  <35.506775, 27.582285, 27.053013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.537720, 27.803171, 26.964401>,  <35.589294, 28.171314, 26.816715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.537720, 27.803171, 26.964401> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549406, -0.376256, -0.746046,
		0.825548, 0.106660, 0.554161,
		-0.128933, -0.920356, 0.369216,
		35.499039, 27.527063, 27.075167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.199932, 28.523193, 26.336147>,  <35.589294, 28.171314, 26.816715>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.199932, 28.523193, 26.336147> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.872406, 28.671741, 26.161049>,  <35.675888, 28.760870, 26.055990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.872406, 28.671741, 26.161049>,  <36.199932, 28.523193, 26.336147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.872406, 28.671741, 26.161049> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017356, 0.778223, 0.627748,
		0.573791, 0.506414, -0.643669,
		-0.818818, 0.371368, -0.437747,
		35.626762, 28.783152, 26.029724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.330360, 29.219330, 26.295195>,  <36.199932, 28.523193, 26.336147>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.330360, 29.219330, 26.295195> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.933075, 29.211107, 26.249390>,  <35.694706, 29.206175, 26.221907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.933075, 29.211107, 26.249390>,  <36.330360, 29.219330, 26.295195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.933075, 29.211107, 26.249390> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084580, 0.803418, 0.589377,
		0.079887, 0.595060, -0.799701,
		-0.993209, -0.020555, -0.114513,
		35.635113, 29.204941, 26.215036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.097652, 29.927589, 26.170315>,  <36.330360, 29.219330, 26.295195>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.097652, 29.927589, 26.170315> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.782600, 29.727360, 26.314014>,  <35.593567, 29.607222, 26.400234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.782600, 29.727360, 26.314014>,  <36.097652, 29.927589, 26.170315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.782600, 29.727360, 26.314014> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237421, 0.784608, 0.572731,
		-0.568564, 0.365809, -0.736831,
		-0.787634, -0.500573, 0.359249,
		35.546310, 29.577188, 26.421789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.740990, 30.435614, 26.296474>,  <36.097652, 29.927589, 26.170315>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.740990, 30.435614, 26.296474> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.576900, 30.154831, 26.529362>,  <35.478447, 29.986362, 26.669094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.576900, 30.154831, 26.529362>,  <35.740990, 30.435614, 26.296474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.576900, 30.154831, 26.529362> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042231, 0.652344, 0.756746,
		-0.911009, 0.285844, -0.297248,
		-0.410219, -0.701955, 0.582220,
		35.453835, 29.944244, 26.704027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.086823, 30.641912, 26.690077>,  <35.740990, 30.435614, 26.296474>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.086823, 30.641912, 26.690077> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.191559, 30.321653, 26.905630>,  <35.254402, 30.129498, 27.034962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.191559, 30.321653, 26.905630>,  <35.086823, 30.641912, 26.690077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.191559, 30.321653, 26.905630> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331269, 0.449882, 0.829377,
		-0.906476, -0.395684, -0.147431,
		0.261845, -0.800650, 0.538885,
		35.270111, 30.081459, 27.067295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.584457, 30.635427, 27.236853>,  <35.086823, 30.641912, 26.690077>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.584457, 30.635427, 27.236853> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.876884, 30.399712, 27.374418>,  <35.052341, 30.258282, 27.456957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.876884, 30.399712, 27.374418>,  <34.584457, 30.635427, 27.236853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.876884, 30.399712, 27.374418> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203942, 0.292276, 0.934335,
		-0.651114, -0.753199, 0.093492,
		0.731066, -0.589292, 0.343914,
		35.096203, 30.222923, 27.477592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.319736, 30.243145, 27.835440>,  <34.584457, 30.635427, 27.236853>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.319736, 30.243145, 27.835440> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.713970, 30.208166, 27.893370>,  <34.950512, 30.187180, 27.928127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.713970, 30.208166, 27.893370>,  <34.319736, 30.243145, 27.835440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.713970, 30.208166, 27.893370> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114749, 0.283491, 0.952085,
		-0.124314, -0.954979, 0.269370,
		0.985585, -0.087448, 0.144825,
		35.009647, 30.181932, 27.936817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<37.955162, 28.433670, 24.223021> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.236526, 28.321039, 24.484074>,  <38.405346, 28.253460, 24.640705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.236526, 28.321039, 24.484074>,  <37.955162, 28.433670, 24.223021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.236526, 28.321039, 24.484074> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024529, 0.908021, 0.418206,
		-0.710361, -0.310178, 0.631804,
		0.703410, -0.281580, 0.652632,
		38.447548, 28.236565, 24.679863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.765087, 28.608517, 25.032589>,  <37.955162, 28.433670, 24.223021>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.765087, 28.608517, 25.032589> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.160358, 28.586643, 24.975296>,  <38.397522, 28.573519, 24.940920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.160358, 28.586643, 24.975296>,  <37.765087, 28.608517, 25.032589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.160358, 28.586643, 24.975296> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139330, 0.710137, 0.690140,
		0.063974, -0.701937, 0.709360,
		0.988177, -0.054685, -0.143231,
		38.456810, 28.570238, 24.932327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.050011, 28.654320, 25.656443>,  <37.765087, 28.608517, 25.032589>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.050011, 28.654320, 25.656443> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.352295, 28.746895, 25.411383>,  <38.533665, 28.802441, 25.264347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.352295, 28.746895, 25.411383>,  <38.050011, 28.654320, 25.656443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.352295, 28.746895, 25.411383> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286843, 0.724005, 0.627326,
		0.588749, -0.649810, 0.480750,
		0.755708, 0.231438, -0.612651,
		38.579006, 28.816326, 25.227587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.540470, 28.999739, 26.060808>,  <38.050011, 28.654320, 25.656443>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.540470, 28.999739, 26.060808> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.670151, 29.117599, 25.701237>,  <38.747959, 29.188316, 25.485493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.670151, 29.117599, 25.701237>,  <38.540470, 28.999739, 26.060808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.670151, 29.117599, 25.701237> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397384, 0.819929, 0.412071,
		0.858477, -0.490813, 0.148729,
		0.324197, 0.294652, -0.898931,
		38.767410, 29.205996, 25.431557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.218296, 29.298616, 26.256689>,  <38.540470, 28.999739, 26.060808>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.218296, 29.298616, 26.256689> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.102589, 29.434792, 25.898823>,  <39.033165, 29.516497, 25.684103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.102589, 29.434792, 25.898823>,  <39.218296, 29.298616, 26.256689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.102589, 29.434792, 25.898823> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340061, 0.910205, 0.236400,
		0.894809, -0.235858, -0.379063,
		-0.289269, 0.340437, -0.894666,
		39.015808, 29.536922, 25.630423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.895336, 29.556816, 25.996189>,  <39.218296, 29.298616, 26.256689>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.895336, 29.556816, 25.996189> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.588074, 29.730343, 25.807831>,  <39.403717, 29.834459, 25.694817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.588074, 29.730343, 25.807831>,  <39.895336, 29.556816, 25.996189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.588074, 29.730343, 25.807831> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226010, 0.871848, 0.434512,
		0.599047, 0.227345, -0.767761,
		-0.768155, 0.433815, -0.470896,
		39.357628, 29.860487, 25.666561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.153431, 30.197762, 25.830462>,  <39.895336, 29.556816, 25.996189>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.153431, 30.197762, 25.830462> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.758522, 30.261015, 25.823666>,  <39.521576, 30.298967, 25.819588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.758522, 30.261015, 25.823666>,  <40.153431, 30.197762, 25.830462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.758522, 30.261015, 25.823666> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116465, 0.791576, 0.599869,
		0.108309, 0.590254, -0.799918,
		-0.987271, 0.158134, -0.016991,
		39.462341, 30.308455, 25.818569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.051880, 30.941551, 25.688171>,  <40.153431, 30.197762, 25.830462>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.051880, 30.941551, 25.688171> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.686829, 30.842556, 25.818316>,  <39.467796, 30.783159, 25.896402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.686829, 30.842556, 25.818316>,  <40.051880, 30.941551, 25.688171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.686829, 30.842556, 25.818316> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076328, 0.885077, 0.459145,
		-0.401600, 0.394195, -0.826636,
		-0.912629, -0.247488, 0.325359,
		39.413040, 30.768311, 25.915924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.625580, 31.595631, 25.740147>,  <40.051880, 30.941551, 25.688171>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.625580, 31.595631, 25.740147> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.394817, 31.344370, 25.948992>,  <39.256359, 31.193613, 26.074299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.394817, 31.344370, 25.948992>,  <39.625580, 31.595631, 25.740147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.394817, 31.344370, 25.948992> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258927, 0.746884, 0.612471,
		-0.774682, 0.218151, -0.593530,
		-0.576909, -0.628151, 0.522113,
		39.221745, 31.155924, 26.105625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.003922, 31.940874, 25.863424>,  <39.625580, 31.595631, 25.740147>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.003922, 31.940874, 25.863424> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.024208, 31.660761, 26.148249>,  <39.036381, 31.492693, 26.319143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.024208, 31.660761, 26.148249>,  <39.003922, 31.940874, 25.863424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.024208, 31.660761, 26.148249> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128398, 0.702489, 0.700017,
		-0.990425, -0.126932, -0.054284,
		0.050721, -0.700284, 0.712060,
		39.039425, 31.450676, 26.361866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.482403, 31.980476, 26.209248>,  <39.003922, 31.940874, 25.863424>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.482403, 31.980476, 26.209248> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.739628, 31.828320, 26.475109>,  <38.893963, 31.737024, 26.634626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.739628, 31.828320, 26.475109>,  <38.482403, 31.980476, 26.209248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.739628, 31.828320, 26.475109> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330269, 0.645293, 0.688853,
		-0.690934, -0.662493, 0.289333,
		0.643065, -0.380394, 0.664656,
		38.932549, 31.714201, 26.674505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.118217, 31.912493, 26.816442>,  <38.482403, 31.980476, 26.209248>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.118217, 31.912493, 26.816442> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.502090, 31.903484, 26.928513>,  <38.732414, 31.898079, 26.995754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.502090, 31.903484, 26.928513>,  <38.118217, 31.912493, 26.816442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.502090, 31.903484, 26.928513> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193826, 0.668856, 0.717679,
		-0.203558, -0.743051, 0.637526,
		0.959686, -0.022520, 0.280173,
		38.789997, 31.896729, 27.012564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.365955, 31.564163, 26.721748>,  <38.118217, 31.912493, 26.816442>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.365955, 31.564163, 26.721748> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.106987, 31.811865, 26.544043>,  <36.951607, 31.960485, 26.437420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.106987, 31.811865, 26.544043>,  <37.365955, 31.564163, 26.721748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.106987, 31.811865, 26.544043> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056528, -0.542300, -0.838281,
		-0.760033, -0.567835, 0.316092,
		-0.647422, 0.619253, -0.444264,
		36.912762, 31.997641, 26.410763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.862671, 31.213169, 26.546879>,  <37.365955, 31.564163, 26.721748>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.862671, 31.213169, 26.546879> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.847103, 31.528271, 26.300976>,  <36.837765, 31.717333, 26.153435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.847103, 31.528271, 26.300976>,  <36.862671, 31.213169, 26.546879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.847103, 31.528271, 26.300976> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101040, -0.615172, -0.781891,
		-0.994121, 0.031686, 0.103535,
		-0.038917, 0.787755, -0.614757,
		36.835426, 31.764597, 26.116549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.258698, 31.147097, 26.217171>,  <36.862671, 31.213169, 26.546879>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.258698, 31.147097, 26.217171> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.398575, 31.424040, 25.964710>,  <36.482502, 31.590206, 25.813234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.398575, 31.424040, 25.964710>,  <36.258698, 31.147097, 26.217171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.398575, 31.424040, 25.964710> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170689, -0.615327, -0.769570,
		-0.921183, 0.376845, -0.096998,
		0.349695, 0.692359, -0.631152,
		36.503483, 31.631748, 25.775364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.814228, 31.223646, 25.620365>,  <36.258698, 31.147097, 26.217171>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.814228, 31.223646, 25.620365> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.174866, 31.345165, 25.497189>,  <36.391251, 31.418077, 25.423283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.174866, 31.345165, 25.497189>,  <35.814228, 31.223646, 25.620365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.174866, 31.345165, 25.497189> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105982, -0.535050, -0.838146,
		-0.419393, 0.788306, -0.450203,
		0.901597, 0.303799, -0.307943,
		36.445343, 31.436306, 25.404806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.774597, 31.405298, 24.962122>,  <35.814228, 31.223646, 25.620365>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.774597, 31.405298, 24.962122> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.170853, 31.352365, 24.975554>,  <36.408604, 31.320606, 24.983612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.170853, 31.352365, 24.975554>,  <35.774597, 31.405298, 24.962122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.170853, 31.352365, 24.975554> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047740, -0.566197, -0.822886,
		0.127908, 0.813578, -0.567213,
		0.990636, -0.132333, 0.033581,
		36.468044, 31.312666, 24.985628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.094086, 31.635683, 24.292601>,  <35.774597, 31.405298, 24.962122>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.094086, 31.635683, 24.292601> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.367619, 31.380285, 24.433851>,  <36.531738, 31.227047, 24.518602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.367619, 31.380285, 24.433851>,  <36.094086, 31.635683, 24.292601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.367619, 31.380285, 24.433851> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070195, -0.539302, -0.839182,
		0.726255, 0.549071, -0.413612,
		0.683832, -0.638493, 0.353129,
		36.572769, 31.188738, 24.539789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.545860, 31.435415, 23.762646>,  <36.094086, 31.635683, 24.292601>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.545860, 31.435415, 23.762646> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.641308, 31.153679, 24.030067>,  <36.698578, 30.984636, 24.190521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.641308, 31.153679, 24.030067>,  <36.545860, 31.435415, 23.762646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.641308, 31.153679, 24.030067> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170341, -0.647410, -0.742863,
		0.956057, 0.291142, -0.034506,
		0.238618, -0.704342, 0.668554,
		36.712894, 30.942377, 24.230633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.144550, 31.121616, 23.504913>,  <36.545860, 31.435415, 23.762646>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.144550, 31.121616, 23.504913> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.974957, 30.853535, 23.748573>,  <36.873199, 30.692686, 23.894768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.974957, 30.853535, 23.748573>,  <37.144550, 31.121616, 23.504913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.974957, 30.853535, 23.748573> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109074, -0.705485, -0.700281,
		0.899077, -0.230467, 0.372217,
		-0.423985, -0.670206, 0.609148,
		36.847759, 30.652473, 23.931318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.530437, 30.609177, 23.422060>,  <37.144550, 31.121616, 23.504913>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.530437, 30.609177, 23.422060> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.199306, 30.430838, 23.558247>,  <37.000626, 30.323833, 23.639959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.199306, 30.430838, 23.558247>,  <37.530437, 30.609177, 23.422060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.199306, 30.430838, 23.558247> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091764, -0.706365, -0.701874,
		0.553424, -0.549790, 0.625662,
		-0.827829, -0.445847, 0.340468,
		36.950958, 30.297083, 23.660387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698460, 29.910704, 23.416098>,  <37.530437, 30.609177, 23.422060>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.698460, 29.910704, 23.416098> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.299480, 29.934767, 23.400764>,  <37.060093, 29.949205, 23.391565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.299480, 29.934767, 23.400764>,  <37.698460, 29.910704, 23.416098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.299480, 29.934767, 23.400764> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023937, -0.788484, -0.614589,
		-0.067196, -0.612106, 0.787916,
		-0.997453, 0.060158, -0.038331,
		37.000244, 29.952814, 23.389265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.462059, 29.157896, 23.510118>,  <37.698460, 29.910704, 23.416098>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.462059, 29.157896, 23.510118> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.195644, 29.386013, 23.317802>,  <37.035797, 29.522884, 23.202412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.195644, 29.386013, 23.317802>,  <37.462059, 29.157896, 23.510118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.195644, 29.386013, 23.317802> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071392, -0.690341, -0.719953,
		-0.742495, -0.445191, 0.500506,
		-0.666036, 0.570294, -0.480791,
		36.995834, 29.557102, 23.173565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.843552, 28.646376, 23.378300>,  <37.462059, 29.157896, 23.510118>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.843552, 28.646376, 23.378300> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.758686, 28.959036, 23.143690>,  <36.707767, 29.146631, 23.002924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.758686, 28.959036, 23.143690>,  <36.843552, 28.646376, 23.378300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.758686, 28.959036, 23.143690> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334153, -0.622039, -0.708103,
		-0.918329, 0.045753, 0.393166,
		-0.212166, 0.781649, -0.586524,
		36.695038, 29.193531, 22.967733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.189186, 28.452173, 23.061520>,  <36.843552, 28.646376, 23.378300>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.189186, 28.452173, 23.061520> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.409512, 28.712914, 22.853024>,  <36.541706, 28.869358, 22.727926>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.409512, 28.712914, 22.853024>,  <36.189186, 28.452173, 23.061520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.409512, 28.712914, 22.853024> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156890, -0.532520, -0.831750,
		-0.819750, 0.539917, -0.191051,
		0.550814, 0.651853, -0.521240,
		36.574757, 28.908470, 22.696651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.602215, 28.227234, 22.614801>,  <36.189186, 28.452173, 23.061520>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.602215, 28.227234, 22.614801> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.294479, 28.002647, 22.736706>,  <35.109840, 27.867895, 22.809849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.294479, 28.002647, 22.736706>,  <35.602215, 28.227234, 22.614801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.294479, 28.002647, 22.736706> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157838, 0.295205, 0.942306,
		-0.619041, 0.773052, -0.138491,
		-0.769335, -0.561467, 0.304761,
		35.063679, 27.834208, 22.828135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.105698, 28.643496, 23.052706>,  <35.602215, 28.227234, 22.614801>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.105698, 28.643496, 23.052706> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.056847, 28.257305, 23.144745>,  <35.027534, 28.025591, 23.199968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.056847, 28.257305, 23.144745>,  <35.105698, 28.643496, 23.052706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.056847, 28.257305, 23.144745> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093150, 0.241958, 0.965805,
		-0.988133, 0.096519, -0.119484,
		-0.122128, -0.965474, 0.230096,
		35.020206, 27.967663, 23.213774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.495605, 28.534925, 23.502050>,  <35.105698, 28.643496, 23.052706>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.495605, 28.534925, 23.502050> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.746471, 28.232622, 23.577417>,  <34.896992, 28.051241, 23.622637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.746471, 28.232622, 23.577417>,  <34.495605, 28.534925, 23.502050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.746471, 28.232622, 23.577417> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090032, 0.169943, 0.981332,
		-0.773669, -0.632417, 0.038539,
		0.627161, -0.755757, 0.188417,
		34.934620, 28.005896, 23.633944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.201923, 28.270195, 23.987909>,  <34.495605, 28.534925, 23.502050>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.201923, 28.270195, 23.987909> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.575806, 28.131781, 24.020351>,  <34.800137, 28.048733, 24.039816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.575806, 28.131781, 24.020351>,  <34.201923, 28.270195, 23.987909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.575806, 28.131781, 24.020351> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018802, 0.179733, 0.983536,
		-0.354916, -0.920845, 0.161491,
		0.934709, -0.346036, 0.081104,
		34.856220, 28.027969, 24.044683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.257935, 27.886705, 24.700565>,  <34.201923, 28.270195, 23.987909>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.257935, 27.886705, 24.700565> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.639977, 27.949465, 24.600044>,  <34.869202, 27.987122, 24.539732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.639977, 27.949465, 24.600044>,  <34.257935, 27.886705, 24.700565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.639977, 27.949465, 24.600044> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229047, 0.146939, 0.962261,
		0.187911, -0.976622, 0.104404,
		0.955106, 0.156906, -0.251304,
		34.926510, 27.996534, 24.524652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.558697, 27.670408, 25.275276>,  <34.257935, 27.886705, 24.700565>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.558697, 27.670408, 25.275276> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.841026, 27.894718, 25.102146>,  <35.010426, 28.029305, 24.998268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.841026, 27.894718, 25.102146>,  <34.558697, 27.670408, 25.275276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.841026, 27.894718, 25.102146> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150657, 0.478193, 0.865236,
		0.692180, -0.675914, 0.253036,
		0.705826, 0.560777, -0.432826,
		35.052773, 28.062952, 24.972298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.075603, 27.615665, 25.743740>,  <34.558697, 27.670408, 25.275276>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.075603, 27.615665, 25.743740> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.170280, 27.939369, 25.528675>,  <35.227089, 28.133591, 25.399637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.170280, 27.939369, 25.528675>,  <35.075603, 27.615665, 25.743740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.170280, 27.939369, 25.528675> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179112, 0.507556, 0.842796,
		0.954932, -0.295787, -0.024811,
		0.236695, 0.809257, -0.537660,
		35.241287, 28.182146, 25.367376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.744678, 27.873247, 25.987494>,  <35.075603, 27.615665, 25.743740>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.744678, 27.873247, 25.987494> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.552212, 28.169992, 25.800682>,  <35.436733, 28.348040, 25.688595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.552212, 28.169992, 25.800682>,  <35.744678, 27.873247, 25.987494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.552212, 28.169992, 25.800682> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115299, 0.581683, 0.805202,
		0.869013, 0.333589, -0.365423,
		-0.481167, 0.741864, -0.467028,
		35.407860, 28.392551, 25.660574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.235710, 27.807951, 26.583824>,  <35.744678, 27.873247, 25.987494>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.235710, 27.807951, 26.583824> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.970646, 27.524424, 26.680540>,  <35.811607, 27.354307, 26.738569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.970646, 27.524424, 26.680540>,  <36.235710, 27.807951, 26.583824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.970646, 27.524424, 26.680540> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368537, -0.589681, -0.718649,
		0.651969, -0.387110, 0.651983,
		-0.662659, -0.708817, 0.241790,
		35.771847, 27.311779, 26.753077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.591385, 27.135620, 26.617594>,  <36.235710, 27.807951, 26.583824>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.591385, 27.135620, 26.617594> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.212292, 27.013092, 26.581888>,  <35.984837, 26.939575, 26.560465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.212292, 27.013092, 26.581888>,  <36.591385, 27.135620, 26.617594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.212292, 27.013092, 26.581888> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299785, -0.759155, -0.577765,
		0.109215, -0.574327, 0.811308,
		-0.947735, -0.306319, -0.089264,
		35.927971, 26.921196, 26.555109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.702171, 26.439564, 26.635496>,  <36.591385, 27.135620, 26.617594>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.702171, 26.439564, 26.635496> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.335415, 26.508310, 26.491400>,  <36.115360, 26.549559, 26.404942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.335415, 26.508310, 26.491400>,  <36.702171, 26.439564, 26.635496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.335415, 26.508310, 26.491400> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188488, -0.609125, -0.770350,
		-0.351829, -0.774228, 0.526106,
		-0.916891, 0.171867, -0.360240,
		36.060349, 26.559870, 26.383327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.338280, 25.832220, 26.497486>,  <36.702171, 26.439564, 26.635496>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.338280, 25.832220, 26.497486> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.202396, 26.128534, 26.265678>,  <36.120869, 26.306322, 26.126595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.202396, 26.128534, 26.265678>,  <36.338280, 25.832220, 26.497486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.202396, 26.128534, 26.265678> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262670, -0.516919, -0.814738,
		-0.903109, -0.428992, -0.018983,
		-0.339704, 0.740784, -0.579518,
		36.100487, 26.350769, 26.091824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.992218, 25.438616, 25.872414>,  <36.338280, 25.832220, 26.497486>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.992218, 25.438616, 25.872414> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.005028, 25.797749, 25.696745>,  <36.012714, 26.013229, 25.591345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.005028, 25.797749, 25.696745>,  <35.992218, 25.438616, 25.872414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.005028, 25.797749, 25.696745> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427276, -0.409518, -0.806058,
		-0.903554, -0.161836, -0.396736,
		0.032021, 0.897833, -0.439170,
		36.014633, 26.067099, 25.564993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.738556, 25.338709, 25.158562>,  <35.992218, 25.438616, 25.872414>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.738556, 25.338709, 25.158562> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.921227, 25.694433, 25.148981>,  <36.030830, 25.907867, 25.143232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.921227, 25.694433, 25.148981>,  <35.738556, 25.338709, 25.158562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.921227, 25.694433, 25.148981> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323712, -0.191189, -0.926638,
		-0.828647, 0.415422, -0.375192,
		0.456678, 0.889310, -0.023951,
		36.058231, 25.961226, 25.141796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.359783, 25.668676, 24.708235>,  <35.738556, 25.338709, 25.158562>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.359783, 25.668676, 24.708235> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.732975, 25.809992, 24.735786>,  <35.956890, 25.894781, 24.752317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.732975, 25.809992, 24.735786>,  <35.359783, 25.668676, 24.708235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.732975, 25.809992, 24.735786> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182446, -0.299205, -0.936584,
		-0.310276, 0.886376, -0.343607,
		0.932975, 0.353289, 0.068880,
		36.012867, 25.915979, 24.756451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.559883, 25.991262, 24.064613>,  <35.359783, 25.668676, 24.708235>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.559883, 25.991262, 24.064613> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.924416, 25.932135, 24.218296>,  <36.143135, 25.896658, 24.310507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.924416, 25.932135, 24.218296>,  <35.559883, 25.991262, 24.064613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.924416, 25.932135, 24.218296> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323892, -0.318587, -0.890840,
		0.254088, 0.936297, -0.242462,
		0.911336, -0.147820, 0.384209,
		36.197815, 25.887789, 24.333559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.015785, 26.339188, 23.557592>,  <35.559883, 25.991262, 24.064613>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.015785, 26.339188, 23.557592> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.245895, 26.098684, 23.779421>,  <36.383961, 25.954382, 23.912518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.245895, 26.098684, 23.779421>,  <36.015785, 26.339188, 23.557592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.245895, 26.098684, 23.779421> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517629, -0.257366, -0.815980,
		0.633342, 0.756473, 0.163173,
		0.575272, -0.601257, 0.554573,
		36.418476, 25.918306, 23.945793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<33.693138, 33.607685, 37.761086> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.047249, 33.479740, 37.896126>,  <34.259716, 33.402973, 37.977150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.047249, 33.479740, 37.896126>,  <33.693138, 33.607685, 37.761086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.047249, 33.479740, 37.896126> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114196, -0.554182, -0.824525,
		0.450825, 0.768486, -0.454077,
		0.885277, -0.319863, 0.337597,
		34.312832, 33.383781, 37.997406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.287056, 33.756905, 37.290710>,  <33.693138, 33.607685, 37.761086>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.287056, 33.756905, 37.290710> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.358746, 33.426785, 37.504906>,  <34.401760, 33.228710, 37.633423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.358746, 33.426785, 37.504906>,  <34.287056, 33.756905, 37.290710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.358746, 33.426785, 37.504906> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047186, -0.536466, -0.842602,
		0.982676, 0.176284, -0.057205,
		0.179226, -0.825305, 0.535490,
		34.412514, 33.179192, 37.665554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.891441, 33.397602, 37.008030>,  <34.287056, 33.756905, 37.290710>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.891441, 33.397602, 37.008030> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.650917, 33.133312, 37.187748>,  <34.506603, 32.974739, 37.295578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.650917, 33.133312, 37.187748>,  <34.891441, 33.397602, 37.008030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.650917, 33.133312, 37.187748> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099048, -0.619617, -0.778630,
		0.792851, -0.423698, 0.438027,
		-0.601313, -0.660723, 0.449297,
		34.470524, 32.935097, 37.322536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.079681, 32.767384, 36.825974>,  <34.891441, 33.397602, 37.008030>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.079681, 32.767384, 36.825974> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.709812, 32.694160, 36.959526>,  <34.487892, 32.650227, 37.039658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.709812, 32.694160, 36.959526>,  <35.079681, 32.767384, 36.825974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.709812, 32.694160, 36.959526> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088479, -0.749555, -0.656002,
		0.370345, -0.636127, 0.676895,
		-0.924671, -0.183056, 0.333878,
		34.432411, 32.639244, 37.059689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.150448, 32.037918, 36.859562>,  <35.079681, 32.767384, 36.825974>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.150448, 32.037918, 36.859562> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.765472, 32.139965, 36.822407>,  <34.534489, 32.201195, 36.800114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.765472, 32.139965, 36.822407>,  <35.150448, 32.037918, 36.859562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.765472, 32.139965, 36.822407> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126610, -0.724384, -0.677670,
		-0.240172, -0.640455, 0.729476,
		-0.962438, 0.255116, -0.092889,
		34.476742, 32.216499, 36.794540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.736794, 31.366558, 36.784718>,  <35.150448, 32.037918, 36.859562>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.736794, 31.366558, 36.784718> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.533005, 31.671602, 36.625286>,  <34.410732, 31.854630, 36.529629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.533005, 31.671602, 36.625286>,  <34.736794, 31.366558, 36.784718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.533005, 31.671602, 36.625286> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334493, -0.602287, -0.724820,
		-0.792815, -0.235952, 0.561935,
		-0.509469, 0.762612, -0.398578,
		34.380165, 31.900385, 36.505714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.116608, 31.075184, 36.589008>,  <34.736794, 31.366558, 36.784718>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.116608, 31.075184, 36.589008> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.157192, 31.409908, 36.373806>,  <34.181545, 31.610743, 36.244686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.157192, 31.409908, 36.373806>,  <34.116608, 31.075184, 36.589008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.157192, 31.409908, 36.373806> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377968, -0.467820, -0.798927,
		-0.920241, 0.284413, 0.268821,
		0.101466, 0.836811, -0.538007,
		34.187634, 31.660952, 36.212402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.595406, 31.058899, 36.196312>,  <34.116608, 31.075184, 36.589008>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.595406, 31.058899, 36.196312> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.792572, 31.363758, 36.028423>,  <33.910873, 31.546673, 35.927689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.792572, 31.363758, 36.028423>,  <33.595406, 31.058899, 36.196312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.792572, 31.363758, 36.028423> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257646, -0.332906, -0.907079,
		-0.831055, 0.555254, 0.032269,
		0.492917, 0.762146, -0.419722,
		33.940449, 31.592402, 35.902508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.155369, 31.427183, 35.805683>,  <33.595406, 31.058899, 36.196312>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.155369, 31.427183, 35.805683> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.522476, 31.486433, 35.658306>,  <33.742741, 31.521984, 35.569878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.522476, 31.486433, 35.658306>,  <33.155369, 31.427183, 35.805683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.522476, 31.486433, 35.658306> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280824, -0.413915, -0.865917,
		-0.280771, 0.898183, -0.338282,
		0.917772, 0.148127, -0.368447,
		33.797810, 31.530870, 35.547771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.031364, 31.661272, 35.115768>,  <33.155369, 31.427183, 35.805683>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.031364, 31.661272, 35.115768> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.418026, 31.559292, 35.125439>,  <33.650024, 31.498104, 35.131241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.418026, 31.559292, 35.125439>,  <33.031364, 31.661272, 35.115768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.418026, 31.559292, 35.125439> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084004, -0.404836, -0.910523,
		0.241923, 0.878128, -0.412752,
		0.966652, -0.254950, 0.024173,
		33.708023, 31.482807, 35.132690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.224831, 31.851778, 34.326874>,  <33.031364, 31.661272, 35.115768>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.224831, 31.851778, 34.326874> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.508339, 31.622078, 34.490768>,  <33.678444, 31.484259, 34.589108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.508339, 31.622078, 34.490768>,  <33.224831, 31.851778, 34.326874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.508339, 31.622078, 34.490768> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078405, -0.513103, -0.854738,
		0.701072, 0.637936, -0.318646,
		0.708767, -0.574250, 0.409740,
		33.720970, 31.449802, 34.613689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.882591, 31.927570, 33.919876>,  <33.224831, 31.851778, 34.326874>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.882591, 31.927570, 33.919876> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.848686, 31.574690, 34.105148>,  <33.828342, 31.362963, 34.216312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.848686, 31.574690, 34.105148>,  <33.882591, 31.927570, 33.919876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.848686, 31.574690, 34.105148> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058682, -0.459630, -0.886170,
		0.994672, -0.102295, -0.012810,
		-0.084763, -0.882199, 0.463184,
		33.823257, 31.310030, 34.244102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.249859, 32.593250, 33.705772>,  <33.882591, 31.927570, 33.919876>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.249859, 32.593250, 33.705772> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.127022, 32.780586, 33.374386>,  <34.053318, 32.892986, 33.175556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.127022, 32.780586, 33.374386>,  <34.249859, 32.593250, 33.705772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.127022, 32.780586, 33.374386> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291154, 0.782553, 0.550309,
		0.906047, 0.410208, -0.103961,
		-0.307096, 0.468337, -0.828464,
		34.034893, 32.921089, 33.125847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.696552, 33.160831, 33.647167>,  <34.249859, 32.593250, 33.705772>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.696552, 33.160831, 33.647167> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.353260, 33.222778, 33.451427>,  <34.147285, 33.259949, 33.333984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.353260, 33.222778, 33.451427>,  <34.696552, 33.160831, 33.647167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.353260, 33.222778, 33.451427> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203597, 0.772457, 0.601547,
		0.471160, 0.615894, -0.631414,
		-0.858229, 0.154871, -0.489345,
		34.095791, 33.269241, 33.304623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.656765, 33.860672, 33.768654>,  <34.696552, 33.160831, 33.647167>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.656765, 33.860672, 33.768654> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.313583, 33.754261, 33.592861>,  <34.107674, 33.690414, 33.487385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.313583, 33.754261, 33.592861>,  <34.656765, 33.860672, 33.768654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.313583, 33.754261, 33.592861> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397598, 0.885580, 0.240133,
		0.325311, 0.380759, -0.865561,
		-0.857956, -0.266027, -0.439478,
		34.056198, 33.674454, 33.461018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.401985, 34.415627, 33.198406>,  <34.656765, 33.860672, 33.768654>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.401985, 34.415627, 33.198406> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.086834, 34.207741, 33.330547>,  <33.897743, 34.083008, 33.409832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.086834, 34.207741, 33.330547>,  <34.401985, 34.415627, 33.198406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.086834, 34.207741, 33.330547> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450878, 0.852218, 0.265393,
		-0.419466, 0.060147, -0.905776,
		-0.787881, -0.519718, 0.330357,
		33.850468, 34.051826, 33.429653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.795956, 34.660896, 32.897667>,  <34.401985, 34.415627, 33.198406>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.795956, 34.660896, 32.897667> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.635666, 34.472851, 33.212223>,  <33.539494, 34.360023, 33.400955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.635666, 34.472851, 33.212223>,  <33.795956, 34.660896, 32.897667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.635666, 34.472851, 33.212223> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397575, 0.862522, 0.313035,
		-0.825441, -0.187207, -0.532541,
		-0.400726, -0.470117, 0.786390,
		33.515450, 34.331818, 33.448139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.149643, 34.924309, 32.986507>,  <33.795956, 34.660896, 32.897667>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.149643, 34.924309, 32.986507> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.211254, 34.739620, 33.335926>,  <33.248219, 34.628807, 33.545578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.211254, 34.739620, 33.335926>,  <33.149643, 34.924309, 32.986507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.211254, 34.739620, 33.335926> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358609, 0.797691, 0.484860,
		-0.920693, -0.387943, -0.042714,
		0.154026, -0.461725, 0.873548,
		33.257462, 34.601101, 33.597992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.476349, 34.893429, 33.353004>,  <33.149643, 34.924309, 32.986507>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.476349, 34.893429, 33.353004> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.736870, 34.837532, 33.651340>,  <32.893181, 34.803993, 33.830341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.736870, 34.837532, 33.651340>,  <32.476349, 34.893429, 33.353004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.736870, 34.837532, 33.651340> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537915, 0.608237, 0.583691,
		-0.535218, -0.781357, 0.320972,
		0.651298, -0.139746, 0.745843,
		32.932259, 34.795609, 33.875092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.073612, 34.867847, 33.996868>,  <32.476349, 34.893429, 33.353004>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.073612, 34.867847, 33.996868> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.446091, 34.915390, 34.134705>,  <32.669579, 34.943916, 34.217407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.446091, 34.915390, 34.134705>,  <32.073612, 34.867847, 33.996868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.446091, 34.915390, 34.134705> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329089, 0.680642, 0.654544,
		-0.156746, -0.722911, 0.672927,
		0.931199, 0.118856, 0.344590,
		32.725449, 34.951046, 34.238083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.056393, 34.831821, 34.771645>,  <32.073612, 34.867847, 33.996868>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.056393, 34.831821, 34.771645> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.368481, 35.045933, 34.642193>,  <32.555733, 35.174400, 34.564522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.368481, 35.045933, 34.642193>,  <32.056393, 34.831821, 34.771645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.368481, 35.045933, 34.642193> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236368, 0.731326, 0.639760,
		0.579124, -0.422660, 0.697118,
		0.780221, 0.535277, -0.323625,
		32.602547, 35.206516, 34.545105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.095413, 35.258358, 35.341991>,  <32.056393, 34.831821, 34.771645>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.095413, 35.258358, 35.341991> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.315804, 35.413696, 35.046528>,  <32.448036, 35.506901, 34.869251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.315804, 35.413696, 35.046528>,  <32.095413, 35.258358, 35.341991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.315804, 35.413696, 35.046528> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151143, 0.916923, 0.369336,
		0.820721, -0.091852, 0.563897,
		0.550974, 0.388350, -0.738654,
		32.481094, 35.530201, 34.824932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.571503, 35.782227, 35.656013>,  <32.095413, 35.258358, 35.341991>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.571503, 35.782227, 35.656013> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.530617, 35.862591, 35.266308>,  <32.506084, 35.910809, 35.032486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.530617, 35.862591, 35.266308>,  <32.571503, 35.782227, 35.656013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.530617, 35.862591, 35.266308> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169432, 0.968597, 0.181965,
		0.980227, -0.146471, -0.133048,
		-0.102218, 0.200910, -0.974262,
		32.499950, 35.922863, 34.974030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.099415, 36.328560, 35.501850>,  <32.571503, 35.782227, 35.656013>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.099415, 36.328560, 35.501850> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.819592, 36.343327, 35.216400>,  <32.651699, 36.352184, 35.045132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.819592, 36.343327, 35.216400>,  <33.099415, 36.328560, 35.501850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.819592, 36.343327, 35.216400> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097054, 0.984502, 0.146066,
		0.707955, 0.171442, -0.685133,
		-0.699557, 0.036913, -0.713622,
		32.609726, 36.354401, 35.002312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.345356, 36.842403, 35.096210>,  <33.099415, 36.328560, 35.501850>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.345356, 36.842403, 35.096210> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.954380, 36.826740, 35.013191>,  <32.719795, 36.817341, 34.963379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.954380, 36.826740, 35.013191>,  <33.345356, 36.842403, 35.096210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.954380, 36.826740, 35.013191> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060060, 0.993627, 0.095382,
		0.202492, 0.105695, -0.973563,
		-0.977441, -0.039158, -0.207549,
		32.661148, 36.814991, 34.950928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.182629, 37.366810, 34.558331>,  <33.345356, 36.842403, 35.096210>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.182629, 37.366810, 34.558331> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.841042, 37.295265, 34.753777>,  <32.636089, 37.252338, 34.871044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.841042, 37.295265, 34.753777>,  <33.182629, 37.366810, 34.558331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.841042, 37.295265, 34.753777> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202135, 0.979344, 0.005210,
		-0.479454, -0.094317, -0.872484,
		-0.853970, -0.178858, 0.488615,
		32.584850, 37.241608, 34.900360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.335239, 38.067642, 34.738419>,  <33.182629, 37.366810, 34.558331>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.335239, 38.067642, 34.738419> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.589283, 38.352234, 34.858711>,  <33.741707, 38.522987, 34.930885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.589283, 38.352234, 34.858711>,  <33.335239, 38.067642, 34.738419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.589283, 38.352234, 34.858711> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260274, 0.169447, -0.950550,
		-0.727255, 0.681971, -0.077563,
		0.635105, 0.711480, 0.300730,
		33.779816, 38.565678, 34.948929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.126869, 38.701473, 34.384186>,  <33.335239, 38.067642, 34.738419>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.126869, 38.701473, 34.384186> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.511192, 38.627449, 34.466743>,  <33.741787, 38.583035, 34.516277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.511192, 38.627449, 34.466743>,  <33.126869, 38.701473, 34.384186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.511192, 38.627449, 34.466743> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196477, -0.070626, -0.977962,
		0.195563, 0.980185, -0.031498,
		0.960808, -0.185064, 0.206396,
		33.799435, 38.571930, 34.528664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.629978, 39.067612, 33.910042>,  <33.126869, 38.701473, 34.384186>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.629978, 39.067612, 33.910042> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.788971, 38.727280, 34.047504>,  <33.884365, 38.523079, 34.129982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.788971, 38.727280, 34.047504>,  <33.629978, 39.067612, 33.910042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.788971, 38.727280, 34.047504> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370030, -0.194087, -0.908520,
		0.839696, 0.488279, 0.237687,
		0.397479, -0.850831, 0.343652,
		33.908215, 38.472031, 34.150600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.258343, 39.107792, 33.742783>,  <33.629978, 39.067612, 33.910042>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.258343, 39.107792, 33.742783> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.183319, 38.718693, 33.797318>,  <34.138306, 38.485233, 33.830036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.183319, 38.718693, 33.797318>,  <34.258343, 39.107792, 33.742783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.183319, 38.718693, 33.797318> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316408, -0.191233, -0.929148,
		0.929896, -0.131136, 0.343653,
		-0.187563, -0.972745, 0.136334,
		34.127048, 38.426868, 33.838219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.768730, 38.815277, 33.376472>,  <34.258343, 39.107792, 33.742783>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.768730, 38.815277, 33.376472> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.534016, 38.494873, 33.423916>,  <34.393185, 38.302631, 33.452381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.534016, 38.494873, 33.423916>,  <34.768730, 38.815277, 33.376472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.534016, 38.494873, 33.423916> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395254, -0.411174, -0.821407,
		0.706721, -0.435112, 0.557874,
		-0.586788, -0.801007, 0.118605,
		34.357979, 38.254570, 33.459496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.133343, 38.227722, 33.397141>,  <34.768730, 38.815277, 33.376472>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.133343, 38.227722, 33.397141> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.782372, 38.069263, 33.288933>,  <34.571789, 37.974186, 33.224007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.782372, 38.069263, 33.288933>,  <35.133343, 38.227722, 33.397141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.782372, 38.069263, 33.288933> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468304, -0.585186, -0.662003,
		0.103948, -0.707547, 0.698979,
		-0.877431, -0.396149, -0.270518,
		34.519142, 37.950420, 33.207779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.324348, 37.548035, 33.255463>,  <35.133343, 38.227722, 33.397141>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.324348, 37.548035, 33.255463> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.968441, 37.593613, 33.078678>,  <34.754898, 37.620960, 32.972607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.968441, 37.593613, 33.078678>,  <35.324348, 37.548035, 33.255463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.968441, 37.593613, 33.078678> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229895, -0.724631, -0.649661,
		-0.394283, -0.679652, 0.618558,
		-0.889769, 0.113947, -0.441958,
		34.701511, 37.627796, 32.946091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.107117, 36.851002, 33.171310>,  <35.324348, 37.548035, 33.255463>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.107117, 36.851002, 33.171310> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.910942, 37.069305, 32.899540>,  <34.793236, 37.200287, 32.736477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.910942, 37.069305, 32.899540>,  <35.107117, 36.851002, 33.171310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.910942, 37.069305, 32.899540> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185626, -0.696315, -0.693317,
		-0.851477, -0.466149, 0.240193,
		-0.490439, 0.545758, -0.679425,
		34.763809, 37.233032, 32.695713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.871174, 36.327477, 32.726597>,  <35.107117, 36.851002, 33.171310>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.871174, 36.327477, 32.726597> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.827328, 36.667194, 32.520027>,  <34.801022, 36.871025, 32.396088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.827328, 36.667194, 32.520027>,  <34.871174, 36.327477, 32.726597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.827328, 36.667194, 32.520027> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141756, -0.500882, -0.853828,
		-0.983814, -0.166798, -0.065488,
		-0.109615, 0.849291, -0.516420,
		34.794445, 36.921982, 32.365101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.378521, 36.190552, 32.258987>,  <34.871174, 36.327477, 32.726597>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.378521, 36.190552, 32.258987> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.578968, 36.500408, 32.104683>,  <34.699234, 36.686321, 32.012100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.578968, 36.500408, 32.104683>,  <34.378521, 36.190552, 32.258987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.578968, 36.500408, 32.104683> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131082, -0.508574, -0.850981,
		-0.855395, 0.375873, -0.356396,
		0.501115, 0.774643, -0.385762,
		34.729301, 36.732800, 31.988955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.036297, 36.372799, 31.611494>,  <34.378521, 36.190552, 32.258987>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.036297, 36.372799, 31.611494> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.402149, 36.533852, 31.596834>,  <34.621658, 36.630486, 31.588039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.402149, 36.533852, 31.596834>,  <34.036297, 36.372799, 31.611494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.402149, 36.533852, 31.596834> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170306, -0.465901, -0.868293,
		-0.366680, 0.787922, -0.494696,
		0.914627, 0.402635, -0.036648,
		34.676537, 36.654644, 31.585840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.091766, 36.741467, 30.990625>,  <34.036297, 36.372799, 31.611494>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.091766, 36.741467, 30.990625> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.477394, 36.689358, 31.083231>,  <34.708771, 36.658092, 31.138794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.477394, 36.689358, 31.083231>,  <34.091766, 36.741467, 30.990625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.477394, 36.689358, 31.083231> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200039, -0.217433, -0.955357,
		0.174799, 0.967342, -0.183560,
		0.964069, -0.130276, 0.231513,
		34.766617, 36.650276, 31.152685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.479778, 37.041241, 30.515020>,  <34.091766, 36.741467, 30.990625>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.479778, 37.041241, 30.515020> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.727776, 36.769474, 30.671993>,  <34.876572, 36.606415, 30.766176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.727776, 36.769474, 30.671993>,  <34.479778, 37.041241, 30.515020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.727776, 36.769474, 30.671993> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294610, -0.261977, -0.919006,
		0.727199, 0.685389, 0.037741,
		0.619990, -0.679419, 0.392432,
		34.913773, 36.565647, 30.789722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.102409, 37.118908, 30.086481>,  <34.479778, 37.041241, 30.515020>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.102409, 37.118908, 30.086481> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.109638, 36.756195, 30.254969>,  <35.113976, 36.538567, 30.356060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.109638, 36.756195, 30.254969>,  <35.102409, 37.118908, 30.086481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.109638, 36.756195, 30.254969> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324125, -0.393223, -0.860418,
		0.945841, 0.152076, 0.286805,
		0.018070, -0.906779, 0.421218,
		35.115059, 36.484161, 30.381334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.587234, 36.733929, 29.665462>,  <35.102409, 37.118908, 30.086481>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.587234, 36.733929, 29.665462> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.430199, 36.436146, 29.881481>,  <35.335979, 36.257477, 30.011093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.430199, 36.436146, 29.881481>,  <35.587234, 36.733929, 29.665462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.430199, 36.436146, 29.881481> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257197, -0.652631, -0.712687,
		0.883020, -0.140893, 0.447688,
		-0.392588, -0.744461, 0.540049,
		35.312424, 36.212807, 30.043495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.111206, 36.167904, 29.730621>,  <35.587234, 36.733929, 29.665462>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.111206, 36.167904, 29.730621> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.778889, 35.967148, 29.826859>,  <35.579498, 35.846695, 29.884602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.778889, 35.967148, 29.826859>,  <36.111206, 36.167904, 29.730621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.778889, 35.967148, 29.826859> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331253, -0.793252, -0.510904,
		0.447270, -0.344759, 0.825283,
		-0.830796, -0.501889, 0.240595,
		35.529652, 35.816582, 29.899036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.307594, 35.489807, 29.927397>,  <36.111206, 36.167904, 29.730621>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.307594, 35.489807, 29.927397> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.925625, 35.477814, 29.809261>,  <35.696445, 35.470615, 29.738380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.925625, 35.477814, 29.809261>,  <36.307594, 35.489807, 29.927397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.925625, 35.477814, 29.809261> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201516, -0.796021, -0.570737,
		-0.217981, -0.604525, 0.766181,
		-0.954922, -0.029988, -0.295339,
		35.639149, 35.468819, 29.720659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.042496, 34.811527, 30.070797>,  <36.307594, 35.489807, 29.927397>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.042496, 34.811527, 30.070797> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.816788, 34.975315, 29.784042>,  <35.681362, 35.073589, 29.611990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.816788, 34.975315, 29.784042>,  <36.042496, 34.811527, 30.070797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.816788, 34.975315, 29.784042> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086757, -0.834118, -0.544720,
		-0.821020, -0.369563, 0.435142,
		-0.564268, 0.409474, -0.716890,
		35.647507, 35.098156, 29.568975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.585491, 34.311249, 29.865643>,  <36.042496, 34.811527, 30.070797>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.585491, 34.311249, 29.865643> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.573658, 34.572948, 29.563362>,  <35.566559, 34.729969, 29.381994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.573658, 34.572948, 29.563362>,  <35.585491, 34.311249, 29.865643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.573658, 34.572948, 29.563362> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070221, -0.755523, -0.651348,
		-0.997093, 0.033794, 0.068296,
		-0.029587, 0.654250, -0.755700,
		35.564781, 34.769222, 29.336653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.272182, 33.931812, 29.405460>,  <35.585491, 34.311249, 29.865643>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.272182, 33.931812, 29.405460> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.418213, 34.232738, 29.186102>,  <35.505833, 34.413296, 29.054487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.418213, 34.232738, 29.186102>,  <35.272182, 33.931812, 29.405460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.418213, 34.232738, 29.186102> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279406, -0.650443, -0.706298,
		-0.888059, 0.104629, -0.447664,
		0.365079, 0.752314, -0.548398,
		35.527737, 34.458431, 29.021582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.888916, 33.920612, 28.678461>,  <35.272182, 33.931812, 29.405460>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.888916, 33.920612, 28.678461> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.245747, 34.097542, 28.641464>,  <35.459846, 34.203697, 28.619267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.245747, 34.097542, 28.641464>,  <34.888916, 33.920612, 28.678461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.245747, 34.097542, 28.641464> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234208, -0.627606, -0.742467,
		-0.386455, 0.640675, -0.663466,
		0.892076, 0.442319, -0.092490,
		35.513371, 34.230236, 28.613718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.870735, 33.980537, 28.014381>,  <34.888916, 33.920612, 28.678461>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.870735, 33.980537, 28.014381> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.257294, 34.025730, 28.106743>,  <35.489227, 34.052845, 28.162159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.257294, 34.025730, 28.106743>,  <34.870735, 33.980537, 28.014381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.257294, 34.025730, 28.106743> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256326, -0.491533, -0.832281,
		0.019462, 0.863499, -0.503976,
		0.966394, 0.112984, 0.230903,
		35.547211, 34.059624, 28.176014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.140347, 33.940430, 27.359331>,  <34.870735, 33.980537, 28.014381>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.140347, 33.940430, 27.359331> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.455143, 33.893032, 27.601524>,  <35.644020, 33.864594, 27.746841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.455143, 33.893032, 27.601524>,  <35.140347, 33.940430, 27.359331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.455143, 33.893032, 27.601524> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412577, -0.628606, -0.659269,
		0.458728, 0.768645, -0.445818,
		0.786987, -0.118491, 0.605484,
		35.691238, 33.857483, 27.783169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.665157, 33.963085, 26.954809>,  <35.140347, 33.940430, 27.359331>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.665157, 33.963085, 26.954809> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.819736, 33.785973, 27.278439>,  <35.912483, 33.679703, 27.472616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.819736, 33.785973, 27.278439>,  <35.665157, 33.963085, 26.954809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.819736, 33.785973, 27.278439> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543793, -0.599145, -0.587634,
		0.744947, 0.667059, 0.009244,
		0.386448, -0.442784, 0.809074,
		35.935673, 33.653137, 27.521160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.415726, 33.855812, 26.841633>,  <35.665157, 33.963085, 26.954809>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.415726, 33.855812, 26.841633> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.329227, 33.589813, 27.127573>,  <36.277328, 33.430214, 27.299137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.329227, 33.589813, 27.127573>,  <36.415726, 33.855812, 26.841633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.329227, 33.589813, 27.127573> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361215, -0.734715, -0.574211,
		0.907062, 0.134044, 0.399088,
		-0.216247, -0.665002, 0.714850,
		36.264355, 33.390312, 27.342028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.025124, 33.556152, 26.922581>,  <36.415726, 33.855812, 26.841633>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.025124, 33.556152, 26.922581> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.756355, 33.292984, 27.058615>,  <36.595093, 33.135082, 27.140236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.756355, 33.292984, 27.058615>,  <37.025124, 33.556152, 26.922581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.756355, 33.292984, 27.058615> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371592, -0.696692, -0.613629,
		0.640653, -0.285939, 0.712602,
		-0.671925, -0.657920, 0.340085,
		36.554779, 33.095608, 27.160641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.399445, 32.864597, 27.057209>,  <37.025124, 33.556152, 26.922581>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.399445, 32.864597, 27.057209> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.013897, 32.780319, 26.992014>,  <36.782570, 32.729752, 26.952896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.013897, 32.780319, 26.992014>,  <37.399445, 32.864597, 27.057209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.013897, 32.780319, 26.992014> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263359, -0.661871, -0.701832,
		0.039996, -0.719398, 0.693445,
		-0.963868, -0.210696, -0.162988,
		36.724735, 32.717110, 26.943117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.447346, 32.189152, 27.095261>,  <37.399445, 32.864597, 27.057209>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.447346, 32.189152, 27.095261> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.111607, 32.276909, 26.896317>,  <36.910164, 32.329563, 26.776951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.111607, 32.276909, 26.896317>,  <37.447346, 32.189152, 27.095261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.111607, 32.276909, 26.896317> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210805, -0.711970, -0.669821,
		-0.501059, -0.667057, 0.551339,
		-0.839345, 0.219395, -0.497358,
		36.859802, 32.342728, 26.747108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.053570, 31.946079, 27.603354>,  <37.447346, 32.189152, 27.095261>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.053570, 31.946079, 27.603354> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.450333, 31.994678, 27.588634>,  <38.688393, 32.023838, 27.579803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.450333, 31.994678, 27.588634>,  <38.053570, 31.946079, 27.603354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.450333, 31.994678, 27.588634> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027489, 0.488546, 0.872105,
		0.123935, -0.864038, 0.487934,
		0.991910, 0.121497, -0.036797,
		38.747906, 32.031128, 27.577595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.384884, 31.701483, 28.290707>,  <38.053570, 31.946079, 27.603354>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.384884, 31.701483, 28.290707> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.633018, 31.948772, 28.097631>,  <38.781898, 32.097145, 27.981787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.633018, 31.948772, 28.097631>,  <38.384884, 31.701483, 28.290707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.633018, 31.948772, 28.097631> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016472, 0.605005, 0.796051,
		0.784167, -0.501767, 0.365120,
		0.620332, 0.618222, -0.482690,
		38.819118, 32.134239, 27.952824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.050095, 31.777021, 28.706886>,  <38.384884, 31.701483, 28.290707>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.050095, 31.777021, 28.706886> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.027813, 32.103527, 28.476891>,  <39.014442, 32.299431, 28.338894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.027813, 32.103527, 28.476891>,  <39.050095, 31.777021, 28.706886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.027813, 32.103527, 28.476891> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119846, 0.577184, 0.807772,
		0.991228, -0.023911, -0.129979,
		-0.055708, 0.816264, -0.574987,
		39.011101, 32.348408, 28.304394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.591381, 32.254333, 29.007181>,  <39.050095, 31.777021, 28.706886>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.591381, 32.254333, 29.007181> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.343426, 32.497173, 28.808319>,  <39.194653, 32.642876, 28.689001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.343426, 32.497173, 28.808319>,  <39.591381, 32.254333, 29.007181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.343426, 32.497173, 28.808319> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040789, 0.607786, 0.793052,
		0.783627, 0.511885, -0.351999,
		-0.619891, 0.607099, -0.497157,
		39.157459, 32.679302, 28.659172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.938011, 32.857105, 28.987774>,  <39.591381, 32.254333, 29.007181>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.938011, 32.857105, 28.987774> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.568661, 32.983574, 28.900679>,  <39.347050, 33.059456, 28.848421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.568661, 32.983574, 28.900679>,  <39.938011, 32.857105, 28.987774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.568661, 32.983574, 28.900679> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083232, 0.718580, 0.690446,
		0.374758, 0.619420, -0.689836,
		-0.923379, 0.316167, -0.217738,
		39.291649, 33.078423, 28.835358>
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
