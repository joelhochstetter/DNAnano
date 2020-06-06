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
	<24.627565, 35.318420, 34.789013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.498722, 35.015266, 35.015942>,  <24.421415, 34.833374, 35.152100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.498722, 35.015266, 35.015942>,  <24.627565, 35.318420, 34.789013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.498722, 35.015266, 35.015942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824198, -0.519331, -0.225816,
		0.465772, 0.394852, 0.791927,
		-0.322108, -0.757884, 0.567326,
		24.402090, 34.787903, 35.186138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.053797, 35.039890, 35.318295>,  <24.627565, 35.318420, 34.789013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.053797, 35.039890, 35.318295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.819092, 34.786942, 35.115982>,  <24.678268, 34.635174, 34.994595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.819092, 34.786942, 35.115982>,  <25.053797, 35.039890, 35.318295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.819092, 34.786942, 35.115982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794433, -0.570496, -0.208351,
		-0.156793, -0.524064, 0.837122,
		-0.586764, -0.632369, -0.505783,
		24.643063, 34.597229, 34.964249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.345247, 35.399220, 35.831871>,  <25.053797, 35.039890, 35.318295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.345247, 35.399220, 35.831871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.470848, 35.606411, 36.150143>,  <25.546207, 35.730724, 36.341106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.470848, 35.606411, 36.150143>,  <25.345247, 35.399220, 35.831871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.470848, 35.606411, 36.150143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691096, -0.699334, 0.182531,
		0.650991, 0.492574, -0.577565,
		0.314001, 0.517979, 0.795677,
		25.565048, 35.761806, 36.388847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.105286, 35.352566, 35.770126>,  <25.345247, 35.399220, 35.831871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.105286, 35.352566, 35.770126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.022009, 35.507935, 36.129189>,  <25.972042, 35.601154, 36.344627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.022009, 35.507935, 36.129189>,  <26.105286, 35.352566, 35.770126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.022009, 35.507935, 36.129189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857091, -0.369709, 0.358761,
		0.471221, 0.844065, -0.255940,
		-0.208194, 0.388419, 0.897656,
		25.959551, 35.624462, 36.398487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.702991, 35.741947, 36.173710>,  <26.105286, 35.352566, 35.770126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.702991, 35.741947, 36.173710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.474026, 35.651917, 36.489098>,  <26.336645, 35.597897, 36.678329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.474026, 35.651917, 36.489098>,  <26.702991, 35.741947, 36.173710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.474026, 35.651917, 36.489098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798568, 0.065209, 0.598362,
		-0.186093, 0.972156, 0.142413,
		-0.572415, -0.225077, 0.788468,
		26.302301, 35.584393, 36.725639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.021578, 35.337276, 35.667042>,  <26.702991, 35.741947, 36.173710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.021578, 35.337276, 35.667042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.113995, 34.948437, 35.683285>,  <27.169445, 34.715134, 35.693031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.113995, 34.948437, 35.683285>,  <27.021578, 35.337276, 35.667042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.113995, 34.948437, 35.683285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949416, -0.234380, -0.208986,
		0.212673, 0.009729, -0.977075,
		0.231040, -0.972097, 0.040610,
		27.183306, 34.656807, 35.695469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.635170, 35.408253, 35.442135>,  <27.021578, 35.337276, 35.667042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.635170, 35.408253, 35.442135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.728937, 35.690701, 35.709404>,  <27.785198, 35.860168, 35.869766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.728937, 35.690701, 35.709404>,  <27.635170, 35.408253, 35.442135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.728937, 35.690701, 35.709404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012116, 0.689390, -0.724290,
		-0.972061, 0.161691, 0.170161,
		0.234418, 0.706115, 0.668169,
		27.799263, 35.902534, 35.909855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.205956, 35.991669, 35.215832>,  <27.635170, 35.408253, 35.442135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.205956, 35.991669, 35.215832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.504070, 36.157726, 35.424522>,  <27.682940, 36.257362, 35.549736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.504070, 36.157726, 35.424522>,  <27.205956, 35.991669, 35.215832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.504070, 36.157726, 35.424522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115776, 0.690039, -0.714452,
		-0.656614, 0.592876, 0.466214,
		0.745288, 0.415143, 0.521730,
		27.727657, 36.282269, 35.581043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.061245, 36.710209, 35.327660>,  <27.205956, 35.991669, 35.215832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.061245, 36.710209, 35.327660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.456766, 36.679943, 35.379112>,  <27.694078, 36.661785, 35.409985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.456766, 36.679943, 35.379112>,  <27.061245, 36.710209, 35.327660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.456766, 36.679943, 35.379112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132426, 0.842300, -0.522487,
		-0.068815, 0.533671, 0.842888,
		0.988801, -0.075665, 0.128635,
		27.753407, 36.657242, 35.417702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.254946, 37.366653, 35.313614>,  <27.061245, 36.710209, 35.327660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.254946, 37.366653, 35.313614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.593542, 37.167545, 35.238052>,  <27.796700, 37.048080, 35.192715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.593542, 37.167545, 35.238052>,  <27.254946, 37.366653, 35.313614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.593542, 37.167545, 35.238052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229701, 0.661539, -0.713865,
		0.480307, 0.560887, 0.674323,
		0.846489, -0.497767, -0.188905,
		27.847488, 37.018215, 35.181381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.792097, 37.879459, 35.224270>,  <27.254946, 37.366653, 35.313614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.792097, 37.879459, 35.224270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.900497, 37.543732, 35.035763>,  <27.965538, 37.342293, 34.922657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.900497, 37.543732, 35.035763>,  <27.792097, 37.879459, 35.224270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.900497, 37.543732, 35.035763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272643, 0.536472, -0.798663,
		0.923160, 0.087949, 0.374220,
		0.271000, -0.839322, -0.471271,
		27.981798, 37.291935, 34.894382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.136044, 38.110424, 34.664673>,  <27.792097, 37.879459, 35.224270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.136044, 38.110424, 34.664673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.147858, 37.725018, 34.558270>,  <28.154945, 37.493774, 34.494427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.147858, 37.725018, 34.558270>,  <28.136044, 38.110424, 34.664673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.147858, 37.725018, 34.558270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234720, 0.265372, -0.935138,
		0.971614, -0.034820, 0.233995,
		0.029534, -0.963517, -0.266012,
		28.156717, 37.435963, 34.478466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.670582, 38.055752, 34.135784>,  <28.136044, 38.110424, 34.664673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.670582, 38.055752, 34.135784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.402796, 37.762085, 34.090500>,  <28.242125, 37.585884, 34.063332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.402796, 37.762085, 34.090500>,  <28.670582, 38.055752, 34.135784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.402796, 37.762085, 34.090500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100117, 0.061832, -0.993053,
		0.736065, -0.676149, 0.032108,
		-0.669467, -0.734166, -0.113207,
		28.201956, 37.541836, 34.056538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.945009, 37.681454, 33.605034>,  <28.670582, 38.055752, 34.135784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.945009, 37.681454, 33.605034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.556509, 37.587772, 33.587975>,  <28.323408, 37.531563, 33.577740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.556509, 37.587772, 33.587975>,  <28.945009, 37.681454, 33.605034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.556509, 37.587772, 33.587975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080306, -0.153686, -0.984851,
		0.224097, -0.959964, 0.168076,
		-0.971253, -0.234199, -0.042650,
		28.265133, 37.517513, 33.575180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.885323, 37.165348, 33.071857>,  <28.945009, 37.681454, 33.605034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.885323, 37.165348, 33.071857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.514975, 37.308483, 33.120384>,  <28.292767, 37.394363, 33.149498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.514975, 37.308483, 33.120384>,  <28.885323, 37.165348, 33.071857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.514975, 37.308483, 33.120384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089956, 0.103077, -0.990597,
		-0.366982, -0.928076, -0.063246,
		-0.925868, 0.357842, 0.121314,
		28.237213, 37.415836, 33.156776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.620173, 36.708172, 32.650387>,  <28.885323, 37.165348, 33.071857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.620173, 36.708172, 32.650387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.382591, 37.026100, 32.700142>,  <28.240042, 37.216858, 32.729996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.382591, 37.026100, 32.700142>,  <28.620173, 36.708172, 32.650387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.382591, 37.026100, 32.700142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128377, 0.058993, -0.989969,
		-0.794190, -0.603965, 0.066998,
		-0.593954, 0.794825, 0.124386,
		28.204405, 37.264549, 32.737457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.971027, 36.481071, 32.288170>,  <28.620173, 36.708172, 32.650387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.971027, 36.481071, 32.288170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.026598, 36.875484, 32.324913>,  <28.059940, 37.112133, 32.346958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.026598, 36.875484, 32.324913>,  <27.971027, 36.481071, 32.288170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.026598, 36.875484, 32.324913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164571, 0.114459, -0.979702,
		-0.976532, 0.120990, 0.178174,
		0.138928, 0.986033, 0.091861,
		28.068275, 37.171295, 32.352470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.671490, 36.661987, 31.740026>,  <27.971027, 36.481071, 32.288170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.671490, 36.661987, 31.740026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.820435, 37.018482, 31.843592>,  <27.909801, 37.232380, 31.905731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.820435, 37.018482, 31.843592>,  <27.671490, 36.661987, 31.740026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.820435, 37.018482, 31.843592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148504, 0.332597, -0.931303,
		-0.916130, 0.308331, 0.256199,
		0.372361, 0.891241, 0.258913,
		27.932142, 37.285854, 31.921267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.172440, 37.120384, 31.554846>,  <27.671490, 36.661987, 31.740026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.172440, 37.120384, 31.554846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.512669, 37.330723, 31.553316>,  <27.716806, 37.456924, 31.552399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.512669, 37.330723, 31.553316>,  <27.172440, 37.120384, 31.554846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.512669, 37.330723, 31.553316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144646, 0.226969, -0.963101,
		-0.505573, 0.819739, 0.269115,
		0.850572, 0.525844, -0.003823,
		27.767839, 37.488476, 31.552170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.994967, 37.725224, 31.268953>,  <27.172440, 37.120384, 31.554846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.994967, 37.725224, 31.268953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.389151, 37.702148, 31.205023>,  <27.625660, 37.688305, 31.166664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.389151, 37.702148, 31.205023>,  <26.994967, 37.725224, 31.268953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.389151, 37.702148, 31.205023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137605, 0.280875, -0.949828,
		0.099682, 0.958009, 0.268853,
		0.985458, -0.057685, -0.159825,
		27.684788, 37.684841, 31.157076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.077881, 38.287251, 31.018978>,  <26.994967, 37.725224, 31.268953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.077881, 38.287251, 31.018978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.397976, 38.074291, 30.908581>,  <27.590033, 37.946514, 30.842342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.397976, 38.074291, 30.908581>,  <27.077881, 38.287251, 31.018978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.397976, 38.074291, 30.908581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165227, 0.246671, -0.954910,
		0.576473, 0.809756, 0.109428,
		0.800237, -0.532399, -0.275993,
		27.638046, 37.914570, 30.825783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.277998, 38.691902, 30.438244>,  <27.077881, 38.287251, 31.018978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.277998, 38.691902, 30.438244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.474007, 38.347485, 30.383879>,  <27.591612, 38.140835, 30.351259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.474007, 38.347485, 30.383879>,  <27.277998, 38.691902, 30.438244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.474007, 38.347485, 30.383879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055173, 0.124970, -0.990626,
		0.869961, 0.492929, 0.013732,
		0.490024, -0.861048, -0.135915,
		27.621014, 38.089169, 30.343103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.797146, 38.848991, 29.957811>,  <27.277998, 38.691902, 30.438244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.797146, 38.848991, 29.957811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.708126, 38.459030, 29.955235>,  <27.654715, 38.225056, 29.953688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.708126, 38.459030, 29.955235>,  <27.797146, 38.848991, 29.957811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.708126, 38.459030, 29.955235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202583, 0.052708, -0.977846,
		0.953641, -0.216315, -0.209228,
		-0.222550, -0.974900, -0.006443,
		27.641361, 38.166561, 29.953302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.125753, 38.618435, 29.368525>,  <27.797146, 38.848991, 29.957811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.125753, 38.618435, 29.368525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.856485, 38.331623, 29.440868>,  <27.694923, 38.159534, 29.484274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.856485, 38.331623, 29.440868>,  <28.125753, 38.618435, 29.368525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.856485, 38.331623, 29.440868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165246, -0.092530, -0.981902,
		0.720787, -0.690875, -0.056197,
		-0.673172, -0.717029, 0.180859,
		27.654533, 38.116516, 29.495127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.241787, 39.006126, 28.689379>,  <28.125753, 38.618435, 29.368525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.241787, 39.006126, 28.689379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.257128, 39.352123, 28.489250>,  <28.266333, 39.559719, 28.369173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.257128, 39.352123, 28.489250>,  <28.241787, 39.006126, 28.689379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.257128, 39.352123, 28.489250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.974903, 0.142272, 0.171237,
		0.219300, 0.481197, 0.848738,
		0.038353, 0.864990, -0.500321,
		28.268633, 39.611622, 28.339153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.997322, 39.495354, 29.063822>,  <28.241787, 39.006126, 28.689379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.997322, 39.495354, 29.063822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.938437, 39.584633, 28.678385>,  <27.903105, 39.638203, 28.447123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.938437, 39.584633, 28.678385>,  <27.997322, 39.495354, 29.063822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.938437, 39.584633, 28.678385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.931938, 0.295099, 0.210733,
		0.331391, 0.929030, 0.164568,
		-0.147214, 0.223202, -0.963592,
		27.894272, 39.651592, 28.389307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.808447, 40.176842, 29.065050>,  <27.997322, 39.495354, 29.063822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.808447, 40.176842, 29.065050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.652540, 39.994381, 28.745049>,  <27.558996, 39.884903, 28.553047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.652540, 39.994381, 28.745049>,  <27.808447, 40.176842, 29.065050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.652540, 39.994381, 28.745049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.911917, 0.312313, 0.266211,
		0.128418, 0.833296, -0.537704,
		-0.389764, -0.456155, -0.800003,
		27.535610, 39.857533, 28.505047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.263729, 40.361900, 29.604193>,  <27.808447, 40.176842, 29.065050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.263729, 40.361900, 29.604193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.915142, 40.504391, 29.739038>,  <26.705990, 40.589886, 29.819946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.915142, 40.504391, 29.739038>,  <27.263729, 40.361900, 29.604193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.915142, 40.504391, 29.739038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093425, -0.554195, 0.827127,
		0.481470, 0.752311, 0.449684,
		-0.871469, 0.356225, 0.337113,
		26.653702, 40.611259, 29.840172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.366301, 40.856846, 29.045240>,  <27.263729, 40.361900, 29.604193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.366301, 40.856846, 29.045240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.181849, 40.981571, 28.712944>,  <27.071177, 41.056408, 28.513565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.181849, 40.981571, 28.712944>,  <27.366301, 40.856846, 29.045240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.181849, 40.981571, 28.712944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133352, 0.949943, 0.282534,
		0.877255, 0.019504, -0.479628,
		-0.461129, 0.311814, -0.830742,
		27.043510, 41.075115, 28.463722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.829187, 41.286442, 28.501980>,  <27.366301, 40.856846, 29.045240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.829187, 41.286442, 28.501980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.437481, 41.364586, 28.523430>,  <27.202457, 41.411472, 28.536301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.437481, 41.364586, 28.523430>,  <27.829187, 41.286442, 28.501980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.437481, 41.364586, 28.523430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202183, 0.925725, 0.319617,
		0.012798, 0.323832, -0.946028,
		-0.979264, 0.195361, 0.053626,
		27.143702, 41.423195, 28.539518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.596483, 41.890259, 28.108742>,  <27.829187, 41.286442, 28.501980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.596483, 41.890259, 28.108742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.392996, 41.851486, 28.450926>,  <27.270903, 41.828224, 28.656237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.392996, 41.851486, 28.450926>,  <27.596483, 41.890259, 28.108742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.392996, 41.851486, 28.450926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307518, 0.907633, 0.285718,
		-0.804138, 0.408419, -0.431922,
		-0.508719, -0.096933, 0.855458,
		27.240379, 41.822407, 28.707563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.183750, 42.497494, 28.344717>,  <27.596483, 41.890259, 28.108742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.183750, 42.497494, 28.344717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.252911, 42.325073, 28.698959>,  <27.294407, 42.221619, 28.911505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.252911, 42.325073, 28.698959>,  <27.183750, 42.497494, 28.344717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.252911, 42.325073, 28.698959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375501, 0.860088, 0.345323,
		-0.910551, 0.272838, 0.310574,
		0.172903, -0.431055, 0.885605,
		27.304781, 42.195755, 28.964642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.903969, 42.854816, 29.000454>,  <27.183750, 42.497494, 28.344717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.903969, 42.854816, 29.000454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.233795, 42.649197, 29.094975>,  <27.431690, 42.525826, 29.151688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.233795, 42.649197, 29.094975>,  <26.903969, 42.854816, 29.000454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.233795, 42.649197, 29.094975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389939, 0.818988, 0.420958,
		-0.409925, -0.254963, 0.875760,
		0.824566, -0.514054, 0.236304,
		27.481165, 42.494980, 29.165865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.054575, 42.975121, 29.653408>,  <26.903969, 42.854816, 29.000454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.054575, 42.975121, 29.653408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.423672, 42.878426, 29.533337>,  <27.645130, 42.820408, 29.461294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.423672, 42.878426, 29.533337>,  <27.054575, 42.975121, 29.653408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.423672, 42.878426, 29.533337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369868, 0.774378, 0.513358,
		0.108357, -0.584725, 0.803963,
		0.922744, -0.241734, -0.300180,
		27.700495, 42.805904, 29.443283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.463589, 43.179688, 30.205996>,  <27.054575, 42.975121, 29.653408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.463589, 43.179688, 30.205996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.743597, 43.134117, 29.924006>,  <27.911602, 43.106773, 29.754812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.743597, 43.134117, 29.924006>,  <27.463589, 43.179688, 30.205996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.743597, 43.134117, 29.924006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524918, 0.751416, 0.399793,
		0.484182, -0.649918, 0.585811,
		0.700020, -0.113930, -0.704976,
		27.953604, 43.099937, 29.712513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.344477, 43.559547, 30.758469>,  <27.463589, 43.179688, 30.205996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.344477, 43.559547, 30.758469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.043230, 43.560619, 31.021622>,  <26.862482, 43.561264, 31.179514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.043230, 43.560619, 31.021622>,  <27.344477, 43.559547, 30.758469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.043230, 43.560619, 31.021622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551877, -0.541764, 0.633974,
		0.358119, 0.840526, 0.406529,
		-0.753115, 0.002684, 0.657883,
		26.817295, 43.561424, 31.218987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.577204, 43.763847, 31.455530>,  <27.344477, 43.559547, 30.758469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.577204, 43.763847, 31.455530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.250284, 43.536720, 31.494745>,  <27.054132, 43.400444, 31.518274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.250284, 43.536720, 31.494745>,  <27.577204, 43.763847, 31.455530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.250284, 43.536720, 31.494745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497969, -0.610409, 0.615977,
		-0.289919, 0.552255, 0.781640,
		-0.817297, -0.567816, 0.098037,
		27.005095, 43.366375, 31.524157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.449198, 43.703445, 32.180756>,  <27.577204, 43.763847, 31.455530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.449198, 43.703445, 32.180756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.245943, 43.394283, 32.028748>,  <27.123989, 43.208786, 31.937542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.245943, 43.394283, 32.028748>,  <27.449198, 43.703445, 32.180756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.245943, 43.394283, 32.028748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363026, -0.592326, 0.719278,
		-0.781029, 0.227535, 0.581568,
		-0.508139, -0.772902, -0.380023,
		27.093502, 43.162415, 31.914742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.208975, 43.332329, 32.735931>,  <27.449198, 43.703445, 32.180756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.208975, 43.332329, 32.735931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.223867, 43.084213, 32.422535>,  <27.232803, 42.935345, 32.234497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.223867, 43.084213, 32.422535>,  <27.208975, 43.332329, 32.735931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.223867, 43.084213, 32.422535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349948, -0.726295, 0.591635,
		-0.936029, -0.296208, 0.190029,
		0.037230, -0.620288, -0.783490,
		27.235037, 42.898129, 32.187489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.874086, 42.718662, 32.924873>,  <27.208975, 43.332329, 32.735931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.874086, 42.718662, 32.924873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.123295, 42.632210, 32.624172>,  <27.272820, 42.580338, 32.443752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.123295, 42.632210, 32.624172>,  <26.874086, 42.718662, 32.924873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.123295, 42.632210, 32.624172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430576, -0.707596, 0.560279,
		-0.653028, -0.672753, -0.347789,
		0.623023, -0.216128, -0.751752,
		27.310202, 42.567371, 32.398647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.949852, 42.019398, 33.026714>,  <26.874086, 42.718662, 32.924873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.949852, 42.019398, 33.026714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.235779, 42.065685, 32.750847>,  <27.407335, 42.093460, 32.585327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.235779, 42.065685, 32.750847>,  <26.949852, 42.019398, 33.026714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.235779, 42.065685, 32.750847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592406, -0.624268, 0.509258,
		-0.371606, -0.772591, -0.514793,
		0.714817, 0.115723, -0.689670,
		27.450224, 42.100403, 32.543945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.126451, 41.341606, 32.694843>,  <26.949852, 42.019398, 33.026714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.126451, 41.341606, 32.694843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.451647, 41.564667, 32.627827>,  <27.646765, 41.698505, 32.587616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.451647, 41.564667, 32.627827>,  <27.126451, 41.341606, 32.694843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.451647, 41.564667, 32.627827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571977, -0.710959, 0.409120,
		0.109035, -0.428438, -0.896968,
		0.812990, 0.557654, -0.167538,
		27.695543, 41.731964, 32.577564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.656485, 40.890865, 32.525696>,  <27.126451, 41.341606, 32.694843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.656485, 40.890865, 32.525696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.865826, 41.218819, 32.618557>,  <27.991430, 41.415588, 32.674274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.865826, 41.218819, 32.618557>,  <27.656485, 40.890865, 32.525696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.865826, 41.218819, 32.618557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646362, -0.559498, 0.518823,
		0.555262, -0.121475, -0.822756,
		0.523354, 0.819882, 0.232151,
		28.022833, 41.464783, 32.688202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.311083, 40.722485, 32.428310>,  <27.656485, 40.890865, 32.525696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.311083, 40.722485, 32.428310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.321724, 41.022663, 32.692471>,  <28.328110, 41.202770, 32.850967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.321724, 41.022663, 32.692471>,  <28.311083, 40.722485, 32.428310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.321724, 41.022663, 32.692471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634227, -0.523317, 0.569118,
		0.772689, 0.403702, -0.489873,
		0.026605, 0.750442, 0.660400,
		28.329706, 41.247795, 32.890591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.015745, 40.669155, 32.598442>,  <28.311083, 40.722485, 32.428310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.015745, 40.669155, 32.598442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.812410, 40.854641, 32.888699>,  <28.690411, 40.965935, 33.062855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.812410, 40.854641, 32.888699>,  <29.015745, 40.669155, 32.598442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.812410, 40.854641, 32.888699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619079, -0.388956, 0.682243,
		0.598612, 0.796039, -0.089359,
		-0.508335, 0.463719, 0.725645,
		28.659910, 40.993755, 33.106392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.564344, 40.789509, 33.113216>,  <29.015745, 40.669155, 32.598442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.564344, 40.789509, 33.113216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.208324, 40.791019, 33.295555>,  <28.994713, 40.791924, 33.404957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.208324, 40.791019, 33.295555>,  <29.564344, 40.789509, 33.113216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.208324, 40.791019, 33.295555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419750, -0.383276, 0.822745,
		0.177818, 0.923626, 0.339551,
		-0.890051, 0.003772, 0.455846,
		28.941309, 40.792152, 33.432308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.703829, 40.857098, 33.805191>,  <29.564344, 40.789509, 33.113216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.703829, 40.857098, 33.805191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.323404, 40.754017, 33.873390>,  <29.095150, 40.692169, 33.914310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.323404, 40.754017, 33.873390>,  <29.703829, 40.857098, 33.805191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.323404, 40.754017, 33.873390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246334, -0.299211, 0.921842,
		-0.186547, 0.918728, 0.348050,
		-0.951063, -0.257703, 0.170497,
		29.038086, 40.676704, 33.924538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.570833, 41.021980, 34.462822>,  <29.703829, 40.857098, 33.805191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.570833, 41.021980, 34.462822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.272663, 40.768417, 34.380363>,  <29.093761, 40.616280, 34.330887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.272663, 40.768417, 34.380363>,  <29.570833, 41.021980, 34.462822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.272663, 40.768417, 34.380363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096038, -0.408160, 0.907845,
		-0.659633, 0.656934, 0.365132,
		-0.745427, -0.633911, -0.206145,
		29.049034, 40.578243, 34.318520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.129595, 41.029350, 35.025581>,  <29.570833, 41.021980, 34.462822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.129595, 41.029350, 35.025581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.069065, 40.684410, 34.832317>,  <29.032747, 40.477444, 34.716358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.069065, 40.684410, 34.832317>,  <29.129595, 41.029350, 35.025581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.069065, 40.684410, 34.832317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096220, -0.499322, 0.861057,
		-0.983790, 0.083808, 0.158536,
		-0.151324, -0.862353, -0.483164,
		29.023668, 40.425705, 34.687366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.659851, 40.621853, 35.390945>,  <29.129595, 41.029350, 35.025581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.659851, 40.621853, 35.390945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.837343, 40.326797, 35.187378>,  <28.943838, 40.149765, 35.065239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.837343, 40.326797, 35.187378>,  <28.659851, 40.621853, 35.390945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.837343, 40.326797, 35.187378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121128, -0.612039, 0.781496,
		-0.887936, -0.285131, -0.360929,
		0.443731, -0.737637, -0.508914,
		28.970463, 40.105507, 35.034702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.316635, 40.062199, 35.553616>,  <28.659851, 40.621853, 35.390945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.316635, 40.062199, 35.553616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.646931, 39.880116, 35.420383>,  <28.845108, 39.770866, 35.340443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.646931, 39.880116, 35.420383>,  <28.316635, 40.062199, 35.553616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.646931, 39.880116, 35.420383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141425, -0.738734, 0.658992,
		-0.546035, -0.497050, -0.674379,
		0.825739, -0.455207, -0.333079,
		28.894651, 39.743553, 35.320461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.112394, 39.428143, 35.715565>,  <28.316635, 40.062199, 35.553616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.112394, 39.428143, 35.715565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.505142, 39.407043, 35.642738>,  <28.740791, 39.394386, 35.599041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.505142, 39.407043, 35.642738>,  <28.112394, 39.428143, 35.715565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.505142, 39.407043, 35.642738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045685, -0.866345, 0.497353,
		-0.183966, -0.496653, -0.848229,
		0.981871, -0.052745, -0.182067,
		28.799704, 39.391220, 35.588120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.294859, 38.827179, 35.566837>,  <28.112394, 39.428143, 35.715565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.294859, 38.827179, 35.566837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.641581, 38.968220, 35.707874>,  <28.849613, 39.052845, 35.792496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.641581, 38.968220, 35.707874>,  <28.294859, 38.827179, 35.566837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.641581, 38.968220, 35.707874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029355, -0.741945, 0.669817,
		0.497783, -0.570251, -0.653472,
		0.866804, 0.352607, 0.352588,
		28.901623, 39.074001, 35.813652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.684280, 38.299198, 35.605991>,  <28.294859, 38.827179, 35.566837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.684280, 38.299198, 35.605991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.867277, 38.549221, 35.858974>,  <28.977076, 38.699234, 36.010765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.867277, 38.549221, 35.858974>,  <28.684280, 38.299198, 35.605991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.867277, 38.549221, 35.858974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194185, -0.764319, 0.614905,
		0.867753, -0.158499, -0.471045,
		0.457490, 0.625055, 0.632462,
		29.004524, 38.736736, 36.048714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.362864, 37.956818, 35.759190>,  <28.684280, 38.299198, 35.605991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.362864, 37.956818, 35.759190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.342106, 38.222187, 36.057766>,  <29.329651, 38.381409, 36.236912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.342106, 38.222187, 36.057766>,  <29.362864, 37.956818, 35.759190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.342106, 38.222187, 36.057766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124269, -0.737348, 0.663984,
		0.990891, 0.127216, -0.044180,
		-0.051893, 0.663426, 0.746440,
		29.326538, 38.421215, 36.281696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.951141, 37.803356, 36.172436>,  <29.362864, 37.956818, 35.759190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.951141, 37.803356, 36.172436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.696978, 37.985828, 36.421642>,  <29.544479, 38.095314, 36.571167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.696978, 37.985828, 36.421642>,  <29.951141, 37.803356, 36.172436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.696978, 37.985828, 36.421642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257461, -0.635503, 0.727908,
		0.727988, 0.622923, 0.286356,
		-0.635411, 0.456183, 0.623017,
		29.506353, 38.122684, 36.608547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.280535, 37.659100, 36.811195>,  <29.951141, 37.803356, 36.172436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.280535, 37.659100, 36.811195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.911133, 37.783623, 36.900841>,  <29.689491, 37.858337, 36.954628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.911133, 37.783623, 36.900841>,  <30.280535, 37.659100, 36.811195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.911133, 37.783623, 36.900841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037778, -0.655229, 0.754485,
		0.381722, 0.688304, 0.616868,
		-0.923505, 0.311308, 0.224112,
		29.634081, 37.877014, 36.968075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.243406, 38.060108, 37.398121>,  <30.280535, 37.659100, 36.811195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.243406, 38.060108, 37.398121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.920155, 37.845974, 37.299858>,  <29.726204, 37.717495, 37.240898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.920155, 37.845974, 37.299858>,  <30.243406, 38.060108, 37.398121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.920155, 37.845974, 37.299858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210253, -0.651782, 0.728679,
		-0.550203, 0.537215, 0.639279,
		-0.808128, -0.535332, -0.245661,
		29.677715, 37.685375, 37.226158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.905558, 38.474255, 37.476536>,  <30.243406, 38.060108, 37.398121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.905558, 38.474255, 37.476536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.258280, 38.571571, 37.314930>,  <31.469913, 38.629963, 37.217968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.258280, 38.571571, 37.314930>,  <30.905558, 38.474255, 37.476536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.258280, 38.571571, 37.314930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320773, 0.318580, 0.891971,
		0.345719, -0.916142, 0.202885,
		0.881807, 0.243291, -0.404012,
		31.522821, 38.644558, 37.193726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.429529, 37.995171, 37.667522>,  <30.905558, 38.474255, 37.476536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.429529, 37.995171, 37.667522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.532255, 38.379951, 37.630219>,  <31.593891, 38.610821, 37.607838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.532255, 38.379951, 37.630219>,  <31.429529, 37.995171, 37.667522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.532255, 38.379951, 37.630219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275941, 0.019492, 0.960977,
		0.926230, -0.272527, -0.260436,
		0.256815, 0.961951, -0.093256,
		31.609301, 38.668537, 37.602242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.944017, 38.015396, 38.060291>,  <31.429529, 37.995171, 37.667522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.944017, 38.015396, 38.060291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.789167, 38.382565, 38.025539>,  <31.696257, 38.602867, 38.004688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.789167, 38.382565, 38.025539>,  <31.944017, 38.015396, 38.060291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.789167, 38.382565, 38.025539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251607, 0.195826, 0.947811,
		0.887033, 0.345061, -0.306766,
		-0.387125, 0.917924, -0.086884,
		31.673029, 38.657944, 37.999474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.362740, 38.509087, 38.331028>,  <31.944017, 38.015396, 38.060291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.362740, 38.509087, 38.331028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.991821, 38.656311, 38.358307>,  <31.769270, 38.744644, 38.374676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.991821, 38.656311, 38.358307>,  <32.362740, 38.509087, 38.331028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.991821, 38.656311, 38.358307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172075, 0.257333, 0.950878,
		0.332433, 0.893482, -0.301959,
		-0.927296, 0.368063, 0.068200,
		31.713633, 38.766731, 38.378765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.343723, 39.315910, 38.523876>,  <32.362740, 38.509087, 38.331028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.343723, 39.315910, 38.523876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.042843, 39.075737, 38.632442>,  <31.862314, 38.931633, 38.697582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.042843, 39.075737, 38.632442>,  <32.343723, 39.315910, 38.523876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.042843, 39.075737, 38.632442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304097, 0.049088, 0.951376,
		-0.584562, 0.798166, 0.145666,
		-0.752205, -0.600435, 0.271415,
		31.817181, 38.895607, 38.713867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.872847, 39.607731, 39.172424>,  <32.343723, 39.315910, 38.523876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.872847, 39.607731, 39.172424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.902952, 39.209557, 39.148941>,  <31.921017, 38.970654, 39.134850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.902952, 39.209557, 39.148941>,  <31.872847, 39.607731, 39.172424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.902952, 39.209557, 39.148941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377525, -0.026049, 0.925633,
		-0.922935, -0.091832, 0.373841,
		0.075265, -0.995434, -0.058710,
		31.925531, 38.910927, 39.131329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.491253, 39.116867, 39.721664>,  <31.872847, 39.607731, 39.172424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.491253, 39.116867, 39.721664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.822538, 38.952698, 39.569027>,  <32.021309, 38.854195, 39.477444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.822538, 38.952698, 39.569027>,  <31.491253, 39.116867, 39.721664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.822538, 38.952698, 39.569027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354230, -0.144238, 0.923968,
		-0.434258, -0.900415, 0.025924,
		0.828215, -0.410424, -0.381591,
		32.071003, 38.829571, 39.454548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.838179, 38.751476, 40.179874>,  <31.491253, 39.116867, 39.721664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.838179, 38.751476, 40.179874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.152073, 38.694298, 39.938625>,  <32.340408, 38.659988, 39.793877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.152073, 38.694298, 39.938625>,  <31.838179, 38.751476, 40.179874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.152073, 38.694298, 39.938625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589815, -0.126910, 0.797504,
		-0.190549, -0.981559, -0.015274,
		0.784735, -0.142955, -0.603121,
		32.387493, 38.651413, 39.757690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.074562, 38.288895, 40.594685>,  <31.838179, 38.751476, 40.179874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.074562, 38.288895, 40.594685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.359680, 38.435547, 40.355518>,  <32.530750, 38.523537, 40.212017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.359680, 38.435547, 40.355518>,  <32.074562, 38.288895, 40.594685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.359680, 38.435547, 40.355518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640522, 0.007055, 0.767908,
		0.285756, -0.930341, -0.229805,
		0.712795, 0.366629, -0.597919,
		32.573517, 38.545536, 40.176144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.631123, 37.827709, 40.537483>,  <32.074562, 38.288895, 40.594685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.631123, 37.827709, 40.537483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.740849, 38.206875, 40.472729>,  <32.806683, 38.434376, 40.433876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.740849, 38.206875, 40.472729>,  <32.631123, 37.827709, 40.537483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.740849, 38.206875, 40.472729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644230, -0.056164, 0.762767,
		0.713947, -0.313530, -0.626083,
		0.274314, 0.947916, -0.161887,
		32.823143, 38.491249, 40.424164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.300255, 37.831215, 40.780029>,  <32.631123, 37.827709, 40.537483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.300255, 37.831215, 40.780029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.235237, 38.224335, 40.744968>,  <33.196228, 38.460205, 40.723934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.235237, 38.224335, 40.744968>,  <33.300255, 37.831215, 40.780029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.235237, 38.224335, 40.744968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614653, 0.170345, 0.770185,
		0.771869, 0.071314, -0.631770,
		-0.162544, 0.982801, -0.087650,
		33.186474, 38.519176, 40.718674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.918556, 38.108814, 40.934933>,  <33.300255, 37.831215, 40.780029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.918556, 38.108814, 40.934933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.642342, 38.394566, 40.980206>,  <33.476612, 38.566017, 41.007370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.642342, 38.394566, 40.980206>,  <33.918556, 38.108814, 40.934933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.642342, 38.394566, 40.980206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446600, 0.298033, 0.843638,
		0.568948, 0.633114, -0.524847,
		-0.690541, 0.714383, 0.113184,
		33.435181, 38.608879, 41.014160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.337448, 38.628693, 41.304806>,  <33.918556, 38.108814, 40.934933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.337448, 38.628693, 41.304806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.958202, 38.737011, 41.371449>,  <33.730656, 38.802002, 41.411434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.958202, 38.737011, 41.371449>,  <34.337448, 38.628693, 41.304806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.958202, 38.737011, 41.371449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273662, 0.428310, 0.861197,
		0.161849, 0.862103, -0.480191,
		-0.948111, 0.270794, 0.166603,
		33.673771, 38.818249, 41.421429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.362579, 39.392830, 41.430782>,  <34.337448, 38.628693, 41.304806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.362579, 39.392830, 41.430782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.026875, 39.230114, 41.575092>,  <33.825451, 39.132484, 41.661678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.026875, 39.230114, 41.575092>,  <34.362579, 39.392830, 41.430782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.026875, 39.230114, 41.575092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232552, 0.331220, 0.914447,
		-0.491485, 0.851360, -0.183381,
		-0.839263, -0.406792, 0.360775,
		33.775097, 39.108078, 41.683323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.073212, 39.940212, 41.865482>,  <34.362579, 39.392830, 41.430782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.073212, 39.940212, 41.865482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.909660, 39.589924, 41.968189>,  <33.811531, 39.379749, 42.029812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.909660, 39.589924, 41.968189>,  <34.073212, 39.940212, 41.865482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.909660, 39.589924, 41.968189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065360, 0.252539, 0.965377,
		-0.910246, 0.411503, -0.046020,
		-0.408877, -0.875722, 0.256769,
		33.786999, 39.327206, 42.045219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.610264, 40.157238, 42.428082>,  <34.073212, 39.940212, 41.865482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.610264, 40.157238, 42.428082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.664703, 39.763294, 42.471016>,  <33.697369, 39.526928, 42.496777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.664703, 39.763294, 42.471016>,  <33.610264, 40.157238, 42.428082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.664703, 39.763294, 42.471016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075183, 0.097767, 0.992365,
		-0.987838, -0.143128, -0.060739,
		0.136097, -0.984863, 0.107339,
		33.705532, 39.467834, 42.503216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.029011, 39.803013, 42.889080>,  <33.610264, 40.157238, 42.428082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.029011, 39.803013, 42.889080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.340656, 39.552860, 42.906403>,  <33.527645, 39.402767, 42.916798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.340656, 39.552860, 42.906403>,  <33.029011, 39.803013, 42.889080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.340656, 39.552860, 42.906403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082847, -0.034243, 0.995974,
		-0.621382, -0.779566, -0.078490,
		0.779115, -0.625383, 0.043307,
		33.574390, 39.365246, 42.919395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.853821, 39.441826, 43.530060>,  <33.029011, 39.803013, 42.889080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.853821, 39.441826, 43.530060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.228016, 39.347645, 43.424671>,  <33.452534, 39.291138, 43.361439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.228016, 39.347645, 43.424671>,  <32.853821, 39.441826, 43.530060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.228016, 39.347645, 43.424671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240373, -0.122464, 0.962924,
		-0.258989, -0.964139, -0.057968,
		0.935492, -0.235453, -0.263470,
		33.508663, 39.277008, 43.345631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.070000, 38.843369, 43.949516>,  <32.853821, 39.441826, 43.530060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.070000, 38.843369, 43.949516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.400734, 39.048927, 43.858082>,  <33.599174, 39.172264, 43.803223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.400734, 39.048927, 43.858082>,  <33.070000, 38.843369, 43.949516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.400734, 39.048927, 43.858082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307317, -0.072403, 0.948849,
		0.471059, -0.854792, -0.217795,
		0.826837, 0.513896, -0.228586,
		33.648785, 39.203094, 43.789505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.676823, 38.330975, 44.225510>,  <33.070000, 38.843369, 43.949516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.676823, 38.330975, 44.225510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.834404, 38.691780, 44.154888>,  <33.928951, 38.908264, 44.112514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.834404, 38.691780, 44.154888>,  <33.676823, 38.330975, 44.225510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.834404, 38.691780, 44.154888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419516, -0.005548, 0.907731,
		0.817806, -0.431673, -0.380595,
		0.393954, 0.902013, -0.176557,
		33.952591, 38.962383, 44.101921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.424828, 38.355831, 44.364761>,  <33.676823, 38.330975, 44.225510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.424828, 38.355831, 44.364761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.246918, 38.707039, 44.435474>,  <34.140171, 38.917763, 44.477901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.246918, 38.707039, 44.435474>,  <34.424828, 38.355831, 44.364761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.246918, 38.707039, 44.435474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276955, -0.052877, 0.959427,
		0.851747, 0.475687, -0.219655,
		-0.444773, 0.878024, 0.176782,
		34.113487, 38.970448, 44.488510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.835583, 38.575562, 44.901993>,  <34.424828, 38.355831, 44.364761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.835583, 38.575562, 44.901993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.532417, 38.836388, 44.894123>,  <34.350517, 38.992882, 44.889400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.532417, 38.836388, 44.894123>,  <34.835583, 38.575562, 44.901993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.532417, 38.836388, 44.894123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028133, 0.062804, 0.997629,
		0.651753, 0.755559, -0.065944,
		-0.757910, 0.652063, -0.019676,
		34.305046, 39.032005, 44.888222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.077118, 39.114716, 45.238888>,  <34.835583, 38.575562, 44.901993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.077118, 39.114716, 45.238888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.678577, 39.148495, 45.243744>,  <34.439453, 39.168762, 45.246658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.678577, 39.148495, 45.243744>,  <35.077118, 39.114716, 45.238888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.678577, 39.148495, 45.243744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007282, -0.057653, 0.998310,
		0.085006, 0.994759, 0.056827,
		-0.996354, 0.084449, 0.012144,
		34.379673, 39.173828, 45.247387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.967976, 39.533318, 45.733631>,  <35.077118, 39.114716, 45.238888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.967976, 39.533318, 45.733631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.603237, 39.372944, 45.698330>,  <34.384396, 39.276718, 45.677151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.603237, 39.372944, 45.698330>,  <34.967976, 39.533318, 45.733631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.603237, 39.372944, 45.698330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109355, 0.030005, 0.993550,
		-0.395700, 0.915615, -0.071204,
		-0.911846, -0.400934, -0.088254,
		34.329685, 39.252663, 45.671852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.515327, 39.937668, 46.141685>,  <34.967976, 39.533318, 45.733631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.515327, 39.937668, 46.141685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.377228, 39.563225, 46.114815>,  <34.294369, 39.338558, 46.098690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.377228, 39.563225, 46.114815>,  <34.515327, 39.937668, 46.141685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.377228, 39.563225, 46.114815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086417, -0.039568, 0.995473,
		-0.934525, 0.349490, -0.067235,
		-0.345247, -0.936104, -0.067179,
		34.273655, 39.282394, 46.094662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.938080, 39.870796, 46.678047>,  <34.515327, 39.937668, 46.141685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.938080, 39.870796, 46.678047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.024918, 39.487854, 46.601788>,  <34.077023, 39.258091, 46.556030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.024918, 39.487854, 46.601788>,  <33.938080, 39.870796, 46.678047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.024918, 39.487854, 46.601788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299367, -0.251197, 0.920478,
		-0.929112, -0.142757, -0.341133,
		0.217096, -0.957351, -0.190653,
		34.090046, 39.200649, 46.544590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.315983, 39.562672, 46.879341>,  <33.938080, 39.870796, 46.678047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.315983, 39.562672, 46.879341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.616737, 39.298954, 46.879738>,  <33.797188, 39.140724, 46.879974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.616737, 39.298954, 46.879738>,  <33.315983, 39.562672, 46.879341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.616737, 39.298954, 46.879738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313845, -0.356602, 0.879964,
		-0.579805, -0.661939, -0.475040,
		0.751883, -0.659296, 0.000987,
		33.842300, 39.101166, 46.880035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.980556, 38.946499, 47.053967>,  <33.315983, 39.562672, 46.879341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.980556, 38.946499, 47.053967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.366432, 38.876236, 47.132477>,  <33.597958, 38.834080, 47.179585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.366432, 38.876236, 47.132477>,  <32.980556, 38.946499, 47.053967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.366432, 38.876236, 47.132477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255568, -0.443833, 0.858893,
		-0.063758, -0.878724, -0.473052,
		0.964687, -0.175658, 0.196276,
		33.655838, 38.823540, 47.191360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.941601, 38.315212, 47.360569>,  <32.980556, 38.946499, 47.053967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.941601, 38.315212, 47.360569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.308144, 38.454380, 47.439808>,  <33.528069, 38.537880, 47.487350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.308144, 38.454380, 47.439808>,  <32.941601, 38.315212, 47.360569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.308144, 38.454380, 47.439808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080548, -0.324471, 0.942460,
		0.392181, -0.879584, -0.269306,
		0.916355, 0.347923, 0.198100,
		33.583050, 38.558758, 47.499237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.083717, 37.773602, 47.841923>,  <32.941601, 38.315212, 47.360569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.083717, 37.773602, 47.841923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.326248, 38.081032, 47.923569>,  <33.471767, 38.265491, 47.972557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.326248, 38.081032, 47.923569>,  <33.083717, 37.773602, 47.841923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.326248, 38.081032, 47.923569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090417, -0.188383, 0.977925,
		0.790060, -0.611395, -0.044729,
		0.606325, 0.768575, 0.204115,
		33.508144, 38.311604, 47.984802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.518150, 37.504131, 48.280247>,  <33.083717, 37.773602, 47.841923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.518150, 37.504131, 48.280247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.522881, 37.902000, 48.321198>,  <33.525719, 38.140724, 48.345768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.522881, 37.902000, 48.321198>,  <33.518150, 37.504131, 48.280247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.522881, 37.902000, 48.321198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125263, -0.100102, 0.987061,
		0.992053, -0.024500, 0.123412,
		0.011829, 0.994676, 0.102375,
		33.526428, 38.200401, 48.351910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.877312, 37.575661, 48.849094>,  <33.518150, 37.504131, 48.280247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.877312, 37.575661, 48.849094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.693333, 37.930058, 48.825527>,  <33.582947, 38.142696, 48.811386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.693333, 37.930058, 48.825527>,  <33.877312, 37.575661, 48.849094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.693333, 37.930058, 48.825527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106645, 0.120991, 0.986908,
		0.881521, 0.447639, -0.150136,
		-0.459943, 0.885991, -0.058917,
		33.555351, 38.195854, 48.807854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.250084, 38.028328, 49.296684>,  <33.877312, 37.575661, 48.849094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.250084, 38.028328, 49.296684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.884579, 38.184902, 49.253212>,  <33.665276, 38.278847, 49.227127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.884579, 38.184902, 49.253212>,  <34.250084, 38.028328, 49.296684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.884579, 38.184902, 49.253212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046638, 0.164680, 0.985244,
		0.403557, 0.905350, -0.132223,
		-0.913765, 0.391436, -0.108681,
		33.610451, 38.302334, 49.220608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.212509, 38.660011, 49.657471>,  <34.250084, 38.028328, 49.296684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.212509, 38.660011, 49.657471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.825493, 38.566120, 49.620014>,  <33.593285, 38.509785, 49.597542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.825493, 38.566120, 49.620014>,  <34.212509, 38.660011, 49.657471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.825493, 38.566120, 49.620014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144440, 0.209594, 0.967061,
		-0.207374, 0.949195, -0.236695,
		-0.967540, -0.234731, -0.093638,
		33.535233, 38.495701, 49.591923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.987213, 39.112179, 50.095554>,  <34.212509, 38.660011, 49.657471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.987213, 39.112179, 50.095554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.679657, 38.858109, 50.066261>,  <33.495125, 38.705666, 50.048687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.679657, 38.858109, 50.066261>,  <33.987213, 39.112179, 50.095554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.679657, 38.858109, 50.066261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206210, 0.137937, 0.968737,
		-0.605215, 0.759953, -0.237037,
		-0.768890, -0.635174, -0.073228,
		33.448990, 38.667557, 50.044292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.440662, 39.468143, 50.337227>,  <33.987213, 39.112179, 50.095554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.440662, 39.468143, 50.337227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.319691, 39.087345, 50.356174>,  <33.247108, 38.858868, 50.367542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.319691, 39.087345, 50.356174>,  <33.440662, 39.468143, 50.337227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.319691, 39.087345, 50.356174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231735, 0.121645, 0.965143,
		-0.924573, 0.280910, -0.257399,
		-0.302430, -0.951994, 0.047374,
		33.228962, 38.801746, 50.370388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.757153, 39.423470, 50.625938>,  <33.440662, 39.468143, 50.337227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.757153, 39.423470, 50.625938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.940121, 39.074020, 50.692326>,  <33.049904, 38.864349, 50.732159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.940121, 39.074020, 50.692326>,  <32.757153, 39.423470, 50.625938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.940121, 39.074020, 50.692326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158998, 0.103283, 0.981862,
		-0.874919, -0.475515, -0.091660,
		0.457423, -0.873623, 0.165971,
		33.077347, 38.811932, 50.742115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.379562, 39.203773, 51.212273>,  <32.757153, 39.423470, 50.625938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.379562, 39.203773, 51.212273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.693588, 38.956314, 51.199917>,  <32.882004, 38.807838, 51.192505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.693588, 38.956314, 51.199917>,  <32.379562, 39.203773, 51.212273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.693588, 38.956314, 51.199917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093202, -0.167279, 0.981494,
		-0.612366, -0.767655, -0.188983,
		0.785062, -0.618647, -0.030889,
		32.929108, 38.770721, 51.190651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.176121, 38.577427, 51.544777>,  <32.379562, 39.203773, 51.212273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.176121, 38.577427, 51.544777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.568913, 38.649216, 51.568485>,  <32.804588, 38.692287, 51.582710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.568913, 38.649216, 51.568485>,  <32.176121, 38.577427, 51.544777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.568913, 38.649216, 51.568485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012229, -0.252611, 0.967491,
		0.188611, -0.950777, -0.245863,
		0.981976, 0.179472, 0.059272,
		32.863506, 38.703056, 51.586266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.459068, 38.151508, 52.098934>,  <32.176121, 38.577427, 51.544777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.459068, 38.151508, 52.098934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.759434, 38.414909, 52.078938>,  <32.939655, 38.572948, 52.066940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.759434, 38.414909, 52.078938>,  <32.459068, 38.151508, 52.098934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.759434, 38.414909, 52.078938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090228, -0.027317, 0.995547,
		0.654205, -0.752083, -0.079929,
		0.750917, 0.658503, -0.049988,
		32.984707, 38.612461, 52.063942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.050304, 37.864845, 52.484852>,  <32.459068, 38.151508, 52.098934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.050304, 37.864845, 52.484852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.087963, 38.262886, 52.472786>,  <33.110558, 38.501709, 52.465546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.087963, 38.262886, 52.472786>,  <33.050304, 37.864845, 52.484852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.087963, 38.262886, 52.472786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189386, 0.011848, 0.981831,
		0.977379, -0.098145, -0.187343,
		0.094142, 0.995102, -0.030167,
		33.116207, 38.561417, 52.463737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.604916, 37.971703, 52.927528>,  <33.050304, 37.864845, 52.484852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.604916, 37.971703, 52.927528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.473183, 38.348225, 52.897903>,  <33.394142, 38.574139, 52.880127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.473183, 38.348225, 52.897903>,  <33.604916, 37.971703, 52.927528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.473183, 38.348225, 52.897903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210365, 0.149613, 0.966107,
		0.920483, 0.302587, -0.247289,
		-0.329329, 0.941306, -0.074062,
		33.374386, 38.630615, 52.875683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.070274, 38.257931, 53.389671>,  <33.604916, 37.971703, 52.927528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.070274, 38.257931, 53.389671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.750992, 38.494755, 53.345264>,  <33.559422, 38.636848, 53.318619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.750992, 38.494755, 53.345264>,  <34.070274, 38.257931, 53.389671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.750992, 38.494755, 53.345264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146200, 0.369197, 0.917779,
		0.584372, 0.716348, -0.381256,
		-0.798208, 0.592064, -0.111018,
		33.511528, 38.672375, 53.311958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.299496, 38.729988, 53.840153>,  <34.070274, 38.257931, 53.389671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.299496, 38.729988, 53.840153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.908367, 38.790215, 53.781914>,  <33.673691, 38.826351, 53.746971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.908367, 38.790215, 53.781914>,  <34.299496, 38.729988, 53.840153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.908367, 38.790215, 53.781914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098072, 0.285081, 0.953473,
		0.185063, 0.946605, -0.263992,
		-0.977821, 0.150562, -0.145594,
		33.615021, 38.835384, 53.738235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.153461, 39.259590, 54.184608>,  <34.299496, 38.729988, 53.840153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.153461, 39.259590, 54.184608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.798107, 39.081829, 54.138527>,  <33.584892, 38.975174, 54.110878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.798107, 39.081829, 54.138527>,  <34.153461, 39.259590, 54.184608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.798107, 39.081829, 54.138527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200082, 0.148943, 0.968392,
		-0.413195, 0.883360, -0.221236,
		-0.888390, -0.444400, -0.115202,
		33.531590, 38.948509, 54.103966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.599850, 39.701828, 54.494709>,  <34.153461, 39.259590, 54.184608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.599850, 39.701828, 54.494709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.453671, 39.329548, 54.501022>,  <33.365963, 39.106182, 54.504810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.453671, 39.329548, 54.501022>,  <33.599850, 39.701828, 54.494709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.453671, 39.329548, 54.501022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279827, 0.126017, 0.951744,
		-0.887775, 0.343396, -0.306487,
		-0.365448, -0.930698, 0.015783,
		33.344036, 39.050339, 54.505756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.123360, 39.772408, 54.819641>,  <33.599850, 39.701828, 54.494709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.123360, 39.772408, 54.819641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.157372, 39.377220, 54.871315>,  <33.177780, 39.140106, 54.902321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.157372, 39.377220, 54.871315>,  <33.123360, 39.772408, 54.819641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.157372, 39.377220, 54.871315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178758, 0.112426, 0.977449,
		-0.980212, -0.106206, -0.167047,
		0.085031, -0.987968, 0.129186,
		33.182880, 39.080830, 54.910072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.509594, 39.460144, 55.275002>,  <33.123360, 39.772408, 54.819641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.509594, 39.460144, 55.275002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.827530, 39.221527, 55.319500>,  <33.018291, 39.078358, 55.346199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.827530, 39.221527, 55.319500>,  <32.509594, 39.460144, 55.275002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.827530, 39.221527, 55.319500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065099, 0.098446, 0.993011,
		-0.603323, -0.796523, 0.039414,
		0.794836, -0.596540, 0.111248,
		33.065979, 39.042564, 55.352875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.488651, 38.844898, 55.736603>,  <32.509594, 39.460144, 55.275002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.488651, 38.844898, 55.736603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.873093, 38.954956, 55.727066>,  <33.103760, 39.020988, 55.721344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.873093, 38.954956, 55.727066>,  <32.488651, 38.844898, 55.736603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.873093, 38.954956, 55.727066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087202, 0.384262, 0.919097,
		0.262044, -0.881272, 0.393310,
		0.961108, 0.275141, -0.023844,
		33.161427, 39.037498, 55.719913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.023670, 38.297340, 55.474537>,  <32.488651, 38.844898, 55.736603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.023670, 38.297340, 55.474537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.363621, 38.115170, 55.368484>,  <32.567593, 38.005867, 55.304852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.363621, 38.115170, 55.368484>,  <32.023670, 38.297340, 55.474537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.363621, 38.115170, 55.368484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524166, 0.678638, 0.514490,
		-0.054384, -0.576227, 0.815478,
		0.849878, -0.455426, -0.265131,
		32.618584, 37.978542, 55.288944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.387383, 38.142784, 56.063583>,  <32.023670, 38.297340, 55.474537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.387383, 38.142784, 56.063583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.639839, 38.211998, 55.761135>,  <32.791313, 38.253529, 55.579666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.639839, 38.211998, 55.761135>,  <32.387383, 38.142784, 56.063583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.639839, 38.211998, 55.761135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433419, 0.729750, 0.528784,
		0.643278, -0.661455, 0.385578,
		0.631143, 0.173038, -0.756120,
		32.829182, 38.263908, 55.534298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.922771, 37.939903, 56.627811>,  <32.387383, 38.142784, 56.063583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.922771, 37.939903, 56.627811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.139938, 37.694599, 56.398323>,  <33.270237, 37.547417, 56.260632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.139938, 37.694599, 56.398323>,  <32.922771, 37.939903, 56.627811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.139938, 37.694599, 56.398323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816501, -0.225705, -0.531397,
		0.196393, 0.756947, -0.623266,
		0.542914, -0.613260, -0.573722,
		33.302814, 37.510620, 56.226208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.016327, 37.357250, 57.014244>,  <32.922771, 37.939903, 56.627811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.016327, 37.357250, 57.014244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.333763, 37.412354, 56.777184>,  <33.524227, 37.445415, 56.634949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.333763, 37.412354, 56.777184>,  <33.016327, 37.357250, 57.014244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.333763, 37.412354, 56.777184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001765, -0.974548, -0.224173,
		-0.608446, 0.176857, -0.773638,
		0.793594, 0.137763, -0.592647,
		33.571842, 37.453682, 56.599388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.772148, 37.121571, 56.354130>,  <33.016327, 37.357250, 57.014244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.772148, 37.121571, 56.354130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.171871, 37.113140, 56.366444>,  <33.411705, 37.108082, 56.373833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.171871, 37.113140, 56.366444>,  <32.772148, 37.121571, 56.354130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.171871, 37.113140, 56.366444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008626, -0.933365, -0.358824,
		0.036298, 0.358309, -0.932897,
		0.999304, -0.021072, 0.030789,
		33.471661, 37.106819, 56.375679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.214779, 37.066402, 55.713737>,  <32.772148, 37.121571, 56.354130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.214779, 37.066402, 55.713737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.381050, 36.899441, 56.036968>,  <33.480812, 36.799263, 56.230907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.381050, 36.899441, 56.036968>,  <33.214779, 37.066402, 55.713737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.381050, 36.899441, 56.036968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104891, -0.904543, -0.413278,
		0.903444, 0.087029, -0.419779,
		0.415676, -0.417405, 0.808076,
		33.505753, 36.774220, 56.279392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.896816, 36.766491, 55.548607>,  <33.214779, 37.066402, 55.713737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.896816, 36.766491, 55.548607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.645737, 36.585632, 55.802082>,  <33.495090, 36.477116, 55.954166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.645737, 36.585632, 55.802082>,  <33.896816, 36.766491, 55.548607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.645737, 36.585632, 55.802082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239917, -0.662042, -0.710028,
		0.740564, -0.597716, 0.307085,
		-0.627698, -0.452146, 0.633687,
		33.457428, 36.449989, 55.992188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.040791, 36.013699, 55.548313>,  <33.896816, 36.766491, 55.548607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.040791, 36.013699, 55.548313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.659565, 36.062702, 55.659065>,  <33.430828, 36.092106, 55.725517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.659565, 36.062702, 55.659065>,  <34.040791, 36.013699, 55.548313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.659565, 36.062702, 55.659065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302646, -0.411798, -0.859551,
		0.008713, -0.903002, 0.429547,
		-0.953063, 0.122512, 0.276878,
		33.373646, 36.099457, 55.742130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.662491, 35.401176, 55.520012>,  <34.040791, 36.013699, 55.548313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.662491, 35.401176, 55.520012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.398914, 35.693913, 55.450500>,  <33.240768, 35.869556, 55.408794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.398914, 35.693913, 55.450500>,  <33.662491, 35.401176, 55.520012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.398914, 35.693913, 55.450500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205860, -0.397667, -0.894138,
		-0.723476, -0.553411, 0.412697,
		-0.658942, 0.731845, -0.173777,
		33.201233, 35.913467, 55.398369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.879520, 35.156727, 55.457195>,  <33.662491, 35.401176, 55.520012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.879520, 35.156727, 55.457195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.974312, 35.489262, 55.256111>,  <33.031189, 35.688782, 55.135460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.974312, 35.489262, 55.256111>,  <32.879520, 35.156727, 55.457195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.974312, 35.489262, 55.256111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277973, -0.437795, -0.855025,
		-0.930898, 0.342366, 0.127340,
		0.236982, 0.831337, -0.502711,
		33.045406, 35.738663, 55.105297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.260490, 35.381298, 55.081459>,  <32.879520, 35.156727, 55.457195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.260490, 35.381298, 55.081459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.583664, 35.543911, 54.910824>,  <32.777569, 35.641479, 54.808441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.583664, 35.543911, 54.910824>,  <32.260490, 35.381298, 55.081459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.583664, 35.543911, 54.910824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218632, -0.465455, -0.857643,
		-0.547219, 0.786182, -0.287174,
		0.807930, 0.406533, -0.426591,
		32.826042, 35.665871, 54.782848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.084373, 35.220539, 54.408508>,  <32.260490, 35.381298, 55.081459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.084373, 35.220539, 54.408508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.457424, 35.356510, 54.360081>,  <32.681255, 35.438091, 54.331024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.457424, 35.356510, 54.360081>,  <32.084373, 35.220539, 54.408508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.457424, 35.356510, 54.360081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063920, -0.174576, -0.982567,
		-0.355133, 0.924108, -0.141087,
		0.932628, 0.339924, -0.121067,
		32.737213, 35.458488, 54.323761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.075077, 35.708229, 53.815262>,  <32.084373, 35.220539, 54.408508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.075077, 35.708229, 53.815262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.453033, 35.581867, 53.849621>,  <32.679810, 35.506050, 53.870235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.453033, 35.581867, 53.849621>,  <32.075077, 35.708229, 53.815262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.453033, 35.581867, 53.849621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114146, 0.071990, -0.990852,
		0.306833, 0.946055, 0.104082,
		0.944894, -0.315906, 0.085900,
		32.736500, 35.487095, 53.875389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.496204, 36.095490, 53.338097>,  <32.075077, 35.708229, 53.815262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.496204, 36.095490, 53.338097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.722202, 35.772224, 53.404613>,  <32.857800, 35.578266, 53.444523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.722202, 35.772224, 53.404613>,  <32.496204, 36.095490, 53.338097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.722202, 35.772224, 53.404613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079646, -0.147178, -0.985898,
		0.821240, 0.570273, -0.018788,
		0.564996, -0.808163, 0.166289,
		32.891701, 35.529774, 53.454498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.849262, 36.074570, 52.758896>,  <32.496204, 36.095490, 53.338097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.849262, 36.074570, 52.758896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.936916, 35.707363, 52.891090>,  <32.989510, 35.487038, 52.970406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.936916, 35.707363, 52.891090>,  <32.849262, 36.074570, 52.758896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.936916, 35.707363, 52.891090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006085, -0.337427, -0.941332,
		0.975676, 0.208289, -0.068356,
		0.219134, -0.918019, 0.330487,
		33.002655, 35.431957, 52.990238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.525246, 35.836811, 52.493408>,  <32.849262, 36.074570, 52.758896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.525246, 35.836811, 52.493408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.287296, 35.527657, 52.581741>,  <33.144527, 35.342163, 52.634743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.287296, 35.527657, 52.581741>,  <33.525246, 35.836811, 52.493408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.287296, 35.527657, 52.581741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108354, -0.195124, -0.974775,
		0.796481, -0.603799, 0.032329,
		-0.594876, -0.772887, 0.220836,
		33.108833, 35.295792, 52.647991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.045906, 35.277817, 52.274666>,  <33.525246, 35.836811, 52.493408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.045906, 35.277817, 52.274666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.678478, 35.123634, 52.309658>,  <33.458023, 35.031124, 52.330654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.678478, 35.123634, 52.309658>,  <34.045906, 35.277817, 52.274666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.678478, 35.123634, 52.309658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025919, -0.162116, -0.986431,
		0.394405, -0.908375, 0.138924,
		-0.918571, -0.385453, 0.087484,
		33.402908, 35.007999, 52.335903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.046284, 34.585911, 51.793736>,  <34.045906, 35.277817, 52.274666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.046284, 34.585911, 51.793736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.663170, 34.663097, 51.878975>,  <33.433300, 34.709408, 51.930119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.663170, 34.663097, 51.878975>,  <34.046284, 34.585911, 51.793736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.663170, 34.663097, 51.878975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257675, -0.247557, -0.933980,
		-0.127471, -0.949463, 0.286829,
		-0.957787, 0.192963, 0.213096,
		33.375835, 34.720985, 51.942905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.628262, 34.051125, 51.384655>,  <34.046284, 34.585911, 51.793736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.628262, 34.051125, 51.384655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.380676, 34.355450, 51.462688>,  <33.232124, 34.538044, 51.509506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.380676, 34.355450, 51.462688>,  <33.628262, 34.051125, 51.384655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.380676, 34.355450, 51.462688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274848, 0.022862, -0.961216,
		-0.735761, -0.648574, 0.194956,
		-0.618962, 0.760808, 0.195080,
		33.194988, 34.583691, 51.521214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.017178, 33.867897, 51.028099>,  <33.628262, 34.051125, 51.384655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.017178, 33.867897, 51.028099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.005150, 34.262508, 51.092419>,  <32.997932, 34.499275, 51.131012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.005150, 34.262508, 51.092419>,  <33.017178, 33.867897, 51.028099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.005150, 34.262508, 51.092419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167556, 0.153623, -0.973820,
		-0.985404, -0.056229, 0.160679,
		-0.030073, 0.986528, 0.160803,
		32.996128, 34.558468, 51.140659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.362400, 34.102642, 50.803993>,  <33.017178, 33.867897, 51.028099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.362400, 34.102642, 50.803993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.596630, 34.426712, 50.814678>,  <32.737167, 34.621155, 50.821087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.596630, 34.426712, 50.814678>,  <32.362400, 34.102642, 50.803993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.596630, 34.426712, 50.814678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200845, 0.176930, -0.963513,
		-0.785341, 0.558847, 0.266326,
		0.585578, 0.810176, 0.026709,
		32.772305, 34.669765, 50.822689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.943258, 34.749748, 50.669754>,  <32.362400, 34.102642, 50.803993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.943258, 34.749748, 50.669754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.321796, 34.805073, 50.552929>,  <32.548920, 34.838268, 50.482834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.321796, 34.805073, 50.552929>,  <31.943258, 34.749748, 50.669754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.321796, 34.805073, 50.552929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288240, -0.047337, -0.956388,
		-0.146106, 0.989257, -0.004930,
		0.946346, 0.138313, -0.292059,
		32.605701, 34.846565, 50.465313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.893818, 35.127594, 50.105751>,  <31.943258, 34.749748, 50.669754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.893818, 35.127594, 50.105751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.267399, 34.992855, 50.057972>,  <32.491547, 34.912010, 50.029305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.267399, 34.992855, 50.057972>,  <31.893818, 35.127594, 50.105751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.267399, 34.992855, 50.057972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046816, 0.216034, -0.975263,
		0.354321, 0.916440, 0.185996,
		0.933951, -0.336849, -0.119449,
		32.547585, 34.891800, 50.022137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.209503, 35.621559, 49.673882>,  <31.893818, 35.127594, 50.105751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.209503, 35.621559, 49.673882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.450546, 35.304569, 49.636246>,  <32.595173, 35.114376, 49.613663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.450546, 35.304569, 49.636246>,  <32.209503, 35.621559, 49.673882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.450546, 35.304569, 49.636246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117860, 0.204988, -0.971642,
		0.789286, 0.574429, 0.216928,
		0.602607, -0.792471, -0.094092,
		32.631329, 35.066830, 49.608017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.763710, 35.860455, 49.268326>,  <32.209503, 35.621559, 49.673882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.763710, 35.860455, 49.268326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.776775, 35.464783, 49.211109>,  <32.784615, 35.227379, 49.176777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.776775, 35.464783, 49.211109>,  <32.763710, 35.860455, 49.268326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.776775, 35.464783, 49.211109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150123, 0.146353, -0.977775,
		0.988128, 0.010465, 0.153279,
		0.032666, -0.989177, -0.143044,
		32.786575, 35.168030, 49.168198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.315834, 35.847702, 48.761417>,  <32.763710, 35.860455, 49.268326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.315834, 35.847702, 48.761417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.124477, 35.496635, 48.749821>,  <33.009663, 35.285995, 48.742863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.124477, 35.496635, 48.749821>,  <33.315834, 35.847702, 48.761417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.124477, 35.496635, 48.749821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122775, -0.034156, -0.991846,
		0.869520, -0.478054, 0.124095,
		-0.478394, -0.877666, -0.028993,
		32.980961, 35.233337, 48.741123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.719944, 35.440632, 48.354584>,  <33.315834, 35.847702, 48.761417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.719944, 35.440632, 48.354584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.362804, 35.260616, 48.347870>,  <33.148521, 35.152607, 48.343842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.362804, 35.260616, 48.347870>,  <33.719944, 35.440632, 48.354584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.362804, 35.260616, 48.347870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115295, -0.192391, -0.974522,
		0.435348, -0.872036, 0.223664,
		-0.892849, -0.450043, -0.016784,
		33.094948, 35.125603, 48.342834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.826672, 34.824608, 47.989262>,  <33.719944, 35.440632, 48.354584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.826672, 34.824608, 47.989262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.429340, 34.867077, 47.971268>,  <33.190941, 34.892559, 47.960472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.429340, 34.867077, 47.971268>,  <33.826672, 34.824608, 47.989262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.429340, 34.867077, 47.971268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027088, -0.164364, -0.986028,
		-0.112082, -0.980669, 0.160392,
		-0.993330, 0.106171, -0.044987,
		33.131340, 34.898930, 47.957771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.624561, 34.357708, 47.449440>,  <33.826672, 34.824608, 47.989262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.624561, 34.357708, 47.449440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.316158, 34.610706, 47.479092>,  <33.131115, 34.762505, 47.496883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.316158, 34.610706, 47.479092>,  <33.624561, 34.357708, 47.449440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.316158, 34.610706, 47.479092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059837, 0.043940, -0.997241,
		-0.634008, -0.773317, 0.003968,
		-0.771008, 0.632496, 0.074131,
		33.084854, 34.800453, 47.501331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.258316, 34.188843, 46.978931>,  <33.624561, 34.357708, 47.449440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.258316, 34.188843, 46.978931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.107830, 34.554977, 47.036373>,  <33.017540, 34.774658, 47.070839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.107830, 34.554977, 47.036373>,  <33.258316, 34.188843, 46.978931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.107830, 34.554977, 47.036373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264575, 0.042406, -0.963432,
		-0.887955, -0.400449, 0.226221,
		-0.376212, 0.915338, 0.143603,
		32.994965, 34.829578, 47.079453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.716820, 34.208515, 46.661716>,  <33.258316, 34.188843, 46.978931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.716820, 34.208515, 46.661716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.790848, 34.601570, 46.667061>,  <32.835266, 34.837402, 46.670265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.790848, 34.601570, 46.667061>,  <32.716820, 34.208515, 46.661716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.790848, 34.601570, 46.667061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396413, 0.087087, -0.913933,
		-0.899225, 0.163850, 0.405646,
		0.185074, 0.982634, 0.013359,
		32.846371, 34.896358, 46.671070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.048344, 34.511635, 46.446762>,  <32.716820, 34.208515, 46.661716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.048344, 34.511635, 46.446762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.294628, 34.824020, 46.404823>,  <32.442398, 35.011452, 46.379662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.294628, 34.824020, 46.404823>,  <32.048344, 34.511635, 46.446762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.294628, 34.824020, 46.404823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398677, 0.193981, -0.896341,
		-0.679671, 0.593690, 0.430789,
		0.615714, 0.780963, -0.104847,
		32.479343, 35.058308, 46.373367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.700405, 35.017799, 46.036644>,  <32.048344, 34.511635, 46.446762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.700405, 35.017799, 46.036644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.081242, 35.137245, 46.010265>,  <32.309742, 35.208912, 45.994438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.081242, 35.137245, 46.010265>,  <31.700405, 35.017799, 46.036644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.081242, 35.137245, 46.010265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179484, 0.371063, -0.911097,
		-0.247599, 0.879284, 0.406883,
		0.952093, 0.298616, -0.065943,
		32.366871, 35.226830, 45.990482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.761539, 35.738518, 45.777855>,  <31.700405, 35.017799, 46.036644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.761539, 35.738518, 45.777855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.105366, 35.553371, 45.691231>,  <32.311661, 35.442284, 45.639256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.105366, 35.553371, 45.691231>,  <31.761539, 35.738518, 45.777855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.105366, 35.553371, 45.691231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002917, 0.419324, -0.907832,
		0.511013, 0.780975, 0.359087,
		0.859568, -0.462867, -0.216558,
		32.363235, 35.414513, 45.626263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.296776, 36.268562, 45.471485>,  <31.761539, 35.738518, 45.777855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.296776, 36.268562, 45.471485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.419575, 35.897167, 45.387905>,  <32.493256, 35.674332, 45.337757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.419575, 35.897167, 45.387905>,  <32.296776, 36.268562, 45.471485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.419575, 35.897167, 45.387905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036239, 0.230802, -0.972326,
		0.951020, 0.290930, 0.104503,
		0.306998, -0.928488, -0.208955,
		32.511673, 35.618622, 45.325218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.942329, 36.360847, 45.117466>,  <32.296776, 36.268562, 45.471485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.942329, 36.360847, 45.117466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.830105, 35.988285, 45.024712>,  <32.762772, 35.764748, 44.969059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.830105, 35.988285, 45.024712>,  <32.942329, 36.360847, 45.117466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.830105, 35.988285, 45.024712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207243, 0.177113, -0.962123,
		0.937197, -0.317988, 0.143337,
		-0.280557, -0.931405, -0.231890,
		32.745937, 35.708862, 44.955143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.378727, 36.215240, 44.584003>,  <32.942329, 36.360847, 45.117466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.378727, 36.215240, 44.584003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.083794, 35.950012, 44.532356>,  <32.906834, 35.790874, 44.501366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.083794, 35.950012, 44.532356>,  <33.378727, 36.215240, 44.584003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.083794, 35.950012, 44.532356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124865, 0.054070, -0.990699,
		0.663888, -0.746599, 0.042927,
		-0.737334, -0.663074, -0.129120,
		32.862595, 35.751091, 44.493622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.591312, 35.671764, 44.084423>,  <33.378727, 36.215240, 44.584003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.591312, 35.671764, 44.084423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.192963, 35.636177, 44.091545>,  <32.953953, 35.614822, 44.095818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.192963, 35.636177, 44.091545>,  <33.591312, 35.671764, 44.084423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.192963, 35.636177, 44.091545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011576, -0.070090, -0.997474,
		0.089995, -0.993565, 0.068771,
		-0.995875, -0.088972, 0.017809,
		32.894199, 35.609486, 44.096889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.353374, 35.128895, 43.557026>,  <33.591312, 35.671764, 44.084423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.353374, 35.128895, 43.557026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.000549, 35.314144, 43.591625>,  <32.788857, 35.425293, 43.612385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.000549, 35.314144, 43.591625>,  <33.353374, 35.128895, 43.557026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.000549, 35.314144, 43.591625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114371, -0.032374, -0.992910,
		-0.457043, -0.885700, 0.081524,
		-0.882060, 0.463127, 0.086503,
		32.735931, 35.453083, 43.617577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.914284, 34.769215, 43.183727>,  <33.353374, 35.128895, 43.557026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.914284, 34.769215, 43.183727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.778835, 35.145538, 43.189507>,  <32.697567, 35.371334, 43.192974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.778835, 35.145538, 43.189507>,  <32.914284, 34.769215, 43.183727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.778835, 35.145538, 43.189507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208023, -0.059884, -0.976289,
		-0.917638, -0.333601, 0.215988,
		-0.338625, 0.940811, 0.014445,
		32.677246, 35.427780, 43.193840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.333141, 34.769562, 42.782597>,  <32.914284, 34.769215, 43.183727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.333141, 34.769562, 42.782597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.448357, 35.152592, 42.786217>,  <32.517487, 35.382412, 42.788391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.448357, 35.152592, 42.786217>,  <32.333141, 34.769562, 42.782597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.448357, 35.152592, 42.786217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273508, 0.091324, -0.957525,
		-0.917730, 0.273325, 0.288209,
		0.288036, 0.957577, 0.009054,
		32.534767, 35.439865, 42.788933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.944715, 35.090580, 42.253716>,  <32.333141, 34.769562, 42.782597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.944715, 35.090580, 42.253716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.205284, 35.383083, 42.334618>,  <32.361626, 35.558586, 42.383160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.205284, 35.383083, 42.334618>,  <31.944715, 35.090580, 42.253716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.205284, 35.383083, 42.334618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215363, 0.433829, -0.874878,
		-0.727509, 0.526356, 0.440091,
		0.651421, 0.731261, 0.202257,
		32.400711, 35.602463, 42.395294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.706867, 35.675812, 41.934086>,  <31.944715, 35.090580, 42.253716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.706867, 35.675812, 41.934086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.095879, 35.758518, 41.976868>,  <32.329285, 35.808144, 42.002537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.095879, 35.758518, 41.976868>,  <31.706867, 35.675812, 41.934086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.095879, 35.758518, 41.976868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005639, 0.438393, -0.898766,
		-0.232722, 0.874677, 0.425183,
		0.972527, 0.206765, 0.106956,
		32.387638, 35.820549, 42.008953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.767235, 36.452030, 41.653160>,  <31.706867, 35.675812, 41.934086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.767235, 36.452030, 41.653160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.109581, 36.247089, 41.624905>,  <32.314991, 36.124126, 41.607952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.109581, 36.247089, 41.624905>,  <31.767235, 36.452030, 41.653160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.109581, 36.247089, 41.624905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198100, 0.450917, -0.870305,
		0.477753, 0.730871, 0.487421,
		0.855867, -0.512349, -0.070642,
		32.366341, 36.093384, 41.603710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.267609, 36.892170, 41.359390>,  <31.767235, 36.452030, 41.653160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.267609, 36.892170, 41.359390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.438663, 36.535271, 41.301392>,  <32.541298, 36.321133, 41.266594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.438663, 36.535271, 41.301392>,  <32.267609, 36.892170, 41.359390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.438663, 36.535271, 41.301392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369459, 0.318909, -0.872810,
		0.825001, 0.319676, 0.466026,
		0.427636, -0.892246, -0.144993,
		32.566956, 36.267597, 41.257893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.819061, 37.056595, 41.005669>,  <32.267609, 36.892170, 41.359390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.819061, 37.056595, 41.005669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.823006, 36.661549, 40.943035>,  <32.825371, 36.424522, 40.905457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.823006, 36.661549, 40.943035>,  <32.819061, 37.056595, 41.005669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.823006, 36.661549, 40.943035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365036, 0.149338, -0.918938,
		0.930941, -0.048097, 0.361988,
		0.009860, -0.987616, -0.156582,
		32.825962, 36.365265, 40.896061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.424679, 36.919582, 40.768024>,  <32.819061, 37.056595, 41.005669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.424679, 36.919582, 40.768024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.195911, 36.617016, 40.641056>,  <33.058651, 36.435478, 40.564877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.195911, 36.617016, 40.641056>,  <33.424679, 36.919582, 40.768024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.195911, 36.617016, 40.641056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347331, 0.127258, -0.929068,
		0.743152, -0.641597, 0.189944,
		-0.571915, -0.756412, -0.317419,
		33.024338, 36.390091, 40.545830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.869637, 36.516861, 40.295677>,  <33.424679, 36.919582, 40.768024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.869637, 36.516861, 40.295677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.485584, 36.462101, 40.198193>,  <33.255154, 36.429245, 40.139702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.485584, 36.462101, 40.198193>,  <33.869637, 36.516861, 40.295677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.485584, 36.462101, 40.198193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197145, 0.286467, -0.937587,
		0.198174, -0.948258, -0.248058,
		-0.960136, -0.136902, -0.243715,
		33.197544, 36.421028, 40.125076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.309624, 36.209038, 40.887352>,  <33.869637, 36.516861, 40.295677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.309624, 36.209038, 40.887352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.380600, 35.819397, 40.943420>,  <34.423187, 35.585613, 40.977062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.380600, 35.819397, 40.943420>,  <34.309624, 36.209038, 40.887352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.380600, 35.819397, 40.943420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823613, -0.224949, -0.520634,
		0.538681, -0.023066, -0.842194,
		0.177441, -0.974097, 0.140173,
		34.433834, 35.527168, 40.985474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.859562, 35.704300, 40.536293>,  <34.309624, 36.209038, 40.887352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.859562, 35.704300, 40.536293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.230640, 35.776627, 40.405647>,  <35.453289, 35.820023, 40.327259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.230640, 35.776627, 40.405647>,  <34.859562, 35.704300, 40.536293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.230640, 35.776627, 40.405647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373000, -0.412470, 0.831107,
		0.015557, -0.892846, -0.450093,
		0.927701, 0.180814, -0.326615,
		35.508949, 35.830872, 40.307663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.318958, 35.097893, 40.673359>,  <34.859562, 35.704300, 40.536293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.318958, 35.097893, 40.673359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.544403, 35.424412, 40.622757>,  <35.679668, 35.620323, 40.592396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.544403, 35.424412, 40.622757>,  <35.318958, 35.097893, 40.673359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.544403, 35.424412, 40.622757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526913, -0.237330, 0.816111,
		0.636163, -0.526628, -0.563879,
		0.563613, 0.816295, -0.126506,
		35.713486, 35.669300, 40.584805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.006989, 34.832802, 40.959339>,  <35.318958, 35.097893, 40.673359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.006989, 34.832802, 40.959339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.024361, 35.232269, 40.948174>,  <36.034786, 35.471951, 40.941475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.024361, 35.232269, 40.948174>,  <36.006989, 34.832802, 40.959339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.024361, 35.232269, 40.948174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345082, 0.011226, 0.938505,
		0.937567, -0.050396, -0.344134,
		0.043433, 0.998666, -0.027916,
		36.037392, 35.531868, 40.939800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.672623, 35.040733, 41.285591>,  <36.006989, 34.832802, 40.959339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.672623, 35.040733, 41.285591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.429955, 35.356922, 41.319313>,  <36.284355, 35.546635, 41.339546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.429955, 35.356922, 41.319313>,  <36.672623, 35.040733, 41.285591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.429955, 35.356922, 41.319313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208537, 0.055910, 0.976415,
		0.767115, 0.609942, -0.198761,
		-0.606669, 0.790471, 0.084306,
		36.247955, 35.594063, 41.344604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.026970, 35.538570, 41.766342>,  <36.672623, 35.040733, 41.285591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.026970, 35.538570, 41.766342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.638847, 35.634594, 41.754478>,  <36.405975, 35.692207, 41.747360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.638847, 35.634594, 41.754478>,  <37.026970, 35.538570, 41.766342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.638847, 35.634594, 41.754478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033780, -0.013067, 0.999344,
		0.239512, 0.970671, 0.020788,
		-0.970306, 0.240057, -0.029660,
		36.347755, 35.706612, 41.745579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.967625, 36.081074, 42.230927>,  <37.026970, 35.538570, 41.766342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.967625, 36.081074, 42.230927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.602654, 35.921883, 42.192806>,  <36.383671, 35.826366, 42.169933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.602654, 35.921883, 42.192806>,  <36.967625, 36.081074, 42.230927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.602654, 35.921883, 42.192806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138489, 0.081150, 0.987034,
		-0.385084, 0.913799, -0.129159,
		-0.912432, -0.397978, -0.095302,
		36.328922, 35.802490, 42.164215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.500034, 36.447693, 42.741901>,  <36.967625, 36.081074, 42.230927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.500034, 36.447693, 42.741901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.279003, 36.133068, 42.631641>,  <36.146385, 35.944294, 42.565487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.279003, 36.133068, 42.631641>,  <36.500034, 36.447693, 42.741901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.279003, 36.133068, 42.631641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192143, -0.201597, 0.960437,
		-0.811009, 0.583683, -0.039733,
		-0.552581, -0.786558, -0.275648,
		36.113228, 35.897102, 42.548946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.835812, 36.487171, 43.156906>,  <36.500034, 36.447693, 42.741901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.835812, 36.487171, 43.156906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.865952, 36.095528, 43.081364>,  <35.884037, 35.860542, 43.036037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.865952, 36.095528, 43.081364>,  <35.835812, 36.487171, 43.156906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.865952, 36.095528, 43.081364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384371, -0.203276, 0.900521,
		-0.920098, 0.004736, -0.391659,
		0.075349, -0.979110, -0.188854,
		35.888557, 35.801796, 43.024708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.476162, 36.210667, 43.589798>,  <35.835812, 36.487171, 43.156906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.476162, 36.210667, 43.589798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.599949, 35.858570, 43.445904>,  <35.674221, 35.647312, 43.359570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.599949, 35.858570, 43.445904>,  <35.476162, 36.210667, 43.589798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.599949, 35.858570, 43.445904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241894, -0.438729, 0.865450,
		-0.919629, -0.180809, -0.348697,
		0.309465, -0.880241, -0.359731,
		35.692787, 35.594498, 43.337986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.900566, 35.811115, 43.755806>,  <35.476162, 36.210667, 43.589798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.900566, 35.811115, 43.755806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.230244, 35.586140, 43.729389>,  <35.428051, 35.451153, 43.713539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.230244, 35.586140, 43.729389>,  <34.900566, 35.811115, 43.755806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.230244, 35.586140, 43.729389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263350, -0.483908, 0.834553,
		-0.501341, -0.670446, -0.546955,
		0.824199, -0.562437, -0.066041,
		35.477501, 35.417408, 43.709576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.674686, 35.032337, 43.776772>,  <34.900566, 35.811115, 43.755806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.674686, 35.032337, 43.776772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.052555, 35.057049, 43.905624>,  <35.279278, 35.071877, 43.982937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.052555, 35.057049, 43.905624>,  <34.674686, 35.032337, 43.776772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.052555, 35.057049, 43.905624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244788, -0.520920, 0.817754,
		0.218328, -0.851367, -0.476977,
		0.944676, 0.061781, 0.322136,
		35.335957, 35.075584, 44.002266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.688984, 34.480919, 44.161205>,  <34.674686, 35.032337, 43.776772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.688984, 34.480919, 44.161205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.011612, 34.667923, 44.305912>,  <35.205189, 34.780125, 44.392735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.011612, 34.667923, 44.305912>,  <34.688984, 34.480919, 44.161205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.011612, 34.667923, 44.305912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131404, -0.454875, 0.880807,
		0.576348, -0.757971, -0.305456,
		0.806571, 0.467513, 0.361767,
		35.253582, 34.808178, 44.414440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.120289, 34.035942, 44.437290>,  <34.688984, 34.480919, 44.161205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.120289, 34.035942, 44.437290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.222412, 34.382183, 44.609589>,  <35.283688, 34.589928, 44.712967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.222412, 34.382183, 44.609589>,  <35.120289, 34.035942, 44.437290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.222412, 34.382183, 44.609589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083679, -0.424056, 0.901762,
		0.963231, -0.266274, -0.035834,
		0.255312, 0.865606, 0.430745,
		35.299007, 34.641865, 44.738811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.394909, 33.783905, 44.997753>,  <35.120289, 34.035942, 44.437290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.394909, 33.783905, 44.997753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.395641, 34.168568, 45.107456>,  <35.396080, 34.399364, 45.173279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.395641, 34.168568, 45.107456>,  <35.394909, 33.783905, 44.997753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.395641, 34.168568, 45.107456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027630, -0.274105, 0.961303,
		0.999617, -0.009341, 0.026068,
		0.001834, 0.961654, 0.274258,
		35.396191, 34.457066, 45.189735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.920456, 33.900558, 45.535572>,  <35.394909, 33.783905, 44.997753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.920456, 33.900558, 45.535572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.685081, 34.219551, 45.588886>,  <35.543858, 34.410946, 45.620876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.685081, 34.219551, 45.588886>,  <35.920456, 33.900558, 45.535572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.685081, 34.219551, 45.588886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048486, -0.199358, 0.978727,
		0.807089, 0.569455, 0.155976,
		-0.588436, 0.797482, 0.133288,
		35.508553, 34.458797, 45.628872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.242954, 34.263084, 46.160320>,  <35.920456, 33.900558, 45.535572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.242954, 34.263084, 46.160320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.857071, 34.360317, 46.119827>,  <35.625542, 34.418655, 46.095531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.857071, 34.360317, 46.119827>,  <36.242954, 34.263084, 46.160320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.857071, 34.360317, 46.119827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109540, -0.020888, 0.993763,
		0.239452, 0.969781, 0.046778,
		-0.964709, 0.243082, -0.101228,
		35.567657, 34.433243, 46.089458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.187191, 34.642056, 46.644646>,  <36.242954, 34.263084, 46.160320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.187191, 34.642056, 46.644646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.810219, 34.538342, 46.560181>,  <35.584034, 34.476112, 46.509502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.810219, 34.538342, 46.560181>,  <36.187191, 34.642056, 46.644646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.810219, 34.538342, 46.560181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181800, -0.132719, 0.974338,
		-0.280660, 0.956638, 0.077940,
		-0.942432, -0.259289, -0.211165,
		35.527489, 34.460556, 46.496830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.835941, 35.013348, 47.106300>,  <36.187191, 34.642056, 46.644646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.835941, 35.013348, 47.106300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.607407, 34.706425, 46.989807>,  <35.470287, 34.522270, 46.919910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.607407, 34.706425, 46.989807>,  <35.835941, 35.013348, 47.106300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.607407, 34.706425, 46.989807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287729, -0.145066, 0.946661,
		-0.768626, 0.624660, -0.137894,
		-0.571338, -0.767305, -0.291234,
		35.436005, 34.476234, 46.902435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.226437, 35.179859, 47.436794>,  <35.835941, 35.013348, 47.106300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.226437, 35.179859, 47.436794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.240952, 34.795902, 47.325592>,  <35.249660, 34.565529, 47.258869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.240952, 34.795902, 47.325592>,  <35.226437, 35.179859, 47.436794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.240952, 34.795902, 47.325592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226021, -0.278868, 0.933353,
		-0.973446, 0.028965, -0.227076,
		0.036290, -0.959892, -0.278010,
		35.251839, 34.507935, 47.242188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.581264, 34.745895, 47.529316>,  <35.226437, 35.179859, 47.436794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.581264, 34.745895, 47.529316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.939548, 34.585697, 47.606579>,  <35.154518, 34.489578, 47.652935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.939548, 34.585697, 47.606579>,  <34.581264, 34.745895, 47.529316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.939548, 34.585697, 47.606579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232003, -0.050371, 0.971410,
		-0.379315, -0.914913, -0.138034,
		0.895709, -0.400495, 0.193156,
		35.208260, 34.465549, 47.664524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.482330, 34.025013, 47.964111>,  <34.581264, 34.745895, 47.529316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.482330, 34.025013, 47.964111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.798187, 34.266899, 48.005646>,  <34.987701, 34.412033, 48.030567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.798187, 34.266899, 48.005646>,  <34.482330, 34.025013, 47.964111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.798187, 34.266899, 48.005646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105571, -0.032795, 0.993871,
		0.604417, -0.795764, 0.037944,
		0.789642, 0.604718, 0.103831,
		35.035080, 34.448315, 48.036797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.990658, 33.745075, 48.437386>,  <34.482330, 34.025013, 47.964111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.990658, 33.745075, 48.437386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.033695, 34.142704, 48.443687>,  <35.059517, 34.381279, 48.447468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.033695, 34.142704, 48.443687>,  <34.990658, 33.745075, 48.437386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.033695, 34.142704, 48.443687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103840, -0.027000, 0.994228,
		0.988757, -0.105341, -0.106130,
		0.107598, 0.994070, 0.015758,
		35.065975, 34.440926, 48.448414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.528259, 33.818153, 48.982681>,  <34.990658, 33.745075, 48.437386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.528259, 33.818153, 48.982681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.356010, 34.177013, 48.943298>,  <35.252663, 34.392330, 48.919666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.356010, 34.177013, 48.943298>,  <35.528259, 33.818153, 48.982681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.356010, 34.177013, 48.943298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016616, 0.116955, 0.992998,
		0.902382, 0.425967, -0.065270,
		-0.430618, 0.897148, -0.098461,
		35.226826, 34.446159, 48.913761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.869690, 34.261124, 49.464787>,  <35.528259, 33.818153, 48.982681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.869690, 34.261124, 49.464787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.518375, 34.444820, 49.411552>,  <35.307587, 34.555038, 49.379612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.518375, 34.444820, 49.411552>,  <35.869690, 34.261124, 49.464787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.518375, 34.444820, 49.411552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038318, 0.345045, 0.937803,
		0.476598, 0.818560, -0.320646,
		-0.878286, 0.459242, -0.133082,
		35.254890, 34.582592, 49.371628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.061092, 35.048286, 49.591927>,  <35.869690, 34.261124, 49.464787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.061092, 35.048286, 49.591927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.662384, 35.073402, 49.611973>,  <35.423161, 35.088474, 49.624001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.662384, 35.073402, 49.611973>,  <36.061092, 35.048286, 49.591927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.662384, 35.073402, 49.611973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077805, 0.599091, 0.796892,
		0.020016, 0.798215, -0.602040,
		-0.996768, 0.062792, 0.050114,
		35.363354, 35.092239, 49.627007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.845135, 35.799019, 49.720722>,  <36.061092, 35.048286, 49.591927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.845135, 35.799019, 49.720722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.543411, 35.559509, 49.828411>,  <35.362377, 35.415802, 49.893024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.543411, 35.559509, 49.828411>,  <35.845135, 35.799019, 49.720722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.543411, 35.559509, 49.828411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068393, 0.479513, 0.874865,
		-0.652943, 0.641509, -0.402655,
		-0.754313, -0.598776, 0.269220,
		35.317116, 35.379875, 49.909176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.304943, 36.216389, 50.005615>,  <35.845135, 35.799019, 49.720722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.304943, 36.216389, 50.005615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.229187, 35.849884, 50.146812>,  <35.183735, 35.629982, 50.231529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.229187, 35.849884, 50.146812>,  <35.304943, 36.216389, 50.005615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.229187, 35.849884, 50.146812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043724, 0.351271, 0.935252,
		-0.980928, 0.192562, -0.026465,
		-0.189390, -0.916258, 0.352991,
		35.172371, 35.575008, 50.252708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.849960, 36.324223, 50.597225>,  <35.304943, 36.216389, 50.005615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.849960, 36.324223, 50.597225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.000774, 35.956856, 50.645149>,  <35.091263, 35.736435, 50.673904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.000774, 35.956856, 50.645149>,  <34.849960, 36.324223, 50.597225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.000774, 35.956856, 50.645149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176971, 0.198414, 0.964009,
		-0.909133, -0.342265, 0.237343,
		0.377038, -0.918415, 0.119813,
		35.113884, 35.681332, 50.681095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.691513, 36.226627, 51.296383>,  <34.849960, 36.324223, 50.597225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.691513, 36.226627, 51.296383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.973316, 35.959888, 51.199230>,  <35.142399, 35.799847, 51.140938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.973316, 35.959888, 51.199230>,  <34.691513, 36.226627, 51.296383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.973316, 35.959888, 51.199230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489885, 0.209311, 0.846287,
		-0.513505, -0.715196, 0.474138,
		0.704504, -0.666846, -0.242881,
		35.184666, 35.759834, 51.126366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.749264, 35.776180, 51.918816>,  <34.691513, 36.226627, 51.296383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.749264, 35.776180, 51.918816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.104378, 35.740368, 51.738232>,  <35.317448, 35.718880, 51.629879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.104378, 35.740368, 51.738232>,  <34.749264, 35.776180, 51.918816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.104378, 35.740368, 51.738232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457861, 0.071845, 0.886116,
		-0.046904, -0.993389, 0.104778,
		0.887785, -0.089536, -0.451464,
		35.370712, 35.713509, 51.602791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.090630, 35.215263, 52.220062>,  <34.749264, 35.776180, 51.918816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.090630, 35.215263, 52.220062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.388153, 35.426891, 52.056679>,  <35.566666, 35.553867, 51.958649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.388153, 35.426891, 52.056679>,  <35.090630, 35.215263, 52.220062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.388153, 35.426891, 52.056679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493047, -0.021696, 0.869732,
		0.451283, -0.848304, -0.276992,
		0.743806, 0.529065, -0.408463,
		35.611294, 35.585609, 51.934139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.780605, 34.976913, 52.559471>,  <35.090630, 35.215263, 52.220062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.780605, 34.976913, 52.559471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.863312, 35.322620, 52.376038>,  <35.912937, 35.530045, 52.265980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.863312, 35.322620, 52.376038>,  <35.780605, 34.976913, 52.559471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.863312, 35.322620, 52.376038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625115, 0.243864, 0.741459,
		0.752647, -0.439976, -0.489841,
		0.206769, 0.864264, -0.458579,
		35.925343, 35.581898, 52.238464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.421925, 35.032803, 52.531376>,  <35.780605, 34.976913, 52.559471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.421925, 35.032803, 52.531376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.311245, 35.416225, 52.504234>,  <36.244839, 35.646278, 52.487949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.311245, 35.416225, 52.504234>,  <36.421925, 35.032803, 52.531376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.311245, 35.416225, 52.504234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568489, 0.220210, 0.792672,
		0.774764, 0.180759, -0.605861,
		-0.276699, 0.958558, -0.067851,
		36.228233, 35.703793, 52.483879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.035374, 35.341763, 52.661949>,  <36.421925, 35.032803, 52.531376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.035374, 35.341763, 52.661949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.787727, 35.647514, 52.733967>,  <36.639137, 35.830967, 52.777176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.787727, 35.647514, 52.733967>,  <37.035374, 35.341763, 52.661949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.787727, 35.647514, 52.733967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577702, 0.288029, 0.763741,
		0.531931, 0.576856, -0.619908,
		-0.619120, 0.764379, 0.180039,
		36.601990, 35.876827, 52.787979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.411430, 36.064129, 52.657814>,  <37.035374, 35.341763, 52.661949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.411430, 36.064129, 52.657814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.087387, 36.095306, 52.890244>,  <36.892960, 36.114014, 53.029701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.087387, 36.095306, 52.890244>,  <37.411430, 36.064129, 52.657814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.087387, 36.095306, 52.890244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582868, 0.213791, 0.783937,
		-0.063126, 0.973765, -0.218625,
		-0.810111, 0.077943, 0.581073,
		36.844353, 36.118690, 53.064564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.438686, 36.685310, 52.972301>,  <37.411430, 36.064129, 52.657814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.438686, 36.685310, 52.972301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.166042, 36.534466, 53.223125>,  <37.002457, 36.443958, 53.373619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.166042, 36.534466, 53.223125>,  <37.438686, 36.685310, 52.972301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.166042, 36.534466, 53.223125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505176, 0.377427, 0.776110,
		-0.529347, 0.845776, -0.066750,
		-0.681608, -0.377111, 0.627055,
		36.961559, 36.421333, 53.411243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.300827, 37.246544, 53.364590>,  <37.438686, 36.685310, 52.972301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.300827, 37.246544, 53.364590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.188900, 36.919605, 53.566044>,  <37.121742, 36.723442, 53.686916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.188900, 36.919605, 53.566044>,  <37.300827, 37.246544, 53.364590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.188900, 36.919605, 53.566044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725257, 0.163756, 0.668719,
		-0.629048, 0.552384, 0.546964,
		-0.279821, -0.817347, 0.503631,
		37.104954, 36.674400, 53.717133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.123524, 37.397346, 54.048744>,  <37.300827, 37.246544, 53.364590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.123524, 37.397346, 54.048744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.295979, 37.036762, 54.033302>,  <37.399452, 36.820412, 54.024036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.295979, 37.036762, 54.033302>,  <37.123524, 37.397346, 54.048744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.295979, 37.036762, 54.033302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747924, 0.333119, 0.574144,
		-0.504706, -0.276413, 0.817843,
		0.431140, -0.901459, -0.038608,
		37.425320, 36.766323, 54.021721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.188858, 38.196526, 53.977406>,  <37.123524, 37.397346, 54.048744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.188858, 38.196526, 53.977406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.502876, 38.440540, 53.934380>,  <37.691288, 38.586948, 53.908566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.502876, 38.440540, 53.934380>,  <37.188858, 38.196526, 53.977406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.502876, 38.440540, 53.934380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223227, 0.116626, -0.967764,
		-0.577823, 0.783747, 0.227732,
		0.785042, 0.610032, -0.107564,
		37.738388, 38.623550, 53.902111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.053833, 38.867886, 53.653194>,  <37.188858, 38.196526, 53.977406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.053833, 38.867886, 53.653194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.422394, 38.727654, 53.586128>,  <37.643532, 38.643513, 53.545891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.422394, 38.727654, 53.586128>,  <37.053833, 38.867886, 53.653194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.422394, 38.727654, 53.586128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156273, 0.060752, -0.985844,
		0.355804, 0.934560, 0.001190,
		0.921402, -0.350581, -0.167662,
		37.698814, 38.622478, 53.535831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.364017, 39.334381, 53.147675>,  <37.053833, 38.867886, 53.653194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.364017, 39.334381, 53.147675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.564278, 38.988331, 53.135590>,  <37.684433, 38.780701, 53.128338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.564278, 38.988331, 53.135590>,  <37.364017, 39.334381, 53.147675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.564278, 38.988331, 53.135590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041312, 0.058744, -0.997418,
		0.864665, 0.498106, 0.065150,
		0.500647, -0.865124, -0.030216,
		37.714470, 38.728794, 53.126526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.829037, 39.503654, 52.650253>,  <37.364017, 39.334381, 53.147675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.829037, 39.503654, 52.650253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.791641, 39.106243, 52.676048>,  <37.769203, 38.867798, 52.691525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.791641, 39.106243, 52.676048>,  <37.829037, 39.503654, 52.650253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.791641, 39.106243, 52.676048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082075, -0.072238, -0.994005,
		0.992232, -0.087637, 0.088297,
		-0.093490, -0.993530, 0.064484,
		37.763596, 38.808186, 52.695393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.184566, 39.323978, 52.037292>,  <37.829037, 39.503654, 52.650253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.184566, 39.323978, 52.037292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.986412, 38.990356, 52.134403>,  <37.867519, 38.790184, 52.192669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.986412, 38.990356, 52.134403>,  <38.184566, 39.323978, 52.037292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.986412, 38.990356, 52.134403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247751, -0.132216, -0.959759,
		0.832596, -0.535596, -0.141142,
		-0.495382, -0.834060, 0.242778,
		37.837799, 38.740139, 52.207237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.384567, 38.842670, 51.599941>,  <38.184566, 39.323978, 52.037292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.384567, 38.842670, 51.599941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.040001, 38.688400, 51.732136>,  <37.833263, 38.595837, 51.811451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.040001, 38.688400, 51.732136>,  <38.384567, 38.842670, 51.599941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.040001, 38.688400, 51.732136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258112, -0.227980, -0.938831,
		0.437430, -0.894023, 0.096837,
		-0.861414, -0.385678, 0.330483,
		37.781578, 38.572697, 51.831280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.405693, 38.219307, 51.250423>,  <38.384567, 38.842670, 51.599941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.405693, 38.219307, 51.250423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.035694, 38.332535, 51.351814>,  <37.813694, 38.400471, 51.412651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.035694, 38.332535, 51.351814>,  <38.405693, 38.219307, 51.250423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.035694, 38.332535, 51.351814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326649, -0.251599, -0.911042,
		-0.194105, -0.925513, 0.325190,
		-0.924999, 0.283061, 0.253482,
		37.758194, 38.417454, 51.427856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.049889, 37.560444, 51.240032>,  <38.405693, 38.219307, 51.250423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.049889, 37.560444, 51.240032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.796104, 37.868122, 51.209583>,  <37.643833, 38.052731, 51.191315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.796104, 37.868122, 51.209583>,  <38.049889, 37.560444, 51.240032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.796104, 37.868122, 51.209583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389818, -0.403457, -0.827807,
		-0.667462, -0.495534, 0.555824,
		-0.634458, 0.769200, -0.076124,
		37.605766, 38.098881, 51.186745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.389339, 37.353432, 51.067741>,  <38.049889, 37.560444, 51.240032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.389339, 37.353432, 51.067741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.331951, 37.731289, 50.949718>,  <37.297520, 37.958004, 50.878906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.331951, 37.731289, 50.949718>,  <37.389339, 37.353432, 51.067741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.331951, 37.731289, 50.949718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470182, -0.327405, -0.819594,
		-0.870830, 0.021142, 0.491129,
		-0.143471, 0.944648, -0.295054,
		37.288910, 38.014683, 50.861202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.736618, 37.275089, 50.800037>,  <37.389339, 37.353432, 51.067741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.736618, 37.275089, 50.800037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.898087, 37.611481, 50.655922>,  <36.994968, 37.813316, 50.569454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.898087, 37.611481, 50.655922>,  <36.736618, 37.275089, 50.800037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.898087, 37.611481, 50.655922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261735, -0.271188, -0.926257,
		-0.876665, 0.468207, 0.110641,
		0.403675, 0.840975, -0.360287,
		37.019188, 37.863773, 50.547836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.256767, 37.439968, 50.278183>,  <36.736618, 37.275089, 50.800037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.256767, 37.439968, 50.278183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.585850, 37.643585, 50.176968>,  <36.783298, 37.765755, 50.116238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.585850, 37.643585, 50.176968>,  <36.256767, 37.439968, 50.278183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.585850, 37.643585, 50.176968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167115, -0.208874, -0.963558,
		-0.543346, 0.835012, -0.086773,
		0.822708, 0.509044, -0.253034,
		36.832661, 37.796299, 50.101059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.118073, 37.925785, 49.768391>,  <36.256767, 37.439968, 50.278183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.118073, 37.925785, 49.768391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.514244, 37.898727, 49.720257>,  <36.751945, 37.882492, 49.691376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.514244, 37.898727, 49.720257>,  <36.118073, 37.925785, 49.768391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.514244, 37.898727, 49.720257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123296, -0.041403, -0.991506,
		0.062085, 0.996850, -0.049347,
		0.990426, -0.067642, -0.120337,
		36.811371, 37.878433, 49.684155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.319340, 38.405041, 49.235554>,  <36.118073, 37.925785, 49.768391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.319340, 38.405041, 49.235554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.617538, 38.140408, 49.267925>,  <36.796455, 37.981628, 49.287350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.617538, 38.140408, 49.267925>,  <36.319340, 38.405041, 49.235554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.617538, 38.140408, 49.267925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088991, -0.219138, -0.971627,
		0.660546, 0.717139, -0.222241,
		0.745493, -0.661582, 0.080932,
		36.841187, 37.941933, 49.292206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.806499, 38.590179, 48.695461>,  <36.319340, 38.405041, 49.235554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.806499, 38.590179, 48.695461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.887268, 38.209370, 48.787449>,  <36.935730, 37.980885, 48.842640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.887268, 38.209370, 48.787449>,  <36.806499, 38.590179, 48.695461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.887268, 38.209370, 48.787449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222912, -0.183971, -0.957322,
		0.953698, 0.244563, 0.175070,
		0.201918, -0.952021, 0.229968,
		36.947842, 37.923763, 48.856438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.390068, 38.423336, 48.208241>,  <36.806499, 38.590179, 48.695461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.390068, 38.423336, 48.208241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.261944, 38.068115, 48.340157>,  <37.185070, 37.854980, 48.419308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.261944, 38.068115, 48.340157>,  <37.390068, 38.423336, 48.208241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.261944, 38.068115, 48.340157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208445, -0.405674, -0.889932,
		0.924097, -0.216307, 0.315051,
		-0.320307, -0.888054, 0.329793,
		37.165852, 37.801701, 48.439095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.823940, 37.926083, 47.998505>,  <37.390068, 38.423336, 48.208241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.823940, 37.926083, 47.998505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.487545, 37.720520, 48.066193>,  <37.285706, 37.597183, 48.106808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.487545, 37.720520, 48.066193>,  <37.823940, 37.926083, 47.998505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.487545, 37.720520, 48.066193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110249, -0.468980, -0.876301,
		0.529696, -0.718305, 0.451066,
		-0.840992, -0.513902, 0.169224,
		37.235249, 37.566349, 48.116959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.940029, 37.134281, 47.929131>,  <37.823940, 37.926083, 47.998505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.940029, 37.134281, 47.929131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.568474, 37.248337, 47.834591>,  <37.345539, 37.316772, 47.777866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.568474, 37.248337, 47.834591>,  <37.940029, 37.134281, 47.929131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.568474, 37.248337, 47.834591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073340, -0.483897, -0.872046,
		-0.363024, -0.827368, 0.428575,
		-0.928889, 0.285142, -0.236345,
		37.289806, 37.333881, 47.763687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.659622, 36.556973, 47.680492>,  <37.940029, 37.134281, 47.929131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.659622, 36.556973, 47.680492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.387173, 36.819374, 47.550430>,  <37.223701, 36.976814, 47.472393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.387173, 36.819374, 47.550430>,  <37.659622, 36.556973, 47.680492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.387173, 36.819374, 47.550430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022604, -0.462731, -0.886210,
		-0.731821, -0.596268, 0.330005,
		-0.681122, 0.656007, -0.325158,
		37.182835, 37.016174, 47.452885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.226879, 36.198208, 47.179897>,  <37.659622, 36.556973, 47.680492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.226879, 36.198208, 47.179897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.145004, 36.580208, 47.094032>,  <37.095879, 36.809406, 47.042511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.145004, 36.580208, 47.094032>,  <37.226879, 36.198208, 47.179897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.145004, 36.580208, 47.094032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162170, -0.249364, -0.954735,
		-0.965300, -0.160608, 0.205913,
		-0.204685, 0.954999, -0.214665,
		37.083599, 36.866707, 47.029633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.727383, 36.145741, 46.734558>,  <37.226879, 36.198208, 47.179897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.727383, 36.145741, 46.734558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.867477, 36.511536, 46.653526>,  <36.951534, 36.731014, 46.604908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.867477, 36.511536, 46.653526>,  <36.727383, 36.145741, 46.734558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.867477, 36.511536, 46.653526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096251, -0.179993, -0.978947,
		-0.931701, 0.362366, 0.024980,
		0.350241, 0.914491, -0.202578,
		36.972549, 36.785881, 46.592754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.393333, 36.275204, 46.168556>,  <36.727383, 36.145741, 46.734558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.393333, 36.275204, 46.168556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.697018, 36.535522, 46.171783>,  <36.879227, 36.691715, 46.173717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.697018, 36.535522, 46.171783>,  <36.393333, 36.275204, 46.168556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.697018, 36.535522, 46.171783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107454, -0.113111, -0.987755,
		-0.641918, 0.750777, -0.155805,
		0.759207, 0.650799, 0.008066,
		36.924778, 36.730762, 46.174202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.203812, 36.751221, 45.583832>,  <36.393333, 36.275204, 46.168556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.203812, 36.751221, 45.583832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.595329, 36.757195, 45.665562>,  <36.830238, 36.760780, 45.714600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.595329, 36.757195, 45.665562>,  <36.203812, 36.751221, 45.583832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.595329, 36.757195, 45.665562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204111, 0.014576, -0.978839,
		-0.017598, 0.999782, 0.011218,
		0.978790, 0.014936, 0.204323,
		36.888966, 36.761677, 45.726860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.518345, 37.324631, 45.125313>,  <36.203812, 36.751221, 45.583832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.518345, 37.324631, 45.125313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.803108, 37.064823, 45.232124>,  <36.973969, 36.908939, 45.296211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.803108, 37.064823, 45.232124>,  <36.518345, 37.324631, 45.125313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.803108, 37.064823, 45.232124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277058, -0.089635, -0.956663,
		0.645308, 0.755042, 0.116143,
		0.711910, -0.649521, 0.267033,
		37.016682, 36.869968, 45.312233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.082253, 37.493736, 44.754787>,  <36.518345, 37.324631, 45.125313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.082253, 37.493736, 44.754787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.170506, 37.127876, 44.890274>,  <37.223457, 36.908360, 44.971565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.170506, 37.127876, 44.890274>,  <37.082253, 37.493736, 44.754787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.170506, 37.127876, 44.890274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476756, -0.201828, -0.855552,
		0.850896, 0.350250, 0.391536,
		0.220635, -0.914653, 0.338718,
		37.236694, 36.853481, 44.991890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.785431, 37.439690, 44.736385>,  <37.082253, 37.493736, 44.754787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.785431, 37.439690, 44.736385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.655308, 37.061523, 44.744095>,  <37.577236, 36.834625, 44.748722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.655308, 37.061523, 44.744095>,  <37.785431, 37.439690, 44.736385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.655308, 37.061523, 44.744095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549060, -0.205444, -0.810139,
		0.769876, -0.252958, 0.585921,
		-0.325305, -0.945413, 0.019277,
		37.557716, 36.777901, 44.749878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.319893, 37.137226, 44.379993>,  <37.785431, 37.439690, 44.736385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.319893, 37.137226, 44.379993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.044025, 36.849277, 44.348660>,  <37.878506, 36.676510, 44.329857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.044025, 36.849277, 44.348660>,  <38.319893, 37.137226, 44.379993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.044025, 36.849277, 44.348660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353480, -0.240270, -0.904059,
		0.631985, -0.651194, 0.420168,
		-0.689671, -0.719873, -0.078337,
		37.837124, 36.633316, 44.325157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.676666, 36.499905, 44.257240>,  <38.319893, 37.137226, 44.379993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.676666, 36.499905, 44.257240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.305607, 36.463280, 44.112419>,  <38.082970, 36.441303, 44.025528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.305607, 36.463280, 44.112419>,  <38.676666, 36.499905, 44.257240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.305607, 36.463280, 44.112419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373349, -0.205022, -0.904752,
		0.008617, -0.974465, 0.224375,
		-0.927651, -0.091567, -0.362049,
		38.027313, 36.435810, 44.003803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.713352, 35.942661, 43.856495>,  <38.676666, 36.499905, 44.257240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.713352, 35.942661, 43.856495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.394760, 36.156834, 43.744114>,  <38.203606, 36.285336, 43.676685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.394760, 36.156834, 43.744114>,  <38.713352, 35.942661, 43.856495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.394760, 36.156834, 43.744114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303624, -0.047670, -0.951599,
		-0.522907, -0.843233, -0.124601,
		-0.796480, 0.535430, -0.280953,
		38.155815, 36.317463, 43.659828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.554333, 35.644104, 43.209160>,  <38.713352, 35.942661, 43.856495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.554333, 35.644104, 43.209160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.366703, 35.996506, 43.184494>,  <38.254128, 36.207947, 43.169697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.366703, 35.996506, 43.184494>,  <38.554333, 35.644104, 43.209160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.366703, 35.996506, 43.184494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187324, 0.031018, -0.981808,
		-0.863066, -0.472087, -0.179583,
		-0.469070, 0.881006, -0.061663,
		38.225983, 36.260807, 43.165997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.046551, 35.618622, 42.738201>,  <38.554333, 35.644104, 43.209160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.046551, 35.618622, 42.738201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.128216, 36.009560, 42.760521>,  <38.177216, 36.244122, 42.773914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.128216, 36.009560, 42.760521>,  <38.046551, 35.618622, 42.738201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.128216, 36.009560, 42.760521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208561, 0.012266, -0.977932,
		-0.956461, 0.211298, -0.201332,
		0.204166, 0.977345, 0.055801,
		38.189465, 36.302765, 42.777260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.850288, 35.806042, 42.021572>,  <38.046551, 35.618622, 42.738201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.850288, 35.806042, 42.021572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.056309, 36.120594, 42.158001>,  <38.179920, 36.309326, 42.239857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.056309, 36.120594, 42.158001>,  <37.850288, 35.806042, 42.021572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.056309, 36.120594, 42.158001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316081, 0.195627, -0.928344,
		-0.796756, 0.585948, -0.147803,
		0.515047, 0.786381, 0.341074,
		38.210823, 36.356510, 42.260323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.827080, 36.341072, 41.375679>,  <37.850288, 35.806042, 42.021572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.827080, 36.341072, 41.375679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.094669, 36.484924, 41.635876>,  <38.255222, 36.571236, 41.791992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.094669, 36.484924, 41.635876>,  <37.827080, 36.341072, 41.375679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.094669, 36.484924, 41.635876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429686, 0.526988, -0.733249,
		-0.606500, 0.770032, 0.198013,
		0.668975, 0.359632, 0.650490,
		38.295361, 36.592815, 41.831024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.840305, 37.050461, 41.225574>,  <37.827080, 36.341072, 41.375679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.840305, 37.050461, 41.225574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.193005, 36.931770, 41.372253>,  <38.404625, 36.860554, 41.460258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.193005, 36.931770, 41.372253>,  <37.840305, 37.050461, 41.225574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.193005, 36.931770, 41.372253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451166, 0.303567, -0.839223,
		0.137706, 0.905427, 0.401546,
		0.881752, -0.296730, 0.366695,
		38.457531, 36.842751, 41.482262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.286892, 37.689972, 41.195805>,  <37.840305, 37.050461, 41.225574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.286892, 37.689972, 41.195805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.510620, 37.359734, 41.225616>,  <38.644859, 37.161591, 41.243504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.510620, 37.359734, 41.225616>,  <38.286892, 37.689972, 41.195805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.510620, 37.359734, 41.225616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669374, 0.396792, -0.628088,
		0.488973, 0.401191, 0.774565,
		0.559325, -0.825592, 0.074526,
		38.678417, 37.112057, 41.247974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.995293, 37.872116, 41.281624>,  <38.286892, 37.689972, 41.195805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.995293, 37.872116, 41.281624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.040665, 37.499557, 41.143272>,  <39.067890, 37.276020, 41.060261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.040665, 37.499557, 41.143272>,  <38.995293, 37.872116, 41.281624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.040665, 37.499557, 41.143272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673828, 0.327944, -0.662124,
		0.730130, -0.157955, 0.664802,
		0.113432, -0.931399, -0.345876,
		39.074696, 37.220139, 41.039509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.685616, 37.821777, 41.276173>,  <38.995293, 37.872116, 41.281624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.685616, 37.821777, 41.276173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.552048, 37.511940, 41.061325>,  <39.471909, 37.326038, 40.932415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.552048, 37.511940, 41.061325>,  <39.685616, 37.821777, 41.276173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.552048, 37.511940, 41.061325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816522, 0.046998, -0.575398,
		0.470944, -0.630709, 0.616780,
		-0.333921, -0.774595, -0.537121,
		39.451870, 37.279560, 40.900188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.180679, 37.307224, 41.190144>,  <39.685616, 37.821777, 41.276173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.180679, 37.307224, 41.190144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.940617, 37.251881, 40.875011>,  <39.796581, 37.218674, 40.685932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.940617, 37.251881, 40.875011>,  <40.180679, 37.307224, 41.190144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.940617, 37.251881, 40.875011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785266, 0.085533, -0.613223,
		0.152227, -0.986682, 0.057312,
		-0.600154, -0.138354, -0.787828,
		39.760571, 37.210373, 40.638664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.389179, 36.663960, 40.847214>,  <40.180679, 37.307224, 41.190144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.389179, 36.663960, 40.847214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.189175, 36.895111, 40.589207>,  <40.069172, 37.033802, 40.434402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.189175, 36.895111, 40.589207>,  <40.389179, 36.663960, 40.847214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.189175, 36.895111, 40.589207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755307, -0.073377, -0.651250,
		-0.423672, -0.812818, -0.399786,
		-0.500013, 0.577878, -0.645016,
		40.039169, 37.068474, 40.395702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.902855, 36.268867, 41.216824>,  <40.389179, 36.663960, 40.847214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.902855, 36.268867, 41.216824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.213573, 36.031334, 41.300682>,  <41.400005, 35.888813, 41.350998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.213573, 36.031334, 41.300682>,  <40.902855, 36.268867, 41.216824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.213573, 36.031334, 41.300682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054481, -0.395020, -0.917056,
		0.627397, 0.700939, -0.339201,
		0.776792, -0.593838, 0.209646,
		41.446609, 35.853184, 41.363575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.561050, 36.267509, 40.750969>,  <40.902855, 36.268867, 41.216824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.561050, 36.267509, 40.750969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.523983, 35.893623, 40.888206>,  <41.501743, 35.669292, 40.970551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.523983, 35.893623, 40.888206>,  <41.561050, 36.267509, 40.750969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.523983, 35.893623, 40.888206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155675, -0.353944, -0.922220,
		0.983452, -0.032046, 0.178310,
		-0.092666, -0.934718, 0.343098,
		41.496181, 35.613209, 40.991135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.190651, 35.786182, 40.512550>,  <41.561050, 36.267509, 40.750969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.190651, 35.786182, 40.512550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.881977, 35.546398, 40.597542>,  <41.696770, 35.402527, 40.648537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.881977, 35.546398, 40.597542>,  <42.190651, 35.786182, 40.512550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.881977, 35.546398, 40.597542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252792, -0.595665, -0.762417,
		0.583602, -0.534636, 0.611206,
		-0.771689, -0.599456, 0.212480,
		41.650471, 35.366562, 40.661285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.501553, 34.988754, 40.732113>,  <42.190651, 35.786182, 40.512550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.501553, 34.988754, 40.732113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.144386, 35.032009, 40.557293>,  <41.930088, 35.057964, 40.452400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.144386, 35.032009, 40.557293>,  <42.501553, 34.988754, 40.732113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.144386, 35.032009, 40.557293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315364, -0.542577, -0.778560,
		-0.321327, -0.833016, 0.450371,
		-0.892914, 0.108142, -0.437047,
		41.876511, 35.064453, 40.426178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.039043, 34.340702, 40.731300>,  <42.501553, 34.988754, 40.732113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.039043, 34.340702, 40.731300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.985909, 34.577030, 40.412983>,  <41.954025, 34.718826, 40.221992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.985909, 34.577030, 40.412983>,  <42.039043, 34.340702, 40.731300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.985909, 34.577030, 40.412983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257636, -0.754722, -0.603339,
		-0.957067, -0.285171, -0.051961,
		-0.132839, 0.590823, -0.795790,
		41.946056, 34.754276, 40.174248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.626900, 33.990402, 40.180656>,  <42.039043, 34.340702, 40.731300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.626900, 33.990402, 40.180656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.825928, 34.278141, 39.986767>,  <41.945343, 34.450787, 39.870434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.825928, 34.278141, 39.986767>,  <41.626900, 33.990402, 40.180656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.825928, 34.278141, 39.986767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341081, -0.676049, -0.653162,
		-0.797551, 0.159663, -0.581738,
		0.497570, 0.719350, -0.484726,
		41.975197, 34.493946, 39.841351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.417656, 33.957592, 39.543060>,  <41.626900, 33.990402, 40.180656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.417656, 33.957592, 39.543060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.787609, 34.091721, 39.614792>,  <42.009579, 34.172195, 39.657829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.787609, 34.091721, 39.614792>,  <41.417656, 33.957592, 39.543060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.787609, 34.091721, 39.614792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380190, -0.806537, -0.452719,
		-0.007173, 0.486888, -0.873435,
		0.924881, 0.335318, 0.179325,
		42.065075, 34.192318, 39.668591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.855881, 34.050316, 38.893616>,  <41.417656, 33.957592, 39.543060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.855881, 34.050316, 38.893616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.120880, 34.003174, 39.189507>,  <42.279881, 33.974888, 39.367043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.120880, 34.003174, 39.189507>,  <41.855881, 34.050316, 38.893616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.120880, 34.003174, 39.189507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345822, -0.827878, -0.441616,
		0.664452, 0.548387, -0.507715,
		0.662503, -0.117854, 0.739730,
		42.319630, 33.967819, 39.411427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.219589, 33.616653, 38.533817>,  <41.855881, 34.050316, 38.893616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.219589, 33.616653, 38.533817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.596310, 33.631535, 38.400169>,  <42.822342, 33.640465, 38.319981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.596310, 33.631535, 38.400169>,  <42.219589, 33.616653, 38.533817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.596310, 33.631535, 38.400169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144545, -0.852492, -0.502358,
		-0.303521, 0.521415, -0.797497,
		0.941797, 0.037202, -0.334117,
		42.878849, 33.642696, 38.299934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.255142, 33.628700, 37.846081>,  <42.219589, 33.616653, 38.533817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.255142, 33.628700, 37.846081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.606133, 33.478939, 37.965981>,  <42.816727, 33.389080, 38.037922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.606133, 33.478939, 37.965981>,  <42.255142, 33.628700, 37.846081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.606133, 33.478939, 37.965981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164038, -0.821573, -0.545994,
		0.450690, 0.429928, -0.782330,
		0.877479, -0.374406, 0.299750,
		42.869377, 33.366615, 38.055904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.567005, 33.386333, 37.199200>,  <42.255142, 33.628700, 37.846081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.567005, 33.386333, 37.199200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.774742, 33.212593, 37.493580>,  <42.899384, 33.108349, 37.670208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.774742, 33.212593, 37.493580>,  <42.567005, 33.386333, 37.199200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.774742, 33.212593, 37.493580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145580, -0.803643, -0.577030,
		0.842077, 0.406814, -0.354130,
		0.519338, -0.434350, 0.735954,
		42.930542, 33.082287, 37.714367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.110279, 33.065498, 36.875591>,  <42.567005, 33.386333, 37.199200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.110279, 33.065498, 36.875591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.110016, 32.866138, 37.222370>,  <43.109859, 32.746521, 37.430439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.110016, 32.866138, 37.222370>,  <43.110279, 33.065498, 36.875591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.110016, 32.866138, 37.222370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262820, -0.836556, -0.480728,
		0.964845, 0.227534, 0.131540,
		-0.000659, -0.498399, 0.866947,
		43.109818, 32.716618, 37.482456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.680592, 32.605000, 36.949383>,  <43.110279, 33.065498, 36.875591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.680592, 32.605000, 36.949383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.388710, 32.459805, 37.181168>,  <43.213581, 32.372688, 37.320240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.388710, 32.459805, 37.181168>,  <43.680592, 32.605000, 36.949383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.388710, 32.459805, 37.181168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075975, -0.885255, -0.458860,
		0.679532, -0.290805, 0.673549,
		-0.729701, -0.362983, 0.579465,
		43.169800, 32.350910, 37.355007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.863873, 31.870770, 37.184036>,  <43.680592, 32.605000, 36.949383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.863873, 31.870770, 37.184036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.466877, 31.891733, 37.228264>,  <43.228680, 31.904312, 37.254799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.466877, 31.891733, 37.228264>,  <43.863873, 31.870770, 37.184036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.466877, 31.891733, 37.228264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094905, -0.900094, -0.425235,
		0.077237, -0.432533, 0.898304,
		-0.992486, 0.052410, 0.110570,
		43.169132, 31.907455, 37.261436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.598072, 31.154118, 37.388332>,  <43.863873, 31.870770, 37.184036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.598072, 31.154118, 37.388332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.252247, 31.330156, 37.291302>,  <43.044750, 31.435780, 37.233086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.252247, 31.330156, 37.291302>,  <43.598072, 31.154118, 37.388332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.252247, 31.330156, 37.291302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321440, -0.855369, -0.406228,
		-0.386268, -0.273238, 0.880987,
		-0.864565, 0.440097, -0.242572,
		42.992878, 31.462185, 37.218529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.039352, 30.668825, 37.516594>,  <43.598072, 31.154118, 37.388332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.039352, 30.668825, 37.516594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.910526, 30.919857, 37.233070>,  <42.833229, 31.070477, 37.062954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.910526, 30.919857, 37.233070>,  <43.039352, 30.668825, 37.516594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.910526, 30.919857, 37.233070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347664, -0.774797, -0.528033,
		-0.880569, 0.076364, 0.467726,
		-0.322070, 0.627581, -0.708811,
		42.813904, 31.108131, 37.020428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.329933, 30.430813, 37.292721>,  <43.039352, 30.668825, 37.516594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.329933, 30.430813, 37.292721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.446861, 30.645067, 36.975826>,  <42.517017, 30.773621, 36.785690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.446861, 30.645067, 36.975826>,  <42.329933, 30.430813, 37.292721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.446861, 30.645067, 36.975826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486878, -0.629665, -0.605369,
		-0.823102, 0.562687, 0.076723,
		0.292323, 0.535636, -0.792238,
		42.534557, 30.805758, 36.738155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.713615, 30.521206, 36.894844>,  <42.329933, 30.430813, 37.292721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.713615, 30.521206, 36.894844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.994904, 30.603477, 36.622616>,  <42.163677, 30.652840, 36.459278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.994904, 30.603477, 36.622616>,  <41.713615, 30.521206, 36.894844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.994904, 30.603477, 36.622616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495982, -0.543923, -0.676867,
		-0.509398, 0.813538, -0.280483,
		0.703218, 0.205680, -0.680573,
		42.205868, 30.665182, 36.418446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.367973, 30.536634, 36.205246>,  <41.713615, 30.521206, 36.894844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.367973, 30.536634, 36.205246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.743546, 30.492285, 36.074947>,  <41.968891, 30.465675, 35.996769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.743546, 30.492285, 36.074947>,  <41.367973, 30.536634, 36.205246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.743546, 30.492285, 36.074947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329829, -0.559791, -0.760162,
		-0.098066, 0.821182, -0.562177,
		0.938933, -0.110876, -0.325746,
		42.025227, 30.459023, 35.977222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.307304, 30.544127, 35.497623>,  <41.367973, 30.536634, 36.205246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.307304, 30.544127, 35.497623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.664345, 30.380632, 35.573730>,  <41.878567, 30.282536, 35.619396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.664345, 30.380632, 35.573730>,  <41.307304, 30.544127, 35.497623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.664345, 30.380632, 35.573730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054029, -0.515960, -0.854907,
		0.447602, 0.752809, -0.482629,
		0.892599, -0.408734, 0.190271,
		41.932125, 30.258013, 35.630814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.798820, 30.775986, 35.005146>,  <41.307304, 30.544127, 35.497623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.798820, 30.775986, 35.005146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.923859, 30.429161, 35.160320>,  <41.998882, 30.221067, 35.253426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.923859, 30.429161, 35.160320>,  <41.798820, 30.775986, 35.005146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.923859, 30.429161, 35.160320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083475, -0.431894, -0.898053,
		0.946212, 0.248342, -0.207385,
		0.312592, -0.867060, 0.387933,
		42.017635, 30.169043, 35.276699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.192440, 30.653088, 34.521294>,  <41.798820, 30.775986, 35.005146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.192440, 30.653088, 34.521294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.133575, 30.314194, 34.725464>,  <42.098255, 30.110857, 34.847965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.133575, 30.314194, 34.725464>,  <42.192440, 30.653088, 34.521294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.133575, 30.314194, 34.725464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079822, -0.524534, -0.847640,
		0.985887, -0.083996, 0.144819,
		-0.147161, -0.847236, 0.510426,
		42.089428, 30.060022, 34.878593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.303501, 30.220524, 34.021992>,  <42.192440, 30.653088, 34.521294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.303501, 30.220524, 34.021992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.155926, 29.953609, 34.280792>,  <42.067379, 29.793461, 34.436073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.155926, 29.953609, 34.280792>,  <42.303501, 30.220524, 34.021992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.155926, 29.953609, 34.280792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115291, -0.657882, -0.744244,
		0.922276, -0.349173, 0.165786,
		-0.368937, -0.667285, 0.647006,
		42.045246, 29.753424, 34.474895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.627819, 29.563114, 33.969334>,  <42.303501, 30.220524, 34.021992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.627819, 29.563114, 33.969334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.295361, 29.452639, 34.162380>,  <42.095886, 29.386353, 34.278210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.295361, 29.452639, 34.162380>,  <42.627819, 29.563114, 33.969334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.295361, 29.452639, 34.162380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178813, -0.689075, -0.702284,
		0.526524, -0.669996, 0.523333,
		-0.831143, -0.276191, 0.482618,
		42.046017, 29.369781, 34.307167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.699894, 28.789354, 34.061279>,  <42.627819, 29.563114, 33.969334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.699894, 28.789354, 34.061279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.318974, 28.911327, 34.065933>,  <42.090420, 28.984512, 34.068726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.318974, 28.911327, 34.065933>,  <42.699894, 28.789354, 34.061279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.318974, 28.911327, 34.065933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168240, -0.492834, -0.853704,
		-0.254587, -0.814942, 0.520629,
		-0.952303, 0.304933, 0.011637,
		42.033283, 29.002808, 34.069424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.392239, 28.222460, 34.002956>,  <42.699894, 28.789354, 34.061279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.392239, 28.222460, 34.002956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.160698, 28.523369, 33.877083>,  <42.021774, 28.703915, 33.801559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.160698, 28.523369, 33.877083>,  <42.392239, 28.222460, 34.002956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.160698, 28.523369, 33.877083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266153, -0.539068, -0.799104,
		-0.770778, -0.378806, 0.512258,
		-0.578847, 0.752271, -0.314681,
		41.987045, 28.749050, 33.782677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.679985, 27.929180, 33.891953>,  <42.392239, 28.222460, 34.002956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.679985, 27.929180, 33.891953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.672527, 28.276304, 33.693333>,  <41.668053, 28.484579, 33.574162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.672527, 28.276304, 33.693333>,  <41.679985, 27.929180, 33.891953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.672527, 28.276304, 33.693333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277249, -0.481642, -0.831357,
		-0.960617, 0.122171, 0.249577,
		-0.018640, 0.867811, -0.496545,
		41.666935, 28.536648, 33.544369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.079094, 27.870640, 33.516838>,  <41.679985, 27.929180, 33.891953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.079094, 27.870640, 33.516838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.306969, 28.149616, 33.342926>,  <41.443695, 28.317001, 33.238579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.306969, 28.149616, 33.342926>,  <41.079094, 27.870640, 33.516838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.306969, 28.149616, 33.342926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154254, -0.428884, -0.890092,
		-0.807257, 0.574140, -0.136746,
		0.569685, 0.697440, -0.434783,
		41.477875, 28.358849, 33.212490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.727287, 28.010834, 32.926289>,  <41.079094, 27.870640, 33.516838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.727287, 28.010834, 32.926289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.096905, 28.147602, 32.857906>,  <41.318676, 28.229664, 32.816879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.096905, 28.147602, 32.857906>,  <40.727287, 28.010834, 32.926289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.096905, 28.147602, 32.857906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029168, -0.508954, -0.860299,
		-0.381163, 0.789971, -0.480271,
		0.924047, 0.341923, -0.170953,
		41.374119, 28.250179, 32.806622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.790920, 28.452829, 32.318642>,  <40.727287, 28.010834, 32.926289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.790920, 28.452829, 32.318642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.144981, 28.273371, 32.367985>,  <41.357418, 28.165695, 32.397591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.144981, 28.273371, 32.367985>,  <40.790920, 28.452829, 32.318642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.144981, 28.273371, 32.367985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126743, -0.487568, -0.863837,
		0.447704, 0.748994, -0.488436,
		0.885154, -0.448649, 0.123356,
		41.410526, 28.138777, 32.404991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.255634, 28.567705, 31.685410>,  <40.790920, 28.452829, 32.318642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.255634, 28.567705, 31.685410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.365524, 28.228998, 31.867624>,  <41.431458, 28.025774, 31.976954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.365524, 28.228998, 31.867624>,  <41.255634, 28.567705, 31.685410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.365524, 28.228998, 31.867624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183488, -0.511227, -0.839630,
		0.943854, 0.147078, -0.295817,
		0.274721, -0.846767, 0.455537,
		41.447941, 27.974968, 32.004284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.915081, 28.967306, 31.146540>,  <41.255634, 28.567705, 31.685410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.915081, 28.967306, 31.146540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.615967, 29.079880, 31.387077>,  <40.436501, 29.147425, 31.531401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.615967, 29.079880, 31.387077>,  <40.915081, 28.967306, 31.146540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.615967, 29.079880, 31.387077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159409, 0.955327, -0.248876,
		-0.644523, -0.090245, -0.759240,
		-0.747783, 0.281436, 0.601344,
		40.391632, 29.164310, 31.567480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.682518, 28.609440, 30.599401>,  <40.915081, 28.967306, 31.146540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.682518, 28.609440, 30.599401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.375481, 28.628403, 30.855074>,  <40.191257, 28.639780, 31.008476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.375481, 28.628403, 30.855074>,  <40.682518, 28.609440, 30.599401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.375481, 28.628403, 30.855074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630684, -0.121777, 0.766426,
		0.114170, 0.991425, 0.063577,
		-0.767595, 0.047406, 0.639179,
		40.145203, 28.642624, 31.046827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.233196, 29.131889, 30.394491>,  <40.682518, 28.609440, 30.599401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.233196, 29.131889, 30.394491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.064056, 29.354151, 30.108150>,  <40.962570, 29.487509, 29.936346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.064056, 29.354151, 30.108150>,  <41.233196, 29.131889, 30.394491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.064056, 29.354151, 30.108150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152318, 0.822292, 0.548302,
		0.893306, 0.122814, -0.432344,
		-0.422852, 0.555655, -0.715852,
		40.937202, 29.520847, 29.893394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.564949, 29.818663, 30.381124>,  <41.233196, 29.131889, 30.394491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.564949, 29.818663, 30.381124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.213715, 29.860912, 30.194445>,  <41.002975, 29.886263, 30.082438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.213715, 29.860912, 30.194445>,  <41.564949, 29.818663, 30.381124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.213715, 29.860912, 30.194445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124678, 0.891137, 0.436269,
		0.461973, 0.441269, -0.769326,
		-0.878087, 0.105626, -0.466697,
		40.950287, 29.892601, 30.054436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.077358, 29.325909, 30.051701>,  <41.564949, 29.818663, 30.381124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.077358, 29.325909, 30.051701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.262493, 29.614912, 29.846268>,  <42.373573, 29.788313, 29.723007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.262493, 29.614912, 29.846268>,  <42.077358, 29.325909, 30.051701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.262493, 29.614912, 29.846268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282974, 0.669484, 0.686816,
		0.840064, -0.172553, 0.514312,
		0.462836, 0.722508, -0.513582,
		42.401344, 29.831665, 29.692194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.594383, 29.730152, 30.518644>,  <42.077358, 29.325909, 30.051701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.594383, 29.730152, 30.518644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.471813, 29.950750, 30.208302>,  <42.398270, 30.083109, 30.022095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.471813, 29.950750, 30.208302>,  <42.594383, 29.730152, 30.518644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.471813, 29.950750, 30.208302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309718, 0.712953, 0.629105,
		0.900098, 0.433073, -0.047662,
		-0.306429, 0.551494, -0.775858,
		42.379883, 30.116199, 29.975544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.744118, 30.415089, 30.673132>,  <42.594383, 29.730152, 30.518644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.744118, 30.415089, 30.673132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.440113, 30.437368, 30.414125>,  <42.257710, 30.450737, 30.258722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.440113, 30.437368, 30.414125>,  <42.744118, 30.415089, 30.673132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.440113, 30.437368, 30.414125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509799, 0.566856, 0.647131,
		0.403093, 0.821932, -0.402423,
		-0.760013, 0.055699, -0.647516,
		42.212109, 30.454079, 30.219872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.613438, 31.111280, 30.505112>,  <42.744118, 30.415089, 30.673132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.613438, 31.111280, 30.505112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.251991, 30.940882, 30.487226>,  <42.035122, 30.838642, 30.476496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.251991, 30.940882, 30.487226>,  <42.613438, 31.111280, 30.505112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.251991, 30.940882, 30.487226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355411, 0.687414, 0.633360,
		-0.239073, 0.588208, -0.772564,
		-0.903619, -0.425997, -0.044714,
		41.980907, 30.813082, 30.473812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.160492, 31.605553, 30.341307>,  <42.613438, 31.111280, 30.505112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.160492, 31.605553, 30.341307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.005615, 31.309734, 30.561544>,  <41.912689, 31.132244, 30.693687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.005615, 31.309734, 30.561544>,  <42.160492, 31.605553, 30.341307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.005615, 31.309734, 30.561544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145246, 0.638645, 0.755669,
		-0.910486, 0.212618, -0.354694,
		-0.387193, -0.739544, 0.550596,
		41.889458, 31.087872, 30.726723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.870071, 31.950560, 30.842695>,  <42.160492, 31.605553, 30.341307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.870071, 31.950560, 30.842695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.866653, 31.597626, 31.030914>,  <41.864605, 31.385866, 31.143847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.866653, 31.597626, 31.030914>,  <41.870071, 31.950560, 30.842695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.866653, 31.597626, 31.030914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139769, 0.466999, 0.873142,
		-0.990147, -0.058309, -0.127312,
		-0.008543, -0.882333, 0.470548,
		41.864090, 31.332926, 31.172079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.332890, 31.931999, 31.457510>,  <41.870071, 31.950560, 30.842695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.332890, 31.931999, 31.457510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.565956, 31.618231, 31.542543>,  <41.705795, 31.429970, 31.593563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.565956, 31.618231, 31.542543>,  <41.332890, 31.931999, 31.457510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.565956, 31.618231, 31.542543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031305, 0.239714, 0.970339,
		-0.812111, -0.572035, 0.115116,
		0.582663, -0.784419, 0.212582,
		41.740753, 31.382906, 31.606318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.193382, 31.807869, 32.078537>,  <41.332890, 31.931999, 31.457510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.193382, 31.807869, 32.078537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.552353, 31.642935, 32.015785>,  <41.767735, 31.543974, 31.978134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.552353, 31.642935, 32.015785>,  <41.193382, 31.807869, 32.078537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.552353, 31.642935, 32.015785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351839, 0.454386, 0.818378,
		-0.266163, -0.789627, 0.552852,
		0.897422, -0.412337, -0.156881,
		41.821579, 31.519234, 31.968721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.371269, 31.529892, 32.731510>,  <41.193382, 31.807869, 32.078537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.371269, 31.529892, 32.731510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.712051, 31.566341, 32.525261>,  <41.916523, 31.588211, 32.401512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.712051, 31.566341, 32.525261>,  <41.371269, 31.529892, 32.731510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.712051, 31.566341, 32.525261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448413, 0.381484, 0.808329,
		0.270360, -0.919873, 0.284146,
		0.851957, 0.091124, -0.515621,
		41.967640, 31.593679, 32.370575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.894001, 31.274107, 33.240421>,  <41.371269, 31.529892, 32.731510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.894001, 31.274107, 33.240421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.116997, 31.455404, 32.962208>,  <42.250793, 31.564182, 32.795280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.116997, 31.455404, 32.962208>,  <41.894001, 31.274107, 33.240421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.116997, 31.455404, 32.962208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538081, 0.440732, 0.718488,
		0.632197, -0.774806, 0.001822,
		0.557492, 0.453245, -0.695537,
		42.284245, 31.591377, 32.753548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.467934, 31.288643, 33.501778>,  <41.894001, 31.274107, 33.240421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.467934, 31.288643, 33.501778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.501389, 31.595760, 33.247692>,  <42.521461, 31.780031, 33.095242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.501389, 31.595760, 33.247692>,  <42.467934, 31.288643, 33.501778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.501389, 31.595760, 33.247692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566966, 0.487550, 0.663961,
		0.819484, -0.415674, -0.394537,
		0.083635, 0.767795, -0.635213,
		42.526478, 31.826099, 33.057129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.148907, 31.546745, 33.610756>,  <42.467934, 31.288643, 33.501778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.148907, 31.546745, 33.610756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.967148, 31.829212, 33.393559>,  <42.858093, 31.998693, 33.263241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.967148, 31.829212, 33.393559>,  <43.148907, 31.546745, 33.610756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.967148, 31.829212, 33.393559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469360, 0.707884, 0.527827,
		0.757114, -0.015016, -0.653110,
		-0.454400, 0.706169, -0.542997,
		42.830830, 32.041061, 33.230659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.685883, 31.946198, 33.382442>,  <43.148907, 31.546745, 33.610756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.685883, 31.946198, 33.382442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.352802, 32.165405, 33.350727>,  <43.152954, 32.296932, 33.331699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.352802, 32.165405, 33.350727>,  <43.685883, 31.946198, 33.382442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.352802, 32.165405, 33.350727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468664, 0.773777, 0.426173,
		0.294903, 0.317714, -0.901160,
		-0.832698, 0.548022, -0.079288,
		43.102993, 32.329811, 33.326942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.840084, 32.534290, 33.016426>,  <43.685883, 31.946198, 33.382442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.840084, 32.534290, 33.016426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.519890, 32.628029, 33.237083>,  <43.327774, 32.684273, 33.369476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.519890, 32.628029, 33.237083>,  <43.840084, 32.534290, 33.016426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.519890, 32.628029, 33.237083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551988, 0.646874, 0.526178,
		-0.233534, 0.725696, -0.647169,
		-0.800482, 0.234349, 0.551642,
		43.279747, 32.698334, 33.402576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.866447, 33.300861, 33.117748>,  <43.840084, 32.534290, 33.016426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.866447, 33.300861, 33.117748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.622330, 33.160126, 33.401649>,  <43.475861, 33.075684, 33.571991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.622330, 33.160126, 33.401649>,  <43.866447, 33.300861, 33.117748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.622330, 33.160126, 33.401649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469736, 0.560716, 0.681869,
		-0.637880, 0.749537, -0.176929,
		-0.610292, -0.351841, 0.709754,
		43.439243, 33.054573, 33.614574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.662193, 33.895115, 33.381989>,  <43.866447, 33.300861, 33.117748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.662193, 33.895115, 33.381989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.587048, 33.607655, 33.649792>,  <43.541962, 33.435177, 33.810474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.587048, 33.607655, 33.649792>,  <43.662193, 33.895115, 33.381989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.587048, 33.607655, 33.649792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492421, 0.520878, 0.697286,
		-0.849841, 0.460674, 0.256028,
		-0.187863, -0.718655, 0.669509,
		43.530689, 33.392059, 33.850643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.413754, 34.211998, 33.939480>,  <43.662193, 33.895115, 33.381989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.413754, 34.211998, 33.939480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.569199, 33.869270, 34.075027>,  <43.662468, 33.663631, 34.156357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.569199, 33.869270, 34.075027>,  <43.413754, 34.211998, 33.939480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.569199, 33.869270, 34.075027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456852, 0.498567, 0.736694,
		-0.800165, -0.131479, 0.585192,
		0.388617, -0.856822, 0.338869,
		43.685783, 33.612225, 34.176689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.327488, 34.249973, 34.683296>,  <43.413754, 34.211998, 33.939480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.327488, 34.249973, 34.683296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.595051, 33.953850, 34.656452>,  <43.755589, 33.776176, 34.640347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.595051, 33.953850, 34.656452>,  <43.327488, 34.249973, 34.683296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.595051, 33.953850, 34.656452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482950, 0.364181, 0.796324,
		-0.565090, -0.565073, 0.601137,
		0.668904, -0.740313, -0.067107,
		43.795723, 33.731754, 34.636322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.286392, 33.905781, 35.379997>,  <43.327488, 34.249973, 34.683296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.286392, 33.905781, 35.379997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.620216, 33.824921, 35.175003>,  <43.820511, 33.776405, 35.052006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.620216, 33.824921, 35.175003>,  <43.286392, 33.905781, 35.379997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.620216, 33.824921, 35.175003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549862, 0.248236, 0.797516,
		-0.033999, -0.947373, 0.318322,
		0.834563, -0.202148, -0.512484,
		43.870586, 33.764275, 35.021259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.525555, 33.355785, 35.755894>,  <43.286392, 33.905781, 35.379997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.525555, 33.355785, 35.755894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.832031, 33.526470, 35.563702>,  <44.015919, 33.628883, 35.448387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.832031, 33.526470, 35.563702>,  <43.525555, 33.355785, 35.755894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.832031, 33.526470, 35.563702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498722, 0.076672, 0.863364,
		0.405250, -0.901130, -0.154067,
		0.766191, 0.426715, -0.480485,
		44.061890, 33.654484, 35.419556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.147758, 32.824768, 35.923626>,  <43.525555, 33.355785, 35.755894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.147758, 32.824768, 35.923626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.296051, 33.176899, 35.805244>,  <44.385029, 33.388176, 35.734215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.296051, 33.176899, 35.805244>,  <44.147758, 32.824768, 35.923626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.296051, 33.176899, 35.805244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545112, 0.051744, 0.836765,
		0.751937, -0.471544, -0.460691,
		0.370734, 0.880323, -0.295953,
		44.407272, 33.440994, 35.716457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.834538, 32.759144, 36.081802>,  <44.147758, 32.824768, 35.923626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.834538, 32.759144, 36.081802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.725372, 33.143616, 36.098072>,  <44.659874, 33.374298, 36.107834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.725372, 33.143616, 36.098072>,  <44.834538, 32.759144, 36.081802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.725372, 33.143616, 36.098072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564645, 0.125809, 0.815689,
		0.778905, 0.245580, -0.577060,
		-0.272916, 0.961178, 0.040672,
		44.643497, 33.431969, 36.110275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.472397, 32.994095, 36.184635>,  <44.834538, 32.759144, 36.081802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.472397, 32.994095, 36.184635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.201801, 33.266426, 36.296944>,  <45.039444, 33.429825, 36.364330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.201801, 33.266426, 36.296944>,  <45.472397, 32.994095, 36.184635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.201801, 33.266426, 36.296944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547131, 0.209421, 0.810426,
		0.492963, 0.701863, -0.514175,
		-0.676487, 0.680831, 0.280774,
		44.998856, 33.470676, 36.381176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.552753, 33.243198, 35.419247>,  <45.472397, 32.994095, 36.184635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.552753, 33.243198, 35.419247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.818092, 32.950996, 35.354328>,  <45.977295, 32.775677, 35.315376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.818092, 32.950996, 35.354328>,  <45.552753, 33.243198, 35.419247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.818092, 32.950996, 35.354328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734327, 0.677189, -0.046678,
		0.144002, -0.088213, 0.985638,
		0.663346, -0.730502, -0.162294,
		46.017097, 32.731846, 35.305641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.206120, 33.351807, 35.708740>,  <45.552753, 33.243198, 35.419247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.206120, 33.351807, 35.708740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.909660, 33.620247, 35.715820>,  <45.731785, 33.781311, 35.720070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.909660, 33.620247, 35.715820>,  <46.206120, 33.351807, 35.708740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.909660, 33.620247, 35.715820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671213, -0.741264, -0.000245,
		0.012957, -0.012063, 0.999843,
		-0.741151, 0.671105, 0.017702,
		45.687317, 33.821579, 35.721130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.733543, 33.902439, 35.447315>,  <46.206120, 33.351807, 35.708740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.733543, 33.902439, 35.447315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.562702, 33.956135, 35.089642>,  <46.460197, 33.988354, 34.875038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.562702, 33.956135, 35.089642>,  <46.733543, 33.902439, 35.447315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.562702, 33.956135, 35.089642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248109, 0.933562, 0.258658,
		0.869499, 0.332328, -0.365417,
		-0.427099, 0.134240, -0.894185,
		46.434574, 33.996407, 34.821384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.266102, 33.920143, 34.852455>,  <46.733543, 33.902439, 35.447315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.266102, 33.920143, 34.852455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.253876, 33.611965, 35.107166>,  <47.246540, 33.427059, 35.259995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.253876, 33.611965, 35.107166>,  <47.266102, 33.920143, 34.852455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.253876, 33.611965, 35.107166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616342, 0.516068, 0.594807,
		-0.786885, -0.374289, -0.490632,
		-0.030570, -0.770442, 0.636777,
		47.244705, 33.380833, 35.298199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.336025, 34.551136, 34.469933>,  <47.266102, 33.920143, 34.852455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.336025, 34.551136, 34.469933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.329563, 34.672028, 34.851173>,  <47.325687, 34.744564, 35.079918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.329563, 34.672028, 34.851173>,  <47.336025, 34.551136, 34.469933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.329563, 34.672028, 34.851173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999420, 0.033462, 0.006330,
		-0.029979, 0.952647, -0.302596,
		-0.016156, 0.302231, 0.953098,
		47.324715, 34.762695, 35.137104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.802959, 35.088551, 34.639702>,  <47.336025, 34.551136, 34.469933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.802959, 35.088551, 34.639702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.753647, 34.909283, 34.993866>,  <47.724060, 34.801723, 35.206364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.753647, 34.909283, 34.993866>,  <47.802959, 35.088551, 34.639702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.753647, 34.909283, 34.993866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989996, -0.117247, 0.078496,
		0.068631, 0.886225, 0.458142,
		-0.123281, -0.448171, 0.885406,
		47.716663, 34.774830, 35.259487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.149712, 41.656361, 47.396008> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.768795, 41.539154, 47.430145>,  <35.540245, 41.468830, 47.450626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.768795, 41.539154, 47.430145>,  <36.149712, 41.656361, 47.396008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.768795, 41.539154, 47.430145> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026473, -0.199264, -0.979588,
		0.304044, -0.935111, 0.182000,
		-0.952290, -0.293020, 0.085340,
		35.483109, 41.451248, 47.455746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.110947, 40.995872, 47.041393>,  <36.149712, 41.656361, 47.396008>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.110947, 40.995872, 47.041393> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.742043, 41.150257, 47.050098>,  <35.520702, 41.242889, 47.055321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.742043, 41.150257, 47.050098>,  <36.110947, 40.995872, 47.041393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.742043, 41.150257, 47.050098> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058544, -0.083811, -0.994760,
		-0.382120, -0.918698, 0.099892,
		-0.922256, 0.385966, 0.021758,
		35.465366, 41.266048, 47.056625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.752647, 40.540771, 46.596729>,  <36.110947, 40.995872, 47.041393>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.752647, 40.540771, 46.596729> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.530628, 40.872971, 46.615486>,  <35.397419, 41.072289, 46.626740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.530628, 40.872971, 46.615486>,  <35.752647, 40.540771, 46.596729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.530628, 40.872971, 46.615486> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159063, -0.050637, -0.985969,
		-0.816471, -0.554716, 0.160208,
		-0.555045, 0.830498, 0.046891,
		35.364113, 41.122120, 46.629555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.180084, 40.405701, 46.166092>,  <35.752647, 40.540771, 46.596729>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.180084, 40.405701, 46.166092> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.226524, 40.802666, 46.182251>,  <35.254387, 41.040844, 46.191948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.226524, 40.802666, 46.182251>,  <35.180084, 40.405701, 46.166092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.226524, 40.802666, 46.182251> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145031, 0.057179, -0.987774,
		-0.982592, 0.108822, 0.150569,
		0.116101, 0.992415, 0.040401,
		35.261356, 41.100391, 46.194370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.613251, 40.608391, 45.736984>,  <35.180084, 40.405701, 46.166092>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.613251, 40.608391, 45.736984> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.892982, 40.893200, 45.762157>,  <35.060822, 41.064087, 45.777264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.892982, 40.893200, 45.762157>,  <34.613251, 40.608391, 45.736984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.892982, 40.893200, 45.762157> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075751, 0.161374, -0.983982,
		-0.710777, 0.683357, 0.166790,
		0.699327, 0.712026, 0.062937,
		35.102779, 41.106808, 45.781040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.349422, 41.076832, 45.290981>,  <34.613251, 40.608391, 45.736984>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.349422, 41.076832, 45.290981> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.732971, 41.178593, 45.341335>,  <34.963100, 41.239651, 45.371548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.732971, 41.178593, 45.341335>,  <34.349422, 41.076832, 45.290981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.732971, 41.178593, 45.341335> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104259, 0.096816, -0.989827,
		-0.264006, 0.962239, 0.066310,
		0.958870, 0.254407, 0.125882,
		35.020634, 41.254913, 45.379101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.394730, 41.571453, 44.794540>,  <34.349422, 41.076832, 45.290981>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.394730, 41.571453, 44.794540> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.772713, 41.483768, 44.891697>,  <34.999504, 41.431156, 44.949989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.772713, 41.483768, 44.891697>,  <34.394730, 41.571453, 44.794540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.772713, 41.483768, 44.891697> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254979, 0.028211, -0.966535,
		0.205026, 0.975269, 0.082554,
		0.944960, -0.219215, 0.242889,
		35.056202, 41.418003, 44.964565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.808327, 42.024956, 44.539394>,  <34.394730, 41.571453, 44.794540>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.808327, 42.024956, 44.539394> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.048347, 41.706829, 44.573841>,  <35.192360, 41.515953, 44.594509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.048347, 41.706829, 44.573841>,  <34.808327, 42.024956, 44.539394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.048347, 41.706829, 44.573841> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169696, 0.021347, -0.985265,
		0.781756, 0.605823, 0.147771,
		0.600051, -0.795313, 0.086118,
		35.228363, 41.468235, 44.599678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.330433, 42.106377, 44.046200>,  <34.808327, 42.024956, 44.539394>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.330433, 42.106377, 44.046200> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.376942, 41.716785, 44.124023>,  <35.404846, 41.483032, 44.170719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.376942, 41.716785, 44.124023>,  <35.330433, 42.106377, 44.046200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.376942, 41.716785, 44.124023> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159346, -0.175057, -0.971578,
		0.980352, 0.143972, 0.134844,
		0.116275, -0.973975, 0.194559,
		35.411823, 41.424591, 44.182392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.927910, 41.944931, 43.738552>,  <35.330433, 42.106377, 44.046200>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.927910, 41.944931, 43.738552> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.781590, 41.576229, 43.790031>,  <35.693798, 41.355007, 43.820919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.781590, 41.576229, 43.790031>,  <35.927910, 41.944931, 43.738552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.781590, 41.576229, 43.790031> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419740, -0.286809, -0.861139,
		0.830667, -0.260987, 0.491811,
		-0.365802, -0.921752, 0.128696,
		35.671848, 41.299702, 43.828640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.520054, 41.396236, 43.727062>,  <35.927910, 41.944931, 43.738552>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.520054, 41.396236, 43.727062> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.172714, 41.223183, 43.630077>,  <35.964310, 41.119350, 43.571888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.172714, 41.223183, 43.630077>,  <36.520054, 41.396236, 43.727062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.172714, 41.223183, 43.630077> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409442, -0.349503, -0.842737,
		0.279857, -0.831067, 0.480632,
		-0.868353, -0.432637, -0.242463,
		35.912209, 41.093391, 43.557339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.726616, 40.773415, 43.470112>,  <36.520054, 41.396236, 43.727062>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.726616, 40.773415, 43.470112> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.355297, 40.827248, 43.331459>,  <36.132507, 40.859547, 43.248268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.355297, 40.827248, 43.331459>,  <36.726616, 40.773415, 43.470112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.355297, 40.827248, 43.331459> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261553, -0.426260, -0.865963,
		-0.264297, -0.894533, 0.360496,
		-0.928298, 0.134582, -0.346627,
		36.076809, 40.867622, 43.227470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.547295, 40.168186, 42.945869>,  <36.726616, 40.773415, 43.470112>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.547295, 40.168186, 42.945869> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.275692, 40.447258, 42.854485>,  <36.112732, 40.614700, 42.799656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.275692, 40.447258, 42.854485>,  <36.547295, 40.168186, 42.945869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.275692, 40.447258, 42.854485> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024568, -0.332616, -0.942742,
		-0.733724, -0.634513, 0.242988,
		-0.679003, 0.697682, -0.228460,
		36.071991, 40.656563, 42.785946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.941368, 39.865807, 42.702236>,  <36.547295, 40.168186, 42.945869>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.941368, 39.865807, 42.702236> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.928841, 40.236565, 42.552635>,  <35.921322, 40.459019, 42.462875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.928841, 40.236565, 42.552635>,  <35.941368, 39.865807, 42.702236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.928841, 40.236565, 42.552635> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107559, -0.375143, -0.920705,
		-0.993705, 0.011390, 0.111446,
		-0.031321, 0.926897, -0.374007,
		35.919445, 40.514633, 42.440434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.379753, 39.848377, 42.132889>,  <35.941368, 39.865807, 42.702236>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.379753, 39.848377, 42.132889> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.612633, 40.170650, 42.089226>,  <35.752361, 40.364014, 42.063030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.612633, 40.170650, 42.089226>,  <35.379753, 39.848377, 42.132889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.612633, 40.170650, 42.089226> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187491, 0.002407, -0.982263,
		-0.791133, 0.592339, 0.152460,
		0.582199, 0.805685, -0.109154,
		35.787292, 40.412357, 42.056480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.920444, 40.328575, 41.735607>,  <35.379753, 39.848377, 42.132889>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.920444, 40.328575, 41.735607> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.304390, 40.421856, 41.673275>,  <35.534756, 40.477825, 41.635876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.304390, 40.421856, 41.673275>,  <34.920444, 40.328575, 41.735607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.304390, 40.421856, 41.673275> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153167, -0.029601, -0.987757,
		-0.234962, 0.971977, 0.007307,
		0.959861, 0.233205, -0.155830,
		35.592350, 40.491817, 41.626526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.845364, 40.759308, 41.128635>,  <34.920444, 40.328575, 41.735607>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.845364, 40.759308, 41.128635> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.222919, 40.630367, 41.157383>,  <35.449451, 40.553005, 41.174633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.222919, 40.630367, 41.157383>,  <34.845364, 40.759308, 41.128635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.222919, 40.630367, 41.157383> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001760, -0.212706, -0.977114,
		0.330258, 0.922414, -0.200204,
		0.943889, -0.322348, 0.071872,
		35.506084, 40.533665, 41.178944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.298435, 41.125454, 40.620865>,  <34.845364, 40.759308, 41.128635>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.298435, 41.125454, 40.620865> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.516151, 40.801857, 40.709652>,  <35.646782, 40.607697, 40.762924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.516151, 40.801857, 40.709652>,  <35.298435, 41.125454, 40.620865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.516151, 40.801857, 40.709652> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139209, -0.173830, -0.974887,
		0.827263, 0.561527, 0.018004,
		0.544295, -0.808994, 0.221972,
		35.679440, 40.559158, 40.776245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.891834, 41.131264, 40.151501>,  <35.298435, 41.125454, 40.620865>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.891834, 41.131264, 40.151501> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.921745, 40.752666, 40.277077>,  <35.939693, 40.525509, 40.352421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.921745, 40.752666, 40.277077>,  <35.891834, 41.131264, 40.151501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.921745, 40.752666, 40.277077> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108527, -0.305222, -0.946077,
		0.991277, 0.104816, 0.079897,
		0.074778, -0.946495, 0.313935,
		35.944180, 40.468719, 40.371258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.436699, 40.916782, 39.833961>,  <35.891834, 41.131264, 40.151501>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.436699, 40.916782, 39.833961> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.253517, 40.577183, 39.939396>,  <36.143608, 40.373425, 40.002659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.253517, 40.577183, 39.939396>,  <36.436699, 40.916782, 39.833961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.253517, 40.577183, 39.939396> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046678, -0.319066, -0.946582,
		0.887747, -0.421192, 0.185748,
		-0.457959, -0.848996, 0.263589,
		36.116131, 40.322483, 40.018471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.884178, 40.413391, 39.675652>,  <36.436699, 40.916782, 39.833961>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.884178, 40.413391, 39.675652> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.524376, 40.240997, 39.704350>,  <36.308495, 40.137562, 39.721569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.524376, 40.240997, 39.704350>,  <36.884178, 40.413391, 39.675652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.524376, 40.240997, 39.704350> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091697, -0.346758, -0.933461,
		0.427188, -0.833071, 0.351430,
		-0.899501, -0.430988, 0.071740,
		36.254524, 40.111702, 39.725872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.971710, 39.783012, 39.310635>,  <36.884178, 40.413391, 39.675652>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.971710, 39.783012, 39.310635> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.583637, 39.878128, 39.329361>,  <36.350792, 39.935200, 39.340599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.583637, 39.878128, 39.329361>,  <36.971710, 39.783012, 39.310635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.583637, 39.878128, 39.329361> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105584, -0.240816, -0.964811,
		-0.218136, -0.940994, 0.258743,
		-0.970190, 0.237779, 0.046824,
		36.292580, 39.949467, 39.343407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.676456, 39.984138, 39.525024>,  <36.971710, 39.783012, 39.310635>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.676456, 39.984138, 39.525024> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.074505, 40.023556, 39.526615>,  <38.313335, 40.047207, 39.527569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.074505, 40.023556, 39.526615>,  <37.676456, 39.984138, 39.525024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.074505, 40.023556, 39.526615> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015541, -0.196465, 0.980388,
		0.097396, -0.975546, -0.197038,
		0.995124, 0.098548, 0.003974,
		38.373043, 40.053120, 39.527809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.870293, 39.377098, 39.928104>,  <37.676456, 39.984138, 39.525024>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.870293, 39.377098, 39.928104> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.192928, 39.613194, 39.915268>,  <38.386509, 39.754848, 39.907566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.192928, 39.613194, 39.915268>,  <37.870293, 39.377098, 39.928104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.192928, 39.613194, 39.915268> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150476, -0.152525, 0.976777,
		0.571635, -0.792690, -0.211842,
		0.806592, 0.590237, -0.032092,
		38.434906, 39.790264, 39.905640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.281879, 39.010971, 40.442940>,  <37.870293, 39.377098, 39.928104>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.281879, 39.010971, 40.442940> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.467899, 39.361206, 40.390671>,  <38.579514, 39.571346, 40.359310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.467899, 39.361206, 40.390671>,  <38.281879, 39.010971, 40.442940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.467899, 39.361206, 40.390671> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163675, 0.060024, 0.984687,
		0.870021, -0.479320, -0.115397,
		0.465053, 0.875585, -0.130674,
		38.607414, 39.623882, 40.351467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.840012, 38.908272, 40.812527>,  <38.281879, 39.010971, 40.442940>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.840012, 38.908272, 40.812527> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.774494, 39.302307, 40.791451>,  <38.735184, 39.538727, 40.778805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.774494, 39.302307, 40.791451>,  <38.840012, 38.908272, 40.812527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.774494, 39.302307, 40.791451> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218381, 0.088298, 0.971861,
		0.962020, 0.147676, -0.229587,
		-0.163793, 0.985086, -0.052695,
		38.725357, 39.597832, 40.775642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.422287, 39.300064, 41.042545>,  <38.840012, 38.908272, 40.812527>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.422287, 39.300064, 41.042545> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.182625, 39.619343, 41.017590>,  <39.038826, 39.810909, 41.002617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.182625, 39.619343, 41.017590>,  <39.422287, 39.300064, 41.042545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.182625, 39.619343, 41.017590> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373656, 0.347699, 0.859934,
		0.708089, 0.491923, -0.506578,
		-0.599158, 0.798196, -0.062392,
		39.002876, 39.858803, 40.998871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.886410, 39.853985, 41.325562>,  <39.422287, 39.300064, 41.042545>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.886410, 39.853985, 41.325562> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.512196, 39.984035, 41.380798>,  <39.287666, 40.062065, 41.413940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.512196, 39.984035, 41.380798>,  <39.886410, 39.853985, 41.325562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.512196, 39.984035, 41.380798> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266624, 0.393523, 0.879802,
		0.231710, 0.859901, -0.454841,
		-0.935533, 0.325130, 0.138088,
		39.231537, 40.081573, 41.422226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.925575, 40.510700, 41.675587>,  <39.886410, 39.853985, 41.325562>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.925575, 40.510700, 41.675587> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.555809, 40.386024, 41.763508>,  <39.333950, 40.311218, 41.816261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.555809, 40.386024, 41.763508>,  <39.925575, 40.510700, 41.675587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.555809, 40.386024, 41.763508> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133698, 0.274919, 0.952126,
		-0.357196, 0.909543, -0.212466,
		-0.924411, -0.311690, 0.219805,
		39.278484, 40.292519, 41.829449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.648224, 40.969975, 42.091633>,  <39.925575, 40.510700, 41.675587>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.648224, 40.969975, 42.091633> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.384991, 40.677143, 42.162041>,  <39.227051, 40.501442, 42.204285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.384991, 40.677143, 42.162041>,  <39.648224, 40.969975, 42.091633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.384991, 40.677143, 42.162041> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057083, 0.184591, 0.981156,
		-0.750776, 0.655732, -0.079687,
		-0.658085, -0.732080, 0.176018,
		39.187565, 40.457520, 42.214848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.171558, 41.212353, 42.468864>,  <39.648224, 40.969975, 42.091633>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.171558, 41.212353, 42.468864> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.146709, 40.821449, 42.549965>,  <39.131802, 40.586906, 42.598625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.146709, 40.821449, 42.549965>,  <39.171558, 41.212353, 42.468864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.146709, 40.821449, 42.549965> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115525, 0.194738, 0.974028,
		-0.991360, 0.083927, 0.100802,
		-0.062118, -0.977258, 0.202751,
		39.128075, 40.528271, 42.610790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.727608, 41.021793, 42.982925>,  <39.171558, 41.212353, 42.468864>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.727608, 41.021793, 42.982925> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.981052, 40.712860, 43.001007>,  <39.133118, 40.527500, 43.011856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.981052, 40.712860, 43.001007>,  <38.727608, 41.021793, 42.982925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.981052, 40.712860, 43.001007> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136177, 0.168851, 0.976189,
		-0.761572, -0.612369, 0.212160,
		0.633611, -0.772330, 0.045202,
		39.171135, 40.481159, 43.014568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.520817, 40.670467, 43.517502>,  <38.727608, 41.021793, 42.982925>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.520817, 40.670467, 43.517502> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.899761, 40.555679, 43.460709>,  <39.127129, 40.486805, 43.426632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.899761, 40.555679, 43.460709>,  <38.520817, 40.670467, 43.517502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.899761, 40.555679, 43.460709> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137856, -0.034660, 0.989846,
		-0.288980, -0.957312, 0.006725,
		0.947358, -0.286973, -0.141987,
		39.183968, 40.469589, 43.418114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.545547, 40.266781, 44.069271>,  <38.520817, 40.670467, 43.517502>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.545547, 40.266781, 44.069271> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.917965, 40.352581, 43.951187>,  <39.141415, 40.404060, 43.880337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.917965, 40.352581, 43.951187>,  <38.545547, 40.266781, 44.069271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.917965, 40.352581, 43.951187> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293767, 0.039315, 0.955068,
		0.216467, -0.975933, -0.026409,
		0.931044, 0.214499, -0.295208,
		39.197277, 40.416931, 43.862625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.025585, 39.738430, 44.299667>,  <38.545547, 40.266781, 44.069271>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.025585, 39.738430, 44.299667> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.196297, 40.099663, 44.280445>,  <39.298725, 40.316402, 44.268913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.196297, 40.099663, 44.280445>,  <39.025585, 39.738430, 44.299667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.196297, 40.099663, 44.280445> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099449, 0.099678, 0.990038,
		0.898871, -0.417749, 0.132351,
		0.426780, 0.903078, -0.048053,
		39.324329, 40.370586, 44.266029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.548096, 39.696785, 44.686104>,  <39.025585, 39.738430, 44.299667>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.548096, 39.696785, 44.686104> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.450356, 40.084251, 44.668316>,  <39.391712, 40.316730, 44.657642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.450356, 40.084251, 44.668316>,  <39.548096, 39.696785, 44.686104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.450356, 40.084251, 44.668316> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042926, 0.035010, 0.998465,
		0.968736, 0.245884, 0.033027,
		-0.244351, 0.968667, -0.044471,
		39.377048, 40.374851, 44.654976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.977566, 40.159813, 45.239697>,  <39.548096, 39.696785, 44.686104>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.977566, 40.159813, 45.239697> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.646252, 40.370094, 45.162148>,  <39.447464, 40.496262, 45.115616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.646252, 40.370094, 45.162148>,  <39.977566, 40.159813, 45.239697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.646252, 40.370094, 45.162148> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142580, 0.136873, 0.980274,
		0.541869, 0.839584, -0.038415,
		-0.828281, 0.525703, -0.193875,
		39.397766, 40.527805, 45.103985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.009369, 40.668106, 45.692066>,  <39.977566, 40.159813, 45.239697>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.009369, 40.668106, 45.692066> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.623272, 40.648800, 45.589321>,  <39.391613, 40.637215, 45.527672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.623272, 40.648800, 45.589321>,  <40.009369, 40.668106, 45.692066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.623272, 40.648800, 45.589321> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260385, 0.262436, 0.929154,
		0.022564, 0.963742, -0.265882,
		-0.965241, -0.048266, -0.256865,
		39.333698, 40.634319, 45.512260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.544720, 41.249031, 46.133411>,  <40.009369, 40.668106, 45.692066>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.544720, 41.249031, 46.133411> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.261875, 40.987595, 46.025475>,  <39.092167, 40.830734, 45.960712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.261875, 40.987595, 46.025475>,  <39.544720, 41.249031, 46.133411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.261875, 40.987595, 46.025475> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484430, 0.169778, 0.858198,
		-0.515094, 0.737562, -0.436669,
		-0.707111, -0.653588, -0.269845,
		39.049740, 40.791519, 45.944519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.977169, 41.544022, 46.425571>,  <39.544720, 41.249031, 46.133411>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.977169, 41.544022, 46.425571> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.875889, 41.166470, 46.340729>,  <38.815121, 40.939938, 46.289822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.875889, 41.166470, 46.340729>,  <38.977169, 41.544022, 46.425571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.875889, 41.166470, 46.340729> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643025, 0.000395, 0.765845,
		-0.722778, 0.330301, -0.607036,
		-0.253199, -0.943875, -0.212107,
		38.799931, 40.883308, 46.277096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.218918, 41.617355, 46.301037> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.278057, 41.226772, 46.363873>,  <38.313541, 40.992424, 46.401573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.278057, 41.226772, 46.363873>,  <38.218918, 41.617355, 46.301037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.278057, 41.226772, 46.363873> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506800, 0.061595, 0.859860,
		-0.849291, -0.206739, -0.485761,
		0.147846, -0.976455, 0.157087,
		38.322411, 40.933834, 46.410999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.572857, 41.436382, 46.395657>,  <38.218918, 41.617355, 46.301037>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.572857, 41.436382, 46.395657> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.776161, 41.131615, 46.556229>,  <37.898144, 40.948753, 46.652573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.776161, 41.131615, 46.556229>,  <37.572857, 41.436382, 46.395657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.776161, 41.131615, 46.556229> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576224, 0.045545, 0.816022,
		-0.640027, -0.646067, -0.415889,
		0.508263, -0.761921, 0.401429,
		37.928638, 40.903038, 46.676659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.144867, 41.043152, 46.728180>,  <37.572857, 41.436382, 46.395657>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.144867, 41.043152, 46.728180> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.481834, 40.945351, 46.920246>,  <37.684013, 40.886669, 47.035484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.481834, 40.945351, 46.920246>,  <37.144867, 41.043152, 46.728180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.481834, 40.945351, 46.920246> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500245, -0.023739, 0.865558,
		-0.200233, -0.969358, -0.142310,
		0.842414, -0.244503, 0.480163,
		37.734558, 40.872002, 47.064297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.906403, 40.690739, 47.315010>,  <37.144867, 41.043152, 46.728180>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.906403, 40.690739, 47.315010> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.275131, 40.773087, 47.446381>,  <37.496368, 40.822495, 47.525204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.275131, 40.773087, 47.446381>,  <36.906403, 40.690739, 47.315010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.275131, 40.773087, 47.446381> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319405, -0.076599, 0.944517,
		0.219602, -0.975577, -0.004856,
		0.921821, 0.205867, 0.328425,
		37.551678, 40.834846, 47.544907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.134834, 40.084034, 47.840939>,  <36.906403, 40.690739, 47.315010>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.134834, 40.084034, 47.840939> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.405415, 40.364708, 47.930424>,  <37.567764, 40.533112, 47.984116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.405415, 40.364708, 47.930424>,  <37.134834, 40.084034, 47.840939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.405415, 40.364708, 47.930424> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221398, -0.095970, 0.970450,
		0.702422, -0.705992, 0.090433,
		0.676451, 0.701687, 0.223717,
		37.608349, 40.575214, 47.997540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.578117, 39.831261, 48.449570>,  <37.134834, 40.084034, 47.840939>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.578117, 39.831261, 48.449570> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.572037, 40.231121, 48.458256>,  <37.568386, 40.471035, 48.463467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.572037, 40.231121, 48.458256>,  <37.578117, 39.831261, 48.449570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.572037, 40.231121, 48.458256> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074635, -0.022792, 0.996950,
		0.997095, 0.013539, 0.074955,
		-0.015206, 0.999648, 0.021716,
		37.567474, 40.531017, 48.464771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.085037, 40.078300, 48.894394>,  <37.578117, 39.831261, 48.449570>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.085037, 40.078300, 48.894394> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.831997, 40.386948, 48.867786>,  <37.680172, 40.572136, 48.851822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.831997, 40.386948, 48.867786>,  <38.085037, 40.078300, 48.894394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.831997, 40.386948, 48.867786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014559, 0.074030, 0.997150,
		0.774343, 0.631764, -0.035597,
		-0.632598, 0.771618, -0.066522,
		37.642216, 40.618435, 48.847828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.472637, 40.535854, 49.218079>,  <38.085037, 40.078300, 48.894394>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.472637, 40.535854, 49.218079> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.095364, 40.667259, 49.238022>,  <37.868999, 40.746101, 49.249989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.095364, 40.667259, 49.238022>,  <38.472637, 40.535854, 49.218079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.095364, 40.667259, 49.238022> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095879, 0.125416, 0.987460,
		0.318143, 0.936135, -0.149788,
		-0.943182, 0.328515, 0.049855,
		37.812408, 40.765812, 49.252979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.517345, 41.274845, 49.434277>,  <38.472637, 40.535854, 49.218079>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.517345, 41.274845, 49.434277> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.154575, 41.128174, 49.517262>,  <37.936913, 41.040173, 49.567055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.154575, 41.128174, 49.517262>,  <38.517345, 41.274845, 49.434277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.154575, 41.128174, 49.517262> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027058, 0.440727, 0.897233,
		-0.420432, 0.819333, -0.389783,
		-0.906920, -0.366679, 0.207465,
		37.882500, 41.018169, 49.579502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.219280, 41.787411, 49.824162>,  <38.517345, 41.274845, 49.434277>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.219280, 41.787411, 49.824162> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.964775, 41.490353, 49.907730>,  <37.812073, 41.312119, 49.957870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.964775, 41.490353, 49.907730>,  <38.219280, 41.787411, 49.824162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.964775, 41.490353, 49.907730> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147423, 0.382864, 0.911966,
		-0.757252, 0.549453, -0.353086,
		-0.636267, -0.742641, 0.208923,
		37.773895, 41.267559, 49.970406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.674965, 42.117161, 50.272957>,  <38.219280, 41.787411, 49.824162>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.674965, 42.117161, 50.272957> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.628635, 41.722702, 50.320442>,  <37.600838, 41.486027, 50.348934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.628635, 41.722702, 50.320442>,  <37.674965, 42.117161, 50.272957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.628635, 41.722702, 50.320442> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132239, 0.133766, 0.982150,
		-0.984427, 0.098060, -0.145901,
		-0.115827, -0.986149, 0.118715,
		37.593887, 41.426857, 50.356056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.237022, 42.087170, 50.806774>,  <37.674965, 42.117161, 50.272957>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.237022, 42.087170, 50.806774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.381344, 41.715176, 50.778648>,  <37.467937, 41.491978, 50.761772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.381344, 41.715176, 50.778648>,  <37.237022, 42.087170, 50.806774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.381344, 41.715176, 50.778648> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280434, -0.180088, 0.942828,
		-0.889481, -0.320456, -0.325777,
		0.360803, -0.929987, -0.070317,
		37.489586, 41.436180, 50.757553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.842857, 41.769295, 51.194054>,  <37.237022, 42.087170, 50.806774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.842857, 41.769295, 51.194054> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.159584, 41.525883, 51.173203>,  <37.349621, 41.379833, 51.160694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.159584, 41.525883, 51.173203>,  <36.842857, 41.769295, 51.194054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.159584, 41.525883, 51.173203> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093214, -0.204748, 0.974366,
		-0.603605, -0.766660, -0.218846,
		0.791815, -0.608532, -0.052124,
		37.397129, 41.343323, 51.157566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.640667, 41.215569, 51.521370>,  <36.842857, 41.769295, 51.194054>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.640667, 41.215569, 51.521370> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.036446, 41.213856, 51.579315>,  <37.273911, 41.212826, 51.614082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.036446, 41.213856, 51.579315>,  <36.640667, 41.215569, 51.521370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.036446, 41.213856, 51.579315> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142294, -0.218392, 0.965431,
		0.027502, -0.975852, -0.216696,
		0.989442, -0.004283, 0.144864,
		37.333279, 41.212570, 51.622776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.761009, 40.734169, 52.046326>,  <36.640667, 41.215569, 51.521370>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.761009, 40.734169, 52.046326> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.126869, 40.893177, 52.016960>,  <37.346386, 40.988583, 51.999340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.126869, 40.893177, 52.016960>,  <36.761009, 40.734169, 52.046326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.126869, 40.893177, 52.016960> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170348, -0.214340, 0.961790,
		0.366592, -0.892210, -0.263763,
		0.914654, 0.397516, -0.073411,
		37.401264, 41.012432, 51.994938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.235722, 40.249615, 52.326935>,  <36.761009, 40.734169, 52.046326>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.235722, 40.249615, 52.326935> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.411304, 40.608929, 52.334888>,  <37.516655, 40.824516, 52.339661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.411304, 40.608929, 52.334888>,  <37.235722, 40.249615, 52.326935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.411304, 40.608929, 52.334888> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295711, -0.165328, 0.940862,
		0.848452, -0.407120, -0.338205,
		0.438959, 0.898287, 0.019883,
		37.542992, 40.878414, 52.340855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.006065, 40.207058, 52.451355>,  <37.235722, 40.249615, 52.326935>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.006065, 40.207058, 52.451355> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.901512, 40.568592, 52.586857>,  <37.838779, 40.785515, 52.668156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.901512, 40.568592, 52.586857>,  <38.006065, 40.207058, 52.451355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.901512, 40.568592, 52.586857> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350349, -0.238177, 0.905829,
		0.899407, 0.355452, -0.254404,
		-0.261386, 0.903839, 0.338750,
		37.823097, 40.839745, 52.688480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.450851, 40.369057, 53.010372>,  <38.006065, 40.207058, 52.451355>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.450851, 40.369057, 53.010372> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.179703, 40.657284, 53.068714>,  <38.017014, 40.830219, 53.103718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.179703, 40.657284, 53.068714>,  <38.450851, 40.369057, 53.010372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.179703, 40.657284, 53.068714> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014217, -0.185509, 0.982540,
		0.735043, 0.668109, 0.115507,
		-0.677871, 0.720567, 0.145855,
		37.976341, 40.873455, 53.112473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.529461, 40.675621, 53.681225>,  <38.450851, 40.369057, 53.010372>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.529461, 40.675621, 53.681225> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.156666, 40.766651, 53.568367>,  <37.932987, 40.821270, 53.500652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.156666, 40.766651, 53.568367>,  <38.529461, 40.675621, 53.681225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.156666, 40.766651, 53.568367> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336482, -0.253671, 0.906880,
		0.134811, 0.940139, 0.312993,
		-0.931990, 0.227574, -0.282142,
		37.877068, 40.834923, 53.483723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.321293, 41.089348, 54.222515>,  <38.529461, 40.675621, 53.681225>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.321293, 41.089348, 54.222515> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.987545, 40.950325, 54.051384>,  <37.787296, 40.866913, 53.948704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.987545, 40.950325, 54.051384>,  <38.321293, 41.089348, 54.222515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.987545, 40.950325, 54.051384> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350426, -0.264661, 0.898419,
		-0.425480, 0.899533, 0.099032,
		-0.834367, -0.347556, -0.427827,
		37.737236, 40.846058, 53.923035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.833179, 41.240723, 54.698563>,  <38.321293, 41.089348, 54.222515>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.833179, 41.240723, 54.698563> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.645271, 40.973709, 54.467491>,  <37.532528, 40.813499, 54.328850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.645271, 40.973709, 54.467491>,  <37.833179, 41.240723, 54.698563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.645271, 40.973709, 54.467491> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520120, -0.319449, 0.792103,
		-0.713297, 0.672568, -0.197132,
		-0.469769, -0.667537, -0.577678,
		37.504341, 40.773449, 54.294189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.194412, 41.355843, 54.929996>,  <37.833179, 41.240723, 54.698563>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.194412, 41.355843, 54.929996> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.199993, 41.000717, 54.745998>,  <37.203342, 40.787643, 54.635597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.199993, 41.000717, 54.745998>,  <37.194412, 41.355843, 54.929996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.199993, 41.000717, 54.745998> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394265, -0.427653, 0.813430,
		-0.918891, 0.170015, -0.355997,
		0.013948, -0.887811, -0.459997,
		37.204178, 40.734375, 54.607998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.502567, 41.001163, 54.880878>,  <37.194412, 41.355843, 54.929996>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.502567, 41.001163, 54.880878> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.803860, 40.740822, 54.918888>,  <36.984634, 40.584618, 54.941692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.803860, 40.740822, 54.918888>,  <36.502567, 41.001163, 54.880878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.803860, 40.740822, 54.918888> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456859, -0.413754, 0.787457,
		-0.473204, -0.636549, -0.609002,
		0.753232, -0.650856, 0.095023,
		37.029831, 40.545567, 54.947395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.309872, 40.376667, 54.873611>,  <36.502567, 41.001163, 54.880878>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.309872, 40.376667, 54.873611> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.619099, 40.445431, 55.117844>,  <36.804634, 40.486691, 55.264385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.619099, 40.445431, 55.117844>,  <36.309872, 40.376667, 54.873611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.619099, 40.445431, 55.117844> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530676, -0.352031, 0.771011,
		0.347488, -0.920066, -0.180916,
		0.773069, 0.171909, 0.610583,
		36.851021, 40.497002, 55.301018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.658928, 40.332108, 54.920387>,  <36.309872, 40.376667, 54.873611>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.658928, 40.332108, 54.920387> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.342674, 40.505287, 55.093567>,  <35.152924, 40.609196, 55.197475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.342674, 40.505287, 55.093567>,  <35.658928, 40.332108, 54.920387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.342674, 40.505287, 55.093567> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523414, -0.111017, -0.844815,
		-0.317701, -0.894554, 0.314387,
		-0.790635, 0.432953, 0.432952,
		35.105484, 40.635174, 55.223454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.118542, 39.935261, 54.811905>,  <35.658928, 40.332108, 54.920387>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.118542, 39.935261, 54.811905> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.947498, 40.293228, 54.862942>,  <34.844872, 40.508007, 54.893566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.947498, 40.293228, 54.862942>,  <35.118542, 39.935261, 54.811905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.947498, 40.293228, 54.862942> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448486, -0.087472, -0.889499,
		-0.784865, -0.437579, 0.438761,
		-0.427605, 0.894915, 0.127594,
		34.819218, 40.561703, 54.901218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.527565, 39.824047, 54.656441>,  <35.118542, 39.935261, 54.811905>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.527565, 39.824047, 54.656441> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.575294, 40.220608, 54.634945>,  <34.603931, 40.458546, 54.622047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.575294, 40.220608, 54.634945>,  <34.527565, 39.824047, 54.656441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.575294, 40.220608, 54.634945> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415079, 0.000640, -0.909785,
		-0.901927, 0.130863, 0.411585,
		0.119320, 0.991400, -0.053741,
		34.611092, 40.518028, 54.618824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.133312, 39.962261, 54.106350>,  <34.527565, 39.824047, 54.656441>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.133312, 39.962261, 54.106350> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.298676, 40.325481, 54.133293>,  <34.397892, 40.543415, 54.149460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.298676, 40.325481, 54.133293>,  <34.133312, 39.962261, 54.106350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.298676, 40.325481, 54.133293> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111197, 0.123768, -0.986061,
		-0.903730, 0.400157, 0.152139,
		0.413409, 0.908050, 0.067356,
		34.422699, 40.597897, 54.153500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.628384, 40.499748, 53.840904>,  <34.133312, 39.962261, 54.106350>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.628384, 40.499748, 53.840904> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.002426, 40.637409, 53.807110>,  <34.226852, 40.720005, 53.786835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.002426, 40.637409, 53.807110>,  <33.628384, 40.499748, 53.840904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.002426, 40.637409, 53.807110> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168140, 0.221023, -0.960665,
		-0.311945, 0.912527, 0.264546,
		0.935104, 0.344155, -0.084485,
		34.282959, 40.740654, 53.781765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.574734, 41.170921, 53.543221>,  <33.628384, 40.499748, 53.840904>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.574734, 41.170921, 53.543221> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.949562, 41.061543, 53.456383>,  <34.174458, 40.995914, 53.404282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.949562, 41.061543, 53.456383>,  <33.574734, 41.170921, 53.543221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.949562, 41.061543, 53.456383> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199920, 0.089541, -0.975712,
		0.286245, 0.957710, 0.029238,
		0.937068, -0.273447, -0.217096,
		34.230682, 40.979507, 53.391254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.823105, 41.677441, 52.972679>,  <33.574734, 41.170921, 53.543221>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.823105, 41.677441, 52.972679> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.075737, 41.368366, 52.947186>,  <34.227314, 41.182922, 52.931889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.075737, 41.368366, 52.947186>,  <33.823105, 41.677441, 52.972679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.075737, 41.368366, 52.947186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004207, 0.078786, -0.996883,
		0.775301, 0.629878, 0.046509,
		0.631578, -0.772688, -0.063732,
		34.265209, 41.136559, 52.928066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.280354, 41.857201, 52.421116>,  <33.823105, 41.677441, 52.972679>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.280354, 41.857201, 52.421116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.369061, 41.476776, 52.507198>,  <34.422283, 41.248524, 52.558846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.369061, 41.476776, 52.507198>,  <34.280354, 41.857201, 52.421116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.369061, 41.476776, 52.507198> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249566, -0.157988, -0.955383,
		0.942623, 0.265576, 0.202316,
		0.221763, -0.951057, 0.215202,
		34.435589, 41.191460, 52.571758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.001282, 41.700359, 52.209599>,  <34.280354, 41.857201, 52.421116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.001282, 41.700359, 52.209599> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.811474, 41.348267, 52.207314>,  <34.697590, 41.137012, 52.205944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.811474, 41.348267, 52.207314>,  <35.001282, 41.700359, 52.209599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.811474, 41.348267, 52.207314> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332244, -0.173090, -0.927175,
		0.815137, -0.441857, 0.374585,
		-0.474516, -0.880229, -0.005712,
		34.669121, 41.084198, 52.205601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.478222, 41.232880, 52.045918>,  <35.001282, 41.700359, 52.209599>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.478222, 41.232880, 52.045918> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.153446, 41.028332, 51.933304>,  <34.958580, 40.905605, 51.865734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.153446, 41.028332, 51.933304>,  <35.478222, 41.232880, 52.045918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.153446, 41.028332, 51.933304> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456291, -0.255159, -0.852462,
		0.364083, -0.820608, 0.440505,
		-0.811937, -0.511366, -0.281538,
		34.909866, 40.874924, 51.848843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.735985, 40.640041, 51.623997>,  <35.478222, 41.232880, 52.045918>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.735985, 40.640041, 51.623997> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.345505, 40.654270, 51.538433>,  <35.111214, 40.662807, 51.487095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.345505, 40.654270, 51.538433>,  <35.735985, 40.640041, 51.623997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.345505, 40.654270, 51.538433> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201658, -0.213790, -0.955839,
		-0.079737, -0.976232, 0.201529,
		-0.976205, 0.035576, -0.213912,
		35.052643, 40.664944, 51.474258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.708874, 40.262520, 51.119740>,  <35.735985, 40.640041, 51.623997>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.708874, 40.262520, 51.119740> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.369514, 40.471035, 51.082897>,  <35.165897, 40.596142, 51.060791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.369514, 40.471035, 51.082897>,  <35.708874, 40.262520, 51.119740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.369514, 40.471035, 51.082897> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152982, 0.074881, -0.985388,
		-0.506770, -0.850092, -0.143276,
		-0.848399, 0.521284, -0.092102,
		35.114994, 40.627419, 51.055267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.449913, 40.018147, 50.452419>,  <35.708874, 40.262520, 51.119740>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.449913, 40.018147, 50.452419> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.239365, 40.348419, 50.533592>,  <35.113037, 40.546581, 50.582298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.239365, 40.348419, 50.533592>,  <35.449913, 40.018147, 50.452419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.239365, 40.348419, 50.533592> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025535, 0.253921, -0.966888,
		-0.849873, -0.503758, -0.154739,
		-0.526369, 0.825683, 0.202937,
		35.081455, 40.596123, 50.594475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.854378, 39.979721, 50.064789>,  <35.449913, 40.018147, 50.452419>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.854378, 39.979721, 50.064789> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.918877, 40.366997, 50.141315>,  <34.957577, 40.599361, 50.187233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.918877, 40.366997, 50.141315>,  <34.854378, 39.979721, 50.064789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.918877, 40.366997, 50.141315> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078391, 0.205808, -0.975447,
		-0.983795, 0.142294, 0.109084,
		0.161250, 0.968192, 0.191319,
		34.967251, 40.657455, 50.198711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.373352, 40.346382, 49.702324>,  <34.854378, 39.979721, 50.064789>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.373352, 40.346382, 49.702324> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.649147, 40.625034, 49.781631>,  <34.814625, 40.792225, 49.829216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.649147, 40.625034, 49.781631>,  <34.373352, 40.346382, 49.702324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.649147, 40.625034, 49.781631> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088866, 0.353040, -0.931378,
		-0.718826, 0.624553, 0.305324,
		0.689487, 0.696632, 0.198273,
		34.855991, 40.834023, 49.841114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.063366, 41.108475, 49.479515>,  <34.373352, 40.346382, 49.702324>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.063366, 41.108475, 49.479515> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.463245, 41.108803, 49.489269>,  <34.703175, 41.109001, 49.495121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.463245, 41.108803, 49.489269>,  <34.063366, 41.108475, 49.479515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.463245, 41.108803, 49.489269> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022569, 0.348168, -0.937161,
		-0.009261, 0.937432, 0.348046,
		0.999702, 0.000824, 0.024382,
		34.763157, 41.109051, 49.496582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.285976, 41.699535, 49.065334>,  <34.063366, 41.108475, 49.479515>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.285976, 41.699535, 49.065334> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.627701, 41.492073, 49.078903>,  <34.832737, 41.367596, 49.087044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.627701, 41.492073, 49.078903>,  <34.285976, 41.699535, 49.065334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.627701, 41.492073, 49.078903> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265884, 0.380012, -0.885944,
		0.446608, 0.765891, 0.462550,
		0.854311, -0.518654, 0.033922,
		34.883995, 41.336475, 49.089081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.968014, 42.131130, 48.991348>,  <34.285976, 41.699535, 49.065334>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.968014, 42.131130, 48.991348> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.040333, 41.757229, 48.869007>,  <35.083725, 41.532887, 48.795605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.040333, 41.757229, 48.869007>,  <34.968014, 42.131130, 48.991348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.040333, 41.757229, 48.869007> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146275, 0.333071, -0.931487,
		0.972582, 0.123672, 0.196950,
		0.180797, -0.934756, -0.305849,
		35.094570, 41.476803, 48.777252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.416988, 42.222279, 48.511753>,  <34.968014, 42.131130, 48.991348>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.416988, 42.222279, 48.511753> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.332733, 41.840378, 48.427780>,  <35.282181, 41.611237, 48.377396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.332733, 41.840378, 48.427780>,  <35.416988, 42.222279, 48.511753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.332733, 41.840378, 48.427780> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365058, 0.122392, -0.922904,
		0.906842, -0.271041, 0.322761,
		-0.210642, -0.954755, -0.209936,
		35.269539, 41.553951, 48.364799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.750507, 42.159172, 47.873665>,  <35.416988, 42.222279, 48.511753>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.750507, 42.159172, 47.873665> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.540432, 41.819000, 47.885952>,  <35.414387, 41.614899, 47.893326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.540432, 41.819000, 47.885952>,  <35.750507, 42.159172, 47.873665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.540432, 41.819000, 47.885952> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086070, -0.089000, -0.992306,
		0.846619, -0.518508, 0.119938,
		-0.525193, -0.850429, 0.030722,
		35.382874, 41.563873, 47.895168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.632404, 28.729687, 32.603691> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.266068, 28.577173, 32.654057>,  <42.046265, 28.485666, 32.684277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.266068, 28.577173, 32.654057>,  <42.632404, 28.729687, 32.603691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.266068, 28.577173, 32.654057> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139798, 0.596743, 0.790161,
		-0.376413, 0.706061, -0.599826,
		-0.915843, -0.381282, 0.125916,
		41.991314, 28.462790, 32.691830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.163750, 29.215260, 32.502285>,  <42.632404, 28.729687, 32.603691>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.163750, 29.215260, 32.502285> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.971489, 28.952448, 32.734592>,  <41.856133, 28.794762, 32.873978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.971489, 28.952448, 32.734592>,  <42.163750, 29.215260, 32.502285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.971489, 28.952448, 32.734592> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094828, 0.697346, 0.710434,
		-0.871770, 0.286398, -0.397484,
		-0.480651, -0.657028, 0.580766,
		41.827293, 28.755339, 32.908821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.729671, 29.668642, 32.921577>,  <42.163750, 29.215260, 32.502285>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.729671, 29.668642, 32.921577> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.714218, 29.316269, 33.110245>,  <41.704945, 29.104845, 33.223446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.714218, 29.316269, 33.110245>,  <41.729671, 29.668642, 32.921577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.714218, 29.316269, 33.110245> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016733, 0.471381, 0.881771,
		-0.999113, 0.041958, -0.003470,
		-0.038633, -0.880931, 0.471665,
		41.702629, 29.051991, 33.251743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.098846, 29.711916, 33.411968>,  <41.729671, 29.668642, 32.921577>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.098846, 29.711916, 33.411968> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.341095, 29.415895, 33.528961>,  <41.486443, 29.238283, 33.599155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.341095, 29.415895, 33.528961>,  <41.098846, 29.711916, 33.411968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.341095, 29.415895, 33.528961> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010525, 0.360072, 0.932865,
		-0.795685, -0.568040, 0.210278,
		0.605620, -0.740053, 0.292483,
		41.522781, 29.193880, 33.616707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.807579, 29.415726, 34.079025>,  <41.098846, 29.711916, 33.411968>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.807579, 29.415726, 34.079025> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.183685, 29.279552, 34.078175>,  <41.409348, 29.197849, 34.077663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.183685, 29.279552, 34.078175>,  <40.807579, 29.415726, 34.079025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.183685, 29.279552, 34.078175> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119706, 0.324770, 0.938187,
		-0.318699, -0.882400, 0.346122,
		0.940267, -0.340432, -0.002125,
		41.465767, 29.177423, 34.077538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.852272, 29.100294, 34.729572>,  <40.807579, 29.415726, 34.079025>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.852272, 29.100294, 34.729572> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.208508, 29.207745, 34.582767>,  <41.422249, 29.272215, 34.494686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.208508, 29.207745, 34.582767>,  <40.852272, 29.100294, 34.729572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.208508, 29.207745, 34.582767> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248561, 0.388313, 0.887373,
		0.380877, -0.881509, 0.279060,
		0.890590, 0.268616, -0.367009,
		41.475681, 29.288334, 34.472664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.383789, 28.908331, 35.234421>,  <40.852272, 29.100294, 34.729572>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.383789, 28.908331, 35.234421> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.601223, 29.163761, 35.016529>,  <41.731686, 29.317019, 34.885792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.601223, 29.163761, 35.016529>,  <41.383789, 28.908331, 35.234421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.601223, 29.163761, 35.016529> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385015, 0.386985, 0.837858,
		0.745838, -0.665181, -0.035499,
		0.543589, 0.638574, -0.544733,
		41.764301, 29.355333, 34.853107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.980671, 28.898853, 35.609570>,  <41.383789, 28.908331, 35.234421>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.980671, 28.898853, 35.609570> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.997028, 29.241320, 35.403538>,  <42.006844, 29.446800, 35.279919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.997028, 29.241320, 35.403538>,  <41.980671, 28.898853, 35.609570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.997028, 29.241320, 35.403538> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424574, 0.451765, 0.784631,
		0.904469, -0.250776, -0.345031,
		0.040893, 0.856166, -0.515080,
		42.009296, 29.498169, 35.249012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.593616, 29.093027, 35.808983>,  <41.980671, 28.898853, 35.609570>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.593616, 29.093027, 35.808983> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.431904, 29.422756, 35.650467>,  <42.334877, 29.620594, 35.555355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.431904, 29.422756, 35.650467>,  <42.593616, 29.093027, 35.808983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.431904, 29.422756, 35.650467> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446511, 0.556017, 0.701051,
		0.798239, 0.106471, -0.592856,
		-0.404280, 0.824323, -0.396294,
		42.310619, 29.670053, 35.531578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.041004, 29.616156, 35.961052>,  <42.593616, 29.093027, 35.808983>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.041004, 29.616156, 35.961052> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.712570, 29.811415, 35.842709>,  <42.515511, 29.928570, 35.771702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.712570, 29.811415, 35.842709>,  <43.041004, 29.616156, 35.961052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.712570, 29.811415, 35.842709> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241051, 0.766365, 0.595465,
		0.517411, 0.417610, -0.746919,
		-0.821085, 0.488146, -0.295861,
		42.466244, 29.957859, 35.753952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.227123, 30.279919, 35.615047>,  <43.041004, 29.616156, 35.961052>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.227123, 30.279919, 35.615047> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.857052, 30.315348, 35.762669>,  <42.635010, 30.336605, 35.851242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.857052, 30.315348, 35.762669>,  <43.227123, 30.279919, 35.615047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.857052, 30.315348, 35.762669> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269368, 0.838257, 0.474095,
		-0.267370, 0.538033, -0.799396,
		-0.925178, 0.088573, 0.369053,
		42.579498, 30.341919, 35.873386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.042957, 30.962938, 35.485020>,  <43.227123, 30.279919, 35.615047>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.042957, 30.962938, 35.485020> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.805546, 30.864986, 35.791683>,  <42.663101, 30.806215, 35.975681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.805546, 30.864986, 35.791683>,  <43.042957, 30.962938, 35.485020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.805546, 30.864986, 35.791683> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305600, 0.812667, 0.496167,
		-0.744537, 0.528778, -0.407503,
		-0.593526, -0.244882, 0.766655,
		42.627487, 30.791521, 36.021679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.742790, 31.590075, 35.730473>,  <43.042957, 30.962938, 35.485020>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.742790, 31.590075, 35.730473> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.686790, 31.340965, 36.038383>,  <42.653191, 31.191500, 36.223129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.686790, 31.340965, 36.038383>,  <42.742790, 31.590075, 35.730473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.686790, 31.340965, 36.038383> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130472, 0.759047, 0.637828,
		-0.981517, 0.189732, -0.025015,
		-0.140004, -0.622775, 0.769773,
		42.644791, 31.154133, 36.269314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.319511, 31.978930, 36.247169>,  <42.742790, 31.590075, 35.730473>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.319511, 31.978930, 36.247169> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.481770, 31.698673, 36.481964>,  <42.579124, 31.530519, 36.622841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.481770, 31.698673, 36.481964>,  <42.319511, 31.978930, 36.247169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.481770, 31.698673, 36.481964> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231194, 0.699965, 0.675721,
		-0.884307, -0.138397, 0.445923,
		0.405648, -0.700640, 0.586987,
		42.603462, 31.488482, 36.658062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.937363, 32.038582, 36.790638>,  <42.319511, 31.978930, 36.247169>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.937363, 32.038582, 36.790638> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.280869, 31.867361, 36.903282>,  <42.486973, 31.764629, 36.970867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.280869, 31.867361, 36.903282>,  <41.937363, 32.038582, 36.790638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.280869, 31.867361, 36.903282> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200568, 0.786586, 0.583999,
		-0.471489, -0.445034, 0.761343,
		0.858761, -0.428050, 0.281607,
		42.538498, 31.738947, 36.987762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.921734, 32.171917, 37.516647>,  <41.937363, 32.038582, 36.790638>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.921734, 32.171917, 37.516647> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.300396, 32.063530, 37.446873>,  <42.527592, 31.998497, 37.405010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.300396, 32.063530, 37.446873>,  <41.921734, 32.171917, 37.516647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.300396, 32.063530, 37.446873> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310961, 0.626002, 0.715139,
		-0.084584, -0.731230, 0.676867,
		0.946651, -0.270969, -0.174435,
		42.584393, 31.982239, 37.394543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.190880, 31.943424, 38.170734>,  <41.921734, 32.171917, 37.516647>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.190880, 31.943424, 38.170734> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.499577, 32.049641, 37.939598>,  <42.684795, 32.113373, 37.800915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.499577, 32.049641, 37.939598>,  <42.190880, 31.943424, 38.170734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.499577, 32.049641, 37.939598> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198787, 0.762381, 0.615840,
		0.604067, -0.590138, 0.535576,
		0.771743, 0.265543, -0.577841,
		42.731098, 32.129303, 37.766247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.862923, 32.029964, 38.603447>,  <42.190880, 31.943424, 38.170734>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.862923, 32.029964, 38.603447> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.911263, 32.250992, 38.273582>,  <42.940266, 32.383610, 38.075665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.911263, 32.250992, 38.273582>,  <42.862923, 32.029964, 38.603447>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.911263, 32.250992, 38.273582> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213641, 0.796802, 0.565212,
		0.969408, -0.244488, -0.021756,
		0.120852, 0.552569, -0.824659,
		42.947517, 32.416763, 38.026184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.459576, 32.475761, 38.763214>,  <42.862923, 32.029964, 38.603447>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.459576, 32.475761, 38.763214> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.311367, 32.663658, 38.442699>,  <43.222443, 32.776398, 38.250393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.311367, 32.663658, 38.442699>,  <43.459576, 32.475761, 38.763214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.311367, 32.663658, 38.442699> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500862, 0.827560, 0.253540,
		0.782207, -0.307389, -0.541908,
		-0.370526, 0.469742, -0.801282,
		43.200211, 32.804581, 38.202316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.003891, 32.910015, 38.482201>,  <43.459576, 32.475761, 38.763214>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.003891, 32.910015, 38.482201> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.661903, 33.054653, 38.333454>,  <43.456711, 33.141438, 38.244205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.661903, 33.054653, 38.333454>,  <44.003891, 32.910015, 38.482201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.661903, 33.054653, 38.333454> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273335, 0.923403, 0.269472,
		0.440818, 0.128747, -0.888315,
		-0.854967, 0.361595, -0.371862,
		43.405415, 33.163132, 38.221897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.147099, 33.526039, 38.003696>,  <44.003891, 32.910015, 38.482201>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.147099, 33.526039, 38.003696> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.772713, 33.542900, 38.143524>,  <43.548080, 33.553017, 38.227421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.772713, 33.542900, 38.143524>,  <44.147099, 33.526039, 38.003696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.772713, 33.542900, 38.143524> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201832, 0.877739, 0.434555,
		-0.288512, 0.477281, -0.830038,
		-0.935962, 0.042154, 0.349569,
		43.491924, 33.555546, 38.248394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.798927, 34.074463, 37.714458>,  <44.147099, 33.526039, 38.003696>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.798927, 34.074463, 37.714458> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.698238, 33.951469, 38.081520>,  <43.637825, 33.877674, 38.301758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.698238, 33.951469, 38.081520>,  <43.798927, 34.074463, 37.714458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.698238, 33.951469, 38.081520> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135059, 0.927748, 0.347913,
		-0.958329, 0.211516, -0.192009,
		-0.251725, -0.307482, 0.917654,
		43.622723, 33.859226, 38.356815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.124065, 33.812954, 37.033314>,  <43.798927, 34.074463, 37.714458>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.124065, 33.812954, 37.033314> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.499134, 33.919956, 36.944584>,  <44.724174, 33.984158, 36.891346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.499134, 33.919956, 36.944584>,  <44.124065, 33.812954, 37.033314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.499134, 33.919956, 36.944584> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219226, -0.039933, -0.974857,
		-0.269640, 0.962728, 0.021201,
		0.937675, 0.267508, -0.221823,
		44.780437, 34.000210, 36.878036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.334957, 34.499111, 36.766586>,  <44.124065, 33.812954, 37.033314>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.334957, 34.499111, 36.766586> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.567986, 34.212078, 36.613911>,  <44.707802, 34.039860, 36.522305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.567986, 34.212078, 36.613911>,  <44.334957, 34.499111, 36.766586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.567986, 34.212078, 36.613911> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456423, 0.099748, -0.884154,
		0.672527, 0.689292, -0.269412,
		0.582567, -0.717584, -0.381693,
		44.742756, 33.996803, 36.499401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.727810, 34.726440, 36.072441>,  <44.334957, 34.499111, 36.766586>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.727810, 34.726440, 36.072441> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.681274, 34.329498, 36.088882>,  <44.653355, 34.091331, 36.098747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.681274, 34.329498, 36.088882>,  <44.727810, 34.726440, 36.072441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.681274, 34.329498, 36.088882> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302165, -0.004061, -0.953247,
		0.946130, -0.123315, -0.299383,
		-0.116334, -0.992359, 0.041104,
		44.646374, 34.031792, 36.101215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.879417, 34.600613, 35.464134>,  <44.727810, 34.726440, 36.072441>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.879417, 34.600613, 35.464134> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.718391, 34.244888, 35.550919>,  <44.621777, 34.031452, 35.602989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.718391, 34.244888, 35.550919>,  <44.879417, 34.600613, 35.464134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.718391, 34.244888, 35.550919> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519186, 0.026609, -0.854247,
		0.753917, -0.456530, -0.472429,
		-0.402560, -0.889310, 0.216964,
		44.597622, 33.978096, 35.616009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.043190, 34.232742, 34.754383>,  <44.879417, 34.600613, 35.464134>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.043190, 34.232742, 34.754383> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.756020, 34.036388, 34.951809>,  <44.583717, 33.918575, 35.070267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.756020, 34.036388, 34.951809>,  <45.043190, 34.232742, 34.754383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.756020, 34.036388, 34.951809> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418661, -0.261985, -0.869532,
		0.556152, -0.830898, -0.017430,
		-0.717926, -0.490890, 0.493568,
		44.540642, 33.889122, 35.099880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.110588, 33.461533, 34.480934>,  <45.043190, 34.232742, 34.754383>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.110588, 33.461533, 34.480934> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.758266, 33.541794, 34.652481>,  <44.546875, 33.589951, 34.755409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.758266, 33.541794, 34.652481>,  <45.110588, 33.461533, 34.480934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.758266, 33.541794, 34.652481> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467134, -0.516106, -0.717927,
		0.077286, -0.832690, 0.548320,
		-0.880802, 0.200653, 0.428866,
		44.494026, 33.601990, 34.781139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.608265, 32.782578, 34.485870>,  <45.110588, 33.461533, 34.480934>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.608265, 32.782578, 34.485870> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.352570, 33.084629, 34.544037>,  <44.199150, 33.265862, 34.578938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.352570, 33.084629, 34.544037>,  <44.608265, 32.782578, 34.485870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.352570, 33.084629, 34.544037> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659545, -0.441122, -0.608614,
		-0.395436, -0.484961, 0.780027,
		-0.639242, 0.755131, 0.145418,
		44.160797, 33.311169, 34.587662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.023403, 32.427681, 34.671894>,  <44.608265, 32.782578, 34.485870>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.023403, 32.427681, 34.671894> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.912460, 32.786137, 34.533329>,  <43.845894, 33.001209, 34.450191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.912460, 32.786137, 34.533329>,  <44.023403, 32.427681, 34.671894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.912460, 32.786137, 34.533329> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683068, -0.437484, -0.584830,
		-0.675641, 0.074416, 0.733466,
		-0.277359, 0.896141, -0.346414,
		43.829254, 33.054977, 34.429405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.346588, 32.494949, 34.751049>,  <44.023403, 32.427681, 34.671894>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.346588, 32.494949, 34.751049> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.423820, 32.753872, 34.456100>,  <43.470161, 32.909225, 34.279133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.423820, 32.753872, 34.456100>,  <43.346588, 32.494949, 34.751049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.423820, 32.753872, 34.456100> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713903, -0.422862, -0.558149,
		-0.673098, 0.634180, 0.380466,
		0.193082, 0.647305, -0.737371,
		43.481747, 32.948063, 34.234890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.675655, 32.781086, 34.576511>,  <43.346588, 32.494949, 34.751049>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.675655, 32.781086, 34.576511> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.918995, 32.849445, 34.266491>,  <43.064999, 32.890461, 34.080479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.918995, 32.849445, 34.266491>,  <42.675655, 32.781086, 34.576511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.918995, 32.849445, 34.266491> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625694, -0.497513, -0.600822,
		-0.488278, 0.850455, -0.195731,
		0.608351, 0.170900, -0.775050,
		43.101501, 32.900715, 34.033978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.192719, 33.010193, 34.098495>,  <42.675655, 32.781086, 34.576511>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.192719, 33.010193, 34.098495> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.521168, 32.889969, 33.904415>,  <42.718239, 32.817833, 33.787968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.521168, 32.889969, 33.904415>,  <42.192719, 33.010193, 34.098495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.521168, 32.889969, 33.904415> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570631, -0.415158, -0.708537,
		0.011524, 0.858666, -0.512406,
		0.821126, -0.300559, -0.485197,
		42.767506, 32.799801, 33.758858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.015503, 33.049889, 33.360897>,  <42.192719, 33.010193, 34.098495>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.015503, 33.049889, 33.360897> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.335884, 32.810432, 33.365013>,  <42.528114, 32.666759, 33.367481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.335884, 32.810432, 33.365013>,  <42.015503, 33.049889, 33.360897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.335884, 32.810432, 33.365013> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347990, -0.479443, -0.805629,
		0.487212, 0.641692, -0.592332,
		0.800954, -0.598637, 0.010288,
		42.576172, 32.630840, 33.368099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.156239, 33.045155, 32.742809>,  <42.015503, 33.049889, 33.360897>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.156239, 33.045155, 32.742809> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.382061, 32.744305, 32.878799>,  <42.517555, 32.563793, 32.960396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.382061, 32.744305, 32.878799>,  <42.156239, 33.045155, 32.742809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.382061, 32.744305, 32.878799> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211978, -0.530201, -0.820946,
		0.797711, 0.391400, -0.458762,
		0.564555, -0.752125, 0.339979,
		42.551426, 32.518665, 32.980793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.615601, 32.832306, 32.171818>,  <42.156239, 33.045155, 32.742809>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.615601, 32.832306, 32.171818> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.602406, 32.517269, 32.417946>,  <42.594486, 32.328247, 32.565620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.602406, 32.517269, 32.417946>,  <42.615601, 32.832306, 32.171818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.602406, 32.517269, 32.417946> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261148, -0.587472, -0.765949,
		0.964735, -0.185958, -0.186296,
		-0.032990, -0.787589, 0.615317,
		42.592510, 32.280991, 32.602543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.800400, 32.347980, 31.697287>,  <42.615601, 32.832306, 32.171818>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.800400, 32.347980, 31.697287> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.664875, 32.147247, 32.015625>,  <42.583561, 32.026806, 32.206627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.664875, 32.147247, 32.015625>,  <42.800400, 32.347980, 31.697287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.664875, 32.147247, 32.015625> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292444, -0.747806, -0.596040,
		0.894250, -0.434685, 0.106608,
		-0.338811, -0.501832, 0.795847,
		42.563232, 31.996698, 32.254379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.078606, 31.672037, 31.773214>,  <42.800400, 32.347980, 31.697287>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.078606, 31.672037, 31.773214> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.737663, 31.623491, 31.976686>,  <42.533096, 31.594364, 32.098770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.737663, 31.623491, 31.976686>,  <43.078606, 31.672037, 31.773214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.737663, 31.623491, 31.976686> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270893, -0.729564, -0.627976,
		0.447329, -0.673058, 0.588973,
		-0.852357, -0.121363, 0.508682,
		42.481956, 31.587082, 32.129292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.994507, 30.963043, 32.073425>,  <43.078606, 31.672037, 31.773214>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.994507, 30.963043, 32.073425> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.638340, 31.125523, 31.991293>,  <42.424641, 31.223011, 31.942013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.638340, 31.125523, 31.991293>,  <42.994507, 30.963043, 32.073425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.638340, 31.125523, 31.991293> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211012, -0.768136, -0.604517,
		-0.403277, -0.494945, 0.769674,
		-0.890417, 0.406198, -0.205332,
		42.371216, 31.247383, 31.929693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.607761, 30.418621, 31.701164>,  <42.994507, 30.963043, 32.073425>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.607761, 30.418621, 31.701164> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.327602, 30.704039, 31.708126>,  <42.159508, 30.875290, 31.712303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.327602, 30.704039, 31.708126>,  <42.607761, 30.418621, 31.701164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.327602, 30.704039, 31.708126> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493799, -0.466804, -0.733660,
		-0.515377, -0.522443, 0.679294,
		-0.700392, 0.713546, 0.017402,
		42.117485, 30.918102, 31.713348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.877186, 30.163416, 31.673048>,  <42.607761, 30.418621, 31.701164>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.877186, 30.163416, 31.673048> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.864223, 30.530783, 31.515335>,  <41.856445, 30.751204, 31.420708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.864223, 30.530783, 31.515335>,  <41.877186, 30.163416, 31.673048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.864223, 30.530783, 31.515335> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414014, -0.371391, -0.831061,
		-0.909694, 0.136307, 0.392273,
		-0.032407, 0.918417, -0.394285,
		41.854500, 30.806307, 31.397049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.269218, 30.206896, 31.417253>,  <41.877186, 30.163416, 31.673048>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.269218, 30.206896, 31.417253> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.496387, 30.469212, 31.218296>,  <41.632690, 30.626602, 31.098923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.496387, 30.469212, 31.218296>,  <41.269218, 30.206896, 31.417253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.496387, 30.469212, 31.218296> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324952, -0.376571, -0.867525,
		-0.756219, 0.654318, -0.000764,
		0.567925, 0.655791, -0.497392,
		41.666763, 30.665949, 31.069078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.434994, 40.735298, 43.496002> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.096264, 40.574772, 43.635620>,  <39.893024, 40.478455, 43.719391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.096264, 40.574772, 43.635620>,  <40.434994, 40.735298, 43.496002>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.096264, 40.574772, 43.635620> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227173, -0.320471, -0.919615,
		0.480914, -0.858047, 0.180215,
		-0.846826, -0.401315, 0.349044,
		39.842216, 40.454376, 43.740334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.380257, 39.988655, 43.139011>,  <40.434994, 40.735298, 43.496002>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.380257, 39.988655, 43.139011> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.028324, 40.140385, 43.253567>,  <39.817165, 40.231422, 43.322300>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.028324, 40.140385, 43.253567>,  <40.380257, 39.988655, 43.139011>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.028324, 40.140385, 43.253567> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420479, -0.340300, -0.841067,
		-0.221574, -0.860416, 0.458901,
		-0.879830, 0.379317, 0.286385,
		39.764374, 40.254181, 43.339481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.816536, 39.425861, 43.085964>,  <40.380257, 39.988655, 43.139011>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.816536, 39.425861, 43.085964> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.649223, 39.787285, 43.048820>,  <39.548836, 40.004139, 43.026535>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.649223, 39.787285, 43.048820>,  <39.816536, 39.425861, 43.085964>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.649223, 39.787285, 43.048820> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357747, -0.257850, -0.897513,
		-0.834902, -0.342188, 0.431099,
		-0.418278, 0.903560, -0.092863,
		39.523739, 40.058353, 43.020962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.170254, 39.252659, 42.733936>,  <39.816536, 39.425861, 43.085964>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.170254, 39.252659, 42.733936> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.134090, 39.648243, 42.686974>,  <39.112392, 39.885593, 42.658794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.134090, 39.648243, 42.686974>,  <39.170254, 39.252659, 42.733936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.134090, 39.648243, 42.686974> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498645, -0.147000, -0.854251,
		-0.862079, -0.018682, 0.506429,
		-0.090404, 0.988960, -0.117410,
		39.106968, 39.944931, 42.651752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.439842, 39.396812, 42.543457>,  <39.170254, 39.252659, 42.733936>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.439842, 39.396812, 42.543457> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.660942, 39.707378, 42.422367>,  <38.793602, 39.893719, 42.349712>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.660942, 39.707378, 42.422367>,  <38.439842, 39.396812, 42.543457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.660942, 39.707378, 42.422367> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511450, 0.029265, -0.858815,
		-0.657938, 0.629542, 0.413274,
		0.552754, 0.776415, -0.302724,
		38.826767, 39.940304, 42.331551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.030563, 39.942944, 42.213268>,  <38.439842, 39.396812, 42.543457>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.030563, 39.942944, 42.213268> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.405823, 40.020580, 42.098579>,  <38.630978, 40.067162, 42.029766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.405823, 40.020580, 42.098579>,  <38.030563, 39.942944, 42.213268>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.405823, 40.020580, 42.098579> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308552, 0.092974, -0.946653,
		-0.157081, 0.976567, 0.147111,
		0.938148, 0.194092, -0.286718,
		38.687267, 40.078808, 42.012566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.955555, 40.371223, 41.687107>,  <38.030563, 39.942944, 42.213268>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.955555, 40.371223, 41.687107> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.339046, 40.284634, 41.613369>,  <38.569141, 40.232681, 41.569126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.339046, 40.284634, 41.613369>,  <37.955555, 40.371223, 41.687107>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.339046, 40.284634, 41.613369> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204266, -0.073398, -0.976160,
		0.197784, 0.973525, -0.114587,
		0.958727, -0.216475, -0.184341,
		38.626663, 40.219692, 41.558067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.146854, 40.720146, 41.077927>,  <37.955555, 40.371223, 41.687107>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.146854, 40.720146, 41.077927> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.426868, 40.435001, 41.094803>,  <38.594875, 40.263916, 41.104927>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.426868, 40.435001, 41.094803>,  <38.146854, 40.720146, 41.077927>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.426868, 40.435001, 41.094803> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002400, -0.056733, -0.998386,
		0.714106, 0.699005, -0.038005,
		0.700034, -0.712862, 0.042191,
		38.636879, 40.221142, 41.107460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.598167, 40.916901, 40.679512>,  <38.146854, 40.720146, 41.077927>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.598167, 40.916901, 40.679512> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.651360, 40.520859, 40.697460>,  <38.683277, 40.283234, 40.708229>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.651360, 40.520859, 40.697460>,  <38.598167, 40.916901, 40.679512>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.651360, 40.520859, 40.697460> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117668, -0.029184, -0.992624,
		0.984108, 0.137284, 0.112622,
		0.132985, -0.990102, 0.044874,
		38.691254, 40.223827, 40.710922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.185680, 40.759266, 40.274914>,  <38.598167, 40.916901, 40.679512>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.185680, 40.759266, 40.274914> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.007809, 40.403305, 40.315567>,  <38.901085, 40.189728, 40.339958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.007809, 40.403305, 40.315567>,  <39.185680, 40.759266, 40.274914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.007809, 40.403305, 40.315567> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091211, -0.157868, -0.983239,
		0.891033, -0.427957, 0.151369,
		-0.444680, -0.889905, 0.101631,
		38.874405, 40.136333, 40.346058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.574100, 40.458229, 39.894424>,  <39.185680, 40.759266, 40.274914>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.574100, 40.458229, 39.894424> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.236855, 40.243141, 39.893150>,  <39.034508, 40.114086, 39.892387>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.236855, 40.243141, 39.893150>,  <39.574100, 40.458229, 39.894424>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.236855, 40.243141, 39.893150> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034900, -0.048807, -0.998198,
		0.536599, -0.841707, 0.059917,
		-0.843115, -0.537724, -0.003186,
		38.983921, 40.081825, 39.892193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.659241, 40.016895, 39.385216>,  <39.574100, 40.458229, 39.894424>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.659241, 40.016895, 39.385216> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.261871, 40.029972, 39.429104>,  <39.023449, 40.037819, 39.455437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.261871, 40.029972, 39.429104>,  <39.659241, 40.016895, 39.385216>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.261871, 40.029972, 39.429104> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113053, -0.128746, -0.985213,
		-0.018080, -0.991139, 0.131595,
		-0.993425, 0.032690, 0.109724,
		38.963844, 40.039780, 39.462021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.289875, 39.392235, 39.240154>,  <39.659241, 40.016895, 39.385216>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.289875, 39.392235, 39.240154> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.115135, 39.736595, 39.135845>,  <39.010292, 39.943211, 39.073257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.115135, 39.736595, 39.135845>,  <39.289875, 39.392235, 39.240154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.115135, 39.736595, 39.135845> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083395, -0.327413, -0.941194,
		-0.895659, -0.389415, 0.214826,
		-0.436852, 0.860905, -0.260775,
		38.984081, 39.994865, 39.057613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.365448, 38.566170, 39.091961>,  <39.289875, 39.392235, 39.240154>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.365448, 38.566170, 39.091961> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.320812, 38.551853, 39.489204>,  <39.294029, 38.543262, 39.727551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.320812, 38.551853, 39.489204>,  <39.365448, 38.566170, 39.091961>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.320812, 38.551853, 39.489204> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599722, -0.794427, -0.096018,
		0.792389, -0.606305, 0.067183,
		-0.111588, -0.035793, 0.993110,
		39.287334, 38.541115, 39.787136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.626751, 38.027447, 39.602013>,  <39.365448, 38.566170, 39.091961>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.626751, 38.027447, 39.602013> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.829514, 37.689865, 39.672207>,  <39.951172, 37.487316, 39.714325>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.829514, 37.689865, 39.672207>,  <39.626751, 38.027447, 39.602013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.829514, 37.689865, 39.672207> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680198, -0.266563, 0.682844,
		-0.529508, -0.465501, -0.709175,
		0.506905, -0.843951, 0.175485,
		39.981586, 37.436680, 39.724854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.137249, 37.589073, 39.690754>,  <39.626751, 38.027447, 39.602013>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.137249, 37.589073, 39.690754> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.457340, 37.416866, 39.857750>,  <39.649395, 37.313541, 39.957947>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.457340, 37.416866, 39.857750>,  <39.137249, 37.589073, 39.690754>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.457340, 37.416866, 39.857750> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596796, -0.503288, 0.624929,
		-0.058924, -0.749240, -0.659673,
		0.800227, -0.430513, 0.417488,
		39.697407, 37.287712, 39.982998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.091381, 36.874096, 39.605598>,  <39.137249, 37.589073, 39.690754>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.091381, 36.874096, 39.605598> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.293869, 36.993233, 39.929337>,  <39.415359, 37.064716, 40.123577>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.293869, 36.993233, 39.929337>,  <39.091381, 36.874096, 39.605598>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.293869, 36.993233, 39.929337> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708475, -0.391489, 0.587196,
		0.491740, -0.870647, 0.012836,
		0.506216, 0.297842, 0.809343,
		39.445732, 37.082584, 40.172138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.933773, 36.328911, 40.114868>,  <39.091381, 36.874096, 39.605598>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.933773, 36.328911, 40.114868> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.095161, 36.628777, 40.324711>,  <39.191994, 36.808697, 40.450615>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.095161, 36.628777, 40.324711>,  <38.933773, 36.328911, 40.114868>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.095161, 36.628777, 40.324711> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596068, -0.219650, 0.772306,
		0.694203, -0.624302, 0.358231,
		0.403466, 0.749667, 0.524608,
		39.216202, 36.853676, 40.482094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.900051, 35.963554, 40.752201>,  <38.933773, 36.328911, 40.114868>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.900051, 35.963554, 40.752201> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.975285, 36.349506, 40.825562>,  <39.020424, 36.581078, 40.869579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.975285, 36.349506, 40.825562>,  <38.900051, 35.963554, 40.752201>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.975285, 36.349506, 40.825562> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339532, -0.111348, 0.933980,
		0.921598, -0.237936, 0.306664,
		0.188081, 0.964877, 0.183405,
		39.031708, 36.638969, 40.880585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.390324, 36.069195, 41.384644>,  <38.900051, 35.963554, 40.752201>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.390324, 36.069195, 41.384644> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.165707, 36.396210, 41.333565>,  <39.030937, 36.592419, 41.302917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.165707, 36.396210, 41.333565>,  <39.390324, 36.069195, 41.384644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.165707, 36.396210, 41.333565> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267320, -0.033194, 0.963036,
		0.783076, 0.574923, 0.237183,
		-0.561544, 0.817534, -0.127695,
		38.997242, 36.641472, 41.295258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.556721, 36.445633, 41.958771>,  <39.390324, 36.069195, 41.384644>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.556721, 36.445633, 41.958771> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.214180, 36.591763, 41.812790>,  <39.008656, 36.679440, 41.725201>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.214180, 36.591763, 41.812790>,  <39.556721, 36.445633, 41.958771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.214180, 36.591763, 41.812790> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403534, -0.032458, 0.914389,
		0.322204, 0.930314, 0.175217,
		-0.856356, 0.365325, -0.364955,
		38.957272, 36.701359, 41.703304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.396580, 36.875267, 42.435192>,  <39.556721, 36.445633, 41.958771>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.396580, 36.875267, 42.435192> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.044895, 36.803905, 42.258488>,  <38.833885, 36.761089, 42.152466>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.044895, 36.803905, 42.258488>,  <39.396580, 36.875267, 42.435192>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.044895, 36.803905, 42.258488> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457728, 0.059101, 0.887126,
		-0.132160, 0.982180, -0.133625,
		-0.879215, -0.178407, -0.441761,
		38.781132, 36.750385, 42.125961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.889706, 37.291100, 42.838654>,  <39.396580, 36.875267, 42.435192>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.889706, 37.291100, 42.838654> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.659027, 37.028664, 42.643936>,  <38.520618, 36.871204, 42.527103>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.659027, 37.028664, 42.643936>,  <38.889706, 37.291100, 42.838654>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.659027, 37.028664, 42.643936> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552313, -0.125950, 0.824067,
		-0.601971, 0.744102, -0.289729,
		-0.576699, -0.656086, -0.486795,
		38.486019, 36.831837, 42.497898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.289524, 37.564312, 42.904598>,  <38.889706, 37.291100, 42.838654>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.289524, 37.564312, 42.904598> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.244110, 37.170013, 42.854931>,  <38.216862, 36.933434, 42.825130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.244110, 37.170013, 42.854931>,  <38.289524, 37.564312, 42.904598>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.244110, 37.170013, 42.854931> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355565, -0.076387, 0.931525,
		-0.927730, 0.149911, -0.341824,
		-0.113535, -0.985744, -0.124170,
		38.210049, 36.874290, 42.817680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.605213, 37.450726, 43.147472>,  <38.289524, 37.564312, 42.904598>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.605213, 37.450726, 43.147472> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.785992, 37.094090, 43.158859>,  <37.894459, 36.880108, 43.165691>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.785992, 37.094090, 43.158859>,  <37.605213, 37.450726, 43.147472>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.785992, 37.094090, 43.158859> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414674, -0.181728, 0.891639,
		-0.789802, -0.414781, -0.451851,
		0.451948, -0.891589, 0.028469,
		37.921577, 36.826614, 43.167400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.061569, 36.968323, 43.337479>,  <37.605213, 37.450726, 43.147472>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.061569, 36.968323, 43.337479> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.387608, 36.753075, 43.423309>,  <37.583233, 36.623928, 43.474808>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.387608, 36.753075, 43.423309>,  <37.061569, 36.968323, 43.337479>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.387608, 36.753075, 43.423309> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347280, -0.157399, 0.924458,
		-0.463692, -0.828043, -0.315173,
		0.815099, -0.538117, 0.214578,
		37.632137, 36.591640, 43.487682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.867241, 36.306362, 43.513454>,  <37.061569, 36.968323, 43.337479>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.867241, 36.306362, 43.513454> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.231525, 36.359169, 43.670002>,  <37.450096, 36.390854, 43.763931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.231525, 36.359169, 43.670002>,  <36.867241, 36.306362, 43.513454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.231525, 36.359169, 43.670002> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372808, -0.145172, 0.916482,
		0.177809, -0.980559, -0.082993,
		0.910713, 0.132018, 0.391373,
		37.504738, 36.398773, 43.787415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.843708, 35.820618, 44.185928>,  <36.867241, 36.306362, 43.513454>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.843708, 35.820618, 44.185928> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.145039, 36.080288, 44.228012>,  <37.325836, 36.236088, 44.253262>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.145039, 36.080288, 44.228012>,  <36.843708, 35.820618, 44.185928>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.145039, 36.080288, 44.228012> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195572, 0.068394, 0.978302,
		0.627890, -0.757560, 0.178483,
		0.753330, 0.649172, 0.105213,
		37.371037, 36.275040, 44.259575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.618664, 35.040501, 44.279709>,  <36.843708, 35.820618, 44.185928>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.618664, 35.040501, 44.279709> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.226391, 35.056992, 44.203217>,  <35.991028, 35.066887, 44.157322>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.226391, 35.056992, 44.203217>,  <36.618664, 35.040501, 44.279709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.226391, 35.056992, 44.203217> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195627, 0.206991, -0.958585,
		0.000063, -0.977474, -0.211057,
		-0.980678, 0.041228, -0.191234,
		35.932186, 35.069359, 44.145847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.659447, 34.780025, 43.599102>,  <36.618664, 35.040501, 44.279709>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.659447, 34.780025, 43.599102> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.303371, 34.959988, 43.627811>,  <36.089725, 35.067966, 43.645039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.303371, 34.959988, 43.627811>,  <36.659447, 34.780025, 43.599102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.303371, 34.959988, 43.627811> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122710, 0.388493, -0.913244,
		-0.438760, -0.804150, -0.401039,
		-0.890187, 0.449907, 0.071778,
		36.036316, 35.094959, 43.649345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.438789, 34.583588, 42.972542>,  <36.659447, 34.780025, 43.599102>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.438789, 34.583588, 42.972542> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.201130, 34.877338, 43.103794>,  <36.058533, 35.053589, 43.182545>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.201130, 34.877338, 43.103794>,  <36.438789, 34.583588, 42.972542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.201130, 34.877338, 43.103794> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206852, 0.254721, -0.944632,
		-0.777303, -0.629127, 0.000566,
		-0.594149, 0.734382, 0.328132,
		36.022884, 35.097652, 43.202232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.816616, 34.521042, 42.656017>,  <36.438789, 34.583588, 42.972542>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.816616, 34.521042, 42.656017> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.842808, 34.911476, 42.738926>,  <35.858521, 35.145737, 42.788670>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.842808, 34.911476, 42.738926>,  <35.816616, 34.521042, 42.656017>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.842808, 34.911476, 42.738926> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091440, 0.212710, -0.972827,
		-0.993656, 0.044743, 0.103181,
		0.065475, 0.976090, 0.207269,
		35.862450, 35.204304, 42.801105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.380756, 34.832417, 42.257179>,  <35.816616, 34.521042, 42.656017>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.380756, 34.832417, 42.257179> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.600315, 35.153809, 42.349384>,  <35.732052, 35.346642, 42.404705>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.600315, 35.153809, 42.349384>,  <35.380756, 34.832417, 42.257179>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.600315, 35.153809, 42.349384> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078493, 0.324092, -0.942764,
		-0.832196, 0.499387, 0.240961,
		0.548898, 0.803478, 0.230510,
		35.764984, 35.394852, 42.418537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.049507, 35.516960, 42.124046>,  <35.380756, 34.832417, 42.257179>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.049507, 35.516960, 42.124046> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.445873, 35.567520, 42.105644>,  <35.683693, 35.597858, 42.094601>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.445873, 35.567520, 42.105644>,  <35.049507, 35.516960, 42.124046>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.445873, 35.567520, 42.105644> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089465, 0.363871, -0.927143,
		-0.100453, 0.922833, 0.371873,
		0.990911, 0.126404, -0.046009,
		35.743145, 35.605442, 42.091843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.121403, 36.059353, 41.774719>,  <35.049507, 35.516960, 42.124046>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.121403, 36.059353, 41.774719> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.503128, 35.941238, 41.756413>,  <35.732162, 35.870369, 41.745426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.503128, 35.941238, 41.756413>,  <35.121403, 36.059353, 41.774719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.503128, 35.941238, 41.756413> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052061, 0.315139, -0.947617,
		0.294240, 0.901940, 0.316113,
		0.954313, -0.295284, -0.045771,
		35.789421, 35.852654, 41.742680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.452377, 36.604362, 41.369892>,  <35.121403, 36.059353, 41.774719>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.452377, 36.604362, 41.369892> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.703777, 36.293354, 41.361446>,  <35.854618, 36.106750, 41.356380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.703777, 36.293354, 41.361446>,  <35.452377, 36.604362, 41.369892>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.703777, 36.293354, 41.361446> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154562, 0.151448, -0.976306,
		0.762295, 0.610350, 0.215360,
		0.628504, -0.777520, -0.021112,
		35.892330, 36.060097, 41.355114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.023735, 36.823780, 40.894348>,  <35.452377, 36.604362, 41.369892>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.023735, 36.823780, 40.894348> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.986568, 36.426559, 40.923260>,  <35.964268, 36.188229, 40.940605>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.986568, 36.426559, 40.923260>,  <36.023735, 36.823780, 40.894348>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.986568, 36.426559, 40.923260> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069690, -0.078899, -0.994444,
		0.993232, -0.087362, 0.076536,
		-0.092915, -0.993047, 0.072277,
		35.958694, 36.128647, 40.944942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.539543, 36.625248, 40.511333>,  <36.023735, 36.823780, 40.894348>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.539543, 36.625248, 40.511333> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.274597, 36.326561, 40.535606>,  <36.115627, 36.147350, 40.550171>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.274597, 36.326561, 40.535606>,  <36.539543, 36.625248, 40.511333>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.274597, 36.326561, 40.535606> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058712, -0.029008, -0.997853,
		0.746875, -0.664509, -0.024627,
		-0.662368, -0.746717, 0.060680,
		36.075886, 36.102547, 40.553810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.716984, 36.099251, 39.969608>,  <36.539543, 36.625248, 40.511333>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.716984, 36.099251, 39.969608> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.335850, 36.039352, 40.075203>,  <36.107170, 36.003414, 40.138561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.335850, 36.039352, 40.075203>,  <36.716984, 36.099251, 39.969608>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.335850, 36.039352, 40.075203> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267869, 0.006002, -0.963437,
		0.142689, -0.988706, -0.045832,
		-0.952830, -0.149749, 0.263987,
		36.049999, 35.994427, 40.154400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.406719, 35.749550, 39.411709>,  <36.716984, 36.099251, 39.969608>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.406719, 35.749550, 39.411709> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.098892, 35.921242, 39.600826>,  <35.914196, 36.024258, 39.714294>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.098892, 35.921242, 39.600826>,  <36.406719, 35.749550, 39.411709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.098892, 35.921242, 39.600826> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443273, 0.173865, -0.879363,
		-0.459653, -0.886302, 0.056467,
		-0.769564, 0.429232, 0.472791,
		35.868023, 36.050011, 39.742664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.778748, 33.276825, 47.368149> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.490513, 33.551304, 47.407936>,  <35.317574, 33.715992, 47.431808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.490513, 33.551304, 47.407936>,  <35.778748, 33.276825, 47.368149>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.490513, 33.551304, 47.407936> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026345, 0.116256, -0.992870,
		-0.692868, -0.718066, -0.065695,
		-0.720583, 0.686197, 0.099467,
		35.274338, 33.757164, 47.437775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.101715, 33.197781, 46.930595>,  <35.778748, 33.276825, 47.368149>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.101715, 33.197781, 46.930595> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.149361, 33.587029, 47.009434>,  <35.177948, 33.820576, 47.056736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.149361, 33.587029, 47.009434>,  <35.101715, 33.197781, 46.930595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.149361, 33.587029, 47.009434> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041171, 0.203180, -0.978275,
		-0.992027, 0.108412, 0.064266,
		0.119115, 0.973121, 0.197097,
		35.185097, 33.878963, 47.068562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.648342, 33.520947, 46.535568>,  <35.101715, 33.197781, 46.930595>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.648342, 33.520947, 46.535568> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.848457, 33.842400, 46.664497>,  <34.968529, 34.035271, 46.741856>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.848457, 33.842400, 46.664497>,  <34.648342, 33.520947, 46.535568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.848457, 33.842400, 46.664497> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020071, 0.382918, -0.923564,
		-0.865624, 0.455582, 0.207701,
		0.500292, 0.803628, 0.322319,
		34.998547, 34.083488, 46.761192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.297421, 34.173969, 46.267490>,  <34.648342, 33.520947, 46.535568>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.297421, 34.173969, 46.267490> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.683201, 34.262833, 46.324730>,  <34.914669, 34.316151, 46.359074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.683201, 34.262833, 46.324730>,  <34.297421, 34.173969, 46.267490>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.683201, 34.262833, 46.324730> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052324, 0.370244, -0.927460,
		-0.259028, 0.901978, 0.345457,
		0.964452, 0.222162, 0.143098,
		34.972538, 34.329483, 46.367661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.321545, 34.809853, 46.038277>,  <34.297421, 34.173969, 46.267490>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.321545, 34.809853, 46.038277> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.700134, 34.680752, 46.036777>,  <34.927288, 34.603291, 46.035877>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.700134, 34.680752, 46.036777>,  <34.321545, 34.809853, 46.038277>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.700134, 34.680752, 46.036777> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148391, 0.445427, -0.882936,
		0.286640, 0.835121, 0.469479,
		0.946477, -0.322751, -0.003752,
		34.984077, 34.583927, 46.035652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.670189, 35.417866, 45.772339>,  <34.321545, 34.809853, 46.038277>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.670189, 35.417866, 45.772339> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.939423, 35.125313, 45.728458>,  <35.100964, 34.949780, 45.702129>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.939423, 35.125313, 45.728458>,  <34.670189, 35.417866, 45.772339>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.939423, 35.125313, 45.728458> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311599, 0.414971, -0.854813,
		0.670717, 0.541181, 0.507210,
		0.673085, -0.731384, -0.109697,
		35.141350, 34.905899, 45.695549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.419083, 35.644024, 45.741089>,  <34.670189, 35.417866, 45.772339>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.419083, 35.644024, 45.741089> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.378212, 35.302452, 45.536987>,  <35.353691, 35.097507, 45.414524>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.378212, 35.302452, 45.536987>,  <35.419083, 35.644024, 45.741089>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.378212, 35.302452, 45.536987> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513491, 0.394047, -0.762269,
		0.851990, -0.339897, 0.398224,
		-0.102173, -0.853930, -0.510258,
		35.347561, 35.046272, 45.383911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.829006, 35.742714, 45.194454>,  <35.419083, 35.644024, 45.741089>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.829006, 35.742714, 45.194454> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.685558, 35.395020, 45.058323>,  <35.599487, 35.186405, 44.976643>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.685558, 35.395020, 45.058323>,  <35.829006, 35.742714, 45.194454>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.685558, 35.395020, 45.058323> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187052, 0.290269, -0.938485,
		0.914550, -0.400221, 0.058495,
		-0.358622, -0.869233, -0.340328,
		35.577972, 35.134251, 44.956226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.297306, 35.545383, 44.788765>,  <35.829006, 35.742714, 45.194454>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.297306, 35.545383, 44.788765> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.983486, 35.318573, 44.688400>,  <35.795193, 35.182487, 44.628181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.983486, 35.318573, 44.688400>,  <36.297306, 35.545383, 44.788765>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.983486, 35.318573, 44.688400> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178110, 0.181522, -0.967123,
		0.593932, -0.803448, -0.041420,
		-0.784552, -0.567028, -0.250914,
		35.748119, 35.148464, 44.613125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.098316, 35.584023, 44.802811>,  <36.297306, 35.545383, 44.788765>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.098316, 35.584023, 44.802811> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.240742, 35.957558, 44.789131>,  <37.326199, 36.181679, 44.780922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.240742, 35.957558, 44.789131>,  <37.098316, 35.584023, 44.802811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.240742, 35.957558, 44.789131> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145207, 0.091450, 0.985166,
		0.923111, -0.345815, 0.168162,
		0.356064, 0.933836, -0.034203,
		37.347561, 36.237709, 44.778870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.676380, 35.683331, 45.249390>,  <37.098316, 35.584023, 44.802811>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.676380, 35.683331, 45.249390> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.564747, 36.062603, 45.188633>,  <37.497768, 36.290165, 45.152180>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.564747, 36.062603, 45.188633>,  <37.676380, 35.683331, 45.249390>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.564747, 36.062603, 45.188633> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127208, 0.193284, 0.972862,
		0.951804, 0.252188, -0.174558,
		-0.279083, 0.948179, -0.151888,
		37.481022, 36.347057, 45.143066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.036648, 36.160084, 45.644867>,  <37.676380, 35.683331, 45.249390>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.036648, 36.160084, 45.644867> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.708191, 36.374485, 45.566460>,  <37.511116, 36.503124, 45.519417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.708191, 36.374485, 45.566460>,  <38.036648, 36.160084, 45.644867>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.708191, 36.374485, 45.566460> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047834, 0.277608, 0.959503,
		0.568713, 0.797266, -0.202317,
		-0.821144, 0.536005, -0.196016,
		37.461849, 36.535286, 45.507656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.194324, 36.777840, 46.022305>,  <38.036648, 36.160084, 45.644867>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.194324, 36.777840, 46.022305> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.803127, 36.785107, 45.939159>,  <37.568409, 36.789467, 45.889271>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.803127, 36.785107, 45.939159>,  <38.194324, 36.777840, 46.022305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.803127, 36.785107, 45.939159> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166357, 0.533420, 0.829330,
		0.125949, 0.845655, -0.518656,
		-0.977989, 0.018172, -0.207864,
		37.509731, 36.790558, 45.876801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.930241, 37.516235, 46.008114>,  <38.194324, 36.777840, 46.022305>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.930241, 37.516235, 46.008114> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.615398, 37.277767, 46.071407>,  <37.426491, 37.134686, 46.109383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.615398, 37.277767, 46.071407>,  <37.930241, 37.516235, 46.008114>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.615398, 37.277767, 46.071407> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249297, 0.542129, 0.802464,
		-0.564193, 0.592177, -0.575337,
		-0.787107, -0.596174, 0.158237,
		37.379265, 37.098915, 46.118877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.412640, 37.983219, 46.403152>,  <37.930241, 37.516235, 46.008114>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.412640, 37.983219, 46.403152> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.291428, 37.606586, 46.461945>,  <37.218700, 37.380608, 46.497219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.291428, 37.606586, 46.461945>,  <37.412640, 37.983219, 46.403152>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.291428, 37.606586, 46.461945> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374646, 0.259516, 0.890108,
		-0.876251, 0.214660, -0.431399,
		-0.303026, -0.941580, 0.146980,
		37.200520, 37.324112, 46.506039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.723637, 37.997177, 46.561508>,  <37.412640, 37.983219, 46.403152>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.723637, 37.997177, 46.561508> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.856197, 37.662094, 46.735134>,  <36.935734, 37.461044, 46.839310>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.856197, 37.662094, 46.735134>,  <36.723637, 37.997177, 46.561508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.856197, 37.662094, 46.735134> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305054, 0.340217, 0.889491,
		-0.892813, -0.427192, -0.142799,
		0.331401, -0.837711, 0.434067,
		36.955616, 37.410782, 46.865353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.228729, 37.924465, 47.176003>,  <36.723637, 37.997177, 46.561508>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.228729, 37.924465, 47.176003> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.535381, 37.681591, 47.259529>,  <36.719372, 37.535866, 47.309647>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.535381, 37.681591, 47.259529>,  <36.228729, 37.924465, 47.176003>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.535381, 37.681591, 47.259529> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051626, 0.265873, 0.962625,
		-0.640007, -0.748760, 0.172481,
		0.766632, -0.607183, 0.208816,
		36.765369, 37.499435, 47.322174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.008213, 37.474518, 47.664619>,  <36.228729, 37.924465, 47.176003>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.008213, 37.474518, 47.664619> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.404488, 37.434227, 47.701248>,  <36.642254, 37.410053, 47.723225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.404488, 37.434227, 47.701248>,  <36.008213, 37.474518, 47.664619>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.404488, 37.434227, 47.701248> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087205, 0.046969, 0.995083,
		-0.104537, -0.993804, 0.037747,
		0.990690, -0.100731, 0.091575,
		36.701694, 37.404007, 47.728722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.176579, 36.885437, 48.122864>,  <36.008213, 37.474518, 47.664619>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.176579, 36.885437, 48.122864> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.494286, 37.128223, 48.112053>,  <36.684910, 37.273895, 48.105568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.494286, 37.128223, 48.112053>,  <36.176579, 36.885437, 48.122864>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.494286, 37.128223, 48.112053> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018493, 0.020314, 0.999623,
		0.607291, -0.794465, 0.004910,
		0.794265, 0.606971, -0.027029,
		36.732567, 37.310314, 48.103943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.625309, 36.713959, 48.729607>,  <36.176579, 36.885437, 48.122864>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.625309, 36.713959, 48.729607> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.786102, 37.067886, 48.635365>,  <36.882580, 37.280243, 48.578819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.786102, 37.067886, 48.635365>,  <36.625309, 36.713959, 48.729607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.786102, 37.067886, 48.635365> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366263, 0.080445, 0.927027,
		0.839201, -0.458946, -0.291737,
		0.401987, 0.884815, -0.235605,
		36.906700, 37.333332, 48.564682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.265003, 36.668480, 49.086975>,  <36.625309, 36.713959, 48.729607>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.265003, 36.668480, 49.086975> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.174095, 37.052273, 49.020348>,  <37.119549, 37.282547, 48.980370>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.174095, 37.052273, 49.020348>,  <37.265003, 36.668480, 49.086975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.174095, 37.052273, 49.020348> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295952, 0.231007, 0.926848,
		0.927771, 0.161352, -0.336461,
		-0.227274, 0.959479, -0.166570,
		37.105911, 37.340118, 48.970375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.801197, 37.045731, 49.304878>,  <37.265003, 36.668480, 49.086975>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.801197, 37.045731, 49.304878> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.487782, 37.294197, 49.310818>,  <37.299732, 37.443279, 49.314381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.487782, 37.294197, 49.310818>,  <37.801197, 37.045731, 49.304878>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.487782, 37.294197, 49.310818> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205089, 0.235995, 0.949866,
		0.586523, 0.747299, -0.312306,
		-0.783537, 0.621168, 0.014846,
		37.252720, 37.480549, 49.315273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.104309, 37.706337, 49.551968>,  <37.801197, 37.045731, 49.304878>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.104309, 37.706337, 49.551968> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.709106, 37.748558, 49.597042>,  <37.471985, 37.773891, 49.624088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.709106, 37.748558, 49.597042>,  <38.104309, 37.706337, 49.551968>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.709106, 37.748558, 49.597042> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144171, 0.369457, 0.917995,
		0.055263, 0.923233, -0.380244,
		-0.988008, 0.105552, 0.112686,
		37.412704, 37.780224, 49.630848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.435230, 38.745869, 49.057022> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.810577, 38.624657, 49.123528>,  <33.035786, 38.551929, 49.163429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.810577, 38.624657, 49.123528>,  <32.435230, 38.745869, 49.057022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.810577, 38.624657, 49.123528> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232156, 0.196202, -0.952685,
		0.256072, 0.932565, 0.254460,
		0.938366, -0.303030, 0.166259,
		33.092087, 38.533749, 49.173405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.926651, 39.287479, 48.837322>,  <32.435230, 38.745869, 49.057022>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.926651, 39.287479, 48.837322> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.127251, 38.941685, 48.823711>,  <33.247608, 38.734207, 48.815544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.127251, 38.941685, 48.823711>,  <32.926651, 39.287479, 48.837322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.127251, 38.941685, 48.823711> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426665, 0.281342, -0.859537,
		0.752634, 0.416538, 0.509939,
		0.501497, -0.864490, -0.034025,
		33.277699, 38.682339, 48.813503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.680027, 39.413540, 48.648445>,  <32.926651, 39.287479, 48.837322>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.680027, 39.413540, 48.648445> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.630287, 39.029617, 48.547794>,  <33.600445, 38.799263, 48.487404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.630287, 39.029617, 48.547794>,  <33.680027, 39.413540, 48.648445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.630287, 39.029617, 48.547794> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573952, 0.137290, -0.807299,
		0.809394, -0.244806, 0.533809,
		-0.124345, -0.959803, -0.251628,
		33.592983, 38.741676, 48.472305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.347435, 39.207279, 48.352982>,  <33.680027, 39.413540, 48.648445>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.347435, 39.207279, 48.352982> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.078918, 38.943943, 48.216774>,  <33.917809, 38.785942, 48.135048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.078918, 38.943943, 48.216774>,  <34.347435, 39.207279, 48.352982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.078918, 38.943943, 48.216774> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469049, -0.021603, -0.882908,
		0.573898, -0.752410, 0.323297,
		-0.671293, -0.658341, -0.340519,
		33.877529, 38.746441, 48.114620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.714840, 39.009716, 47.824829>,  <34.347435, 39.207279, 48.352982>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.714840, 39.009716, 47.824829> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.355038, 38.859489, 47.735527>,  <34.139156, 38.769352, 47.681946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.355038, 38.859489, 47.735527>,  <34.714840, 39.009716, 47.824829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.355038, 38.859489, 47.735527> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268400, -0.071787, -0.960629,
		0.344756, -0.924010, 0.165376,
		-0.899503, -0.375569, -0.223255,
		34.085186, 38.746819, 47.668549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.909451, 38.532200, 47.378716>,  <34.714840, 39.009716, 47.824829>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.909451, 38.532200, 47.378716> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.523251, 38.625069, 47.331535>,  <34.291531, 38.680790, 47.303226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.523251, 38.625069, 47.331535>,  <34.909451, 38.532200, 47.378716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.523251, 38.625069, 47.331535> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137488, 0.069807, -0.988041,
		-0.221163, -0.970166, -0.099320,
		-0.965497, 0.232174, -0.117947,
		34.233601, 38.694721, 47.296150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.779278, 38.191883, 46.796249>,  <34.909451, 38.532200, 47.378716>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.779278, 38.191883, 46.796249> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.470001, 38.443729, 46.826614>,  <34.284435, 38.594837, 46.844833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.470001, 38.443729, 46.826614>,  <34.779278, 38.191883, 46.796249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.470001, 38.443729, 46.826614> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035143, 0.076976, -0.996413,
		-0.633204, -0.773081, -0.037390,
		-0.773187, 0.629619, 0.075910,
		34.238045, 38.632614, 46.849388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.350803, 37.967854, 46.301514>,  <34.779278, 38.191883, 46.796249>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.350803, 37.967854, 46.301514> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.252087, 38.349968, 46.366650>,  <34.192856, 38.579239, 46.405731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.252087, 38.349968, 46.366650>,  <34.350803, 37.967854, 46.301514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.252087, 38.349968, 46.366650> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036925, 0.158650, -0.986644,
		-0.968365, -0.249509, -0.003880,
		-0.246792, 0.955288, 0.162844,
		34.178047, 38.636555, 46.415504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.738319, 38.086887, 45.952179>,  <34.350803, 37.967854, 46.301514>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.738319, 38.086887, 45.952179> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.907001, 38.446384, 46.000229>,  <34.008213, 38.662083, 46.029057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.907001, 38.446384, 46.000229>,  <33.738319, 38.086887, 45.952179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.907001, 38.446384, 46.000229> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119708, 0.186500, -0.975135,
		-0.898795, 0.396843, 0.186235,
		0.421709, 0.898740, 0.120120,
		34.033516, 38.716007, 46.036266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.294632, 38.502426, 45.732353>,  <33.738319, 38.086887, 45.952179>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.294632, 38.502426, 45.732353> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.621655, 38.730152, 45.697742>,  <33.817867, 38.866787, 45.676975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.621655, 38.730152, 45.697742>,  <33.294632, 38.502426, 45.732353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.621655, 38.730152, 45.697742> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262943, 0.235387, -0.935657,
		-0.512317, 0.787701, 0.342138,
		0.817553, 0.569315, -0.086528,
		33.866920, 38.900948, 45.671783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.031582, 39.127304, 45.260094>,  <33.294632, 38.502426, 45.732353>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.031582, 39.127304, 45.260094> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.431446, 39.117565, 45.256355>,  <33.671364, 39.111721, 45.254112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.431446, 39.117565, 45.256355>,  <33.031582, 39.127304, 45.260094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.431446, 39.117565, 45.256355> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003384, 0.234224, -0.972177,
		0.025861, 0.971878, 0.234062,
		0.999660, -0.024350, -0.009346,
		33.731342, 39.110260, 45.253551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.275448, 39.807110, 44.974998>,  <33.031582, 39.127304, 45.260094>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.275448, 39.807110, 44.974998> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.584316, 39.554554, 44.946438>,  <33.769638, 39.403019, 44.929302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.584316, 39.554554, 44.946438>,  <33.275448, 39.807110, 44.974998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.584316, 39.554554, 44.946438> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106492, 0.239368, -0.965071,
		0.626431, 0.737593, 0.252071,
		0.772168, -0.631394, -0.071400,
		33.815968, 39.365135, 44.925018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.764080, 40.195919, 44.533180>,  <33.275448, 39.807110, 44.974998>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.764080, 40.195919, 44.533180> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.858616, 39.807384, 44.543377>,  <33.915337, 39.574265, 44.549496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.858616, 39.807384, 44.543377>,  <33.764080, 40.195919, 44.533180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.858616, 39.807384, 44.543377> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307600, 0.049904, -0.950206,
		0.921697, 0.232414, 0.310577,
		0.236340, -0.971336, 0.025494,
		33.929520, 39.515984, 44.551025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.426003, 40.221233, 44.129711>,  <33.764080, 40.195919, 44.533180>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.426003, 40.221233, 44.129711> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.261780, 39.858150, 44.095036>,  <34.163246, 39.640301, 44.074230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.261780, 39.858150, 44.095036>,  <34.426003, 40.221233, 44.129711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.261780, 39.858150, 44.095036> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095608, 0.051698, -0.994076,
		0.906807, -0.416416, 0.065559,
		-0.410559, -0.907703, -0.086692,
		34.138611, 39.585838, 44.069027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.137520, 40.162281, 43.911457>,  <34.426003, 40.221233, 44.129711>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.137520, 40.162281, 43.911457> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.301414, 40.526962, 43.899342>,  <35.399750, 40.745770, 43.892075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.301414, 40.526962, 43.899342>,  <35.137520, 40.162281, 43.911457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.301414, 40.526962, 43.899342> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404812, 0.211478, 0.889609,
		0.817464, -0.352242, 0.455718,
		0.409732, 0.911703, -0.030284,
		35.424335, 40.800472, 43.890255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.446091, 40.119621, 44.455486>,  <35.137520, 40.162281, 43.911457>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.446091, 40.119621, 44.455486> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.460926, 40.510059, 44.369827>,  <35.469826, 40.744324, 44.318432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.460926, 40.510059, 44.369827>,  <35.446091, 40.119621, 44.455486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.460926, 40.510059, 44.369827> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043931, 0.215680, 0.975475,
		0.998346, -0.026770, 0.050880,
		0.037087, 0.976097, -0.214147,
		35.472054, 40.802887, 44.305584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.054020, 40.506142, 44.772121>,  <35.446091, 40.119621, 44.455486>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.054020, 40.506142, 44.772121> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.781002, 40.794559, 44.724407>,  <35.617191, 40.967609, 44.695778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.781002, 40.794559, 44.724407>,  <36.054020, 40.506142, 44.772121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.781002, 40.794559, 44.724407> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103283, 0.256742, 0.960946,
		0.723505, 0.643572, -0.249710,
		-0.682549, 0.721040, -0.119284,
		35.576237, 41.010872, 44.688622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.313900, 41.074337, 45.146961>,  <36.054020, 40.506142, 44.772121>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.313900, 41.074337, 45.146961> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.921932, 41.142006, 45.104733>,  <35.686752, 41.182606, 45.079395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.921932, 41.142006, 45.104733>,  <36.313900, 41.074337, 45.146961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.921932, 41.142006, 45.104733> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051155, 0.298450, 0.953053,
		0.192735, 0.939313, -0.283803,
		-0.979917, 0.169168, -0.105572,
		35.627956, 41.192757, 45.073059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.192169, 41.690437, 45.510746>,  <36.313900, 41.074337, 45.146961>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.192169, 41.690437, 45.510746> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.816513, 41.557083, 45.477581>,  <35.591118, 41.477070, 45.457680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.816513, 41.557083, 45.477581>,  <36.192169, 41.690437, 45.510746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.816513, 41.557083, 45.477581> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219488, 0.396611, 0.891361,
		-0.264279, 0.855311, -0.445646,
		-0.939139, -0.333382, -0.082915,
		35.534771, 41.457069, 45.452705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.876915, 42.188267, 45.834064>,  <36.192169, 41.690437, 45.510746>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.876915, 42.188267, 45.834064> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.640156, 41.865978, 45.825405>,  <35.498100, 41.672604, 45.820210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.640156, 41.865978, 45.825405>,  <35.876915, 42.188267, 45.834064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.640156, 41.865978, 45.825405> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242399, 0.152333, 0.958143,
		-0.768698, 0.572371, -0.285472,
		-0.591900, -0.805721, -0.021644,
		35.462585, 41.624264, 45.818913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.296745, 42.382908, 46.133678>,  <35.876915, 42.188267, 45.834064>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.296745, 42.382908, 46.133678> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.257957, 41.986279, 46.168022>,  <35.234684, 41.748299, 46.188629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.257957, 41.986279, 46.168022>,  <35.296745, 42.382908, 46.133678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.257957, 41.986279, 46.168022> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310569, 0.112104, 0.943917,
		-0.945592, 0.064867, -0.318824,
		-0.096971, -0.991577, 0.085859,
		35.228867, 41.688805, 46.193779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.740456, 42.260220, 46.690601>,  <35.296745, 42.382908, 46.133678>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.740456, 42.260220, 46.690601> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.916176, 41.901707, 46.666290>,  <35.021606, 41.686600, 46.651703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.916176, 41.901707, 46.666290>,  <34.740456, 42.260220, 46.690601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.916176, 41.901707, 46.666290> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107443, -0.119593, 0.986992,
		-0.891892, -0.427055, -0.148836,
		0.439300, -0.896282, -0.060780,
		35.047966, 41.632824, 46.648056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.261745, 41.830265, 47.105774>,  <34.740456, 42.260220, 46.690601>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.261745, 41.830265, 47.105774> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.621353, 41.655693, 47.091377>,  <34.837116, 41.550949, 47.082741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.621353, 41.655693, 47.091377>,  <34.261745, 41.830265, 47.105774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.621353, 41.655693, 47.091377> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086266, -0.257087, 0.962530,
		-0.429326, -0.862229, -0.268775,
		0.899020, -0.436426, -0.035993,
		34.891060, 41.524765, 47.080578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.212189, 41.321754, 47.608452>,  <34.261745, 41.830265, 47.105774>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.212189, 41.321754, 47.608452> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.605915, 41.312088, 47.538559>,  <34.842152, 41.306290, 47.496624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.605915, 41.312088, 47.538559>,  <34.212189, 41.321754, 47.608452>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.605915, 41.312088, 47.538559> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152928, -0.376784, 0.913590,
		-0.087911, -0.925986, -0.367181,
		0.984320, -0.024162, -0.174732,
		34.901211, 41.304840, 47.486137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.471870, 40.691151, 47.809814>,  <34.212189, 41.321754, 47.608452>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.471870, 40.691151, 47.809814> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.793880, 40.925663, 47.846035>,  <34.987087, 41.066372, 47.867767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.793880, 40.925663, 47.846035>,  <34.471870, 40.691151, 47.809814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.793880, 40.925663, 47.846035> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184423, -0.392411, 0.901111,
		0.563840, -0.708722, -0.424026,
		0.805029, 0.586283, 0.090552,
		35.035389, 41.101547, 47.873199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.974121, 40.256794, 48.242752>,  <34.471870, 40.691151, 47.809814>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.974121, 40.256794, 48.242752> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.119007, 40.629478, 48.253391>,  <35.205940, 40.853088, 48.259773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.119007, 40.629478, 48.253391>,  <34.974121, 40.256794, 48.242752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.119007, 40.629478, 48.253391> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160738, -0.090542, 0.982835,
		0.918130, -0.351725, -0.182558,
		0.362217, 0.931714, 0.026594,
		35.227673, 40.908993, 48.261368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.550343, 40.296822, 48.663391>,  <34.974121, 40.256794, 48.242752>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.550343, 40.296822, 48.663391> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.433346, 40.678463, 48.689133>,  <35.363148, 40.907448, 48.704578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.433346, 40.678463, 48.689133>,  <35.550343, 40.296822, 48.663391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.433346, 40.678463, 48.689133> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088659, -0.094061, 0.991611,
		0.952148, 0.284336, 0.112102,
		-0.292495, 0.954099, 0.064351,
		35.345596, 40.964691, 48.708439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.972858, 40.660530, 49.142315>,  <35.550343, 40.296822, 48.663391>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.972858, 40.660530, 49.142315> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.624752, 40.857269, 49.131607>,  <35.415886, 40.975311, 49.125183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.624752, 40.857269, 49.131607>,  <35.972858, 40.660530, 49.142315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.624752, 40.857269, 49.131607> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106117, -0.134140, 0.985264,
		0.481009, 0.860286, 0.168932,
		-0.870270, 0.491847, -0.026769,
		35.363670, 41.004822, 49.123577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.605530, 41.192036, 49.126987>,  <35.972858, 40.660530, 49.142315>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.605530, 41.192036, 49.126987> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.993710, 41.104820, 49.168343>,  <37.226616, 41.052490, 49.193157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.993710, 41.104820, 49.168343>,  <36.605530, 41.192036, 49.126987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.993710, 41.104820, 49.168343> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151561, 0.217347, -0.964256,
		0.187774, 0.951430, 0.243970,
		0.970448, -0.218039, 0.103388,
		37.284843, 41.039410, 49.199360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.917202, 41.709511, 48.753498>,  <36.605530, 41.192036, 49.126987>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.917202, 41.709511, 48.753498> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.136150, 41.375378, 48.773914>,  <37.267521, 41.174896, 48.786163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.136150, 41.375378, 48.773914>,  <36.917202, 41.709511, 48.753498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.136150, 41.375378, 48.773914> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125772, 0.021812, -0.991819,
		0.827385, 0.549313, 0.117001,
		0.547371, -0.835332, 0.051041,
		37.300362, 41.124779, 48.789227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.553936, 41.831638, 48.410370>,  <36.917202, 41.709511, 48.753498>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.553936, 41.831638, 48.410370> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.559402, 41.432167, 48.430180>,  <37.562683, 41.192486, 48.442066>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.559402, 41.432167, 48.430180>,  <37.553936, 41.831638, 48.410370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.559402, 41.432167, 48.430180> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509136, -0.035677, -0.859946,
		0.860578, 0.036965, 0.507977,
		0.013665, -0.998680, 0.049523,
		37.563503, 41.132565, 48.445038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.284878, 41.657906, 48.164337>,  <37.553936, 41.831638, 48.410370>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.284878, 41.657906, 48.164337> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.073940, 41.324291, 48.099468>,  <37.947380, 41.124123, 48.060547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.073940, 41.324291, 48.099468>,  <38.284878, 41.657906, 48.164337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.073940, 41.324291, 48.099468> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404652, -0.078698, -0.911078,
		0.747107, -0.546072, 0.378994,
		-0.527340, -0.834034, -0.162173,
		37.915737, 41.074081, 48.050816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.674427, 41.198135, 47.983650>,  <38.284878, 41.657906, 48.164337>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.674427, 41.198135, 47.983650> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.344864, 41.032742, 47.828629>,  <38.147125, 40.933506, 47.735615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.344864, 41.032742, 47.828629>,  <38.674427, 41.198135, 47.983650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.344864, 41.032742, 47.828629> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528403, -0.313322, -0.789062,
		0.204839, -0.854902, 0.476638,
		-0.823912, -0.413488, -0.387552,
		38.097691, 40.908695, 47.712364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.836845, 40.634087, 47.690514>,  <38.674427, 41.198135, 47.983650>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.836845, 40.634087, 47.690514> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.492947, 40.691505, 47.494461>,  <38.286606, 40.725956, 47.376831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.492947, 40.691505, 47.494461>,  <38.836845, 40.634087, 47.690514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.492947, 40.691505, 47.494461> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442069, -0.271424, -0.854929,
		-0.255747, -0.951696, 0.169903,
		-0.859749, 0.143537, -0.490131,
		38.235023, 40.734570, 47.347420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.835899, 40.100540, 47.214775>,  <38.836845, 40.634087, 47.690514>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.835899, 40.100540, 47.214775> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.562771, 40.345901, 47.056038>,  <38.398891, 40.493118, 46.960796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.562771, 40.345901, 47.056038>,  <38.835899, 40.100540, 47.214775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.562771, 40.345901, 47.056038> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295976, -0.264355, -0.917886,
		-0.667944, -0.744210, -0.001045,
		-0.682824, 0.613406, -0.396843,
		38.357925, 40.529922, 46.936985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.539524, 39.708473, 46.672245>,  <38.835899, 40.100540, 47.214775>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.539524, 39.708473, 46.672245> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.477646, 40.094040, 46.585594>,  <38.440517, 40.325382, 46.533604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.477646, 40.094040, 46.585594>,  <38.539524, 39.708473, 46.672245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.477646, 40.094040, 46.585594> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505679, -0.111112, -0.855536,
		-0.848738, -0.241895, -0.470245,
		-0.154700, 0.963920, -0.216626,
		38.431236, 40.383217, 46.520607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.378189, 39.642590, 45.957996>,  <38.539524, 39.708473, 46.672245>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.378189, 39.642590, 45.957996> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.491505, 40.014519, 46.051952>,  <38.559494, 40.237679, 46.108326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.491505, 40.014519, 46.051952>,  <38.378189, 39.642590, 45.957996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.491505, 40.014519, 46.051952> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334692, 0.133670, -0.932799,
		-0.898737, 0.342868, -0.273337,
		0.283289, 0.929825, 0.234890,
		38.576492, 40.293465, 46.122417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.094067, 40.013073, 45.476318>,  <38.378189, 39.642590, 45.957996>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.094067, 40.013073, 45.476318> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.389294, 40.251827, 45.602165>,  <38.566429, 40.395081, 45.677673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.389294, 40.251827, 45.602165>,  <38.094067, 40.013073, 45.476318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.389294, 40.251827, 45.602165> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274749, 0.160010, -0.948108,
		-0.616251, 0.786211, -0.045894,
		0.738070, 0.596883, 0.314617,
		38.610714, 40.430893, 45.696552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.115868, 40.637829, 45.095474>,  <38.094067, 40.013073, 45.476318>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.115868, 40.637829, 45.095474> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.490013, 40.648094, 45.236580>,  <38.714500, 40.654255, 45.321243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.490013, 40.648094, 45.236580>,  <38.115868, 40.637829, 45.095474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.490013, 40.648094, 45.236580> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328902, 0.303718, -0.894192,
		-0.130092, 0.952416, 0.275644,
		0.935361, 0.025667, 0.352763,
		38.770622, 40.655796, 45.342407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.366280, 41.270309, 44.869930>,  <38.115868, 40.637829, 45.095474>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.366280, 41.270309, 44.869930> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.691902, 41.051018, 44.946617>,  <38.887276, 40.919445, 44.992630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.691902, 41.051018, 44.946617>,  <38.366280, 41.270309, 44.869930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.691902, 41.051018, 44.946617> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306395, 0.124968, -0.943666,
		0.493385, 0.826940, 0.269706,
		0.814060, -0.548227, 0.191713,
		38.936119, 40.886551, 45.004131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.946487, 41.659801, 44.654362>,  <38.366280, 41.270309, 44.869930>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.946487, 41.659801, 44.654362> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.064724, 41.277805, 44.664352>,  <39.135666, 41.048607, 44.670349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.064724, 41.277805, 44.664352>,  <38.946487, 41.659801, 44.654362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.064724, 41.277805, 44.664352> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213526, 0.040560, -0.976095,
		0.931144, 0.293864, 0.215904,
		0.295596, -0.954986, 0.024980,
		39.153404, 40.991310, 44.671848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.566986, 41.591957, 44.308521>,  <38.946487, 41.659801, 44.654362>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.566986, 41.591957, 44.308521> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.455704, 41.209400, 44.272926>,  <39.388935, 40.979866, 44.251568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.455704, 41.209400, 44.272926>,  <39.566986, 41.591957, 44.308521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.455704, 41.209400, 44.272926> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558387, -0.085652, -0.825147,
		0.781541, -0.279251, 0.557865,
		-0.278205, -0.956390, -0.088989,
		39.372242, 40.922482, 44.246231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<26.361629, 37.722927, 29.487318> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.743277, 37.676964, 29.376715>,  <26.972265, 37.649384, 29.310352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.743277, 37.676964, 29.376715>,  <26.361629, 37.722927, 29.487318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.743277, 37.676964, 29.376715> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240822, -0.254313, 0.936659,
		-0.177951, -0.960271, -0.214972,
		0.954117, -0.114909, -0.276509,
		27.029512, 37.642490, 29.293762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.782928, 37.189457, 29.751390>,  <26.361629, 37.722927, 29.487318>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.782928, 37.189457, 29.751390> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.068882, 37.448849, 29.646769>,  <27.240454, 37.604485, 29.583996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.068882, 37.448849, 29.646769>,  <26.782928, 37.189457, 29.751390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.068882, 37.448849, 29.646769> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427560, -0.109415, 0.897341,
		0.553293, -0.753325, -0.355484,
		0.714884, 0.648483, -0.261553,
		27.283348, 37.643394, 29.568302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.476955, 36.902367, 29.803768>,  <26.782928, 37.189457, 29.751390>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.476955, 36.902367, 29.803768> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.505249, 37.294331, 29.878357>,  <27.522224, 37.529510, 29.923109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.505249, 37.294331, 29.878357>,  <27.476955, 36.902367, 29.803768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.505249, 37.294331, 29.878357> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653687, -0.186738, 0.733363,
		0.753452, 0.070021, -0.653764,
		0.070732, 0.979911, 0.186470,
		27.526468, 37.588303, 29.934298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.142910, 36.917377, 30.099346>,  <27.476955, 36.902367, 29.803768>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.142910, 36.917377, 30.099346> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.004162, 37.286667, 30.165483>,  <27.920914, 37.508240, 30.205166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.004162, 37.286667, 30.165483>,  <28.142910, 36.917377, 30.099346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.004162, 37.286667, 30.165483> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557779, 0.061327, 0.827720,
		0.754031, 0.379338, -0.536227,
		-0.346871, 0.923223, 0.165345,
		27.900101, 37.563633, 30.215088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.635378, 37.195160, 30.536716>,  <28.142910, 36.917377, 30.099346>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.635378, 37.195160, 30.536716> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.339312, 37.453899, 30.610191>,  <28.161673, 37.609142, 30.654276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.339312, 37.453899, 30.610191>,  <28.635378, 37.195160, 30.536716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.339312, 37.453899, 30.610191> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280774, 0.049085, 0.958518,
		0.611001, 0.761036, -0.217950,
		-0.740165, 0.646850, 0.183688,
		28.117262, 37.647953, 30.665298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.962940, 37.696468, 31.021500>,  <28.635378, 37.195160, 30.536716>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.962940, 37.696468, 31.021500> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.565744, 37.689472, 31.068260>,  <28.327427, 37.685276, 31.096317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.565744, 37.689472, 31.068260>,  <28.962940, 37.696468, 31.021500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.565744, 37.689472, 31.068260> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116689, 0.012799, 0.993086,
		-0.018866, 0.999765, -0.010669,
		-0.992989, -0.017491, 0.116903,
		28.267847, 37.684223, 31.103331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.860277, 38.127312, 31.617870>,  <28.962940, 37.696468, 31.021500>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.860277, 38.127312, 31.617870> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.525259, 37.911819, 31.581459>,  <28.324247, 37.782524, 31.559612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.525259, 37.911819, 31.581459>,  <28.860277, 38.127312, 31.617870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.525259, 37.911819, 31.581459> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022361, -0.132666, 0.990909,
		-0.545909, 0.831967, 0.099068,
		-0.837546, -0.538731, -0.091027,
		28.273994, 37.750198, 31.554152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.643049, 38.338982, 32.192532>,  <28.860277, 38.127312, 31.617870>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.643049, 38.338982, 32.192532> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.430593, 38.013424, 32.098324>,  <28.303120, 37.818089, 32.041798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.430593, 38.013424, 32.098324>,  <28.643049, 38.338982, 32.192532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.430593, 38.013424, 32.098324> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061877, -0.239968, 0.968807,
		-0.845021, 0.529147, 0.077095,
		-0.531141, -0.813892, -0.235520,
		28.271252, 37.769257, 32.027668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.020771, 38.496731, 32.506115>,  <28.643049, 38.338982, 32.192532>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.020771, 38.496731, 32.506115> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.049711, 38.100964, 32.455799>,  <28.067076, 37.863503, 32.425610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.049711, 38.100964, 32.455799>,  <28.020771, 38.496731, 32.506115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.049711, 38.100964, 32.455799> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222043, -0.138932, 0.965088,
		-0.972349, -0.041896, -0.229744,
		0.072352, -0.989415, -0.125788,
		28.071417, 37.804138, 32.418064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.458654, 38.304596, 32.926533>,  <28.020771, 38.496731, 32.506115>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.458654, 38.304596, 32.926533> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.661596, 37.965023, 32.867325>,  <27.783361, 37.761280, 32.831802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.661596, 37.965023, 32.867325>,  <27.458654, 38.304596, 32.926533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.661596, 37.965023, 32.867325> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162988, -0.263199, 0.950874,
		-0.846183, -0.458306, -0.271900,
		0.507355, -0.848930, -0.148016,
		27.813803, 37.710342, 32.822922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.076303, 37.864368, 33.287945>,  <27.458654, 38.304596, 32.926533>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.076303, 37.864368, 33.287945> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.433386, 37.686855, 33.256618>,  <27.647635, 37.580349, 33.237823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.433386, 37.686855, 33.256618>,  <27.076303, 37.864368, 33.287945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.433386, 37.686855, 33.256618> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015779, -0.142900, 0.989611,
		-0.450365, -0.884667, -0.120565,
		0.892705, -0.443784, -0.078317,
		27.701197, 37.553719, 33.233124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.010078, 37.152233, 33.557457>,  <27.076303, 37.864368, 33.287945>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.010078, 37.152233, 33.557457> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.397303, 37.249866, 33.580383>,  <27.629637, 37.308445, 33.594139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.397303, 37.249866, 33.580383>,  <27.010078, 37.152233, 33.557457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.397303, 37.249866, 33.580383> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073601, -0.495177, 0.865669,
		0.239673, -0.833801, -0.497326,
		0.968060, 0.244081, 0.057312,
		27.687721, 37.323090, 33.597576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.393919, 36.528160, 33.837139>,  <27.010078, 37.152233, 33.557457>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.393919, 36.528160, 33.837139> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.651630, 36.826702, 33.903908>,  <27.806257, 37.005825, 33.943970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.651630, 36.826702, 33.903908>,  <27.393919, 36.528160, 33.837139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.651630, 36.826702, 33.903908> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045604, -0.255356, 0.965771,
		0.763430, -0.614614, -0.198557,
		0.644279, 0.746353, 0.166918,
		27.844913, 37.050610, 33.953983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.039145, 36.212212, 34.031395>,  <27.393919, 36.528160, 33.837139>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.039145, 36.212212, 34.031395> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.062426, 36.588722, 34.164429>,  <28.076395, 36.814629, 34.244251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.062426, 36.588722, 34.164429>,  <28.039145, 36.212212, 34.031395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.062426, 36.588722, 34.164429> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169441, -0.337633, 0.925902,
		0.983820, 0.002465, -0.179142,
		0.058202, 0.941275, 0.332587,
		28.079885, 36.871105, 34.264206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.580294, 36.182812, 34.438866>,  <28.039145, 36.212212, 34.031395>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.580294, 36.182812, 34.438866> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.388828, 36.509621, 34.567459>,  <28.273949, 36.705708, 34.644615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.388828, 36.509621, 34.567459>,  <28.580294, 36.182812, 34.438866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.388828, 36.509621, 34.567459> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021777, -0.355000, 0.934613,
		0.877729, 0.454365, 0.152133,
		-0.478662, 0.817024, 0.321488,
		28.245230, 36.754726, 34.663906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.980822, 36.420883, 34.963070>,  <28.580294, 36.182812, 34.438866>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.980822, 36.420883, 34.963070> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.632174, 36.602486, 35.036999>,  <28.422985, 36.711445, 35.081356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.632174, 36.602486, 35.036999>,  <28.980822, 36.420883, 34.963070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.632174, 36.602486, 35.036999> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059435, -0.276373, 0.959211,
		0.486562, 0.847054, 0.213909,
		-0.871622, 0.454002, 0.184818,
		28.370687, 36.738686, 35.092445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.007801, 36.783260, 35.624138>,  <28.980822, 36.420883, 34.963070>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.007801, 36.783260, 35.624138> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.615124, 36.750450, 35.555378>,  <28.379517, 36.730766, 35.514122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.615124, 36.750450, 35.555378>,  <29.007801, 36.783260, 35.624138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.615124, 36.750450, 35.555378> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117864, -0.447361, 0.886553,
		-0.149619, 0.890584, 0.429504,
		-0.981694, -0.082022, -0.171901,
		28.320616, 36.725845, 35.503807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.715227, 36.759880, 36.257618>,  <29.007801, 36.783260, 35.624138>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.715227, 36.759880, 36.257618> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.420990, 36.600121, 36.038757>,  <28.244448, 36.504265, 35.907440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.420990, 36.600121, 36.038757>,  <28.715227, 36.759880, 36.257618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.420990, 36.600121, 36.038757> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397488, -0.399564, 0.826046,
		-0.548547, 0.825123, 0.135160,
		-0.735595, -0.399400, -0.547156,
		28.200312, 36.480301, 35.874611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.093075, 36.942993, 36.660137>,  <28.715227, 36.759880, 36.257618>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.093075, 36.942993, 36.660137> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.027790, 36.622196, 36.430294>,  <27.988619, 36.429718, 36.292389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.027790, 36.622196, 36.430294>,  <28.093075, 36.942993, 36.660137>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.027790, 36.622196, 36.430294> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441381, -0.461525, 0.769531,
		-0.882352, 0.379215, -0.278658,
		-0.163210, -0.801992, -0.574606,
		27.978827, 36.381599, 36.257912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.403255, 37.507748, 37.110447>,  <28.093075, 36.942993, 36.660137>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.403255, 37.507748, 37.110447> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.772413, 37.622025, 37.213711>,  <28.993908, 37.690590, 37.275669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.772413, 37.622025, 37.213711>,  <28.403255, 37.507748, 37.110447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.772413, 37.622025, 37.213711> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078060, 0.795346, -0.601109,
		-0.377062, 0.534607, 0.756320,
		0.922893, 0.285694, 0.258163,
		29.049280, 37.707733, 37.291161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.356224, 38.248436, 37.249451>,  <28.403255, 37.507748, 37.110447>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.356224, 38.248436, 37.249451> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.739460, 38.153145, 37.185814>,  <28.969402, 38.095970, 37.147633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.739460, 38.153145, 37.185814>,  <28.356224, 38.248436, 37.249451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.739460, 38.153145, 37.185814> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116174, 0.830763, -0.544368,
		0.261847, 0.503072, 0.823623,
		0.958092, -0.238224, -0.159089,
		29.026888, 38.081676, 37.138088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.698938, 38.865688, 37.429070>,  <28.356224, 38.248436, 37.249451>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.698938, 38.865688, 37.429070> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.925884, 38.647755, 37.182087>,  <29.062052, 38.516994, 37.033897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.925884, 38.647755, 37.182087>,  <28.698938, 38.865688, 37.429070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.925884, 38.647755, 37.182087> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166757, 0.810306, -0.561780,
		0.806405, 0.215770, 0.550594,
		0.567365, -0.544838, -0.617454,
		29.096094, 38.484303, 36.996849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.147142, 39.268383, 37.228386>,  <28.698938, 38.865688, 37.429070>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.147142, 39.268383, 37.228386> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.195293, 38.986687, 36.948513>,  <29.224184, 38.817669, 36.780590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.195293, 38.986687, 36.948513>,  <29.147142, 39.268383, 37.228386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.195293, 38.986687, 36.948513> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023382, 0.702600, -0.711200,
		0.992453, 0.101973, 0.068111,
		0.120378, -0.704240, -0.699682,
		29.231407, 38.775414, 36.738609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.695677, 39.530811, 36.853928>,  <29.147142, 39.268383, 37.228386>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.695677, 39.530811, 36.853928> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.484455, 39.295746, 36.608715>,  <29.357721, 39.154705, 36.461586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.484455, 39.295746, 36.608715>,  <29.695677, 39.530811, 36.853928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.484455, 39.295746, 36.608715> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101335, 0.673123, -0.732555,
		0.843142, -0.448951, -0.295895,
		-0.528055, -0.587663, -0.613033,
		29.326038, 39.119446, 36.424805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.112148, 39.496643, 36.169250>,  <29.695677, 39.530811, 36.853928>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.112148, 39.496643, 36.169250> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.748396, 39.370552, 36.060692>,  <29.530144, 39.294899, 35.995556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.748396, 39.370552, 36.060692>,  <30.112148, 39.496643, 36.169250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.748396, 39.370552, 36.060692> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028078, 0.604458, -0.796143,
		0.415011, -0.731619, -0.540833,
		-0.909383, -0.315223, -0.271399,
		29.475580, 39.275986, 35.979271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.128160, 39.186695, 35.542755>,  <30.112148, 39.496643, 36.169250>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.128160, 39.186695, 35.542755> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.731365, 39.233482, 35.523670>,  <29.493288, 39.261555, 35.512218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.731365, 39.233482, 35.523670>,  <30.128160, 39.186695, 35.542755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.731365, 39.233482, 35.523670> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101723, 0.515649, -0.850740,
		-0.074908, -0.848778, -0.523417,
		-0.991988, 0.116971, -0.047714,
		29.433769, 39.268574, 35.509357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.945372, 39.187126, 34.870800>,  <30.128160, 39.186695, 35.542755>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.945372, 39.187126, 34.870800> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.624313, 39.373802, 35.019371>,  <29.431679, 39.485809, 35.108513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.624313, 39.373802, 35.019371>,  <29.945372, 39.187126, 34.870800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.624313, 39.373802, 35.019371> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075136, 0.538655, -0.839170,
		-0.591704, -0.701464, -0.397284,
		-0.802647, 0.466689, 0.371429,
		29.383520, 39.513809, 35.130798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.429905, 39.150055, 34.294796>,  <29.945372, 39.187126, 34.870800>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.429905, 39.150055, 34.294796> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.288767, 39.446468, 34.523312>,  <29.204084, 39.624317, 34.660419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.288767, 39.446468, 34.523312>,  <29.429905, 39.150055, 34.294796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.288767, 39.446468, 34.523312> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403483, 0.430373, -0.807453,
		-0.844216, -0.515413, 0.147138,
		-0.352847, 0.741032, 0.571288,
		29.182913, 39.668777, 34.694698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.701189, 39.343151, 34.076195>,  <29.429905, 39.150055, 34.294796>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.701189, 39.343151, 34.076195> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.813147, 39.675282, 34.268951>,  <28.880322, 39.874557, 34.384605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.813147, 39.675282, 34.268951>,  <28.701189, 39.343151, 34.076195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.813147, 39.675282, 34.268951> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375926, 0.556667, -0.740811,
		-0.883368, 0.026190, 0.467947,
		0.279893, 0.830323, 0.481896,
		28.897114, 39.924377, 34.413521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.114321, 39.748165, 34.040024>,  <28.701189, 39.343151, 34.076195>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.114321, 39.748165, 34.040024> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.427025, 39.984509, 34.119766>,  <28.614647, 40.126316, 34.167610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.427025, 39.984509, 34.119766>,  <28.114321, 39.748165, 34.040024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.427025, 39.984509, 34.119766> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190480, 0.530676, -0.825894,
		-0.593777, 0.607676, 0.527407,
		0.781758, 0.590857, 0.199353,
		28.661552, 40.161766, 34.179573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.821482, 40.289612, 33.914055>,  <28.114321, 39.748165, 34.040024>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.821482, 40.289612, 33.914055> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.206812, 40.395302, 33.932785>,  <28.438009, 40.458714, 33.944023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.206812, 40.395302, 33.932785>,  <27.821482, 40.289612, 33.914055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.206812, 40.395302, 33.932785> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201561, 0.827695, -0.523730,
		-0.177141, 0.495083, 0.850596,
		0.963325, 0.264221, 0.046829,
		28.495810, 40.474567, 33.946835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.856623, 41.080631, 34.051193>,  <27.821482, 40.289612, 33.914055>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.856623, 41.080631, 34.051193> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.184948, 40.948063, 33.865105>,  <28.381943, 40.868523, 33.753452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.184948, 40.948063, 33.865105>,  <27.856623, 41.080631, 34.051193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.184948, 40.948063, 33.865105> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090290, 0.728936, -0.678601,
		0.564018, 0.599008, 0.568395,
		0.820811, -0.331423, -0.465218,
		28.431190, 40.848637, 33.725540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.287136, 41.653759, 34.092537>,  <27.856623, 41.080631, 34.051193>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.287136, 41.653759, 34.092537> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.384457, 41.431282, 33.774681>,  <28.442850, 41.297794, 33.583969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.384457, 41.431282, 33.774681>,  <28.287136, 41.653759, 34.092537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.384457, 41.431282, 33.774681> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373952, 0.702135, -0.605943,
		0.894966, 0.444584, -0.037158,
		0.243302, -0.556193, -0.794640,
		28.457447, 41.264423, 33.536289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.505777, 42.205517, 33.722523>,  <28.287136, 41.653759, 34.092537>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.505777, 42.205517, 33.722523> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.442421, 41.901794, 33.470058>,  <28.404408, 41.719559, 33.318581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.442421, 41.901794, 33.470058>,  <28.505777, 42.205517, 33.722523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.442421, 41.901794, 33.470058> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313921, 0.644788, -0.696924,
		0.936144, 0.087747, -0.340492,
		-0.158392, -0.759309, -0.631160,
		28.394903, 41.674004, 33.280712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.835285, 42.340214, 33.142719>,  <28.505777, 42.205517, 33.722523>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.835285, 42.340214, 33.142719> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.564472, 42.090046, 32.987556>,  <28.401983, 41.939945, 32.894459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.564472, 42.090046, 32.987556>,  <28.835285, 42.340214, 33.142719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.564472, 42.090046, 32.987556> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196686, 0.661672, -0.723536,
		0.709183, -0.413562, -0.570987,
		-0.677033, -0.625425, -0.387904,
		28.361362, 41.902420, 32.871185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.646103, 42.562637, 32.416176>,  <28.835285, 42.340214, 33.142719>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.646103, 42.562637, 32.416176> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.355385, 42.296604, 32.484802>,  <28.180954, 42.136986, 32.525978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.355385, 42.296604, 32.484802>,  <28.646103, 42.562637, 32.416176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.355385, 42.296604, 32.484802> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590282, 0.477093, -0.651113,
		0.351191, -0.574498, -0.739336,
		-0.726795, -0.665082, 0.171565,
		28.137346, 42.097080, 32.536270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.443310, 42.382622, 31.720655>,  <28.646103, 42.562637, 32.416176>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.443310, 42.382622, 31.720655> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.139862, 42.306557, 31.969921>,  <27.957792, 42.260918, 32.119480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.139862, 42.306557, 31.969921>,  <28.443310, 42.382622, 31.720655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.139862, 42.306557, 31.969921> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614280, 0.527545, -0.586819,
		-0.217153, -0.827969, -0.517022,
		-0.758620, -0.190166, 0.623163,
		27.912275, 42.249508, 32.156872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.799173, 42.139896, 31.276829>,  <28.443310, 42.382622, 31.720655>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.799173, 42.139896, 31.276829> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.678513, 42.285828, 31.629169>,  <27.606115, 42.373386, 31.840574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.678513, 42.285828, 31.629169>,  <27.799173, 42.139896, 31.276829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.678513, 42.285828, 31.629169> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710499, 0.530056, -0.462852,
		-0.635764, -0.765467, 0.099319,
		-0.301654, 0.364830, 0.880854,
		27.588017, 42.395275, 31.893425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.122726, 42.014347, 31.238432>,  <27.799173, 42.139896, 31.276829>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.122726, 42.014347, 31.238432> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.168365, 42.288857, 31.525768>,  <27.195749, 42.453564, 31.698170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.168365, 42.288857, 31.525768>,  <27.122726, 42.014347, 31.238432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.168365, 42.288857, 31.525768> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705054, 0.565344, -0.428119,
		-0.699915, -0.457620, 0.548364,
		0.114098, 0.686273, 0.718339,
		27.202595, 42.494740, 31.741270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.433510, 42.196651, 31.368719>,  <27.122726, 42.014347, 31.238432>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.433510, 42.196651, 31.368719> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.624508, 42.509182, 31.529482>,  <26.739107, 42.696701, 31.625940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.624508, 42.509182, 31.529482>,  <26.433510, 42.196651, 31.368719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.624508, 42.509182, 31.529482> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768273, 0.593228, -0.240491,
		-0.426324, -0.193940, 0.883535,
		0.477497, 0.781324, 0.401907,
		26.767757, 42.743580, 31.650053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.892094, 42.669884, 31.786613>,  <26.433510, 42.196651, 31.368719>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.892094, 42.669884, 31.786613> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.217953, 42.879807, 31.687881>,  <26.413467, 43.005760, 31.628641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.217953, 42.879807, 31.687881>,  <25.892094, 42.669884, 31.786613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.217953, 42.879807, 31.687881> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577600, 0.772530, -0.263771,
		0.052255, 0.357449, 0.932470,
		0.814645, 0.524811, -0.246831,
		26.462347, 43.037251, 31.613832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.309820, 43.031605, 32.150490>,  <25.892094, 42.669884, 31.786613>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.309820, 43.031605, 32.150490> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.304449, 43.401840, 32.301811>,  <25.301226, 43.623981, 32.392605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.304449, 43.401840, 32.301811>,  <25.309820, 43.031605, 32.150490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.304449, 43.401840, 32.301811> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215911, -0.366726, 0.904928,
		0.976321, 0.093831, -0.194919,
		-0.013429, 0.925585, 0.378302,
		25.300421, 43.679516, 32.415302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.957161, 38.399578, 49.817986> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.631062, 38.182526, 49.898899>,  <37.435402, 38.052296, 49.947445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.631062, 38.182526, 49.898899>,  <37.957161, 38.399578, 49.817986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.631062, 38.182526, 49.898899> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107245, 0.484724, 0.868068,
		-0.569091, 0.686000, -0.453365,
		-0.815251, -0.542631, 0.202282,
		37.386486, 38.019737, 49.959583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.505920, 38.960777, 49.995995>,  <37.957161, 38.399578, 49.817986>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.505920, 38.960777, 49.995995> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.365608, 38.624672, 50.161362>,  <37.281422, 38.423008, 50.260582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.365608, 38.624672, 50.161362>,  <37.505920, 38.960777, 49.995995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.365608, 38.624672, 50.161362> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116267, 0.477133, 0.871106,
		-0.929211, 0.257501, -0.265064,
		-0.350782, -0.840260, 0.413419,
		37.260372, 38.372593, 50.285389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.287041, 39.247227, 50.498089>,  <37.505920, 38.960777, 49.995995>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.287041, 39.247227, 50.498089> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.247799, 38.865009, 50.609314>,  <37.224255, 38.635681, 50.676048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.247799, 38.865009, 50.609314>,  <37.287041, 39.247227, 50.498089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.247799, 38.865009, 50.609314> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021084, 0.277350, 0.960538,
		-0.994953, 0.100093, -0.007062,
		-0.098102, -0.955541, 0.278061,
		37.218369, 38.578346, 50.692734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.867619, 39.212646, 51.116184>,  <37.287041, 39.247227, 50.498089>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.867619, 39.212646, 51.116184> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.072617, 38.869926, 51.139004>,  <37.195614, 38.664295, 51.152695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.072617, 38.869926, 51.139004>,  <36.867619, 39.212646, 51.116184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.072617, 38.869926, 51.139004> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236057, 0.204449, 0.949988,
		-0.825609, -0.473394, 0.307031,
		0.512491, -0.856795, 0.057047,
		37.226364, 38.612888, 51.156116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.520058, 38.786648, 51.724136>,  <36.867619, 39.212646, 51.116184>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.520058, 38.786648, 51.724136> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.893108, 38.665760, 51.645279>,  <37.116940, 38.593227, 51.597965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.893108, 38.665760, 51.645279>,  <36.520058, 38.786648, 51.724136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.893108, 38.665760, 51.645279> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208073, 0.004053, 0.978105,
		-0.294800, -0.953231, 0.066663,
		0.932630, -0.302215, -0.197147,
		37.172897, 38.575096, 51.586136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.627476, 38.230606, 52.285172>,  <36.520058, 38.786648, 51.724136>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.627476, 38.230606, 52.285172> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.989426, 38.322681, 52.141941>,  <37.206596, 38.377926, 52.056004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.989426, 38.322681, 52.141941>,  <36.627476, 38.230606, 52.285172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.989426, 38.322681, 52.141941> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398364, -0.161421, 0.902912,
		0.150043, -0.959664, -0.237766,
		0.904872, 0.230193, -0.358075,
		37.260887, 38.391739, 52.034519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.063019, 37.697853, 52.532745>,  <36.627476, 38.230606, 52.285172>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.063019, 37.697853, 52.532745> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.291874, 38.018208, 52.462044>,  <37.429188, 38.210423, 52.419624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.291874, 38.018208, 52.462044>,  <37.063019, 37.697853, 52.532745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.291874, 38.018208, 52.462044> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462300, -0.136909, 0.876091,
		0.677452, -0.582953, -0.448581,
		0.572135, 0.800888, -0.176750,
		37.463516, 38.258472, 52.409019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.697330, 37.479660, 52.708912>,  <37.063019, 37.697853, 52.532745>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.697330, 37.479660, 52.708912> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.717831, 37.879028, 52.718166>,  <37.730133, 38.118649, 52.723717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.717831, 37.879028, 52.718166>,  <37.697330, 37.479660, 52.708912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.717831, 37.879028, 52.718166> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554015, -0.047697, 0.831139,
		0.830928, -0.029783, -0.555583,
		0.051253, 0.998418, 0.023133,
		37.733208, 38.178555, 52.725105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.340519, 37.567688, 53.045448>,  <37.697330, 37.479660, 52.708912>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.340519, 37.567688, 53.045448> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.147644, 37.917938, 53.056652>,  <38.031921, 38.128086, 53.063374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.147644, 37.917938, 53.056652>,  <38.340519, 37.567688, 53.045448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.147644, 37.917938, 53.056652> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398793, 0.190916, 0.896948,
		0.780041, 0.443662, -0.441248,
		-0.482183, 0.875623, 0.028007,
		38.002991, 38.180626, 53.065056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.781300, 38.093433, 53.200554>,  <38.340519, 37.567688, 53.045448>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.781300, 38.093433, 53.200554> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.428776, 38.229004, 53.332260>,  <38.217262, 38.310349, 53.411282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.428776, 38.229004, 53.332260>,  <38.781300, 38.093433, 53.200554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.428776, 38.229004, 53.332260> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382834, 0.103681, 0.917981,
		0.276993, 0.935081, -0.221129,
		-0.881313, 0.338930, 0.329262,
		38.164383, 38.330685, 53.431038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.950279, 38.858669, 53.541576>,  <38.781300, 38.093433, 53.200554>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.950279, 38.858669, 53.541576> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.630413, 38.647572, 53.656136>,  <38.438496, 38.520912, 53.724873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.630413, 38.647572, 53.656136>,  <38.950279, 38.858669, 53.541576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.630413, 38.647572, 53.656136> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205743, 0.207271, 0.956404,
		-0.564099, 0.823725, -0.057167,
		-0.799663, -0.527745, 0.286397,
		38.390514, 38.489246, 53.742054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.376400, 39.194344, 53.989155>,  <38.950279, 38.858669, 53.541576>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.376400, 39.194344, 53.989155> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.404190, 38.804943, 54.076309>,  <38.420864, 38.571304, 54.128601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.404190, 38.804943, 54.076309>,  <38.376400, 39.194344, 53.989155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.404190, 38.804943, 54.076309> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126044, 0.225228, 0.966119,
		-0.989589, -0.039659, 0.138352,
		0.069476, -0.973498, 0.217885,
		38.425034, 38.512894, 54.141674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.994991, 39.057514, 54.659817>,  <38.376400, 39.194344, 53.989155>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.994991, 39.057514, 54.659817> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.253773, 38.760025, 54.592484>,  <38.409042, 38.581532, 54.552086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.253773, 38.760025, 54.592484>,  <37.994991, 39.057514, 54.659817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.253773, 38.760025, 54.592484> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272346, 0.019172, 0.962008,
		-0.712238, -0.668216, 0.214952,
		0.646951, -0.743720, -0.168331,
		38.447857, 38.536907, 54.541985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.573566, 39.599556, 54.715054>,  <37.994991, 39.057514, 54.659817>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.573566, 39.599556, 54.715054> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.297741, 39.885494, 54.761543>,  <37.132248, 40.057056, 54.789436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.297741, 39.885494, 54.761543>,  <37.573566, 39.599556, 54.715054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.297741, 39.885494, 54.761543> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194144, 0.337066, -0.921246,
		-0.697722, -0.612689, -0.371209,
		-0.689559, 0.714842, 0.116228,
		37.090874, 40.099945, 54.796413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.217266, 39.556740, 54.106213>,  <37.573566, 39.599556, 54.715054>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.217266, 39.556740, 54.106213> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.186142, 39.923157, 54.263592>,  <37.167465, 40.143009, 54.358021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.186142, 39.923157, 54.263592>,  <37.217266, 39.556740, 54.106213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.186142, 39.923157, 54.263592> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424247, 0.387558, -0.818421,
		-0.902197, 0.103236, -0.418787,
		-0.077814, 0.916047, 0.393451,
		37.162796, 40.197971, 54.381626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.966976, 39.912251, 53.561150>,  <37.217266, 39.556740, 54.106213>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.966976, 39.912251, 53.561150> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.122013, 40.190147, 53.803509>,  <37.215034, 40.356884, 53.948925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.122013, 40.190147, 53.803509>,  <36.966976, 39.912251, 53.561150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.122013, 40.190147, 53.803509> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203776, 0.576439, -0.791324,
		-0.899027, 0.430175, 0.081849,
		0.387589, 0.694743, 0.605894,
		37.238289, 40.398571, 53.985275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.545349, 40.433792, 53.443363>,  <36.966976, 39.912251, 53.561150>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.545349, 40.433792, 53.443363> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.904575, 40.555702, 53.570221>,  <37.120113, 40.628849, 53.646336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.904575, 40.555702, 53.570221>,  <36.545349, 40.433792, 53.443363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.904575, 40.555702, 53.570221> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180246, 0.402706, -0.897407,
		-0.401227, 0.863098, 0.306722,
		0.898069, 0.304779, 0.317146,
		37.173996, 40.647137, 53.665363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.633579, 41.131542, 53.197834>,  <36.545349, 40.433792, 53.443363>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.633579, 41.131542, 53.197834> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.016411, 41.062572, 53.291012>,  <37.246109, 41.021191, 53.346916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.016411, 41.062572, 53.291012>,  <36.633579, 41.131542, 53.197834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.016411, 41.062572, 53.291012> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286249, 0.436685, -0.852859,
		0.045334, 0.882935, 0.467301,
		0.957082, -0.172428, 0.232942,
		37.303535, 41.010845, 53.360893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.048546, 41.824081, 53.174572>,  <36.633579, 41.131542, 53.197834>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.048546, 41.824081, 53.174572> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.319160, 41.529564, 53.169491>,  <37.481529, 41.352852, 53.166443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.319160, 41.529564, 53.169491>,  <37.048546, 41.824081, 53.174572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.319160, 41.529564, 53.169491> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378249, 0.362243, -0.851885,
		0.631840, 0.571531, 0.523575,
		0.676540, -0.736297, -0.012698,
		37.522121, 41.308674, 53.165680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.653034, 42.064522, 52.883163>,  <37.048546, 41.824081, 53.174572>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.653034, 42.064522, 52.883163> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.696041, 41.670475, 52.829533>,  <37.721844, 41.434048, 52.797352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.696041, 41.670475, 52.829533>,  <37.653034, 42.064522, 52.883163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.696041, 41.670475, 52.829533> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216613, 0.154833, -0.963901,
		0.970319, 0.074592, 0.230037,
		0.107516, -0.985121, -0.134080,
		37.728294, 41.374939, 52.789310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.140724, 42.005322, 52.440544>,  <37.653034, 42.064522, 52.883163>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.140724, 42.005322, 52.440544> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.946358, 41.658215, 52.398853>,  <37.829739, 41.449951, 52.373840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.946358, 41.658215, 52.398853>,  <38.140724, 42.005322, 52.440544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.946358, 41.658215, 52.398853> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103794, 0.061112, -0.992720,
		0.867821, -0.493196, 0.060374,
		-0.485916, -0.867769, -0.104225,
		37.800583, 41.397884, 52.367584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.573570, 41.592819, 52.037903>,  <38.140724, 42.005322, 52.440544>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.573570, 41.592819, 52.037903> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.215866, 41.414391, 52.023380>,  <38.001244, 41.307335, 52.014668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.215866, 41.414391, 52.023380>,  <38.573570, 41.592819, 52.037903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.215866, 41.414391, 52.023380> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073716, -0.066803, -0.995039,
		0.441431, -0.892502, 0.092621,
		-0.894262, -0.446069, -0.036303,
		37.947586, 41.280571, 52.012489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.634464, 40.972149, 51.611740>,  <38.573570, 41.592819, 52.037903>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.634464, 40.972149, 51.611740> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.248863, 41.076244, 51.589886>,  <38.017502, 41.138702, 51.576775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.248863, 41.076244, 51.589886>,  <38.634464, 40.972149, 51.611740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.248863, 41.076244, 51.589886> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015998, -0.148325, -0.988809,
		-0.265428, -0.954084, 0.138821,
		-0.963998, 0.260236, -0.054633,
		37.959663, 41.154316, 51.573494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.409512, 40.562325, 51.133858>,  <38.634464, 40.972149, 51.611740>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.409512, 40.562325, 51.133858> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.107254, 40.824310, 51.135506>,  <37.925900, 40.981503, 51.136494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.107254, 40.824310, 51.135506>,  <38.409512, 40.562325, 51.133858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.107254, 40.824310, 51.135506> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137931, -0.152972, -0.978558,
		-0.640290, -0.740014, 0.205932,
		-0.755648, 0.654965, 0.004124,
		37.880558, 41.020802, 51.136742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.034077, 40.271866, 50.674263>,  <38.409512, 40.562325, 51.133858>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.034077, 40.271866, 50.674263> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.891327, 40.643986, 50.708141>,  <37.805676, 40.867260, 50.728466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.891327, 40.643986, 50.708141>,  <38.034077, 40.271866, 50.674263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.891327, 40.643986, 50.708141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257961, -0.011007, -0.966093,
		-0.897827, -0.366625, 0.243910,
		-0.356879, 0.930304, 0.084693,
		37.784264, 40.923077, 50.733551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.455879, 40.130604, 50.404942>,  <38.034077, 40.271866, 50.674263>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.455879, 40.130604, 50.404942> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.500690, 40.528015, 50.397530>,  <37.527576, 40.766464, 50.393082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.500690, 40.528015, 50.397530>,  <37.455879, 40.130604, 50.404942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.500690, 40.528015, 50.397530> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249136, 0.010033, -0.968416,
		-0.961967, 0.113107, 0.248649,
		0.112030, 0.993532, -0.018527,
		37.534298, 40.826077, 50.391972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.868702, 40.291637, 50.152061>,  <37.455879, 40.130604, 50.404942>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.868702, 40.291637, 50.152061> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.131794, 40.583801, 50.078423>,  <37.289650, 40.759102, 50.034237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.131794, 40.583801, 50.078423>,  <36.868702, 40.291637, 50.152061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.131794, 40.583801, 50.078423> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299530, 0.029358, -0.953635,
		-0.691143, 0.682374, 0.238091,
		0.657725, 0.730414, -0.184101,
		37.329113, 40.802925, 50.023193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.580212, 40.707386, 49.669056>,  <36.868702, 40.291637, 50.152061>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.580212, 40.707386, 49.669056> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.970409, 40.794506, 49.656525>,  <37.204529, 40.846779, 49.649006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.970409, 40.794506, 49.656525>,  <36.580212, 40.707386, 49.669056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.970409, 40.794506, 49.656525> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051937, 0.089563, -0.994626,
		-0.213821, 0.971876, 0.098679,
		0.975491, 0.217797, -0.031325,
		37.263058, 40.859844, 49.647125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.985806, 41.257721, 49.728645>,  <36.580212, 40.707386, 49.669056>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.985806, 41.257721, 49.728645> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.596325, 41.230255, 49.641747>,  <35.362637, 41.213776, 49.589607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.596325, 41.230255, 49.641747>,  <35.985806, 41.257721, 49.728645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.596325, 41.230255, 49.641747> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206862, -0.133265, 0.969252,
		-0.095502, 0.988699, 0.115556,
		-0.973698, -0.068662, -0.217251,
		35.304214, 41.209656, 49.576572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.712879, 41.680637, 50.197559>,  <35.985806, 41.257721, 49.728645>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.712879, 41.680637, 50.197559> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.428925, 41.426426, 50.076126>,  <35.258553, 41.273899, 50.003265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.428925, 41.426426, 50.076126>,  <35.712879, 41.680637, 50.197559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.428925, 41.426426, 50.076126> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241940, -0.184768, 0.952537,
		-0.661453, 0.749646, -0.022593,
		-0.709891, -0.635524, -0.303585,
		35.215958, 41.235767, 49.985050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.105644, 41.918270, 50.514740>,  <35.712879, 41.680637, 50.197559>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.105644, 41.918270, 50.514740> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.043934, 41.534313, 50.421089>,  <35.006908, 41.303940, 50.364899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.043934, 41.534313, 50.421089>,  <35.105644, 41.918270, 50.514740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.043934, 41.534313, 50.421089> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420492, -0.150644, 0.894702,
		-0.894083, 0.236479, -0.380385,
		-0.154275, -0.959888, -0.234126,
		34.997650, 41.246346, 50.350853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.409218, 41.676357, 50.670013>,  <35.105644, 41.918270, 50.514740>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.409218, 41.676357, 50.670013> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.633766, 41.345341, 50.667469>,  <34.768494, 41.146732, 50.665943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.633766, 41.345341, 50.667469>,  <34.409218, 41.676357, 50.670013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.633766, 41.345341, 50.667469> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354946, -0.247708, 0.901473,
		-0.747583, -0.503799, -0.432788,
		0.561366, -0.827543, -0.006360,
		34.802177, 41.097076, 50.665562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.974308, 41.241562, 50.969273>,  <34.409218, 41.676357, 50.670013>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.974308, 41.241562, 50.969273> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.337608, 41.081799, 51.019161>,  <34.555588, 40.985939, 51.049095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.337608, 41.081799, 51.019161>,  <33.974308, 41.241562, 50.969273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.337608, 41.081799, 51.019161> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257680, -0.299064, 0.918783,
		-0.329676, -0.866620, -0.374545,
		0.908248, -0.399413, 0.124716,
		34.610085, 40.961975, 51.056576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.825268, 40.588390, 51.112804>,  <33.974308, 41.241562, 50.969273>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.825268, 40.588390, 51.112804> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.201298, 40.658367, 51.229870>,  <34.426914, 40.700356, 51.300110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.201298, 40.658367, 51.229870>,  <33.825268, 40.588390, 51.112804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.201298, 40.658367, 51.229870> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238490, -0.276065, 0.931080,
		0.243681, -0.945083, -0.217800,
		0.940076, 0.174944, 0.292665,
		34.483322, 40.710850, 51.317669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.788700, 40.167046, 51.648407>,  <33.825268, 40.588390, 51.112804>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.788700, 40.167046, 51.648407> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.130848, 40.364010, 51.712742>,  <34.336136, 40.482189, 51.751343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.130848, 40.364010, 51.712742>,  <33.788700, 40.167046, 51.648407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.130848, 40.364010, 51.712742> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173127, -0.020880, 0.984678,
		0.488228, -0.870111, 0.067390,
		0.855372, 0.492414, 0.160834,
		34.387459, 40.511734, 51.760994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.865051, 39.500835, 51.844204>,  <33.788700, 40.167046, 51.648407>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.865051, 39.500835, 51.844204> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.608231, 39.211796, 51.946671>,  <33.454140, 39.038372, 52.008152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.608231, 39.211796, 51.946671>,  <33.865051, 39.500835, 51.844204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.608231, 39.211796, 51.946671> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089775, -0.402695, -0.910921,
		0.761391, -0.561857, 0.323420,
		-0.642047, -0.722602, 0.256168,
		33.415615, 38.995014, 52.023521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.125118, 38.735958, 51.704475>,  <33.865051, 39.500835, 51.844204>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.125118, 38.735958, 51.704475> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.729328, 38.762817, 51.653210>,  <33.491852, 38.778931, 51.622448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.729328, 38.762817, 51.653210>,  <34.125118, 38.735958, 51.704475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.729328, 38.762817, 51.653210> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089316, -0.413456, -0.906133,
		-0.113834, -0.908045, 0.403108,
		-0.989477, 0.067144, -0.128169,
		33.432484, 38.782959, 51.614758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.974537, 38.060894, 51.257427>,  <34.125118, 38.735958, 51.704475>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.974537, 38.060894, 51.257427> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.636127, 38.272900, 51.234344>,  <33.433083, 38.400105, 51.220493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.636127, 38.272900, 51.234344>,  <33.974537, 38.060894, 51.257427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.636127, 38.272900, 51.234344> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125140, -0.302630, -0.944857,
		-0.518257, -0.792146, 0.322357,
		-0.846020, 0.530019, -0.057711,
		33.382320, 38.431904, 51.217030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.592831, 37.606239, 50.901997>,  <33.974537, 38.060894, 51.257427>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.592831, 37.606239, 50.901997> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.462032, 37.981270, 50.854618>,  <33.383553, 38.206287, 50.826191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.462032, 37.981270, 50.854618>,  <33.592831, 37.606239, 50.901997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.462032, 37.981270, 50.854618> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225991, -0.199277, -0.953529,
		-0.917607, -0.285031, 0.277046,
		-0.326994, 0.937575, -0.118443,
		33.363934, 38.262543, 50.819084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.966988, 37.551765, 50.587868>,  <33.592831, 37.606239, 50.901997>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.966988, 37.551765, 50.587868> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.095806, 37.922108, 50.508801>,  <33.173100, 38.144314, 50.461361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.095806, 37.922108, 50.508801>,  <32.966988, 37.551765, 50.587868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.095806, 37.922108, 50.508801> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084756, -0.179755, -0.980053,
		-0.942922, 0.332378, 0.020582,
		0.322048, 0.925858, -0.197666,
		33.192421, 38.199863, 50.449501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.511509, 37.765903, 50.063824>,  <32.966988, 37.551765, 50.587868>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.511509, 37.765903, 50.063824> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.818474, 38.020035, 50.029331>,  <33.002651, 38.172516, 50.008636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.818474, 38.020035, 50.029331>,  <32.511509, 37.765903, 50.063824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.818474, 38.020035, 50.029331> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065342, -0.056287, -0.996274,
		-0.637819, 0.770184, -0.001681,
		0.767409, 0.635333, -0.086227,
		33.048698, 38.210636, 50.003464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.299049, 38.109135, 49.482719>,  <32.511509, 37.765903, 50.063824>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.299049, 38.109135, 49.482719> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.677460, 38.236237, 49.508194>,  <32.904507, 38.312500, 49.523479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.677460, 38.236237, 49.508194>,  <32.299049, 38.109135, 49.482719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.677460, 38.236237, 49.508194> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002646, 0.204083, -0.978950,
		-0.324067, 0.925948, 0.193910,
		0.946031, 0.317758, 0.063687,
		32.961269, 38.331566, 49.527302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<36.815781, 35.565662, 54.214554> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.902431, 35.928883, 54.071156>,  <36.954422, 36.146812, 53.985115>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.902431, 35.928883, 54.071156>,  <36.815781, 35.565662, 54.214554>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.902431, 35.928883, 54.071156> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882158, 0.024774, -0.470302,
		-0.418175, 0.418132, 0.806409,
		0.216626, 0.908049, -0.358498,
		36.967419, 36.201298, 53.963608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.116196, 35.898705, 54.186356>,  <36.815781, 35.565662, 54.214554>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.116196, 35.898705, 54.186356> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.383965, 36.045643, 53.928074>,  <36.544624, 36.133808, 53.773106>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.383965, 36.045643, 53.928074>,  <36.116196, 35.898705, 54.186356>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.383965, 36.045643, 53.928074> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662271, -0.098686, -0.742737,
		-0.336566, 0.924832, 0.177223,
		0.669418, 0.367350, -0.645704,
		36.584789, 36.155849, 53.734364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.815231, 36.406925, 53.798977>,  <36.116196, 35.898705, 54.186356>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.815231, 36.406925, 53.798977> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.117214, 36.297344, 53.560654>,  <36.298405, 36.231594, 53.417660>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.117214, 36.297344, 53.560654>,  <35.815231, 36.406925, 53.798977>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.117214, 36.297344, 53.560654> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624554, -0.023388, -0.780632,
		0.199922, 0.961459, -0.188756,
		0.754960, -0.273953, -0.595807,
		36.343700, 36.215157, 53.381912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.532215, 36.578838, 53.120842>,  <35.815231, 36.406925, 53.798977>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.532215, 36.578838, 53.120842> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.863098, 36.374207, 53.027878>,  <36.061626, 36.251427, 52.972099>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.863098, 36.374207, 53.027878>,  <35.532215, 36.578838, 53.120842>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.863098, 36.374207, 53.027878> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401855, -0.249516, -0.881053,
		0.392738, 0.822209, -0.411983,
		0.827205, -0.511581, -0.232415,
		36.111259, 36.220734, 52.958153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.806652, 36.878246, 52.508137>,  <35.532215, 36.578838, 53.120842>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.806652, 36.878246, 52.508137> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.964085, 36.510601, 52.500896>,  <36.058544, 36.290016, 52.496552>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.964085, 36.510601, 52.500896>,  <35.806652, 36.878246, 52.508137>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.964085, 36.510601, 52.500896> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459381, -0.179587, -0.869895,
		0.796279, 0.350692, -0.492904,
		0.393584, -0.919111, -0.018100,
		36.082161, 36.234867, 52.495468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.074078, 36.784069, 51.803795>,  <35.806652, 36.878246, 52.508137>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.074078, 36.784069, 51.803795> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.050499, 36.403103, 51.923416>,  <36.036350, 36.174522, 51.995190>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.050499, 36.403103, 51.923416>,  <36.074078, 36.784069, 51.803795>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.050499, 36.403103, 51.923416> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311957, -0.267000, -0.911808,
		0.948266, -0.147043, -0.281372,
		-0.058948, -0.952413, 0.299058,
		36.032814, 36.117378, 52.013134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.485081, 36.301743, 51.304699>,  <36.074078, 36.784069, 51.803795>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.485081, 36.301743, 51.304699> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.229103, 36.066902, 51.503006>,  <36.075516, 35.925999, 51.621990>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.229103, 36.066902, 51.503006>,  <36.485081, 36.301743, 51.304699>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.229103, 36.066902, 51.503006> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425407, -0.266602, -0.864843,
		0.639925, -0.764350, -0.079149,
		-0.639942, -0.587105, 0.495765,
		36.037121, 35.890770, 51.651737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.541019, 35.673954, 50.960945>,  <36.485081, 36.301743, 51.304699>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.541019, 35.673954, 50.960945> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.191601, 35.666336, 51.155495>,  <35.981949, 35.661766, 51.272224>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.191601, 35.666336, 51.155495>,  <36.541019, 35.673954, 50.960945>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.191601, 35.666336, 51.155495> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459081, -0.299811, -0.836276,
		0.161750, -0.953808, 0.253153,
		-0.873545, -0.019049, 0.486370,
		35.929539, 35.660622, 51.301407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.238911, 35.084877, 50.811062>,  <36.541019, 35.673954, 50.960945>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.238911, 35.084877, 50.811062> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.903278, 35.272526, 50.921238>,  <35.701900, 35.385117, 50.987343>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.903278, 35.272526, 50.921238>,  <36.238911, 35.084877, 50.811062>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.903278, 35.272526, 50.921238> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494065, -0.445222, -0.746777,
		-0.227698, -0.762692, 0.605355,
		-0.839078, 0.469124, 0.275444,
		35.651554, 35.413265, 51.003872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.729237, 34.579441, 50.836750>,  <36.238911, 35.084877, 50.811062>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.729237, 34.579441, 50.836750> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.541851, 34.929737, 50.790077>,  <35.429420, 35.139915, 50.762074>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.541851, 34.929737, 50.790077>,  <35.729237, 34.579441, 50.836750>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.541851, 34.929737, 50.790077> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492478, -0.368492, -0.788466,
		-0.733490, -0.311905, 0.603910,
		-0.468463, 0.875744, -0.116678,
		35.401314, 35.192459, 50.755074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.037712, 34.434910, 50.754280>,  <35.729237, 34.579441, 50.836750>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.037712, 34.434910, 50.754280> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.104565, 34.794258, 50.591797>,  <35.144676, 35.009865, 50.494308>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.104565, 34.794258, 50.591797>,  <35.037712, 34.434910, 50.754280>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.104565, 34.794258, 50.591797> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393685, -0.316922, -0.862886,
		-0.903925, 0.304129, 0.300707,
		0.167128, 0.898369, -0.406205,
		35.154701, 35.063770, 50.469936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.376274, 34.613327, 50.395737>,  <35.037712, 34.434910, 50.754280>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.376274, 34.613327, 50.395737> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.665916, 34.837666, 50.235176>,  <34.839703, 34.972267, 50.138840>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.665916, 34.837666, 50.235176>,  <34.376274, 34.613327, 50.395737>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.665916, 34.837666, 50.235176> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203373, -0.382498, -0.901296,
		-0.659022, 0.734268, -0.162908,
		0.724105, 0.560843, -0.401405,
		34.883148, 35.005920, 50.114754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.846447, 35.004612, 50.517258>,  <34.376274, 34.613327, 50.395737>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.846447, 35.004612, 50.517258> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.450111, 35.012028, 50.463753>,  <33.212311, 35.016476, 50.431652>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.450111, 35.012028, 50.463753>,  <33.846447, 35.004612, 50.517258>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.450111, 35.012028, 50.463753> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130054, 0.135637, 0.982186,
		0.036350, 0.990585, -0.131984,
		-0.990840, 0.018537, -0.133760,
		33.152859, 35.017590, 50.423626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.660381, 35.551594, 50.804504>,  <33.846447, 35.004612, 50.517258>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.660381, 35.551594, 50.804504> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.353039, 35.295628, 50.809216>,  <33.168633, 35.142048, 50.812042>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.353039, 35.295628, 50.809216>,  <33.660381, 35.551594, 50.804504>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.353039, 35.295628, 50.809216> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015383, -0.000061, 0.999882,
		-0.639842, 0.768443, 0.009891,
		-0.768352, -0.639919, 0.011782,
		33.122532, 35.103653, 50.812752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.038761, 35.826691, 51.230324>,  <33.660381, 35.551594, 50.804504>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.038761, 35.826691, 51.230324> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.006187, 35.428547, 51.209843>,  <32.986645, 35.189659, 51.197556>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.006187, 35.428547, 51.209843>,  <33.038761, 35.826691, 51.230324>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.006187, 35.428547, 51.209843> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197440, -0.034244, 0.979717,
		-0.976927, 0.089887, -0.193736,
		-0.081430, -0.995363, -0.051201,
		32.981758, 35.129936, 51.194481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.446148, 35.650795, 51.711193>,  <33.038761, 35.826691, 51.230324>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.446148, 35.650795, 51.711193> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.680073, 35.331055, 51.655994>,  <32.820427, 35.139210, 51.622875>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.680073, 35.331055, 51.655994>,  <32.446148, 35.650795, 51.711193>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.680073, 35.331055, 51.655994> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004313, -0.173184, 0.984880,
		-0.811160, -0.575371, -0.104727,
		0.584809, -0.799347, -0.137998,
		32.855515, 35.091251, 51.614594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.217121, 35.216236, 51.986137>,  <32.446148, 35.650795, 51.711193>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.217121, 35.216236, 51.986137> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.583473, 35.056068, 51.974594>,  <32.803284, 34.959969, 51.967667>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.583473, 35.056068, 51.974594>,  <32.217121, 35.216236, 51.986137>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.583473, 35.056068, 51.974594> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064835, -0.218470, 0.973687,
		-0.396190, -0.889906, -0.226053,
		0.915876, -0.400422, -0.028858,
		32.858238, 34.935944, 51.965939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.202339, 34.653057, 52.461365>,  <32.217121, 35.216236, 51.986137>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.202339, 34.653057, 52.461365> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.580311, 34.776997, 52.419224>,  <32.807095, 34.851360, 52.393940>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.580311, 34.776997, 52.419224>,  <32.202339, 34.653057, 52.461365>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.580311, 34.776997, 52.419224> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092724, 0.055247, 0.994158,
		0.313863, -0.949178, 0.023474,
		0.944930, 0.309853, -0.105351,
		32.863789, 34.869953, 52.387619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.579296, 34.201702, 52.996387>,  <32.202339, 34.653057, 52.461365>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.579296, 34.201702, 52.996387> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.745556, 34.549034, 52.888134>,  <32.845310, 34.757435, 52.823181>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.745556, 34.549034, 52.888134>,  <32.579296, 34.201702, 52.996387>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.745556, 34.549034, 52.888134> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289458, 0.155791, 0.944427,
		0.862235, -0.470887, -0.186591,
		0.415649, 0.868329, -0.270631,
		32.870251, 34.809532, 52.806946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.027954, 34.187794, 53.432735>,  <32.579296, 34.201702, 52.996387>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.027954, 34.187794, 53.432735> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.030220, 34.568352, 53.309563>,  <33.031582, 34.796684, 53.235661>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.030220, 34.568352, 53.309563>,  <33.027954, 34.187794, 53.432735>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.030220, 34.568352, 53.309563> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324132, 0.289562, 0.900606,
		0.945995, -0.104914, -0.306736,
		0.005667, 0.951392, -0.307930,
		33.031921, 34.853771, 53.217182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.566872, 34.472366, 53.799690>,  <33.027954, 34.187794, 53.432735>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.566872, 34.472366, 53.799690> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.350765, 34.792961, 53.697140>,  <33.221104, 34.985317, 53.635609>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.350765, 34.792961, 53.697140>,  <33.566872, 34.472366, 53.799690>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.350765, 34.792961, 53.697140> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242907, 0.440240, 0.864398,
		0.805674, 0.404727, -0.432533,
		-0.540264, 0.801489, -0.256379,
		33.188686, 35.033409, 53.620228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.966637, 35.061863, 54.029259>,  <33.566872, 34.472366, 53.799690>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.966637, 35.061863, 54.029259> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.587868, 35.183067, 53.986320>,  <33.360607, 35.255791, 53.960556>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.587868, 35.183067, 53.986320>,  <33.966637, 35.061863, 54.029259>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.587868, 35.183067, 53.986320> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081129, 0.548376, 0.832287,
		0.311059, 0.779401, -0.543853,
		-0.946921, 0.303013, -0.107346,
		33.303791, 35.273972, 53.954117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.030640, 35.659637, 54.369278>,  <33.966637, 35.061863, 54.029259>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.030640, 35.659637, 54.369278> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.633190, 35.620625, 54.346687>,  <33.394718, 35.597218, 54.333134>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.633190, 35.620625, 54.346687>,  <34.030640, 35.659637, 54.369278>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.633190, 35.620625, 54.346687> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106265, 0.643701, 0.757863,
		-0.037562, 0.759036, -0.649964,
		-0.993628, -0.097536, -0.056480,
		33.335102, 35.591362, 54.329742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.784801, 36.345055, 54.232601>,  <34.030640, 35.659637, 54.369278>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.784801, 36.345055, 54.232601> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.491062, 36.138821, 54.409191>,  <33.314819, 36.015079, 54.515144>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.491062, 36.138821, 54.409191>,  <33.784801, 36.345055, 54.232601>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.491062, 36.138821, 54.409191> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044026, 0.685210, 0.727014,
		-0.677340, 0.514448, -0.525884,
		-0.734352, -0.515588, 0.441471,
		33.270756, 35.984142, 54.541634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.300327, 36.844440, 54.430359>,  <33.784801, 36.345055, 54.232601>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.300327, 36.844440, 54.430359> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.245216, 36.516434, 54.652561>,  <33.212151, 36.319630, 54.785881>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.245216, 36.516434, 54.652561>,  <33.300327, 36.844440, 54.430359>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.245216, 36.516434, 54.652561> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040811, 0.565074, 0.824030,
		-0.989622, 0.090864, -0.111321,
		-0.137779, -0.820021, 0.555502,
		33.203884, 36.270428, 54.819210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.769566, 37.051430, 54.941559>,  <33.300327, 36.844440, 54.430359>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.769566, 37.051430, 54.941559> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.977875, 36.739277, 55.080006>,  <33.102859, 36.551983, 55.163074>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.977875, 36.739277, 55.080006>,  <32.769566, 37.051430, 54.941559>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.977875, 36.739277, 55.080006> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017246, 0.395731, 0.918204,
		-0.853521, -0.484146, 0.192628,
		0.520773, -0.780384, 0.346114,
		33.134106, 36.505161, 55.183842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.188217, 37.731579, 54.759094>,  <32.769566, 37.051430, 54.941559>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.188217, 37.731579, 54.759094> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.120556, 38.121662, 54.816174>,  <33.079960, 38.355713, 54.850422>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.120556, 38.121662, 54.816174>,  <33.188217, 37.731579, 54.759094>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.120556, 38.121662, 54.816174> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065027, 0.155508, -0.985692,
		-0.983442, -0.157454, -0.089719,
		-0.169153, 0.975205, 0.142694,
		33.069809, 38.414223, 54.858982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.667133, 37.994823, 54.354046>,  <33.188217, 37.731579, 54.759094>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.667133, 37.994823, 54.354046> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.896942, 38.317764, 54.407867>,  <33.034828, 38.511528, 54.440159>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.896942, 38.317764, 54.407867>,  <32.667133, 37.994823, 54.354046>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.896942, 38.317764, 54.407867> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010688, 0.171778, -0.985078,
		-0.818417, 0.564515, 0.107319,
		0.574526, 0.807351, 0.134553,
		33.069302, 38.559971, 54.448235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.352066, 38.422131, 53.906273>,  <32.667133, 37.994823, 54.354046>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.352066, 38.422131, 53.906273> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.694241, 38.616306, 53.978466>,  <32.899544, 38.732811, 54.021782>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.694241, 38.616306, 53.978466>,  <32.352066, 38.422131, 53.906273>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.694241, 38.616306, 53.978466> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128313, 0.138977, -0.981948,
		-0.501761, 0.863153, 0.056598,
		0.855437, 0.485441, 0.180487,
		32.950871, 38.761940, 54.032612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.319565, 39.010410, 53.731567>,  <32.352066, 38.422131, 53.906273>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.319565, 39.010410, 53.731567> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.716660, 38.963680, 53.720051>,  <32.954918, 38.935642, 53.713142>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.716660, 38.963680, 53.720051>,  <32.319565, 39.010410, 53.731567>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.716660, 38.963680, 53.720051> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020581, 0.070893, -0.997272,
		0.118546, 0.990619, 0.067974,
		0.992735, -0.116824, -0.028792,
		33.014481, 38.928635, 53.711414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.427284, 39.403339, 53.254677>,  <32.319565, 39.010410, 53.731567>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.427284, 39.403339, 53.254677> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.772774, 39.201984, 53.245106>,  <32.980068, 39.081169, 53.239365>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.772774, 39.201984, 53.245106>,  <32.427284, 39.403339, 53.254677>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.772774, 39.201984, 53.245106> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023945, 0.088420, -0.995795,
		0.503389, 0.859524, 0.088424,
		0.863728, -0.503390, -0.023928,
		33.031891, 39.050968, 53.237926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.764660, 39.780094, 52.716221>,  <32.427284, 39.403339, 53.254677>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.764660, 39.780094, 52.716221> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.967102, 39.444077, 52.794380>,  <33.088570, 39.242466, 52.841274>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.967102, 39.444077, 52.794380>,  <32.764660, 39.780094, 52.716221>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.967102, 39.444077, 52.794380> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251772, -0.072789, -0.965045,
		0.824903, 0.537615, 0.174660,
		0.506109, -0.840043, 0.195400,
		33.118935, 39.192062, 52.853001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.384850, 39.806225, 52.304607>,  <32.764660, 39.780094, 52.716221>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.384850, 39.806225, 52.304607> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.325348, 39.417728, 52.378975>,  <33.289646, 39.184631, 52.423595>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.325348, 39.417728, 52.378975>,  <33.384850, 39.806225, 52.304607>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.325348, 39.417728, 52.378975> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100653, -0.201903, -0.974220,
		0.983738, -0.126206, 0.127792,
		-0.148754, -0.971240, 0.185917,
		33.280720, 39.126358, 52.434750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.138912, 39.952564, 52.366257>,  <33.384850, 39.806225, 52.304607>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.138912, 39.952564, 52.366257> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.323261, 40.299263, 52.289997>,  <34.433872, 40.507282, 52.244240>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.323261, 40.299263, 52.289997>,  <34.138912, 39.952564, 52.366257>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.323261, 40.299263, 52.289997> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231074, 0.090219, 0.968744,
		0.856856, -0.490521, -0.158703,
		0.460871, 0.866747, -0.190651,
		34.461521, 40.559288, 52.232803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.776905, 39.954170, 52.677166>,  <34.138912, 39.952564, 52.366257>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.776905, 39.954170, 52.677166> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.669247, 40.336681, 52.631386>,  <34.604652, 40.566189, 52.603916>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.669247, 40.336681, 52.631386>,  <34.776905, 39.954170, 52.677166>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.669247, 40.336681, 52.631386> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213980, 0.175243, 0.960990,
		0.939028, 0.234156, -0.251790,
		-0.269146, 0.956275, -0.114454,
		34.588505, 40.623562, 52.597050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.270664, 40.211720, 53.055153>,  <34.776905, 39.954170, 52.677166>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.270664, 40.211720, 53.055153> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.992142, 40.495796, 53.013622>,  <34.825027, 40.666245, 52.988705>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.992142, 40.495796, 53.013622>,  <35.270664, 40.211720, 53.055153>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.992142, 40.495796, 53.013622> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201872, 0.332601, 0.921208,
		0.688771, 0.620483, -0.374961,
		-0.696306, 0.710195, -0.103828,
		34.783249, 40.708855, 52.982475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.482964, 40.883072, 53.217861>,  <35.270664, 40.211720, 53.055153>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.482964, 40.883072, 53.217861> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.087509, 40.874264, 53.277351>,  <34.850239, 40.868980, 53.313046>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.087509, 40.874264, 53.277351>,  <35.482964, 40.883072, 53.217861>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.087509, 40.874264, 53.277351> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145734, 0.102760, 0.983973,
		-0.036947, 0.994462, -0.098384,
		-0.988634, -0.022017, 0.148724,
		34.790920, 40.867657, 53.321968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.476170, 41.317432, 53.713203>,  <35.482964, 40.883072, 53.217861>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.476170, 41.317432, 53.713203> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.124325, 41.127960, 53.730705>,  <34.913219, 41.014278, 53.741207>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.124325, 41.127960, 53.730705>,  <35.476170, 41.317432, 53.713203>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.124325, 41.127960, 53.730705> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065073, 0.210930, 0.975333,
		-0.471224, 0.855065, -0.216360,
		-0.879610, -0.473679, 0.043753,
		34.860443, 40.985855, 53.743832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.094051, 41.696144, 54.073345>,  <35.476170, 41.317432, 53.713203>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.094051, 41.696144, 54.073345> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.871414, 41.365910, 54.110451>,  <34.737831, 41.167767, 54.132713>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.871414, 41.365910, 54.110451>,  <35.094051, 41.696144, 54.073345>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.871414, 41.365910, 54.110451> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016131, 0.100897, 0.994766,
		-0.830628, 0.555177, -0.042841,
		-0.556593, -0.825590, 0.092763,
		34.704437, 41.118233, 54.138279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.560394, 41.804905, 54.596771>,  <35.094051, 41.696144, 54.073345>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.560394, 41.804905, 54.596771> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.577587, 41.405724, 54.615719>,  <34.587902, 41.166214, 54.627087>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.577587, 41.405724, 54.615719>,  <34.560394, 41.804905, 54.596771>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.577587, 41.405724, 54.615719> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029788, 0.046116, 0.998492,
		-0.998632, -0.044330, -0.027745,
		0.042983, -0.997952, 0.047373,
		34.590481, 41.106339, 54.629932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.286373, 41.690800, 55.217087>,  <34.560394, 41.804905, 54.596771>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.286373, 41.690800, 55.217087> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.461037, 41.341309, 55.131371>,  <34.565834, 41.131615, 55.079941>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.461037, 41.341309, 55.131371>,  <34.286373, 41.690800, 55.217087>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.461037, 41.341309, 55.131371> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052846, -0.212875, 0.975649,
		-0.898072, -0.437353, -0.046781,
		0.436662, -0.873731, -0.214289,
		34.592037, 41.079189, 55.067085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.984604, 41.202923, 55.755009>,  <34.286373, 41.690800, 55.217087>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.984604, 41.202923, 55.755009> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.314594, 41.050598, 55.587967>,  <34.512589, 40.959202, 55.487740>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.314594, 41.050598, 55.587967>,  <33.984604, 41.202923, 55.755009>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.314594, 41.050598, 55.587967> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366696, -0.201594, 0.908237,
		-0.430058, -0.902407, -0.026667,
		0.824975, -0.380816, -0.417606,
		34.562088, 40.936352, 55.462685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.063118, 40.147789, 39.301067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.449650, 40.048977, 39.329865>,  <35.681568, 39.989689, 39.347141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.449650, 40.048977, 39.329865>,  <35.063118, 40.147789, 39.301067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.449650, 40.048977, 39.329865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100456, -0.104602, 0.989428,
		-0.236888, -0.963345, -0.125896,
		0.966330, -0.247030, 0.071994,
		35.739548, 39.974869, 39.351463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.065735, 39.644352, 39.750160>,  <35.063118, 40.147789, 39.301067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.065735, 39.644352, 39.750160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.445946, 39.768524, 39.745628>,  <35.674072, 39.843029, 39.742908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.445946, 39.768524, 39.745628>,  <35.065735, 39.644352, 39.750160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.445946, 39.768524, 39.745628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031267, -0.059318, 0.997749,
		0.309063, -0.948743, -0.066089,
		0.950528, 0.310434, -0.011331,
		35.731106, 39.861652, 39.742229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.276611, 39.319019, 40.275921>,  <35.065735, 39.644352, 39.750160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.276611, 39.319019, 40.275921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.528961, 39.621613, 40.206963>,  <35.680370, 39.803169, 40.165588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.528961, 39.621613, 40.206963>,  <35.276611, 39.319019, 40.275921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.528961, 39.621613, 40.206963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105377, 0.136596, 0.985006,
		0.768694, -0.639584, 0.006459,
		0.630876, 0.756488, -0.172398,
		35.718224, 39.848560, 40.155243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.807701, 39.255676, 40.779930>,  <35.276611, 39.319019, 40.275921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.807701, 39.255676, 40.779930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.851994, 39.634304, 40.658768>,  <35.878571, 39.861481, 40.586071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.851994, 39.634304, 40.658768>,  <35.807701, 39.255676, 40.779930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.851994, 39.634304, 40.658768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203890, 0.276659, 0.939089,
		0.972711, -0.165746, -0.162360,
		0.110732, 0.946566, -0.302903,
		35.885212, 39.918274, 40.567898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.257790, 39.520790, 41.296574>,  <35.807701, 39.255676, 40.779930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.257790, 39.520790, 41.296574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.095650, 39.836906, 41.112774>,  <35.998367, 40.026577, 41.002495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.095650, 39.836906, 41.112774>,  <36.257790, 39.520790, 41.296574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.095650, 39.836906, 41.112774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081046, 0.531735, 0.843024,
		0.910564, 0.304476, -0.279586,
		-0.405346, 0.790286, -0.459502,
		35.974045, 40.073994, 40.974922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.721039, 40.113609, 41.261871>,  <36.257790, 39.520790, 41.296574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.721039, 40.113609, 41.261871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.336311, 40.222271, 41.248554>,  <36.105476, 40.287468, 41.240562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.336311, 40.222271, 41.248554>,  <36.721039, 40.113609, 41.261871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.336311, 40.222271, 41.248554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118515, 0.523062, 0.844014,
		0.246693, 0.807844, -0.535286,
		-0.961820, 0.271652, -0.033294,
		36.047764, 40.303768, 41.238567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.831272, 40.813133, 41.468651>,  <36.721039, 40.113609, 41.261871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.831272, 40.813133, 41.468651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.446087, 40.723026, 41.527920>,  <36.214977, 40.668961, 41.563480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.446087, 40.723026, 41.527920>,  <36.831272, 40.813133, 41.468651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.446087, 40.723026, 41.527920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043653, 0.672538, 0.738774,
		-0.266074, 0.704944, -0.657464,
		-0.962964, -0.225269, 0.148172,
		36.157196, 40.655445, 41.572372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.590691, 41.375759, 41.812599>,  <36.831272, 40.813133, 41.468651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.590691, 41.375759, 41.812599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.336971, 41.072567, 41.873425>,  <36.184738, 40.890652, 41.909920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.336971, 41.072567, 41.873425>,  <36.590691, 41.375759, 41.812599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.336971, 41.072567, 41.873425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236708, 0.377672, 0.895172,
		-0.735957, 0.531813, -0.418978,
		-0.634300, -0.757984, 0.152066,
		36.146683, 40.845173, 41.919044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.914391, 41.724731, 42.058506>,  <36.590691, 41.375759, 41.812599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.914391, 41.724731, 42.058506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.923580, 41.340881, 42.170639>,  <35.929096, 41.110569, 42.237919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.923580, 41.340881, 42.170639>,  <35.914391, 41.724731, 42.058506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.923580, 41.340881, 42.170639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160112, 0.273258, 0.948522,
		-0.986832, -0.066679, -0.147369,
		0.022977, -0.959627, 0.280335,
		35.930473, 41.052994, 42.254738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.356838, 41.626095, 42.489475>,  <35.914391, 41.724731, 42.058506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.356838, 41.626095, 42.489475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.578907, 41.305111, 42.576965>,  <35.712147, 41.112518, 42.629459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.578907, 41.305111, 42.576965>,  <35.356838, 41.626095, 42.489475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.578907, 41.305111, 42.576965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163724, 0.152391, 0.974665,
		-0.815465, -0.576913, -0.046780,
		0.555168, -0.802464, 0.218724,
		35.745457, 41.064373, 42.642582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.850357, 41.125416, 42.787834>,  <35.356838, 41.626095, 42.489475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.850357, 41.125416, 42.787834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.219677, 41.060310, 42.926983>,  <35.441269, 41.021248, 43.010471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.219677, 41.060310, 42.926983>,  <34.850357, 41.125416, 42.787834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.219677, 41.060310, 42.926983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328866, 0.132798, 0.934993,
		-0.198384, -0.977686, 0.069084,
		0.923304, -0.162768, 0.347873,
		35.496670, 41.011478, 43.031345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.792507, 40.535904, 43.351219>,  <34.850357, 41.125416, 42.787834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.792507, 40.535904, 43.351219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.146080, 40.714645, 43.406338>,  <35.358223, 40.821892, 43.439407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.146080, 40.714645, 43.406338>,  <34.792507, 40.535904, 43.351219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.146080, 40.714645, 43.406338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187661, 0.069072, 0.979802,
		0.428312, -0.891936, 0.144912,
		0.883930, 0.446855, 0.137797,
		35.411259, 40.848701, 43.447678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.742546, 39.806217, 43.365414>,  <34.792507, 40.535904, 43.351219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.742546, 39.806217, 43.365414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.427044, 39.605476, 43.507412>,  <34.237743, 39.485031, 43.592609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.427044, 39.605476, 43.507412>,  <34.742546, 39.806217, 43.365414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.427044, 39.605476, 43.507412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211192, -0.321110, -0.923194,
		0.577295, -0.803141, 0.147289,
		-0.788751, -0.501849, 0.354992,
		34.190418, 39.454922, 43.613911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.783634, 39.060909, 43.206059>,  <34.742546, 39.806217, 43.365414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.783634, 39.060909, 43.206059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.390568, 39.126537, 43.240578>,  <34.154728, 39.165913, 43.261288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.390568, 39.126537, 43.240578>,  <34.783634, 39.060909, 43.206059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.390568, 39.126537, 43.240578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143777, -0.380704, -0.913451,
		-0.117013, -0.910026, 0.397694,
		-0.982668, 0.164065, 0.086294,
		34.095768, 39.175758, 43.266464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.552040, 38.537842, 42.881611>,  <34.783634, 39.060909, 43.206059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.552040, 38.537842, 42.881611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.230511, 38.774673, 42.904606>,  <34.037594, 38.916771, 42.918404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.230511, 38.774673, 42.904606>,  <34.552040, 38.537842, 42.881611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.230511, 38.774673, 42.904606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180724, -0.150996, -0.971874,
		-0.566745, -0.791609, 0.228377,
		-0.803828, 0.592078, 0.057486,
		33.989361, 38.952297, 42.921852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.009808, 38.172421, 42.538277>,  <34.552040, 38.537842, 42.881611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.009808, 38.172421, 42.538277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.934719, 38.565296, 42.535007>,  <33.889664, 38.801022, 42.533047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.934719, 38.565296, 42.535007>,  <34.009808, 38.172421, 42.538277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.934719, 38.565296, 42.535007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225656, -0.051224, -0.972860,
		-0.955949, -0.180784, 0.231253,
		-0.187723, 0.982188, -0.008172,
		33.878403, 38.859951, 42.532555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.254547, 38.290699, 42.594112>,  <34.009808, 38.172421, 42.538277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.254547, 38.290699, 42.594112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.415592, 38.605927, 42.407841>,  <33.512218, 38.795063, 42.296078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.415592, 38.605927, 42.407841>,  <33.254547, 38.290699, 42.594112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.415592, 38.605927, 42.407841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447243, -0.274517, -0.851243,
		-0.798673, 0.550988, 0.241935,
		0.402610, 0.788069, -0.465675,
		33.536377, 38.842346, 42.268139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.682133, 38.647785, 42.189327>,  <33.254547, 38.290699, 42.594112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.682133, 38.647785, 42.189327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.026634, 38.786125, 42.040394>,  <33.233334, 38.869129, 41.951035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.026634, 38.786125, 42.040394>,  <32.682133, 38.647785, 42.189327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.026634, 38.786125, 42.040394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373827, -0.065146, -0.925208,
		-0.344240, 0.936025, 0.073181,
		0.861250, 0.345851, -0.372337,
		33.285007, 38.889881, 41.928692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.541393, 39.291260, 41.782246>,  <32.682133, 38.647785, 42.189327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.541393, 39.291260, 41.782246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.883602, 39.124928, 41.658844>,  <33.088928, 39.025127, 41.584805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.883602, 39.124928, 41.658844>,  <32.541393, 39.291260, 41.782246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.883602, 39.124928, 41.658844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301299, 0.084735, -0.949757,
		0.421078, 0.905486, -0.052796,
		0.855519, -0.415830, -0.308502,
		33.140259, 39.000179, 41.566292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.687508, 39.670368, 41.192997>,  <32.541393, 39.291260, 41.782246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.687508, 39.670368, 41.192997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.899113, 39.334007, 41.147358>,  <33.026077, 39.132191, 41.119972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.899113, 39.334007, 41.147358>,  <32.687508, 39.670368, 41.192997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.899113, 39.334007, 41.147358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281231, -0.046866, -0.958495,
		0.800657, 0.539148, -0.261281,
		0.529016, -0.840906, -0.114102,
		33.057816, 39.081734, 41.113129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.924141, 39.766518, 40.565067>,  <32.687508, 39.670368, 41.192997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.924141, 39.766518, 40.565067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.003529, 39.377090, 40.610291>,  <33.051163, 39.143436, 40.637424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.003529, 39.377090, 40.610291>,  <32.924141, 39.766518, 40.565067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.003529, 39.377090, 40.610291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343355, -0.177113, -0.922355,
		0.917996, 0.144242, -0.369429,
		0.198473, -0.973563, 0.113063,
		33.063072, 39.085022, 40.644211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.361301, 39.585651, 39.913204>,  <32.924141, 39.766518, 40.565067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.361301, 39.585651, 39.913204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.202484, 39.250237, 40.062450>,  <33.107193, 39.048988, 40.152000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.202484, 39.250237, 40.062450>,  <33.361301, 39.585651, 39.913204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.202484, 39.250237, 40.062450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194570, -0.320392, -0.927087,
		0.896937, -0.440694, -0.035943,
		-0.397046, -0.838533, 0.373118,
		33.083370, 38.998676, 40.174385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.483955, 39.060028, 39.410244>,  <33.361301, 39.585651, 39.913204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.483955, 39.060028, 39.410244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.193192, 38.894993, 39.629837>,  <33.018734, 38.795971, 39.761593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.193192, 38.894993, 39.629837>,  <33.483955, 39.060028, 39.410244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.193192, 38.894993, 39.629837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486147, -0.255460, -0.835704,
		0.485045, -0.874362, -0.014885,
		-0.726906, -0.412590, 0.548979,
		32.975121, 38.771217, 39.794529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.457298, 38.314358, 39.120861>,  <33.483955, 39.060028, 39.410244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.457298, 38.314358, 39.120861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.133938, 38.451599, 39.312183>,  <32.939922, 38.533943, 39.426975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.133938, 38.451599, 39.312183>,  <33.457298, 38.314358, 39.120861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.133938, 38.451599, 39.312183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581808, -0.342295, -0.737790,
		-0.089412, -0.874710, 0.476328,
		-0.808397, 0.343098, 0.478308,
		32.891418, 38.554527, 39.455677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.933884, 37.915619, 38.900883>,  <33.457298, 38.314358, 39.120861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.933884, 37.915619, 38.900883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.687954, 38.183578, 39.067368>,  <32.540398, 38.344353, 39.167259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.687954, 38.183578, 39.067368>,  <32.933884, 37.915619, 38.900883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.687954, 38.183578, 39.067368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711099, -0.242634, -0.659900,
		-0.341076, -0.701690, 0.625538,
		-0.614822, 0.669895, 0.416214,
		32.503506, 38.384548, 39.192230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.294994, 37.608540, 39.001160>,  <32.933884, 37.915619, 38.900883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.294994, 37.608540, 39.001160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.215797, 38.000599, 39.005203>,  <32.168278, 38.235836, 39.007629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.215797, 38.000599, 39.005203>,  <32.294994, 37.608540, 39.001160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.215797, 38.000599, 39.005203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743874, -0.143528, -0.652726,
		-0.638319, -0.136757, 0.757526,
		-0.197991, 0.980151, 0.010113,
		32.156399, 38.294643, 39.008236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.717983, 37.075058, 39.266426>,  <32.294994, 37.608540, 39.001160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.717983, 37.075058, 39.266426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.758572, 36.677799, 39.289612>,  <32.782925, 36.439445, 39.303524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.758572, 36.677799, 39.289612>,  <32.717983, 37.075058, 39.266426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.758572, 36.677799, 39.289612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205185, 0.036124, 0.978056,
		-0.973449, -0.111139, -0.200114,
		0.101471, -0.993148, 0.057969,
		32.789013, 36.379856, 39.307003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.117096, 36.596031, 39.554092>,  <32.717983, 37.075058, 39.266426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.117096, 36.596031, 39.554092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.453716, 36.385708, 39.603611>,  <32.655689, 36.259514, 39.633324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.453716, 36.385708, 39.603611>,  <32.117096, 36.596031, 39.554092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.453716, 36.385708, 39.603611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249603, -0.175266, 0.952355,
		-0.479059, -0.832351, -0.278738,
		0.841546, -0.525808, 0.123795,
		32.706181, 36.227966, 39.640751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.987206, 35.982037, 39.892445>,  <32.117096, 36.596031, 39.554092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.987206, 35.982037, 39.892445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.364681, 36.099335, 39.953709>,  <32.591167, 36.169712, 39.990467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.364681, 36.099335, 39.953709>,  <31.987206, 35.982037, 39.892445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.364681, 36.099335, 39.953709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056422, -0.313525, 0.947902,
		0.325989, -0.903166, -0.279324,
		0.943688, 0.293246, 0.153164,
		32.647789, 36.187309, 39.999657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.370621, 35.407646, 40.097961>,  <31.987206, 35.982037, 39.892445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.370621, 35.407646, 40.097961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.571690, 35.720737, 40.244747>,  <32.692329, 35.908592, 40.332821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.571690, 35.720737, 40.244747>,  <32.370621, 35.407646, 40.097961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.571690, 35.720737, 40.244747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091905, -0.373702, 0.922984,
		0.859580, -0.497682, -0.115912,
		0.502670, 0.782725, 0.366966,
		32.722492, 35.955555, 40.354836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.717556, 35.098423, 40.664581>,  <32.370621, 35.407646, 40.097961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.717556, 35.098423, 40.664581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.759071, 35.487244, 40.748817>,  <32.783981, 35.720535, 40.799358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.759071, 35.487244, 40.748817>,  <32.717556, 35.098423, 40.664581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.759071, 35.487244, 40.748817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025249, -0.214245, 0.976454,
		0.994279, -0.096023, -0.046778,
		0.103784, 0.972049, 0.210595,
		32.790207, 35.778858, 40.811996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.292831, 35.208714, 41.060253>,  <32.717556, 35.098423, 40.664581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.292831, 35.208714, 41.060253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.065460, 35.531654, 41.123592>,  <32.929039, 35.725418, 41.161594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.065460, 35.531654, 41.123592>,  <33.292831, 35.208714, 41.060253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.065460, 35.531654, 41.123592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023998, -0.176113, 0.984077,
		0.822385, 0.563175, 0.080732,
		-0.568425, 0.807353, 0.158348,
		32.894932, 35.773861, 41.171097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.597015, 35.604095, 41.672821>,  <33.292831, 35.208714, 41.060253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.597015, 35.604095, 41.672821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.219280, 35.733559, 41.649235>,  <32.992641, 35.811237, 41.635082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.219280, 35.733559, 41.649235>,  <33.597015, 35.604095, 41.672821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.219280, 35.733559, 41.649235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068732, -0.018806, 0.997458,
		0.321722, 0.945989, 0.040005,
		-0.944336, 0.323654, -0.058969,
		32.935978, 35.830654, 41.631542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.682755, 36.082443, 42.115585>,  <33.597015, 35.604095, 41.672821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.682755, 36.082443, 42.115585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.293240, 36.004700, 42.068333>,  <33.059528, 35.958054, 42.039982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.293240, 36.004700, 42.068333>,  <33.682755, 36.082443, 42.115585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.293240, 36.004700, 42.068333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144151, 0.125634, 0.981548,
		-0.175931, 0.972852, -0.150358,
		-0.973791, -0.194359, -0.118135,
		33.001102, 35.946392, 42.032890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.258286, 36.530586, 42.461460>,  <33.682755, 36.082443, 42.115585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.258286, 36.530586, 42.461460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.010937, 36.216293, 42.455215>,  <32.862530, 36.027718, 42.451469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.010937, 36.216293, 42.455215>,  <33.258286, 36.530586, 42.461460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.010937, 36.216293, 42.455215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166446, 0.111531, 0.979723,
		-0.768060, 0.608427, -0.199749,
		-0.618368, -0.785733, -0.015608,
		32.825428, 35.980572, 42.450535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.770741, 36.714272, 42.915691>,  <33.258286, 36.530586, 42.461460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.770741, 36.714272, 42.915691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.709621, 36.319859, 42.889172>,  <32.672951, 36.083210, 42.873260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.709621, 36.319859, 42.889172>,  <32.770741, 36.714272, 42.915691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.709621, 36.319859, 42.889172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317510, -0.014548, 0.948143,
		-0.935863, 0.165924, -0.310852,
		-0.152797, -0.986031, -0.066298,
		32.663784, 36.024048, 42.869282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.105896, 36.552940, 43.293407>,  <32.770741, 36.714272, 42.915691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.105896, 36.552940, 43.293407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.292095, 36.200619, 43.258774>,  <32.403816, 35.989227, 43.237995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.292095, 36.200619, 43.258774>,  <32.105896, 36.552940, 43.293407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.292095, 36.200619, 43.258774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236240, -0.217937, 0.946939,
		-0.852937, -0.420344, -0.309530,
		0.465498, -0.880803, -0.086585,
		32.431744, 35.936378, 43.232800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.692404, 36.224995, 43.831722>,  <32.105896, 36.552940, 43.293407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.692404, 36.224995, 43.831722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.993607, 35.972351, 43.757912>,  <32.174328, 35.820766, 43.713627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.993607, 35.972351, 43.757912>,  <31.692404, 36.224995, 43.831722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.993607, 35.972351, 43.757912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027027, -0.309879, 0.950392,
		-0.657457, -0.710665, -0.250411,
		0.753007, -0.631609, -0.184525,
		32.219509, 35.782867, 43.702553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.529915, 35.536633, 44.116611>,  <31.692404, 36.224995, 43.831722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.529915, 35.536633, 44.116611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.928759, 35.520283, 44.091003>,  <32.168064, 35.510475, 44.075638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.928759, 35.520283, 44.091003>,  <31.529915, 35.536633, 44.116611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.928759, 35.520283, 44.091003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047374, -0.324176, 0.944810,
		-0.059369, -0.945113, -0.321304,
		0.997111, -0.040871, -0.064020,
		32.227894, 35.508022, 44.071796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.824820, 34.904778, 44.418423>,  <31.529915, 35.536633, 44.116611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.824820, 34.904778, 44.418423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.141041, 35.149586, 44.426964>,  <32.330772, 35.296471, 44.432087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.141041, 35.149586, 44.426964>,  <31.824820, 34.904778, 44.418423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.141041, 35.149586, 44.426964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198926, -0.289614, 0.936244,
		0.579182, -0.735905, -0.350702,
		0.790555, 0.612019, 0.021349,
		32.378208, 35.333191, 44.433369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.349438, 34.477966, 44.725300>,  <31.824820, 34.904778, 44.418423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.349438, 34.477966, 44.725300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.461132, 34.858124, 44.780117>,  <32.528149, 35.086220, 44.813007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.461132, 34.858124, 44.780117>,  <32.349438, 34.477966, 44.725300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.461132, 34.858124, 44.780117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123306, -0.177028, 0.976451,
		0.952272, -0.255765, -0.166622,
		0.279238, 0.950392, 0.137041,
		32.544903, 35.143242, 44.821228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.002361, 34.415367, 45.037418>,  <32.349438, 34.477966, 44.725300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.002361, 34.415367, 45.037418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.850327, 34.777756, 45.111980>,  <32.759106, 34.995190, 45.156719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.850327, 34.777756, 45.111980>,  <33.002361, 34.415367, 45.037418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.850327, 34.777756, 45.111980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370092, -0.035733, 0.928307,
		0.847682, 0.421825, -0.321712,
		-0.380088, 0.905973, 0.186404,
		32.736301, 35.049549, 45.167900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.481342, 34.853298, 45.377224>,  <33.002361, 34.415367, 45.037418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.481342, 34.853298, 45.377224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.137489, 35.044659, 45.448963>,  <32.931179, 35.159477, 45.492004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.137489, 35.044659, 45.448963>,  <33.481342, 34.853298, 45.377224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.137489, 35.044659, 45.448963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209541, 0.009981, 0.977749,
		0.465970, 0.878083, -0.108826,
		-0.859631, 0.478405, 0.179343,
		32.879601, 35.188179, 45.502766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.657681, 35.287617, 45.862900>,  <33.481342, 34.853298, 45.377224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.657681, 35.287617, 45.862900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.258949, 35.281574, 45.894169>,  <33.019711, 35.277950, 45.912930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.258949, 35.281574, 45.894169>,  <33.657681, 35.287617, 45.862900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.258949, 35.281574, 45.894169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078179, 0.000483, 0.996939,
		-0.015098, 0.999886, 0.000699,
		-0.996825, -0.015106, 0.078177,
		32.959900, 35.277042, 45.917622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.542118, 35.811089, 46.288731>,  <33.657681, 35.287617, 45.862900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.542118, 35.811089, 46.288731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.207485, 35.593510, 46.314777>,  <33.006706, 35.462963, 46.330406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.207485, 35.593510, 46.314777>,  <33.542118, 35.811089, 46.288731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.207485, 35.593510, 46.314777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059849, 0.027402, 0.997831,
		-0.544556, 0.838669, 0.009630,
		-0.836586, -0.543952, 0.065116,
		32.956509, 35.430325, 46.334312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.086533, 36.107246, 46.782036>,  <33.542118, 35.811089, 46.288731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.086533, 36.107246, 46.782036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.989170, 35.719402, 46.772198>,  <32.930752, 35.486694, 46.766293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.989170, 35.719402, 46.772198>,  <33.086533, 36.107246, 46.782036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.989170, 35.719402, 46.772198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149691, 0.012497, 0.988654,
		-0.958303, 0.244331, -0.148185,
		-0.243411, -0.969611, -0.024598,
		32.916145, 35.428520, 46.764820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.563015, 36.054279, 47.209969>,  <33.086533, 36.107246, 46.782036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.563015, 36.054279, 47.209969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.717110, 35.686981, 47.173248>,  <32.809566, 35.466602, 47.151215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.717110, 35.686981, 47.173248>,  <32.563015, 36.054279, 47.209969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.717110, 35.686981, 47.173248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106002, -0.142851, 0.984051,
		-0.916710, -0.369360, -0.152366,
		0.385235, -0.918241, -0.091801,
		32.832680, 35.411510, 47.145710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.051506, 35.624928, 47.516434>,  <32.563015, 36.054279, 47.209969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.051506, 35.624928, 47.516434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.380146, 35.397354, 47.502068>,  <32.577332, 35.260811, 47.493446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.380146, 35.397354, 47.502068>,  <32.051506, 35.624928, 47.516434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.380146, 35.397354, 47.502068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077804, -0.174328, 0.981609,
		-0.564733, -0.803694, -0.187493,
		0.821598, -0.568934, -0.035918,
		32.626625, 35.226673, 47.491291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.869890, 35.008804, 47.864758>,  <32.051506, 35.624928, 47.516434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.869890, 35.008804, 47.864758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.269123, 35.017052, 47.888107>,  <32.508663, 35.021999, 47.902119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.269123, 35.017052, 47.888107>,  <31.869890, 35.008804, 47.864758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.269123, 35.017052, 47.888107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052596, -0.215016, 0.975193,
		0.032656, -0.976393, -0.213519,
		0.998082, 0.020616, 0.058376,
		32.568546, 35.023235, 47.905621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.982666, 34.569836, 48.507046>,  <31.869890, 35.008804, 47.864758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.982666, 34.569836, 48.507046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.339413, 34.737068, 48.438015>,  <32.553459, 34.837410, 48.396595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.339413, 34.737068, 48.438015>,  <31.982666, 34.569836, 48.507046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.339413, 34.737068, 48.438015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252102, -0.142704, 0.957121,
		0.375530, -0.897129, -0.232673,
		0.891864, 0.418084, -0.172578,
		32.606972, 34.862492, 48.386242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.411327, 34.063660, 48.684093>,  <31.982666, 34.569836, 48.507046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.411327, 34.063660, 48.684093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.597301, 34.416855, 48.709930>,  <32.708885, 34.628773, 48.725433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.597301, 34.416855, 48.709930>,  <32.411327, 34.063660, 48.684093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.597301, 34.416855, 48.709930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245649, -0.198746, 0.948766,
		0.850585, -0.425245, -0.309309,
		0.464932, 0.882987, 0.064589,
		32.736782, 34.681751, 48.729309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.012634, 33.887398, 48.985283>,  <32.411327, 34.063660, 48.684093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.012634, 33.887398, 48.985283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.933064, 34.272999, 49.055862>,  <32.885319, 34.504360, 49.098209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.933064, 34.272999, 49.055862>,  <33.012634, 33.887398, 48.985283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.933064, 34.272999, 49.055862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109266, -0.157108, 0.981518,
		0.973903, 0.214534, -0.074079,
		-0.198930, 0.963998, 0.176449,
		32.873383, 34.562199, 49.108799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.346584, 33.972507, 49.555466>,  <33.012634, 33.887398, 48.985283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.346584, 33.972507, 49.555466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.164078, 34.328423, 49.559433>,  <33.054573, 34.541973, 49.561813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.164078, 34.328423, 49.559433>,  <33.346584, 33.972507, 49.555466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.164078, 34.328423, 49.559433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221702, 0.102877, 0.969673,
		0.861781, 0.444631, -0.244207,
		-0.456269, 0.889786, 0.009918,
		33.027199, 34.595360, 49.562408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.764687, 34.435879, 49.977196>,  <33.346584, 33.972507, 49.555466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.764687, 34.435879, 49.977196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.398285, 34.596344, 49.978298>,  <33.178444, 34.692623, 49.978958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.398285, 34.596344, 49.978298>,  <33.764687, 34.435879, 49.977196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.398285, 34.596344, 49.978298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025181, 0.050640, 0.998399,
		0.400382, 0.914606, -0.056488,
		-0.916002, 0.401163, 0.002755,
		33.123486, 34.716694, 49.979126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.093815, 34.980694, 49.832249>,  <33.764687, 34.435879, 49.977196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.093815, 34.980694, 49.832249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.487175, 35.005249, 49.763943>,  <34.723190, 35.019981, 49.722958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.487175, 35.005249, 49.763943>,  <34.093815, 34.980694, 49.832249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.487175, 35.005249, 49.763943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159514, -0.156201, -0.974760,
		-0.086517, 0.985815, -0.143814,
		0.983397, 0.061392, -0.170766,
		34.782196, 35.023666, 49.712711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.219181, 35.319553, 49.226727>,  <34.093815, 34.980694, 49.832249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.219181, 35.319553, 49.226727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.562965, 35.117195, 49.256107>,  <34.769238, 34.995781, 49.273735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.562965, 35.117195, 49.256107>,  <34.219181, 35.319553, 49.226727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.562965, 35.117195, 49.256107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007770, -0.156590, -0.987633,
		0.511143, 0.848261, -0.138514,
		0.859461, -0.505898, 0.073449,
		34.820805, 34.965427, 49.278141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.661594, 35.679432, 48.802734>,  <34.219181, 35.319553, 49.226727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.661594, 35.679432, 48.802734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.834793, 35.319122, 48.816116>,  <34.938713, 35.102936, 48.824146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.834793, 35.319122, 48.816116>,  <34.661594, 35.679432, 48.802734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.834793, 35.319122, 48.816116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184671, 0.052319, -0.981407,
		0.882277, 0.431122, 0.189001,
		0.432994, -0.900776, 0.033456,
		34.964691, 35.048889, 48.826153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.319328, 35.740952, 48.403568>,  <34.661594, 35.679432, 48.802734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.319328, 35.740952, 48.403568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.210255, 35.356434, 48.419338>,  <35.144810, 35.125721, 48.428802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.210255, 35.356434, 48.419338>,  <35.319328, 35.740952, 48.403568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.210255, 35.356434, 48.419338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137610, -0.079528, -0.987289,
		0.952213, -0.263788, 0.153970,
		-0.272680, -0.961297, 0.039427,
		35.128452, 35.068047, 48.431168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.933285, 35.349087, 48.156445>,  <35.319328, 35.740952, 48.403568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.933285, 35.349087, 48.156445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.588310, 35.149464, 48.122646>,  <35.381325, 35.029690, 48.102367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.588310, 35.149464, 48.122646>,  <35.933285, 35.349087, 48.156445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.588310, 35.149464, 48.122646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163766, -0.117159, -0.979518,
		0.478937, -0.858611, 0.182771,
		-0.862438, -0.499059, -0.084499,
		35.329578, 34.999744, 48.097298>
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
