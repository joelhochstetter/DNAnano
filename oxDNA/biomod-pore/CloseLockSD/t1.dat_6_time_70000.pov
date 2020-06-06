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
	<4.679498, 14.497937, 15.037837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.455626, 14.820871, 15.112635>,  <4.321302, 15.014632, 15.157514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.455626, 14.820871, 15.112635>,  <4.679498, 14.497937, 15.037837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.455626, 14.820871, 15.112635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755590, 0.404464, 0.515260,
		0.340355, 0.429672, -0.836385,
		-0.559681, 0.807335, 0.186995,
		4.287722, 15.063072, 15.168733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.769106, 14.111283, 14.314558>,  <4.679498, 14.497937, 15.037837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.769106, 14.111283, 14.314558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.165935, 14.150410, 14.346121>,  <5.404032, 14.173885, 14.365059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.165935, 14.150410, 14.346121>,  <4.769106, 14.111283, 14.314558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.165935, 14.150410, 14.346121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118855, -0.934273, -0.336167,
		0.040838, 0.342880, -0.938491,
		0.992071, 0.097816, 0.078907,
		5.463556, 14.179754, 14.369793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.003725, 13.629579, 13.912111>,  <4.769106, 14.111283, 14.314558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.003725, 13.629579, 13.912111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.366039, 13.694195, 14.068805>,  <5.583428, 13.732965, 14.162821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.366039, 13.694195, 14.068805>,  <5.003725, 13.629579, 13.912111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.366039, 13.694195, 14.068805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319616, -0.867431, -0.381326,
		0.278202, 0.470604, -0.837338,
		0.905786, 0.161542, 0.391734,
		5.637775, 13.742658, 14.186325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.536593, 13.803471, 13.372858>,  <5.003725, 13.629579, 13.912111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.536593, 13.803471, 13.372858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.828051, 13.936017, 13.612615>,  <6.002926, 14.015545, 13.756469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.828051, 13.936017, 13.612615>,  <5.536593, 13.803471, 13.372858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.828051, 13.936017, 13.612615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636144, -0.651709, -0.413033,
		0.253764, 0.682254, -0.685662,
		0.728646, 0.331367, 0.599392,
		6.046645, 14.035427, 13.792433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.186104, 13.974201, 12.913830>,  <5.536593, 13.803471, 13.372858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.186104, 13.974201, 12.913830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.285212, 13.883185, 13.290518>,  <6.344676, 13.828576, 13.516531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.285212, 13.883185, 13.290518>,  <6.186104, 13.974201, 12.913830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.285212, 13.883185, 13.290518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772316, -0.540476, -0.333789,
		0.584926, 0.810008, 0.041819,
		0.247769, -0.227539, 0.941720,
		6.359542, 13.814923, 13.573033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.845993, 14.055839, 12.950456>,  <6.186104, 13.974201, 12.913830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.845993, 14.055839, 12.950456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.784509, 13.811902, 13.261445>,  <6.747618, 13.665540, 13.448039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.784509, 13.811902, 13.261445>,  <6.845993, 14.055839, 12.950456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.784509, 13.811902, 13.261445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779664, -0.558231, -0.283728,
		0.607039, 0.562557, 0.561278,
		-0.153710, -0.609842, 0.777474,
		6.738396, 13.628949, 13.494687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.462078, 13.859548, 13.138837>,  <6.845993, 14.055839, 12.950456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.462078, 13.859548, 13.138837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.243253, 13.570920, 13.308572>,  <7.111958, 13.397743, 13.410413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.243253, 13.570920, 13.308572>,  <7.462078, 13.859548, 13.138837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.243253, 13.570920, 13.308572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651614, -0.685289, -0.325236,
		0.525474, 0.098579, 0.845080,
		-0.547062, -0.721568, 0.424337,
		7.079134, 13.354449, 13.435873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.932805, 13.417562, 13.430792>,  <7.462078, 13.859548, 13.138837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.932805, 13.417562, 13.430792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.603635, 13.193951, 13.390239>,  <7.406133, 13.059783, 13.365907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.603635, 13.193951, 13.390239>,  <7.932805, 13.417562, 13.430792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.603635, 13.193951, 13.390239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566879, -0.795983, -0.212272,
		0.037968, -0.232156, 0.971937,
		-0.822926, -0.559030, -0.101383,
		7.356757, 13.026241, 13.359824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.170926, 12.805628, 13.660676>,  <7.932805, 13.417562, 13.430792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.170926, 12.805628, 13.660676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.820076, 12.697049, 13.502197>,  <7.609567, 12.631902, 13.407110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.820076, 12.697049, 13.502197>,  <8.170926, 12.805628, 13.660676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.820076, 12.697049, 13.502197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375695, -0.901709, -0.213948,
		-0.299179, -0.336508, 0.892891,
		-0.877123, -0.271446, -0.396197,
		7.556940, 12.615615, 13.383338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.983126, 12.112786, 13.836367>,  <8.170926, 12.805628, 13.660676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.983126, 12.112786, 13.836367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.784834, 12.171407, 13.493958>,  <7.665859, 12.206579, 13.288512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.784834, 12.171407, 13.493958>,  <7.983126, 12.112786, 13.836367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.784834, 12.171407, 13.493958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303402, -0.894332, -0.328812,
		-0.813756, -0.422720, 0.398883,
		-0.495730, 0.146551, -0.856023,
		7.636116, 12.215372, 13.237150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.565939, 11.492931, 13.700312>,  <7.983126, 12.112786, 13.836367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.565939, 11.492931, 13.700312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.624397, 11.681030, 13.352172>,  <7.659472, 11.793890, 13.143288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.624397, 11.681030, 13.352172>,  <7.565939, 11.492931, 13.700312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.624397, 11.681030, 13.352172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074341, -0.882529, -0.464344,
		-0.986466, 0.003159, -0.163936,
		0.146145, 0.470247, -0.870350,
		7.668241, 11.822104, 13.091066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.198250, 11.048068, 13.259452>,  <7.565939, 11.492931, 13.700312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.198250, 11.048068, 13.259452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.438954, 11.262792, 13.022903>,  <7.583377, 11.391625, 12.880975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.438954, 11.262792, 13.022903>,  <7.198250, 11.048068, 13.259452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.438954, 11.262792, 13.022903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240994, -0.827969, -0.506349,
		-0.761449, 0.162184, -0.627607,
		0.601761, 0.536809, -0.591371,
		7.619483, 11.423835, 12.845492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.214933, 10.646389, 12.732111>,  <7.198250, 11.048068, 13.259452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.214933, 10.646389, 12.732111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.537831, 10.874915, 12.672839>,  <7.731569, 11.012031, 12.637277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.537831, 10.874915, 12.672839>,  <7.214933, 10.646389, 12.732111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.537831, 10.874915, 12.672839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461485, -0.767474, -0.444988,
		-0.367951, 0.290832, -0.883192,
		0.807244, 0.571314, -0.148179,
		7.780004, 11.046309, 12.628386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.408197, 10.526842, 12.082523>,  <7.214933, 10.646389, 12.732111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.408197, 10.526842, 12.082523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.736002, 10.683848, 12.249537>,  <7.932684, 10.778052, 12.349744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.736002, 10.683848, 12.249537>,  <7.408197, 10.526842, 12.082523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.736002, 10.683848, 12.249537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553717, -0.730086, -0.400464,
		0.147645, 0.559380, -0.815656,
		0.819511, 0.392516, 0.417532,
		7.981855, 10.801603, 12.374796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.926164, 10.515261, 11.557545>,  <7.408197, 10.526842, 12.082523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.926164, 10.515261, 11.557545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.130429, 10.559855, 11.898553>,  <8.252989, 10.586611, 12.103158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.130429, 10.559855, 11.898553>,  <7.926164, 10.515261, 11.557545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.130429, 10.559855, 11.898553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690093, -0.644576, -0.329078,
		0.512828, 0.756368, -0.406096,
		0.510664, 0.111484, 0.852522,
		8.283628, 10.593300, 12.154309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.609891, 10.485631, 11.375860>,  <7.926164, 10.515261, 11.557545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.609891, 10.485631, 11.375860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.609878, 10.404824, 11.767613>,  <8.609870, 10.356340, 12.002666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.609878, 10.404824, 11.767613>,  <8.609891, 10.485631, 11.375860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.609878, 10.404824, 11.767613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643958, -0.749291, -0.154534,
		0.765061, 0.630676, 0.130115,
		-0.000034, -0.202017, 0.979382,
		8.609867, 10.344219, 12.061428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.352492, 10.427085, 11.593003>,  <8.609891, 10.485631, 11.375860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.352492, 10.427085, 11.593003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.112450, 10.246623, 11.857224>,  <8.968424, 10.138346, 12.015758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.112450, 10.246623, 11.857224>,  <9.352492, 10.427085, 11.593003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.112450, 10.246623, 11.857224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510649, -0.851684, -0.117778,
		0.615719, 0.266632, 0.741483,
		-0.600106, -0.451156, 0.660554,
		8.932418, 10.111277, 12.055390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.821496, 10.117948, 12.102674>,  <9.352492, 10.427085, 11.593003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.821496, 10.117948, 12.102674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.484989, 9.902617, 12.122577>,  <9.283085, 9.773419, 12.134519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.484989, 9.902617, 12.122577>,  <9.821496, 10.117948, 12.102674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.484989, 9.902617, 12.122577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540022, -0.841097, 0.030523,
		0.025419, 0.052548, 0.998295,
		-0.841267, -0.538325, 0.049757,
		9.232609, 9.741120, 12.137504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.969026, 9.660625, 12.575968>,  <9.821496, 10.117948, 12.102674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.969026, 9.660625, 12.575968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.640356, 9.514825, 12.400701>,  <9.443154, 9.427344, 12.295540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.640356, 9.514825, 12.400701>,  <9.969026, 9.660625, 12.575968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.640356, 9.514825, 12.400701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297525, -0.930022, 0.215727,
		-0.486139, 0.046890, 0.872622,
		-0.821674, -0.364501, -0.438169,
		9.393854, 9.405475, 12.269250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.725806, 9.163804, 13.036971>,  <9.969026, 9.660625, 12.575968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.725806, 9.163804, 13.036971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.575731, 9.077747, 12.676316>,  <9.485686, 9.026114, 12.459924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.575731, 9.077747, 12.676316>,  <9.725806, 9.163804, 13.036971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.575731, 9.077747, 12.676316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311021, -0.945522, 0.096193,
		-0.873213, -0.244338, 0.421661,
		-0.375187, -0.215143, -0.901637,
		9.463176, 9.013205, 12.405826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.367307, 8.544043, 13.039856>,  <9.725806, 9.163804, 13.036971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.367307, 8.544043, 13.039856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.474468, 8.578117, 12.655987>,  <9.538765, 8.598562, 12.425666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.474468, 8.578117, 12.655987>,  <9.367307, 8.544043, 13.039856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.474468, 8.578117, 12.655987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531512, -0.843858, 0.073471,
		-0.803568, -0.529761, -0.271352,
		0.267905, 0.085188, -0.959672,
		9.554839, 8.603674, 12.368085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.329006, 7.919272, 12.814195>,  <9.367307, 8.544043, 13.039856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.329006, 7.919272, 12.814195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.531276, 8.060970, 12.499538>,  <9.652637, 8.145988, 12.310744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.531276, 8.060970, 12.499538>,  <9.329006, 7.919272, 12.814195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.531276, 8.060970, 12.499538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525744, -0.849474, -0.044576,
		-0.684022, -0.391031, -0.615799,
		0.505675, 0.354244, -0.786641,
		9.682979, 8.167244, 12.263546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.256068, 7.516584, 12.168812>,  <9.329006, 7.919272, 12.814195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.256068, 7.516584, 12.168812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.612473, 7.697907, 12.158945>,  <9.826317, 7.806701, 12.153026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.612473, 7.697907, 12.158945>,  <9.256068, 7.516584, 12.168812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.612473, 7.697907, 12.158945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435416, -0.868695, -0.236181,
		-0.128490, 0.199700, -0.971396,
		0.891012, 0.453308, -0.024666,
		9.879777, 7.833899, 12.151546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.774661, 6.944547, 11.820339>,  <9.256068, 7.516584, 12.168812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.774661, 6.944547, 11.820339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.029284, 7.231732, 11.932996>,  <10.182058, 7.404043, 12.000590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.029284, 7.231732, 11.932996>,  <9.774661, 6.944547, 11.820339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.029284, 7.231732, 11.932996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770172, -0.610891, -0.183432,
		0.040355, 0.333678, -0.941823,
		0.636558, 0.717963, 0.281642,
		10.220252, 7.447121, 12.017488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.351135, 6.915095, 11.270055>,  <9.774661, 6.944547, 11.820339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.351135, 6.915095, 11.270055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.501906, 7.067319, 11.607836>,  <10.592369, 7.158653, 11.810505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.501906, 7.067319, 11.607836>,  <10.351135, 6.915095, 11.270055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.501906, 7.067319, 11.607836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821984, -0.557658, -0.115586,
		0.426929, 0.737694, -0.523010,
		0.376927, 0.380559, 0.844453,
		10.614985, 7.181487, 11.861172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.070670, 7.185698, 11.108493>,  <10.351135, 6.915095, 11.270055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.070670, 7.185698, 11.108493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.070529, 7.135588, 11.505342>,  <11.070444, 7.105523, 11.743451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.070529, 7.135588, 11.505342>,  <11.070670, 7.185698, 11.108493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.070529, 7.135588, 11.505342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741660, -0.665524, -0.083771,
		0.670776, 0.735788, 0.093144,
		-0.000352, -0.125273, 0.992122,
		11.070423, 7.098006, 11.802979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.842485, 7.149374, 11.382221>,  <11.070670, 7.185698, 11.108493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.842485, 7.149374, 11.382221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.598709, 6.944385, 11.624198>,  <11.452443, 6.821391, 11.769383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.598709, 6.944385, 11.624198>,  <11.842485, 7.149374, 11.382221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.598709, 6.944385, 11.624198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642729, -0.766092, -0.001481,
		0.464200, 0.387910, 0.796269,
		-0.609441, -0.512473, 0.604941,
		11.415876, 6.790643, 11.805680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.445618, 7.144028, 11.865255>,  <11.842485, 7.149374, 11.382221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.445618, 7.144028, 11.865255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.719958, 6.902742, 11.702411>,  <12.884562, 6.757970, 11.604704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.719958, 6.902742, 11.702411>,  <12.445618, 7.144028, 11.865255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.719958, 6.902742, 11.702411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333077, -0.237196, 0.912577,
		-0.647045, -0.761492, 0.038236,
		0.685851, -0.603215, -0.407112,
		12.925714, 6.721777, 11.580277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.954513, 7.248166, 12.351079>,  <12.445618, 7.144028, 11.865255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.954513, 7.248166, 12.351079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.294859, 7.369990, 12.522320>,  <13.499066, 7.443085, 12.625065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.294859, 7.369990, 12.522320>,  <12.954513, 7.248166, 12.351079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.294859, 7.369990, 12.522320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242735, 0.950539, -0.193790,
		-0.465949, 0.060974, 0.882708,
		0.850865, 0.304560, 0.428102,
		13.550118, 7.461359, 12.650750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.859900, 7.773847, 12.900188>,  <12.954513, 7.248166, 12.351079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.859900, 7.773847, 12.900188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.199838, 7.826865, 12.696151>,  <13.403801, 7.858675, 12.573729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.199838, 7.826865, 12.696151>,  <12.859900, 7.773847, 12.900188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.199838, 7.826865, 12.696151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131961, 0.990544, 0.037533,
		0.510244, 0.035415, 0.859300,
		0.849845, 0.132545, -0.510093,
		13.454791, 7.866628, 12.543123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.979958, 8.476917, 13.213614>,  <12.859900, 7.773847, 12.900188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.979958, 8.476917, 13.213614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.612472, 8.379662, 13.338094>,  <12.391980, 8.321308, 13.412782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.612472, 8.379662, 13.338094>,  <12.979958, 8.476917, 13.213614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.612472, 8.379662, 13.338094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252393, 0.244588, 0.936202,
		-0.303743, 0.938648, -0.163340,
		-0.918715, -0.243139, 0.311200,
		12.336857, 8.306720, 13.431454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.386373, 8.505884, 12.626281>,  <12.979958, 8.476917, 13.213614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.386373, 8.505884, 12.626281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.248951, 8.507545, 12.250631>,  <12.166498, 8.508541, 12.025242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.248951, 8.507545, 12.250631>,  <12.386373, 8.505884, 12.626281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.248951, 8.507545, 12.250631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764303, 0.582321, -0.277026,
		0.545721, -0.812948, -0.203232,
		-0.343554, 0.004151, -0.939123,
		12.145885, 8.508790, 11.968894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.889919, 8.330332, 12.004120>,  <12.386373, 8.505884, 12.626281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.889919, 8.330332, 12.004120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.614134, 8.566433, 11.836195>,  <12.448663, 8.708094, 11.735440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.614134, 8.566433, 11.836195>,  <12.889919, 8.330332, 12.004120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.614134, 8.566433, 11.836195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698168, 0.695899, -0.168184,
		0.192875, -0.409055, -0.891893,
		-0.689464, 0.590253, -0.419811,
		12.407294, 8.743508, 11.710252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.428505, 8.820669, 11.681776>,  <12.889919, 8.330332, 12.004120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.428505, 8.820669, 11.681776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.088780, 9.031574, 11.692071>,  <12.884946, 9.158117, 11.698248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.088780, 9.031574, 11.692071>,  <13.428505, 8.820669, 11.681776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.088780, 9.031574, 11.692071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527020, 0.844102, 0.098700,
		0.030315, 0.097392, -0.994784,
		-0.849312, 0.527263, 0.025738,
		12.833986, 9.189754, 11.699793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.486452, 9.415727, 11.221821>,  <13.428505, 8.820669, 11.681776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.486452, 9.415727, 11.221821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.228044, 9.497005, 11.516132>,  <13.072999, 9.545772, 11.692719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.228044, 9.497005, 11.516132>,  <13.486452, 9.415727, 11.221821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.228044, 9.497005, 11.516132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595469, 0.737230, 0.319232,
		-0.477572, 0.644363, -0.597262,
		-0.646020, 0.203195, 0.735778,
		13.034238, 9.557963, 11.736866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.532036, 10.073912, 11.582812>,  <13.486452, 9.415727, 11.221821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.532036, 10.073912, 11.582812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.245049, 9.983121, 11.319383>,  <13.072856, 9.928646, 11.161325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.245049, 9.983121, 11.319383>,  <13.532036, 10.073912, 11.582812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.245049, 9.983121, 11.319383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629242, 0.616742, 0.472953,
		0.298821, 0.753731, -0.585316,
		-0.717468, -0.226978, -0.658574,
		13.029808, 9.915028, 11.121810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.208029, 10.649398, 11.420323>,  <13.532036, 10.073912, 11.582812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.208029, 10.649398, 11.420323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.954792, 10.345924, 11.358880>,  <12.802850, 10.163840, 11.322014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.954792, 10.345924, 11.358880>,  <13.208029, 10.649398, 11.420323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.954792, 10.345924, 11.358880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729222, 0.517977, 0.447142,
		-0.259674, 0.395095, -0.881175,
		-0.633092, -0.758683, -0.153607,
		12.764865, 10.118320, 11.312798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.657600, 10.960682, 11.042816>,  <13.208029, 10.649398, 11.420323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.657600, 10.960682, 11.042816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.582268, 10.642235, 11.272852>,  <12.537068, 10.451166, 11.410873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.582268, 10.642235, 11.272852>,  <12.657600, 10.960682, 11.042816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.582268, 10.642235, 11.272852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801289, 0.463139, 0.378733,
		-0.567862, -0.389486, -0.725143,
		-0.188331, -0.796118, 0.575090,
		12.525768, 10.403399, 11.445379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.939037, 10.976625, 11.119970>,  <12.657600, 10.960682, 11.042816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.939037, 10.976625, 11.119970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.059925, 10.715216, 11.397552>,  <12.132458, 10.558371, 11.564100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.059925, 10.715216, 11.397552>,  <11.939037, 10.976625, 11.119970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.059925, 10.715216, 11.397552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752739, 0.283037, 0.594368,
		-0.584848, -0.701995, -0.406394,
		0.302219, -0.653524, 0.693953,
		12.150591, 10.519158, 11.605738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.368028, 10.646551, 11.335540>,  <11.939037, 10.976625, 11.119970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.368028, 10.646551, 11.335540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.648245, 10.629298, 11.620462>,  <11.816375, 10.618947, 11.791416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.648245, 10.629298, 11.620462>,  <11.368028, 10.646551, 11.335540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.648245, 10.629298, 11.620462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640841, 0.401115, 0.654546,
		-0.313949, -0.915012, 0.253356,
		0.700542, -0.043133, 0.712306,
		11.858408, 10.616359, 11.834154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.043228, 10.380124, 11.878417>,  <11.368028, 10.646551, 11.335540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.043228, 10.380124, 11.878417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.356879, 10.547308, 12.061918>,  <11.545070, 10.647618, 12.172019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.356879, 10.547308, 12.061918>,  <11.043228, 10.380124, 11.878417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.356879, 10.547308, 12.061918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620377, 0.508083, 0.597482,
		0.016638, -0.753102, 0.657694,
		0.784127, 0.417959, 0.458753,
		11.592117, 10.672696, 12.199544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.899432, 10.270214, 12.543077>,  <11.043228, 10.380124, 11.878417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.899432, 10.270214, 12.543077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.171656, 10.562660, 12.523854>,  <11.334990, 10.738129, 12.512321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.171656, 10.562660, 12.523854>,  <10.899432, 10.270214, 12.543077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.171656, 10.562660, 12.523854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474080, 0.489406, 0.731936,
		0.558651, -0.475340, 0.679677,
		0.680557, 0.731118, -0.048058,
		11.375823, 10.781995, 12.509438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.057327, 10.483908, 13.253383>,  <10.899432, 10.270214, 12.543077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.057327, 10.483908, 13.253383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.182333, 10.792427, 13.031595>,  <11.257337, 10.977539, 12.898523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.182333, 10.792427, 13.031595>,  <11.057327, 10.483908, 13.253383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.182333, 10.792427, 13.031595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335631, 0.635712, 0.695142,
		0.888644, -0.031144, 0.457540,
		0.312513, 0.771298, -0.554468,
		11.276087, 11.023816, 12.865254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.453905, 10.941803, 13.752215>,  <11.057327, 10.483908, 13.253383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.453905, 10.941803, 13.752215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.328741, 11.145114, 13.431282>,  <11.253642, 11.267101, 13.238722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.328741, 11.145114, 13.431282>,  <11.453905, 10.941803, 13.752215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.328741, 11.145114, 13.431282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269597, 0.762477, 0.588172,
		0.910716, 0.400352, -0.101557,
		-0.312911, 0.508279, -0.802334,
		11.234868, 11.297598, 13.190582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.608260, 11.550632, 13.970714>,  <11.453905, 10.941803, 13.752215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.608260, 11.550632, 13.970714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.325691, 11.601928, 13.692284>,  <11.156150, 11.632706, 13.525226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.325691, 11.601928, 13.692284>,  <11.608260, 11.550632, 13.970714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.325691, 11.601928, 13.692284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395761, 0.743777, 0.538674,
		0.586805, 0.656011, -0.474668,
		-0.706423, 0.128241, -0.696076,
		11.113765, 11.640400, 13.483460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.437376, 12.243662, 13.988718>,  <11.608260, 11.550632, 13.970714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.437376, 12.243662, 13.988718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.138480, 12.104512, 13.762226>,  <10.959143, 12.021023, 13.626330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.138480, 12.104512, 13.762226>,  <11.437376, 12.243662, 13.988718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.138480, 12.104512, 13.762226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625813, 0.655020, 0.423446,
		0.223587, 0.670770, -0.707161,
		-0.747239, -0.347874, -0.566230,
		10.914309, 12.000150, 13.592357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.084702, 12.823423, 13.858626>,  <11.437376, 12.243662, 13.988718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.084702, 12.823423, 13.858626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.827051, 12.524204, 13.794722>,  <10.672461, 12.344672, 13.756378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.827051, 12.524204, 13.794722>,  <11.084702, 12.823423, 13.858626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.827051, 12.524204, 13.794722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762140, 0.609846, 0.217325,
		-0.065139, 0.261746, -0.962936,
		-0.644127, -0.748049, -0.159762,
		10.633813, 12.299789, 13.746793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.489827, 13.139661, 13.569563>,  <11.084702, 12.823423, 13.858626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.489827, 13.139661, 13.569563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.372238, 12.791407, 13.727333>,  <10.301684, 12.582454, 13.821996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.372238, 12.791407, 13.727333>,  <10.489827, 13.139661, 13.569563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.372238, 12.791407, 13.727333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818104, 0.442582, 0.367188,
		-0.494253, -0.214739, -0.842378,
		-0.293972, -0.870637, 0.394426,
		10.284046, 12.530215, 13.845661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.726116, 13.020350, 13.282713>,  <10.489827, 13.139661, 13.569563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.726116, 13.020350, 13.282713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.770731, 12.790456, 13.606995>,  <9.797500, 12.652519, 13.801563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.770731, 12.790456, 13.606995>,  <9.726116, 13.020350, 13.282713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.770731, 12.790456, 13.606995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.895032, 0.296399, 0.333266,
		-0.431831, -0.762776, -0.481346,
		0.111537, -0.574734, 0.810704,
		9.804192, 12.618035, 13.850205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.107427, 12.668449, 13.463862>,  <9.726116, 13.020350, 13.282713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.107427, 12.668449, 13.463862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.291864, 12.671535, 13.818789>,  <9.402527, 12.673387, 14.031746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.291864, 12.671535, 13.818789>,  <9.107427, 12.668449, 13.463862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.291864, 12.671535, 13.818789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857247, 0.262126, 0.443190,
		-0.229171, -0.965003, 0.127477,
		0.461094, 0.007713, 0.887318,
		9.430193, 12.673850, 14.084985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.745073, 12.242284, 13.993387>,  <9.107427, 12.668449, 13.463862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.745073, 12.242284, 13.993387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.957203, 12.502223, 14.211178>,  <9.084480, 12.658187, 14.341852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.957203, 12.502223, 14.211178>,  <8.745073, 12.242284, 13.993387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.957203, 12.502223, 14.211178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817904, 0.223137, 0.530323,
		0.223137, -0.726572, 0.649849,
		-0.530323, -0.649849, -0.544476,
		9.116300, 12.697178, 14.374520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.465290, 12.137350, 14.703671>,  <8.745073, 12.242284, 13.993387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.465290, 12.137350, 14.703671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.650034, 12.491943, 14.715213>,  <8.760880, 12.704700, 14.722137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.650034, 12.491943, 14.715213>,  <8.465290, 12.137350, 14.703671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.650034, 12.491943, 14.715213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730523, 0.361752, 0.579199,
		0.503012, -0.288589, 0.814675,
		0.461861, 0.886483, 0.028855,
		8.788592, 12.757888, 14.723869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.530459, 12.334065, 15.468223>,  <8.465290, 12.137350, 14.703671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.530459, 12.334065, 15.468223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.568663, 12.649322, 15.225006>,  <8.591584, 12.838475, 15.079076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.568663, 12.649322, 15.225006>,  <8.530459, 12.334065, 15.468223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.568663, 12.649322, 15.225006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551681, 0.550351, 0.626707,
		0.828569, 0.275589, 0.487364,
		0.095508, 0.788140, -0.608041,
		8.597315, 12.885763, 15.042594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.946934, 12.839326, 15.831485>,  <8.530459, 12.334065, 15.468223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.946934, 12.839326, 15.831485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.729365, 13.044486, 15.565828>,  <8.598825, 13.167583, 15.406435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.729365, 13.044486, 15.565828>,  <8.946934, 12.839326, 15.831485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.729365, 13.044486, 15.565828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395059, 0.541739, 0.741921,
		0.740322, 0.665922, -0.092038,
		-0.543922, 0.512900, -0.664140,
		8.566189, 13.198356, 15.366587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.986131, 13.439317, 16.128504>,  <8.946934, 12.839326, 15.831485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.986131, 13.439317, 16.128504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.676359, 13.478118, 15.878431>,  <8.490497, 13.501398, 15.728388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.676359, 13.478118, 15.878431>,  <8.986131, 13.439317, 16.128504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.676359, 13.478118, 15.878431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386013, 0.710477, 0.588402,
		0.501253, 0.697003, -0.512770,
		-0.774429, 0.097002, -0.625181,
		8.444031, 13.507218, 15.690877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.887541, 14.208475, 16.070326>,  <8.986131, 13.439317, 16.128504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.887541, 14.208475, 16.070326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.532585, 14.063448, 15.956422>,  <8.319612, 13.976432, 15.888080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.532585, 14.063448, 15.956422>,  <8.887541, 14.208475, 16.070326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.532585, 14.063448, 15.956422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454629, 0.585687, 0.671031,
		-0.076515, 0.724924, -0.684566,
		-0.887388, -0.362568, -0.284758,
		8.266369, 13.954678, 15.870995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.535314, 14.495196, 16.482912>,  <8.887541, 14.208475, 16.070326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.535314, 14.495196, 16.482912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.668344, 14.202329, 16.245150>,  <9.748163, 14.026608, 16.102491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.668344, 14.202329, 16.245150>,  <9.535314, 14.495196, 16.482912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.668344, 14.202329, 16.245150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826030, -0.077965, 0.558208,
		-0.455045, -0.676646, 0.578864,
		0.332578, -0.732169, -0.594408,
		9.768118, 13.982678, 16.066828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.709249, 13.790734, 16.905539>,  <9.535314, 14.495196, 16.482912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.709249, 13.790734, 16.905539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.937434, 13.920778, 16.603844>,  <10.074345, 13.998805, 16.422827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.937434, 13.920778, 16.603844>,  <9.709249, 13.790734, 16.905539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.937434, 13.920778, 16.603844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785845, 0.050936, 0.616322,
		0.238790, -0.944304, -0.226430,
		0.570462, 0.325110, -0.754239,
		10.108573, 14.018312, 16.377571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.357121, 13.394288, 16.685459>,  <9.709249, 13.790734, 16.905539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.357121, 13.394288, 16.685459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.355063, 13.794064, 16.672205>,  <10.353828, 14.033929, 16.664253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.355063, 13.794064, 16.672205>,  <10.357121, 13.394288, 16.685459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.355063, 13.794064, 16.672205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633868, 0.028888, 0.772901,
		0.773424, -0.017026, -0.633660,
		-0.005146, 0.999438, -0.033134,
		10.353519, 14.093895, 16.662264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.101391, 13.545666, 16.629604>,  <10.357121, 13.394288, 16.685459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.101391, 13.545666, 16.629604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.869842, 13.823552, 16.800379>,  <10.730912, 13.990284, 16.902843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.869842, 13.823552, 16.800379>,  <11.101391, 13.545666, 16.629604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.869842, 13.823552, 16.800379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618931, 0.033469, 0.784732,
		0.530878, 0.718504, -0.449356,
		-0.578873, 0.694717, 0.426936,
		10.696179, 14.031967, 16.928459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.484927, 14.123399, 16.878183>,  <11.101391, 13.545666, 16.629604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.484927, 14.123399, 16.878183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.163136, 14.025064, 17.094471>,  <10.970060, 13.966063, 17.224243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.163136, 14.025064, 17.094471>,  <11.484927, 14.123399, 16.878183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.163136, 14.025064, 17.094471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588768, -0.209681, 0.780632,
		-0.078531, 0.946360, 0.313426,
		-0.804478, -0.245839, 0.540720,
		10.921792, 13.951312, 17.256687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.460561, 14.584500, 17.382090>,  <11.484927, 14.123399, 16.878183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.460561, 14.584500, 17.382090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.258727, 14.264449, 17.511822>,  <11.137627, 14.072418, 17.589661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.258727, 14.264449, 17.511822>,  <11.460561, 14.584500, 17.382090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.258727, 14.264449, 17.511822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631437, -0.085816, 0.770664,
		-0.588797, 0.593658, 0.548532,
		-0.504584, -0.800128, 0.324329,
		11.107352, 14.024410, 17.609121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.048936, 14.643808, 18.129522>,  <11.460561, 14.584500, 17.382090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.048936, 14.643808, 18.129522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.218687, 14.287784, 18.062954>,  <11.320538, 14.074169, 18.023014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.218687, 14.287784, 18.062954>,  <11.048936, 14.643808, 18.129522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.218687, 14.287784, 18.062954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731200, 0.228450, 0.642773,
		-0.534089, -0.394464, 0.747761,
		0.424377, -0.890061, -0.166419,
		11.346000, 14.020765, 18.013029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.005771, 14.089498, 18.706785>,  <11.048936, 14.643808, 18.129522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.005771, 14.089498, 18.706785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.330862, 14.057772, 18.475897>,  <11.525917, 14.038736, 18.337364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.330862, 14.057772, 18.475897>,  <11.005771, 14.089498, 18.706785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.330862, 14.057772, 18.475897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581663, 0.167870, 0.795919,
		0.033767, -0.982613, 0.182569,
		0.812729, -0.079317, -0.577218,
		11.574680, 14.033977, 18.302731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.435018, 13.638088, 19.016857>,  <11.005771, 14.089498, 18.706785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.435018, 13.638088, 19.016857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.662247, 13.877510, 18.790928>,  <11.798584, 14.021163, 18.655371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.662247, 13.877510, 18.790928>,  <11.435018, 13.638088, 19.016857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.662247, 13.877510, 18.790928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649163, 0.095944, 0.754574,
		0.505846, -0.795315, -0.334058,
		0.568073, 0.598556, -0.564822,
		11.832668, 14.057076, 18.621481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.086988, 13.480503, 19.282949>,  <11.435018, 13.638088, 19.016857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.086988, 13.480503, 19.282949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.098818, 13.833890, 19.095926>,  <12.105915, 14.045922, 18.983713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.098818, 13.833890, 19.095926>,  <12.086988, 13.480503, 19.282949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.098818, 13.833890, 19.095926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539459, 0.379685, 0.751548,
		0.841492, -0.274454, -0.465366,
		0.029573, 0.883467, -0.467558,
		12.107690, 14.098930, 18.955658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.777218, 13.645209, 19.220226>,  <12.086988, 13.480503, 19.282949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.777218, 13.645209, 19.220226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.564015, 13.983094, 19.200777>,  <12.436093, 14.185825, 19.189108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.564015, 13.983094, 19.200777>,  <12.777218, 13.645209, 19.220226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.564015, 13.983094, 19.200777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530175, 0.378216, 0.758859,
		0.659407, 0.378699, -0.649438,
		-0.533007, 0.844712, -0.048621,
		12.404113, 14.236508, 19.186190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.304335, 14.155538, 19.243319>,  <12.777218, 13.645209, 19.220226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.304335, 14.155538, 19.243319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.972225, 14.345341, 19.360273>,  <12.772960, 14.459223, 19.430447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.972225, 14.345341, 19.360273>,  <13.304335, 14.155538, 19.243319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.972225, 14.345341, 19.360273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489593, 0.370216, 0.789454,
		0.266356, 0.798613, -0.539696,
		-0.830273, 0.474507, 0.292386,
		12.723144, 14.487693, 19.447989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.578430, 14.816610, 19.605730>,  <13.304335, 14.155538, 19.243319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.578430, 14.816610, 19.605730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.195162, 14.788081, 19.716599>,  <12.965201, 14.770964, 19.783119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.195162, 14.788081, 19.716599>,  <13.578430, 14.816610, 19.605730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.195162, 14.788081, 19.716599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241263, 0.319660, 0.916302,
		-0.153954, 0.944844, -0.289081,
		-0.958170, -0.071323, 0.277169,
		12.907711, 14.766685, 19.799749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.371058, 15.483061, 19.898024>,  <13.578430, 14.816610, 19.605730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.371058, 15.483061, 19.898024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.108094, 15.232491, 20.065550>,  <12.950315, 15.082150, 20.166065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.108094, 15.232491, 20.065550>,  <13.371058, 15.483061, 19.898024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.108094, 15.232491, 20.065550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197829, 0.392826, 0.898082,
		-0.727101, 0.673262, -0.134323,
		-0.657410, -0.626423, 0.418815,
		12.910872, 15.044564, 20.191195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.027934, 15.894716, 20.469738>,  <13.371058, 15.483061, 19.898024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.027934, 15.894716, 20.469738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.978538, 15.504159, 20.540627>,  <12.948899, 15.269825, 20.583158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.978538, 15.504159, 20.540627>,  <13.027934, 15.894716, 20.469738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.978538, 15.504159, 20.540627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264724, 0.139702, 0.954151,
		-0.956384, 0.164744, 0.241223,
		-0.123491, -0.976393, 0.177220,
		12.941490, 15.211241, 20.593792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.698913, 15.856452, 21.137489>,  <13.027934, 15.894716, 20.469738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.698913, 15.856452, 21.137489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.825933, 15.482848, 21.072021>,  <12.902144, 15.258686, 21.032740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.825933, 15.482848, 21.072021>,  <12.698913, 15.856452, 21.137489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.825933, 15.482848, 21.072021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198414, -0.103336, 0.974656,
		-0.927251, -0.341975, 0.152506,
		0.317549, -0.934010, -0.163671,
		12.921197, 15.202645, 21.022921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.405055, 15.492797, 21.672079>,  <12.698913, 15.856452, 21.137489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.405055, 15.492797, 21.672079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.732089, 15.298169, 21.548918>,  <12.928309, 15.181393, 21.475021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.732089, 15.298169, 21.548918>,  <12.405055, 15.492797, 21.672079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.732089, 15.298169, 21.548918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375865, 0.045885, 0.925538,
		-0.436211, -0.872436, 0.220399,
		0.817585, -0.486570, -0.307902,
		12.977365, 15.152198, 21.456547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.527822, 15.000174, 22.175209>,  <12.405055, 15.492797, 21.672079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.527822, 15.000174, 22.175209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.870119, 15.062874, 21.977976>,  <13.075498, 15.100494, 21.859636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.870119, 15.062874, 21.977976>,  <12.527822, 15.000174, 22.175209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.870119, 15.062874, 21.977976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463895, 0.189605, 0.865362,
		0.229139, -0.969267, 0.089537,
		0.855744, 0.156752, -0.493084,
		13.126842, 15.109900, 21.830051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.998156, 14.909490, 22.711735>,  <12.527822, 15.000174, 22.175209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.998156, 14.909490, 22.711735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.240944, 15.047669, 22.425447>,  <13.386617, 15.130577, 22.253675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.240944, 15.047669, 22.425447>,  <12.998156, 14.909490, 22.711735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.240944, 15.047669, 22.425447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609461, 0.375651, 0.698171,
		0.510043, -0.859971, 0.017471,
		0.606970, 0.345450, -0.715718,
		13.423035, 15.151304, 22.210732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.606184, 14.773389, 22.956036>,  <12.998156, 14.909490, 22.711735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.606184, 14.773389, 22.956036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.643348, 15.081359, 22.703503>,  <13.665646, 15.266141, 22.551983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.643348, 15.081359, 22.703503>,  <13.606184, 14.773389, 22.956036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.643348, 15.081359, 22.703503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577040, 0.475096, 0.664310,
		0.811414, -0.426026, -0.400137,
		0.092910, 0.769926, -0.631334,
		13.671221, 15.312337, 22.514103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.224652, 14.994888, 23.076389>,  <13.606184, 14.773389, 22.956036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.224652, 14.994888, 23.076389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.087959, 15.317587, 22.883566>,  <14.005943, 15.511207, 22.767872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.087959, 15.317587, 22.883566>,  <14.224652, 14.994888, 23.076389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.087959, 15.317587, 22.883566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450734, 0.590787, 0.669186,
		0.824657, 0.011403, -0.565519,
		-0.341731, 0.806747, -0.482057,
		13.985440, 15.559611, 22.738949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.796194, 15.451939, 22.967117>,  <14.224652, 14.994888, 23.076389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.796194, 15.451939, 22.967117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.469898, 15.682633, 22.984756>,  <14.274121, 15.821051, 22.995340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.469898, 15.682633, 22.984756>,  <14.796194, 15.451939, 22.967117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.469898, 15.682633, 22.984756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347562, 0.427796, 0.834381,
		0.462354, 0.695963, -0.549422,
		-0.815739, 0.576737, 0.044097,
		14.225177, 15.855655, 22.997986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.034065, 16.142618, 22.935442>,  <14.796194, 15.451939, 22.967117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.034065, 16.142618, 22.935442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.668892, 16.166613, 23.096912>,  <14.449788, 16.181009, 23.193794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.668892, 16.166613, 23.096912>,  <15.034065, 16.142618, 22.935442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.668892, 16.166613, 23.096912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345760, 0.639156, 0.686971,
		-0.216803, 0.766734, -0.604248,
		-0.912933, 0.059987, 0.403677,
		14.395012, 16.184608, 23.218016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.998582, 16.800972, 23.315210>,  <15.034065, 16.142618, 22.935442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.998582, 16.800972, 23.315210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.680576, 16.616627, 23.472973>,  <14.489773, 16.506020, 23.567631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.680576, 16.616627, 23.472973>,  <14.998582, 16.800972, 23.315210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.680576, 16.616627, 23.472973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187200, 0.432055, 0.882204,
		-0.576982, 0.775198, -0.257216,
		-0.795015, -0.460865, 0.394405,
		14.442072, 16.478367, 23.591295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.054361, 17.088686, 23.906555>,  <14.998582, 16.800972, 23.315210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.054361, 17.088686, 23.906555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.787191, 16.795591, 23.958664>,  <14.626889, 16.619734, 23.989929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.787191, 16.795591, 23.958664>,  <15.054361, 17.088686, 23.906555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.787191, 16.795591, 23.958664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192613, -0.001114, 0.981274,
		-0.718872, 0.680509, 0.141879,
		-0.667924, -0.732739, 0.130274,
		14.586814, 16.575769, 23.997746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.453856, 17.325258, 24.277931>,  <15.054361, 17.088686, 23.906555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.453856, 17.325258, 24.277931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.486606, 16.935572, 24.362024>,  <14.506255, 16.701759, 24.412479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.486606, 16.935572, 24.362024>,  <14.453856, 17.325258, 24.277931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.486606, 16.935572, 24.362024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120812, 0.219087, 0.968197,
		-0.989293, -0.053871, 0.135635,
		0.081874, -0.974217, 0.210233,
		14.511168, 16.643307, 24.425095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.192412, 17.278748, 24.890995>,  <14.453856, 17.325258, 24.277931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.192412, 17.278748, 24.890995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.384858, 16.928776, 24.868988>,  <14.500326, 16.718792, 24.855783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.384858, 16.928776, 24.868988>,  <14.192412, 17.278748, 24.890995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.384858, 16.928776, 24.868988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421223, 0.175673, 0.889781,
		-0.768830, -0.451262, 0.453060,
		0.481115, -0.874929, -0.055019,
		14.529193, 16.666298, 24.852482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.074575, 17.038143, 25.485483>,  <14.192412, 17.278748, 24.890995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.074575, 17.038143, 25.485483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.381603, 16.810396, 25.367733>,  <14.565820, 16.673748, 25.297083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.381603, 16.810396, 25.367733>,  <14.074575, 17.038143, 25.485483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.381603, 16.810396, 25.367733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384340, 0.041296, 0.922267,
		-0.512953, -0.821045, 0.250529,
		0.767569, -0.569368, -0.294378,
		14.611874, 16.639585, 25.279419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.182533, 16.518902, 26.054277>,  <14.074575, 17.038143, 25.485483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.182533, 16.518902, 26.054277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.512333, 16.552797, 25.830484>,  <14.710213, 16.573133, 25.696209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.512333, 16.552797, 25.830484>,  <14.182533, 16.518902, 26.054277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.512333, 16.552797, 25.830484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562813, -0.225324, 0.795280,
		-0.058674, -0.970592, -0.233472,
		0.824499, 0.084739, -0.559482,
		14.759683, 16.578218, 25.662640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.536001, 15.954792, 26.242092>,  <14.182533, 16.518902, 26.054277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.536001, 15.954792, 26.242092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.781279, 16.238884, 26.103779>,  <14.928445, 16.409340, 26.020790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.781279, 16.238884, 26.103779>,  <14.536001, 15.954792, 26.242092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.781279, 16.238884, 26.103779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604690, -0.140378, 0.783992,
		0.508275, -0.689831, -0.515548,
		0.613193, 0.710230, -0.345784,
		14.965237, 16.451954, 26.000044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.224142, 15.720491, 26.342964>,  <14.536001, 15.954792, 26.242092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.224142, 15.720491, 26.342964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.279785, 16.112894, 26.288893>,  <15.313171, 16.348335, 26.256451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.279785, 16.112894, 26.288893>,  <15.224142, 15.720491, 26.342964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.279785, 16.112894, 26.288893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608023, 0.023133, 0.793582,
		0.781637, -0.192585, -0.593258,
		0.139108, 0.981007, -0.135178,
		15.321518, 16.407196, 26.248339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.980683, 15.894395, 26.459887>,  <15.224142, 15.720491, 26.342964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.980683, 15.894395, 26.459887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.784608, 16.240154, 26.504665>,  <15.666963, 16.447609, 26.531532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.784608, 16.240154, 26.504665>,  <15.980683, 15.894395, 26.459887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.784608, 16.240154, 26.504665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561116, 0.214669, 0.799416,
		0.666982, 0.454679, -0.590255,
		-0.490187, 0.864398, 0.111948,
		15.637551, 16.499474, 26.538250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.534105, 16.483652, 26.430330>,  <15.980683, 15.894395, 26.459887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.534105, 16.483652, 26.430330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.211758, 16.636921, 26.610888>,  <16.018349, 16.728882, 26.719221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.211758, 16.636921, 26.610888>,  <16.534105, 16.483652, 26.430330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.211758, 16.636921, 26.610888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587816, 0.426268, 0.687582,
		0.071047, 0.819436, -0.568749,
		-0.805869, 0.383170, 0.451393,
		15.969996, 16.751873, 26.746305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.718975, 17.128786, 26.505749>,  <16.534105, 16.483652, 26.430330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.718975, 17.128786, 26.505749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.417147, 17.089453, 26.765272>,  <16.236050, 17.065853, 26.920986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.417147, 17.089453, 26.765272>,  <16.718975, 17.128786, 26.505749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.417147, 17.089453, 26.765272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535031, 0.480275, 0.695038,
		-0.379951, 0.871589, -0.309791,
		-0.754572, -0.098333, 0.648808,
		16.190775, 17.059954, 26.959915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.573017, 17.781637, 26.790293>,  <16.718975, 17.128786, 26.505749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.573017, 17.781637, 26.790293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.415291, 17.526838, 27.055246>,  <16.320656, 17.373959, 27.214218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.415291, 17.526838, 27.055246>,  <16.573017, 17.781637, 26.790293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.415291, 17.526838, 27.055246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480267, 0.471679, 0.739501,
		-0.783492, 0.609718, 0.119938,
		-0.394315, -0.636995, 0.662384,
		16.296997, 17.335739, 27.253962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.326891, 18.191227, 27.248688>,  <16.573017, 17.781637, 26.790293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.326891, 18.191227, 27.248688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.372519, 17.849213, 27.451036>,  <16.399895, 17.644005, 27.572445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.372519, 17.849213, 27.451036>,  <16.326891, 18.191227, 27.248688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.372519, 17.849213, 27.451036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381499, 0.507854, 0.772362,
		-0.917304, 0.104887, 0.384125,
		0.114068, -0.855034, 0.505871,
		16.406738, 17.592703, 27.602798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.213961, 18.320469, 27.888872>,  <16.326891, 18.191227, 27.248688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.213961, 18.320469, 27.888872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.406567, 17.973608, 27.939764>,  <16.522131, 17.765491, 27.970299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.406567, 17.973608, 27.939764>,  <16.213961, 18.320469, 27.888872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.406567, 17.973608, 27.939764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332935, 0.315261, 0.888687,
		-0.810738, -0.385558, 0.440509,
		0.481516, -0.867154, 0.127228,
		16.551022, 17.713463, 27.977932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.011587, 18.020185, 28.523434>,  <16.213961, 18.320469, 27.888872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.011587, 18.020185, 28.523434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.372017, 17.895128, 28.403219>,  <16.588274, 17.820095, 28.331091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.372017, 17.895128, 28.403219>,  <16.011587, 18.020185, 28.523434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.372017, 17.895128, 28.403219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379378, 0.232554, 0.895540,
		-0.210092, -0.920964, 0.328157,
		0.901074, -0.312642, -0.300535,
		16.642340, 17.801336, 28.313059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.141300, 17.701006, 29.203796>,  <16.011587, 18.020185, 28.523434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.141300, 17.701006, 29.203796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.477835, 17.707499, 28.987690>,  <16.679756, 17.711393, 28.858027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.477835, 17.707499, 28.987690>,  <16.141300, 17.701006, 29.203796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.477835, 17.707499, 28.987690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528620, 0.183780, 0.828726,
		0.112743, -0.982833, 0.146039,
		0.841338, 0.016233, -0.540265,
		16.730236, 17.712368, 28.825611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.616283, 17.324495, 29.589581>,  <16.141300, 17.701006, 29.203796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.616283, 17.324495, 29.589581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.817341, 17.560350, 29.336700>,  <16.937975, 17.701864, 29.184973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.817341, 17.560350, 29.336700>,  <16.616283, 17.324495, 29.589581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.817341, 17.560350, 29.336700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646897, 0.228575, 0.727514,
		0.573476, -0.774647, -0.266545,
		0.502642, 0.589639, -0.632200,
		16.968134, 17.737242, 29.147041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.242308, 17.258698, 29.891481>,  <16.616283, 17.324495, 29.589581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.242308, 17.258698, 29.891481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.264124, 17.560934, 29.630375>,  <17.277214, 17.742277, 29.473711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.264124, 17.560934, 29.630375>,  <17.242308, 17.258698, 29.891481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.264124, 17.560934, 29.630375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675342, 0.453618, 0.581501,
		0.735485, -0.472557, -0.485543,
		0.054541, 0.755593, -0.652767,
		17.280487, 17.787613, 29.434546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.900833, 17.502977, 29.873131>,  <17.242308, 17.258698, 29.891481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.900833, 17.502977, 29.873131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.731363, 17.840582, 29.741587>,  <17.629683, 18.043144, 29.662661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.731363, 17.840582, 29.741587>,  <17.900833, 17.502977, 29.873131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.731363, 17.840582, 29.741587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757280, 0.529240, 0.382664,
		0.497019, -0.086916, -0.863376,
		-0.423673, 0.844009, -0.328861,
		17.604261, 18.093784, 29.642929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.448475, 17.944439, 29.776524>,  <17.900833, 17.502977, 29.873131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.448475, 17.944439, 29.776524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.156124, 18.217417, 29.780230>,  <17.980713, 18.381205, 29.782454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.156124, 18.217417, 29.780230>,  <18.448475, 17.944439, 29.776524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.156124, 18.217417, 29.780230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660457, 0.703775, 0.261718,
		0.172089, 0.197401, -0.965100,
		-0.730877, 0.682446, 0.009263,
		17.936861, 18.422152, 29.783009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.752773, 18.554068, 29.516411>,  <18.448475, 17.944439, 29.776524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.752773, 18.554068, 29.516411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.446724, 18.659334, 29.751471>,  <18.263094, 18.722494, 29.892506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.446724, 18.659334, 29.751471>,  <18.752773, 18.554068, 29.516411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.446724, 18.659334, 29.751471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548557, 0.744313, 0.380898,
		-0.337155, 0.613792, -0.713853,
		-0.765122, 0.263167, 0.587649,
		18.217188, 18.738285, 29.927765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.712831, 19.219913, 29.320734>,  <18.752773, 18.554068, 29.516411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.712831, 19.219913, 29.320734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.538624, 19.174316, 29.677908>,  <18.434099, 19.146957, 29.892212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.538624, 19.174316, 29.677908>,  <18.712831, 19.219913, 29.320734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.538624, 19.174316, 29.677908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520587, 0.777352, 0.353149,
		-0.734380, 0.618651, -0.279206,
		-0.435518, -0.113994, 0.892933,
		18.407969, 19.140118, 29.945787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.461994, 19.832905, 29.522121>,  <18.712831, 19.219913, 29.320734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.461994, 19.832905, 29.522121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.467327, 19.651766, 29.878717>,  <18.470528, 19.543083, 30.092674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.467327, 19.651766, 29.878717>,  <18.461994, 19.832905, 29.522121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.467327, 19.651766, 29.878717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407615, 0.816586, 0.408702,
		-0.913056, 0.357936, 0.195473,
		0.013332, -0.452846, 0.891489,
		18.471327, 19.515911, 30.146164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.167025, 20.323256, 30.022209>,  <18.461994, 19.832905, 29.522121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.167025, 20.323256, 30.022209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.392914, 20.066092, 30.229189>,  <18.528448, 19.911793, 30.353376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.392914, 20.066092, 30.229189>,  <18.167025, 20.323256, 30.022209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.392914, 20.066092, 30.229189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494028, 0.765599, 0.412061,
		-0.661078, 0.022935, 0.749967,
		0.564723, -0.642909, 0.517451,
		18.562330, 19.873219, 30.384424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.134624, 20.542593, 30.595348>,  <18.167025, 20.323256, 30.022209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.134624, 20.542593, 30.595348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.463150, 20.322449, 30.655413>,  <18.660265, 20.190361, 30.691450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.463150, 20.322449, 30.655413>,  <18.134624, 20.542593, 30.595348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.463150, 20.322449, 30.655413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428054, 0.768532, 0.475530,
		-0.377116, -0.326282, 0.866789,
		0.821312, -0.550363, 0.150159,
		18.709543, 20.157339, 30.700460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.224577, 20.548166, 31.370802>,  <18.134624, 20.542593, 30.595348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.224577, 20.548166, 31.370802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.565008, 20.476736, 31.173306>,  <18.769266, 20.433878, 31.054808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.565008, 20.476736, 31.173306>,  <18.224577, 20.548166, 31.370802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.565008, 20.476736, 31.173306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443232, 0.748460, 0.493309,
		0.281451, -0.638684, 0.716148,
		0.851076, -0.178577, -0.493740,
		18.820332, 20.423162, 31.025183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.856691, 20.472029, 31.829044>,  <18.224577, 20.548166, 31.370802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.856691, 20.472029, 31.829044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.994438, 20.655626, 31.501450>,  <19.077085, 20.765785, 31.304893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.994438, 20.655626, 31.501450>,  <18.856691, 20.472029, 31.829044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.994438, 20.655626, 31.501450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495559, 0.652049, 0.573806,
		0.797392, -0.603455, -0.002914,
		0.344366, 0.458993, -0.818986,
		19.097748, 20.793324, 31.255754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.542362, 20.500286, 31.791832>,  <18.856691, 20.472029, 31.829044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.542362, 20.500286, 31.791832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.378044, 20.826988, 31.629765>,  <19.279453, 21.023008, 31.532524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.378044, 20.826988, 31.629765>,  <19.542362, 20.500286, 31.791832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.378044, 20.826988, 31.629765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494249, 0.572926, 0.653815,
		0.766137, 0.068330, -0.639034,
		-0.410794, 0.816754, -0.405168,
		19.254807, 21.072014, 31.508215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.710102, 20.216974, 32.530342>,  <19.542362, 20.500286, 31.791832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.710102, 20.216974, 32.530342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.696318, 20.049305, 32.893242>,  <19.688047, 19.948704, 33.110981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.696318, 20.049305, 32.893242>,  <19.710102, 20.216974, 32.530342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.696318, 20.049305, 32.893242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866479, -0.464901, -0.181884,
		0.498023, 0.779847, 0.379224,
		-0.034459, -0.419172, 0.907253,
		19.685980, 19.923553, 33.165417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.211716, 20.540255, 32.896446>,  <19.710102, 20.216974, 32.530342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.211716, 20.540255, 32.896446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.136501, 20.156734, 32.981625>,  <20.091372, 19.926622, 33.032730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.136501, 20.156734, 32.981625>,  <20.211716, 20.540255, 32.896446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.136501, 20.156734, 32.981625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943697, -0.236458, -0.231350,
		0.272171, 0.157454, 0.949279,
		-0.188038, -0.958799, 0.212946,
		20.080090, 19.869095, 33.045509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.806755, 20.265825, 33.408241>,  <20.211716, 20.540255, 32.896446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.806755, 20.265825, 33.408241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.625566, 20.012379, 33.157372>,  <20.516853, 19.860312, 33.006851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.625566, 20.012379, 33.157372>,  <20.806755, 20.265825, 33.408241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.625566, 20.012379, 33.157372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891486, -0.315404, -0.325227,
		0.008255, -0.706437, 0.707728,
		-0.452973, -0.633615, -0.627174,
		20.489674, 19.822294, 32.969219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.096806, 20.215523, 32.714287>,  <20.806755, 20.265825, 33.408241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.096806, 20.215523, 32.714287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.419079, 20.426544, 32.606537>,  <21.612442, 20.553158, 32.541885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.419079, 20.426544, 32.606537>,  <21.096806, 20.215523, 32.714287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.419079, 20.426544, 32.606537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102121, -0.324246, -0.940444,
		-0.583480, 0.785208, -0.207365,
		0.805681, 0.527554, -0.269378,
		21.660784, 20.584810, 32.525723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.009781, 20.492598, 32.040920>,  <21.096806, 20.215523, 32.714287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.009781, 20.492598, 32.040920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.409334, 20.485632, 32.023354>,  <21.649067, 20.481453, 32.012814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.409334, 20.485632, 32.023354>,  <21.009781, 20.492598, 32.040920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.409334, 20.485632, 32.023354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046794, -0.492151, -0.869251,
		-0.006475, 0.870336, -0.492416,
		0.998884, -0.017414, -0.043913,
		21.709000, 20.480408, 32.010181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.357046, 20.743834, 31.489893>,  <21.009781, 20.492598, 32.040920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.357046, 20.743834, 31.489893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.613821, 20.479471, 31.645391>,  <21.767885, 20.320854, 31.738691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.613821, 20.479471, 31.645391>,  <21.357046, 20.743834, 31.489893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.613821, 20.479471, 31.645391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011813, -0.515464, -0.856829,
		0.766666, 0.545438, -0.338703,
		0.641937, -0.660903, 0.388746,
		21.806402, 20.281200, 31.762014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.949802, 20.661318, 31.054058>,  <21.357046, 20.743834, 31.489893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.949802, 20.661318, 31.054058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.891682, 20.307737, 31.231831>,  <21.856810, 20.095589, 31.338495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.891682, 20.307737, 31.231831>,  <21.949802, 20.661318, 31.054058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.891682, 20.307737, 31.231831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178925, -0.465270, -0.866896,
		0.973074, -0.046440, 0.225765,
		-0.145301, -0.883950, 0.444433,
		21.848091, 20.042553, 31.365160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.540743, 20.263721, 30.875174>,  <21.949802, 20.661318, 31.054058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.540743, 20.263721, 30.875174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.221951, 20.043238, 30.973963>,  <22.030676, 19.910948, 31.033236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.221951, 20.043238, 30.973963>,  <22.540743, 20.263721, 30.875174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.221951, 20.043238, 30.973963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051754, -0.345067, -0.937150,
		0.601786, -0.759671, 0.246484,
		-0.796979, -0.551207, 0.246972,
		21.982857, 19.877876, 31.048054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.549303, 19.572552, 30.645391>,  <22.540743, 20.263721, 30.875174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.549303, 19.572552, 30.645391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.156097, 19.603619, 30.711908>,  <21.920174, 19.622259, 30.751818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.156097, 19.603619, 30.711908>,  <22.549303, 19.572552, 30.645391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.156097, 19.603619, 30.711908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183529, -0.422755, -0.887466,
		0.001372, -0.902910, 0.429829,
		-0.983013, 0.077668, 0.166290,
		21.861193, 19.626919, 30.761795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.251797, 18.905268, 30.442274>,  <22.549303, 19.572552, 30.645391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.251797, 18.905268, 30.442274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.943354, 19.159838, 30.449783>,  <21.758287, 19.312580, 30.454288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.943354, 19.159838, 30.449783>,  <22.251797, 18.905268, 30.442274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.943354, 19.159838, 30.449783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462150, -0.539181, -0.704060,
		-0.437960, -0.551584, 0.709892,
		-0.771109, 0.636426, 0.018775,
		21.712021, 19.350765, 30.455416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.590338, 18.573668, 30.784805>,  <22.251797, 18.905268, 30.442274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.590338, 18.573668, 30.784805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.492931, 18.850920, 30.513433>,  <21.434486, 19.017271, 30.350611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.492931, 18.850920, 30.513433>,  <21.590338, 18.573668, 30.784805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.492931, 18.850920, 30.513433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410912, -0.707339, -0.575172,
		-0.878551, 0.138711, 0.457064,
		-0.243517, 0.693130, -0.678431,
		21.419876, 19.058859, 30.309904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.961311, 18.454199, 30.732189>,  <21.590338, 18.573668, 30.784805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.961311, 18.454199, 30.732189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.043388, 18.663282, 30.401209>,  <21.092634, 18.788733, 30.202621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.043388, 18.663282, 30.401209>,  <20.961311, 18.454199, 30.732189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.043388, 18.663282, 30.401209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266700, -0.783581, -0.561134,
		-0.941683, 0.335822, -0.021379,
		0.205193, 0.522708, -0.827449,
		21.104946, 18.820095, 30.152975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.525118, 18.206388, 30.210255>,  <20.961311, 18.454199, 30.732189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.525118, 18.206388, 30.210255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.762766, 18.402729, 29.955355>,  <20.905355, 18.520533, 29.802414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.762766, 18.402729, 29.955355>,  <20.525118, 18.206388, 30.210255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.762766, 18.402729, 29.955355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373846, -0.532967, -0.759069,
		-0.712221, 0.689212, -0.133145,
		0.594121, 0.490849, -0.637249,
		20.941002, 18.549984, 29.764179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.065437, 18.358500, 29.752058>,  <20.525118, 18.206388, 30.210255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.065437, 18.358500, 29.752058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.419600, 18.394196, 29.569590>,  <20.632097, 18.415613, 29.460110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.419600, 18.394196, 29.569590>,  <20.065437, 18.358500, 29.752058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.419600, 18.394196, 29.569590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320038, -0.594679, -0.737518,
		-0.337090, 0.798995, -0.497974,
		0.885407, 0.089239, -0.456169,
		20.685223, 18.420967, 29.432739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.750307, 18.579964, 29.192142>,  <20.065437, 18.358500, 29.752058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.750307, 18.579964, 29.192142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.124517, 18.459938, 29.117571>,  <20.349043, 18.387922, 29.072828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.124517, 18.459938, 29.117571>,  <19.750307, 18.579964, 29.192142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.124517, 18.459938, 29.117571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278168, -0.300421, -0.912343,
		0.217754, 0.905378, -0.364520,
		0.935524, -0.300064, -0.186429,
		20.405174, 18.369919, 29.061642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.862560, 18.872988, 28.610067>,  <19.750307, 18.579964, 29.192142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.862560, 18.872988, 28.610067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.140314, 18.585745, 28.628618>,  <20.306967, 18.413399, 28.639750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.140314, 18.585745, 28.628618>,  <19.862560, 18.872988, 28.610067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.140314, 18.585745, 28.628618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223181, -0.276182, -0.934834,
		0.684121, 0.638783, -0.352044,
		0.694384, -0.718108, 0.046378,
		20.348629, 18.370312, 28.642532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.208643, 18.819227, 27.988020>,  <19.862560, 18.872988, 28.610067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.208643, 18.819227, 27.988020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.295176, 18.452150, 28.121311>,  <20.347095, 18.231903, 28.201286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.295176, 18.452150, 28.121311>,  <20.208643, 18.819227, 27.988020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.295176, 18.452150, 28.121311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407499, -0.395027, -0.823346,
		0.887213, 0.042324, -0.459415,
		0.216329, -0.917694, 0.333226,
		20.360075, 18.176842, 28.221279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.429098, 18.541779, 27.416985>,  <20.208643, 18.819227, 27.988020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.429098, 18.541779, 27.416985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.357347, 18.229866, 27.656904>,  <20.314297, 18.042719, 27.800856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.357347, 18.229866, 27.656904>,  <20.429098, 18.541779, 27.416985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.357347, 18.229866, 27.656904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243789, -0.555439, -0.795018,
		0.953095, -0.288833, -0.090469,
		-0.179377, -0.779784, 0.599801,
		20.303534, 17.995932, 27.836845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.705755, 17.898327, 27.076422>,  <20.429098, 18.541779, 27.416985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.705755, 17.898327, 27.076422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.455248, 17.748903, 27.350136>,  <20.304943, 17.659248, 27.514364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.455248, 17.748903, 27.350136>,  <20.705755, 17.898327, 27.076422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.455248, 17.748903, 27.350136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388172, -0.611778, -0.689239,
		0.676101, -0.697267, 0.238130,
		-0.626266, -0.373560, 0.684284,
		20.267368, 17.636835, 27.555422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.666267, 17.237398, 26.918148>,  <20.705755, 17.898327, 27.076422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.666267, 17.237398, 26.918148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.347347, 17.315031, 27.146759>,  <20.155994, 17.361610, 27.283926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.347347, 17.315031, 27.146759>,  <20.666267, 17.237398, 26.918148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.347347, 17.315031, 27.146759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567935, -0.561825, -0.601500,
		0.204358, -0.804167, 0.558169,
		-0.797300, 0.194082, 0.571528,
		20.108156, 17.373257, 27.318218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.328629, 16.659168, 26.824396>,  <20.666267, 17.237398, 26.918148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.328629, 16.659168, 26.824396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.052999, 16.906237, 26.976007>,  <19.887623, 17.054478, 27.066975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.052999, 16.906237, 26.976007>,  <20.328629, 16.659168, 26.824396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.052999, 16.906237, 26.976007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708094, -0.462553, -0.533524,
		-0.154220, -0.636025, 0.756101,
		-0.689071, 0.617671, 0.379031,
		19.846279, 17.091537, 27.089716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.704441, 16.233084, 27.084160>,  <20.328629, 16.659168, 26.824396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.704441, 16.233084, 27.084160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.614939, 16.609844, 26.983959>,  <19.561237, 16.835901, 26.923840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.614939, 16.609844, 26.983959>,  <19.704441, 16.233084, 27.084160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.614939, 16.609844, 26.983959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775145, -0.327783, -0.540100,
		-0.590833, 0.073325, 0.803455,
		-0.223757, 0.941903, -0.250503,
		19.547812, 16.892416, 26.908808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.979628, 16.317707, 27.314596>,  <19.704441, 16.233084, 27.084160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.979628, 16.317707, 27.314596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.083744, 16.573267, 27.025028>,  <19.146214, 16.726603, 26.851288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.083744, 16.573267, 27.025028>,  <18.979628, 16.317707, 27.314596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.083744, 16.573267, 27.025028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861830, -0.184295, -0.472530,
		-0.435313, 0.746891, 0.502650,
		0.260293, 0.638897, -0.723918,
		19.161831, 16.764936, 26.807854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.452297, 16.488298, 26.936634>,  <18.979628, 16.317707, 27.314596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.452297, 16.488298, 26.936634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.686237, 16.683144, 26.677197>,  <18.826601, 16.800051, 26.521534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.686237, 16.683144, 26.677197>,  <18.452297, 16.488298, 26.936634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.686237, 16.683144, 26.677197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672218, -0.156436, -0.723637,
		-0.453955, 0.859215, 0.235953,
		0.584848, 0.487111, -0.648595,
		18.861692, 16.829277, 26.482618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.982880, 16.681385, 26.461140>,  <18.452297, 16.488298, 26.936634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.982880, 16.681385, 26.461140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.323078, 16.743801, 26.260220>,  <18.527197, 16.781252, 26.139668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.323078, 16.743801, 26.260220>,  <17.982880, 16.681385, 26.461140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.323078, 16.743801, 26.260220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464739, -0.224284, -0.856571,
		-0.246319, 0.961950, -0.118234,
		0.850497, 0.156042, -0.502301,
		18.578228, 16.790613, 26.109529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.733793, 17.094101, 25.955877>,  <17.982880, 16.681385, 26.461140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.733793, 17.094101, 25.955877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.061651, 16.894489, 25.843344>,  <18.258366, 16.774723, 25.775824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.061651, 16.894489, 25.843344>,  <17.733793, 17.094101, 25.955877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.061651, 16.894489, 25.843344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453797, -0.265861, -0.850521,
		0.349639, 0.824796, -0.444370,
		0.819647, -0.499029, -0.281335,
		18.307545, 16.744780, 25.758944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.817339, 17.305805, 25.289347>,  <17.733793, 17.094101, 25.955877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.817339, 17.305805, 25.289347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.034632, 16.972597, 25.331264>,  <18.165007, 16.772673, 25.356415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.034632, 16.972597, 25.331264>,  <17.817339, 17.305805, 25.289347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.034632, 16.972597, 25.331264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399930, -0.366486, -0.840086,
		0.738212, 0.414450, -0.532235,
		0.543230, -0.833019, 0.104794,
		18.197601, 16.722692, 25.362703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.111561, 17.184559, 24.624331>,  <17.817339, 17.305805, 25.289347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.111561, 17.184559, 24.624331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.127869, 16.827770, 24.804428>,  <18.137653, 16.613697, 24.912487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.127869, 16.827770, 24.804428>,  <18.111561, 17.184559, 24.624331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.127869, 16.827770, 24.804428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181032, -0.449756, -0.874613,
		0.982632, -0.045851, -0.179812,
		0.040770, -0.891974, 0.450245,
		18.140100, 16.560179, 24.939501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.441099, 16.858490, 24.169062>,  <18.111561, 17.184559, 24.624331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.441099, 16.858490, 24.169062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.260599, 16.591282, 24.405746>,  <18.152300, 16.430956, 24.547756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.260599, 16.591282, 24.405746>,  <18.441099, 16.858490, 24.169062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.260599, 16.591282, 24.405746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040910, -0.646873, -0.761499,
		0.891460, -0.367833, 0.264572,
		-0.451249, -0.668022, 0.591710,
		18.125225, 16.390875, 24.583260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.731674, 16.240261, 24.013039>,  <18.441099, 16.858490, 24.169062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.731674, 16.240261, 24.013039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.381008, 16.163370, 24.189451>,  <18.170609, 16.117235, 24.295298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.381008, 16.163370, 24.189451>,  <18.731674, 16.240261, 24.013039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.381008, 16.163370, 24.189451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241320, -0.617349, -0.748762,
		0.416201, -0.762843, 0.494821,
		-0.876665, -0.192225, 0.441031,
		18.118008, 16.105703, 24.321760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.573181, 15.491610, 23.905928>,  <18.731674, 16.240261, 24.013039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.573181, 15.491610, 23.905928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.237528, 15.701896, 23.961758>,  <18.036137, 15.828068, 23.995255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.237528, 15.701896, 23.961758>,  <18.573181, 15.491610, 23.905928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.237528, 15.701896, 23.961758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434734, -0.494000, -0.752974,
		-0.326900, -0.692523, 0.643077,
		-0.839132, 0.525716, 0.139575,
		17.985788, 15.859611, 24.003630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.076536, 14.961881, 23.871384>,  <18.573181, 15.491610, 23.905928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.076536, 14.961881, 23.871384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.904335, 15.318533, 23.815292>,  <17.801014, 15.532524, 23.781637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.904335, 15.318533, 23.815292>,  <18.076536, 14.961881, 23.871384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.904335, 15.318533, 23.815292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432606, -0.340184, -0.834941,
		-0.792162, -0.298780, 0.532174,
		-0.430501, 0.891631, -0.140227,
		17.775185, 15.586022, 23.773224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.379625, 14.831030, 23.655283>,  <18.076536, 14.961881, 23.871384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.379625, 14.831030, 23.655283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.444426, 15.201195, 23.518246>,  <17.483305, 15.423293, 23.436024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.444426, 15.201195, 23.518246>,  <17.379625, 14.831030, 23.655283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.444426, 15.201195, 23.518246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433160, -0.245255, -0.867307,
		-0.886639, 0.288900, 0.361120,
		0.161999, 0.925412, -0.342592,
		17.493025, 15.478818, 23.415468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.837833, 14.838723, 23.219540>,  <17.379625, 14.831030, 23.655283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.837833, 14.838723, 23.219540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.012266, 15.183884, 23.117376>,  <17.116926, 15.390980, 23.056078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.012266, 15.183884, 23.117376>,  <16.837833, 14.838723, 23.219540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.012266, 15.183884, 23.117376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437415, -0.044782, -0.898144,
		-0.786447, 0.503385, 0.357917,
		0.436084, 0.862901, -0.255407,
		17.143091, 15.442754, 23.040754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.273869, 15.349268, 23.096432>,  <16.837833, 14.838723, 23.219540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.273869, 15.349268, 23.096432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.612579, 15.440259, 22.904089>,  <16.815805, 15.494854, 22.788683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.612579, 15.440259, 22.904089>,  <16.273869, 15.349268, 23.096432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.612579, 15.440259, 22.904089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496103, 0.011483, -0.868188,
		-0.191972, 0.973715, 0.122576,
		0.846775, 0.227479, -0.480859,
		16.866611, 15.508503, 22.759830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.004765, 15.885330, 22.652292>,  <16.273869, 15.349268, 23.096432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.004765, 15.885330, 22.652292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.353453, 15.759487, 22.502024>,  <16.562666, 15.683982, 22.411863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.353453, 15.759487, 22.502024>,  <16.004765, 15.885330, 22.652292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.353453, 15.759487, 22.502024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358409, 0.113422, -0.926649,
		0.334140, 0.942421, -0.013886,
		0.871719, -0.314607, -0.375671,
		16.614969, 15.665105, 22.389322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.216845, 16.385822, 22.154352>,  <16.004765, 15.885330, 22.652292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.216845, 16.385822, 22.154352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.408550, 16.042843, 22.079430>,  <16.523573, 15.837054, 22.034477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.408550, 16.042843, 22.079430>,  <16.216845, 16.385822, 22.154352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.408550, 16.042843, 22.079430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321288, 0.027196, -0.946591,
		0.816749, 0.513847, -0.262455,
		0.479265, -0.857451, -0.187305,
		16.552330, 15.785607, 22.023239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.532701, 16.456451, 21.492178>,  <16.216845, 16.385822, 22.154352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.532701, 16.456451, 21.492178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.552925, 16.057789, 21.517853>,  <16.565060, 15.818591, 21.533257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.552925, 16.057789, 21.517853>,  <16.532701, 16.456451, 21.492178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.552925, 16.057789, 21.517853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223816, -0.073940, -0.971823,
		0.973319, 0.034767, -0.226806,
		0.050557, -0.996657, 0.064186,
		16.568092, 15.758792, 21.537109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.939720, 16.202682, 20.942965>,  <16.532701, 16.456451, 21.492178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.939720, 16.202682, 20.942965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.722622, 15.888202, 21.061157>,  <16.592363, 15.699512, 21.132072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.722622, 15.888202, 21.061157>,  <16.939720, 16.202682, 20.942965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.722622, 15.888202, 21.061157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299194, -0.147749, -0.942684,
		0.784798, -0.600046, -0.155037,
		-0.542747, -0.786203, 0.295483,
		16.559797, 15.652341, 21.149803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.972843, 15.882197, 20.351429>,  <16.939720, 16.202682, 20.942965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.972843, 15.882197, 20.351429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.684040, 15.683305, 20.543871>,  <16.510757, 15.563969, 20.659336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.684040, 15.683305, 20.543871>,  <16.972843, 15.882197, 20.351429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.684040, 15.683305, 20.543871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404824, -0.260303, -0.876561,
		0.561088, -0.827648, -0.013350,
		-0.722010, -0.497233, 0.481105,
		16.467438, 15.534135, 20.688202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.803064, 15.291702, 19.993431>,  <16.972843, 15.882197, 20.351429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.803064, 15.291702, 19.993431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.473761, 15.364571, 20.208487>,  <16.276178, 15.408292, 20.337521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.473761, 15.364571, 20.208487>,  <16.803064, 15.291702, 19.993431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.473761, 15.364571, 20.208487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559026, -0.424773, -0.712080,
		0.098656, -0.886782, 0.451536,
		-0.823260, 0.182169, 0.537641,
		16.226782, 15.419222, 20.369780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.487156, 14.612313, 20.112377>,  <16.803064, 15.291702, 19.993431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.487156, 14.612313, 20.112377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.229898, 14.917730, 20.135597>,  <16.075544, 15.100981, 20.149530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.229898, 14.917730, 20.135597>,  <16.487156, 14.612313, 20.112377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.229898, 14.917730, 20.135597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478505, -0.341548, -0.808937,
		-0.597831, -0.548039, 0.585023,
		-0.643142, 0.763543, 0.058052,
		16.036955, 15.146793, 20.153013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.903799, 14.296797, 19.813641>,  <16.487156, 14.612313, 20.112377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.903799, 14.296797, 19.813641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.778586, 14.676613, 19.805769>,  <15.703459, 14.904502, 19.801046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.778586, 14.676613, 19.805769>,  <15.903799, 14.296797, 19.813641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.778586, 14.676613, 19.805769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579492, -0.207375, -0.788152,
		-0.752463, -0.235311, 0.615165,
		-0.313031, 0.949539, -0.019681,
		15.684677, 14.961474, 19.799864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.170825, 14.212791, 19.761139>,  <15.903799, 14.296797, 19.813641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.170825, 14.212791, 19.761139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.291826, 14.568870, 19.624878>,  <15.364427, 14.782516, 19.543121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.291826, 14.568870, 19.624878>,  <15.170825, 14.212791, 19.761139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.291826, 14.568870, 19.624878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495688, -0.158337, -0.853945,
		-0.814116, 0.427178, 0.393362,
		0.302503, 0.890196, -0.340652,
		15.382577, 14.835928, 19.522682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.496064, 14.377975, 19.492352>,  <15.170825, 14.212791, 19.761139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.496064, 14.377975, 19.492352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.748269, 14.650675, 19.343935>,  <14.899591, 14.814295, 19.254885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.748269, 14.650675, 19.343935>,  <14.496064, 14.377975, 19.492352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.748269, 14.650675, 19.343935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702217, 0.297374, -0.646886,
		-0.330677, 0.668420, 0.666234,
		0.630512, 0.681750, -0.371041,
		14.937423, 14.855200, 19.232622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.209552, 15.105292, 19.504633>,  <14.496064, 14.377975, 19.492352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.209552, 15.105292, 19.504633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.477850, 15.081450, 19.208918>,  <14.638828, 15.067145, 19.031488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.477850, 15.081450, 19.208918>,  <14.209552, 15.105292, 19.504633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.477850, 15.081450, 19.208918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601995, 0.538497, -0.589596,
		0.433248, 0.840516, 0.325312,
		0.670745, -0.059606, -0.739289,
		14.679073, 15.063569, 18.987131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.231411, 15.789570, 19.123997>,  <14.209552, 15.105292, 19.504633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.231411, 15.789570, 19.123997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.393513, 15.529428, 18.866997>,  <14.490773, 15.373343, 18.712797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.393513, 15.529428, 18.866997>,  <14.231411, 15.789570, 19.123997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.393513, 15.529428, 18.866997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589008, 0.351748, -0.727560,
		0.699171, 0.673285, -0.240517,
		0.405253, -0.650355, -0.642502,
		14.515089, 15.334322, 18.674246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.411241, 16.258614, 18.577404>,  <14.231411, 15.789570, 19.123997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.411241, 16.258614, 18.577404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.383733, 15.885979, 18.434626>,  <14.367229, 15.662397, 18.348959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.383733, 15.885979, 18.434626>,  <14.411241, 16.258614, 18.577404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.383733, 15.885979, 18.434626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538049, 0.335932, -0.773080,
		0.840104, 0.138892, -0.524342,
		-0.068768, -0.931589, -0.356948,
		14.363102, 15.606502, 18.327541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.610311, 16.236193, 17.952517>,  <14.411241, 16.258614, 18.577404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.610311, 16.236193, 17.952517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.650007, 16.586124, 17.762856>,  <14.673825, 16.796083, 17.649059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.650007, 16.586124, 17.762856>,  <14.610311, 16.236193, 17.952517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.650007, 16.586124, 17.762856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824633, 0.194374, 0.531225,
		0.556895, -0.443724, -0.702124,
		0.099242, 0.874830, -0.474155,
		14.679780, 16.848574, 17.620609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.274305, 16.422457, 17.706348>,  <14.610311, 16.236193, 17.952517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.274305, 16.422457, 17.706348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.107883, 16.782715, 17.756523>,  <15.008030, 16.998871, 17.786629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.107883, 16.782715, 17.756523>,  <15.274305, 16.422457, 17.706348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.107883, 16.782715, 17.756523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754685, 0.265039, 0.600171,
		0.507296, 0.344370, -0.789975,
		-0.416055, 0.900646, 0.125438,
		14.983067, 17.052908, 17.794155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.729704, 16.997087, 17.451141>,  <15.274305, 16.422457, 17.706348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.729704, 16.997087, 17.451141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.500273, 17.161867, 17.734354>,  <15.362615, 17.260735, 17.904282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.500273, 17.161867, 17.734354>,  <15.729704, 16.997087, 17.451141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.500273, 17.161867, 17.734354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819129, 0.294879, 0.492010,
		-0.006101, 0.862174, -0.506575,
		-0.573577, 0.411949, 0.708031,
		15.328199, 17.285452, 17.946764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.108555, 17.594410, 17.653315>,  <15.729704, 16.997087, 17.451141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.108555, 17.594410, 17.653315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.842415, 17.537327, 17.946421>,  <15.682731, 17.503077, 18.122284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.842415, 17.537327, 17.946421>,  <16.108555, 17.594410, 17.653315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.842415, 17.537327, 17.946421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658589, 0.349987, 0.666160,
		-0.351524, 0.925820, -0.138879,
		-0.665351, -0.142707, 0.732764,
		15.642810, 17.494514, 18.166250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.065802, 18.266268, 18.031788>,  <16.108555, 17.594410, 17.653315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.065802, 18.266268, 18.031788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.943112, 17.979771, 18.282520>,  <15.869499, 17.807873, 18.432961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.943112, 17.979771, 18.282520>,  <16.065802, 18.266268, 18.031788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.943112, 17.979771, 18.282520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667619, 0.307494, 0.678035,
		-0.678385, 0.626453, 0.383862,
		-0.306722, -0.716243, 0.626832,
		15.851096, 17.764898, 18.470570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.020473, 18.648415, 18.719183>,  <16.065802, 18.266268, 18.031788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.020473, 18.648415, 18.719183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.003046, 18.258549, 18.806934>,  <15.992590, 18.024630, 18.859585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.003046, 18.258549, 18.806934>,  <16.020473, 18.648415, 18.719183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.003046, 18.258549, 18.806934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611980, 0.147531, 0.776991,
		-0.789672, 0.168108, 0.590049,
		-0.043568, -0.974666, 0.219380,
		15.989976, 17.966148, 18.872747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.996015, 18.716429, 19.376259>,  <16.020473, 18.648415, 18.719183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.996015, 18.716429, 19.376259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.115389, 18.339943, 19.312944>,  <16.187014, 18.114052, 19.274956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.115389, 18.339943, 19.312944>,  <15.996015, 18.716429, 19.376259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.115389, 18.339943, 19.312944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653379, 0.080582, 0.752730,
		-0.695724, -0.328064, 0.639017,
		0.298437, -0.941212, -0.158287,
		16.204920, 18.057579, 19.265459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.805806, 18.312227, 19.936800>,  <15.996015, 18.716429, 19.376259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.805806, 18.312227, 19.936800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.107315, 18.107836, 19.771524>,  <16.288219, 17.985201, 19.672359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.107315, 18.107836, 19.771524>,  <15.805806, 18.312227, 19.936800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.107315, 18.107836, 19.771524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589234, 0.247198, 0.769218,
		-0.290916, -0.823281, 0.487418,
		0.753771, -0.510981, -0.413191,
		16.333447, 17.954542, 19.647568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.135118, 17.942202, 20.347895>,  <15.805806, 18.312227, 19.936800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.135118, 17.942202, 20.347895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.431170, 17.972469, 20.080616>,  <16.608801, 17.990629, 19.920250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.431170, 17.972469, 20.080616>,  <16.135118, 17.942202, 20.347895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.431170, 17.972469, 20.080616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661435, 0.097330, 0.743661,
		0.121309, -0.992371, 0.021986,
		0.740127, 0.075670, -0.668196,
		16.653208, 17.995171, 19.880157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.684048, 17.466167, 20.577225>,  <16.135118, 17.942202, 20.347895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.684048, 17.466167, 20.577225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.867277, 17.699694, 20.309097>,  <16.977215, 17.839809, 20.148220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.867277, 17.699694, 20.309097>,  <16.684048, 17.466167, 20.577225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.867277, 17.699694, 20.309097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745016, 0.159197, 0.647771,
		0.484891, -0.796127, -0.362026,
		0.458074, 0.583814, -0.670321,
		17.004700, 17.874838, 20.108002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.304937, 17.234272, 20.669094>,  <16.684048, 17.466167, 20.577225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.304937, 17.234272, 20.669094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.345201, 17.587395, 20.485563>,  <17.369360, 17.799269, 20.375444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.345201, 17.587395, 20.485563>,  <17.304937, 17.234272, 20.669094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.345201, 17.587395, 20.485563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781639, 0.215156, 0.585447,
		0.615555, -0.417568, -0.668378,
		0.100658, 0.882805, -0.458828,
		17.375399, 17.852236, 20.347916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.083124, 17.296005, 20.614229>,  <17.304937, 17.234272, 20.669094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.083124, 17.296005, 20.614229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.954788, 17.672672, 20.573580>,  <17.877787, 17.898672, 20.549191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.954788, 17.672672, 20.573580>,  <18.083124, 17.296005, 20.614229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.954788, 17.672672, 20.573580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718383, 0.311869, 0.621822,
		0.617241, 0.126502, -0.776537,
		-0.320840, 0.941666, -0.101622,
		17.858536, 17.955172, 20.543093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.615805, 17.666668, 20.537365>,  <18.083124, 17.296005, 20.614229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.615805, 17.666668, 20.537365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.343786, 17.933586, 20.658855>,  <18.180574, 18.093737, 20.731750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.343786, 17.933586, 20.658855>,  <18.615805, 17.666668, 20.537365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.343786, 17.933586, 20.658855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655763, 0.368335, 0.659018,
		0.327888, 0.647335, -0.688074,
		-0.680048, 0.667298, 0.303726,
		18.139772, 18.133776, 20.749973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.014538, 18.198078, 20.626329>,  <18.615805, 17.666668, 20.537365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.014538, 18.198078, 20.626329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.686554, 18.257408, 20.847479>,  <18.489763, 18.293005, 20.980167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.686554, 18.257408, 20.847479>,  <19.014538, 18.198078, 20.626329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.686554, 18.257408, 20.847479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570277, 0.295223, 0.766569,
		-0.049521, 0.943845, -0.326656,
		-0.819958, 0.148323, 0.552873,
		18.440567, 18.301905, 21.013340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.020815, 18.883112, 20.970768>,  <19.014538, 18.198078, 20.626329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.020815, 18.883112, 20.970768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.784103, 18.648560, 21.192022>,  <18.642076, 18.507828, 21.324774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.784103, 18.648560, 21.192022>,  <19.020815, 18.883112, 20.970768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.784103, 18.648560, 21.192022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370244, 0.411805, 0.832668,
		-0.716042, 0.697550, -0.026595,
		-0.591779, -0.586379, 0.553134,
		18.606569, 18.472647, 21.357962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.941654, 19.334745, 21.466770>,  <19.020815, 18.883112, 20.970768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.941654, 19.334745, 21.466770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.781466, 19.017008, 21.649479>,  <18.685352, 18.826366, 21.759104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.781466, 19.017008, 21.649479>,  <18.941654, 19.334745, 21.466770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.781466, 19.017008, 21.649479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058664, 0.475243, 0.877897,
		-0.914429, 0.378369, -0.143722,
		-0.400472, -0.794343, 0.456773,
		18.661324, 18.778706, 21.786510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.610332, 19.551254, 22.099108>,  <18.941654, 19.334745, 21.466770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.610332, 19.551254, 22.099108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.552555, 19.161905, 22.170301>,  <18.517889, 18.928295, 22.213017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.552555, 19.161905, 22.170301>,  <18.610332, 19.551254, 22.099108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.552555, 19.161905, 22.170301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022678, 0.183078, 0.982837,
		-0.989253, 0.137928, -0.048518,
		-0.144444, -0.973375, 0.177982,
		18.509222, 18.869892, 22.223696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.034292, 19.441582, 22.546972>,  <18.610332, 19.551254, 22.099108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.034292, 19.441582, 22.546972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.272903, 19.125151, 22.601158>,  <18.416071, 18.935291, 22.633669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.272903, 19.125151, 22.601158>,  <18.034292, 19.441582, 22.546972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.272903, 19.125151, 22.601158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046404, 0.202495, 0.978183,
		-0.801250, -0.577227, 0.157503,
		0.596528, -0.791078, 0.135463,
		18.451862, 18.887827, 22.641798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.670313, 19.050798, 23.011402>,  <18.034292, 19.441582, 22.546972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.670313, 19.050798, 23.011402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.053053, 18.938715, 23.042175>,  <18.282698, 18.871466, 23.060638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.053053, 18.938715, 23.042175>,  <17.670313, 19.050798, 23.011402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.053053, 18.938715, 23.042175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020809, 0.197999, 0.979981,
		-0.289831, -0.939297, 0.183625,
		0.956852, -0.280208, 0.076932,
		18.340109, 18.854652, 23.065254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.655228, 18.727915, 23.599949>,  <17.670313, 19.050798, 23.011402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.655228, 18.727915, 23.599949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.032724, 18.840456, 23.530447>,  <18.259222, 18.907982, 23.488745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.032724, 18.840456, 23.530447>,  <17.655228, 18.727915, 23.599949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.032724, 18.840456, 23.530447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097070, 0.266595, 0.958908,
		0.316116, -0.921828, 0.224286,
		0.943741, 0.281355, -0.173757,
		18.315847, 18.924862, 23.478319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.916021, 18.340906, 24.130133>,  <17.655228, 18.727915, 23.599949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.916021, 18.340906, 24.130133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.186062, 18.611105, 24.011513>,  <18.348085, 18.773224, 23.940342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.186062, 18.611105, 24.011513>,  <17.916021, 18.340906, 24.130133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.186062, 18.611105, 24.011513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006186, 0.396779, 0.917893,
		0.737700, -0.621504, 0.263687,
		0.675100, 0.675499, -0.296549,
		18.388592, 18.813755, 23.922548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.545080, 18.341867, 24.523701>,  <17.916021, 18.340906, 24.130133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.545080, 18.341867, 24.523701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.571127, 18.715410, 24.383034>,  <18.586756, 18.939535, 24.298634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.571127, 18.715410, 24.383034>,  <18.545080, 18.341867, 24.523701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.571127, 18.715410, 24.383034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111954, 0.343355, 0.932509,
		0.991577, -0.100094, -0.082191,
		0.065118, 0.933857, -0.351670,
		18.590662, 18.995567, 24.277533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.117390, 18.605440, 24.864508>,  <18.545080, 18.341867, 24.523701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.117390, 18.605440, 24.864508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.902069, 18.927778, 24.765841>,  <18.772877, 19.121181, 24.706640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.902069, 18.927778, 24.765841>,  <19.117390, 18.605440, 24.864508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.902069, 18.927778, 24.765841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197824, 0.405339, 0.892506,
		0.819207, 0.431639, -0.377609,
		-0.538300, 0.805847, -0.246668,
		18.740580, 19.169533, 24.691839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.611317, 19.006323, 24.989765>,  <19.117390, 18.605440, 24.864508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.611317, 19.006323, 24.989765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.245253, 19.167536, 24.992607>,  <19.025614, 19.264263, 24.994312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.245253, 19.167536, 24.992607>,  <19.611317, 19.006323, 24.989765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.245253, 19.167536, 24.992607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258136, 0.572432, 0.778260,
		0.309596, 0.714065, -0.627903,
		-0.915159, 0.403030, 0.007103,
		18.970705, 19.288445, 24.994738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.746834, 19.695967, 25.123030>,  <19.611317, 19.006323, 24.989765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.746834, 19.695967, 25.123030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.372818, 19.605680, 25.232393>,  <19.148409, 19.551508, 25.298012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.372818, 19.605680, 25.232393>,  <19.746834, 19.695967, 25.123030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.372818, 19.605680, 25.232393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138506, 0.477328, 0.867741,
		-0.326370, 0.849241, -0.415057,
		-0.935040, -0.225716, 0.273411,
		19.092306, 19.537966, 25.314417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.583376, 20.190092, 25.517443>,  <19.746834, 19.695967, 25.123030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.583376, 20.190092, 25.517443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.303846, 19.925997, 25.627520>,  <19.136129, 19.767540, 25.693565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.303846, 19.925997, 25.627520>,  <19.583376, 20.190092, 25.517443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.303846, 19.925997, 25.627520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195545, 0.193730, 0.961369,
		-0.688047, 0.725639, -0.006276,
		-0.698823, -0.660240, 0.275190,
		19.094200, 19.727924, 25.710077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.120401, 20.524246, 26.019249>,  <19.583376, 20.190092, 25.517443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.120401, 20.524246, 26.019249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.122856, 20.129335, 26.082808>,  <19.124329, 19.892389, 26.120943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.122856, 20.129335, 26.082808>,  <19.120401, 20.524246, 26.019249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.122856, 20.129335, 26.082808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014940, 0.158793, 0.987199,
		-0.999869, -0.008431, -0.013776,
		0.006135, -0.987276, 0.158898,
		19.124697, 19.833153, 26.130476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.777325, 20.518829, 26.696438>,  <19.120401, 20.524246, 26.019249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.777325, 20.518829, 26.696438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.907890, 20.142944, 26.655664>,  <18.986231, 19.917414, 26.631201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.907890, 20.142944, 26.655664>,  <18.777325, 20.518829, 26.696438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.907890, 20.142944, 26.655664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012139, -0.103664, 0.994538,
		-0.945149, -0.325869, -0.022430,
		0.326415, -0.939714, -0.101934,
		19.005816, 19.861031, 26.625084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.283855, 20.082020, 27.037924>,  <18.777325, 20.518829, 26.696438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.283855, 20.082020, 27.037924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.633451, 19.889009, 27.060942>,  <18.843208, 19.773203, 27.074753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.633451, 19.889009, 27.060942>,  <18.283855, 20.082020, 27.037924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.633451, 19.889009, 27.060942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092822, -0.049528, 0.994450,
		-0.476999, -0.874480, -0.088076,
		0.873989, -0.482527, 0.057546,
		18.895649, 19.744251, 27.078205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.326372, 19.749075, 27.585922>,  <18.283855, 20.082020, 27.037924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.326372, 19.749075, 27.585922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.701439, 19.632416, 27.510315>,  <18.926479, 19.562420, 27.464951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.701439, 19.632416, 27.510315>,  <18.326372, 19.749075, 27.585922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.701439, 19.632416, 27.510315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145518, -0.164436, 0.975595,
		-0.315611, -0.942286, -0.111746,
		0.937664, -0.291647, -0.189017,
		18.982738, 19.544922, 27.453609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.493963, 19.149345, 28.058079>,  <18.326372, 19.749075, 27.585922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.493963, 19.149345, 28.058079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.824326, 19.349506, 27.954174>,  <19.022543, 19.469603, 27.891832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.824326, 19.349506, 27.954174>,  <18.493963, 19.149345, 28.058079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.824326, 19.349506, 27.954174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296273, 0.006788, 0.955079,
		0.479687, -0.865767, -0.142650,
		0.825907, 0.500402, -0.259760,
		19.072098, 19.499626, 27.876245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.868822, 19.639606, 28.368746>,  <18.493963, 19.149345, 28.058079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.868822, 19.639606, 28.368746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.159145, 19.620966, 28.643272>,  <19.333340, 19.609781, 28.807987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.159145, 19.620966, 28.643272>,  <18.868822, 19.639606, 28.368746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.159145, 19.620966, 28.643272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641569, 0.405796, -0.650937,
		-0.248170, 0.912775, 0.324427,
		0.725810, -0.046599, 0.686315,
		19.376888, 19.606987, 28.849167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.262699, 20.340265, 28.305998>,  <18.868822, 19.639606, 28.368746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.262699, 20.340265, 28.305998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.540253, 20.065920, 28.393738>,  <19.706785, 19.901312, 28.446383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.540253, 20.065920, 28.393738>,  <19.262699, 20.340265, 28.305998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.540253, 20.065920, 28.393738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539086, 0.292826, -0.789708,
		0.477402, 0.666214, 0.572927,
		0.693883, -0.685866, 0.219351,
		19.748417, 19.860161, 28.459543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.844145, 20.211248, 28.808338>,  <19.262699, 20.340265, 28.305998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.844145, 20.211248, 28.808338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.629444, 20.538422, 28.891171>,  <19.500624, 20.734726, 28.940870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.629444, 20.538422, 28.891171>,  <19.844145, 20.211248, 28.808338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.629444, 20.538422, 28.891171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587869, 0.186482, 0.787169,
		0.605234, 0.544251, -0.580932,
		-0.536751, 0.817933, 0.207083,
		19.468418, 20.783802, 28.953295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.164442, 20.977846, 28.846386>,  <19.844145, 20.211248, 28.808338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.164442, 20.977846, 28.846386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.884501, 20.925665, 29.127295>,  <19.716536, 20.894356, 29.295839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.884501, 20.925665, 29.127295>,  <20.164442, 20.977846, 28.846386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.884501, 20.925665, 29.127295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680831, 0.175537, 0.711095,
		-0.216039, 0.975791, -0.034034,
		-0.699855, -0.130453, 0.702272,
		19.674543, 20.886530, 29.337976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.964588, 21.601637, 29.352125>,  <20.164442, 20.977846, 28.846386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.964588, 21.601637, 29.352125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.914701, 21.261658, 29.556883>,  <19.884769, 21.057671, 29.679737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.914701, 21.261658, 29.556883>,  <19.964588, 21.601637, 29.352125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.914701, 21.261658, 29.556883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752912, 0.254939, 0.606737,
		-0.646196, 0.461082, 0.608140,
		-0.124717, -0.849947, 0.511895,
		19.877287, 21.006674, 29.710451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.803114, 21.632874, 30.216429>,  <19.964588, 21.601637, 29.352125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.803114, 21.632874, 30.216429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.020613, 21.351662, 30.033087>,  <20.151112, 21.182936, 29.923080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.020613, 21.351662, 30.033087>,  <19.803114, 21.632874, 30.216429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.020613, 21.351662, 30.033087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796136, 0.259295, 0.546748,
		-0.265530, -0.662207, 0.700697,
		0.543747, -0.703028, -0.458357,
		20.183737, 21.140753, 29.895580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.150948, 21.801857, 30.269554>,  <19.803114, 21.632874, 30.216429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.150948, 21.801857, 30.269554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.843166, 22.037380, 30.368546>,  <18.658497, 22.178694, 30.427940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.843166, 22.037380, 30.368546>,  <19.150948, 21.801857, 30.269554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.843166, 22.037380, 30.368546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033334, 0.423966, -0.905064,
		-0.637831, -0.688157, -0.345850,
		-0.769455, 0.588806, 0.247480,
		18.612329, 22.214022, 30.442789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.506035, 21.783466, 29.858349>,  <19.150948, 21.801857, 30.269554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.506035, 21.783466, 29.858349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.458424, 22.141846, 30.029512>,  <18.429857, 22.356873, 30.132212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.458424, 22.141846, 30.029512>,  <18.506035, 21.783466, 29.858349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.458424, 22.141846, 30.029512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188790, 0.402689, -0.895656,
		-0.974777, -0.187394, 0.121215,
		-0.119028, 0.895949, 0.427910,
		18.422714, 22.410631, 30.157885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.780622, 21.955118, 29.721666>,  <18.506035, 21.783466, 29.858349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.780622, 21.955118, 29.721666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.987089, 22.286058, 29.810270>,  <18.110970, 22.484623, 29.863434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.987089, 22.286058, 29.810270>,  <17.780622, 21.955118, 29.721666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.987089, 22.286058, 29.810270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350478, 0.440013, -0.826773,
		-0.781498, 0.349117, 0.517087,
		0.516165, 0.827349, 0.221511,
		18.141939, 22.534264, 29.876724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.296591, 22.563768, 29.606251>,  <17.780622, 21.955118, 29.721666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.296591, 22.563768, 29.606251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.664507, 22.718052, 29.577353>,  <17.885256, 22.810621, 29.560013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.664507, 22.718052, 29.577353>,  <17.296591, 22.563768, 29.606251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.664507, 22.718052, 29.577353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214436, 0.339845, -0.915709,
		-0.328643, 0.857750, 0.395295,
		0.919788, 0.385707, -0.072245,
		17.940443, 22.833763, 29.555679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.176294, 23.216799, 29.257639>,  <17.296591, 22.563768, 29.606251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.176294, 23.216799, 29.257639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.568563, 23.148762, 29.218964>,  <17.803925, 23.107941, 29.195759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.568563, 23.148762, 29.218964>,  <17.176294, 23.216799, 29.257639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.568563, 23.148762, 29.218964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051803, 0.250823, -0.966646,
		0.188670, 0.952973, 0.237165,
		0.980673, -0.170091, -0.096690,
		17.862766, 23.097734, 29.189957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.414068, 23.794329, 28.970625>,  <17.176294, 23.216799, 29.257639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.414068, 23.794329, 28.970625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.702456, 23.524939, 28.905342>,  <17.875488, 23.363304, 28.866173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.702456, 23.524939, 28.905342>,  <17.414068, 23.794329, 28.970625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.702456, 23.524939, 28.905342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125447, 0.104784, -0.986551,
		0.681519, 0.731746, -0.008939,
		0.720968, -0.673475, -0.163208,
		17.918745, 23.322897, 28.856380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.604153, 23.978092, 28.414894>,  <17.414068, 23.794329, 28.970625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.604153, 23.978092, 28.414894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.778111, 23.618340, 28.432707>,  <17.882484, 23.402489, 28.443396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.778111, 23.618340, 28.432707>,  <17.604153, 23.978092, 28.414894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.778111, 23.618340, 28.432707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008178, -0.053398, -0.998540,
		0.900444, 0.433896, -0.030577,
		0.434895, -0.899379, 0.044534,
		17.908579, 23.348526, 28.446068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.210918, 23.962782, 27.877443>,  <17.604153, 23.978092, 28.414894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.210918, 23.962782, 27.877443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.095562, 23.583307, 27.929333>,  <18.026348, 23.355623, 27.960466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.095562, 23.583307, 27.929333>,  <18.210918, 23.962782, 27.877443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.095562, 23.583307, 27.929333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019847, -0.129529, -0.991377,
		0.957307, -0.288478, 0.018526,
		-0.288390, -0.948685, 0.129725,
		18.009045, 23.298702, 27.968250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.538626, 23.569689, 27.347069>,  <18.210918, 23.962782, 27.877443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.538626, 23.569689, 27.347069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.234455, 23.333197, 27.454544>,  <18.051952, 23.191301, 27.519030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.234455, 23.333197, 27.454544>,  <18.538626, 23.569689, 27.347069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.234455, 23.333197, 27.454544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195707, -0.185874, -0.962886,
		0.619232, -0.784790, 0.025635,
		-0.760428, -0.591233, 0.268688,
		18.006327, 23.155827, 27.535151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.695913, 22.889435, 27.127270>,  <18.538626, 23.569689, 27.347069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.695913, 22.889435, 27.127270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.301014, 22.873453, 27.188904>,  <18.064074, 22.863865, 27.225885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.301014, 22.873453, 27.188904>,  <18.695913, 22.889435, 27.127270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.301014, 22.873453, 27.188904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136542, -0.285020, -0.948747,
		0.081825, -0.957688, 0.275930,
		-0.987249, -0.039955, 0.154087,
		18.004839, 22.861467, 27.235130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.436363, 22.304579, 26.758181>,  <18.695913, 22.889435, 27.127270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.436363, 22.304579, 26.758181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.095818, 22.509235, 26.804487>,  <17.891491, 22.632030, 26.832272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.095818, 22.509235, 26.804487>,  <18.436363, 22.304579, 26.758181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.095818, 22.509235, 26.804487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281358, -0.259115, -0.923957,
		-0.442741, -0.819194, 0.364556,
		-0.851363, 0.511644, 0.115766,
		17.840408, 22.662729, 26.839216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.990610, 21.928926, 26.308735>,  <18.436363, 22.304579, 26.758181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.990610, 21.928926, 26.308735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.772186, 22.254511, 26.388021>,  <17.641132, 22.449862, 26.435593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.772186, 22.254511, 26.388021>,  <17.990610, 21.928926, 26.308735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.772186, 22.254511, 26.388021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385719, -0.034244, -0.921981,
		-0.743668, -0.579910, 0.332659,
		-0.546057, 0.813960, 0.198216,
		17.608370, 22.498699, 26.447487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.288088, 21.723820, 26.154701>,  <17.990610, 21.928926, 26.308735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.288088, 21.723820, 26.154701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.362732, 22.109797, 26.080879>,  <17.407518, 22.341383, 26.036587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.362732, 22.109797, 26.080879>,  <17.288088, 21.723820, 26.154701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.362732, 22.109797, 26.080879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467990, -0.077860, -0.880297,
		-0.863807, 0.250640, 0.437055,
		0.186608, 0.964944, -0.184553,
		17.418715, 22.399281, 26.025513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.631535, 21.995224, 25.825239>,  <17.288088, 21.723820, 26.154701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.631535, 21.995224, 25.825239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.923460, 22.246540, 25.717445>,  <17.098616, 22.397329, 25.652769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.923460, 22.246540, 25.717445>,  <16.631535, 21.995224, 25.825239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.923460, 22.246540, 25.717445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267691, -0.100080, -0.958293,
		-0.629055, 0.771516, 0.095148,
		0.729816, 0.628290, -0.269483,
		17.142405, 22.435026, 25.636600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.308586, 22.503510, 25.292645>,  <16.631535, 21.995224, 25.825239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.308586, 22.503510, 25.292645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.702652, 22.516356, 25.225218>,  <16.939093, 22.524063, 25.184761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.702652, 22.516356, 25.225218>,  <16.308586, 22.503510, 25.292645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.702652, 22.516356, 25.225218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161380, -0.160560, -0.973744,
		-0.058337, 0.986504, -0.152996,
		0.985167, 0.032115, -0.168568,
		16.998201, 22.525990, 25.174648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.437496, 22.766983, 24.507511>,  <16.308586, 22.503510, 25.292645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.437496, 22.766983, 24.507511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.788570, 22.604219, 24.608780>,  <16.999214, 22.506561, 24.669540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.788570, 22.604219, 24.608780>,  <16.437496, 22.766983, 24.507511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.788570, 22.604219, 24.608780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142333, -0.283115, -0.948466,
		0.457615, 0.868488, -0.190569,
		0.877684, -0.406908, 0.253172,
		17.051876, 22.482147, 24.684732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.910065, 22.887491, 23.993305>,  <16.437496, 22.766983, 24.507511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.910065, 22.887491, 23.993305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.081572, 22.581738, 24.185919>,  <17.184475, 22.398285, 24.301487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.081572, 22.581738, 24.185919>,  <16.910065, 22.887491, 23.993305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.081572, 22.581738, 24.185919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104207, -0.487612, -0.866819,
		0.897385, 0.421843, -0.129418,
		0.428767, -0.764384, 0.481535,
		17.210201, 22.352423, 24.330379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.516928, 22.800131, 23.680592>,  <16.910065, 22.887491, 23.993305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.516928, 22.800131, 23.680592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.471020, 22.448854, 23.866327>,  <17.443476, 22.238089, 23.977768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.471020, 22.448854, 23.866327>,  <17.516928, 22.800131, 23.680592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.471020, 22.448854, 23.866327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301033, -0.476193, -0.826208,
		0.946682, 0.044958, 0.319016,
		-0.114769, -0.878191, 0.464337,
		17.436588, 22.185398, 24.005629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.168648, 22.393110, 23.511965>,  <17.516928, 22.800131, 23.680592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.168648, 22.393110, 23.511965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.874743, 22.149193, 23.630812>,  <17.698400, 22.002842, 23.702120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.874743, 22.149193, 23.630812>,  <18.168648, 22.393110, 23.511965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.874743, 22.149193, 23.630812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164138, -0.584831, -0.794375,
		0.658167, -0.534908, 0.529801,
		-0.734761, -0.609792, 0.297118,
		17.654314, 21.966255, 23.719948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.519772, 21.789259, 23.422674>,  <18.168648, 22.393110, 23.511965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.519772, 21.789259, 23.422674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.125929, 21.721777, 23.440966>,  <17.889624, 21.681288, 23.451941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.125929, 21.721777, 23.440966>,  <18.519772, 21.789259, 23.422674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.125929, 21.721777, 23.440966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068872, -0.614882, -0.785606,
		0.160654, -0.770362, 0.617035,
		-0.984605, -0.168707, 0.045727,
		17.830547, 21.671165, 23.454683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.433626, 21.165659, 23.185785>,  <18.519772, 21.789259, 23.422674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.433626, 21.165659, 23.185785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.045822, 21.262888, 23.173376>,  <17.813139, 21.321224, 23.165930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.045822, 21.262888, 23.173376>,  <18.433626, 21.165659, 23.185785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.045822, 21.262888, 23.173376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109477, -0.542932, -0.832610,
		-0.219226, -0.803830, 0.552990,
		-0.969512, 0.243070, -0.031024,
		17.754969, 21.335810, 23.164068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.007627, 20.509628, 23.125288>,  <18.433626, 21.165659, 23.185785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.007627, 20.509628, 23.125288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.799202, 20.816086, 22.974815>,  <17.674147, 20.999960, 22.884533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.799202, 20.816086, 22.974815>,  <18.007627, 20.509628, 23.125288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.799202, 20.816086, 22.974815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246901, -0.557199, -0.792823,
		-0.817026, -0.320233, 0.479499,
		-0.521065, 0.766146, -0.376181,
		17.642883, 21.045929, 22.861961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.543440, 20.164219, 22.734121>,  <18.007627, 20.509628, 23.125288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.543440, 20.164219, 22.734121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.458193, 20.531462, 22.600460>,  <17.407045, 20.751808, 22.520264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.458193, 20.531462, 22.600460>,  <17.543440, 20.164219, 22.734121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.458193, 20.531462, 22.600460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390732, -0.393561, -0.832129,
		-0.895494, -0.046777, 0.442609,
		-0.213118, 0.918108, -0.334154,
		17.394257, 20.806894, 22.500214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.923918, 20.106050, 22.436544>,  <17.543440, 20.164219, 22.734121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.923918, 20.106050, 22.436544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.059855, 20.450500, 22.285297>,  <17.141417, 20.657169, 22.194550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.059855, 20.450500, 22.285297>,  <16.923918, 20.106050, 22.436544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.059855, 20.450500, 22.285297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425498, -0.217766, -0.878367,
		-0.838725, 0.459395, 0.292400,
		0.339842, 0.861124, -0.378117,
		17.161808, 20.708838, 22.171862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.343035, 20.421364, 22.132071>,  <16.923918, 20.106050, 22.436544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.343035, 20.421364, 22.132071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.665730, 20.569157, 21.947609>,  <16.859346, 20.657833, 21.836933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.665730, 20.569157, 21.947609>,  <16.343035, 20.421364, 22.132071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.665730, 20.569157, 21.947609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505859, 0.028454, -0.862147,
		-0.305427, 0.928802, 0.209861,
		0.806735, 0.369483, -0.461152,
		16.907749, 20.680002, 21.809263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.003534, 20.812119, 21.599371>,  <16.343035, 20.421364, 22.132071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.003534, 20.812119, 21.599371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.386017, 20.768511, 21.490719>,  <16.615507, 20.742346, 21.425528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.386017, 20.768511, 21.490719>,  <16.003534, 20.812119, 21.599371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.386017, 20.768511, 21.490719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265414, 0.068241, -0.961717,
		0.123383, 0.991694, 0.036316,
		0.956207, -0.109021, -0.271629,
		16.672878, 20.735804, 21.409229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.304577, 21.450766, 21.176743>,  <16.003534, 20.812119, 21.599371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.304577, 21.450766, 21.176743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.530632, 21.137094, 21.074224>,  <16.666265, 20.948893, 21.012714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.530632, 21.137094, 21.074224>,  <16.304577, 21.450766, 21.176743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.530632, 21.137094, 21.074224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242881, 0.138746, -0.960082,
		0.788435, 0.604826, -0.112051,
		0.565136, -0.784178, -0.256293,
		16.700172, 20.901840, 20.997337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.745531, 21.640041, 20.528093>,  <16.304577, 21.450766, 21.176743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.745531, 21.640041, 20.528093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.780830, 21.241920, 20.544004>,  <16.802010, 21.003048, 20.553551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.780830, 21.241920, 20.544004>,  <16.745531, 21.640041, 20.528093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.780830, 21.241920, 20.544004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238801, -0.059911, -0.969218,
		0.967050, 0.076034, -0.242967,
		0.088250, -0.995304, 0.039780,
		16.807306, 20.943329, 20.555939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.203495, 21.495777, 20.077980>,  <16.745531, 21.640041, 20.528093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.203495, 21.495777, 20.077980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.014212, 21.145840, 20.119408>,  <16.900642, 20.935877, 20.144264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.014212, 21.145840, 20.119408>,  <17.203495, 21.495777, 20.077980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.014212, 21.145840, 20.119408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308623, 0.054516, -0.949621,
		0.825122, -0.481331, -0.295794,
		-0.473208, -0.874842, 0.103568,
		16.872250, 20.883387, 20.150478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.372353, 21.056618, 19.495560>,  <17.203495, 21.495777, 20.077980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.372353, 21.056618, 19.495560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.025091, 20.909710, 19.629078>,  <16.816734, 20.821566, 19.709188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.025091, 20.909710, 19.629078>,  <17.372353, 21.056618, 19.495560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.025091, 20.909710, 19.629078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402021, 0.126038, -0.906914,
		0.291015, -0.921534, -0.257071,
		-0.868153, -0.367273, 0.333797,
		16.764645, 20.799528, 19.729218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.376680, 20.513266, 19.031267>,  <17.372353, 21.056618, 19.495560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.376680, 20.513266, 19.031267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.010729, 20.495649, 19.191797>,  <16.791159, 20.485079, 19.288115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.010729, 20.495649, 19.191797>,  <17.376680, 20.513266, 19.031267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.010729, 20.495649, 19.191797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361093, -0.355368, -0.862163,
		0.180590, -0.933688, 0.309215,
		-0.914877, -0.044043, 0.401324,
		16.736265, 20.482437, 19.312195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.104525, 19.959370, 18.737484>,  <17.376680, 20.513266, 19.031267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.104525, 19.959370, 18.737484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.774000, 20.135445, 18.878023>,  <16.575686, 20.241089, 18.962347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.774000, 20.135445, 18.878023>,  <17.104525, 19.959370, 18.737484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.774000, 20.135445, 18.878023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523737, -0.371117, -0.766793,
		-0.207141, -0.817624, 0.537200,
		-0.826312, 0.440186, 0.351346,
		16.526106, 20.267500, 18.983427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.591467, 19.460169, 18.867834>,  <17.104525, 19.959370, 18.737484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.591467, 19.460169, 18.867834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.436529, 19.818962, 18.782619>,  <16.343567, 20.034239, 18.731491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.436529, 19.818962, 18.782619>,  <16.591467, 19.460169, 18.867834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.436529, 19.818962, 18.782619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605846, -0.421828, -0.674545,
		-0.694921, -0.132213, 0.706827,
		-0.387344, 0.896984, -0.213036,
		16.320326, 20.088057, 18.718708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.814652, 19.491398, 18.697542>,  <16.591467, 19.460169, 18.867834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.814652, 19.491398, 18.697542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.922263, 19.837446, 18.528217>,  <15.986830, 20.045074, 18.426622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.922263, 19.837446, 18.528217>,  <15.814652, 19.491398, 18.697542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.922263, 19.837446, 18.528217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671429, -0.146647, -0.726414,
		-0.690512, 0.479649, 0.541414,
		0.269027, 0.865119, -0.423312,
		16.002972, 20.096983, 18.401224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.234114, 19.822578, 18.621098>,  <15.814652, 19.491398, 18.697542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.234114, 19.822578, 18.621098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.470415, 19.977274, 18.337847>,  <15.612196, 20.070091, 18.167896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.470415, 19.977274, 18.337847>,  <15.234114, 19.822578, 18.621098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.470415, 19.977274, 18.337847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680292, -0.233154, -0.694868,
		-0.433834, 0.892229, 0.125358,
		0.590754, 0.386738, -0.708127,
		15.647641, 20.093296, 18.125408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.657019, 20.144255, 18.315496>,  <15.234114, 19.822578, 18.621098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.657019, 20.144255, 18.315496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.973934, 20.108053, 18.074137>,  <15.164083, 20.086332, 17.929321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.973934, 20.108053, 18.074137>,  <14.657019, 20.144255, 18.315496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.973934, 20.108053, 18.074137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609857, -0.086944, -0.787728,
		0.018829, 0.992094, -0.124078,
		0.792288, -0.090502, -0.603398,
		15.211620, 20.080902, 17.893118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.325088, 20.376900, 17.735529>,  <14.657019, 20.144255, 18.315496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.325088, 20.376900, 17.735529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.667025, 20.241398, 17.578308>,  <14.872187, 20.160097, 17.483976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.667025, 20.241398, 17.578308>,  <14.325088, 20.376900, 17.735529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.667025, 20.241398, 17.578308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423896, -0.019044, -0.905511,
		0.299261, 0.940682, -0.159876,
		0.854842, -0.338755, -0.393052,
		14.923477, 20.139771, 17.460392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.230826, 20.556286, 16.974762>,  <14.325088, 20.376900, 17.735529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.230826, 20.556286, 16.974762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.527759, 20.288429, 16.965597>,  <14.705918, 20.127716, 16.960098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.527759, 20.288429, 16.965597>,  <14.230826, 20.556286, 16.974762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.527759, 20.288429, 16.965597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351997, -0.360654, -0.863728,
		0.570126, 0.649237, -0.503437,
		0.742331, -0.669642, -0.022911,
		14.750458, 20.087536, 16.958723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.634436, 20.627676, 16.318329>,  <14.230826, 20.556286, 16.974762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.634436, 20.627676, 16.318329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.687492, 20.253374, 16.449032>,  <14.719326, 20.028793, 16.527454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.687492, 20.253374, 16.449032>,  <14.634436, 20.627676, 16.318329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.687492, 20.253374, 16.449032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350921, -0.352653, -0.867462,
		0.926963, 0.000396, -0.375152,
		0.132642, -0.935754, 0.326758,
		14.727284, 19.972649, 16.547060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.933842, 20.234594, 15.841511>,  <14.634436, 20.627676, 16.318329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.933842, 20.234594, 15.841511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.776529, 19.920378, 16.032616>,  <14.682141, 19.731848, 16.147280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.776529, 19.920378, 16.032616>,  <14.933842, 20.234594, 15.841511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.776529, 19.920378, 16.032616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330204, -0.364290, -0.870780,
		0.858077, -0.500221, -0.116120,
		-0.393281, -0.785539, 0.477763,
		14.658545, 19.684715, 16.175945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.985137, 19.635315, 15.341339>,  <14.933842, 20.234594, 15.841511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.985137, 19.635315, 15.341339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.689104, 19.521196, 15.584941>,  <14.511484, 19.452726, 15.731102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.689104, 19.521196, 15.584941>,  <14.985137, 19.635315, 15.341339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.689104, 19.521196, 15.584941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371091, -0.581979, -0.723597,
		0.560866, -0.761517, 0.324842,
		-0.740082, -0.285295, 0.609004,
		14.467079, 19.435608, 15.767642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.966778, 18.929831, 15.538185>,  <14.985137, 19.635315, 15.341339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.966778, 18.929831, 15.538185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.591505, 19.068192, 15.543341>,  <14.366342, 19.151209, 15.546434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.591505, 19.068192, 15.543341>,  <14.966778, 18.929831, 15.538185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.591505, 19.068192, 15.543341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259745, -0.678905, -0.686746,
		-0.228797, -0.647641, 0.726783,
		-0.938182, 0.345904, 0.012890,
		14.310051, 19.171963, 15.547208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.489640, 18.372549, 15.631687>,  <14.966778, 18.929831, 15.538185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.489640, 18.372549, 15.631687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.296402, 18.661125, 15.433238>,  <14.180459, 18.834270, 15.314168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.296402, 18.661125, 15.433238>,  <14.489640, 18.372549, 15.631687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.296402, 18.661125, 15.433238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258641, -0.658930, -0.706340,
		-0.836495, -0.212911, 0.504921,
		-0.483095, 0.721443, -0.496124,
		14.151473, 18.877558, 15.284401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.987684, 18.003511, 16.185814>,  <14.489640, 18.372549, 15.631687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.987684, 18.003511, 16.185814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.210149, 17.965628, 15.855551>,  <15.343628, 17.942898, 15.657393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.210149, 17.965628, 15.855551>,  <14.987684, 18.003511, 16.185814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.210149, 17.965628, 15.855551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618237, -0.616788, 0.487192,
		-0.555398, -0.781411, -0.284482,
		0.556163, -0.094708, -0.825660,
		15.376997, 17.937216, 15.607853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.192848, 17.440939, 15.952454>,  <14.987684, 18.003511, 16.185814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.192848, 17.440939, 15.952454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.515716, 17.604916, 15.782547>,  <15.709436, 17.703300, 15.680603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.515716, 17.604916, 15.782547>,  <15.192848, 17.440939, 15.952454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.515716, 17.604916, 15.782547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546262, -0.791460, 0.274207,
		-0.223778, -0.453366, -0.862777,
		0.807169, 0.409941, -0.424767,
		15.757866, 17.727898, 15.655117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.484001, 17.098537, 15.300498>,  <15.192848, 17.440939, 15.952454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.484001, 17.098537, 15.300498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.749641, 17.245092, 15.561184>,  <15.909025, 17.333025, 15.717595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.749641, 17.245092, 15.561184>,  <15.484001, 17.098537, 15.300498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.749641, 17.245092, 15.561184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370868, -0.918321, 0.138356,
		0.649175, 0.149818, -0.745739,
		0.664100, 0.366388, 0.651714,
		15.948872, 17.355009, 15.756698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.171137, 16.807850, 15.209093>,  <15.484001, 17.098537, 15.300498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.171137, 16.807850, 15.209093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.175318, 16.900469, 15.598200>,  <16.177826, 16.956041, 15.831664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.175318, 16.900469, 15.598200>,  <16.171137, 16.807850, 15.209093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.175318, 16.900469, 15.598200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581720, -0.792667, 0.182429,
		0.813322, 0.563972, -0.142981,
		0.010452, 0.231548, 0.972767,
		16.178453, 16.969933, 15.890030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.873045, 16.989433, 15.388157>,  <16.171137, 16.807850, 15.209093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.873045, 16.989433, 15.388157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.658253, 16.837545, 15.689478>,  <16.529377, 16.746412, 15.870271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.658253, 16.837545, 15.689478>,  <16.873045, 16.989433, 15.388157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.658253, 16.837545, 15.689478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623088, -0.780505, 0.050726,
		0.568696, 0.496613, 0.655714,
		-0.536979, -0.379720, 0.753304,
		16.497158, 16.723629, 15.915469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.342728, 16.777124, 15.993069>,  <16.873045, 16.989433, 15.388157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.342728, 16.777124, 15.993069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.017458, 16.574087, 15.879157>,  <16.822296, 16.452265, 15.810810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.017458, 16.574087, 15.879157>,  <17.342728, 16.777124, 15.993069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.017458, 16.574087, 15.879157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573687, -0.781532, -0.245134,
		-0.098137, -0.362711, 0.926720,
		-0.813174, -0.507591, -0.284780,
		16.773506, 16.421810, 15.793723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.499855, 16.184090, 16.510900>,  <17.342728, 16.777124, 15.993069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.499855, 16.184090, 16.510900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.445219, 15.833188, 16.694975>,  <17.412437, 15.622647, 16.805420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.445219, 15.833188, 16.694975>,  <17.499855, 16.184090, 16.510900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.445219, 15.833188, 16.694975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167149, -0.437469, -0.883562,
		0.976425, -0.197603, -0.086879,
		-0.136588, -0.877254, 0.460184,
		17.404243, 15.570012, 16.833031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.001148, 15.714287, 16.290123>,  <17.499855, 16.184090, 16.510900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.001148, 15.714287, 16.290123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.712942, 15.472038, 16.425226>,  <17.540018, 15.326689, 16.506289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.712942, 15.472038, 16.425226>,  <18.001148, 15.714287, 16.290123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.712942, 15.472038, 16.425226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039618, -0.522231, -0.851883,
		0.692307, -0.600413, 0.400269,
		-0.720515, -0.605622, 0.337757,
		17.496788, 15.290352, 16.526554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.176764, 15.070351, 16.180920>,  <18.001148, 15.714287, 16.290123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.176764, 15.070351, 16.180920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.783276, 15.018643, 16.230854>,  <17.547182, 14.987618, 16.260815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.783276, 15.018643, 16.230854>,  <18.176764, 15.070351, 16.180920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.783276, 15.018643, 16.230854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039365, -0.522788, -0.851553,
		0.175343, -0.842604, 0.509189,
		-0.983720, -0.129270, 0.124837,
		17.488159, 14.979862, 16.268305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.039248, 14.404312, 15.958705>,  <18.176764, 15.070351, 16.180920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.039248, 14.404312, 15.958705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.673140, 14.564171, 15.938441>,  <17.453476, 14.660086, 15.926283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.673140, 14.564171, 15.938441>,  <18.039248, 14.404312, 15.958705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.673140, 14.564171, 15.938441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142016, -0.437782, -0.887794,
		-0.376977, -0.805377, 0.457444,
		-0.915270, 0.399643, -0.050657,
		17.398560, 14.684065, 15.923244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.601484, 13.845311, 15.673444>,  <18.039248, 14.404312, 15.958705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.601484, 13.845311, 15.673444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.396284, 14.183925, 15.616582>,  <17.273163, 14.387093, 15.582465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.396284, 14.183925, 15.616582>,  <17.601484, 13.845311, 15.673444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.396284, 14.183925, 15.616582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169056, -0.262002, -0.950145,
		-0.841576, -0.463394, 0.277519,
		-0.513002, 0.846535, -0.142155,
		17.242384, 14.437885, 15.573936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.884838, 13.712585, 15.384934>,  <17.601484, 13.845311, 15.673444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.884838, 13.712585, 15.384934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.906191, 14.100703, 15.290548>,  <16.919003, 14.333573, 15.233916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.906191, 14.100703, 15.290548>,  <16.884838, 13.712585, 15.384934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.906191, 14.100703, 15.290548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369198, -0.200381, -0.907491,
		-0.927816, 0.135564, 0.347533,
		0.053384, 0.970294, -0.235966,
		16.922207, 14.391791, 15.219758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.354296, 13.754750, 14.958020>,  <16.884838, 13.712585, 15.384934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.354296, 13.754750, 14.958020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.588112, 14.068920, 14.876614>,  <16.728401, 14.257422, 14.827769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.588112, 14.068920, 14.876614>,  <16.354296, 13.754750, 14.958020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.588112, 14.068920, 14.876614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298273, -0.025251, -0.954146,
		-0.754549, 0.618442, 0.219511,
		0.584542, 0.785424, -0.203518,
		16.763474, 14.304547, 14.815558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.000757, 14.099077, 14.580460>,  <16.354296, 13.754750, 14.958020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.000757, 14.099077, 14.580460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.359667, 14.252995, 14.493893>,  <16.575012, 14.345345, 14.441953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.359667, 14.252995, 14.493893>,  <16.000757, 14.099077, 14.580460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.359667, 14.252995, 14.493893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257961, 0.059152, -0.964343,
		-0.358272, 0.921105, 0.152337,
		0.897272, 0.384794, -0.216417,
		16.628849, 14.368433, 14.428967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.924106, 14.745575, 14.121889>,  <16.000757, 14.099077, 14.580460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.924106, 14.745575, 14.121889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.288815, 14.589976, 14.069201>,  <16.507641, 14.496617, 14.037587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.288815, 14.589976, 14.069201>,  <15.924106, 14.745575, 14.121889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.288815, 14.589976, 14.069201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073294, 0.161461, -0.984154,
		0.404101, 0.906979, 0.118705,
		0.911773, -0.388997, -0.131722,
		16.562347, 14.473277, 14.029684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.316936, 15.258013, 13.738406>,  <15.924106, 14.745575, 14.121889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.316936, 15.258013, 13.738406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.528034, 14.922342, 13.685839>,  <16.654692, 14.720940, 13.654298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.528034, 14.922342, 13.685839>,  <16.316936, 15.258013, 13.738406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.528034, 14.922342, 13.685839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053698, 0.121449, -0.991144,
		0.847706, 0.530126, 0.019031,
		0.527742, -0.839177, -0.131420,
		16.686357, 14.670589, 13.646413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.737356, 15.400805, 13.207451>,  <16.316936, 15.258013, 13.738406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.737356, 15.400805, 13.207451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.747856, 15.001265, 13.223501>,  <16.754156, 14.761540, 13.233131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.747856, 15.001265, 13.223501>,  <16.737356, 15.400805, 13.207451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.747856, 15.001265, 13.223501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029080, -0.040887, -0.998740,
		0.999232, 0.025052, -0.030120,
		0.026252, -0.998850, 0.040127,
		16.755732, 14.701610, 13.235539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.340635, 14.965328, 12.864658>,  <16.737356, 15.400805, 13.207451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.340635, 14.965328, 12.864658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.997564, 14.760494, 12.846088>,  <16.791721, 14.637594, 12.834947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.997564, 14.760494, 12.846088>,  <17.340635, 14.965328, 12.864658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.997564, 14.760494, 12.846088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003227, 0.095649, -0.995410,
		0.514175, -0.853592, -0.083688,
		-0.857679, -0.512085, -0.046426,
		16.740261, 14.606869, 12.832161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.342119, 14.834924, 12.261561>,  <17.340635, 14.965328, 12.864658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.342119, 14.834924, 12.261561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.993923, 14.668047, 12.366022>,  <16.785006, 14.567921, 12.428699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.993923, 14.668047, 12.366022>,  <17.342119, 14.834924, 12.261561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.993923, 14.668047, 12.366022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255590, -0.070284, -0.964227,
		0.420623, -0.906097, -0.045449,
		-0.870489, -0.417192, 0.261153,
		16.732777, 14.542890, 12.444367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.207523, 14.224193, 11.835512>,  <17.342119, 14.834924, 12.261561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.207523, 14.224193, 11.835512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.842770, 14.335102, 11.956565>,  <16.623917, 14.401648, 12.029197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.842770, 14.335102, 11.956565>,  <17.207523, 14.224193, 11.835512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.842770, 14.335102, 11.956565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332906, -0.068359, -0.940479,
		-0.240084, -0.958356, 0.154642,
		-0.911884, 0.277275, 0.302631,
		16.569204, 14.418284, 12.047354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.727823, 13.868762, 11.365477>,  <17.207523, 14.224193, 11.835512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.727823, 13.868762, 11.365477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.532425, 14.173920, 11.534882>,  <16.415186, 14.357015, 11.636524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.532425, 14.173920, 11.534882>,  <16.727823, 13.868762, 11.365477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.532425, 14.173920, 11.534882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473284, 0.176102, -0.863128,
		-0.733058, -0.622076, 0.275041,
		-0.488496, 0.762895, 0.423512,
		16.385876, 14.402788, 11.661935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.141768, 14.031409, 10.902488>,  <16.727823, 13.868762, 11.365477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.141768, 14.031409, 10.902488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.145535, 14.363514, 11.125406>,  <16.147795, 14.562777, 11.259157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.145535, 14.363514, 11.125406>,  <16.141768, 14.031409, 10.902488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.145535, 14.363514, 11.125406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263186, 0.539728, -0.799642,
		-0.964699, -0.139142, 0.223595,
		0.009417, 0.830261, 0.557296,
		16.148359, 14.612592, 11.292595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.526355, 14.240413, 10.890841>,  <16.141768, 14.031409, 10.902488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.526355, 14.240413, 10.890841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.740285, 14.563075, 10.991453>,  <15.868643, 14.756673, 11.051820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.740285, 14.563075, 10.991453>,  <15.526355, 14.240413, 10.890841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.740285, 14.563075, 10.991453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339038, 0.477535, -0.810564,
		-0.773960, 0.348233, 0.528885,
		0.534826, 0.806657, 0.251529,
		15.900733, 14.805072, 11.066912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.975830, 14.839442, 10.840960>,  <15.526355, 14.240413, 10.890841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.975830, 14.839442, 10.840960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.337950, 15.008986, 10.829827>,  <15.555222, 15.110713, 10.823148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.337950, 15.008986, 10.829827>,  <14.975830, 14.839442, 10.840960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.337950, 15.008986, 10.829827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328428, 0.656908, -0.678680,
		-0.269384, 0.623549, 0.733906,
		0.905299, 0.423861, -0.027830,
		15.609540, 15.136145, 10.821478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.798527, 15.457408, 10.939575>,  <14.975830, 14.839442, 10.840960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.798527, 15.457408, 10.939575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.159477, 15.470294, 10.767678>,  <15.376048, 15.478025, 10.664540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.159477, 15.470294, 10.767678>,  <14.798527, 15.457408, 10.939575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.159477, 15.470294, 10.767678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325872, 0.703546, -0.631530,
		0.281999, 0.709919, 0.645362,
		0.902377, 0.032214, -0.429742,
		15.430190, 15.479959, 10.638756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.835189, 16.039915, 10.598575>,  <14.798527, 15.457408, 10.939575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.835189, 16.039915, 10.598575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.145088, 15.859015, 10.421832>,  <15.331028, 15.750476, 10.315786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.145088, 15.859015, 10.421832>,  <14.835189, 16.039915, 10.598575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.145088, 15.859015, 10.421832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094793, 0.607861, -0.788365,
		0.625123, 0.652669, 0.428070,
		0.774748, -0.452247, -0.441856,
		15.377513, 15.723341, 10.289275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.416326, 16.568750, 10.346861>,  <14.835189, 16.039915, 10.598575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.416326, 16.568750, 10.346861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.423568, 16.226669, 10.139668>,  <15.427914, 16.021421, 10.015353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.423568, 16.226669, 10.139668>,  <15.416326, 16.568750, 10.346861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.423568, 16.226669, 10.139668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061132, 0.516149, -0.854315,
		0.997966, 0.047133, -0.042935,
		0.018106, -0.855201, -0.517980,
		15.429000, 15.970109, 9.984275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.455934, 16.778509, 9.669817>,  <15.416326, 16.568750, 10.346861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.455934, 16.778509, 9.669817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.492854, 16.381689, 9.635609>,  <15.515006, 16.143597, 9.615084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.492854, 16.381689, 9.635609>,  <15.455934, 16.778509, 9.669817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.492854, 16.381689, 9.635609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046955, 0.090130, -0.994823,
		0.994623, 0.087807, 0.054901,
		0.092301, -0.992052, -0.085522,
		15.520544, 16.084074, 9.609952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.959579, 16.563108, 9.074978>,  <15.455934, 16.778509, 9.669817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.959579, 16.563108, 9.074978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.679451, 16.288685, 9.153842>,  <15.511374, 16.124031, 9.201160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.679451, 16.288685, 9.153842>,  <15.959579, 16.563108, 9.074978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.679451, 16.288685, 9.153842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194178, -0.082694, -0.977475,
		0.686911, -0.722829, -0.075306,
		-0.700320, -0.686061, 0.197160,
		15.469355, 16.082867, 9.212990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.341360, 16.356934, 9.722989>,  <15.959579, 16.563108, 9.074978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.341360, 16.356934, 9.722989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.475056, 16.320351, 10.098206>,  <16.555273, 16.298401, 10.323336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.475056, 16.320351, 10.098206>,  <16.341360, 16.356934, 9.722989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.475056, 16.320351, 10.098206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697712, 0.693129, -0.181025,
		-0.633627, 0.714988, 0.295483,
		0.334238, -0.091459, 0.938041,
		16.575327, 16.292913, 10.379618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.223160, 16.999084, 10.022915>,  <16.341360, 16.356934, 9.722989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.223160, 16.999084, 10.022915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.526989, 16.782274, 10.166723>,  <16.709288, 16.652187, 10.253008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.526989, 16.782274, 10.166723>,  <16.223160, 16.999084, 10.022915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.526989, 16.782274, 10.166723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632315, 0.744879, -0.212915,
		-0.152395, 0.389055, 0.908522,
		0.759575, -0.542025, 0.359521,
		16.754862, 16.619667, 10.274580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.648626, 17.506380, 10.299134>,  <16.223160, 16.999084, 10.022915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.648626, 17.506380, 10.299134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.881802, 17.190001, 10.224750>,  <17.021708, 17.000174, 10.180119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.881802, 17.190001, 10.224750>,  <16.648626, 17.506380, 10.299134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.881802, 17.190001, 10.224750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696343, 0.604265, -0.387261,
		0.418673, 0.096257, 0.903021,
		0.582941, -0.790948, -0.185961,
		17.056684, 16.952717, 10.168962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.497849, 17.671991, 10.972622>,  <16.648626, 17.506380, 10.299134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.497849, 17.671991, 10.972622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.295771, 17.828125, 11.280497>,  <16.174524, 17.921804, 11.465221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.295771, 17.828125, 11.280497>,  <16.497849, 17.671991, 10.972622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.295771, 17.828125, 11.280497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740921, -0.261132, 0.618746,
		0.442507, 0.882864, -0.157283,
		-0.505197, 0.390333, 0.769686,
		16.144211, 17.945225, 11.511402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.017595, 18.144222, 11.441321>,  <16.497849, 17.671991, 10.972622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.017595, 18.144222, 11.441321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.712074, 17.987495, 11.646490>,  <16.528763, 17.893459, 11.769591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.712074, 17.987495, 11.646490>,  <17.017595, 18.144222, 11.441321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.712074, 17.987495, 11.646490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643251, -0.396521, 0.654981,
		-0.053247, 0.830212, 0.554899,
		-0.763802, -0.391815, 0.512921,
		16.482933, 17.869951, 11.800366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.969320, 18.449759, 12.207008>,  <17.017595, 18.144222, 11.441321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.969320, 18.449759, 12.207008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.856510, 18.069447, 12.155666>,  <16.788824, 17.841259, 12.124861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.856510, 18.069447, 12.155666>,  <16.969320, 18.449759, 12.207008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.856510, 18.069447, 12.155666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648425, -0.287501, 0.704903,
		-0.707111, 0.115573, 0.697594,
		-0.282026, -0.950782, -0.128355,
		16.771902, 17.784212, 12.117160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.771145, 17.981245, 12.852598>,  <16.969320, 18.449759, 12.207008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.771145, 17.981245, 12.852598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.963917, 17.747105, 12.591797>,  <17.079580, 17.606621, 12.435316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.963917, 17.747105, 12.591797>,  <16.771145, 17.981245, 12.852598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.963917, 17.747105, 12.591797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757450, -0.095751, 0.645833,
		-0.440469, -0.805106, 0.397230,
		0.481929, -0.585351, -0.652003,
		17.108496, 17.571499, 12.396196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.133076, 17.497047, 13.253789>,  <16.771145, 17.981245, 12.852598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.133076, 17.497047, 13.253789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.367064, 17.505648, 12.929482>,  <17.507456, 17.510809, 12.734897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.367064, 17.505648, 12.929482>,  <17.133076, 17.497047, 13.253789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.367064, 17.505648, 12.929482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810989, -0.028183, 0.584382,
		-0.010280, -0.999371, -0.033931,
		0.584971, 0.021510, -0.810769,
		17.542555, 17.512098, 12.686251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.444309, 16.907841, 13.229237>,  <17.133076, 17.497047, 13.253789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.444309, 16.907841, 13.229237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.667788, 17.153030, 13.005766>,  <17.801874, 17.300144, 12.871684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.667788, 17.153030, 13.005766>,  <17.444309, 16.907841, 13.229237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.667788, 17.153030, 13.005766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792430, -0.195731, 0.577705,
		0.244770, -0.765474, -0.595095,
		0.558697, 0.612976, -0.558676,
		17.835396, 17.336924, 12.838163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.101362, 16.554251, 13.190301>,  <17.444309, 16.907841, 13.229237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.101362, 16.554251, 13.190301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.165846, 16.935535, 13.088007>,  <18.204536, 17.164307, 13.026630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.165846, 16.935535, 13.088007>,  <18.101362, 16.554251, 13.190301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.165846, 16.935535, 13.088007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870428, -0.015196, 0.492061,
		0.465152, -0.301924, -0.832152,
		0.161210, 0.953211, -0.255735,
		18.214209, 17.221498, 13.011287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.704420, 16.560295, 12.962829>,  <18.101362, 16.554251, 13.190301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.704420, 16.560295, 12.962829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.651613, 16.947121, 13.049877>,  <18.619928, 17.179216, 13.102106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.651613, 16.947121, 13.049877>,  <18.704420, 16.560295, 12.962829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.651613, 16.947121, 13.049877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766498, -0.039614, 0.641024,
		0.628532, 0.251432, -0.736023,
		-0.132017, 0.967064, 0.217621,
		18.612007, 17.237240, 13.115164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.280958, 17.008705, 12.772557>,  <18.704420, 16.560295, 12.962829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.280958, 17.008705, 12.772557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.090784, 17.216053, 13.056883>,  <18.976681, 17.340462, 13.227478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.090784, 17.216053, 13.056883>,  <19.280958, 17.008705, 12.772557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.090784, 17.216053, 13.056883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828820, -0.007004, 0.559471,
		0.294992, 0.855127, -0.426306,
		-0.475433, 0.518371, 0.710813,
		18.948154, 17.371565, 13.270126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.844065, 17.350410, 13.026483>,  <19.280958, 17.008705, 12.772557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.844065, 17.350410, 13.026483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.566435, 17.393658, 13.311177>,  <19.399857, 17.419607, 13.481995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.566435, 17.393658, 13.311177>,  <19.844065, 17.350410, 13.026483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.566435, 17.393658, 13.311177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712125, -0.041821, 0.700806,
		0.105536, 0.993258, -0.047968,
		-0.694075, 0.108119, 0.711738,
		19.358212, 17.426094, 13.524698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.059708, 17.915062, 13.400682>,  <19.844065, 17.350410, 13.026483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.059708, 17.915062, 13.400682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.831873, 17.693865, 13.643916>,  <19.695171, 17.561146, 13.789856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.831873, 17.693865, 13.643916>,  <20.059708, 17.915062, 13.400682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.831873, 17.693865, 13.643916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786087, -0.150414, 0.599536,
		-0.240076, 0.819495, 0.520376,
		-0.569589, -0.552994, 0.608084,
		19.660995, 17.527967, 13.826342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.468824, 17.942116, 14.026743>,  <20.059708, 17.915062, 13.400682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.468824, 17.942116, 14.026743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.199808, 17.661581, 14.121241>,  <20.038399, 17.493259, 14.177939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.199808, 17.661581, 14.121241>,  <20.468824, 17.942116, 14.026743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.199808, 17.661581, 14.121241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617515, -0.355882, 0.701443,
		-0.407874, 0.617635, 0.672433,
		-0.672543, -0.701338, 0.236244,
		19.998045, 17.451180, 14.192114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.535519, 18.002798, 14.705185>,  <20.468824, 17.942116, 14.026743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.535519, 18.002798, 14.705185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.380102, 17.643970, 14.620994>,  <20.286852, 17.428673, 14.570479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.380102, 17.643970, 14.620994>,  <20.535519, 18.002798, 14.705185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.380102, 17.643970, 14.620994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600387, -0.419750, 0.680695,
		-0.698979, 0.138109, 0.701679,
		-0.388540, -0.897071, -0.210478,
		20.263540, 17.374849, 14.557850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.188828, 17.723667, 15.277550>,  <20.535519, 18.002798, 14.705185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.188828, 17.723667, 15.277550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.317318, 17.417027, 15.055151>,  <20.394413, 17.233042, 14.921712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.317318, 17.417027, 15.055151>,  <20.188828, 17.723667, 15.277550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.317318, 17.417027, 15.055151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552025, -0.325467, 0.767684,
		-0.769468, -0.553526, 0.318635,
		0.321228, -0.766603, -0.555997,
		20.413687, 17.187046, 14.888352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.116207, 17.172167, 15.723170>,  <20.188828, 17.723667, 15.277550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.116207, 17.172167, 15.723170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.364094, 17.066547, 15.427542>,  <20.512827, 17.003176, 15.250164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.364094, 17.066547, 15.427542>,  <20.116207, 17.172167, 15.723170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.364094, 17.066547, 15.427542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639256, -0.376488, 0.670529,
		-0.455305, -0.887995, -0.064521,
		0.619717, -0.264050, -0.739073,
		20.550009, 16.987333, 15.205820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.023727, 16.452290, 15.819652>,  <20.116207, 17.172167, 15.723170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.023727, 16.452290, 15.819652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.359823, 16.512640, 15.611329>,  <20.561480, 16.548851, 15.486336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.359823, 16.512640, 15.611329>,  <20.023727, 16.452290, 15.819652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.359823, 16.512640, 15.611329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515905, -0.518043, 0.682256,
		-0.166863, -0.841943, -0.513116,
		0.840237, 0.150876, -0.520805,
		20.611895, 16.557903, 15.455088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.336412, 15.833617, 15.927917>,  <20.023727, 16.452290, 15.819652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.336412, 15.833617, 15.927917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.636717, 16.069958, 15.809763>,  <20.816900, 16.211761, 15.738871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.636717, 16.069958, 15.809763>,  <20.336412, 15.833617, 15.927917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.636717, 16.069958, 15.809763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616896, -0.467214, 0.633364,
		0.236216, -0.657727, -0.715260,
		0.750761, 0.590852, -0.295386,
		20.861944, 16.247213, 15.721148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.895967, 15.440297, 15.789953>,  <20.336412, 15.833617, 15.927917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.895967, 15.440297, 15.789953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.055279, 15.798051, 15.871388>,  <21.150866, 16.012703, 15.920250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.055279, 15.798051, 15.871388>,  <20.895967, 15.440297, 15.789953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.055279, 15.798051, 15.871388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707748, -0.440831, 0.552052,
		0.583495, -0.075781, -0.808573,
		0.398279, 0.894386, 0.203589,
		21.174763, 16.066366, 15.932466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.521748, 15.369518, 15.584419>,  <20.895967, 15.440297, 15.789953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.521748, 15.369518, 15.584419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.542662, 15.676502, 15.840004>,  <21.555210, 15.860693, 15.993355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.542662, 15.676502, 15.840004>,  <21.521748, 15.369518, 15.584419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.542662, 15.676502, 15.840004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751297, -0.451749, 0.481119,
		0.657889, 0.454894, -0.600211,
		0.052286, 0.767460, 0.638961,
		21.558348, 15.906740, 16.031693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.187290, 15.398674, 15.781915>,  <21.521748, 15.369518, 15.584419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.187290, 15.398674, 15.781915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.979977, 15.564342, 16.081205>,  <21.855589, 15.663742, 16.260780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.979977, 15.564342, 16.081205>,  <22.187290, 15.398674, 15.781915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.979977, 15.564342, 16.081205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601556, -0.445321, 0.663189,
		0.607873, 0.793823, -0.018342,
		-0.518286, 0.414168, 0.748227,
		21.824492, 15.688592, 16.305674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.802778, 14.812326, 15.777404>,  <22.187290, 15.398674, 15.781915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.802778, 14.812326, 15.777404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.181061, 14.896878, 15.876163>,  <23.408030, 14.947609, 15.935419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.181061, 14.896878, 15.876163>,  <22.802778, 14.812326, 15.777404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.181061, 14.896878, 15.876163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313807, -0.791656, -0.524219,
		0.084651, 0.573236, -0.815006,
		0.945706, 0.211379, 0.246900,
		23.464773, 14.960292, 15.950233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.290747, 14.616370, 15.135607>,  <22.802778, 14.812326, 15.777404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.290747, 14.616370, 15.135607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.465462, 14.606831, 15.495306>,  <23.570292, 14.601107, 15.711125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.465462, 14.606831, 15.495306>,  <23.290747, 14.616370, 15.135607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.465462, 14.606831, 15.495306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485383, -0.835393, -0.257919,
		0.757376, 0.549135, -0.353315,
		0.436789, -0.023849, 0.899248,
		23.596498, 14.599676, 15.765080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.013779, 14.484866, 15.142465>,  <23.290747, 14.616370, 15.135607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.013779, 14.484866, 15.142465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.886051, 14.296006, 15.471125>,  <23.809414, 14.182690, 15.668321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.886051, 14.296006, 15.471125>,  <24.013779, 14.484866, 15.142465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.886051, 14.296006, 15.471125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411008, -0.850251, -0.328855,
		0.853878, 0.232695, 0.465560,
		-0.319320, -0.472151, 0.821650,
		23.790255, 14.154361, 15.717620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.888968, 14.069210, 14.550665>,  <24.013779, 14.484866, 15.142465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.888968, 14.069210, 14.550665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.956610, 14.463428, 14.554756>,  <23.997194, 14.699959, 14.557211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.956610, 14.463428, 14.554756>,  <23.888968, 14.069210, 14.550665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.956610, 14.463428, 14.554756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920386, -0.161621, 0.356044,
		0.352551, -0.050794, -0.934413,
		0.169105, 0.985545, 0.010229,
		24.007341, 14.759091, 14.557825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.476362, 14.137772, 14.133336>,  <23.888968, 14.069210, 14.550665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.476362, 14.137772, 14.133336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.420074, 14.411985, 14.419061>,  <24.386303, 14.576513, 14.590496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.420074, 14.411985, 14.419061>,  <24.476362, 14.137772, 14.133336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.420074, 14.411985, 14.419061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846194, -0.291265, 0.446228,
		0.513959, 0.667239, -0.539108,
		-0.140718, 0.685534, 0.714313,
		24.377859, 14.617645, 14.633354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.591333, 14.829642, 14.086996>,  <24.476362, 14.137772, 14.133336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.591333, 14.829642, 14.086996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.576286, 14.627881, 14.432055>,  <24.567259, 14.506824, 14.639091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.576286, 14.627881, 14.432055>,  <24.591333, 14.829642, 14.086996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.576286, 14.627881, 14.432055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993964, -0.107914, -0.019754,
		0.103056, 0.856698, 0.505418,
		-0.037618, -0.504403, 0.862648,
		24.565001, 14.476560, 14.690850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.244314, 15.009933, 14.377930>,  <24.591333, 14.829642, 14.086996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.244314, 15.009933, 14.377930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.473913, 14.872603, 14.675293>,  <25.611673, 14.790206, 14.853711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.473913, 14.872603, 14.675293>,  <25.244314, 15.009933, 14.377930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.473913, 14.872603, 14.675293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815724, 0.160409, -0.555755,
		0.071554, 0.925418, 0.372132,
		0.573999, -0.343324, 0.743407,
		25.646112, 14.769607, 14.898315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.890049, 15.532736, 14.500674>,  <25.244314, 15.009933, 14.377930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.890049, 15.532736, 14.500674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.939913, 15.141273, 14.566023>,  <25.969831, 14.906395, 14.605232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.939913, 15.141273, 14.566023>,  <25.890049, 15.532736, 14.500674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.939913, 15.141273, 14.566023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794036, -0.000332, -0.607870,
		0.594951, 0.205498, 0.777048,
		0.124658, -0.978658, 0.163370,
		25.977310, 14.847675, 14.615034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.362011, 15.109821, 14.929669>,  <25.890049, 15.532736, 14.500674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.362011, 15.109821, 14.929669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.735355, 15.050895, 15.060597>,  <26.959362, 15.015539, 15.139154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.735355, 15.050895, 15.060597>,  <26.362011, 15.109821, 14.929669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.735355, 15.050895, 15.060597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212045, 0.962066, -0.171654,
		-0.289616, 0.229621, 0.929191,
		0.933359, -0.147317, 0.327320,
		27.015364, 15.006700, 15.158793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<12.905607, 19.368589, 25.979666> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.115626, 19.031513, 26.027328>,  <13.241638, 18.829268, 26.055925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.115626, 19.031513, 26.027328>,  <12.905607, 19.368589, 25.979666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.115626, 19.031513, 26.027328> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327963, -0.329528, -0.885354,
		0.785343, 0.425776, -0.449389,
		0.525049, -0.842690, 0.119155,
		13.273141, 18.778706, 26.063074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.125525, 19.197039, 25.367720>,  <12.905607, 19.368589, 25.979666>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.125525, 19.197039, 25.367720> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.153493, 18.841175, 25.548216>,  <13.170274, 18.627657, 25.656513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.153493, 18.841175, 25.548216>,  <13.125525, 19.197039, 25.367720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.153493, 18.841175, 25.548216> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287616, -0.451117, -0.844849,
		0.955190, -0.070711, -0.287423,
		0.069921, -0.889659, 0.451240,
		13.174469, 18.574278, 25.683588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.283769, 18.846958, 24.899227>,  <13.125525, 19.197039, 25.367720>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.283769, 18.846958, 24.899227> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.197047, 18.545221, 25.147085>,  <13.145015, 18.364180, 25.295801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.197047, 18.545221, 25.147085>,  <13.283769, 18.846958, 24.899227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.197047, 18.545221, 25.147085> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406016, -0.507564, -0.759954,
		0.887777, -0.416347, -0.196234,
		-0.216803, -0.754344, 0.619647,
		13.132007, 18.318918, 25.332979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.519922, 18.278286, 24.593239>,  <13.283769, 18.846958, 24.899227>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.519922, 18.278286, 24.593239> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.241860, 18.149675, 24.850418>,  <13.075024, 18.072508, 25.004725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.241860, 18.149675, 24.850418>,  <13.519922, 18.278286, 24.593239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.241860, 18.149675, 24.850418> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325691, -0.656465, -0.680426,
		0.640848, -0.682402, 0.351626,
		-0.695154, -0.321528, 0.642946,
		13.033314, 18.053217, 25.043303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.550780, 17.570040, 24.596569>,  <13.519922, 18.278286, 24.593239>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.550780, 17.570040, 24.596569> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.180603, 17.668854, 24.711481>,  <12.958497, 17.728142, 24.780428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.180603, 17.668854, 24.711481>,  <13.550780, 17.570040, 24.596569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.180603, 17.668854, 24.711481> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356603, -0.311694, -0.880727,
		-0.128025, -0.917508, 0.376548,
		-0.925442, 0.247033, 0.287282,
		12.902970, 17.742964, 24.797665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.208115, 16.938328, 24.605291>,  <13.550780, 17.570040, 24.596569>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.208115, 16.938328, 24.605291> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.900884, 17.193533, 24.583408>,  <12.716545, 17.346657, 24.570278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.900884, 17.193533, 24.583408>,  <13.208115, 16.938328, 24.605291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.900884, 17.193533, 24.583408> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290732, -0.423562, -0.857945,
		-0.570554, -0.643063, 0.510820,
		-0.768077, 0.638016, -0.054706,
		12.670460, 17.384937, 24.566998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.600793, 16.502827, 24.258600>,  <13.208115, 16.938328, 24.605291>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.600793, 16.502827, 24.258600> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.519064, 16.890728, 24.205193>,  <12.470026, 17.123468, 24.173147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.519064, 16.890728, 24.205193>,  <12.600793, 16.502827, 24.258600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.519064, 16.890728, 24.205193> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327423, -0.196243, -0.924274,
		-0.922522, -0.145133, 0.357617,
		-0.204323, 0.969755, -0.133518,
		12.457767, 17.181654, 24.165136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.899201, 16.507776, 23.955168>,  <12.600793, 16.502827, 24.258600>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.899201, 16.507776, 23.955168> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.076565, 16.853619, 23.860641>,  <12.182983, 17.061125, 23.803925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.076565, 16.853619, 23.860641>,  <11.899201, 16.507776, 23.955168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.076565, 16.853619, 23.860641> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258972, -0.128828, -0.957255,
		-0.858092, 0.485655, 0.166785,
		0.443409, 0.864605, -0.236317,
		12.209587, 17.113001, 23.789745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.391479, 16.816362, 23.510939>,  <11.899201, 16.507776, 23.955168>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.391479, 16.816362, 23.510939> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.703277, 17.056906, 23.440790>,  <11.890355, 17.201233, 23.398701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.703277, 17.056906, 23.440790>,  <11.391479, 16.816362, 23.510939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.703277, 17.056906, 23.440790> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252415, 0.045310, -0.966558,
		-0.573303, 0.797692, 0.187111,
		0.779493, 0.601360, -0.175373,
		11.937124, 17.237314, 23.388178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.110271, 17.494284, 23.291533>,  <11.391479, 16.816362, 23.510939>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.110271, 17.494284, 23.291533> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.469798, 17.404762, 23.140778>,  <11.685513, 17.351049, 23.050325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.469798, 17.404762, 23.140778>,  <11.110271, 17.494284, 23.291533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.469798, 17.404762, 23.140778> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356026, 0.128808, -0.925556,
		0.255687, 0.966085, 0.036096,
		0.898816, -0.223802, -0.376886,
		11.739443, 17.337622, 23.027712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.195564, 17.953749, 22.791849>,  <11.110271, 17.494284, 23.291533>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.195564, 17.953749, 22.791849> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.455390, 17.671398, 22.678848>,  <11.611285, 17.501987, 22.611048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.455390, 17.671398, 22.678848>,  <11.195564, 17.953749, 22.791849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.455390, 17.671398, 22.678848> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151062, 0.244334, -0.957853,
		0.745149, 0.664862, 0.052079,
		0.649564, -0.705875, -0.282500,
		11.650259, 17.459635, 22.594099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.479900, 18.242252, 22.181631>,  <11.195564, 17.953749, 22.791849>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.479900, 18.242252, 22.181631> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.647801, 17.880377, 22.152374>,  <11.748542, 17.663252, 22.134821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.647801, 17.880377, 22.152374>,  <11.479900, 18.242252, 22.181631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.647801, 17.880377, 22.152374> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010087, 0.085228, -0.996311,
		0.907582, 0.417466, 0.044900,
		0.419753, -0.904687, -0.073140,
		11.773727, 17.608971, 22.130432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.085609, 18.331408, 21.724800>,  <11.479900, 18.242252, 22.181631>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.085609, 18.331408, 21.724800> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.003296, 17.939970, 21.723766>,  <11.953908, 17.705107, 21.723146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.003296, 17.939970, 21.723766>,  <12.085609, 18.331408, 21.724800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.003296, 17.939970, 21.723766> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080168, -0.014227, -0.996680,
		0.975308, -0.205307, 0.081379,
		-0.205783, -0.978594, -0.002583,
		11.941561, 17.646391, 21.722992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.491597, 18.074631, 21.209044>,  <12.085609, 18.331408, 21.724800>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.491597, 18.074631, 21.209044> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.218090, 17.789412, 21.271042>,  <12.053986, 17.618280, 21.308241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.218090, 17.789412, 21.271042>,  <12.491597, 18.074631, 21.209044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.218090, 17.789412, 21.271042> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146135, -0.074293, -0.986471,
		0.714916, -0.697168, -0.053402,
		-0.683769, -0.713048, 0.154994,
		12.012959, 17.575497, 21.317539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.695391, 17.429293, 20.900459>,  <12.491597, 18.074631, 21.209044>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.695391, 17.429293, 20.900459> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.295406, 17.431303, 20.903324>,  <12.055415, 17.432508, 20.905043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.295406, 17.431303, 20.903324>,  <12.695391, 17.429293, 20.900459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.295406, 17.431303, 20.903324> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007868, -0.158567, -0.987317,
		-0.003825, -0.987336, 0.158601,
		-0.999962, 0.005024, 0.007162,
		11.995418, 17.432812, 20.905472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.472142, 16.875158, 20.567781>,  <12.695391, 17.429293, 20.900459>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.472142, 16.875158, 20.567781> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.196045, 17.162954, 20.537062>,  <12.030386, 17.335632, 20.518629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.196045, 17.162954, 20.537062>,  <12.472142, 16.875158, 20.567781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.196045, 17.162954, 20.537062> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031526, -0.076135, -0.996599,
		-0.722890, -0.690317, 0.029870,
		-0.690244, 0.719489, -0.076800,
		11.988972, 17.378801, 20.514021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.352401, 16.854980, 19.879314>,  <12.472142, 16.875158, 20.567781>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.352401, 16.854980, 19.879314> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.097889, 17.152863, 19.959871>,  <11.945182, 17.331593, 20.008205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.097889, 17.152863, 19.959871>,  <12.352401, 16.854980, 19.879314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.097889, 17.152863, 19.959871> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259398, 0.039327, -0.964969,
		-0.726540, -0.666232, 0.168152,
		-0.636281, 0.744707, 0.201392,
		11.907004, 17.376274, 20.020288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.868415, 16.665016, 19.434219>,  <12.352401, 16.854980, 19.879314>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.868415, 16.665016, 19.434219> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.841860, 17.046452, 19.551701>,  <11.825927, 17.275312, 19.622190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.841860, 17.046452, 19.551701>,  <11.868415, 16.665016, 19.434219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.841860, 17.046452, 19.551701> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060475, 0.297658, -0.952755,
		-0.995960, -0.045490, -0.077429,
		-0.066388, 0.953588, 0.293704,
		11.821943, 17.332527, 19.639812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.350891, 17.005335, 18.963474>,  <11.868415, 16.665016, 19.434219>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.350891, 17.005335, 18.963474> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.586719, 17.290285, 19.115751>,  <11.728215, 17.461256, 19.207117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.586719, 17.290285, 19.115751>,  <11.350891, 17.005335, 18.963474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.586719, 17.290285, 19.115751> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072009, 0.423085, -0.903224,
		-0.804501, 0.559927, 0.198141,
		0.589570, 0.712377, 0.380692,
		11.763590, 17.503998, 19.229959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.154868, 17.654209, 18.699024>,  <11.350891, 17.005335, 18.963474>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.154868, 17.654209, 18.699024> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.517107, 17.756186, 18.834612>,  <11.734450, 17.817371, 18.915964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.517107, 17.756186, 18.834612>,  <11.154868, 17.654209, 18.699024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.517107, 17.756186, 18.834612> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207594, 0.430505, -0.878391,
		-0.369865, 0.865836, 0.336940,
		0.905596, 0.254939, 0.338970,
		11.788786, 17.832666, 18.936302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.245815, 18.425291, 18.586815>,  <11.154868, 17.654209, 18.699024>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.245815, 18.425291, 18.586815> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.610694, 18.262875, 18.608822>,  <11.829621, 18.165424, 18.622026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.610694, 18.262875, 18.608822>,  <11.245815, 18.425291, 18.586815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.610694, 18.262875, 18.608822> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286264, 0.535444, -0.794577,
		0.293173, 0.740560, 0.604665,
		0.912196, -0.406043, 0.055018,
		11.884353, 18.141062, 18.625328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.811452, 18.951202, 18.623705>,  <11.245815, 18.425291, 18.586815>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.811452, 18.951202, 18.623705> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.958931, 18.609983, 18.475992>,  <12.047419, 18.405252, 18.387363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.958931, 18.609983, 18.475992>,  <11.811452, 18.951202, 18.623705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.958931, 18.609983, 18.475992> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350392, 0.495509, -0.794793,
		0.860980, 0.163645, 0.481595,
		0.368699, -0.853048, -0.369284,
		12.069540, 18.354069, 18.365208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.089508, 18.812235, 17.926012>,  <11.811452, 18.951202, 18.623705>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.089508, 18.812235, 17.926012> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.221516, 19.169697, 17.804377>,  <12.300720, 19.384174, 17.731396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.221516, 19.169697, 17.804377>,  <12.089508, 18.812235, 17.926012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.221516, 19.169697, 17.804377> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343345, 0.186437, 0.920519,
		0.879319, -0.408197, -0.245303,
		0.330019, 0.893653, -0.304090,
		12.320521, 19.437794, 17.713150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.734552, 18.856466, 18.288303>,  <12.089508, 18.812235, 17.926012>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.734552, 18.856466, 18.288303> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.693589, 19.222902, 18.133232>,  <12.669011, 19.442764, 18.040190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.693589, 19.222902, 18.133232>,  <12.734552, 18.856466, 18.288303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.693589, 19.222902, 18.133232> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426021, 0.392567, 0.815105,
		0.898898, -0.081685, -0.430475,
		-0.102408, 0.916089, -0.387677,
		12.662867, 19.497728, 18.016930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.343996, 19.224535, 18.363180>,  <12.734552, 18.856466, 18.288303>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.343996, 19.224535, 18.363180> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.055175, 19.500961, 18.350128>,  <12.881882, 19.666817, 18.342297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.055175, 19.500961, 18.350128>,  <13.343996, 19.224535, 18.363180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.055175, 19.500961, 18.350128> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409829, 0.465252, 0.784589,
		0.557386, 0.553142, -0.619157,
		-0.722053, 0.691067, -0.032631,
		12.838559, 19.708282, 18.340340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.687207, 19.867710, 18.298052>,  <13.343996, 19.224535, 18.363180>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.687207, 19.867710, 18.298052> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.322721, 19.931406, 18.450014>,  <13.104029, 19.969624, 18.541191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.322721, 19.931406, 18.450014>,  <13.687207, 19.867710, 18.298052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.322721, 19.931406, 18.450014> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408810, 0.462861, 0.786533,
		-0.050596, 0.872011, -0.486865,
		-0.911216, 0.159240, 0.379906,
		13.049356, 19.979177, 18.563986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.808225, 20.460936, 18.765123>,  <13.687207, 19.867710, 18.298052>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.808225, 20.460936, 18.765123> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.447169, 20.345915, 18.893223>,  <13.230536, 20.276903, 18.970083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.447169, 20.345915, 18.893223>,  <13.808225, 20.460936, 18.765123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.447169, 20.345915, 18.893223> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111589, 0.562278, 0.819385,
		-0.415683, 0.775345, -0.475446,
		-0.902638, -0.287550, 0.320249,
		13.176378, 20.259649, 18.989298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.566520, 21.086840, 19.071207>,  <13.808225, 20.460936, 18.765123>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.566520, 21.086840, 19.071207> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.295036, 20.830093, 19.213959>,  <13.132146, 20.676046, 19.299610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.295036, 20.830093, 19.213959>,  <13.566520, 21.086840, 19.071207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.295036, 20.830093, 19.213959> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072483, 0.425024, 0.902275,
		-0.730821, 0.638251, -0.241944,
		-0.678710, -0.641865, 0.356879,
		13.091423, 20.637533, 19.321022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.959464, 21.441967, 19.387800>,  <13.566520, 21.086840, 19.071207>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.959464, 21.441967, 19.387800> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.987194, 21.087221, 19.570518>,  <13.003832, 20.874372, 19.680149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.987194, 21.087221, 19.570518>,  <12.959464, 21.441967, 19.387800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.987194, 21.087221, 19.570518> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039345, 0.455111, 0.889565,
		-0.996818, -0.079642, -0.003343,
		0.069325, -0.886866, 0.456797,
		13.007992, 20.821161, 19.707558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.473225, 21.411926, 20.054289>,  <12.959464, 21.441967, 19.387800>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.473225, 21.411926, 20.054289> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.773519, 21.149292, 20.083385>,  <12.953695, 20.991711, 20.100843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.773519, 21.149292, 20.083385>,  <12.473225, 21.411926, 20.054289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.773519, 21.149292, 20.083385> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087898, 0.208421, 0.974081,
		-0.654729, -0.724883, 0.214182,
		0.750735, -0.656586, 0.072743,
		12.998739, 20.952316, 20.105209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.354027, 20.992615, 20.712692>,  <12.473225, 21.411926, 20.054289>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.354027, 20.992615, 20.712692> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.741319, 20.952879, 20.620899>,  <12.973694, 20.929037, 20.565823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.741319, 20.952879, 20.620899>,  <12.354027, 20.992615, 20.712692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.741319, 20.952879, 20.620899> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240769, 0.122493, 0.962822,
		-0.067536, -0.987485, 0.142519,
		0.968230, -0.099339, -0.229484,
		13.031788, 20.923079, 20.552053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.627266, 20.491434, 21.199404>,  <12.354027, 20.992615, 20.712692>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.627266, 20.491434, 21.199404> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.952821, 20.682901, 21.067669>,  <13.148154, 20.797781, 20.988628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.952821, 20.682901, 21.067669>,  <12.627266, 20.491434, 21.199404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.952821, 20.682901, 21.067669> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352044, 0.044666, 0.934917,
		0.462224, -0.876860, -0.132159,
		0.813888, 0.478667, -0.329339,
		13.196987, 20.826502, 20.968866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.182629, 20.227596, 21.625469>,  <12.627266, 20.491434, 21.199404>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.182629, 20.227596, 21.625469> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.317018, 20.576593, 21.483553>,  <13.397651, 20.785992, 21.398403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.317018, 20.576593, 21.483553>,  <13.182629, 20.227596, 21.625469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.317018, 20.576593, 21.483553> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420687, 0.198017, 0.885331,
		0.842701, -0.446702, -0.300519,
		0.335972, 0.872495, -0.354791,
		13.417809, 20.838341, 21.377115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.822588, 20.215612, 21.825262>,  <13.182629, 20.227596, 21.625469>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.822588, 20.215612, 21.825262> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.760839, 20.604275, 21.753651>,  <13.723789, 20.837473, 21.710684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.760839, 20.604275, 21.753651>,  <13.822588, 20.215612, 21.825262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.760839, 20.604275, 21.753651> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448668, 0.230383, 0.863494,
		0.880265, 0.052976, -0.471516,
		-0.154373, 0.971657, -0.179030,
		13.714526, 20.895771, 21.699942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.374338, 20.606449, 22.040501>,  <13.822588, 20.215612, 21.825262>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.374338, 20.606449, 22.040501> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.088296, 20.886034, 22.037090>,  <13.916671, 21.053785, 22.035044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.088296, 20.886034, 22.037090>,  <14.374338, 20.606449, 22.040501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.088296, 20.886034, 22.037090> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487232, 0.507156, 0.710913,
		0.501227, 0.504224, -0.703228,
		-0.715106, 0.698964, -0.008525,
		13.873764, 21.095724, 22.034533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.718143, 21.083601, 22.354267>,  <14.374338, 20.606449, 22.040501>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.718143, 21.083601, 22.354267> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.350699, 21.241310, 22.364883>,  <14.130233, 21.335936, 22.371254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.350699, 21.241310, 22.364883>,  <14.718143, 21.083601, 22.354267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.350699, 21.241310, 22.364883> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183895, 0.367070, 0.911834,
		0.349769, 0.842501, -0.409700,
		-0.918610, 0.394273, 0.026542,
		14.075116, 21.359592, 22.372847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.850770, 21.743219, 22.692951>,  <14.718143, 21.083601, 22.354267>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.850770, 21.743219, 22.692951> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.476529, 21.606766, 22.729343>,  <14.251985, 21.524895, 22.751179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.476529, 21.606766, 22.729343>,  <14.850770, 21.743219, 22.692951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.476529, 21.606766, 22.729343> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036171, 0.163725, 0.985843,
		-0.351199, 0.925647, -0.140842,
		-0.935602, -0.341132, 0.090982,
		14.195848, 21.504427, 22.756638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.477119, 22.235012, 23.039099>,  <14.850770, 21.743219, 22.692951>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.477119, 22.235012, 23.039099> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.236860, 21.921106, 23.100246>,  <14.092705, 21.732763, 23.136934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.236860, 21.921106, 23.100246>,  <14.477119, 22.235012, 23.039099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.236860, 21.921106, 23.100246> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094687, 0.259677, 0.961042,
		-0.793888, 0.562772, -0.230282,
		-0.600647, -0.784764, 0.152867,
		14.056666, 21.685677, 23.146107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.123137, 22.436380, 23.568138>,  <14.477119, 22.235012, 23.039099>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.123137, 22.436380, 23.568138> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.065142, 22.040777, 23.556557>,  <14.030345, 21.803415, 23.549608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.065142, 22.040777, 23.556557>,  <14.123137, 22.436380, 23.568138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.065142, 22.040777, 23.556557> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142390, -0.049812, 0.988557,
		-0.979134, 0.139205, 0.148047,
		-0.144986, -0.989010, -0.028952,
		14.021646, 21.744074, 23.547871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.610977, 22.327324, 24.052568>,  <14.123137, 22.436380, 23.568138>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.610977, 22.327324, 24.052568> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.795411, 21.976223, 24.000484>,  <13.906072, 21.765562, 23.969234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.795411, 21.976223, 24.000484>,  <13.610977, 22.327324, 24.052568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.795411, 21.976223, 24.000484> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093168, -0.098039, 0.990812,
		-0.882451, -0.468979, 0.036574,
		0.461085, -0.877751, -0.130208,
		13.933737, 21.712898, 23.961422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<13.155000, 21.772419, 24.489563> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.528281, 21.655197, 24.406376>,  <13.752250, 21.584864, 24.356464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.528281, 21.655197, 24.406376>,  <13.155000, 21.772419, 24.489563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.528281, 21.655197, 24.406376> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108986, -0.320659, 0.940904,
		-0.342421, -0.900720, -0.267302,
		0.933204, -0.293053, -0.207967,
		13.808242, 21.567280, 24.343987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.239528, 21.142744, 24.874281>,  <13.155000, 21.772419, 24.489563>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.239528, 21.142744, 24.874281> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.614647, 21.265951, 24.810209>,  <13.839719, 21.339876, 24.771767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.614647, 21.265951, 24.810209>,  <13.239528, 21.142744, 24.874281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.614647, 21.265951, 24.810209> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233259, -0.217291, 0.947826,
		0.257144, -0.926233, -0.275624,
		0.937799, 0.308020, -0.160177,
		13.895987, 21.358356, 24.762156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.668322, 20.601791, 25.126543>,  <13.239528, 21.142744, 24.874281>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.668322, 20.601791, 25.126543> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.908775, 20.921364, 25.133984>,  <14.053047, 21.113108, 25.138447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.908775, 20.921364, 25.133984>,  <13.668322, 20.601791, 25.126543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.908775, 20.921364, 25.133984> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180000, -0.158038, 0.970888,
		0.778613, -0.580286, -0.238810,
		0.601134, 0.798932, 0.018599,
		14.089115, 21.161043, 25.139563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.210711, 20.336956, 25.564447>,  <13.668322, 20.601791, 25.126543>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.210711, 20.336956, 25.564447> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.253944, 20.734304, 25.548775>,  <14.279885, 20.972713, 25.539371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.253944, 20.734304, 25.548775>,  <14.210711, 20.336956, 25.564447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.253944, 20.734304, 25.548775> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026012, 0.036574, 0.998992,
		0.993801, -0.108995, -0.021886,
		0.108085, 0.993369, -0.039182,
		14.286370, 21.032314, 25.537020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.917377, 20.490826, 25.827238>,  <14.210711, 20.336956, 25.564447>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.917377, 20.490826, 25.827238> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.693803, 20.818686, 25.877466>,  <14.559658, 21.015402, 25.907604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.693803, 20.818686, 25.877466>,  <14.917377, 20.490826, 25.827238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.693803, 20.818686, 25.877466> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264322, 0.032579, 0.963884,
		0.785954, 0.571941, -0.234860,
		-0.558936, 0.819647, 0.125571,
		14.526122, 21.064579, 25.915138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.346927, 20.962381, 26.335896>,  <14.917377, 20.490826, 25.827238>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.346927, 20.962381, 26.335896> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.973759, 21.106361, 26.339802>,  <14.749858, 21.192749, 26.342146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.973759, 21.106361, 26.339802>,  <15.346927, 20.962381, 26.335896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.973759, 21.106361, 26.339802> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068254, 0.150143, 0.986305,
		0.353555, 0.920811, -0.164639,
		-0.932920, 0.359950, 0.009765,
		14.693883, 21.214346, 26.342731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.373108, 21.717169, 26.587688>,  <15.346927, 20.962381, 26.335896>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.373108, 21.717169, 26.587688> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.004570, 21.576420, 26.653790>,  <14.783447, 21.491970, 26.693451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.004570, 21.576420, 26.653790>,  <15.373108, 21.717169, 26.587688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.004570, 21.576420, 26.653790> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054518, 0.303941, 0.951130,
		-0.384902, 0.885329, -0.260852,
		-0.921346, -0.351871, 0.165254,
		14.728167, 21.470860, 26.703365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.019401, 22.227636, 26.976284>,  <15.373108, 21.717169, 26.587688>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.019401, 22.227636, 26.976284> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.830448, 21.885059, 27.059580>,  <14.717077, 21.679514, 27.109558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.830448, 21.885059, 27.059580>,  <15.019401, 22.227636, 26.976284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.830448, 21.885059, 27.059580> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005649, 0.239200, 0.970954,
		-0.881377, 0.457483, -0.117832,
		-0.472381, -0.856442, 0.208241,
		14.688734, 21.628126, 27.122051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.463484, 22.484804, 27.414383>,  <15.019401, 22.227636, 26.976284>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.463484, 22.484804, 27.414383> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.543827, 22.099651, 27.486507>,  <14.592032, 21.868559, 27.529781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.543827, 22.099651, 27.486507>,  <14.463484, 22.484804, 27.414383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.543827, 22.099651, 27.486507> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132909, 0.209147, 0.968810,
		-0.970562, -0.170628, 0.169984,
		0.200857, -0.962883, 0.180312,
		14.604084, 21.810787, 27.540602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.116298, 22.378296, 28.035910>,  <14.463484, 22.484804, 27.414383>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.116298, 22.378296, 28.035910> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.339795, 22.046696, 28.026381>,  <14.473893, 21.847736, 28.020662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.339795, 22.046696, 28.026381>,  <14.116298, 22.378296, 28.035910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.339795, 22.046696, 28.026381> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072243, 0.020034, 0.997186,
		-0.826189, -0.558891, 0.071083,
		0.558743, -0.828999, -0.023824,
		14.507418, 21.797997, 28.019234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.910762, 21.966480, 28.692970>,  <14.116298, 22.378296, 28.035910>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.910762, 21.966480, 28.692970> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.274858, 21.851442, 28.573805>,  <14.493315, 21.782419, 28.502306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.274858, 21.851442, 28.573805>,  <13.910762, 21.966480, 28.692970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.274858, 21.851442, 28.573805> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261313, -0.159149, 0.952044,
		-0.321219, -0.944436, -0.069710,
		0.910238, -0.287598, -0.297915,
		14.547930, 21.765163, 28.484430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.090488, 21.324799, 29.024153>,  <13.910762, 21.966480, 28.692970>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.090488, 21.324799, 29.024153> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.438191, 21.481646, 28.903730>,  <14.646813, 21.575754, 28.831476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.438191, 21.481646, 28.903730>,  <14.090488, 21.324799, 29.024153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.438191, 21.481646, 28.903730> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306470, 0.050407, 0.950545,
		0.387901, -0.918533, -0.076356,
		0.869257, 0.392118, -0.301056,
		14.698969, 21.599281, 28.813414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.679623, 20.929495, 29.266302>,  <14.090488, 21.324799, 29.024153>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.679623, 20.929495, 29.266302> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.803332, 21.304321, 29.201488>,  <14.877558, 21.529217, 29.162600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.803332, 21.304321, 29.201488>,  <14.679623, 20.929495, 29.266302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.803332, 21.304321, 29.201488> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492267, -0.011970, 0.870362,
		0.813648, -0.348945, -0.464989,
		0.309274, 0.937067, -0.162034,
		14.896114, 21.585442, 29.152878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.359755, 20.971289, 29.523247>,  <14.679623, 20.929495, 29.266302>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.359755, 20.971289, 29.523247> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.225721, 21.346670, 29.489719>,  <15.145301, 21.571899, 29.469603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.225721, 21.346670, 29.489719>,  <15.359755, 20.971289, 29.523247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.225721, 21.346670, 29.489719> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430106, 0.231509, 0.872590,
		0.838289, 0.256340, -0.481209,
		-0.335084, 0.938453, -0.083818,
		15.125196, 21.628206, 29.464575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.938118, 21.367943, 29.736046>,  <15.359755, 20.971289, 29.523247>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.938118, 21.367943, 29.736046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.622312, 21.611393, 29.767649>,  <15.432828, 21.757463, 29.786610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.622312, 21.611393, 29.767649>,  <15.938118, 21.367943, 29.736046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.622312, 21.611393, 29.767649> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362862, 0.359088, 0.859876,
		0.494972, 0.707553, -0.504352,
		-0.789515, 0.608625, 0.079006,
		15.385457, 21.793980, 29.791351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.318182, 22.107603, 29.839170>,  <15.938118, 21.367943, 29.736046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.318182, 22.107603, 29.839170> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.938142, 22.132853, 29.961365>,  <15.710117, 22.148003, 30.034681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.938142, 22.132853, 29.961365>,  <16.318182, 22.107603, 29.839170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.938142, 22.132853, 29.961365> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311933, 0.186463, 0.931627,
		0.001846, 0.980432, -0.196849,
		-0.950102, 0.063123, 0.305484,
		15.653111, 22.151789, 30.053011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.337801, 22.704063, 30.271473>,  <16.318182, 22.107603, 29.839170>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.337801, 22.704063, 30.271473> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.029663, 22.470011, 30.372818>,  <15.844781, 22.329578, 30.433626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.029663, 22.470011, 30.372818>,  <16.337801, 22.704063, 30.271473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.029663, 22.470011, 30.372818> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272791, 0.056720, 0.960400,
		-0.576331, 0.808953, 0.115925,
		-0.770343, -0.585131, 0.253364,
		15.798560, 22.294472, 30.448828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.943136, 23.039011, 30.728720>,  <16.337801, 22.704063, 30.271473>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.943136, 23.039011, 30.728720> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.844219, 22.658514, 30.802460>,  <15.784869, 22.430216, 30.846704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.844219, 22.658514, 30.802460>,  <15.943136, 23.039011, 30.728720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.844219, 22.658514, 30.802460> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238547, 0.124634, 0.963100,
		-0.939118, 0.282144, 0.196095,
		-0.247293, -0.951242, 0.184350,
		15.770031, 22.373142, 30.857765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.826400, 23.093870, 31.336151>,  <15.943136, 23.039011, 30.728720>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.826400, 23.093870, 31.336151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.820775, 22.695511, 31.300406>,  <15.817400, 22.456495, 31.278957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.820775, 22.695511, 31.300406>,  <15.826400, 23.093870, 31.336151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.820775, 22.695511, 31.300406> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187706, -0.090414, 0.978055,
		-0.982125, -0.003021, 0.188208,
		-0.014062, -0.995900, -0.089365,
		15.816557, 22.396742, 31.273596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.368918, 22.822668, 31.935352>,  <15.826400, 23.093870, 31.336151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.368918, 22.822668, 31.935352> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.639935, 22.547071, 31.832411>,  <15.802545, 22.381714, 31.770645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.639935, 22.547071, 31.832411>,  <15.368918, 22.822668, 31.935352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.639935, 22.547071, 31.832411> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310633, -0.049101, 0.949261,
		-0.666668, -0.723105, 0.180755,
		0.677540, -0.688991, -0.257355,
		15.843197, 22.340374, 31.755205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.267522, 22.389706, 32.445522>,  <15.368918, 22.822668, 31.935352>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.267522, 22.389706, 32.445522> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.616127, 22.274292, 32.286922>,  <15.825290, 22.205044, 32.191761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.616127, 22.274292, 32.286922>,  <15.267522, 22.389706, 32.445522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.616127, 22.274292, 32.286922> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359148, -0.174971, 0.916732,
		-0.333887, -0.941346, -0.048863,
		0.871512, -0.288536, -0.396503,
		15.877581, 22.187731, 32.167973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.429371, 21.834492, 32.842876>,  <15.267522, 22.389706, 32.445522>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.429371, 21.834492, 32.842876> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.778872, 21.956846, 32.691620>,  <15.988573, 22.030258, 32.600868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.778872, 21.956846, 32.691620>,  <15.429371, 21.834492, 32.842876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.778872, 21.956846, 32.691620> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373665, 0.075495, 0.924486,
		0.311334, -0.949071, -0.048335,
		0.873754, 0.305885, -0.378138,
		16.040998, 22.048611, 32.578178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.892107, 21.371771, 33.029976>,  <15.429371, 21.834492, 32.842876>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.892107, 21.371771, 33.029976> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.059191, 21.731859, 32.980793>,  <16.159441, 21.947912, 32.951283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.059191, 21.731859, 32.980793>,  <15.892107, 21.371771, 33.029976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.059191, 21.731859, 32.980793> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467498, -0.096912, 0.878666,
		0.779079, -0.424508, -0.461333,
		0.417709, 0.900223, -0.122955,
		16.184504, 22.001926, 32.943905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.136625, 20.855743, 33.449089>,  <15.892107, 21.371771, 33.029976>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.136625, 20.855743, 33.449089> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.514408, 20.724958, 33.462357>,  <16.741077, 20.646486, 33.470318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.514408, 20.724958, 33.462357>,  <16.136625, 20.855743, 33.449089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.514408, 20.724958, 33.462357> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116740, -0.428118, -0.896151,
		0.307208, 0.842502, -0.442508,
		0.944455, -0.326963, 0.033168,
		16.797745, 20.626869, 33.472305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.575684, 21.153814, 32.999462>,  <16.136625, 20.855743, 33.449089>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.575684, 21.153814, 32.999462> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.686016, 20.776154, 33.071568>,  <16.752216, 20.549557, 33.114830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.686016, 20.776154, 33.071568>,  <16.575684, 21.153814, 32.999462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.686016, 20.776154, 33.071568> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461922, -0.294671, -0.836539,
		0.842938, 0.147475, -0.517404,
		0.275832, -0.944151, 0.180267,
		16.768766, 20.492908, 33.125648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.041853, 20.863903, 32.409561>,  <16.575684, 21.153814, 32.999462>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.041853, 20.863903, 32.409561> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.841381, 20.570866, 32.593788>,  <16.721098, 20.395042, 32.704327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.841381, 20.570866, 32.593788>,  <17.041853, 20.863903, 32.409561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.841381, 20.570866, 32.593788> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367874, -0.301374, -0.879683,
		0.783255, -0.610311, -0.118460,
		-0.501179, -0.732595, 0.460570,
		16.691027, 20.351088, 32.731960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.942444, 20.525192, 31.890047>,  <17.041853, 20.863903, 32.409561>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.942444, 20.525192, 31.890047> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.743490, 20.295277, 32.149963>,  <16.624117, 20.157328, 32.305912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.743490, 20.295277, 32.149963>,  <16.942444, 20.525192, 31.890047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.743490, 20.295277, 32.149963> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377362, -0.531090, -0.758644,
		0.781156, -0.622545, 0.047254,
		-0.497386, -0.574788, 0.649789,
		16.594275, 20.122841, 32.344902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.279154, 19.932314, 31.733805>,  <16.942444, 20.525192, 31.890047>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.279154, 19.932314, 31.733805> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.902285, 19.865437, 31.849981>,  <16.676163, 19.825310, 31.919687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.902285, 19.865437, 31.849981>,  <17.279154, 19.932314, 31.733805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.902285, 19.865437, 31.849981> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200127, -0.414469, -0.887786,
		0.268811, -0.894574, 0.357042,
		-0.942173, -0.167193, 0.290442,
		16.619633, 19.815279, 31.937115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.224678, 19.403481, 31.387096>,  <17.279154, 19.932314, 31.733805>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.224678, 19.403481, 31.387096> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.854328, 19.518717, 31.484882>,  <16.632118, 19.587858, 31.543554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.854328, 19.518717, 31.484882>,  <17.224678, 19.403481, 31.387096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.854328, 19.518717, 31.484882> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316500, -0.237980, -0.918256,
		-0.206357, -0.927563, 0.311519,
		-0.925875, 0.288084, 0.244465,
		16.576567, 19.605145, 31.558222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.799938, 18.873234, 31.258070>,  <17.224678, 19.403481, 31.387096>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.799938, 18.873234, 31.258070> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.558270, 19.191620, 31.243019>,  <16.413267, 19.382650, 31.233988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.558270, 19.191620, 31.243019>,  <16.799938, 18.873234, 31.258070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.558270, 19.191620, 31.243019> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439109, -0.371965, -0.817817,
		-0.664949, -0.477581, 0.574246,
		-0.604173, 0.795964, -0.037628,
		16.377018, 19.430408, 31.231731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.169168, 18.658571, 30.988176>,  <16.799938, 18.873234, 31.258070>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.169168, 18.658571, 30.988176> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.131920, 19.054422, 30.944416>,  <16.109570, 19.291933, 30.918159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.131920, 19.054422, 30.944416>,  <16.169168, 18.658571, 30.988176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.131920, 19.054422, 30.944416> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505031, -0.141641, -0.851400,
		-0.858063, -0.024036, 0.512982,
		-0.093124, 0.989626, -0.109398,
		16.103983, 19.351311, 30.911596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.478919, 18.785107, 30.758411>,  <16.169168, 18.658571, 30.988176>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.478919, 18.785107, 30.758411> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.705236, 19.090082, 30.632832>,  <15.841027, 19.273067, 30.557484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.705236, 19.090082, 30.632832>,  <15.478919, 18.785107, 30.758411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.705236, 19.090082, 30.632832> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451944, -0.031705, -0.891483,
		-0.689655, 0.646283, 0.326641,
		0.565794, 0.762439, -0.313950,
		15.874974, 19.318813, 30.538647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.990037, 19.251205, 30.498316>,  <15.478919, 18.785107, 30.758411>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.990037, 19.251205, 30.498316> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.346217, 19.338335, 30.338490>,  <15.559925, 19.390612, 30.242594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.346217, 19.338335, 30.338490>,  <14.990037, 19.251205, 30.498316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.346217, 19.338335, 30.338490> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407691, -0.008293, -0.913082,
		-0.202203, 0.975953, 0.081420,
		0.890451, 0.217822, -0.399564,
		15.613353, 19.403681, 30.218620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.844874, 19.570721, 29.987560>,  <14.990037, 19.251205, 30.498316>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.844874, 19.570721, 29.987560> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.228264, 19.560486, 29.873947>,  <15.458298, 19.554344, 29.805779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.228264, 19.560486, 29.873947>,  <14.844874, 19.570721, 29.987560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.228264, 19.560486, 29.873947> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280356, 0.097949, -0.954886,
		0.052256, 0.994862, 0.086707,
		0.958473, -0.025589, -0.284034,
		15.515805, 19.552809, 29.788736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.080666, 20.171335, 29.427151>,  <14.844874, 19.570721, 29.987560>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.080666, 20.171335, 29.427151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.320750, 19.854137, 29.385382>,  <15.464801, 19.663818, 29.360321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.320750, 19.854137, 29.385382>,  <15.080666, 20.171335, 29.427151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.320750, 19.854137, 29.385382> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306874, -0.107749, -0.945631,
		0.738629, 0.599624, -0.308022,
		0.600212, -0.792995, -0.104423,
		15.500813, 19.616240, 29.354055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.443896, 20.281164, 28.820467>,  <15.080666, 20.171335, 29.427151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.443896, 20.281164, 28.820467> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.477484, 19.888428, 28.888512>,  <15.497637, 19.652786, 28.929338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.477484, 19.888428, 28.888512>,  <15.443896, 20.281164, 28.820467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.477484, 19.888428, 28.888512> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336297, -0.188621, -0.922674,
		0.938005, 0.020269, -0.346029,
		0.083970, -0.981841, 0.170111,
		15.502675, 19.593876, 28.939545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.576661, 20.031040, 28.214794>,  <15.443896, 20.281164, 28.820467>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.576661, 20.031040, 28.214794> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.417268, 19.721804, 28.412193>,  <15.321631, 19.536261, 28.530632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.417268, 19.721804, 28.412193>,  <15.576661, 20.031040, 28.214794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.417268, 19.721804, 28.412193> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632173, -0.158321, -0.758480,
		0.664506, -0.614217, -0.425640,
		-0.398483, -0.773093, 0.493497,
		15.297723, 19.489876, 28.560242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.602006, 19.471146, 27.790726>,  <15.576661, 20.031040, 28.214794>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.602006, 19.471146, 27.790726> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.330356, 19.361872, 28.063242>,  <15.167365, 19.296307, 28.226751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.330356, 19.361872, 28.063242>,  <15.602006, 19.471146, 27.790726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.330356, 19.361872, 28.063242> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593915, -0.340912, -0.728727,
		0.431339, -0.899526, 0.069272,
		-0.679125, -0.273187, 0.681291,
		15.126618, 19.279915, 28.267630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.494772, 18.786720, 27.730846>,  <15.602006, 19.471146, 27.790726>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.494772, 18.786720, 27.730846> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.162425, 18.933779, 27.897938>,  <14.963017, 19.022013, 27.998192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.162425, 18.933779, 27.897938>,  <15.494772, 18.786720, 27.730846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.162425, 18.933779, 27.897938> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532192, -0.305665, -0.789519,
		-0.162576, -0.878298, 0.449624,
		-0.830868, 0.367643, 0.417729,
		14.913165, 19.044071, 28.023256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.918256, 18.324820, 27.526714>,  <15.494772, 18.786720, 27.730846>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.918256, 18.324820, 27.526714> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.724864, 18.651627, 27.652399>,  <14.608829, 18.847712, 27.727810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.724864, 18.651627, 27.652399>,  <14.918256, 18.324820, 27.526714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.724864, 18.651627, 27.652399> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697133, -0.142296, -0.702679,
		-0.529389, -0.558780, 0.638367,
		-0.483480, 0.817017, 0.314214,
		14.579820, 18.896732, 27.746664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.194717, 17.985516, 27.616560>,  <14.918256, 18.324820, 27.526714>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.194717, 17.985516, 27.616560> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.241044, 18.376154, 27.544062>,  <14.268840, 18.610537, 27.500563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.241044, 18.376154, 27.544062>,  <14.194717, 17.985516, 27.616560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.241044, 18.376154, 27.544062> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709345, -0.046409, -0.703332,
		-0.695281, 0.210023, 0.687368,
		0.115816, 0.976594, -0.181246,
		14.275789, 18.669132, 27.489687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.548304, 18.233442, 27.697409>,  <14.194717, 17.985516, 27.616560>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.548304, 18.233442, 27.697409> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.739999, 18.507437, 27.477911>,  <13.855016, 18.671833, 27.346212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.739999, 18.507437, 27.477911>,  <13.548304, 18.233442, 27.697409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.739999, 18.507437, 27.477911> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635119, -0.160867, -0.755477,
		-0.605767, 0.710573, 0.357954,
		0.479239, 0.684987, -0.548746,
		13.883771, 18.712933, 27.313288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.018499, 18.678164, 27.468149>,  <13.548304, 18.233442, 27.697409>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.018499, 18.678164, 27.468149> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.320752, 18.741627, 27.213953>,  <13.502104, 18.779705, 27.061436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.320752, 18.741627, 27.213953>,  <13.018499, 18.678164, 27.468149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.320752, 18.741627, 27.213953> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618991, -0.144277, -0.772033,
		-0.214175, 0.976735, -0.010813,
		0.755632, 0.158657, -0.635491,
		13.547441, 18.789225, 27.023306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.747947, 18.972509, 26.863031>,  <13.018499, 18.678164, 27.468149>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.747947, 18.972509, 26.863031> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.100979, 18.871283, 26.704533>,  <13.312798, 18.810547, 26.609434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.100979, 18.871283, 26.704533>,  <12.747947, 18.972509, 26.863031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.100979, 18.871283, 26.704533> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448109, -0.197672, -0.871851,
		0.142308, 0.947040, -0.287862,
		0.882580, -0.253065, -0.396246,
		13.365753, 18.795362, 26.585659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<13.823682, 17.954981, 6.874135> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.949989, 18.110321, 7.220423>,  <14.025774, 18.203526, 7.428196>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.949989, 18.110321, 7.220423>,  <13.823682, 17.954981, 6.874135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.949989, 18.110321, 7.220423> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124414, -0.887579, 0.443536,
		0.940644, -0.247763, -0.231954,
		0.315769, 0.388352, 0.865721,
		14.044720, 18.226826, 7.480140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.463084, 17.524109, 7.039106>,  <13.823682, 17.954981, 6.874135>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.463084, 17.524109, 7.039106> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.265841, 17.695438, 7.341994>,  <14.147494, 17.798237, 7.523727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.265841, 17.695438, 7.341994>,  <14.463084, 17.524109, 7.039106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.265841, 17.695438, 7.341994> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130158, -0.896927, 0.422588,
		0.860176, 0.109823, 0.498032,
		-0.493108, 0.428323, 0.757221,
		14.117908, 17.823935, 7.569160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.542645, 17.078716, 7.718512>,  <14.463084, 17.524109, 7.039106>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.542645, 17.078716, 7.718512> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.448622, 16.878624, 7.385160>,  <14.392208, 16.758570, 7.185150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.448622, 16.878624, 7.385160>,  <14.542645, 17.078716, 7.718512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.448622, 16.878624, 7.385160> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406223, -0.829488, 0.383317,
		-0.883024, -0.248436, 0.398181,
		-0.235057, -0.500229, -0.833378,
		14.378105, 16.728556, 7.135147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.779393, 16.317266, 7.520203>,  <14.542645, 17.078716, 7.718512>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.779393, 16.317266, 7.520203> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.080862, 16.169596, 7.302694>,  <15.261744, 16.080994, 7.172188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.080862, 16.169596, 7.302694>,  <14.779393, 16.317266, 7.520203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.080862, 16.169596, 7.302694> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464175, -0.884713, -0.042705,
		-0.465317, 0.284591, -0.838145,
		0.753672, -0.369175, -0.543773,
		15.306964, 16.058844, 7.139562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.158381, 16.373819, 7.880814>,  <14.779393, 16.317266, 7.520203>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.158381, 16.373819, 7.880814> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.068356, 16.037045, 8.076973>,  <14.014340, 15.834980, 8.194668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.068356, 16.037045, 8.076973>,  <14.158381, 16.373819, 7.880814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.068356, 16.037045, 8.076973> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684205, 0.221768, 0.694753,
		-0.693692, 0.491897, 0.526145,
		-0.225065, -0.841936, 0.490397,
		14.000836, 15.784464, 8.224092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.399013, 16.532261, 8.562315>,  <14.158381, 16.373819, 7.880814>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.399013, 16.532261, 8.562315> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.372727, 16.133373, 8.576359>,  <14.356956, 15.894040, 8.584785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.372727, 16.133373, 8.576359>,  <14.399013, 16.532261, 8.562315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.372727, 16.133373, 8.576359> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681767, -0.019177, 0.731318,
		-0.728612, 0.071994, 0.681132,
		-0.065712, -0.997221, 0.035110,
		14.353014, 15.834207, 8.586892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.132076, 16.246861, 9.178479>,  <14.399013, 16.532261, 8.562315>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.132076, 16.246861, 9.178479> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.409713, 16.015430, 9.007136>,  <14.576295, 15.876573, 8.904330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.409713, 16.015430, 9.007136>,  <14.132076, 16.246861, 9.178479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.409713, 16.015430, 9.007136> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552965, 0.047494, 0.831850,
		-0.460942, -0.814247, 0.352895,
		0.694092, -0.578573, -0.428358,
		14.617940, 15.841858, 8.878629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.355474, 15.716469, 9.718289>,  <14.132076, 16.246861, 9.178479>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.355474, 15.716469, 9.718289> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.635676, 15.743083, 9.434075>,  <14.803799, 15.759051, 9.263547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.635676, 15.743083, 9.434075>,  <14.355474, 15.716469, 9.718289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.635676, 15.743083, 9.434075> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709904, 0.036835, 0.703335,
		0.072971, -0.997104, -0.021432,
		0.700508, 0.066537, -0.710536,
		14.845829, 15.763043, 9.220915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.834408, 15.098368, 9.673084>,  <14.355474, 15.716469, 9.718289>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.834408, 15.098368, 9.673084> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.043266, 15.399182, 9.512185>,  <15.168581, 15.579671, 9.415646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.043266, 15.399182, 9.512185>,  <14.834408, 15.098368, 9.673084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.043266, 15.399182, 9.512185> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736441, -0.159699, 0.657382,
		0.430137, -0.639481, -0.637217,
		0.522146, 0.752037, -0.402248,
		15.199910, 15.624793, 9.391511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.528186, 14.839123, 9.429758>,  <14.834408, 15.098368, 9.673084>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.528186, 14.839123, 9.429758> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.492892, 15.211618, 9.571183>,  <15.471716, 15.435116, 9.656038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.492892, 15.211618, 9.571183>,  <15.528186, 14.839123, 9.429758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.492892, 15.211618, 9.571183> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628197, -0.223438, 0.745281,
		0.773035, 0.287867, -0.565287,
		-0.088235, 0.931240, 0.353562,
		15.466422, 15.490991, 9.677252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.253855, 15.150112, 9.512175>,  <15.528186, 14.839123, 9.429758>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.253855, 15.150112, 9.512175> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.972375, 15.283889, 9.762918>,  <15.803487, 15.364155, 9.913365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.972375, 15.283889, 9.762918>,  <16.253855, 15.150112, 9.512175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.972375, 15.283889, 9.762918> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562384, -0.276992, 0.779102,
		0.434199, 0.900791, 0.006836,
		-0.703701, 0.334441, 0.626860,
		15.761265, 15.384221, 9.950976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.635006, 15.486463, 10.045283>,  <16.253855, 15.150112, 9.512175>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.635006, 15.486463, 10.045283> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.274960, 15.476735, 10.219270>,  <16.058931, 15.470899, 10.323662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.274960, 15.476735, 10.219270>,  <16.635006, 15.486463, 10.045283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.274960, 15.476735, 10.219270> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423376, -0.284121, 0.860249,
		0.102662, 0.958480, 0.266038,
		-0.900118, -0.024320, 0.434966,
		16.004925, 15.469440, 10.349760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.829699, 15.657895, 10.692804>,  <16.635006, 15.486463, 10.045283>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.829699, 15.657895, 10.692804> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.461985, 15.509580, 10.745622>,  <16.241356, 15.420590, 10.777312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.461985, 15.509580, 10.745622>,  <16.829699, 15.657895, 10.692804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.461985, 15.509580, 10.745622> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284528, -0.394228, 0.873858,
		-0.271960, 0.840893, 0.467907,
		-0.919283, -0.370787, 0.132043,
		16.186199, 15.398343, 10.785234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.615942, 15.839752, 11.346935>,  <16.829699, 15.657895, 10.692804>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.615942, 15.839752, 11.346935> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.372585, 15.530878, 11.273626>,  <16.226572, 15.345553, 11.229641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.372585, 15.530878, 11.273626>,  <16.615942, 15.839752, 11.346935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.372585, 15.530878, 11.273626> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193624, -0.368366, 0.909294,
		-0.769656, 0.517721, 0.373624,
		-0.608392, -0.772186, -0.183272,
		16.190067, 15.299222, 11.218645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.109179, 15.793707, 11.815382>,  <16.615942, 15.839752, 11.346935>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.109179, 15.793707, 11.815382> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.141138, 15.415515, 11.689091>,  <16.160315, 15.188600, 11.613316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.141138, 15.415515, 11.689091>,  <16.109179, 15.793707, 11.815382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.141138, 15.415515, 11.689091> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113491, -0.306053, 0.945226,
		-0.990321, -0.111355, 0.082850,
		0.079899, -0.945480, -0.315728,
		16.165108, 15.131871, 11.594372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.741543, 15.372994, 12.274662>,  <16.109179, 15.793707, 11.815382>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.741543, 15.372994, 12.274662> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.949578, 15.082164, 12.095389>,  <16.074400, 14.907665, 11.987825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.949578, 15.082164, 12.095389>,  <15.741543, 15.372994, 12.274662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.949578, 15.082164, 12.095389> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118012, -0.458530, 0.880808,
		-0.845920, -0.510989, -0.152673,
		0.520089, -0.727076, -0.448182,
		16.105604, 14.864041, 11.960935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.428665, 14.693589, 12.501679>,  <15.741543, 15.372994, 12.274662>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.428665, 14.693589, 12.501679> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.802567, 14.633717, 12.372788>,  <16.026907, 14.597793, 12.295454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.802567, 14.633717, 12.372788>,  <15.428665, 14.693589, 12.501679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.802567, 14.633717, 12.372788> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220532, -0.466642, 0.856511,
		-0.278568, -0.871688, -0.403186,
		0.934754, -0.149682, -0.322226,
		16.082993, 14.588812, 12.276120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.568007, 14.009107, 12.663094>,  <15.428665, 14.693589, 12.501679>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.568007, 14.009107, 12.663094> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.928439, 14.172398, 12.604568>,  <16.144699, 14.270372, 12.569453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.928439, 14.172398, 12.604568>,  <15.568007, 14.009107, 12.663094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.928439, 14.172398, 12.604568> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346914, -0.476129, 0.808054,
		0.260206, -0.778879, -0.570650,
		0.901079, 0.408227, -0.146313,
		16.198763, 14.294866, 12.560675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.163410, 13.488825, 12.871295>,  <15.568007, 14.009107, 12.663094>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.163410, 13.488825, 12.871295> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.340855, 13.847141, 12.860191>,  <16.447321, 14.062131, 12.853529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.340855, 13.847141, 12.860191>,  <16.163410, 13.488825, 12.871295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.340855, 13.847141, 12.860191> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468724, -0.205496, 0.859109,
		0.763878, -0.394120, -0.511039,
		0.443609, 0.895791, -0.027759,
		16.473938, 14.115878, 12.851864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.736168, 13.390037, 13.103598>,  <16.163410, 13.488825, 12.871295>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.736168, 13.390037, 13.103598> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.758783, 13.787545, 13.142005>,  <16.772352, 14.026051, 13.165050>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.758783, 13.787545, 13.142005>,  <16.736168, 13.390037, 13.103598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.758783, 13.787545, 13.142005> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496948, -0.111423, 0.860597,
		0.865937, -0.000942, -0.500153,
		0.056539, 0.993773, 0.096017,
		16.775745, 14.085677, 13.170810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.301807, 13.575470, 13.552284>,  <16.736168, 13.390037, 13.103598>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.301807, 13.575470, 13.552284> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.085323, 13.910259, 13.584702>,  <16.955433, 14.111133, 13.604152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.085323, 13.910259, 13.584702>,  <17.301807, 13.575470, 13.552284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.085323, 13.910259, 13.584702> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266446, 0.079280, 0.960584,
		0.797557, 0.541473, -0.265915,
		-0.541212, 0.836972, 0.081043,
		16.922960, 14.161351, 13.609015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.825861, 14.038053, 13.911559>,  <17.301807, 13.575470, 13.552284>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.825861, 14.038053, 13.911559> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.455791, 14.187220, 13.939807>,  <17.233749, 14.276720, 13.956756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.455791, 14.187220, 13.939807>,  <17.825861, 14.038053, 13.911559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.455791, 14.187220, 13.939807> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199009, 0.318199, 0.926901,
		0.323186, 0.871598, -0.368603,
		-0.925174, 0.372917, 0.070618,
		17.178240, 14.299094, 13.960993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.868694, 14.704928, 14.216338>,  <17.825861, 14.038053, 13.911559>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.868694, 14.704928, 14.216338> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.493349, 14.583094, 14.281704>,  <17.268143, 14.509993, 14.320923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.493349, 14.583094, 14.281704>,  <17.868694, 14.704928, 14.216338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.493349, 14.583094, 14.281704> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037095, 0.381297, 0.923708,
		-0.343658, 0.872834, -0.346496,
		-0.938362, -0.304587, 0.163414,
		17.211840, 14.491717, 14.330728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.557529, 15.259542, 14.510196>,  <17.868694, 14.704928, 14.216338>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.557529, 15.259542, 14.510196> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.324495, 14.949723, 14.608723>,  <17.184675, 14.763832, 14.667839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.324495, 14.949723, 14.608723>,  <17.557529, 15.259542, 14.510196>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.324495, 14.949723, 14.608723> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063410, 0.345450, 0.936292,
		-0.810293, 0.529850, -0.250368,
		-0.582584, -0.774547, 0.246318,
		17.149719, 14.717360, 14.682618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.106199, 15.637379, 14.910975>,  <17.557529, 15.259542, 14.510196>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.106199, 15.637379, 14.910975> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.071575, 15.246999, 14.991004>,  <17.050800, 15.012771, 15.039021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.071575, 15.246999, 14.991004>,  <17.106199, 15.637379, 14.910975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.071575, 15.246999, 14.991004> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103330, 0.208536, 0.972541,
		-0.990873, 0.063511, -0.118896,
		-0.086561, -0.975951, 0.200071,
		17.045607, 14.954214, 15.051025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.541838, 15.490029, 15.318768>,  <17.106199, 15.637379, 14.910975>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.541838, 15.490029, 15.318768> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.774679, 15.176323, 15.404634>,  <16.914383, 14.988099, 15.456155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.774679, 15.176323, 15.404634>,  <16.541838, 15.490029, 15.318768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.774679, 15.176323, 15.404634> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072841, 0.212647, 0.974410,
		-0.809846, -0.582843, 0.066656,
		0.582103, -0.784267, 0.214667,
		16.949310, 14.941043, 15.469034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.253817, 15.299520, 15.966506>,  <16.541838, 15.490029, 15.318768>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.253817, 15.299520, 15.966506> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.603855, 15.108256, 15.936647>,  <16.813879, 14.993499, 15.918732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.603855, 15.108256, 15.936647>,  <16.253817, 15.299520, 15.966506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.603855, 15.108256, 15.936647> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144521, 0.110993, 0.983257,
		-0.461867, -0.871232, 0.166234,
		0.875095, -0.478159, -0.074647,
		16.866385, 14.964808, 15.914253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.213537, 14.766083, 16.435797>,  <16.253817, 15.299520, 15.966506>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.213537, 14.766083, 16.435797> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.605045, 14.834137, 16.390083>,  <16.839951, 14.874969, 16.362656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.605045, 14.834137, 16.390083>,  <16.213537, 14.766083, 16.435797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.605045, 14.834137, 16.390083> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092974, 0.128367, 0.987359,
		0.182658, -0.977023, 0.109823,
		0.978771, 0.170138, -0.114285,
		16.898676, 14.885178, 16.355799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.556997, 14.587755, 17.083729>,  <16.213537, 14.766083, 16.435797>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.556997, 14.587755, 17.083729> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.864185, 14.772074, 16.905790>,  <17.048498, 14.882665, 16.799028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.864185, 14.772074, 16.905790>,  <16.556997, 14.587755, 17.083729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.864185, 14.772074, 16.905790> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378902, 0.233107, 0.895597,
		0.516385, -0.856345, 0.004423,
		0.767971, 0.460797, -0.444844,
		17.094578, 14.910313, 16.772337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.078825, 14.407168, 17.410824>,  <16.556997, 14.587755, 17.083729>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.078825, 14.407168, 17.410824> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.170731, 14.763952, 17.255070>,  <17.225874, 14.978023, 17.161617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.170731, 14.763952, 17.255070>,  <17.078825, 14.407168, 17.410824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.170731, 14.763952, 17.255070> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378343, 0.286760, 0.880128,
		0.896697, -0.349540, -0.271580,
		0.229762, 0.891959, -0.389383,
		17.239658, 15.031540, 17.138254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.830791, 14.537198, 17.456295>,  <17.078825, 14.407168, 17.410824>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.830791, 14.537198, 17.456295> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.626596, 14.880441, 17.434189>,  <17.504078, 15.086386, 17.420925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.626596, 14.880441, 17.434189>,  <17.830791, 14.537198, 17.456295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.626596, 14.880441, 17.434189> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378422, 0.281909, 0.881660,
		0.772138, 0.429164, -0.468637,
		-0.510490, 0.858106, -0.055268,
		17.473450, 15.137873, 17.417608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.221827, 15.215752, 17.479271>,  <17.830791, 14.537198, 17.456295>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.221827, 15.215752, 17.479271> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.852673, 15.280542, 17.619009>,  <17.631180, 15.319417, 17.702852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.852673, 15.280542, 17.619009>,  <18.221827, 15.215752, 17.479271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.852673, 15.280542, 17.619009> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384433, 0.439759, 0.811679,
		-0.022155, 0.883389, -0.468117,
		-0.922887, 0.161977, 0.349347,
		17.575806, 15.329136, 17.723814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.874138, 15.393234, 16.998884>,  <18.221827, 15.215752, 17.479271>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.874138, 15.393234, 16.998884> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.967953, 15.761376, 16.873705>,  <19.024240, 15.982262, 16.798597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.967953, 15.761376, 16.873705>,  <18.874138, 15.393234, 16.998884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.967953, 15.761376, 16.873705> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159674, 0.354029, 0.921503,
		0.958904, -0.166155, 0.229989,
		0.234535, 0.920356, -0.312949,
		19.038313, 16.037483, 16.779819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.148539, 15.750554, 17.484457>,  <18.874138, 15.393234, 16.998884>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.148539, 15.750554, 17.484457> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.963152, 16.032486, 17.269640>,  <18.851921, 16.201645, 17.140749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.963152, 16.032486, 17.269640>,  <19.148539, 15.750554, 17.484457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.963152, 16.032486, 17.269640> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379272, 0.389958, 0.839098,
		0.800845, 0.592579, 0.086590,
		-0.463465, 0.704829, -0.537044,
		18.824112, 16.243935, 17.108526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.262701, 16.551979, 17.495152>,  <19.148539, 15.750554, 17.484457>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.262701, 16.551979, 17.495152> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.565725, 16.370588, 17.682966>,  <19.747540, 16.261755, 17.795654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.565725, 16.370588, 17.682966>,  <19.262701, 16.551979, 17.495152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.565725, 16.370588, 17.682966> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274055, -0.431888, -0.859282,
		0.592450, 0.779636, -0.202904,
		0.757560, -0.453475, 0.469535,
		19.792994, 16.234547, 17.823828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.954550, 16.764235, 17.314098>,  <19.262701, 16.551979, 17.495152>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.954550, 16.764235, 17.314098> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.967791, 16.385683, 17.442640>,  <19.975735, 16.158552, 17.519766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.967791, 16.385683, 17.442640>,  <19.954550, 16.764235, 17.314098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.967791, 16.385683, 17.442640> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408637, -0.280612, -0.868489,
		0.912097, 0.160065, 0.377438,
		0.033101, -0.946380, 0.321354,
		19.977720, 16.101768, 17.539047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.691568, 16.624067, 16.924854>,  <19.954550, 16.764235, 17.314098>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.691568, 16.624067, 16.924854> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.389975, 16.366343, 16.976036>,  <20.209019, 16.211708, 17.006744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.389975, 16.366343, 16.976036>,  <20.691568, 16.624067, 16.924854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.389975, 16.366343, 16.976036> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149735, -0.358235, -0.921546,
		0.639599, -0.675671, 0.366580,
		-0.753984, -0.644310, 0.127955,
		20.163780, 16.173050, 17.014423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.398228, 16.938192, 16.723524>,  <20.691568, 16.624067, 16.924854>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.398228, 16.938192, 16.723524> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.489855, 16.617214, 16.503120>,  <21.544830, 16.424627, 16.370878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.489855, 16.617214, 16.503120>,  <21.398228, 16.938192, 16.723524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.489855, 16.617214, 16.503120> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341620, 0.463783, -0.817436,
		0.911495, 0.375484, -0.167894,
		0.229068, -0.802445, -0.551009,
		21.558575, 16.376480, 16.337818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.691031, 17.199238, 16.085339>,  <21.398228, 16.938192, 16.723524>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.691031, 17.199238, 16.085339> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.527901, 16.838636, 16.027409>,  <21.430023, 16.622276, 15.992651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.527901, 16.838636, 16.027409>,  <21.691031, 17.199238, 16.085339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.527901, 16.838636, 16.027409> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372369, 0.309039, -0.875121,
		0.833679, -0.302967, -0.461725,
		-0.407823, -0.901502, -0.144824,
		21.405554, 16.568186, 15.983961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.814596, 17.052256, 15.403085>,  <21.691031, 17.199238, 16.085339>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.814596, 17.052256, 15.403085> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.526958, 16.789465, 15.493670>,  <21.354376, 16.631790, 15.548022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.526958, 16.789465, 15.493670>,  <21.814596, 17.052256, 15.403085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.526958, 16.789465, 15.493670> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456940, 0.201498, -0.866374,
		0.523556, -0.726484, -0.445095,
		-0.719093, -0.656977, 0.226465,
		21.311230, 16.592371, 15.561610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.708982, 16.694828, 14.767425>,  <21.814596, 17.052256, 15.403085>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.708982, 16.694828, 14.767425> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.371346, 16.644724, 14.975970>,  <21.168764, 16.614662, 15.101098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.371346, 16.644724, 14.975970>,  <21.708982, 16.694828, 14.767425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.371346, 16.644724, 14.975970> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535580, 0.243710, -0.808554,
		-0.025782, -0.961725, -0.272800,
		-0.844091, -0.125260, 0.521365,
		21.118118, 16.607145, 15.132380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.270168, 16.442291, 14.295511>,  <21.708982, 16.694828, 14.767425>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.270168, 16.442291, 14.295511> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.041027, 16.596380, 14.584908>,  <20.903542, 16.688833, 14.758547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.041027, 16.596380, 14.584908>,  <21.270168, 16.442291, 14.295511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.041027, 16.596380, 14.584908> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628323, 0.360441, -0.689415,
		-0.526355, -0.849521, 0.035564,
		-0.572853, 0.385223, 0.723493,
		20.869171, 16.711946, 14.801956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.623625, 16.196230, 14.045079>,  <21.270168, 16.442291, 14.295511>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.623625, 16.196230, 14.045079> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.582127, 16.508480, 14.291612>,  <20.557228, 16.695829, 14.439531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.582127, 16.508480, 14.291612>,  <20.623625, 16.196230, 14.045079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.582127, 16.508480, 14.291612> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751734, 0.344212, -0.562507,
		-0.651255, -0.521675, 0.551111,
		-0.103747, 0.780624, 0.616331,
		20.551003, 16.742666, 14.476511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.919186, 16.177692, 14.190125>,  <20.623625, 16.196230, 14.045079>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.919186, 16.177692, 14.190125> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.035732, 16.546801, 14.291002>,  <20.105661, 16.768265, 14.351529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.035732, 16.546801, 14.291002>,  <19.919186, 16.177692, 14.190125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.035732, 16.546801, 14.291002> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752082, 0.383889, -0.535725,
		-0.591165, -0.033578, 0.805851,
		0.291369, 0.922768, 0.252195,
		20.123142, 16.823631, 14.366661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.270622, 16.392435, 14.438893>,  <19.919186, 16.177692, 14.190125>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.270622, 16.392435, 14.438893> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.484209, 16.723686, 14.370672>,  <19.612360, 16.922436, 14.329740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.484209, 16.723686, 14.370672>,  <19.270622, 16.392435, 14.438893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.484209, 16.723686, 14.370672> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819094, 0.456627, -0.347241,
		-0.209681, 0.325113, 0.922136,
		0.533965, 0.828126, -0.170552,
		19.644398, 16.972124, 14.319507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.846256, 16.945662, 14.661239>,  <19.270622, 16.392435, 14.438893>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.846256, 16.945662, 14.661239> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.090281, 17.117281, 14.394781>,  <19.236694, 17.220253, 14.234907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.090281, 17.117281, 14.394781>,  <18.846256, 16.945662, 14.661239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.090281, 17.117281, 14.394781> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774074, 0.502269, -0.385402,
		0.169228, 0.750762, 0.638528,
		0.610059, 0.429047, -0.666143,
		19.273298, 17.245995, 14.194938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.682646, 17.636417, 14.622003>,  <18.846256, 16.945662, 14.661239>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.682646, 17.636417, 14.622003> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.866606, 17.580910, 14.271179>,  <18.976982, 17.547606, 14.060685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.866606, 17.580910, 14.271179>,  <18.682646, 17.636417, 14.622003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.866606, 17.580910, 14.271179> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806045, 0.349138, -0.477906,
		0.372534, 0.926739, 0.048714,
		0.459902, -0.138771, -0.877059,
		19.004576, 17.539278, 14.008061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.453285, 18.190115, 14.142219>,  <18.682646, 17.636417, 14.622003>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.453285, 18.190115, 14.142219> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.591837, 17.936998, 13.865208>,  <18.674969, 17.785128, 13.699001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.591837, 17.936998, 13.865208>,  <18.453285, 18.190115, 14.142219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.591837, 17.936998, 13.865208> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725037, 0.287856, -0.625668,
		0.595266, 0.718826, -0.359091,
		0.346380, -0.632793, -0.692527,
		18.695751, 17.747160, 13.657450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.179996, 18.405470, 13.429760>,  <18.453285, 18.190115, 14.142219>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.179996, 18.405470, 13.429760> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.342985, 18.047817, 13.355470>,  <18.440779, 17.833225, 13.310896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.342985, 18.047817, 13.355470>,  <18.179996, 18.405470, 13.429760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.342985, 18.047817, 13.355470> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585582, -0.099765, -0.804451,
		0.700756, 0.436549, -0.564239,
		0.407474, -0.894132, -0.185725,
		18.465227, 17.779577, 13.299752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.498617, 18.472128, 12.779644>,  <18.179996, 18.405470, 13.429760>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.498617, 18.472128, 12.779644> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.415628, 18.085958, 12.842774>,  <18.365835, 17.854256, 12.880652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.415628, 18.085958, 12.842774>,  <18.498617, 18.472128, 12.779644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.415628, 18.085958, 12.842774> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484390, -0.038784, -0.873992,
		0.849895, -0.257777, -0.459596,
		-0.207470, -0.965426, 0.157826,
		18.353388, 17.796331, 12.890122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.651773, 18.103128, 12.150187>,  <18.498617, 18.472128, 12.779644>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.651773, 18.103128, 12.150187> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.408144, 17.850307, 12.341828>,  <18.261967, 17.698614, 12.456813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.408144, 17.850307, 12.341828>,  <18.651773, 18.103128, 12.150187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.408144, 17.850307, 12.341828> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501179, -0.161461, -0.850147,
		0.614696, -0.757916, -0.218431,
		-0.609072, -0.632055, 0.479101,
		18.225422, 17.660690, 12.485559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.500095, 17.476202, 11.692398>,  <18.651773, 18.103128, 12.150187>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.500095, 17.476202, 11.692398> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.206219, 17.522329, 11.959809>,  <18.029892, 17.550007, 12.120256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.206219, 17.522329, 11.959809>,  <18.500095, 17.476202, 11.692398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.206219, 17.522329, 11.959809> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665416, 0.069392, -0.743240,
		-0.132102, -0.990901, 0.025755,
		-0.734691, 0.115321, 0.668528,
		17.985811, 17.556925, 12.160368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<13.192478, 22.037161, 21.341194> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.385210, 21.703838, 21.449593>,  <13.500849, 21.503845, 21.514631>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.385210, 21.703838, 21.449593>,  <13.192478, 22.037161, 21.341194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.385210, 21.703838, 21.449593> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012971, -0.316011, -0.948667,
		0.876169, 0.453581, -0.163072,
		0.481830, -0.833308, 0.270996,
		13.529758, 21.453846, 21.530891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.812456, 21.900818, 20.824602>,  <13.192478, 22.037161, 21.341194>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.812456, 21.900818, 20.824602> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.710936, 21.558525, 21.004959>,  <13.650023, 21.353149, 21.113173>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.710936, 21.558525, 21.004959>,  <13.812456, 21.900818, 20.824602>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.710936, 21.558525, 21.004959> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089466, -0.443389, -0.891853,
		0.963110, -0.266694, 0.035974,
		-0.253802, -0.855734, 0.450893,
		13.634795, 21.301805, 21.140226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.275631, 21.409792, 20.475834>,  <13.812456, 21.900818, 20.824602>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.275631, 21.409792, 20.475834> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.940741, 21.244196, 20.618755>,  <13.739806, 21.144838, 20.704508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.940741, 21.244196, 20.618755>,  <14.275631, 21.409792, 20.475834>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.940741, 21.244196, 20.618755> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233237, -0.320648, -0.918034,
		0.494624, -0.851938, 0.171897,
		-0.837226, -0.413989, 0.357303,
		13.689572, 21.119999, 20.725946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.256478, 20.677286, 20.254589>,  <14.275631, 21.409792, 20.475834>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.256478, 20.677286, 20.254589> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.877443, 20.752136, 20.358175>,  <13.650023, 20.797047, 20.420328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.877443, 20.752136, 20.358175>,  <14.256478, 20.677286, 20.254589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.877443, 20.752136, 20.358175> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319444, -0.540036, -0.778663,
		-0.005855, -0.820576, 0.571507,
		-0.947587, 0.187123, 0.258967,
		13.593167, 20.808273, 20.435865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.937160, 20.054119, 20.243097>,  <14.256478, 20.677286, 20.254589>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.937160, 20.054119, 20.243097> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.644494, 20.321945, 20.191946>,  <13.468895, 20.482641, 20.161255>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.644494, 20.321945, 20.191946>,  <13.937160, 20.054119, 20.243097>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.644494, 20.321945, 20.191946> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334901, -0.516476, -0.788095,
		-0.593725, -0.533794, 0.602124,
		-0.731663, 0.669564, -0.127877,
		13.424994, 20.522814, 20.153584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.314320, 19.697475, 20.193987>,  <13.937160, 20.054119, 20.243097>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.314320, 19.697475, 20.193987> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.213346, 20.052528, 20.039904>,  <13.152762, 20.265560, 19.947453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.213346, 20.052528, 20.039904>,  <13.314320, 19.697475, 20.193987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.213346, 20.052528, 20.039904> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487921, -0.460553, -0.741502,
		-0.835590, 0.000773, 0.549353,
		-0.252433, 0.887632, -0.385210,
		13.137616, 20.318817, 19.924341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.619856, 19.607185, 19.963028>,  <13.314320, 19.697475, 20.193987>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.619856, 19.607185, 19.963028> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.747435, 19.916180, 19.743378>,  <12.823981, 20.101576, 19.611588>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.747435, 19.916180, 19.743378>,  <12.619856, 19.607185, 19.963028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.747435, 19.916180, 19.743378> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469535, -0.374501, -0.799553,
		-0.823292, 0.512847, 0.243264,
		0.318946, 0.772487, -0.549124,
		12.843119, 20.147926, 19.578640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.096451, 19.819065, 19.446562>,  <12.619856, 19.607185, 19.963028>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.096451, 19.819065, 19.446562> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.433968, 19.966618, 19.290644>,  <12.636477, 20.055149, 19.197092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.433968, 19.966618, 19.290644>,  <12.096451, 19.819065, 19.446562>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.433968, 19.966618, 19.290644> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294071, -0.289775, -0.910798,
		-0.448928, 0.883153, -0.136034,
		0.843793, 0.368879, -0.389797,
		12.687105, 20.077282, 19.173704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.796868, 20.212912, 18.920950>,  <12.096451, 19.819065, 19.446562>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.796868, 20.212912, 18.920950> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.178115, 20.126940, 18.835747>,  <12.406863, 20.075357, 18.784624>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.178115, 20.126940, 18.835747>,  <11.796868, 20.212912, 18.920950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.178115, 20.126940, 18.835747> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260893, -0.227051, -0.938287,
		0.153303, 0.949870, -0.272481,
		0.953117, -0.214930, -0.213007,
		12.464050, 20.062460, 18.771845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.970332, 20.683771, 18.401129>,  <11.796868, 20.212912, 18.920950>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.970332, 20.683771, 18.401129> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.240415, 20.390556, 18.368265>,  <12.402464, 20.214626, 18.348547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.240415, 20.390556, 18.368265>,  <11.970332, 20.683771, 18.401129>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.240415, 20.390556, 18.368265> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303702, -0.174765, -0.936602,
		0.672206, 0.657352, -0.340628,
		0.675207, -0.733039, -0.082161,
		12.442977, 20.170645, 18.343616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.355570, 20.816347, 17.776203>,  <11.970332, 20.683771, 18.401129>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.355570, 20.816347, 17.776203> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.458492, 20.435717, 17.843489>,  <12.520246, 20.207338, 17.883860>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.458492, 20.435717, 17.843489>,  <12.355570, 20.816347, 17.776203>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.458492, 20.435717, 17.843489> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187366, -0.219900, -0.957360,
		0.947991, 0.214818, -0.234875,
		0.257307, -0.951576, 0.168214,
		12.535685, 20.150244, 17.893953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.845947, 20.562834, 17.254314>,  <12.355570, 20.816347, 17.776203>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.845947, 20.562834, 17.254314> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.679926, 20.223450, 17.385674>,  <12.580313, 20.019819, 17.464489>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.679926, 20.223450, 17.385674>,  <12.845947, 20.562834, 17.254314>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.679926, 20.223450, 17.385674> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215041, -0.259240, -0.941569,
		0.884018, -0.461420, -0.074855,
		-0.415053, -0.848461, 0.328398,
		12.555410, 19.968912, 17.484192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.225189, 19.982750, 16.930742>,  <12.845947, 20.562834, 17.254314>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.225189, 19.982750, 16.930742> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.872059, 19.848869, 17.062555>,  <12.660180, 19.768541, 17.141644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.872059, 19.848869, 17.062555>,  <13.225189, 19.982750, 16.930742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.872059, 19.848869, 17.062555> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085905, -0.574693, -0.813848,
		0.461777, -0.746795, 0.478602,
		-0.882826, -0.334702, 0.329534,
		12.607211, 19.748459, 17.161415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.215715, 19.516249, 16.345041>,  <13.225189, 19.982750, 16.930742>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.215715, 19.516249, 16.345041> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.520329, 19.398706, 16.113970>,  <13.703098, 19.328180, 15.975327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.520329, 19.398706, 16.113970>,  <13.215715, 19.516249, 16.345041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.520329, 19.398706, 16.113970> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643540, 0.237037, 0.727784,
		-0.076932, -0.925993, 0.369620,
		0.761536, -0.293855, -0.577678,
		13.748791, 19.310551, 15.940666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.610066, 19.105141, 16.770741>,  <13.215715, 19.516249, 16.345041>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.610066, 19.105141, 16.770741> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.862993, 19.173002, 16.468378>,  <14.014750, 19.213720, 16.286961>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.862993, 19.173002, 16.468378>,  <13.610066, 19.105141, 16.770741>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.862993, 19.173002, 16.468378> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718938, 0.235007, 0.654140,
		0.288620, -0.957073, 0.026630,
		0.632318, 0.169653, -0.755905,
		14.052689, 19.223898, 16.241608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.213135, 18.686071, 16.920507>,  <13.610066, 19.105141, 16.770741>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.213135, 18.686071, 16.920507> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.340425, 18.993927, 16.699099>,  <14.416800, 19.178640, 16.566254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.340425, 18.993927, 16.699099>,  <14.213135, 18.686071, 16.920507>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.340425, 18.993927, 16.699099> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595901, 0.291713, 0.748202,
		0.737315, -0.567942, -0.365799,
		0.318227, 0.769640, -0.553521,
		14.435894, 19.224819, 16.533043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.904112, 18.752621, 16.999491>,  <14.213135, 18.686071, 16.920507>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.904112, 18.752621, 16.999491> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.847012, 19.123112, 16.859932>,  <14.812751, 19.345406, 16.776197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.847012, 19.123112, 16.859932>,  <14.904112, 18.752621, 16.999491>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.847012, 19.123112, 16.859932> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701335, 0.343394, 0.624668,
		0.698392, -0.155520, -0.698615,
		-0.142751, 0.926226, -0.348895,
		14.804186, 19.400980, 16.755264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.583285, 19.017380, 16.792162>,  <14.904112, 18.752621, 16.999491>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.583285, 19.017380, 16.792162> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.346611, 19.326252, 16.884809>,  <15.204607, 19.511576, 16.940397>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.346611, 19.326252, 16.884809>,  <15.583285, 19.017380, 16.792162>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.346611, 19.326252, 16.884809> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596424, 0.225988, 0.770200,
		0.542390, 0.593858, -0.594260,
		-0.591685, 0.772180, 0.231617,
		15.169106, 19.557905, 16.954294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.034487, 19.439199, 17.106768>,  <15.583285, 19.017380, 16.792162>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.034487, 19.439199, 17.106768> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.713935, 19.663172, 17.190929>,  <15.521605, 19.797556, 17.241426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.713935, 19.663172, 17.190929>,  <16.034487, 19.439199, 17.106768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.713935, 19.663172, 17.190929> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433932, 0.302103, 0.848785,
		0.411699, 0.771498, -0.485072,
		-0.801378, 0.559932, 0.210402,
		15.473521, 19.831152, 17.254049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.177572, 20.114759, 17.050093>,  <16.034487, 19.439199, 17.106768>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.177572, 20.114759, 17.050093> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.889594, 20.087574, 17.326370>,  <15.716807, 20.071262, 17.492136>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.889594, 20.087574, 17.326370>,  <16.177572, 20.114759, 17.050093>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.889594, 20.087574, 17.326370> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600179, 0.438781, 0.668772,
		-0.348515, 0.896020, -0.275109,
		-0.719946, -0.067963, 0.690694,
		15.673611, 20.067184, 17.533579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.442780, 20.734474, 17.367283>,  <16.177572, 20.114759, 17.050093>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.442780, 20.734474, 17.367283> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.168171, 20.554022, 17.595377>,  <16.003407, 20.445749, 17.732233>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.168171, 20.554022, 17.595377>,  <16.442780, 20.734474, 17.367283>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.168171, 20.554022, 17.595377> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508225, 0.263137, 0.820041,
		-0.519997, 0.852783, 0.048627,
		-0.686521, -0.451132, 0.570236,
		15.962214, 20.418682, 17.766447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.266571, 21.230947, 17.861313>,  <16.442780, 20.734474, 17.367283>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.266571, 21.230947, 17.861313> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.192272, 20.876612, 18.031391>,  <16.147692, 20.664011, 18.133438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.192272, 20.876612, 18.031391>,  <16.266571, 21.230947, 17.861313>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.192272, 20.876612, 18.031391> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352284, 0.343919, 0.870411,
		-0.917275, 0.311466, 0.248184,
		-0.185748, -0.885837, 0.425193,
		16.136547, 20.610861, 18.158949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.749659, 21.237108, 18.580013>,  <16.266571, 21.230947, 17.861313>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.749659, 21.237108, 18.580013> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.916564, 20.877411, 18.632559>,  <16.016706, 20.661592, 18.664085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.916564, 20.877411, 18.632559>,  <15.749659, 21.237108, 18.580013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.916564, 20.877411, 18.632559> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164652, 0.216960, 0.962194,
		-0.893746, -0.379859, 0.238592,
		0.417263, -0.899242, 0.131363,
		16.041742, 20.607639, 18.671968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.516953, 20.999477, 19.233509>,  <15.749659, 21.237108, 18.580013>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.516953, 20.999477, 19.233509> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.832619, 20.764088, 19.163179>,  <16.022018, 20.622854, 19.120981>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.832619, 20.764088, 19.163179>,  <15.516953, 20.999477, 19.233509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.832619, 20.764088, 19.163179> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268202, 0.072652, 0.960619,
		-0.552528, -0.805244, 0.215166,
		0.789165, -0.588476, -0.175826,
		16.069368, 20.587545, 19.110432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.487566, 20.558649, 19.735716>,  <15.516953, 20.999477, 19.233509>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.487566, 20.558649, 19.735716> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.867132, 20.529936, 19.612812>,  <16.094872, 20.512709, 19.539070>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.867132, 20.529936, 19.612812>,  <15.487566, 20.558649, 19.735716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.867132, 20.529936, 19.612812> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313109, 0.093757, 0.945078,
		-0.039034, -0.993004, 0.111444,
		0.948915, -0.071784, -0.307259,
		16.151806, 20.508402, 19.520634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.753698, 20.063950, 20.139235>,  <15.487566, 20.558649, 19.735716>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.753698, 20.063950, 20.139235> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.054787, 20.289869, 20.003933>,  <16.235439, 20.425421, 19.922752>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.054787, 20.289869, 20.003933>,  <15.753698, 20.063950, 20.139235>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.054787, 20.289869, 20.003933> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339704, 0.106897, 0.934438,
		0.563927, -0.818276, -0.111401,
		0.752720, 0.564799, -0.338254,
		16.280603, 20.459309, 19.902456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.281937, 19.751783, 20.308838>,  <15.753698, 20.063950, 20.139235>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.281937, 19.751783, 20.308838> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.425524, 20.124144, 20.281824>,  <16.511677, 20.347561, 20.265615>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.425524, 20.124144, 20.281824>,  <16.281937, 19.751783, 20.308838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.425524, 20.124144, 20.281824> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478536, -0.121440, 0.869630,
		0.801339, -0.344488, -0.489064,
		0.358969, 0.930903, -0.067535,
		16.533215, 20.403414, 20.261564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.996803, 19.641527, 20.439697>,  <16.281937, 19.751783, 20.308838>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.996803, 19.641527, 20.439697> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.915493, 20.029509, 20.493164>,  <16.866707, 20.262297, 20.525244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.915493, 20.029509, 20.493164>,  <16.996803, 19.641527, 20.439697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.915493, 20.029509, 20.493164> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452863, -0.027899, 0.891144,
		0.868098, 0.241683, -0.433585,
		-0.203277, 0.969954, 0.133669,
		16.854509, 20.320496, 20.533264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.558849, 19.205084, 20.403791>,  <16.996803, 19.641527, 20.439697>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.558849, 19.205084, 20.403791> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.647142, 18.816402, 20.437412>,  <17.700119, 18.583193, 20.457584>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.647142, 18.816402, 20.437412>,  <17.558849, 19.205084, 20.403791>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.647142, 18.816402, 20.437412> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382953, -0.165604, -0.908803,
		0.897008, 0.168416, -0.408672,
		0.220735, -0.971705, 0.084053,
		17.713364, 18.524891, 20.462627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.578604, 19.021503, 19.787092>,  <17.558849, 19.205084, 20.403791>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.578604, 19.021503, 19.787092> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.536951, 18.661301, 19.955967>,  <17.511959, 18.445179, 20.057293>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.536951, 18.661301, 19.955967>,  <17.578604, 19.021503, 19.787092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.536951, 18.661301, 19.955967> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445759, -0.337214, -0.829208,
		0.889076, -0.274541, -0.366294,
		-0.104132, -0.900508, 0.422188,
		17.505711, 18.391148, 20.082623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.712879, 18.582571, 19.311060>,  <17.578604, 19.021503, 19.787092>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.712879, 18.582571, 19.311060> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.478292, 18.369913, 19.555489>,  <17.337540, 18.242319, 19.702147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.478292, 18.369913, 19.555489>,  <17.712879, 18.582571, 19.311060>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.478292, 18.369913, 19.555489> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499871, -0.356060, -0.789525,
		0.637325, -0.768489, -0.056936,
		-0.586469, -0.531645, 0.611072,
		17.302351, 18.210421, 19.738810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.548832, 17.957710, 18.914381>,  <17.712879, 18.582571, 19.311060>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.548832, 17.957710, 18.914381> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.274546, 17.959435, 19.205524>,  <17.109974, 17.960470, 19.380211>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.274546, 17.959435, 19.205524>,  <17.548832, 17.957710, 18.914381>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.274546, 17.959435, 19.205524> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659964, -0.425444, -0.619230,
		0.306993, -0.904974, 0.294579,
		-0.685714, 0.004312, 0.727859,
		17.068832, 17.960728, 19.423882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.269642, 17.291328, 18.987467>,  <17.548832, 17.957710, 18.914381>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.269642, 17.291328, 18.987467> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.001482, 17.501711, 19.196823>,  <16.840586, 17.627939, 19.322437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.001482, 17.501711, 19.196823>,  <17.269642, 17.291328, 18.987467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.001482, 17.501711, 19.196823> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740985, -0.511447, -0.435159,
		0.038811, -0.679554, 0.732598,
		-0.670399, 0.525955, 0.523389,
		16.800362, 17.659498, 19.353840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.706333, 16.904722, 18.941000>,  <17.269642, 17.291328, 18.987467>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.706333, 16.904722, 18.941000> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.543318, 17.245045, 19.073689>,  <16.445509, 17.449238, 19.153301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.543318, 17.245045, 19.073689>,  <16.706333, 16.904722, 18.941000>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.543318, 17.245045, 19.073689> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850025, -0.220690, -0.478281,
		-0.333717, -0.476891, 0.813147,
		-0.407541, 0.850806, 0.331721,
		16.421055, 17.500286, 19.173204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.092287, 16.714315, 19.167110>,  <16.706333, 16.904722, 18.941000>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.092287, 16.714315, 19.167110> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.052994, 17.101595, 19.075075>,  <16.029417, 17.333963, 19.019854>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.052994, 17.101595, 19.075075>,  <16.092287, 16.714315, 19.167110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.052994, 17.101595, 19.075075> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838292, -0.205106, -0.505172,
		-0.536299, 0.143256, 0.831782,
		-0.098235, 0.968199, -0.230088,
		16.023523, 17.392056, 19.006048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.388114, 16.922575, 19.344358>,  <16.092287, 16.714315, 19.167110>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.388114, 16.922575, 19.344358> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.508282, 17.201691, 19.084255>,  <15.580382, 17.369160, 18.928194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.508282, 17.201691, 19.084255>,  <15.388114, 16.922575, 19.344358>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.508282, 17.201691, 19.084255> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830033, -0.144598, -0.538643,
		-0.469886, 0.701555, 0.535749,
		0.300420, 0.697791, -0.650259,
		15.598408, 17.411028, 18.889177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.824735, 17.350368, 19.201834>,  <15.388114, 16.922575, 19.344358>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.824735, 17.350368, 19.201834> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.058205, 17.387613, 18.879181>,  <15.198286, 17.409960, 18.685589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.058205, 17.387613, 18.879181>,  <14.824735, 17.350368, 19.201834>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.058205, 17.387613, 18.879181> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796148, -0.129639, -0.591052,
		-0.159604, 0.987180, -0.001538,
		0.583674, 0.093110, -0.806632,
		15.233307, 17.415546, 18.637192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.340103, 17.781328, 18.703899>,  <14.824735, 17.350368, 19.201834>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.340103, 17.781328, 18.703899> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.643446, 17.645872, 18.481112>,  <14.825452, 17.564598, 18.347439>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.643446, 17.645872, 18.481112>,  <14.340103, 17.781328, 18.703899>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.643446, 17.645872, 18.481112> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623278, -0.126560, -0.771691,
		0.190836, 0.932365, -0.307046,
		0.758357, -0.338641, -0.556971,
		14.870954, 17.544279, 18.314020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.201077, 18.029146, 18.076204>,  <14.340103, 17.781328, 18.703899>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.201077, 18.029146, 18.076204> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.454257, 17.727461, 18.006302>,  <14.606165, 17.546450, 17.964361>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.454257, 17.727461, 18.006302>,  <14.201077, 18.029146, 18.076204>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.454257, 17.727461, 18.006302> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524721, -0.251948, -0.813136,
		0.569247, 0.606372, -0.555221,
		0.632950, -0.754211, -0.174756,
		14.644142, 17.501198, 17.953875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.026205, 18.023756, 17.387724>,  <14.201077, 18.029146, 18.076204>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.026205, 18.023756, 17.387724> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.181478, 17.866512, 17.054310>,  <14.274641, 17.772167, 16.854261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.181478, 17.866512, 17.054310>,  <14.026205, 18.023756, 17.387724>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.181478, 17.866512, 17.054310> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.884515, -0.412859, -0.217212,
		-0.258745, 0.821592, -0.507974,
		0.388182, -0.393108, -0.833535,
		14.297932, 17.748581, 16.804249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<18.123505, 18.929319, 26.014515> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.440189, 19.154818, 25.920378>,  <18.630199, 19.290117, 25.863895>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.440189, 19.154818, 25.920378>,  <18.123505, 18.929319, 26.014515>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.440189, 19.154818, 25.920378> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326222, 0.064434, -0.943094,
		-0.516501, 0.823431, 0.234919,
		0.791710, 0.563746, -0.235341,
		18.677702, 19.323942, 25.849775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.788315, 19.483826, 25.550978>,  <18.123505, 18.929319, 26.014515>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.788315, 19.483826, 25.550978> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.180737, 19.504658, 25.476334>,  <18.416189, 19.517157, 25.431547>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.180737, 19.504658, 25.476334>,  <17.788315, 19.483826, 25.550978>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.180737, 19.504658, 25.476334> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185644, -0.022891, -0.982351,
		-0.055431, 0.998381, -0.012789,
		0.981052, 0.052079, -0.186612,
		18.475052, 19.520281, 25.420349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.876432, 19.912252, 25.013641>,  <17.788315, 19.483826, 25.550978>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.876432, 19.912252, 25.013641> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.224075, 19.715696, 24.991062>,  <18.432661, 19.597763, 24.977514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.224075, 19.715696, 24.991062>,  <17.876432, 19.912252, 25.013641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.224075, 19.715696, 24.991062> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187022, -0.220822, -0.957215,
		0.457901, 0.842480, -0.283820,
		0.869108, -0.491391, -0.056448,
		18.484808, 19.568279, 24.974129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.143995, 20.221735, 24.345373>,  <17.876432, 19.912252, 25.013641>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.143995, 20.221735, 24.345373> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.324575, 19.878078, 24.441765>,  <18.432924, 19.671885, 24.499599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.324575, 19.878078, 24.441765>,  <18.143995, 20.221735, 24.345373>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.324575, 19.878078, 24.441765> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016532, -0.261967, -0.964935,
		0.892143, 0.439605, -0.104062,
		0.451451, -0.859140, 0.240979,
		18.460011, 19.620337, 24.514059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.633299, 20.163857, 23.808769>,  <18.143995, 20.221735, 24.345373>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.633299, 20.163857, 23.808769> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.596918, 19.795139, 23.959513>,  <18.575089, 19.573908, 24.049959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.596918, 19.795139, 23.959513>,  <18.633299, 20.163857, 23.808769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.596918, 19.795139, 23.959513> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213921, -0.387678, -0.896629,
		0.972607, -0.000933, 0.232452,
		-0.090953, -0.921794, 0.376859,
		18.569632, 19.518600, 24.072571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.149427, 19.776295, 23.415825>,  <18.633299, 20.163857, 23.808769>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.149427, 19.776295, 23.415825> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.929152, 19.481575, 23.572727>,  <18.796986, 19.304743, 23.666868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.929152, 19.481575, 23.572727>,  <19.149427, 19.776295, 23.415825>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.929152, 19.481575, 23.572727> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080192, -0.514459, -0.853757,
		0.830849, -0.438700, 0.342393,
		-0.550690, -0.736800, 0.392257,
		18.763945, 19.260534, 23.690405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.540863, 19.278095, 23.282507>,  <19.149427, 19.776295, 23.415825>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.540863, 19.278095, 23.282507> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.169239, 19.143774, 23.344584>,  <18.946264, 19.063181, 23.381830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.169239, 19.143774, 23.344584>,  <19.540863, 19.278095, 23.282507>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.169239, 19.143774, 23.344584> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033827, -0.494879, -0.868303,
		0.368379, -0.801456, 0.471132,
		-0.929060, -0.335802, 0.155192,
		18.890522, 19.043034, 23.391142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.551395, 18.488592, 23.184702>,  <19.540863, 19.278095, 23.282507>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.551395, 18.488592, 23.184702> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.167976, 18.592806, 23.138565>,  <18.937925, 18.655334, 23.110884>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.167976, 18.592806, 23.138565>,  <19.551395, 18.488592, 23.184702>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.167976, 18.592806, 23.138565> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021055, -0.338939, -0.940573,
		-0.284141, -0.904015, 0.319405,
		-0.958551, 0.260530, -0.115340,
		18.880411, 18.670967, 23.103962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.311150, 17.903442, 22.738876>,  <19.551395, 18.488592, 23.184702>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.311150, 17.903442, 22.738876> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.058569, 18.213404, 22.727625>,  <18.907021, 18.399382, 22.720875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.058569, 18.213404, 22.727625>,  <19.311150, 17.903442, 22.738876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.058569, 18.213404, 22.727625> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242347, -0.231681, -0.942121,
		-0.736572, -0.588086, 0.334091,
		-0.631450, 0.774906, -0.028128,
		18.869133, 18.445875, 22.719187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.648323, 17.639193, 22.581167>,  <19.311150, 17.903442, 22.738876>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.648323, 17.639193, 22.581167> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.607424, 18.018108, 22.459715>,  <18.582884, 18.245457, 22.386843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.607424, 18.018108, 22.459715>,  <18.648323, 17.639193, 22.581167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.607424, 18.018108, 22.459715> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332278, -0.320223, -0.887158,
		-0.937623, 0.010179, 0.347505,
		-0.102249, 0.947287, -0.303631,
		18.576750, 18.302294, 22.368626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.002209, 17.720201, 22.242065>,  <18.648323, 17.639193, 22.581167>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.002209, 17.720201, 22.242065> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.220684, 18.025587, 22.104197>,  <18.351768, 18.208818, 22.021475>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.220684, 18.025587, 22.104197>,  <18.002209, 17.720201, 22.242065>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.220684, 18.025587, 22.104197> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478756, -0.053127, -0.876339,
		-0.687366, 0.643660, 0.336496,
		0.546188, 0.763465, -0.344674,
		18.384541, 18.254627, 22.000793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.604223, 17.986744, 21.868103>,  <18.002209, 17.720201, 22.242065>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.604223, 17.986744, 21.868103> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.922380, 18.182060, 21.724478>,  <18.113274, 18.299250, 21.638302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.922380, 18.182060, 21.724478>,  <17.604223, 17.986744, 21.868103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.922380, 18.182060, 21.724478> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435769, 0.048962, -0.898726,
		-0.421258, 0.871307, 0.251726,
		0.795391, 0.488290, -0.359062,
		18.160997, 18.328547, 21.616758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.362358, 18.697048, 21.670523>,  <17.604223, 17.986744, 21.868103>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.362358, 18.697048, 21.670523> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.695927, 18.576262, 21.485744>,  <17.896067, 18.503790, 21.374878>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.695927, 18.576262, 21.485744>,  <17.362358, 18.697048, 21.670523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.695927, 18.576262, 21.485744> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459983, 0.082210, -0.884114,
		0.304950, 0.949767, -0.070344,
		0.833919, -0.301967, -0.461947,
		17.946102, 18.485672, 21.347160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.395718, 19.137354, 21.102129>,  <17.362358, 18.697048, 21.670523>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.395718, 19.137354, 21.102129> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.604729, 18.804350, 21.028488>,  <17.730135, 18.604548, 20.984303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.604729, 18.804350, 21.028488>,  <17.395718, 19.137354, 21.102129>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.604729, 18.804350, 21.028488> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434899, -0.074514, -0.897391,
		0.733368, 0.548978, -0.400992,
		0.522527, -0.832509, -0.184104,
		17.761486, 18.554598, 20.973257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.575424, 19.899189, 20.871218>,  <17.395718, 19.137354, 21.102129>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.575424, 19.899189, 20.871218> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.285019, 20.172598, 20.901436>,  <17.110777, 20.336643, 20.919567>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.285019, 20.172598, 20.901436>,  <17.575424, 19.899189, 20.871218>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.285019, 20.172598, 20.901436> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315856, 0.233862, 0.919534,
		0.610854, 0.691453, -0.385681,
		-0.726011, 0.683521, 0.075544,
		17.067215, 20.377655, 20.924099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.921255, 20.452459, 21.149328>,  <17.575424, 19.899189, 20.871218>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.921255, 20.452459, 21.149328> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.537222, 20.550356, 21.203501>,  <17.306803, 20.609095, 21.236004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.537222, 20.550356, 21.203501>,  <17.921255, 20.452459, 21.149328>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.537222, 20.550356, 21.203501> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248071, 0.521307, 0.816517,
		0.129233, 0.817521, -0.561212,
		-0.960083, 0.244741, 0.135433,
		17.249197, 20.623777, 21.244131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.916265, 21.182566, 21.202694>,  <17.921255, 20.452459, 21.149328>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.916265, 21.182566, 21.202694> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.613476, 21.012403, 21.401094>,  <17.431801, 20.910305, 21.520134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.613476, 21.012403, 21.401094>,  <17.916265, 21.182566, 21.202694>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.613476, 21.012403, 21.401094> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211942, 0.558179, 0.802195,
		-0.618116, 0.712366, -0.332366,
		-0.756976, -0.425407, 0.496000,
		17.386383, 20.884781, 21.549894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.724318, 21.713417, 21.551653>,  <17.916265, 21.182566, 21.202694>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.724318, 21.713417, 21.551653> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.539417, 21.418169, 21.748222>,  <17.428476, 21.241020, 21.866165>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.539417, 21.418169, 21.748222>,  <17.724318, 21.713417, 21.551653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.539417, 21.418169, 21.748222> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106576, 0.503926, 0.857146,
		-0.880321, 0.448591, -0.154275,
		-0.462252, -0.738122, 0.491426,
		17.400742, 21.196732, 21.895651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.421539, 22.033117, 22.102074>,  <17.724318, 21.713417, 21.551653>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.421539, 22.033117, 22.102074> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.402201, 21.649187, 22.212637>,  <17.390598, 21.418829, 22.278975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.402201, 21.649187, 22.212637>,  <17.421539, 22.033117, 22.102074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.402201, 21.649187, 22.212637> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034129, 0.278158, 0.959929,
		-0.998248, 0.036975, -0.046205,
		-0.048346, -0.959824, 0.276409,
		17.387697, 21.361240, 22.295559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.870068, 22.022074, 22.460333>,  <17.421539, 22.033117, 22.102074>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.870068, 22.022074, 22.460333> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.094570, 21.718975, 22.593485>,  <17.229273, 21.537115, 22.673376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.094570, 21.718975, 22.593485>,  <16.870068, 22.022074, 22.460333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.094570, 21.718975, 22.593485> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012077, 0.394664, 0.918746,
		-0.827553, -0.519673, 0.212357,
		0.561257, -0.757747, 0.332881,
		17.262947, 21.491652, 22.693350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.444353, 21.555237, 22.956039>,  <16.870068, 22.022074, 22.460333>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.444353, 21.555237, 22.956039> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.840343, 21.536694, 23.009409>,  <17.077938, 21.525568, 23.041430>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.840343, 21.536694, 23.009409>,  <16.444353, 21.555237, 22.956039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.840343, 21.536694, 23.009409> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110996, 0.328844, 0.937839,
		-0.087354, -0.943246, 0.320402,
		0.989974, -0.046360, 0.133422,
		17.137337, 21.522785, 23.049437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.490046, 21.522997, 23.646486>,  <16.444353, 21.555237, 22.956039>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.490046, 21.522997, 23.646486> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.880003, 21.555016, 23.563372>,  <17.113977, 21.574226, 23.513504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.880003, 21.555016, 23.563372>,  <16.490046, 21.522997, 23.646486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.880003, 21.555016, 23.563372> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183253, 0.241676, 0.952896,
		0.126492, -0.967050, 0.220940,
		0.974894, 0.080046, -0.207785,
		17.172472, 21.579029, 23.501036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.781101, 21.104355, 24.142263>,  <16.490046, 21.522997, 23.646486>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.781101, 21.104355, 24.142263> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.055424, 21.368954, 24.020878>,  <17.220018, 21.527712, 23.948046>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.055424, 21.368954, 24.020878>,  <16.781101, 21.104355, 24.142263>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.055424, 21.368954, 24.020878> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184151, 0.245677, 0.951699,
		0.704099, -0.708566, 0.046673,
		0.685808, 0.661496, -0.303464,
		17.261166, 21.567402, 23.929838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.475227, 21.000984, 24.491215>,  <16.781101, 21.104355, 24.142263>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.475227, 21.000984, 24.491215> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.453655, 21.383335, 24.375708>,  <17.440712, 21.612745, 24.306402>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.453655, 21.383335, 24.375708>,  <17.475227, 21.000984, 24.491215>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.453655, 21.383335, 24.375708> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093950, 0.292765, 0.951558,
		0.994115, 0.024187, -0.105594,
		-0.053929, 0.955878, -0.288770,
		17.437477, 21.670099, 24.289076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.786442, 21.374460, 25.006227>,  <17.475227, 21.000984, 24.491215>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.786442, 21.374460, 25.006227> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.604254, 21.661263, 24.795155>,  <17.494942, 21.833344, 24.668510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.604254, 21.661263, 24.795155>,  <17.786442, 21.374460, 25.006227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.604254, 21.661263, 24.795155> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149017, 0.645775, 0.748845,
		0.877691, 0.262443, -0.400977,
		-0.455470, 0.717006, -0.527683,
		17.467613, 21.876364, 24.636850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.153297, 21.887709, 25.081028>,  <17.786442, 21.374460, 25.006227>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.153297, 21.887709, 25.081028> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.832914, 22.086077, 24.946846>,  <17.640684, 22.205097, 24.866337>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.832914, 22.086077, 24.946846>,  <18.153297, 21.887709, 25.081028>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.832914, 22.086077, 24.946846> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089325, 0.652993, 0.752078,
		0.592021, 0.572418, -0.567317,
		-0.800957, 0.495921, -0.335454,
		17.592627, 22.234854, 24.846210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.292423, 22.618073, 25.046465>,  <18.153297, 21.887709, 25.081028>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.292423, 22.618073, 25.046465> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.898243, 22.570601, 25.095125>,  <17.661734, 22.542118, 25.124321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.898243, 22.570601, 25.095125>,  <18.292423, 22.618073, 25.046465>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.898243, 22.570601, 25.095125> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019083, 0.633996, 0.773100,
		-0.168877, 0.764175, -0.622509,
		-0.985452, -0.118679, 0.121650,
		17.602608, 22.534996, 25.131620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.966330, 23.350113, 25.346359>,  <18.292423, 22.618073, 25.046465>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.966330, 23.350113, 25.346359> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.702730, 23.061123, 25.430025>,  <17.544571, 22.887730, 25.480225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.702730, 23.061123, 25.430025>,  <17.966330, 23.350113, 25.346359>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.702730, 23.061123, 25.430025> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076132, 0.340737, 0.937071,
		-0.748281, 0.601604, -0.279549,
		-0.658998, -0.722475, 0.209166,
		17.505030, 22.844379, 25.492775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<15.802899, 16.565153, 28.144173> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.938943, 16.820789, 27.868233>,  <16.020569, 16.974171, 27.702669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.938943, 16.820789, 27.868233>,  <15.802899, 16.565153, 28.144173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.938943, 16.820789, 27.868233> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542300, -0.466022, -0.699095,
		-0.768269, 0.611874, 0.188080,
		0.340109, 0.639089, -0.689849,
		16.040976, 17.012516, 27.661278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.193439, 16.846170, 27.812878>,  <15.802899, 16.565153, 28.144173>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.193439, 16.846170, 27.812878> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.486452, 16.912920, 27.548893>,  <15.662260, 16.952969, 27.390503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.486452, 16.912920, 27.548893>,  <15.193439, 16.846170, 27.812878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.486452, 16.912920, 27.548893> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569248, -0.381488, -0.728302,
		-0.373301, 0.909187, -0.184461,
		0.732532, 0.166872, -0.659962,
		15.706212, 16.962982, 27.350904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.897129, 17.285511, 27.269203>,  <15.193439, 16.846170, 27.812878>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.897129, 17.285511, 27.269203> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.236256, 17.148716, 27.107092>,  <15.439732, 17.066639, 27.009825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.236256, 17.148716, 27.107092>,  <14.897129, 17.285511, 27.269203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.236256, 17.148716, 27.107092> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491632, -0.220453, -0.842436,
		0.198755, 0.913480, -0.355035,
		0.847817, -0.341985, -0.405280,
		15.490601, 17.046120, 26.985508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.019934, 17.619087, 26.653221>,  <14.897129, 17.285511, 27.269203>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.019934, 17.619087, 26.653221> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.229444, 17.280973, 26.610979>,  <15.355149, 17.078106, 26.585634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.229444, 17.280973, 26.610979>,  <15.019934, 17.619087, 26.653221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.229444, 17.280973, 26.610979> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439636, -0.162044, -0.883437,
		0.729643, 0.509151, -0.456493,
		0.523775, -0.845285, -0.105607,
		15.386576, 17.027388, 26.579296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.433019, 17.685472, 25.938612>,  <15.019934, 17.619087, 26.653221>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.433019, 17.685472, 25.938612> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.428729, 17.305613, 26.063862>,  <15.426155, 17.077696, 26.139011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.428729, 17.305613, 26.063862>,  <15.433019, 17.685472, 25.938612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.428729, 17.305613, 26.063862> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325516, -0.292769, -0.899069,
		0.945476, -0.111569, -0.305987,
		-0.010725, -0.949652, 0.313123,
		15.425511, 17.020718, 26.157799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.784946, 17.278969, 25.403893>,  <15.433019, 17.685472, 25.938612>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.784946, 17.278969, 25.403893> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.533432, 17.037111, 25.599459>,  <15.382524, 16.891996, 25.716799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.533432, 17.037111, 25.599459>,  <15.784946, 17.278969, 25.403893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.533432, 17.037111, 25.599459> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421994, -0.262765, -0.867684,
		0.653108, -0.751906, -0.089933,
		-0.628785, -0.604642, 0.488914,
		15.344796, 16.855719, 25.746134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.920786, 16.699890, 25.046103>,  <15.784946, 17.278969, 25.403893>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.920786, 16.699890, 25.046103> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.568689, 16.669910, 25.233532>,  <15.357431, 16.651922, 25.345989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.568689, 16.669910, 25.233532>,  <15.920786, 16.699890, 25.046103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.568689, 16.669910, 25.233532> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438181, -0.250629, -0.863240,
		0.182138, -0.965178, 0.187771,
		-0.880240, -0.074951, 0.468571,
		15.304617, 16.647425, 25.374104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.636522, 15.937740, 25.019939>,  <15.920786, 16.699890, 25.046103>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.636522, 15.937740, 25.019939> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.310392, 16.162374, 25.076321>,  <15.114715, 16.297155, 25.110149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.310392, 16.162374, 25.076321>,  <15.636522, 15.937740, 25.019939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.310392, 16.162374, 25.076321> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357816, -0.297311, -0.885197,
		-0.455208, -0.772158, 0.443349,
		-0.815324, 0.561586, 0.140952,
		15.065795, 16.330851, 25.118607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.139220, 15.518161, 24.682356>,  <15.636522, 15.937740, 25.019939>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.139220, 15.518161, 24.682356> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.948463, 15.864624, 24.742146>,  <14.834009, 16.072502, 24.778019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.948463, 15.864624, 24.742146>,  <15.139220, 15.518161, 24.682356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.948463, 15.864624, 24.742146> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504868, -0.130725, -0.853240,
		-0.719501, -0.482369, 0.499638,
		-0.476892, 0.866158, 0.149476,
		14.805396, 16.124472, 24.786989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.373281, 15.413922, 24.670118>,  <15.139220, 15.518161, 24.682356>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.373281, 15.413922, 24.670118> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.448793, 15.797506, 24.585495>,  <14.494102, 16.027657, 24.534721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.448793, 15.797506, 24.585495>,  <14.373281, 15.413922, 24.670118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.448793, 15.797506, 24.585495> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484289, -0.096498, -0.869570,
		-0.854298, 0.266614, 0.446196,
		0.188783, 0.958960, -0.211556,
		14.505428, 16.085194, 24.522028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.784422, 15.648273, 24.370176>,  <14.373281, 15.413922, 24.670118>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.784422, 15.648273, 24.370176> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.029510, 15.936556, 24.240467>,  <14.176563, 16.109526, 24.162642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.029510, 15.936556, 24.240467>,  <13.784422, 15.648273, 24.370176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.029510, 15.936556, 24.240467> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491723, 0.026444, -0.870350,
		-0.618693, 0.692734, 0.370591,
		0.612721, 0.720708, -0.324272,
		14.213326, 16.152769, 24.143185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.339063, 16.118286, 24.199453>,  <13.784422, 15.648273, 24.370176>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.339063, 16.118286, 24.199453> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.672588, 16.207195, 23.997324>,  <13.872704, 16.260540, 23.876047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.672588, 16.207195, 23.997324>,  <13.339063, 16.118286, 24.199453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.672588, 16.207195, 23.997324> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501910, -0.075928, -0.861581,
		-0.229874, 0.972024, 0.048251,
		0.833813, 0.222273, -0.505322,
		13.922732, 16.273876, 23.845728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.192448, 16.509363, 23.663456>,  <13.339063, 16.118286, 24.199453>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.192448, 16.509363, 23.663456> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.543534, 16.359243, 23.544283>,  <13.754187, 16.269173, 23.472778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.543534, 16.359243, 23.544283>,  <13.192448, 16.509363, 23.663456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.543534, 16.359243, 23.544283> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383923, -0.178731, -0.905902,
		0.286733, 0.909509, -0.300961,
		0.877717, -0.375298, -0.297934,
		13.806849, 16.246655, 23.454903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.122623, 16.545595, 22.939165>,  <13.192448, 16.509363, 23.663456>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.122623, 16.545595, 22.939165> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.459554, 16.330475, 22.953350>,  <13.661712, 16.201403, 22.961861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.459554, 16.330475, 22.953350>,  <13.122623, 16.545595, 22.939165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.459554, 16.330475, 22.953350> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291464, -0.509872, -0.809370,
		0.453360, 0.671418, -0.586228,
		0.842326, -0.537800, 0.035461,
		13.712252, 16.169134, 22.963989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.993376, 17.231680, 22.664335>,  <13.122623, 16.545595, 22.939165>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.993376, 17.231680, 22.664335> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.605244, 17.265030, 22.755116>,  <12.372364, 17.285040, 22.809584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.605244, 17.265030, 22.755116>,  <12.993376, 17.231680, 22.664335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.605244, 17.265030, 22.755116> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241755, 0.347962, 0.905802,
		-0.003448, 0.933794, -0.357795,
		-0.970331, 0.083375, 0.226949,
		12.314144, 17.290043, 22.823200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.999165, 17.850544, 23.080940>,  <12.993376, 17.231680, 22.664335>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.999165, 17.850544, 23.080940> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.672128, 17.647278, 23.189243>,  <12.475905, 17.525318, 23.254225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.672128, 17.647278, 23.189243>,  <12.999165, 17.850544, 23.080940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.672128, 17.647278, 23.189243> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123227, 0.304916, 0.944373,
		-0.562458, 0.805477, -0.186678,
		-0.817592, -0.508166, 0.270759,
		12.426850, 17.494827, 23.270472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.616184, 18.308779, 23.538206>,  <12.999165, 17.850544, 23.080940>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.616184, 18.308779, 23.538206> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.486725, 17.939695, 23.621977>,  <12.409049, 17.718245, 23.672239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.486725, 17.939695, 23.621977>,  <12.616184, 18.308779, 23.538206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.486725, 17.939695, 23.621977> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205026, 0.284474, 0.936504,
		-0.923697, 0.260160, -0.281249,
		-0.323649, -0.922709, 0.209428,
		12.389630, 17.662882, 23.684805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.010656, 18.408882, 23.940317>,  <12.616184, 18.308779, 23.538206>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.010656, 18.408882, 23.940317> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.147247, 18.040266, 24.014240>,  <12.229202, 17.819096, 24.058594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.147247, 18.040266, 24.014240>,  <12.010656, 18.408882, 23.940317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.147247, 18.040266, 24.014240> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084623, 0.165685, 0.982541,
		-0.936073, -0.351155, -0.021406,
		0.341477, -0.921541, 0.184809,
		12.249691, 17.763803, 24.069683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.677458, 18.170177, 24.515919>,  <12.010656, 18.408882, 23.940317>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.677458, 18.170177, 24.515919> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.004437, 17.941147, 24.541004>,  <12.200625, 17.803728, 24.556055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.004437, 17.941147, 24.541004>,  <11.677458, 18.170177, 24.515919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.004437, 17.941147, 24.541004> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091634, 0.236764, 0.967236,
		-0.568667, -0.784919, 0.246010,
		0.817448, -0.572578, 0.062715,
		12.249672, 17.769373, 24.559818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.696819, 17.865665, 25.229380>,  <11.677458, 18.170177, 24.515919>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.696819, 17.865665, 25.229380> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.072483, 17.816877, 25.100941>,  <12.297881, 17.787603, 25.023878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.072483, 17.816877, 25.100941>,  <11.696819, 17.865665, 25.229380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.072483, 17.816877, 25.100941> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342668, 0.397038, 0.851434,
		0.023636, -0.909661, 0.414678,
		0.939159, -0.121972, -0.321097,
		12.354231, 17.780285, 25.004612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.028817, 17.653807, 25.776663>,  <11.696819, 17.865665, 25.229380>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.028817, 17.653807, 25.776663> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.339447, 17.776800, 25.556705>,  <12.525826, 17.850597, 25.424730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.339447, 17.776800, 25.556705>,  <12.028817, 17.653807, 25.776663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.339447, 17.776800, 25.556705> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465853, 0.307370, 0.829762,
		0.424162, -0.900542, 0.095452,
		0.776574, 0.307487, -0.549895,
		12.572419, 17.869045, 25.391737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.705472, 17.418159, 26.202745>,  <12.028817, 17.653807, 25.776663>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.705472, 17.418159, 26.202745> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.802745, 17.710022, 25.947100>,  <12.861109, 17.885139, 25.793713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.802745, 17.710022, 25.947100>,  <12.705472, 17.418159, 26.202745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.802745, 17.710022, 25.947100> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604134, 0.401554, 0.688315,
		0.758871, -0.553495, -0.343159,
		0.243181, 0.729656, -0.639113,
		12.875699, 17.928919, 25.755365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.346779, 17.624647, 26.520000>,  <12.705472, 17.418159, 26.202745>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.346779, 17.624647, 26.520000> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.293937, 17.893288, 26.228384>,  <13.262232, 18.054472, 26.053413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.293937, 17.893288, 26.228384>,  <13.346779, 17.624647, 26.520000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.293937, 17.893288, 26.228384> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815228, 0.492001, 0.305513,
		0.563871, -0.553976, -0.612503,
		-0.132105, 0.671600, -0.729042,
		13.254305, 18.094767, 26.009672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.986940, 17.746988, 26.264402>,  <13.346779, 17.624647, 26.520000>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.986940, 17.746988, 26.264402> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.768966, 18.075689, 26.197748>,  <13.638181, 18.272909, 26.157755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.768966, 18.075689, 26.197748>,  <13.986940, 17.746988, 26.264402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.768966, 18.075689, 26.197748> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715935, 0.559459, 0.417663,
		0.436441, 0.108300, -0.893191,
		-0.544937, 0.821752, -0.166635,
		13.605485, 18.322214, 26.147758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.408178, 18.382906, 25.971867>,  <13.986940, 17.746988, 26.264402>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.408178, 18.382906, 25.971867> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.085966, 18.511898, 26.170713>,  <13.892638, 18.589294, 26.290022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.085966, 18.511898, 26.170713>,  <14.408178, 18.382906, 25.971867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.085966, 18.511898, 26.170713> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589883, 0.515978, 0.621132,
		-0.056198, 0.793582, -0.605862,
		-0.805531, 0.322481, 0.497117,
		13.844307, 18.608643, 26.319849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.509837, 19.114212, 26.144665>,  <14.408178, 18.382906, 25.971867>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.509837, 19.114212, 26.144665> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.226323, 18.992001, 26.398996>,  <14.056215, 18.918674, 26.551596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.226323, 18.992001, 26.398996>,  <14.509837, 19.114212, 26.144665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.226323, 18.992001, 26.398996> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599493, 0.214170, 0.771194,
		-0.371797, 0.927784, 0.031362,
		-0.708784, -0.305528, 0.635828,
		14.013688, 18.900343, 26.589745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.516277, 19.657175, 26.687054>,  <14.509837, 19.114212, 26.144665>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.516277, 19.657175, 26.687054> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.314698, 19.368500, 26.876875>,  <14.193751, 19.195293, 26.990768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.314698, 19.368500, 26.876875>,  <14.516277, 19.657175, 26.687054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.314698, 19.368500, 26.876875> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522501, 0.182773, 0.832818,
		-0.687772, 0.667652, 0.284975,
		-0.503947, -0.721689, 0.474555,
		14.163514, 19.151993, 27.019241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.139076, 19.942835, 27.360201>,  <14.516277, 19.657175, 26.687054>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.139076, 19.942835, 27.360201> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.204432, 19.549633, 27.393671>,  <14.243647, 19.313711, 27.413754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.204432, 19.549633, 27.393671>,  <14.139076, 19.942835, 27.360201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.204432, 19.549633, 27.393671> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431427, 0.147470, 0.890013,
		-0.887228, -0.109320, 0.448191,
		0.163391, -0.983007, 0.083676,
		14.253449, 19.254730, 27.418774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.011451, 20.607428, 27.381531>,  <14.139076, 19.942835, 27.360201>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.011451, 20.607428, 27.381531> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.186676, 20.962244, 27.323208>,  <14.291811, 21.175133, 27.288214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.186676, 20.962244, 27.323208>,  <14.011451, 20.607428, 27.381531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.186676, 20.962244, 27.323208> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361940, 0.025569, -0.931851,
		-0.822861, 0.460984, 0.332256,
		0.438064, 0.887040, -0.145809,
		14.318095, 21.228355, 27.279465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.563776, 20.991631, 26.926861>,  <14.011451, 20.607428, 27.381531>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.563776, 20.991631, 26.926861> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.924013, 21.145741, 26.846367>,  <14.140156, 21.238207, 26.798071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.924013, 21.145741, 26.846367>,  <13.563776, 20.991631, 26.926861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.924013, 21.145741, 26.846367> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270443, 0.134233, -0.953332,
		-0.340281, 0.912987, 0.225084,
		0.900594, 0.385274, -0.201234,
		14.194191, 21.261322, 26.785997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.481712, 21.518917, 26.478022>,  <13.563776, 20.991631, 26.926861>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.481712, 21.518917, 26.478022> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.859950, 21.401487, 26.421928>,  <14.086892, 21.331030, 26.388271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.859950, 21.401487, 26.421928>,  <13.481712, 21.518917, 26.478022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.859950, 21.401487, 26.421928> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100932, 0.145063, -0.984261,
		0.309298, 0.944865, 0.107539,
		0.945594, -0.293576, -0.140235,
		14.143628, 21.313416, 26.379858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.703356, 22.005688, 26.025923>,  <13.481712, 21.518917, 26.478022>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.703356, 22.005688, 26.025923> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.985817, 21.724710, 25.990314>,  <14.155293, 21.556124, 25.968950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.985817, 21.724710, 25.990314>,  <13.703356, 22.005688, 26.025923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.985817, 21.724710, 25.990314> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043662, 0.168684, -0.984703,
		0.706713, 0.691463, 0.149787,
		0.706152, -0.702442, -0.089020,
		14.197662, 21.513977, 25.963608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.301260, 22.321726, 25.556047>,  <13.703356, 22.005688, 26.025923>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.301260, 22.321726, 25.556047> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.298808, 21.922037, 25.540462>,  <14.297337, 21.682224, 25.531111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.298808, 21.922037, 25.540462>,  <14.301260, 22.321726, 25.556047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.298808, 21.922037, 25.540462> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123215, 0.039422, -0.991597,
		0.992361, -0.001278, -0.123360,
		-0.006130, -0.999222, -0.038963,
		14.296968, 21.622271, 25.528774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.928444, 22.127916, 25.104130>,  <14.301260, 22.321726, 25.556047>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.928444, 22.127916, 25.104130> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.652617, 21.838390, 25.113787>,  <14.487120, 21.664675, 25.119581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.652617, 21.838390, 25.113787>,  <14.928444, 22.127916, 25.104130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.652617, 21.838390, 25.113787> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026093, -0.008480, -0.999623,
		0.723750, -0.689939, -0.013039,
		-0.689569, -0.723817, 0.024140,
		14.445745, 21.621244, 25.121029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.111059, 21.631443, 24.605038>,  <14.928444, 22.127916, 25.104130>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.111059, 21.631443, 24.605038> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.717231, 21.572517, 24.642809>,  <14.480933, 21.537163, 24.665472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.717231, 21.572517, 24.642809>,  <15.111059, 21.631443, 24.605038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.717231, 21.572517, 24.642809> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056856, -0.241037, -0.968849,
		0.165486, -0.959270, 0.228943,
		-0.984572, -0.147314, 0.094429,
		14.421859, 21.528324, 24.671137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.017126, 21.050795, 24.231874>,  <15.111059, 21.631443, 24.605038>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.017126, 21.050795, 24.231874> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.655272, 21.216372, 24.272440>,  <14.438159, 21.315718, 24.296780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.655272, 21.216372, 24.272440>,  <15.017126, 21.050795, 24.231874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.655272, 21.216372, 24.272440> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166503, -0.124229, -0.978184,
		-0.392314, -0.901786, 0.181305,
		-0.904636, 0.413943, 0.101414,
		14.383881, 21.340553, 24.302864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.617932, 20.619688, 23.854536>,  <15.017126, 21.050795, 24.231874>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.617932, 20.619688, 23.854536> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.389324, 20.946106, 23.889034>,  <14.252159, 21.141956, 23.909733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.389324, 20.946106, 23.889034>,  <14.617932, 20.619688, 23.854536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.389324, 20.946106, 23.889034> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273131, -0.090068, -0.957751,
		-0.773799, -0.570930, 0.274362,
		-0.571520, 0.816043, 0.086244,
		14.217868, 21.190920, 23.914907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.918021, 20.437130, 23.635715>,  <14.617932, 20.619688, 23.854536>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.918021, 20.437130, 23.635715> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.948136, 20.834791, 23.604748>,  <13.966206, 21.073387, 23.586166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.948136, 20.834791, 23.604748>,  <13.918021, 20.437130, 23.635715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.948136, 20.834791, 23.604748> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341778, -0.047210, -0.938594,
		-0.936760, 0.097126, 0.336225,
		0.075289, 0.994152, -0.077420,
		13.970723, 21.133038, 23.581522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.430953, 20.536787, 23.094557>,  <13.918021, 20.437130, 23.635715>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.430953, 20.536787, 23.094557> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.606630, 20.892515, 23.145493>,  <13.712037, 21.105953, 23.176054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.606630, 20.892515, 23.145493>,  <13.430953, 20.536787, 23.094557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.606630, 20.892515, 23.145493> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075560, 0.177805, -0.981161,
		-0.895209, 0.421297, 0.145288,
		0.439193, 0.889322, 0.127339,
		13.738388, 21.159311, 23.183695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.945742, 21.024843, 22.850767>,  <13.430953, 20.536787, 23.094557>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.945742, 21.024843, 22.850767> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.319957, 21.163193, 22.822086>,  <13.544486, 21.246202, 22.804878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.319957, 21.163193, 22.822086>,  <12.945742, 21.024843, 22.850767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.319957, 21.163193, 22.822086> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138737, 0.173128, -0.975079,
		-0.324841, 0.922170, 0.209953,
		0.935537, 0.345874, -0.071700,
		13.600618, 21.266954, 22.800577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.851170, 21.622263, 22.509529>,  <12.945742, 21.024843, 22.850767>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.851170, 21.622263, 22.509529> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.245110, 21.567410, 22.467075>,  <13.481474, 21.534496, 22.441603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.245110, 21.567410, 22.467075>,  <12.851170, 21.622263, 22.509529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.245110, 21.567410, 22.467075> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081936, 0.171420, -0.981785,
		0.152832, 0.975607, 0.157586,
		0.984850, -0.137136, -0.106136,
		13.540565, 21.526268, 22.435234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.057251, 22.122305, 22.091833>,  <12.851170, 21.622263, 22.509529>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.057251, 22.122305, 22.091833> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.316483, 21.820019, 22.054132>,  <13.472022, 21.638647, 22.031511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.316483, 21.820019, 22.054132>,  <13.057251, 22.122305, 22.091833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.316483, 21.820019, 22.054132> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071496, 0.062841, -0.995459,
		0.758209, 0.651876, -0.013305,
		0.648080, -0.755718, -0.094254,
		13.510906, 21.593304, 22.025856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<10.089682, 7.489449, 15.622868> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.078622, 7.868776, 15.749313>,  <10.071986, 8.096373, 15.825181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.078622, 7.868776, 15.749313>,  <10.089682, 7.489449, 15.622868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.078622, 7.868776, 15.749313> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924473, -0.096034, 0.368954,
		0.380243, 0.302441, -0.874039,
		-0.027649, 0.948318, 0.316115,
		10.070327, 8.153272, 15.844148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.741468, 7.700081, 15.929681>,  <10.089682, 7.489449, 15.622868>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.741468, 7.700081, 15.929681> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.069764, 7.601109, 15.723704>,  <11.266742, 7.541726, 15.600119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.069764, 7.601109, 15.723704>,  <10.741468, 7.700081, 15.929681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.069764, 7.601109, 15.723704> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555157, -0.558184, -0.616629,
		-0.134859, 0.791965, -0.595486,
		0.820740, -0.247430, -0.514941,
		11.315986, 7.526880, 15.569221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.706017, 7.734401, 15.200402>,  <10.741468, 7.700081, 15.929681>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.706017, 7.734401, 15.200402> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.970834, 7.445077, 15.278910>,  <11.129725, 7.271483, 15.326015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.970834, 7.445077, 15.278910>,  <10.706017, 7.734401, 15.200402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.970834, 7.445077, 15.278910> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431798, -0.582166, -0.688937,
		0.612575, 0.371358, -0.697743,
		0.662044, -0.723309, 0.196268,
		11.169447, 7.228085, 15.337790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.951784, 7.529539, 14.538095>,  <10.706017, 7.734401, 15.200402>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.951784, 7.529539, 14.538095> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.987617, 7.244343, 14.816265>,  <11.009116, 7.073225, 14.983168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.987617, 7.244343, 14.816265>,  <10.951784, 7.529539, 14.538095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.987617, 7.244343, 14.816265> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439042, -0.655003, -0.614990,
		0.893990, -0.250230, -0.371709,
		0.089582, -0.712991, 0.695427,
		11.014491, 7.030446, 15.024894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.343880, 6.894906, 14.266047>,  <10.951784, 7.529539, 14.538095>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.343880, 6.894906, 14.266047> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.087953, 6.834886, 14.567542>,  <10.934396, 6.798874, 14.748439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.087953, 6.834886, 14.567542>,  <11.343880, 6.894906, 14.266047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.087953, 6.834886, 14.567542> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466271, -0.703835, -0.535917,
		0.610921, -0.694335, 0.380363,
		-0.639818, -0.150051, 0.753736,
		10.896008, 6.789871, 14.793663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.482110, 6.234866, 14.525862>,  <11.343880, 6.894906, 14.266047>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.482110, 6.234866, 14.525862> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.106129, 6.358266, 14.584258>,  <10.880540, 6.432306, 14.619296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.106129, 6.358266, 14.584258>,  <11.482110, 6.234866, 14.525862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.106129, 6.358266, 14.584258> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333342, -0.737975, -0.586750,
		-0.073275, -0.600184, 0.796499,
		-0.939954, 0.308500, 0.145991,
		10.824142, 6.450816, 14.628056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.371178, 5.599791, 14.066797>,  <11.482110, 6.234866, 14.525862>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.371178, 5.599791, 14.066797> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.060445, 5.449879, 13.864383>,  <10.874005, 5.359932, 13.742934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.060445, 5.449879, 13.864383>,  <11.371178, 5.599791, 14.066797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.060445, 5.449879, 13.864383> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404719, 0.912801, -0.054740,
		0.482425, 0.162279, -0.860774,
		-0.776833, -0.374779, -0.506035,
		10.827395, 5.337445, 13.712572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.274972, 5.989856, 13.293282>,  <11.371178, 5.599791, 14.066797>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.274972, 5.989856, 13.293282> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.005986, 5.812867, 13.530603>,  <10.844595, 5.706673, 13.672997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.005986, 5.812867, 13.530603>,  <11.274972, 5.989856, 13.293282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.005986, 5.812867, 13.530603> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487153, 0.868105, 0.095264,
		-0.557203, -0.224968, -0.799321,
		-0.672463, -0.442473, 0.593305,
		10.804247, 5.680125, 13.708595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.024078, 6.426733, 12.786191>,  <11.274972, 5.989856, 13.293282>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.024078, 6.426733, 12.786191> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.235855, 6.676392, 12.556362>,  <11.362922, 6.826187, 12.418465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.235855, 6.676392, 12.556362>,  <11.024078, 6.426733, 12.786191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.235855, 6.676392, 12.556362> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805924, 0.581537, -0.110912,
		0.264909, 0.521782, 0.810905,
		0.529443, 0.624146, -0.574571,
		11.394688, 6.863636, 12.383991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.921442, 7.038180, 13.114291>,  <11.024078, 6.426733, 12.786191>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.921442, 7.038180, 13.114291> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.987434, 7.086308, 12.722719>,  <11.027030, 7.115184, 12.487776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.987434, 7.086308, 12.722719>,  <10.921442, 7.038180, 13.114291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.987434, 7.086308, 12.722719> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777037, 0.627145, -0.053873,
		0.607449, 0.769554, 0.196959,
		0.164980, 0.120319, -0.978931,
		11.036928, 7.122404, 12.429040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.309407, 7.710994, 12.834723>,  <10.921442, 7.038180, 13.114291>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.309407, 7.710994, 12.834723> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.044416, 7.541497, 12.587639>,  <10.885422, 7.439798, 12.439388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.044416, 7.541497, 12.587639>,  <11.309407, 7.710994, 12.834723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.044416, 7.541497, 12.587639> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484780, 0.871178, -0.077706,
		0.571064, 0.247976, -0.782556,
		-0.662476, -0.423743, -0.617711,
		10.845674, 7.414374, 12.402326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.179014, 8.197419, 12.432847>,  <11.309407, 7.710994, 12.834723>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.179014, 8.197419, 12.432847> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.866300, 7.964246, 12.344303>,  <10.678671, 7.824342, 12.291177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.866300, 7.964246, 12.344303>,  <11.179014, 8.197419, 12.432847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.866300, 7.964246, 12.344303> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527651, 0.807627, -0.263292,
		0.332257, -0.089038, -0.938977,
		-0.781786, -0.582933, -0.221359,
		10.631763, 7.789366, 12.277895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.954580, 8.416080, 11.763648>,  <11.179014, 8.197419, 12.432847>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.954580, 8.416080, 11.763648> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.630792, 8.239757, 11.918798>,  <10.436519, 8.133963, 12.011889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.630792, 8.239757, 11.918798>,  <10.954580, 8.416080, 11.763648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.630792, 8.239757, 11.918798> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538451, 0.820729, -0.190983,
		-0.234154, -0.363447, -0.901708,
		-0.809471, -0.440806, 0.387875,
		10.387951, 8.107514, 12.035161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.469446, 8.588344, 11.255643>,  <10.954580, 8.416080, 11.763648>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.469446, 8.588344, 11.255643> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.237638, 8.472705, 11.560426>,  <10.098552, 8.403321, 11.743296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.237638, 8.472705, 11.560426>,  <10.469446, 8.588344, 11.255643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.237638, 8.472705, 11.560426> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687291, 0.675797, -0.266327,
		-0.437934, -0.678028, -0.590333,
		-0.579522, -0.289096, 0.761956,
		10.063781, 8.385976, 11.789013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.834765, 8.756683, 11.119143>,  <10.469446, 8.588344, 11.255643>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.834765, 8.756683, 11.119143> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.752183, 8.705603, 11.507178>,  <9.702634, 8.674954, 11.739999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.752183, 8.705603, 11.507178>,  <9.834765, 8.756683, 11.119143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.752183, 8.705603, 11.507178> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627493, 0.778000, -0.031129,
		-0.750752, -0.615149, -0.240754,
		-0.206455, -0.127701, 0.970087,
		9.690247, 8.667293, 11.798204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.078099, 8.853201, 11.195921>,  <9.834765, 8.756683, 11.119143>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.078099, 8.853201, 11.195921> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.195289, 8.884013, 11.577126>,  <9.265602, 8.902500, 11.805848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.195289, 8.884013, 11.577126>,  <9.078099, 8.853201, 11.195921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.195289, 8.884013, 11.577126> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489595, 0.868242, 0.080332,
		-0.821257, -0.490125, 0.292086,
		0.292973, 0.077031, 0.953012,
		9.283180, 8.907123, 11.863029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.372875, 8.947893, 11.624892>,  <9.078099, 8.853201, 11.195921>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.372875, 8.947893, 11.624892> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.691709, 9.094192, 11.817095>,  <8.883009, 9.181971, 11.932417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.691709, 9.094192, 11.817095>,  <8.372875, 8.947893, 11.624892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.691709, 9.094192, 11.817095> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531636, 0.802401, 0.271139,
		-0.286391, -0.471575, 0.834024,
		0.797084, 0.365746, 0.480507,
		8.930834, 9.203916, 11.961246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.151871, 9.110445, 12.243366>,  <8.372875, 8.947893, 11.624892>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.151871, 9.110445, 12.243366> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.492173, 9.320648, 12.240377>,  <8.696355, 9.446771, 12.238585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.492173, 9.320648, 12.240377>,  <8.151871, 9.110445, 12.243366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.492173, 9.320648, 12.240377> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475488, 0.775677, 0.415013,
		0.223888, -0.349522, 0.909785,
		0.850755, 0.525508, -0.007471,
		8.747400, 9.478301, 12.238136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.289662, 9.393663, 12.947018>,  <8.151871, 9.110445, 12.243366>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.289662, 9.393663, 12.947018> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.482303, 9.622214, 12.681209>,  <8.597887, 9.759345, 12.521723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.482303, 9.622214, 12.681209>,  <8.289662, 9.393663, 12.947018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.482303, 9.622214, 12.681209> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359032, 0.820331, 0.445144,
		0.799473, 0.024204, 0.600214,
		0.481600, 0.571376, -0.664522,
		8.626782, 9.793628, 12.481852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.732774, 9.969399, 13.249697>,  <8.289662, 9.393663, 12.947018>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.732774, 9.969399, 13.249697> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.676136, 10.091530, 12.873032>,  <8.642154, 10.164808, 12.647033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.676136, 10.091530, 12.873032>,  <8.732774, 9.969399, 13.249697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.676136, 10.091530, 12.873032> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363786, 0.868637, 0.336348,
		0.920658, 0.390189, -0.011920,
		-0.141594, 0.305325, -0.941662,
		8.633658, 10.183127, 12.590533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.994771, 10.660080, 13.217669>,  <8.732774, 9.969399, 13.249697>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.994771, 10.660080, 13.217669> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.761160, 10.644597, 12.893346>,  <8.620993, 10.635307, 12.698751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.761160, 10.644597, 12.893346>,  <8.994771, 10.660080, 13.217669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.761160, 10.644597, 12.893346> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386245, 0.891789, 0.235641,
		0.713950, 0.450793, -0.535781,
		-0.584029, -0.038707, -0.810810,
		8.585951, 10.632985, 12.650103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.070815, 11.336167, 12.825084>,  <8.994771, 10.660080, 13.217669>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.070815, 11.336167, 12.825084> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.733604, 11.182701, 12.674295>,  <8.531278, 11.090621, 12.583822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.733604, 11.182701, 12.674295>,  <9.070815, 11.336167, 12.825084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.733604, 11.182701, 12.674295> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429949, 0.901795, 0.043693,
		0.323187, 0.198913, -0.925194,
		-0.843026, -0.383666, -0.376971,
		8.480697, 11.067601, 12.561204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.826823, 11.744654, 12.310346>,  <9.070815, 11.336167, 12.825084>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.826823, 11.744654, 12.310346> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.496620, 11.539367, 12.404278>,  <8.298498, 11.416195, 12.460637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.496620, 11.539367, 12.404278>,  <8.826823, 11.744654, 12.310346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.496620, 11.539367, 12.404278> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492641, 0.858254, 0.143896,
		-0.275393, 0.003101, -0.961327,
		-0.825508, -0.513217, 0.234829,
		8.248968, 11.385402, 12.474727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.328461, 12.050524, 11.939143>,  <8.826823, 11.744654, 12.310346>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.328461, 12.050524, 11.939143> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.119608, 11.860702, 12.222600>,  <7.994296, 11.746808, 12.392674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.119608, 11.860702, 12.222600>,  <8.328461, 12.050524, 11.939143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.119608, 11.860702, 12.222600> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422747, 0.865648, 0.268215,
		-0.740718, -0.159533, -0.652600,
		-0.522132, -0.474556, 0.708643,
		7.962968, 11.718335, 12.435193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.702429, 12.367786, 11.985370>,  <8.328461, 12.050524, 11.939143>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.702429, 12.367786, 11.985370> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.690091, 12.186850, 12.341894>,  <7.682687, 12.078287, 12.555809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.690091, 12.186850, 12.341894>,  <7.702429, 12.367786, 11.985370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.690091, 12.186850, 12.341894> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569434, 0.740825, 0.356263,
		-0.821458, -0.496553, -0.280431,
		-0.030846, -0.452342, 0.891311,
		7.680837, 12.051147, 12.609287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.063200, 12.537175, 12.144619>,  <7.702429, 12.367786, 11.985370>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.063200, 12.537175, 12.144619> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.250710, 12.422544, 12.478834>,  <7.363215, 12.353765, 12.679363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.250710, 12.422544, 12.478834>,  <7.063200, 12.537175, 12.144619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.250710, 12.422544, 12.478834> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397658, 0.776168, 0.489318,
		-0.788746, -0.561637, 0.249886,
		0.468772, -0.286578, 0.835539,
		7.391341, 12.336570, 12.729496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.510526, 12.509459, 12.549642>,  <7.063200, 12.537175, 12.144619>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.510526, 12.509459, 12.549642> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.826966, 12.541200, 12.792249>,  <7.016830, 12.560245, 12.937813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.826966, 12.541200, 12.792249>,  <6.510526, 12.509459, 12.549642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.826966, 12.541200, 12.792249> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514643, 0.622267, 0.589853,
		-0.330610, -0.778773, 0.533113,
		0.791100, 0.079352, 0.606518,
		7.064296, 12.565005, 12.974204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.394789, 12.236762, 13.256239>,  <6.510526, 12.509459, 12.549642>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.394789, 12.236762, 13.256239> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.686170, 12.507775, 13.296849>,  <6.860998, 12.670383, 13.321216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.686170, 12.507775, 13.296849>,  <6.394789, 12.236762, 13.256239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.686170, 12.507775, 13.296849> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576709, 0.526437, 0.624716,
		0.369818, -0.513627, 0.774223,
		0.728451, 0.677533, 0.101528,
		6.904705, 12.711036, 13.327308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.348969, 12.400195, 13.918736>,  <6.394789, 12.236762, 13.256239>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.348969, 12.400195, 13.918736> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.571123, 12.698748, 13.772060>,  <6.704415, 12.877879, 13.684054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.571123, 12.698748, 13.772060>,  <6.348969, 12.400195, 13.918736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.571123, 12.698748, 13.772060> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543498, 0.659528, 0.519261,
		0.629409, -0.089095, 0.771950,
		0.555386, 0.746381, -0.366690,
		6.737739, 12.922662, 13.662053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.523843, 12.873021, 14.507311>,  <6.348969, 12.400195, 13.918736>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.523843, 12.873021, 14.507311> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.591482, 13.104235, 14.187991>,  <6.632065, 13.242963, 13.996399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.591482, 13.104235, 14.187991>,  <6.523843, 12.873021, 14.507311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.591482, 13.104235, 14.187991> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631989, 0.685121, 0.362214,
		0.756304, 0.443268, 0.481163,
		0.169097, 0.578034, -0.798300,
		6.642211, 13.277645, 13.948501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.719468, 13.556042, 14.814167>,  <6.523843, 12.873021, 14.507311>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.719468, 13.556042, 14.814167> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.592237, 13.597890, 14.437258>,  <6.515898, 13.622999, 14.211112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.592237, 13.597890, 14.437258>,  <6.719468, 13.556042, 14.814167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.592237, 13.597890, 14.437258> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653465, 0.695893, 0.297852,
		0.686884, 0.710484, -0.152982,
		-0.318078, 0.104622, -0.942274,
		6.496813, 13.629276, 14.154575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.125154, 13.473309, 15.456500>,  <6.719468, 13.556042, 14.814167>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.125154, 13.473309, 15.456500> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.470722, 13.633739, 15.578341>,  <7.678062, 13.729998, 15.651446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.470722, 13.633739, 15.578341>,  <7.125154, 13.473309, 15.456500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.470722, 13.633739, 15.578341> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459894, -0.381721, -0.801740,
		-0.205286, 0.832723, -0.514228,
		0.863918, 0.401076, 0.304603,
		7.729897, 13.754063, 15.669723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.440539, 13.657704, 14.907852>,  <7.125154, 13.473309, 15.456500>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.440539, 13.657704, 14.907852> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.751363, 13.624657, 15.157444>,  <7.937858, 13.604828, 15.307199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.751363, 13.624657, 15.157444>,  <7.440539, 13.657704, 14.907852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.751363, 13.624657, 15.157444> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520043, -0.474203, -0.710413,
		0.354586, 0.876531, -0.325519,
		0.777061, -0.082619, 0.623979,
		7.984482, 13.599871, 15.344638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.890001, 13.619604, 14.410192>,  <7.440539, 13.657704, 14.907852>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.890001, 13.619604, 14.410192> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.108877, 13.512341, 14.727349>,  <8.240203, 13.447984, 14.917644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.108877, 13.512341, 14.727349>,  <7.890001, 13.619604, 14.410192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.108877, 13.512341, 14.727349> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730506, -0.309424, -0.608783,
		0.408588, 0.912332, 0.026576,
		0.547189, -0.268155, 0.792891,
		8.273034, 13.431895, 14.965217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.624964, 13.949573, 14.372876>,  <7.890001, 13.619604, 14.410192>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.624964, 13.949573, 14.372876> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.651291, 13.611808, 14.585530>,  <8.667088, 13.409149, 14.713123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.651291, 13.611808, 14.585530>,  <8.624964, 13.949573, 14.372876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.651291, 13.611808, 14.585530> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829627, -0.249726, -0.499356,
		0.554425, 0.473927, 0.684110,
		0.065818, -0.844412, 0.531636,
		8.671037, 13.358484, 14.745021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.334924, 13.939397, 14.605265>,  <8.624964, 13.949573, 14.372876>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.334924, 13.939397, 14.605265> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.176253, 13.575194, 14.651961>,  <9.081051, 13.356673, 14.679979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.176253, 13.575194, 14.651961>,  <9.334924, 13.939397, 14.605265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.176253, 13.575194, 14.651961> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858036, -0.412966, -0.305340,
		0.326224, -0.020953, 0.945060,
		-0.396676, -0.910505, 0.116741,
		9.057251, 13.302043, 14.686983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.822883, 13.629421, 14.986408>,  <9.334924, 13.939397, 14.605265>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.822883, 13.629421, 14.986408> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.613258, 13.350785, 14.790400>,  <9.487484, 13.183603, 14.672794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.613258, 13.350785, 14.790400>,  <9.822883, 13.629421, 14.986408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.613258, 13.350785, 14.790400> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847116, -0.485826, -0.215333,
		-0.088067, -0.527953, 0.844695,
		-0.524061, -0.696591, -0.490022,
		9.456040, 13.141809, 14.643393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.083740, 12.851659, 15.182040>,  <9.822883, 13.629421, 14.986408>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.083740, 12.851659, 15.182040> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.890614, 12.800744, 14.835471>,  <9.774737, 12.770195, 14.627530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.890614, 12.800744, 14.835471>,  <10.083740, 12.851659, 15.182040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.890614, 12.800744, 14.835471> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695303, -0.657211, -0.290908,
		-0.532393, -0.742881, 0.405815,
		-0.482816, -0.127286, -0.866422,
		9.745769, 12.762558, 14.575544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.957666, 12.089799, 15.066975>,  <10.083740, 12.851659, 15.182040>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.957666, 12.089799, 15.066975> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.918866, 12.248591, 14.701900>,  <9.895586, 12.343867, 14.482856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.918866, 12.248591, 14.701900>,  <9.957666, 12.089799, 15.066975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.918866, 12.248591, 14.701900> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606140, -0.703775, -0.370534,
		-0.789421, -0.589158, -0.172359,
		-0.097001, 0.396981, -0.912687,
		9.889766, 12.367685, 14.428095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.909170, 11.517410, 14.496408>,  <9.957666, 12.089799, 15.066975>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.909170, 11.517410, 14.496408> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.052307, 11.837358, 14.303678>,  <10.138189, 12.029327, 14.188039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.052307, 11.837358, 14.303678>,  <9.909170, 11.517410, 14.496408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.052307, 11.837358, 14.303678> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551020, -0.597460, -0.582597,
		-0.753874, -0.057018, -0.654541,
		0.357843, 0.799869, -0.481827,
		10.159660, 12.077319, 14.159129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.731256, 11.400509, 13.749225>,  <9.909170, 11.517410, 14.496408>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.731256, 11.400509, 13.749225> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.021401, 11.675856, 13.749135>,  <10.195488, 11.841063, 13.749081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.021401, 11.675856, 13.749135>,  <9.731256, 11.400509, 13.749225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.021401, 11.675856, 13.749135> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518965, -0.547070, -0.656803,
		-0.452245, 0.476303, -0.754062,
		0.725362, 0.688368, -0.000225,
		10.239010, 11.882366, 13.749067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.926243, 11.361485, 13.110316>,  <9.731256, 11.400509, 13.749225>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.926243, 11.361485, 13.110316> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.216187, 11.590152, 13.264080>,  <10.390155, 11.727352, 13.356339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.216187, 11.590152, 13.264080>,  <9.926243, 11.361485, 13.110316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.216187, 11.590152, 13.264080> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644305, -0.365092, -0.671996,
		-0.243812, 0.734782, -0.632970,
		0.724863, 0.571667, 0.384410,
		10.433646, 11.761652, 13.379403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.205528, 11.694702, 12.578514>,  <9.926243, 11.361485, 13.110316>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.205528, 11.694702, 12.578514> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.494129, 11.701059, 12.855406>,  <10.667290, 11.704873, 13.021541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.494129, 11.701059, 12.855406>,  <10.205528, 11.694702, 12.578514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.494129, 11.701059, 12.855406> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657866, -0.327571, -0.678167,
		0.215976, 0.944693, -0.246798,
		0.721503, 0.015892, 0.692229,
		10.710580, 11.705827, 13.063074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.798647, 12.117838, 12.312371>,  <10.205528, 11.694702, 12.578514>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.798647, 12.117838, 12.312371> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.933532, 11.845660, 12.572612>,  <11.014462, 11.682353, 12.728756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.933532, 11.845660, 12.572612>,  <10.798647, 12.117838, 12.312371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.933532, 11.845660, 12.572612> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618007, -0.361327, -0.698220,
		0.710180, 0.637525, 0.298675,
		0.337213, -0.680445, 0.650602,
		11.034696, 11.641527, 12.767793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.649370, 12.022467, 12.143946>,  <10.798647, 12.117838, 12.312371>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.649370, 12.022467, 12.143946> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.574584, 11.725664, 12.401464>,  <11.529712, 11.547583, 12.555974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.574584, 11.725664, 12.401464>,  <11.649370, 12.022467, 12.143946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.574584, 11.725664, 12.401464> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728499, -0.544380, -0.415859,
		0.659039, 0.391253, 0.642331,
		-0.186966, -0.742005, 0.643795,
		11.518495, 11.503062, 12.594602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.287667, 11.761090, 12.541284>,  <11.649370, 12.022467, 12.143946>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.287667, 11.761090, 12.541284> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.024119, 11.460460, 12.528485>,  <11.865991, 11.280081, 12.520806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.024119, 11.460460, 12.528485>,  <12.287667, 11.761090, 12.541284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.024119, 11.460460, 12.528485> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684730, -0.581569, -0.439230,
		0.311508, -0.311303, 0.897805,
		-0.658869, -0.751577, -0.031995,
		11.826459, 11.234986, 12.518887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.729170, 11.100217, 12.644293>,  <12.287667, 11.761090, 12.541284>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.729170, 11.100217, 12.644293> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.383070, 10.953930, 12.507124>,  <12.175410, 10.866158, 12.424823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.383070, 10.953930, 12.507124>,  <12.729170, 11.100217, 12.644293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.383070, 10.953930, 12.507124> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500840, -0.661177, -0.558574,
		-0.022451, -0.655054, 0.755248,
		-0.865248, -0.365718, -0.342922,
		12.123495, 10.844214, 12.404247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.676069, 10.341939, 12.826736>,  <12.729170, 11.100217, 12.644293>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.676069, 10.341939, 12.826736> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.430880, 10.442761, 12.527208>,  <12.283766, 10.503255, 12.347491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.430880, 10.442761, 12.527208>,  <12.676069, 10.341939, 12.826736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.430880, 10.442761, 12.527208> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356340, -0.757694, -0.546737,
		-0.705184, -0.601970, 0.374630,
		-0.612974, 0.252055, -0.748820,
		12.246987, 10.518378, 12.302563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.488275, 9.650322, 12.515588>,  <12.676069, 10.341939, 12.826736>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.488275, 9.650322, 12.515588> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.408098, 9.917512, 12.228915>,  <12.359992, 10.077826, 12.056911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.408098, 9.917512, 12.228915>,  <12.488275, 9.650322, 12.515588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.408098, 9.917512, 12.228915> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397899, -0.612972, -0.682599,
		-0.895265, -0.421988, -0.142922,
		-0.200441, 0.667975, -0.716681,
		12.347965, 10.117905, 12.013911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.026210, 9.332079, 11.948228>,  <12.488275, 9.650322, 12.515588>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.026210, 9.332079, 11.948228> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.214438, 9.652945, 11.801208>,  <12.327375, 9.845464, 11.712996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.214438, 9.652945, 11.801208>,  <12.026210, 9.332079, 11.948228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.214438, 9.652945, 11.801208> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253090, -0.521758, -0.814686,
		-0.845286, 0.290344, -0.448544,
		0.470571, 0.802165, -0.367551,
		12.355610, 9.893594, 11.690942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.825700, 9.266772, 11.188714>,  <12.026210, 9.332079, 11.948228>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.825700, 9.266772, 11.188714> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.121419, 9.534331, 11.219728>,  <12.298851, 9.694867, 11.238336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.121419, 9.534331, 11.219728>,  <11.825700, 9.266772, 11.188714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.121419, 9.534331, 11.219728> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408688, -0.354203, -0.841139,
		-0.535174, 0.653540, -0.535233,
		0.739299, 0.668899, 0.077534,
		12.343208, 9.735001, 11.242988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.998322, 9.448648, 10.415121>,  <11.825700, 9.266772, 11.188714>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.998322, 9.448648, 10.415121> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.305107, 9.557686, 10.647487>,  <12.489179, 9.623108, 10.786906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.305107, 9.557686, 10.647487>,  <11.998322, 9.448648, 10.415121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.305107, 9.557686, 10.647487> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640776, -0.277034, -0.716002,
		-0.034244, 0.921382, -0.387146,
		0.766964, 0.272592, 0.580913,
		12.535196, 9.639463, 10.821760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<17.708868, 23.698839, 25.894688> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.540119, 23.336927, 25.918015>,  <17.438869, 23.119781, 25.932011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.540119, 23.336927, 25.918015>,  <17.708868, 23.698839, 25.894688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.540119, 23.336927, 25.918015> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010409, 0.059483, 0.998175,
		-0.906595, 0.421710, -0.015677,
		-0.421873, -0.904778, 0.058316,
		17.413557, 23.065495, 25.935509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.107744, 23.675732, 26.414015>,  <17.708868, 23.698839, 25.894688>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.107744, 23.675732, 26.414015> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.210424, 23.289591, 26.432774>,  <17.272032, 23.057907, 26.444029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.210424, 23.289591, 26.432774>,  <17.107744, 23.675732, 26.414015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.210424, 23.289591, 26.432774> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138775, 0.084837, 0.986683,
		-0.956476, -0.246774, 0.155745,
		0.256701, -0.965353, 0.046899,
		17.287436, 22.999985, 26.446844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.734133, 23.281492, 26.913282>,  <17.107744, 23.675732, 26.414015>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.734133, 23.281492, 26.913282> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.085316, 23.093296, 26.877884>,  <17.296024, 22.980379, 26.856644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.085316, 23.093296, 26.877884>,  <16.734133, 23.281492, 26.913282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.085316, 23.093296, 26.877884> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058397, -0.078227, 0.995224,
		-0.475166, -0.878931, -0.041205,
		0.877956, -0.470490, -0.088498,
		17.348703, 22.952148, 26.851334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.709524, 22.746819, 27.416748>,  <16.734133, 23.281492, 26.913282>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.709524, 22.746819, 27.416748> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.106792, 22.771143, 27.376919>,  <17.345154, 22.785738, 27.353022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.106792, 22.771143, 27.376919>,  <16.709524, 22.746819, 27.416748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.106792, 22.771143, 27.376919> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106367, -0.121182, 0.986915,
		0.047952, -0.990766, -0.126822,
		0.993170, 0.060814, -0.099574,
		17.404743, 22.789387, 27.347046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.044756, 22.281330, 27.900661>,  <16.709524, 22.746819, 27.416748>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.044756, 22.281330, 27.900661> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.344461, 22.527395, 27.802536>,  <17.524284, 22.675034, 27.743660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.344461, 22.527395, 27.802536>,  <17.044756, 22.281330, 27.900661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.344461, 22.527395, 27.802536> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335560, -0.033288, 0.941431,
		0.570966, -0.787698, -0.231365,
		0.749265, 0.615161, -0.245314,
		17.569241, 22.711943, 27.728943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.761135, 22.043762, 28.129656>,  <17.044756, 22.281330, 27.900661>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.761135, 22.043762, 28.129656> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.809271, 22.438440, 28.085928>,  <17.838152, 22.675247, 28.059692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.809271, 22.438440, 28.085928>,  <17.761135, 22.043762, 28.129656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.809271, 22.438440, 28.085928> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376732, 0.056491, 0.924598,
		0.918472, -0.152448, -0.364922,
		0.120338, 0.986696, -0.109317,
		17.845373, 22.734449, 28.053133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.467813, 22.125965, 28.318077>,  <17.761135, 22.043762, 28.129656>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.467813, 22.125965, 28.318077> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.285223, 22.477402, 28.374228>,  <18.175669, 22.688265, 28.407917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.285223, 22.477402, 28.374228>,  <18.467813, 22.125965, 28.318077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.285223, 22.477402, 28.374228> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363044, 0.039883, 0.930918,
		0.812299, 0.475903, -0.337174,
		-0.456474, 0.878593, 0.140377,
		18.148281, 22.740980, 28.416340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.011234, 22.627073, 28.578203>,  <18.467813, 22.125965, 28.318077>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.011234, 22.627073, 28.578203> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.699314, 22.856159, 28.679327>,  <18.512163, 22.993610, 28.740002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.699314, 22.856159, 28.679327>,  <19.011234, 22.627073, 28.578203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.699314, 22.856159, 28.679327> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202675, -0.151127, 0.967514,
		0.592315, 0.805705, 0.001774,
		-0.779799, 0.572713, 0.252811,
		18.465374, 23.027973, 28.755171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.183157, 23.012154, 29.057365>,  <19.011234, 22.627073, 28.578203>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.183157, 23.012154, 29.057365> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.788511, 23.039103, 29.116764>,  <18.551723, 23.055273, 29.152403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.788511, 23.039103, 29.116764>,  <19.183157, 23.012154, 29.057365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.788511, 23.039103, 29.116764> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139448, -0.123468, 0.982502,
		0.084531, 0.990059, 0.112420,
		-0.986615, 0.067375, 0.148499,
		18.492527, 23.059315, 29.161314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.139402, 23.271931, 29.659279>,  <19.183157, 23.012154, 29.057365>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.139402, 23.271931, 29.659279> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.753010, 23.174778, 29.623756>,  <18.521173, 23.116486, 29.602444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.753010, 23.174778, 29.623756>,  <19.139402, 23.271931, 29.659279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.753010, 23.174778, 29.623756> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033587, -0.222659, 0.974318,
		-0.256417, 0.944156, 0.206927,
		-0.965982, -0.242882, -0.088805,
		18.463215, 23.101913, 29.597115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.779997, 23.586740, 30.190929>,  <19.139402, 23.271931, 29.659279>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.779997, 23.586740, 30.190929> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.587391, 23.254290, 30.079664>,  <18.471827, 23.054819, 30.012905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.587391, 23.254290, 30.079664>,  <18.779997, 23.586740, 30.190929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.587391, 23.254290, 30.079664> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127819, -0.247393, 0.960447,
		-0.867067, 0.498024, 0.012889,
		-0.481515, -0.831125, -0.278163,
		18.442936, 23.004951, 29.996216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.102177, 23.590418, 30.579641>,  <18.779997, 23.586740, 30.190929>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.102177, 23.590418, 30.579641> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.224068, 23.227528, 30.463652>,  <18.297201, 23.009794, 30.394058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.224068, 23.227528, 30.463652>,  <18.102177, 23.590418, 30.579641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.224068, 23.227528, 30.463652> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050136, -0.319313, 0.946322,
		-0.951120, -0.273830, -0.142787,
		0.304725, -0.907224, -0.289976,
		18.315485, 22.955360, 30.376659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.548555, 23.064129, 30.727331>,  <18.102177, 23.590418, 30.579641>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.548555, 23.064129, 30.727331> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.889488, 22.856005, 30.748531>,  <18.094048, 22.731131, 30.761251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.889488, 22.856005, 30.748531>,  <17.548555, 23.064129, 30.727331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.889488, 22.856005, 30.748531> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281416, -0.370843, 0.885031,
		-0.440841, -0.769252, -0.462505,
		0.852329, -0.520314, 0.052997,
		18.145187, 22.699911, 30.764431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.059767, 23.041870, 31.288418>,  <17.548555, 23.064129, 30.727331>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.059767, 23.041870, 31.288418> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.221395, 22.929348, 31.636578>,  <17.318373, 22.861834, 31.845474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.221395, 22.929348, 31.636578>,  <17.059767, 23.041870, 31.288418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.221395, 22.929348, 31.636578> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822013, -0.305755, -0.480425,
		0.401276, 0.909604, 0.107692,
		0.404070, -0.281308, 0.870399,
		17.342617, 22.844955, 31.897697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.068766, 22.431454, 31.796906>,  <17.059767, 23.041870, 31.288418>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.068766, 22.431454, 31.796906> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.770048, 22.313196, 32.035198>,  <16.590818, 22.242243, 32.178173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.770048, 22.313196, 32.035198>,  <17.068766, 22.431454, 31.796906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.770048, 22.313196, 32.035198> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505930, -0.328866, -0.797423,
		0.431667, -0.896908, 0.096020,
		-0.746792, -0.295642, 0.595733,
		16.546011, 22.224504, 32.213917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.015234, 21.722273, 31.690844>,  <17.068766, 22.431454, 31.796906>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.015234, 21.722273, 31.690844> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.679213, 21.903788, 31.809763>,  <16.477600, 22.012695, 31.881115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.679213, 21.903788, 31.809763>,  <17.015234, 21.722273, 31.690844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.679213, 21.903788, 31.809763> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464998, -0.320011, -0.825451,
		-0.279433, -0.831670, 0.479835,
		-0.840056, 0.453781, 0.297303,
		16.427197, 22.039923, 31.898952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.487753, 21.275818, 31.448502>,  <17.015234, 21.722273, 31.690844>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.487753, 21.275818, 31.448502> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.296669, 21.617268, 31.531559>,  <16.182018, 21.822138, 31.581394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.296669, 21.617268, 31.531559>,  <16.487753, 21.275818, 31.448502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.296669, 21.617268, 31.531559> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557689, -0.112036, -0.822455,
		-0.678804, -0.508697, 0.529578,
		-0.477712, 0.853625, 0.207644,
		16.153355, 21.873356, 31.593853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.891784, 21.109005, 31.095812>,  <16.487753, 21.275818, 31.448502>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.891784, 21.109005, 31.095812> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.867254, 21.503023, 31.160215>,  <15.852537, 21.739435, 31.198856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.867254, 21.503023, 31.160215>,  <15.891784, 21.109005, 31.095812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.867254, 21.503023, 31.160215> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661594, 0.080668, -0.745511,
		-0.747351, -0.152238, 0.646754,
		-0.061323, 0.985046, 0.161007,
		15.848858, 21.798536, 31.208517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.256424, 21.186415, 31.036863>,  <15.891784, 21.109005, 31.095812>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.256424, 21.186415, 31.036863> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.434731, 21.538006, 30.969114>,  <15.541715, 21.748960, 30.928465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.434731, 21.538006, 30.969114>,  <15.256424, 21.186415, 31.036863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.434731, 21.538006, 30.969114> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612747, 0.161689, -0.773562,
		-0.652559, 0.448611, 0.610668,
		0.445767, 0.878979, -0.169373,
		15.568460, 21.801701, 30.918303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.749358, 21.660507, 30.867668>,  <15.256424, 21.186415, 31.036863>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.749358, 21.660507, 30.867668> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.065582, 21.851633, 30.714458>,  <15.255317, 21.966309, 30.622532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.065582, 21.851633, 30.714458>,  <14.749358, 21.660507, 30.867668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.065582, 21.851633, 30.714458> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504372, 0.153309, -0.849768,
		-0.347309, 0.864980, 0.362196,
		0.790560, 0.477813, -0.383026,
		15.302751, 21.994978, 30.599550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.409370, 22.179327, 30.487459>,  <14.749358, 21.660507, 30.867668>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.409370, 22.179327, 30.487459> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.784245, 22.179596, 30.347927>,  <15.009169, 22.179756, 30.264208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.784245, 22.179596, 30.347927>,  <14.409370, 22.179327, 30.487459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.784245, 22.179596, 30.347927> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338532, 0.242959, -0.909047,
		0.084142, 0.970036, 0.227924,
		0.937185, 0.000670, -0.348831,
		15.065400, 22.179796, 30.243279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.400688, 22.668289, 29.901579>,  <14.409370, 22.179327, 30.487459>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.400688, 22.668289, 29.901579> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.695209, 22.399229, 29.872187>,  <14.871922, 22.237793, 29.854551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.695209, 22.399229, 29.872187>,  <14.400688, 22.668289, 29.901579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.695209, 22.399229, 29.872187> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108850, -0.010567, -0.994002,
		0.667840, 0.739884, -0.080999,
		0.736302, -0.672651, -0.073480,
		14.916100, 22.197433, 29.850143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.830638, 22.870255, 29.287016>,  <14.400688, 22.668289, 29.901579>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.830638, 22.870255, 29.287016> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.914102, 22.482452, 29.338436>,  <14.964180, 22.249771, 29.369287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.914102, 22.482452, 29.338436>,  <14.830638, 22.870255, 29.287016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.914102, 22.482452, 29.338436> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090350, -0.111772, -0.989618,
		0.973806, 0.218107, 0.064272,
		0.208659, -0.969503, 0.128550,
		14.976699, 22.191601, 29.377001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.504439, 22.665731, 28.773962>,  <14.830638, 22.870255, 29.287016>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.504439, 22.665731, 28.773962> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.295059, 22.343515, 28.885031>,  <15.169431, 22.150185, 28.951672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.295059, 22.343515, 28.885031>,  <15.504439, 22.665731, 28.773962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.295059, 22.343515, 28.885031> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011700, -0.319060, -0.947662,
		0.851976, -0.499303, 0.157588,
		-0.523450, -0.805542, 0.277673,
		15.138024, 22.101852, 28.968332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.830950, 22.123627, 28.454409>,  <15.504439, 22.665731, 28.773962>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.830950, 22.123627, 28.454409> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.466013, 21.995575, 28.556507>,  <15.247051, 21.918745, 28.617765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.466013, 21.995575, 28.556507>,  <15.830950, 22.123627, 28.454409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.466013, 21.995575, 28.556507> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150683, -0.317123, -0.936337,
		0.380692, -0.892721, 0.241087,
		-0.912342, -0.320129, 0.255244,
		15.192310, 21.899536, 28.633080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.747371, 21.473066, 28.069023>,  <15.830950, 22.123627, 28.454409>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.747371, 21.473066, 28.069023> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.381863, 21.574705, 28.195803>,  <15.162558, 21.635689, 28.271872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.381863, 21.574705, 28.195803>,  <15.747371, 21.473066, 28.069023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.381863, 21.574705, 28.195803> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389343, -0.325192, -0.861778,
		-0.115903, -0.910871, 0.396081,
		-0.913771, 0.254094, 0.316951,
		15.107731, 21.650934, 28.290888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.270195, 20.768858, 28.057201>,  <15.747371, 21.473066, 28.069023>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.270195, 20.768858, 28.057201> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.033006, 21.090742, 28.045706>,  <14.890692, 21.283873, 28.038809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.033006, 21.090742, 28.045706>,  <15.270195, 20.768858, 28.057201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.033006, 21.090742, 28.045706> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310746, -0.261617, -0.913780,
		-0.742845, -0.532917, 0.405192,
		-0.592974, 0.804708, -0.028740,
		14.855114, 21.332155, 28.037085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.594765, 20.518696, 27.810026>,  <15.270195, 20.768858, 28.057201>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.594765, 20.518696, 27.810026> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.545644, 20.909462, 27.740101>,  <14.516171, 21.143921, 27.698145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.545644, 20.909462, 27.740101>,  <14.594765, 20.518696, 27.810026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.545644, 20.909462, 27.740101> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467021, -0.212310, -0.858380,
		-0.875678, -0.023768, 0.482311,
		-0.122801, 0.976913, -0.174815,
		14.508803, 21.202536, 27.687656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.056021, 20.005436, 28.067432>,  <14.594765, 20.518696, 27.810026>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.056021, 20.005436, 28.067432> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.181824, 19.635395, 27.982327>,  <14.257305, 19.413370, 27.931263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.181824, 19.635395, 27.982327>,  <14.056021, 20.005436, 28.067432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.181824, 19.635395, 27.982327> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494098, -0.031844, 0.868823,
		-0.810526, -0.378378, 0.447076,
		0.314507, -0.925103, -0.212766,
		14.276175, 19.357864, 27.918497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.902599, 19.570902, 28.668982>,  <14.056021, 20.005436, 28.067432>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.902599, 19.570902, 28.668982> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.191937, 19.398506, 28.453196>,  <14.365541, 19.295069, 28.323725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.191937, 19.398506, 28.453196>,  <13.902599, 19.570902, 28.668982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.191937, 19.398506, 28.453196> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566082, -0.077213, 0.820724,
		-0.395377, -0.899047, 0.188124,
		0.723345, -0.430989, -0.539463,
		14.408941, 19.269209, 28.291357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.181177, 18.952305, 29.052139>,  <13.902599, 19.570902, 28.668982>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.181177, 18.952305, 29.052139> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.476241, 19.082703, 28.815636>,  <14.653279, 19.160942, 28.673735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.476241, 19.082703, 28.815636>,  <14.181177, 18.952305, 29.052139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.476241, 19.082703, 28.815636> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629107, -0.013943, 0.777193,
		0.245118, -0.945268, -0.215372,
		0.737659, 0.325996, -0.591257,
		14.697539, 19.180502, 28.638258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.795320, 18.557804, 29.316931>,  <14.181177, 18.952305, 29.052139>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.795320, 18.557804, 29.316931> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.943373, 18.854019, 29.092571>,  <15.032205, 19.031748, 28.957956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.943373, 18.854019, 29.092571>,  <14.795320, 18.557804, 29.316931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.943373, 18.854019, 29.092571> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842925, -0.013929, 0.537850,
		0.390485, -0.671872, -0.629372,
		0.370133, 0.740536, -0.560899,
		15.054413, 19.076180, 28.924301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.554746, 18.315445, 29.247147>,  <14.795320, 18.557804, 29.316931>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.554746, 18.315445, 29.247147> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.530159, 18.705101, 29.160173>,  <15.515407, 18.938894, 29.107990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.530159, 18.705101, 29.160173>,  <15.554746, 18.315445, 29.247147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.530159, 18.705101, 29.160173> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648499, 0.204576, 0.733211,
		0.758730, -0.095936, -0.644302,
		-0.061467, 0.974138, -0.217433,
		15.511719, 18.997343, 29.094944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.255358, 18.568663, 29.183710>,  <15.554746, 18.315445, 29.247147>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.255358, 18.568663, 29.183710> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.032295, 18.891897, 29.259619>,  <15.898458, 19.085838, 29.305164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.032295, 18.891897, 29.259619>,  <16.255358, 18.568663, 29.183710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.032295, 18.891897, 29.259619> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514090, 0.156730, 0.843295,
		0.651714, 0.567828, -0.502832,
		-0.557655, 0.808089, 0.189772,
		15.864999, 19.134323, 29.316551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.667175, 19.141687, 29.428419>,  <16.255358, 18.568663, 29.183710>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.667175, 19.141687, 29.428419> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.311491, 19.274899, 29.553892>,  <16.098080, 19.354826, 29.629177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.311491, 19.274899, 29.553892>,  <16.667175, 19.141687, 29.428419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.311491, 19.274899, 29.553892> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402287, 0.242642, 0.882774,
		0.217875, 0.911163, -0.349733,
		-0.889211, 0.333027, 0.313684,
		16.044727, 19.374807, 29.647997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.285933, 19.266178, 29.183834>,  <16.667175, 19.141687, 29.428419>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.285933, 19.266178, 29.183834> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.343699, 18.896423, 29.325062>,  <17.378357, 18.674570, 29.409798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.343699, 18.896423, 29.325062>,  <17.285933, 19.266178, 29.183834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.343699, 18.896423, 29.325062> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471100, -0.378005, -0.796980,
		0.870178, -0.051237, -0.490067,
		0.144413, -0.924385, 0.353069,
		17.387022, 18.619108, 29.430983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.176977, 18.877293, 28.633883>,  <17.285933, 19.266178, 29.183834>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.176977, 18.877293, 28.633883> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.225544, 18.560741, 28.873543>,  <17.254684, 18.370811, 29.017338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.225544, 18.560741, 28.873543>,  <17.176977, 18.877293, 28.633883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.225544, 18.560741, 28.873543> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372983, -0.595754, -0.711309,
		0.919860, -0.137107, -0.367505,
		0.121417, -0.791378, 0.599148,
		17.261969, 18.323328, 29.053288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.785461, 18.508690, 28.391504>,  <17.176977, 18.877293, 28.633883>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.785461, 18.508690, 28.391504> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.533955, 18.272591, 28.593990>,  <17.383051, 18.130930, 28.715483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.533955, 18.272591, 28.593990>,  <17.785461, 18.508690, 28.391504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.533955, 18.272591, 28.593990> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205605, -0.501637, -0.840290,
		0.749918, -0.632428, 0.194055,
		-0.628768, -0.590250, 0.506217,
		17.345324, 18.095516, 28.745855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.857206, 17.877695, 28.075222>,  <17.785461, 18.508690, 28.391504>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.857206, 17.877695, 28.075222> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.528891, 17.840721, 28.300703>,  <17.331902, 17.818537, 28.435991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.528891, 17.840721, 28.300703>,  <17.857206, 17.877695, 28.075222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.528891, 17.840721, 28.300703> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421627, -0.567767, -0.707016,
		0.385404, -0.817983, 0.427045,
		-0.820789, -0.092433, 0.563704,
		17.282654, 17.812992, 28.469814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.809561, 17.196043, 28.047625>,  <17.857206, 17.877695, 28.075222>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.809561, 17.196043, 28.047625> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.451830, 17.360188, 28.118933>,  <17.237190, 17.458673, 28.161718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.451830, 17.360188, 28.118933>,  <17.809561, 17.196043, 28.047625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.451830, 17.360188, 28.118933> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414449, -0.609734, -0.675616,
		-0.168549, -0.678107, 0.715376,
		-0.894328, 0.410361, 0.178270,
		17.183531, 17.483295, 28.172413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.293007, 16.677704, 28.133362>,  <17.809561, 17.196043, 28.047625>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.293007, 16.677704, 28.133362> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.059580, 16.995459, 28.065948>,  <16.919523, 17.186111, 28.025501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.059580, 16.995459, 28.065948>,  <17.293007, 16.677704, 28.133362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.059580, 16.995459, 28.065948> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508693, -0.519368, -0.686650,
		-0.632995, -0.314974, 0.707184,
		-0.583566, 0.794386, -0.168532,
		16.884510, 17.233774, 28.015388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.626425, 16.525242, 28.249392>,  <17.293007, 16.677704, 28.133362>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.626425, 16.525242, 28.249392> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.574718, 16.849510, 28.020971>,  <16.543694, 17.044071, 27.883919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.574718, 16.849510, 28.020971>,  <16.626425, 16.525242, 28.249392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.574718, 16.849510, 28.020971> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681104, -0.491130, -0.543037,
		-0.720686, 0.318748, 0.615639,
		-0.129267, 0.810673, -0.571051,
		16.535938, 17.092712, 27.849655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<23.801739, 19.804203, 26.807991> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<23.733513, 20.155437, 26.986818>,  <23.692577, 20.366179, 27.094114>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<23.733513, 20.155437, 26.986818>,  <23.801739, 19.804203, 26.807991>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<23.733513, 20.155437, 26.986818> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.984417, -0.132155, -0.116010,
		-0.042785, -0.459887, 0.886946,
		-0.170565, 0.878088, 0.447067,
		23.682343, 20.418863, 27.120939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.494255, 19.757929, 27.437485>,  <23.801739, 19.804203, 26.807991>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.494255, 19.757929, 27.437485> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<23.360250, 20.073967, 27.232149>,  <23.279848, 20.263590, 27.108948>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<23.360250, 20.073967, 27.232149>,  <23.494255, 19.757929, 27.437485>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<23.360250, 20.073967, 27.232149> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.916678, -0.399292, -0.016328,
		-0.217874, 0.465097, 0.858030,
		-0.335011, 0.790095, -0.513340,
		23.259747, 20.310995, 27.078148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.896507, 20.031563, 27.726412>,  <23.494255, 19.757929, 27.437485>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.896507, 20.031563, 27.726412> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.940176, 20.045946, 27.329063>,  <22.966377, 20.054577, 27.090654>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.940176, 20.045946, 27.329063>,  <22.896507, 20.031563, 27.726412>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<22.940176, 20.045946, 27.329063> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900354, -0.419920, -0.114150,
		-0.421241, 0.906849, -0.013467,
		0.109172, 0.035959, -0.993372,
		22.972927, 20.056734, 27.031052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.304058, 20.429762, 27.231022>,  <22.896507, 20.031563, 27.726412>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.304058, 20.429762, 27.231022> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.472736, 20.157753, 26.991108>,  <22.573944, 19.994549, 26.847158>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.472736, 20.157753, 26.991108>,  <22.304058, 20.429762, 27.231022>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<22.472736, 20.157753, 26.991108> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.902575, -0.378114, -0.205886,
		-0.086782, 0.628174, -0.773218,
		0.421697, -0.680020, -0.599787,
		22.599245, 19.953747, 26.811172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.814671, 20.612020, 27.814631>,  <22.304058, 20.429762, 27.231022>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.814671, 20.612020, 27.814631> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.774719, 20.269648, 27.611691>,  <21.750748, 20.064224, 27.489927>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.774719, 20.269648, 27.611691>,  <21.814671, 20.612020, 27.814631>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.774719, 20.269648, 27.611691> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.982304, 0.003628, 0.187260,
		-0.158441, 0.517074, -0.841149,
		-0.099879, -0.855933, -0.507349,
		21.744755, 20.012867, 27.459486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.407248, 20.675594, 27.107483>,  <21.814671, 20.612020, 27.814631>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.407248, 20.675594, 27.107483> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.341980, 20.312651, 27.262440>,  <21.302820, 20.094885, 27.355413>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.341980, 20.312651, 27.262440>,  <21.407248, 20.675594, 27.107483>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.341980, 20.312651, 27.262440> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.975118, 0.208044, 0.076573,
		-0.150074, -0.365260, -0.918729,
		-0.163167, -0.907361, 0.387393,
		21.293030, 20.040443, 27.378658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.736101, 20.891815, 27.388466>,  <21.407248, 20.675594, 27.107483>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.736101, 20.891815, 27.388466> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.756746, 21.173683, 27.671528>,  <20.769135, 21.342804, 27.841366>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.756746, 21.173683, 27.671528>,  <20.736101, 20.891815, 27.388466>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.756746, 21.173683, 27.671528> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831951, -0.422324, 0.359861,
		0.552443, 0.570162, -0.608047,
		0.051614, 0.704668, 0.707657,
		20.772230, 21.385084, 27.883825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.149395, 20.268726, 27.612078>,  <20.736101, 20.891815, 27.388466>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.149395, 20.268726, 27.612078> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.861139, 20.012596, 27.718405>,  <19.688185, 19.858917, 27.782202>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.861139, 20.012596, 27.718405>,  <20.149395, 20.268726, 27.612078>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.861139, 20.012596, 27.718405> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072851, -0.311347, -0.947500,
		0.689471, -0.702171, 0.177720,
		-0.720640, -0.640327, 0.265818,
		19.644947, 19.820498, 27.798151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.246225, 19.672478, 27.191866>,  <20.149395, 20.268726, 27.612078>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.246225, 19.672478, 27.191866> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.858284, 19.635355, 27.281996>,  <19.625519, 19.613081, 27.336073>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.858284, 19.635355, 27.281996>,  <20.246225, 19.672478, 27.191866>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.858284, 19.635355, 27.281996> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185780, -0.316775, -0.930129,
		0.157699, -0.943949, 0.289984,
		-0.969854, -0.092807, 0.225323,
		19.567327, 19.607513, 27.349592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.011761, 19.068087, 27.004522>,  <20.246225, 19.672478, 27.191866>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.011761, 19.068087, 27.004522> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.680349, 19.291540, 27.019859>,  <19.481503, 19.425613, 27.029062>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.680349, 19.291540, 27.019859>,  <20.011761, 19.068087, 27.004522>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.680349, 19.291540, 27.019859> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236082, -0.286404, -0.928568,
		-0.507750, -0.778395, 0.369177,
		-0.828526, 0.558636, 0.038344,
		19.431791, 19.459131, 27.031363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.516968, 18.686611, 26.498655>,  <20.011761, 19.068087, 27.004522>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.516968, 18.686611, 26.498655> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.361544, 19.051941, 26.547417>,  <19.268290, 19.271139, 26.576674>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.361544, 19.051941, 26.547417>,  <19.516968, 18.686611, 26.498655>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.361544, 19.051941, 26.547417> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222030, 0.035593, -0.974390,
		-0.894273, -0.405674, 0.188956,
		-0.388559, 0.913324, 0.121902,
		19.244976, 19.325939, 26.583988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.796949, 18.609003, 26.301231>,  <19.516968, 18.686611, 26.498655>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.796949, 18.609003, 26.301231> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.898581, 18.995291, 26.279957>,  <18.959560, 19.227064, 26.267193>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.898581, 18.995291, 26.279957>,  <18.796949, 18.609003, 26.301231>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.898581, 18.995291, 26.279957> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547528, 0.098287, -0.830995,
		-0.797281, 0.240259, 0.553731,
		0.254079, 0.965720, -0.053186,
		18.974804, 19.285007, 26.264002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.170235, 18.143143, 26.811808>,  <18.796949, 18.609003, 26.301231>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.170235, 18.143143, 26.811808> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.261986, 17.753925, 26.821356>,  <19.317036, 17.520395, 26.827084>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.261986, 17.753925, 26.821356>,  <19.170235, 18.143143, 26.811808>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.261986, 17.753925, 26.821356> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575918, 0.155449, 0.802592,
		-0.784668, -0.170350, 0.596051,
		0.229378, -0.973045, 0.023868,
		19.330799, 17.462011, 26.828516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.965336, 17.939571, 27.456203>,  <19.170235, 18.143143, 26.811808>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.965336, 17.939571, 27.456203> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.228466, 17.659594, 27.344959>,  <19.386343, 17.491608, 27.278212>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.228466, 17.659594, 27.344959>,  <18.965336, 17.939571, 27.456203>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.228466, 17.659594, 27.344959> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507517, 0.139106, 0.850339,
		-0.556502, -0.700520, 0.446740,
		0.657824, -0.699944, -0.278112,
		19.425814, 17.449610, 27.261526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.992954, 17.527567, 28.078634>,  <18.965336, 17.939571, 27.456203>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.992954, 17.527567, 28.078634> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.319065, 17.488441, 27.850334>,  <19.514732, 17.464966, 27.713354>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.319065, 17.488441, 27.850334>,  <18.992954, 17.527567, 28.078634>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.319065, 17.488441, 27.850334> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575688, 0.243252, 0.780648,
		0.062478, -0.965019, 0.254627,
		0.815279, -0.097812, -0.570748,
		19.563648, 17.459097, 27.679110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.443771, 17.221930, 28.558464>,  <18.992954, 17.527567, 28.078634>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.443771, 17.221930, 28.558464> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.685789, 17.339811, 28.262608>,  <19.830999, 17.410540, 28.085093>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.685789, 17.339811, 28.262608>,  <19.443771, 17.221930, 28.558464>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.685789, 17.339811, 28.262608> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656486, 0.340973, 0.672877,
		0.450498, -0.892685, 0.012835,
		0.605044, 0.294704, -0.739643,
		19.867302, 17.428223, 28.040714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.061941, 17.130312, 28.783869>,  <19.443771, 17.221930, 28.558464>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.061941, 17.130312, 28.783869> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.152246, 17.365265, 28.472996>,  <20.206430, 17.506237, 28.286472>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.152246, 17.365265, 28.472996>,  <20.061941, 17.130312, 28.783869>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.152246, 17.365265, 28.472996> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789077, 0.357593, 0.499484,
		0.571303, -0.726023, -0.382758,
		0.225766, 0.587383, -0.777182,
		20.219976, 17.541479, 28.239841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.734636, 17.057158, 28.787182>,  <20.061941, 17.130312, 28.783869>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.734636, 17.057158, 28.787182> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.650438, 17.395426, 28.591005>,  <20.599918, 17.598387, 28.473299>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.650438, 17.395426, 28.591005>,  <20.734636, 17.057158, 28.787182>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.650438, 17.395426, 28.591005> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632092, 0.500444, 0.591621,
		0.745755, -0.185471, -0.639882,
		-0.210497, 0.845669, -0.490444,
		20.587290, 17.649126, 28.443872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.328857, 17.394466, 28.732265>,  <20.734636, 17.057158, 28.787182>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.328857, 17.394466, 28.732265> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.055004, 17.681519, 28.681223>,  <20.890692, 17.853750, 28.650599>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.055004, 17.681519, 28.681223>,  <21.328857, 17.394466, 28.732265>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.055004, 17.681519, 28.681223> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513077, 0.598832, 0.614941,
		0.517714, 0.355538, -0.778180,
		-0.684634, 0.717630, -0.127605,
		20.849613, 17.896807, 28.642941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.667046, 17.996052, 28.672586>,  <21.328857, 17.394466, 28.732265>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.667046, 17.996052, 28.672586> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.304676, 18.118465, 28.789648>,  <21.087255, 18.191914, 28.859884>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.304676, 18.118465, 28.789648>,  <21.667046, 17.996052, 28.672586>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.304676, 18.118465, 28.789648> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421242, 0.580961, 0.696447,
		0.043116, 0.754206, -0.655221,
		-0.905923, 0.306035, 0.292655,
		21.032900, 18.210276, 28.877445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.779781, 18.640667, 28.796267>,  <21.667046, 17.996052, 28.672586>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.779781, 18.640667, 28.796267> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.437147, 18.569147, 28.989883>,  <21.231567, 18.526236, 29.106052>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.437147, 18.569147, 28.989883>,  <21.779781, 18.640667, 28.796267>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.437147, 18.569147, 28.989883> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279721, 0.627364, 0.726753,
		-0.433613, 0.757921, -0.487375,
		-0.856583, -0.178801, 0.484040,
		21.180172, 18.515507, 29.135096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.748686, 19.219719, 29.079733>,  <21.779781, 18.640667, 28.796267>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.748686, 19.219719, 29.079733> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.468443, 19.020287, 29.283915>,  <21.300297, 18.900627, 29.406424>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.468443, 19.020287, 29.283915>,  <21.748686, 19.219719, 29.079733>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.468443, 19.020287, 29.283915> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043664, 0.684079, 0.728100,
		-0.712208, 0.532402, -0.457502,
		-0.700609, -0.498582, 0.510453,
		21.258261, 18.870712, 29.437050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.295774, 19.643759, 29.150341>,  <21.748686, 19.219719, 29.079733>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.295774, 19.643759, 29.150341> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.219988, 19.400646, 29.458809>,  <21.174517, 19.254778, 29.643890>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.219988, 19.400646, 29.458809>,  <21.295774, 19.643759, 29.150341>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.219988, 19.400646, 29.458809> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161747, 0.755347, 0.635051,
		-0.968473, 0.245055, -0.044805,
		-0.189466, -0.607782, 0.771170,
		21.163149, 19.218311, 29.690161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.904419, 20.009064, 29.576742>,  <21.295774, 19.643759, 29.150341>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.904419, 20.009064, 29.576742> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.059011, 19.715725, 29.800468>,  <21.151768, 19.539722, 29.934704>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.059011, 19.715725, 29.800468>,  <20.904419, 20.009064, 29.576742>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.059011, 19.715725, 29.800468> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271045, 0.669970, 0.691140,
		-0.881570, -0.115514, 0.457701,
		0.386482, -0.733347, 0.559316,
		21.174955, 19.495722, 29.968264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.708920, 20.244381, 30.286848>,  <20.904419, 20.009064, 29.576742>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.708920, 20.244381, 30.286848> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.999182, 19.972698, 30.330856>,  <21.173338, 19.809689, 30.357262>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.999182, 19.972698, 30.330856>,  <20.708920, 20.244381, 30.286848>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.999182, 19.972698, 30.330856> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246813, 0.406210, 0.879816,
		-0.642269, -0.611287, 0.462405,
		0.725654, -0.679207, 0.110023,
		21.216877, 19.768936, 30.363863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.661566, 19.841660, 31.031466>,  <20.708920, 20.244381, 30.286848>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.661566, 19.841660, 31.031466> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.033932, 19.846766, 30.885462>,  <21.257351, 19.849829, 30.797859>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.033932, 19.846766, 30.885462>,  <20.661566, 19.841660, 31.031466>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.033932, 19.846766, 30.885462> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337798, 0.349926, 0.873753,
		0.138882, -0.936690, 0.321439,
		0.930916, 0.012767, -0.365011,
		21.313206, 19.850595, 30.775959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.016350, 20.153183, 30.551180>,  <20.661566, 19.841660, 31.031466>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.016350, 20.153183, 30.551180> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.666115, 20.169975, 30.743673>,  <19.455975, 20.180050, 30.859169>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.666115, 20.169975, 30.743673>,  <20.016350, 20.153183, 30.551180>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.666115, 20.169975, 30.743673> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328220, -0.782640, -0.528910,
		0.354429, -0.621057, 0.699048,
		-0.875586, 0.041981, 0.481234,
		19.403439, 20.182570, 30.888042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.783346, 19.479265, 30.848907>,  <20.016350, 20.153183, 30.551180>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.783346, 19.479265, 30.848907> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.442228, 19.685631, 30.816477>,  <19.237558, 19.809450, 30.797018>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.442228, 19.685631, 30.816477>,  <19.783346, 19.479265, 30.848907>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.442228, 19.685631, 30.816477> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462727, -0.818418, -0.340700,
		-0.242128, -0.253030, 0.936670,
		-0.852794, 0.515915, -0.081078,
		19.186390, 19.840405, 30.792152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.302572, 19.060925, 31.053391>,  <19.783346, 19.479265, 30.848907>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.302572, 19.060925, 31.053391> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.077177, 19.301455, 30.826801>,  <18.941940, 19.445772, 30.690847>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.077177, 19.301455, 30.826801>,  <19.302572, 19.060925, 31.053391>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.077177, 19.301455, 30.826801> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666666, -0.735946, -0.118067,
		-0.487889, 0.311118, 0.815579,
		-0.563489, 0.601323, -0.566472,
		18.908131, 19.481852, 30.656860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.567390, 19.077276, 31.347225>,  <19.302572, 19.060925, 31.053391>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.567390, 19.077276, 31.347225> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.552799, 19.183905, 30.961975>,  <18.544044, 19.247883, 30.730825>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.552799, 19.183905, 30.961975>,  <18.567390, 19.077276, 31.347225>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.552799, 19.183905, 30.961975> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793461, -0.593629, -0.134254,
		-0.607527, 0.759305, 0.233169,
		-0.036476, 0.266573, -0.963124,
		18.541857, 19.263876, 30.673038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.947617, 19.056078, 31.170036>,  <18.567390, 19.077276, 31.347225>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.947617, 19.056078, 31.170036> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.095819, 19.076935, 30.799089>,  <18.184740, 19.089449, 30.576521>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.095819, 19.076935, 30.799089>,  <17.947617, 19.056078, 31.170036>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.095819, 19.076935, 30.799089> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844466, -0.396854, -0.359699,
		-0.386784, 0.916399, -0.103005,
		0.370506, 0.052142, -0.927365,
		18.206972, 19.092577, 30.520880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.319473, 19.239498, 30.687635>,  <17.947617, 19.056078, 31.170036>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.319473, 19.239498, 30.687635> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.596226, 19.078976, 30.447552>,  <17.762278, 18.982662, 30.303501>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.596226, 19.078976, 30.447552>,  <17.319473, 19.239498, 30.687635>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.596226, 19.078976, 30.447552> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706151, -0.549393, -0.446674,
		-0.150498, 0.732885, -0.663498,
		0.691882, -0.401306, -0.600211,
		17.803791, 18.958584, 30.267488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.010044, 19.266361, 30.055370>,  <17.319473, 19.239498, 30.687635>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.010044, 19.266361, 30.055370> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.294786, 19.007795, 29.945526>,  <17.465631, 18.852655, 29.879620>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.294786, 19.007795, 29.945526>,  <17.010044, 19.266361, 30.055370>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.294786, 19.007795, 29.945526> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637013, -0.429592, -0.640052,
		0.295769, 0.630554, -0.717581,
		0.711854, -0.646415, -0.274611,
		17.508343, 18.813871, 29.863142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.736429, 19.881016, 29.639980>,  <17.010044, 19.266361, 30.055370>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.736429, 19.881016, 29.639980> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.404110, 19.759336, 29.826416>,  <16.204720, 19.686329, 29.938278>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.404110, 19.759336, 29.826416>,  <16.736429, 19.881016, 29.639980>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.404110, 19.759336, 29.826416> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352664, 0.360142, 0.863670,
		-0.430586, 0.881907, -0.191925,
		-0.830797, -0.304199, 0.466089,
		16.154871, 19.668077, 29.966244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.589861, 20.325926, 30.223345>,  <16.736429, 19.881016, 29.639980>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.589861, 20.325926, 30.223345> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.343891, 20.028526, 30.328476>,  <16.196308, 19.850086, 30.391554>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.343891, 20.028526, 30.328476>,  <16.589861, 20.325926, 30.223345>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.343891, 20.028526, 30.328476> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164677, 0.204870, 0.964837,
		-0.771199, 0.636585, -0.003543,
		-0.614926, -0.743497, 0.262826,
		16.159412, 19.805477, 30.407324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.023529, 20.580912, 30.628130>,  <16.589861, 20.325926, 30.223345>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.023529, 20.580912, 30.628130> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.021900, 20.193918, 30.729290>,  <16.020924, 19.961721, 30.789986>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.021900, 20.193918, 30.729290>,  <16.023529, 20.580912, 30.628130>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.021900, 20.193918, 30.729290> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044718, 0.252474, 0.966570,
		-0.998992, 0.015245, 0.042236,
		-0.004071, -0.967484, 0.252901,
		16.020679, 19.903673, 30.805161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.535224, 20.450354, 31.259729>,  <16.023529, 20.580912, 30.628130>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.535224, 20.450354, 31.259729> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.801255, 20.151964, 31.245918>,  <15.960875, 19.972931, 31.237631>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.801255, 20.151964, 31.245918>,  <15.535224, 20.450354, 31.259729>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.801255, 20.151964, 31.245918> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226918, 0.157826, 0.961041,
		-0.711462, -0.647003, 0.274241,
		0.665079, -0.745975, -0.034529,
		16.000778, 19.928171, 31.235559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.392664, 20.057791, 31.793921>,  <15.535224, 20.450354, 31.259729>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.392664, 20.057791, 31.793921> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.766205, 19.936491, 31.718069>,  <15.990330, 19.863712, 31.672558>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.766205, 19.936491, 31.718069>,  <15.392664, 20.057791, 31.793921>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.766205, 19.936491, 31.718069> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160563, -0.118312, 0.979909,
		-0.319591, -0.945538, -0.061796,
		0.933853, -0.303248, -0.189630,
		16.046360, 19.845516, 31.661180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.402290, 19.621300, 32.358719>,  <15.392664, 20.057791, 31.793921>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.402290, 19.621300, 32.358719> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.767030, 19.696377, 32.212677>,  <15.985873, 19.741423, 32.125053>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.767030, 19.696377, 32.212677>,  <15.402290, 19.621300, 32.358719>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.767030, 19.696377, 32.212677> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348966, 0.114046, 0.930170,
		0.216227, -0.975583, 0.038494,
		0.911849, 0.187695, -0.365105,
		16.040585, 19.752686, 32.103146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.666993, 19.595070, 33.057362>,  <15.402290, 19.621300, 32.358719>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.666993, 19.595070, 33.057362> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.985223, 19.724794, 32.852665>,  <16.176161, 19.802629, 32.729847>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.985223, 19.724794, 32.852665>,  <15.666993, 19.595070, 33.057362>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.985223, 19.724794, 32.852665> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460224, 0.225837, 0.858598,
		0.394027, -0.918595, 0.030412,
		0.795573, 0.324315, -0.511746,
		16.223894, 19.822088, 32.699142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.217846, 19.323324, 33.324734>,  <15.666993, 19.595070, 33.057362>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.217846, 19.323324, 33.324734> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.370720, 19.645208, 33.143021>,  <16.462444, 19.838339, 33.033993>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.370720, 19.645208, 33.143021>,  <16.217846, 19.323324, 33.324734>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.370720, 19.645208, 33.143021> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469074, 0.254624, 0.845657,
		0.796181, -0.536292, -0.280155,
		0.382185, 0.804710, -0.454287,
		16.485376, 19.886621, 33.006733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.083549, 19.243496, 33.336327>,  <16.217846, 19.323324, 33.324734>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.083549, 19.243496, 33.336327> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.976231, 19.627249, 33.301453>,  <16.911839, 19.857500, 33.280529>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.976231, 19.627249, 33.301453>,  <17.083549, 19.243496, 33.336327>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.976231, 19.627249, 33.301453> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660372, 0.249054, 0.708435,
		0.701374, 0.132499, -0.700371,
		-0.268297, 0.959383, -0.087181,
		16.895741, 19.915064, 33.275299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<12.813890, 17.653561, 18.189447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.636895, 17.988081, 18.318943>,  <12.530699, 18.188793, 18.396641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.636895, 17.988081, 18.318943>,  <12.813890, 17.653561, 18.189447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.636895, 17.988081, 18.318943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269018, -0.468164, 0.841696,
		0.855474, 0.285346, 0.432136,
		-0.442485, 0.836302, 0.323739,
		12.504149, 18.238972, 18.416065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.063027, 17.687946, 18.799894>,  <12.813890, 17.653561, 18.189447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.063027, 17.687946, 18.799894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.714018, 17.881800, 18.775129>,  <12.504612, 17.998112, 18.760271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.714018, 17.881800, 18.775129>,  <13.063027, 17.687946, 18.799894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.714018, 17.881800, 18.775129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286088, -0.404078, 0.868835,
		0.396049, 0.775792, 0.491215,
		-0.872525, 0.484632, -0.061910,
		12.452260, 18.027189, 18.756556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.005538, 18.099684, 19.360909>,  <13.063027, 17.687946, 18.799894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.005538, 18.099684, 19.360909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.632184, 18.025917, 19.237762>,  <12.408172, 17.981657, 19.163876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.632184, 18.025917, 19.237762>,  <13.005538, 18.099684, 19.360909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.632184, 18.025917, 19.237762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252759, -0.271172, 0.928751,
		-0.254763, 0.944699, 0.206494,
		-0.933386, -0.184419, -0.307865,
		12.352168, 17.970591, 19.145403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.412396, 18.519527, 19.794147>,  <13.005538, 18.099684, 19.360909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.412396, 18.519527, 19.794147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.222851, 18.211456, 19.623371>,  <12.109123, 18.026613, 19.520906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.222851, 18.211456, 19.623371>,  <12.412396, 18.519527, 19.794147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.222851, 18.211456, 19.623371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371119, -0.265006, 0.889968,
		-0.798576, 0.580169, -0.160251,
		-0.473864, -0.770180, -0.426939,
		12.080691, 17.980402, 19.495289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.793160, 18.551443, 20.042997>,  <12.412396, 18.519527, 19.794147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.793160, 18.551443, 20.042997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.785322, 18.171450, 19.918325>,  <11.780619, 17.943453, 19.843521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.785322, 18.171450, 19.918325>,  <11.793160, 18.551443, 20.042997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.785322, 18.171450, 19.918325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380681, -0.281170, 0.880923,
		-0.924499, 0.135914, -0.356131,
		-0.019596, -0.949985, -0.311681,
		11.779444, 17.886454, 19.824821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.151934, 18.379290, 20.287710>,  <11.793160, 18.551443, 20.042997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.151934, 18.379290, 20.287710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.371037, 18.051359, 20.220964>,  <11.502499, 17.854601, 20.180916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.371037, 18.051359, 20.220964>,  <11.151934, 18.379290, 20.287710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.371037, 18.051359, 20.220964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109362, -0.267899, 0.957220,
		-0.829458, -0.506076, -0.236401,
		0.547758, -0.819828, -0.166866,
		11.535364, 17.805410, 20.170904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.820032, 17.889351, 20.562031>,  <11.151934, 18.379290, 20.287710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.820032, 17.889351, 20.562031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.200291, 17.765244, 20.562740>,  <11.428446, 17.690779, 20.563166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.200291, 17.765244, 20.562740>,  <10.820032, 17.889351, 20.562031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.200291, 17.765244, 20.562740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095213, -0.286279, 0.953404,
		-0.295302, -0.906520, -0.301692,
		0.950648, -0.310267, 0.001774,
		11.485485, 17.672163, 20.563272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.739669, 17.307476, 21.016987>,  <10.820032, 17.889351, 20.562031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.739669, 17.307476, 21.016987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.131277, 17.375803, 20.972551>,  <11.366242, 17.416800, 20.945890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.131277, 17.375803, 20.972551>,  <10.739669, 17.307476, 21.016987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.131277, 17.375803, 20.972551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150077, -0.235726, 0.960162,
		0.137826, -0.956689, -0.256417,
		0.979020, 0.170817, -0.111087,
		11.424983, 17.427048, 20.939224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.978673, 16.835335, 21.446526>,  <10.739669, 17.307476, 21.016987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.978673, 16.835335, 21.446526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.309177, 17.058826, 21.417923>,  <11.507481, 17.192921, 21.400761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.309177, 17.058826, 21.417923>,  <10.978673, 16.835335, 21.446526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.309177, 17.058826, 21.417923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227002, -0.214102, 0.950068,
		0.515521, -0.801238, -0.303737,
		0.826261, 0.558729, -0.071509,
		11.557055, 17.226444, 21.396471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.526771, 16.394327, 21.753345>,  <10.978673, 16.835335, 21.446526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.526771, 16.394327, 21.753345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.660203, 16.771378, 21.747976>,  <11.740262, 16.997608, 21.744755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.660203, 16.771378, 21.747976>,  <11.526771, 16.394327, 21.753345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.660203, 16.771378, 21.747976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320733, -0.100092, 0.941866,
		0.886484, -0.318493, -0.335721,
		0.333581, 0.942626, -0.013421,
		11.760277, 17.054165, 21.743950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.170930, 16.391413, 22.021690>,  <11.526771, 16.394327, 21.753345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.170930, 16.391413, 22.021690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.038082, 16.766453, 22.062881>,  <11.958374, 16.991476, 22.087597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.038082, 16.766453, 22.062881>,  <12.170930, 16.391413, 22.021690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.038082, 16.766453, 22.062881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372093, 0.029912, 0.927714,
		0.866744, 0.346428, -0.358808,
		-0.332118, 0.937600, 0.102978,
		11.938447, 17.047733, 22.093775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.671471, 16.723654, 22.303480>,  <12.170930, 16.391413, 22.021690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.671471, 16.723654, 22.303480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.350780, 16.944471, 22.395117>,  <12.158366, 17.076962, 22.450100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.350780, 16.944471, 22.395117>,  <12.671471, 16.723654, 22.303480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.350780, 16.944471, 22.395117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272183, -0.004034, 0.962237,
		0.532123, 0.833804, -0.147024,
		-0.801724, 0.552046, 0.229094,
		12.110263, 17.110085, 22.463844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.344069, 16.515980, 22.222584>,  <12.671471, 16.723654, 22.303480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.344069, 16.515980, 22.222584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.567561, 16.231359, 22.393002>,  <13.701656, 16.060587, 22.495253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.567561, 16.231359, 22.393002>,  <13.344069, 16.515980, 22.222584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.567561, 16.231359, 22.393002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102379, -0.568954, -0.815971,
		0.823006, 0.412290, -0.390740,
		0.558730, -0.711553, 0.426043,
		13.735180, 16.017893, 22.520815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.795415, 16.307674, 21.690895>,  <13.344069, 16.515980, 22.222584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.795415, 16.307674, 21.690895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.795963, 15.995790, 21.941349>,  <13.796292, 15.808660, 22.091621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.795963, 15.995790, 21.941349>,  <13.795415, 16.307674, 21.690895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.795963, 15.995790, 21.941349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260551, -0.604789, -0.752558,
		0.965459, -0.162110, -0.203984,
		0.001370, -0.779712, 0.626137,
		13.796374, 15.761877, 22.129190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.201733, 15.817095, 21.385391>,  <13.795415, 16.307674, 21.690895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.201733, 15.817095, 21.385391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.957321, 15.622281, 21.635012>,  <13.810675, 15.505393, 21.784784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.957321, 15.622281, 21.635012>,  <14.201733, 15.817095, 21.385391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.957321, 15.622281, 21.635012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400565, -0.489732, -0.774410,
		0.682783, -0.723159, 0.104150,
		-0.611027, -0.487035, 0.624053,
		13.774013, 15.476171, 21.822227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.316764, 15.046491, 21.332453>,  <14.201733, 15.817095, 21.385391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.316764, 15.046491, 21.332453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.943121, 15.106966, 21.461811>,  <13.718935, 15.143251, 21.539427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.943121, 15.106966, 21.461811>,  <14.316764, 15.046491, 21.332453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.943121, 15.106966, 21.461811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356783, -0.426218, -0.831291,
		0.012157, -0.891897, 0.452074,
		-0.934108, 0.151187, 0.323396,
		13.662889, 15.152322, 21.558830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.073347, 14.524142, 21.038845>,  <14.316764, 15.046491, 21.332453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.073347, 14.524142, 21.038845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.749849, 14.746765, 21.114927>,  <13.555751, 14.880339, 21.160576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.749849, 14.746765, 21.114927>,  <14.073347, 14.524142, 21.038845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.749849, 14.746765, 21.114927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522970, -0.532487, -0.665552,
		-0.269136, -0.637733, 0.721708,
		-0.808745, 0.556556, 0.190204,
		13.507226, 14.913732, 21.171988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.500028, 14.051372, 20.974392>,  <14.073347, 14.524142, 21.038845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.500028, 14.051372, 20.974392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.320812, 14.408937, 20.969097>,  <13.213283, 14.623477, 20.965919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.320812, 14.408937, 20.969097>,  <13.500028, 14.051372, 20.974392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.320812, 14.408937, 20.969097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623623, -0.323108, -0.711826,
		-0.640590, -0.310670, 0.702231,
		-0.448039, 0.893916, -0.013239,
		13.186400, 14.677113, 20.965126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.678473, 13.928919, 20.925673>,  <13.500028, 14.051372, 20.974392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.678473, 13.928919, 20.925673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.775990, 14.300119, 20.812975>,  <12.834500, 14.522840, 20.745356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.775990, 14.300119, 20.812975>,  <12.678473, 13.928919, 20.925673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.775990, 14.300119, 20.812975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515425, -0.122109, -0.848190,
		-0.821525, 0.352000, 0.448546,
		0.243792, 0.928001, -0.281745,
		12.849128, 14.578520, 20.728451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.078394, 14.182341, 20.680941>,  <12.678473, 13.928919, 20.925673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.078394, 14.182341, 20.680941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.362882, 14.419520, 20.529903>,  <12.533574, 14.561829, 20.439281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.362882, 14.419520, 20.529903>,  <12.078394, 14.182341, 20.680941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.362882, 14.419520, 20.529903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425168, -0.064924, -0.902783,
		-0.559820, 0.802618, 0.205928,
		0.711220, 0.592950, -0.377593,
		12.576247, 14.597405, 20.416626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.681819, 14.579051, 20.168068>,  <12.078394, 14.182341, 20.680941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.681819, 14.579051, 20.168068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.067608, 14.629496, 20.075211>,  <12.299081, 14.659762, 20.019497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.067608, 14.629496, 20.075211>,  <11.681819, 14.579051, 20.168068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.067608, 14.629496, 20.075211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238135, 0.034515, -0.970619,
		-0.114394, 0.991416, 0.063320,
		0.964472, 0.126111, -0.232142,
		12.356950, 14.667329, 20.005568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.625870, 15.103155, 19.721794>,  <11.681819, 14.579051, 20.168068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.625870, 15.103155, 19.721794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.969585, 14.919505, 19.631613>,  <12.175815, 14.809316, 19.577505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.969585, 14.919505, 19.631613>,  <11.625870, 15.103155, 19.721794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.969585, 14.919505, 19.631613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228159, 0.050437, -0.972317,
		0.457786, 0.886939, -0.061413,
		0.859288, -0.459125, -0.225452,
		12.227372, 14.781768, 19.563976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.821950, 15.422932, 19.083405>,  <11.625870, 15.103155, 19.721794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.821950, 15.422932, 19.083405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.994625, 15.063387, 19.113581>,  <12.098230, 14.847660, 19.131685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.994625, 15.063387, 19.113581>,  <11.821950, 15.422932, 19.083405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.994625, 15.063387, 19.113581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387052, -0.260128, -0.884604,
		0.814761, 0.352675, -0.460201,
		0.431689, -0.898863, 0.075439,
		12.124131, 14.793728, 19.136211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.158062, 15.274458, 18.474386>,  <11.821950, 15.422932, 19.083405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.158062, 15.274458, 18.474386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.052828, 14.923411, 18.634672>,  <11.989687, 14.712783, 18.730844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.052828, 14.923411, 18.634672>,  <12.158062, 15.274458, 18.474386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.052828, 14.923411, 18.634672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402558, -0.277606, -0.872285,
		0.876774, -0.390797, -0.280258,
		-0.263085, -0.877618, 0.400717,
		11.973903, 14.660126, 18.754887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.633709, 14.844893, 18.003931>,  <12.158062, 15.274458, 18.474386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.633709, 14.844893, 18.003931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.365061, 14.619672, 18.196554>,  <12.203872, 14.484539, 18.312128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.365061, 14.619672, 18.196554>,  <12.633709, 14.844893, 18.003931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.365061, 14.619672, 18.196554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322716, -0.362746, -0.874225,
		0.666918, -0.742554, 0.061920,
		-0.671621, -0.563054, 0.481556,
		12.163574, 14.450756, 18.341021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.676656, 14.104479, 17.738798>,  <12.633709, 14.844893, 18.003931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.676656, 14.104479, 17.738798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.317547, 14.225088, 17.867228>,  <12.102081, 14.297454, 17.944286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.317547, 14.225088, 17.867228>,  <12.676656, 14.104479, 17.738798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.317547, 14.225088, 17.867228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357951, -0.074685, -0.930749,
		-0.256663, -0.950530, 0.174980,
		-0.897773, 0.301523, 0.321075,
		12.048215, 14.315545, 17.963551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.400851, 14.044683, 17.776833>,  <12.676656, 14.104479, 17.738798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.400851, 14.044683, 17.776833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.225706, 13.725590, 17.942673>,  <13.120619, 13.534133, 18.042177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.225706, 13.725590, 17.942673>,  <13.400851, 14.044683, 17.776833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.225706, 13.725590, 17.942673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334628, 0.283416, 0.898721,
		-0.834446, 0.532254, 0.142847,
		-0.437863, -0.797735, 0.414602,
		13.094347, 13.486269, 18.067053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.837891, 14.638051, 17.992174>,  <13.400851, 14.044683, 17.776833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.837891, 14.638051, 17.992174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.079033, 14.889144, 17.795189>,  <14.223718, 15.039800, 17.676998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.079033, 14.889144, 17.795189>,  <13.837891, 14.638051, 17.992174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.079033, 14.889144, 17.795189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734332, -0.195207, 0.650116,
		0.311966, -0.753556, -0.578645,
		0.602854, 0.627731, -0.492463,
		14.259890, 15.077463, 17.647449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.470329, 14.412925, 17.841837>,  <13.837891, 14.638051, 17.992174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.470329, 14.412925, 17.841837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.515698, 14.799726, 17.933084>,  <14.542920, 15.031808, 17.987833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.515698, 14.799726, 17.933084>,  <14.470329, 14.412925, 17.841837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.515698, 14.799726, 17.933084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709346, -0.239579, 0.662895,
		0.695675, 0.086627, -0.713115,
		0.113423, 0.967004, 0.228118,
		14.549726, 15.089828, 18.001520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.228485, 14.550550, 17.941721>,  <14.470329, 14.412925, 17.841837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.228485, 14.550550, 17.941721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.002247, 14.807425, 18.148678>,  <14.866504, 14.961551, 18.272852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.002247, 14.807425, 18.148678>,  <15.228485, 14.550550, 17.941721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.002247, 14.807425, 18.148678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699948, 0.042059, 0.712954,
		0.436090, 0.765392, -0.473287,
		-0.565596, 0.642188, 0.517393,
		14.832568, 15.000082, 18.303896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.698974, 15.043262, 18.110369>,  <15.228485, 14.550550, 17.941721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.698974, 15.043262, 18.110369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.387984, 15.036832, 18.361853>,  <15.201390, 15.032973, 18.512743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.387984, 15.036832, 18.361853>,  <15.698974, 15.043262, 18.110369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.387984, 15.036832, 18.361853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628915, -0.020899, 0.777193,
		0.000646, 0.999652, 0.026359,
		-0.777473, -0.016075, 0.628710,
		15.154742, 15.032009, 18.550467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.864667, 15.554307, 18.620735>,  <15.698974, 15.043262, 18.110369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.864667, 15.554307, 18.620735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.560754, 15.357792, 18.791084>,  <15.378407, 15.239882, 18.893293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.560754, 15.357792, 18.791084>,  <15.864667, 15.554307, 18.620735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.560754, 15.357792, 18.791084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417004, 0.134330, 0.898924,
		-0.498838, 0.860576, 0.102807,
		-0.759782, -0.491288, 0.425872,
		15.332819, 15.210405, 18.918846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.470183, 16.050484, 19.074968>,  <15.864667, 15.554307, 18.620735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.470183, 16.050484, 19.074968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.445142, 15.683370, 19.231813>,  <15.430117, 15.463101, 19.325920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.445142, 15.683370, 19.231813>,  <15.470183, 16.050484, 19.074968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.445142, 15.683370, 19.231813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392143, 0.338666, 0.855295,
		-0.917772, 0.207310, 0.338700,
		-0.062605, -0.917785, 0.392113,
		15.426360, 15.408034, 19.349447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.500577, 16.231794, 19.746149>,  <15.470183, 16.050484, 19.074968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.500577, 16.231794, 19.746149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.523570, 15.834679, 19.788233>,  <15.537366, 15.596410, 19.813484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.523570, 15.834679, 19.788233>,  <15.500577, 16.231794, 19.746149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.523570, 15.834679, 19.788233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412843, 0.119591, 0.902917,
		-0.908986, -0.008467, 0.416740,
		0.057483, -0.992787, 0.105211,
		15.540815, 15.536842, 19.819796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.211061, 16.073652, 20.469242>,  <15.500577, 16.231794, 19.746149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.211061, 16.073652, 20.469242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.429641, 15.757884, 20.357378>,  <15.560789, 15.568423, 20.290260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.429641, 15.757884, 20.357378>,  <15.211061, 16.073652, 20.469242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.429641, 15.757884, 20.357378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406090, -0.042287, 0.912855,
		-0.732450, -0.612397, 0.297467,
		0.546450, -0.789419, -0.279661,
		15.593575, 15.521058, 20.273479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.154537, 15.605332, 21.017195>,  <15.211061, 16.073652, 20.469242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.154537, 15.605332, 21.017195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.496733, 15.541018, 20.820305>,  <15.702050, 15.502430, 20.702171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.496733, 15.541018, 20.820305>,  <15.154537, 15.605332, 21.017195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.496733, 15.541018, 20.820305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485475, -0.081659, 0.870429,
		-0.180148, -0.983605, 0.008199,
		0.855489, -0.160787, -0.492227,
		15.753380, 15.492783, 20.672636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.437849, 15.008367, 21.305716>,  <15.154537, 15.605332, 21.017195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.437849, 15.008367, 21.305716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.759886, 15.146916, 21.113111>,  <15.953108, 15.230046, 20.997549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.759886, 15.146916, 21.113111>,  <15.437849, 15.008367, 21.305716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.759886, 15.146916, 21.113111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522217, -0.028962, 0.852321,
		0.281278, -0.937649, -0.204200,
		0.805092, 0.346376, -0.481510,
		16.001413, 15.250829, 20.968658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.908973, 14.568748, 21.480661>,  <15.437849, 15.008367, 21.305716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.908973, 14.568748, 21.480661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.101070, 14.904237, 21.377972>,  <16.216330, 15.105531, 21.316359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.101070, 14.904237, 21.377972>,  <15.908973, 14.568748, 21.480661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.101070, 14.904237, 21.377972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530777, -0.044868, 0.846323,
		0.698312, -0.542706, -0.466723,
		0.480245, 0.838724, -0.256724,
		16.245144, 15.155854, 21.300955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.555841, 14.468049, 21.645636>,  <15.908973, 14.568748, 21.480661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.555841, 14.468049, 21.645636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.553463, 14.867124, 21.618551>,  <16.552036, 15.106568, 21.602301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.553463, 14.867124, 21.618551>,  <16.555841, 14.468049, 21.645636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.553463, 14.867124, 21.618551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574933, 0.058813, 0.816084,
		0.818179, -0.034076, -0.573953,
		-0.005947, 0.997687, -0.067711,
		16.551680, 15.166430, 21.598238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.221848, 14.685542, 21.772141>,  <16.555841, 14.468049, 21.645636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.221848, 14.685542, 21.772141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.002783, 15.012010, 21.845829>,  <16.871344, 15.207890, 21.890041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.002783, 15.012010, 21.845829>,  <17.221848, 14.685542, 21.772141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.002783, 15.012010, 21.845829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512925, 0.153543, 0.844590,
		0.661042, 0.557040, -0.502722,
		-0.547660, 0.816168, 0.184222,
		16.838486, 15.256860, 21.901096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.800585, 15.258803, 21.791990>,  <17.221848, 14.685542, 21.772141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.800585, 15.258803, 21.791990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.458078, 15.331573, 21.985365>,  <17.252575, 15.375235, 22.101391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.458078, 15.331573, 21.985365>,  <17.800585, 15.258803, 21.791990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.458078, 15.331573, 21.985365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515851, 0.252981, 0.818473,
		0.026598, 0.950213, -0.310465,
		-0.856266, 0.181923, 0.483439,
		17.201199, 15.386149, 22.130396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.894684, 15.873847, 22.052292>,  <17.800585, 15.258803, 21.791990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.894684, 15.873847, 22.052292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.584072, 15.759027, 22.276651>,  <17.397705, 15.690136, 22.411266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.584072, 15.759027, 22.276651>,  <17.894684, 15.873847, 22.052292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.584072, 15.759027, 22.276651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454196, 0.361977, 0.814051,
		-0.436705, 0.886891, -0.150709,
		-0.776528, -0.287049, 0.560899,
		17.351114, 15.672913, 22.444921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.860828, 16.397211, 22.524006>,  <17.894684, 15.873847, 22.052292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.860828, 16.397211, 22.524006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.650808, 16.100586, 22.691053>,  <17.524796, 15.922611, 22.791283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.650808, 16.100586, 22.691053>,  <17.860828, 16.397211, 22.524006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.650808, 16.100586, 22.691053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291227, 0.304527, 0.906890,
		-0.799693, 0.597786, 0.056071,
		-0.525051, -0.741563, 0.417620,
		17.493294, 15.878117, 22.816339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.468063, 16.690174, 23.050936>,  <17.860828, 16.397211, 22.524006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.468063, 16.690174, 23.050936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.498024, 16.301296, 23.139687>,  <17.516001, 16.067970, 23.192936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.498024, 16.301296, 23.139687>,  <17.468063, 16.690174, 23.050936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.498024, 16.301296, 23.139687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267825, 0.233938, 0.934635,
		-0.960552, -0.010584, 0.277900,
		0.074903, -0.972194, 0.221875,
		17.520494, 16.009638, 23.206249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.152622, 16.741934, 23.691647>,  <17.468063, 16.690174, 23.050936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.152622, 16.741934, 23.691647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.327108, 16.382559, 23.711760>,  <17.431801, 16.166935, 23.723827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.327108, 16.382559, 23.711760>,  <17.152622, 16.741934, 23.691647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.327108, 16.382559, 23.711760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192345, 0.147685, 0.970151,
		-0.879045, -0.413522, 0.237232,
		0.436215, -0.898437, 0.050283,
		17.457973, 16.113028, 23.726845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.805899, 16.380440, 24.252651>,  <17.152622, 16.741934, 23.691647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.805899, 16.380440, 24.252651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.172682, 16.245310, 24.167736>,  <17.392752, 16.164232, 24.116787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.172682, 16.245310, 24.167736>,  <16.805899, 16.380440, 24.252651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.172682, 16.245310, 24.167736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311747, 0.274567, 0.909630,
		-0.249010, -0.900270, 0.357082,
		0.916956, -0.337826, -0.212287,
		17.447769, 16.143963, 24.104050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.969793, 15.860710, 24.851217>,  <16.805899, 16.380440, 24.252651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.969793, 15.860710, 24.851217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.313364, 15.962022, 24.673187>,  <17.519506, 16.022808, 24.566370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.313364, 15.962022, 24.673187>,  <16.969793, 15.860710, 24.851217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.313364, 15.962022, 24.673187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413445, 0.169854, 0.894546,
		0.302167, -0.952365, 0.041176,
		0.858929, 0.253279, -0.445075,
		17.571043, 16.038006, 24.539665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.468052, 15.513062, 25.307396>,  <16.969793, 15.860710, 24.851217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.468052, 15.513062, 25.307396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.677198, 15.770967, 25.084366>,  <17.802687, 15.925711, 24.950548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.677198, 15.770967, 25.084366>,  <17.468052, 15.513062, 25.307396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.677198, 15.770967, 25.084366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519028, 0.278063, 0.808264,
		0.676181, -0.712010, -0.189262,
		0.522865, 0.644765, -0.557574,
		17.834059, 15.964397, 24.917093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.181652, 15.364100, 25.429731>,  <17.468052, 15.513062, 25.307396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.181652, 15.364100, 25.429731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.157595, 15.742022, 25.300903>,  <18.143160, 15.968775, 25.223606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.157595, 15.742022, 25.300903>,  <18.181652, 15.364100, 25.429731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.157595, 15.742022, 25.300903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609099, 0.290358, 0.738031,
		0.790810, -0.151785, -0.592942,
		-0.060144, 0.944803, -0.322070,
		18.139551, 16.025463, 25.204283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.878006, 15.610735, 25.546516>,  <18.181652, 15.364100, 25.429731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.878006, 15.610735, 25.546516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.646582, 15.934217, 25.504070>,  <18.507727, 16.128307, 25.478601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.646582, 15.934217, 25.504070>,  <18.878006, 15.610735, 25.546516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.646582, 15.934217, 25.504070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652864, 0.537150, 0.534076,
		0.488911, 0.239716, -0.838750,
		-0.578562, 0.808706, -0.106117,
		18.473013, 16.176828, 25.472235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.404558, 16.193605, 25.315884>,  <18.878006, 15.610735, 25.546516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.404558, 16.193605, 25.315884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.068895, 16.356289, 25.460327>,  <18.867496, 16.453899, 25.546993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.068895, 16.356289, 25.460327>,  <19.404558, 16.193605, 25.315884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.068895, 16.356289, 25.460327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542199, 0.677834, 0.496549,
		-0.042821, 0.612477, -0.789328,
		-0.839158, 0.406710, 0.361111,
		18.817148, 16.478302, 25.568661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.567032, 16.926188, 25.278452>,  <19.404558, 16.193605, 25.315884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.567032, 16.926188, 25.278452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.274668, 16.863844, 25.544226>,  <19.099249, 16.826437, 25.703690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.274668, 16.863844, 25.544226>,  <19.567032, 16.926188, 25.278452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.274668, 16.863844, 25.544226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475984, 0.581287, 0.659959,
		-0.489089, 0.798632, -0.350683,
		-0.730911, -0.155859, 0.664437,
		19.055395, 16.817085, 25.743557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.588665, 17.529720, 25.674109>,  <19.567032, 16.926188, 25.278452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.588665, 17.529720, 25.674109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.356379, 17.328150, 25.929869>,  <19.217007, 17.207209, 26.083324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.356379, 17.328150, 25.929869>,  <19.588665, 17.529720, 25.674109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.356379, 17.328150, 25.929869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482738, 0.419279, 0.768875,
		-0.655542, 0.755159, -0.000217,
		-0.580714, -0.503925, 0.639399,
		19.182165, 17.176971, 26.121689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.398956, 17.929218, 26.133844>,  <19.588665, 17.529720, 25.674109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.398956, 17.929218, 26.133844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.331234, 17.581011, 26.318684>,  <19.290600, 17.372087, 26.429586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.331234, 17.581011, 26.318684>,  <19.398956, 17.929218, 26.133844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.331234, 17.581011, 26.318684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539264, 0.310630, 0.782754,
		-0.824942, 0.381717, 0.416847,
		-0.169306, -0.870518, 0.462098,
		19.280443, 17.319855, 26.457314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
