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
	<24.681425, 35.129333, 34.757175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.309214, 35.107723, 34.902061>,  <24.085886, 35.094757, 34.988991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.309214, 35.107723, 34.902061>,  <24.681425, 35.129333, 34.757175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.309214, 35.107723, 34.902061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332819, -0.537414, 0.774866,
		0.152796, 0.841586, 0.518060,
		-0.930529, -0.054024, 0.362211,
		24.030054, 35.091515, 35.010723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.115023, 34.584728, 35.094746>,  <24.681425, 35.129333, 34.757175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.115023, 34.584728, 35.094746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.356262, 34.508251, 34.784981>,  <25.501007, 34.462364, 34.599121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.356262, 34.508251, 34.784981>,  <25.115023, 34.584728, 35.094746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.356262, 34.508251, 34.784981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247211, -0.967849, 0.046420,
		-0.758391, 0.163447, -0.630975,
		0.603101, -0.191188, -0.774414,
		25.537193, 34.450893, 34.552658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.779276, 34.069019, 34.693817>,  <25.115023, 34.584728, 35.094746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.779276, 34.069019, 34.693817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.178316, 34.054134, 34.670460>,  <25.417740, 34.045204, 34.656445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.178316, 34.054134, 34.670460>,  <24.779276, 34.069019, 34.693817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.178316, 34.054134, 34.670460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029024, -0.990377, 0.135317,
		-0.062864, -0.133298, -0.989080,
		0.997600, -0.037213, -0.058391,
		25.477596, 34.042969, 34.652943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.877108, 33.585476, 34.149101>,  <24.779276, 34.069019, 34.693817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.877108, 33.585476, 34.149101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.213043, 33.596230, 34.365971>,  <25.414604, 33.602680, 34.496094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.213043, 33.596230, 34.365971>,  <24.877108, 33.585476, 34.149101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.213043, 33.596230, 34.365971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010266, -0.999381, 0.033647,
		0.542742, -0.022692, -0.839593,
		0.839837, 0.026881, 0.542173,
		25.464994, 33.604294, 34.528622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.442526, 33.221554, 33.788601>,  <24.877108, 33.585476, 34.149101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.442526, 33.221554, 33.788601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.490269, 33.202053, 34.185261>,  <25.518915, 33.190353, 34.423256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.490269, 33.202053, 34.185261>,  <25.442526, 33.221554, 33.788601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.490269, 33.202053, 34.185261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061672, -0.997229, -0.041605,
		0.990934, -0.056191, -0.122035,
		0.119359, -0.048754, 0.991654,
		25.526077, 33.187428, 34.482758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.032322, 32.780296, 33.931450>,  <25.442526, 33.221554, 33.788601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.032322, 32.780296, 33.931450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.807135, 32.782749, 34.262032>,  <25.672022, 32.784222, 34.460381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.807135, 32.782749, 34.262032>,  <26.032322, 32.780296, 33.931450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.807135, 32.782749, 34.262032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033174, -0.998999, 0.030005,
		0.825814, 0.044308, 0.562200,
		-0.562966, 0.006128, 0.826457,
		25.638245, 32.784588, 34.509968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.276571, 32.199917, 34.263737>,  <26.032322, 32.780296, 33.931450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.276571, 32.199917, 34.263737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.917765, 32.285763, 34.418297>,  <25.702480, 32.337269, 34.511032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.917765, 32.285763, 34.418297>,  <26.276571, 32.199917, 34.263737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.917765, 32.285763, 34.418297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215783, -0.975584, 0.040919,
		0.385749, -0.046674, 0.921422,
		-0.897015, 0.214612, 0.386402,
		25.648661, 32.350147, 34.534218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.240923, 31.879532, 34.913345>,  <26.276571, 32.199917, 34.263737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.240923, 31.879532, 34.913345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.889147, 31.936003, 34.731510>,  <25.678082, 31.969885, 34.622410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.889147, 31.936003, 34.731510>,  <26.240923, 31.879532, 34.913345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.889147, 31.936003, 34.731510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100442, -0.988540, -0.112693,
		-0.465289, -0.053447, 0.883544,
		-0.879441, 0.141179, -0.454589,
		25.625315, 31.978357, 34.595135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.928135, 31.417377, 35.270802>,  <26.240923, 31.879532, 34.913345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.928135, 31.417377, 35.270802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.714895, 31.500679, 34.942791>,  <25.586952, 31.550659, 34.745987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.714895, 31.500679, 34.942791>,  <25.928135, 31.417377, 35.270802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.714895, 31.500679, 34.942791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070947, -0.954816, -0.288607,
		-0.843072, -0.212034, 0.494238,
		-0.533100, 0.208252, -0.820022,
		25.554966, 31.563154, 34.696785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.381020, 30.930799, 35.253387>,  <25.928135, 31.417377, 35.270802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.381020, 30.930799, 35.253387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.389305, 31.045227, 34.870193>,  <25.394276, 31.113884, 34.640278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.389305, 31.045227, 34.870193>,  <25.381020, 30.930799, 35.253387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.389305, 31.045227, 34.870193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155523, -0.947448, -0.279562,
		-0.987615, -0.143198, -0.064116,
		0.020714, 0.286071, -0.957984,
		25.395519, 31.131048, 34.582798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.100574, 30.357758, 34.955677>,  <25.381020, 30.930799, 35.253387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.100574, 30.357758, 34.955677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.302717, 30.546978, 34.667000>,  <25.424004, 30.660509, 34.493793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.302717, 30.546978, 34.667000>,  <25.100574, 30.357758, 34.955677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.302717, 30.546978, 34.667000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263125, -0.880992, -0.393216,
		-0.821813, 0.008820, -0.569689,
		0.505359, 0.473050, -0.721690,
		25.454325, 30.688892, 34.450493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.856159, 30.101954, 34.172966>,  <25.100574, 30.357758, 34.955677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.856159, 30.101954, 34.172966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.236259, 30.207445, 34.239265>,  <25.464319, 30.270741, 34.279045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.236259, 30.207445, 34.239265>,  <24.856159, 30.101954, 34.172966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.236259, 30.207445, 34.239265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289010, -0.944961, -0.153366,
		0.116175, 0.193638, -0.974170,
		0.950251, 0.263728, 0.165744,
		25.521336, 30.286564, 34.288990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.315163, 29.806515, 33.814068>,  <24.856159, 30.101954, 34.172966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.315163, 29.806515, 33.814068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.521767, 29.898087, 34.144112>,  <25.645729, 29.953030, 34.342136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.521767, 29.898087, 34.144112>,  <25.315163, 29.806515, 33.814068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.521767, 29.898087, 34.144112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278579, -0.956103, 0.090884,
		0.809697, 0.182916, -0.557613,
		0.516511, 0.228928, 0.825111,
		25.676720, 29.966764, 34.391644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.028284, 29.756462, 34.117634>,  <25.315163, 29.806515, 33.814068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.028284, 29.756462, 34.117634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.210733, 29.878901, 33.783386>,  <26.320204, 29.952364, 33.582836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.210733, 29.878901, 33.783386>,  <26.028284, 29.756462, 34.117634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.210733, 29.878901, 33.783386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121203, 0.951603, 0.282421,
		0.881624, -0.027540, 0.471149,
		0.456124, 0.306094, -0.835618,
		26.347570, 29.970728, 33.532700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.609476, 30.198441, 34.255108>,  <26.028284, 29.756462, 34.117634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.609476, 30.198441, 34.255108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.380718, 30.247896, 33.930725>,  <26.243464, 30.277569, 33.736095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.380718, 30.247896, 33.930725>,  <26.609476, 30.198441, 34.255108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.380718, 30.247896, 33.930725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358558, 0.851467, 0.382676,
		0.737815, 0.509625, -0.442618,
		-0.571896, 0.123640, -0.810955,
		26.209150, 30.284988, 33.687439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.512110, 30.929396, 34.134319>,  <26.609476, 30.198441, 34.255108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.512110, 30.929396, 34.134319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.186724, 30.775219, 33.960098>,  <25.991493, 30.682713, 33.855564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.186724, 30.775219, 33.960098>,  <26.512110, 30.929396, 34.134319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.186724, 30.775219, 33.960098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514432, 0.826217, 0.229618,
		0.271360, 0.410850, -0.870383,
		-0.813464, -0.385444, -0.435557,
		25.942684, 30.659586, 33.829430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.154497, 31.335016, 33.578781>,  <26.512110, 30.929396, 34.134319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.154497, 31.335016, 33.578781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.900583, 31.120493, 33.801285>,  <25.748236, 30.991779, 33.934788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.900583, 31.120493, 33.801285>,  <26.154497, 31.335016, 33.578781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.900583, 31.120493, 33.801285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436102, 0.842948, 0.315047,
		-0.637859, -0.042599, -0.768974,
		-0.634784, -0.536307, 0.556260,
		25.710148, 30.959600, 33.968163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.598957, 31.570827, 33.394180>,  <26.154497, 31.335016, 33.578781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.598957, 31.570827, 33.394180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.524096, 31.421192, 33.757504>,  <25.479179, 31.331411, 33.975498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.524096, 31.421192, 33.757504>,  <25.598957, 31.570827, 33.394180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.524096, 31.421192, 33.757504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310892, 0.899678, 0.306474,
		-0.931837, -0.225029, -0.284679,
		-0.187154, -0.374088, 0.908313,
		25.467949, 31.308966, 34.029999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.887484, 31.831879, 33.614376>,  <25.598957, 31.570827, 33.394180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.887484, 31.831879, 33.614376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.095306, 31.750313, 33.946274>,  <25.219999, 31.701374, 34.145412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.095306, 31.750313, 33.946274>,  <24.887484, 31.831879, 33.614376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.095306, 31.750313, 33.946274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242322, 0.896067, 0.371946,
		-0.819354, -0.394312, 0.416144,
		0.519556, -0.203915, 0.829747,
		25.251173, 31.689138, 34.195198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.424925, 32.027752, 34.158497>,  <24.887484, 31.831879, 33.614376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.424925, 32.027752, 34.158497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.797297, 32.022594, 34.304485>,  <25.020720, 32.019501, 34.392078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.797297, 32.022594, 34.304485>,  <24.424925, 32.027752, 34.158497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.797297, 32.022594, 34.304485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115293, 0.937895, 0.327201,
		-0.346522, -0.346680, 0.871628,
		0.930930, -0.012890, 0.364971,
		25.076576, 32.018726, 34.413975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.319614, 32.774017, 34.383755>,  <24.424925, 32.027752, 34.158497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.319614, 32.774017, 34.383755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.536562, 32.949844, 34.097366>,  <24.666731, 33.055340, 33.925533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.536562, 32.949844, 34.097366>,  <24.319614, 32.774017, 34.383755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.536562, 32.949844, 34.097366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822152, 0.453100, -0.344626,
		0.172922, 0.775553, 0.607138,
		0.542370, 0.439566, -0.715973,
		24.699272, 33.081715, 33.882576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.449614, 32.428200, 34.997047>,  <24.319614, 32.774017, 34.383755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.449614, 32.428200, 34.997047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.829321, 32.419434, 34.871571>,  <25.057146, 32.414173, 34.796284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.829321, 32.419434, 34.871571>,  <24.449614, 32.428200, 34.997047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.829321, 32.419434, 34.871571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148336, 0.910819, 0.385234,
		0.277276, -0.412224, 0.867865,
		0.949271, -0.021920, -0.313696,
		25.114101, 32.412857, 34.777462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.782921, 32.797028, 35.536106>,  <24.449614, 32.428200, 34.997047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.782921, 32.797028, 35.536106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.051655, 32.784821, 35.240078>,  <25.212894, 32.777496, 35.062462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.051655, 32.784821, 35.240078>,  <24.782921, 32.797028, 35.536106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.051655, 32.784821, 35.240078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035016, 0.999342, -0.009418,
		0.739874, -0.019587, 0.672460,
		0.671834, -0.030515, -0.740073,
		25.253204, 32.775665, 35.018055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.410727, 33.073570, 35.790535>,  <24.782921, 32.797028, 35.536106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.410727, 33.073570, 35.790535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.542635, 32.924248, 35.443687>,  <25.621780, 32.834656, 35.235580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.542635, 32.924248, 35.443687>,  <25.410727, 33.073570, 35.790535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.542635, 32.924248, 35.443687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061904, 0.925073, -0.374709,
		0.942029, 0.069890, 0.328171,
		0.329771, -0.373302, -0.867120,
		25.641565, 32.812256, 35.183552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.030355, 33.187748, 35.704063>,  <25.410727, 33.073570, 35.790535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.030355, 33.187748, 35.704063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.886522, 33.167595, 35.331364>,  <25.800222, 33.155502, 35.107742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.886522, 33.167595, 35.331364>,  <26.030355, 33.187748, 35.704063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.886522, 33.167595, 35.331364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349883, 0.918407, -0.184691,
		0.865032, -0.392416, -0.312617,
		-0.359585, -0.050384, -0.931751,
		25.778646, 33.152481, 35.051838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.518373, 33.540630, 35.318317>,  <26.030355, 33.187748, 35.704063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.518373, 33.540630, 35.318317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.205675, 33.573269, 35.071022>,  <26.018057, 33.592854, 34.922646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.205675, 33.573269, 35.071022>,  <26.518373, 33.540630, 35.318317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.205675, 33.573269, 35.071022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225704, 0.961210, -0.158536,
		0.581320, -0.263474, -0.769837,
		-0.781744, 0.081595, -0.618238,
		25.971151, 33.597748, 34.885551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.785524, 33.962040, 34.716793>,  <26.518373, 33.540630, 35.318317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.785524, 33.962040, 34.716793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.386547, 33.988327, 34.705578>,  <26.147160, 34.004101, 34.698849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.386547, 33.988327, 34.705578>,  <26.785524, 33.962040, 34.716793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.386547, 33.988327, 34.705578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068085, 0.993248, -0.093931,
		0.021674, -0.095600, -0.995184,
		-0.997444, 0.065721, -0.028036,
		26.087315, 34.008045, 34.697166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.095520, 33.353626, 34.576530>,  <26.785524, 33.962040, 34.716793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.095520, 33.353626, 34.576530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.472473, 33.299763, 34.454037>,  <27.698645, 33.267445, 34.380539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.472473, 33.299763, 34.454037>,  <27.095520, 33.353626, 34.576530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.472473, 33.299763, 34.454037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238624, -0.912146, -0.333238,
		-0.234462, 0.387113, -0.891723,
		0.942383, -0.134655, -0.306238,
		27.755188, 33.259365, 34.362164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.430975, 32.646461, 34.367378>,  <27.095520, 33.353626, 34.576530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.430975, 32.646461, 34.367378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.829920, 32.631611, 34.342442>,  <28.069286, 32.622700, 34.327480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.829920, 32.631611, 34.342442>,  <27.430975, 32.646461, 34.367378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.829920, 32.631611, 34.342442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008256, -0.795510, 0.605884,
		-0.072086, -0.604801, -0.793107,
		0.997364, -0.037128, -0.062338,
		28.129129, 32.620472, 34.323742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.869574, 32.039814, 34.144913>,  <27.430975, 32.646461, 34.367378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.869574, 32.039814, 34.144913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.079567, 32.223701, 34.431423>,  <28.205563, 32.334034, 34.603329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.079567, 32.223701, 34.431423>,  <27.869574, 32.039814, 34.144913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.079567, 32.223701, 34.431423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204339, -0.748884, 0.630411,
		0.826218, -0.477320, -0.299215,
		0.524985, 0.459715, 0.716277,
		28.237062, 32.361614, 34.646305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.361837, 31.743002, 34.359348>,  <27.869574, 32.039814, 34.144913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.361837, 31.743002, 34.359348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.346731, 31.946617, 34.703316>,  <28.337667, 32.068787, 34.909695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.346731, 31.946617, 34.703316>,  <28.361837, 31.743002, 34.359348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.346731, 31.946617, 34.703316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166116, -0.851755, 0.496909,
		0.985383, -0.124080, 0.116726,
		-0.037766, 0.509036, 0.859916,
		28.335402, 32.099327, 34.961292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.735716, 31.393650, 34.705074>,  <28.361837, 31.743002, 34.359348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.735716, 31.393650, 34.705074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.543045, 31.614376, 34.977394>,  <28.427443, 31.746811, 35.140785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.543045, 31.614376, 34.977394>,  <28.735716, 31.393650, 34.705074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.543045, 31.614376, 34.977394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262496, -0.832039, 0.488678,
		0.836111, 0.056678, 0.545624,
		-0.481678, 0.551813, 0.680800,
		28.398542, 31.779921, 35.181633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.756027, 31.071793, 35.269623>,  <28.735716, 31.393650, 34.705074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.756027, 31.071793, 35.269623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.449429, 31.309851, 35.366192>,  <28.265469, 31.452684, 35.424133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.449429, 31.309851, 35.366192>,  <28.756027, 31.071793, 35.269623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.449429, 31.309851, 35.366192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383193, -0.725448, 0.571741,
		0.515406, 0.345728, 0.784110,
		-0.766499, 0.595144, 0.241420,
		28.219479, 31.488394, 35.438618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.763399, 31.175896, 35.997547>,  <28.756027, 31.071793, 35.269623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.763399, 31.175896, 35.997547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.388988, 31.213123, 35.861786>,  <28.164343, 31.235460, 35.780331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.388988, 31.213123, 35.861786>,  <28.763399, 31.175896, 35.997547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.388988, 31.213123, 35.861786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286543, -0.761464, 0.581434,
		-0.204328, 0.641491, 0.739419,
		-0.936025, 0.093071, -0.339403,
		28.108181, 31.241045, 35.759964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.363956, 30.921438, 36.514336>,  <28.763399, 31.175896, 35.997547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.363956, 30.921438, 36.514336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.087938, 30.930723, 36.224979>,  <27.922327, 30.936295, 36.051365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.087938, 30.930723, 36.224979>,  <28.363956, 30.921438, 36.514336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.087938, 30.930723, 36.224979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414838, -0.831703, 0.369025,
		-0.593081, 0.554735, 0.583545,
		-0.690047, 0.023215, -0.723392,
		27.880924, 30.937687, 36.007961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.849762, 31.445986, 36.834454>,  <28.363956, 30.921438, 36.514336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.849762, 31.445986, 36.834454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.585703, 31.397676, 36.537907>,  <27.427267, 31.368690, 36.359978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.585703, 31.397676, 36.537907>,  <27.849762, 31.445986, 36.834454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.585703, 31.397676, 36.537907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255354, -0.892122, 0.372711,
		-0.706399, 0.435354, 0.558092,
		-0.660147, -0.120771, -0.741363,
		27.387659, 31.361444, 36.315498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.089151, 31.454098, 37.058395>,  <27.849762, 31.445986, 36.834454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.089151, 31.454098, 37.058395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.126791, 31.225407, 36.732384>,  <27.149374, 31.088192, 36.536777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.126791, 31.225407, 36.732384>,  <27.089151, 31.454098, 37.058395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.126791, 31.225407, 36.732384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422222, -0.764309, 0.487401,
		-0.901595, 0.298259, -0.313317,
		0.094099, -0.571728, -0.815029,
		27.155020, 31.053888, 36.487873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.439333, 31.193077, 36.964088>,  <27.089151, 31.454098, 37.058395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.439333, 31.193077, 36.964088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.684027, 30.956850, 36.753563>,  <26.830843, 30.815113, 36.627247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.684027, 30.956850, 36.753563>,  <26.439333, 31.193077, 36.964088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.684027, 30.956850, 36.753563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286312, -0.785514, 0.548628,
		-0.737430, -0.184926, -0.649615,
		0.611737, -0.590567, -0.526315,
		26.867548, 30.779680, 36.595669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.052412, 30.626839, 36.756542>,  <26.439333, 31.193077, 36.964088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.052412, 30.626839, 36.756542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.442894, 30.543236, 36.779655>,  <26.677183, 30.493074, 36.793522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.442894, 30.543236, 36.779655>,  <26.052412, 30.626839, 36.756542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.442894, 30.543236, 36.779655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194446, -0.725765, 0.659891,
		-0.095982, -0.655425, -0.749137,
		0.976206, -0.209005, 0.057784,
		26.735756, 30.480534, 36.796989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.327614, 29.879122, 36.481987>,  <26.052412, 30.626839, 36.756542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.327614, 29.879122, 36.481987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.536514, 30.027771, 36.789013>,  <26.661856, 30.116961, 36.973228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.536514, 30.027771, 36.789013>,  <26.327614, 29.879122, 36.481987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.536514, 30.027771, 36.789013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364195, -0.716660, 0.594778,
		0.771113, -0.590166, -0.238934,
		0.522252, 0.371623, 0.767561,
		26.693190, 30.139257, 37.019279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.885996, 29.408182, 36.783878>,  <26.327614, 29.879122, 36.481987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.885996, 29.408182, 36.783878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.717852, 29.656481, 37.048595>,  <26.616964, 29.805460, 37.207424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.717852, 29.656481, 37.048595>,  <26.885996, 29.408182, 36.783878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.717852, 29.656481, 37.048595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291303, -0.783079, 0.549482,
		0.859325, 0.038198, 0.510001,
		-0.420360, 0.620749, 0.661792,
		26.591743, 29.842705, 37.247131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.475504, 29.010063, 36.793610>,  <26.885996, 29.408182, 36.783878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.475504, 29.010063, 36.793610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.612595, 29.301863, 37.030380>,  <27.694849, 29.476942, 37.172443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.612595, 29.301863, 37.030380>,  <27.475504, 29.010063, 36.793610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.612595, 29.301863, 37.030380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011716, 0.633353, -0.773774,
		-0.939362, 0.258258, 0.225613,
		0.342726, 0.729498, 0.591923,
		27.715412, 29.520712, 37.207958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.649445, 29.777050, 36.723969>,  <27.475504, 29.010063, 36.793610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.649445, 29.777050, 36.723969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.313299, 29.940771, 36.581837>,  <27.111612, 30.039003, 36.496555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.313299, 29.940771, 36.581837>,  <27.649445, 29.777050, 36.723969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.313299, 29.940771, 36.581837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526354, 0.772731, -0.354737,
		0.129381, -0.485138, -0.864813,
		-0.840364, 0.409302, -0.355331,
		27.061190, 30.063562, 36.475239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.695995, 30.001400, 36.001381>,  <27.649445, 29.777050, 36.723969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.695995, 30.001400, 36.001381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.429941, 30.236525, 36.185585>,  <27.270308, 30.377600, 36.296108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.429941, 30.236525, 36.185585>,  <27.695995, 30.001400, 36.001381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.429941, 30.236525, 36.185585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336516, 0.786494, -0.517865,
		-0.666595, -0.189483, -0.720935,
		-0.665138, 0.587812, 0.460509,
		27.230400, 30.412868, 36.323738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.276024, 30.363802, 35.382538>,  <27.695995, 30.001400, 36.001381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.276024, 30.363802, 35.382538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.240614, 30.578627, 35.718090>,  <27.219368, 30.707521, 35.919422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.240614, 30.578627, 35.718090>,  <27.276024, 30.363802, 35.382538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.240614, 30.578627, 35.718090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402498, 0.789658, -0.463072,
		-0.911131, 0.296656, -0.286071,
		-0.088525, 0.537062, 0.838885,
		27.214056, 30.739746, 35.969757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.082497, 31.011694, 35.188065>,  <27.276024, 30.363802, 35.382538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.082497, 31.011694, 35.188065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.242443, 31.068733, 35.550232>,  <27.338411, 31.102957, 35.767532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.242443, 31.068733, 35.550232>,  <27.082497, 31.011694, 35.188065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.242443, 31.068733, 35.550232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593648, 0.712342, -0.374367,
		-0.698348, 0.687194, 0.200189,
		0.399865, 0.142596, 0.905414,
		27.362402, 31.111511, 35.821857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.874929, 31.660006, 35.400776>,  <27.082497, 31.011694, 35.188065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.874929, 31.660006, 35.400776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.223803, 31.534081, 35.550545>,  <27.433126, 31.458527, 35.640408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.223803, 31.534081, 35.550545>,  <26.874929, 31.660006, 35.400776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.223803, 31.534081, 35.550545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458101, 0.794104, -0.399428,
		-0.171586, 0.519898, 0.836818,
		0.872182, -0.314811, 0.374423,
		27.485456, 31.439636, 35.662872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.175148, 32.193340, 35.639500>,  <26.874929, 31.660006, 35.400776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.175148, 32.193340, 35.639500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.512417, 31.981707, 35.601276>,  <27.714779, 31.854727, 35.578342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.512417, 31.981707, 35.601276>,  <27.175148, 32.193340, 35.639500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.512417, 31.981707, 35.601276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467425, 0.809200, -0.355962,
		0.265656, 0.255473, 0.929602,
		0.843173, -0.529083, -0.095555,
		27.765369, 31.822981, 35.572609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.725046, 32.631157, 36.001614>,  <27.175148, 32.193340, 35.639500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.725046, 32.631157, 36.001614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.910822, 32.378334, 35.753487>,  <28.022287, 32.226639, 35.604610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.910822, 32.378334, 35.753487>,  <27.725046, 32.631157, 36.001614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.910822, 32.378334, 35.753487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400340, 0.774636, -0.489558,
		0.789952, -0.020970, 0.612809,
		0.464438, -0.632060, -0.620321,
		28.050154, 32.188717, 35.567390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.327707, 33.063553, 35.725735>,  <27.725046, 32.631157, 36.001614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.327707, 33.063553, 35.725735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.359148, 32.740963, 35.491325>,  <28.378014, 32.547409, 35.350681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.359148, 32.740963, 35.491325>,  <28.327707, 33.063553, 35.725735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.359148, 32.740963, 35.491325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529701, 0.531780, -0.660778,
		0.844534, -0.258477, 0.468990,
		0.078603, -0.806474, -0.586022,
		28.382729, 32.499020, 35.315517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.003443, 32.945232, 35.478088>,  <28.327707, 33.063553, 35.725735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.003443, 32.945232, 35.478088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.751152, 32.779640, 35.215546>,  <28.599777, 32.680286, 35.058022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.751152, 32.779640, 35.215546>,  <29.003443, 32.945232, 35.478088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.751152, 32.779640, 35.215546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379618, 0.573098, -0.726257,
		0.676813, -0.707234, -0.204315,
		-0.630727, -0.413978, -0.656359,
		28.561934, 32.655449, 35.018639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.351419, 32.590809, 35.021439>,  <29.003443, 32.945232, 35.478088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.351419, 32.590809, 35.021439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.008303, 32.725670, 34.866249>,  <28.802433, 32.806587, 34.773136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.008303, 32.725670, 34.866249>,  <29.351419, 32.590809, 35.021439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.008303, 32.725670, 34.866249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512684, 0.615221, -0.598881,
		0.036774, -0.712622, -0.700583,
		-0.857790, 0.337154, -0.387974,
		28.750965, 32.826817, 34.749855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.175753, 32.570084, 34.185402>,  <29.351419, 32.590809, 35.021439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.175753, 32.570084, 34.185402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.962547, 32.865772, 34.350060>,  <28.834625, 33.043186, 34.448853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.962547, 32.865772, 34.350060>,  <29.175753, 32.570084, 34.185402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.962547, 32.865772, 34.350060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335954, 0.631422, -0.698886,
		-0.776552, -0.234220, -0.584899,
		-0.533011, 0.739221, 0.411645,
		28.802645, 33.087540, 34.473553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.690603, 32.933926, 33.737446>,  <29.175753, 32.570084, 34.185402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.690603, 32.933926, 33.737446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.849266, 33.188080, 34.002457>,  <28.944464, 33.340572, 34.161465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.849266, 33.188080, 34.002457>,  <28.690603, 32.933926, 33.737446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.849266, 33.188080, 34.002457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277666, 0.604882, -0.746337,
		-0.874965, 0.480003, 0.063506,
		0.396658, 0.635386, 0.662531,
		28.968264, 33.378696, 34.201218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.491613, 33.530277, 33.516396>,  <28.690603, 32.933926, 33.737446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.491613, 33.530277, 33.516396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.836872, 33.570080, 33.714417>,  <29.044027, 33.593960, 33.833229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.836872, 33.570080, 33.714417>,  <28.491613, 33.530277, 33.516396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.836872, 33.570080, 33.714417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431772, 0.362894, -0.825761,
		-0.261819, 0.926502, 0.270267,
		0.863148, 0.099506, 0.495050,
		29.095816, 33.599930, 33.862930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.798824, 34.224979, 33.435970>,  <28.491613, 33.530277, 33.516396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.798824, 34.224979, 33.435970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.048882, 33.917313, 33.489002>,  <29.198915, 33.732712, 33.520821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.048882, 33.917313, 33.489002>,  <28.798824, 34.224979, 33.435970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.048882, 33.917313, 33.489002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415299, 0.183970, -0.890888,
		0.660851, 0.611994, 0.434442,
		0.625143, -0.769167, 0.132583,
		29.236423, 33.686562, 33.528778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.495495, 34.439152, 33.248608>,  <28.798824, 34.224979, 33.435970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.495495, 34.439152, 33.248608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.498346, 34.041553, 33.204945>,  <29.500057, 33.802994, 33.178745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.498346, 34.041553, 33.204945>,  <29.495495, 34.439152, 33.248608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.498346, 34.041553, 33.204945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590009, 0.092316, -0.802102,
		0.807365, -0.058689, 0.587126,
		0.007127, -0.993999, -0.109160,
		29.500484, 33.743355, 33.172195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.904917, 34.239117, 32.660778>,  <29.495495, 34.439152, 33.248608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.904917, 34.239117, 32.660778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.972000, 34.464714, 32.984207>,  <30.012249, 34.600071, 33.178265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.972000, 34.464714, 32.984207>,  <29.904917, 34.239117, 32.660778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.972000, 34.464714, 32.984207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833665, -0.518910, 0.189035,
		0.526191, 0.642377, -0.557202,
		0.167706, 0.563989, 0.808574,
		30.022312, 34.633911, 33.226780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.458761, 34.325775, 32.218880>,  <29.904917, 34.239117, 32.660778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.458761, 34.325775, 32.218880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.488155, 33.938683, 32.315285>,  <30.505791, 33.706425, 32.373127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.488155, 33.938683, 32.315285>,  <30.458761, 34.325775, 32.218880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.488155, 33.938683, 32.315285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.995153, -0.055318, 0.081304,
		-0.065348, -0.245822, -0.967110,
		0.073484, -0.967735, 0.241015,
		30.510201, 33.648361, 32.387589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.806234, 34.068954, 31.958178>,  <30.458761, 34.325775, 32.218880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.806234, 34.068954, 31.958178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.001471, 33.868702, 32.244152>,  <30.118612, 33.748550, 32.415737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.001471, 33.868702, 32.244152>,  <29.806234, 34.068954, 31.958178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.001471, 33.868702, 32.244152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852022, -0.095658, 0.514692,
		-0.189284, -0.860357, -0.473242,
		0.488088, -0.500636, 0.714936,
		30.147898, 33.718510, 32.458633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.928186, 33.299465, 32.023933>,  <29.806234, 34.068954, 31.958178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.928186, 33.299465, 32.023933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.597700, 33.490582, 31.904547>,  <29.399408, 33.605251, 31.832914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.597700, 33.490582, 31.904547>,  <29.928186, 33.299465, 32.023933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.597700, 33.490582, 31.904547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563047, -0.717835, 0.409501,
		-0.018597, 0.506389, 0.862105,
		-0.826216, 0.477790, -0.298470,
		29.349834, 33.633919, 31.815006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.548088, 33.215851, 32.614330>,  <29.928186, 33.299465, 32.023933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.548088, 33.215851, 32.614330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.301012, 33.249233, 32.301540>,  <29.152765, 33.269264, 32.113865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.301012, 33.249233, 32.301540>,  <29.548088, 33.215851, 32.614330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.301012, 33.249233, 32.301540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549990, -0.756578, 0.353695,
		-0.562109, 0.648556, 0.513234,
		-0.617692, 0.083458, -0.781979,
		29.115704, 33.274269, 32.066948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.901913, 33.271610, 32.789684>,  <29.548088, 33.215851, 32.614330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.901913, 33.271610, 32.789684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.834717, 33.165817, 32.409824>,  <28.794399, 33.102341, 32.181908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.834717, 33.165817, 32.409824>,  <28.901913, 33.271610, 32.789684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.834717, 33.165817, 32.409824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549706, -0.774521, 0.312954,
		-0.818293, 0.574599, -0.015280,
		-0.167988, -0.264487, -0.949645,
		28.784321, 33.086472, 32.124931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.240931, 33.176670, 32.888668>,  <28.901913, 33.271610, 32.789684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.240931, 33.176670, 32.888668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.358965, 32.975536, 32.563686>,  <28.429785, 32.854858, 32.368698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.358965, 32.975536, 32.563686>,  <28.240931, 33.176670, 32.888668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.358965, 32.975536, 32.563686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611891, -0.752527, 0.243502,
		-0.733835, 0.425280, -0.529738,
		0.295085, -0.502832, -0.812456,
		28.447491, 32.824688, 32.319950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.830059, 32.647881, 32.905437>,  <28.240931, 33.176670, 32.888668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.830059, 32.647881, 32.905437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.076101, 32.502937, 32.625340>,  <28.223726, 32.415970, 32.457283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.076101, 32.502937, 32.625340>,  <27.830059, 32.647881, 32.905437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.076101, 32.502937, 32.625340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399506, -0.908920, 0.119413,
		-0.679735, 0.206299, -0.703848,
		0.615107, -0.362360, -0.700242,
		28.260633, 32.394230, 32.415268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.501499, 32.160881, 32.454067>,  <27.830059, 32.647881, 32.905437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.501499, 32.160881, 32.454067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.892618, 32.077576, 32.444801>,  <28.127291, 32.027592, 32.439243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.892618, 32.077576, 32.444801>,  <27.501499, 32.160881, 32.454067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.892618, 32.077576, 32.444801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208056, -0.978054, 0.011064,
		-0.024961, -0.005999, -0.999670,
		0.977798, -0.208264, -0.023165,
		28.185957, 32.015095, 32.437851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.681721, 31.686123, 31.928789>,  <27.501499, 32.160881, 32.454067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.681721, 31.686123, 31.928789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.933516, 31.634382, 32.235256>,  <28.084593, 31.603338, 32.419136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.933516, 31.634382, 32.235256>,  <27.681721, 31.686123, 31.928789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.933516, 31.634382, 32.235256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236981, -0.971027, 0.030768,
		0.739990, -0.200935, -0.641904,
		0.629488, -0.129351, 0.766168,
		28.122362, 31.595577, 32.465107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.349581, 31.584356, 31.538048>,  <27.681721, 31.686123, 31.928789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.349581, 31.584356, 31.538048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.423689, 31.917168, 31.328894>,  <28.468153, 32.116856, 31.203402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.423689, 31.917168, 31.328894>,  <28.349581, 31.584356, 31.538048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.423689, 31.917168, 31.328894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118623, -0.509269, -0.852393,
		-0.975502, 0.219949, 0.004345,
		0.185270, 0.832026, -0.522883,
		28.479271, 32.166775, 31.172029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.813185, 31.601236, 30.931934>,  <28.349581, 31.584356, 31.538048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.813185, 31.601236, 30.931934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.118820, 31.828878, 30.810419>,  <28.302202, 31.965464, 30.737511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.118820, 31.828878, 30.810419>,  <27.813185, 31.601236, 30.931934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.118820, 31.828878, 30.810419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069149, -0.540447, -0.838531,
		-0.641395, 0.619705, -0.452303,
		0.764088, 0.569106, -0.303788,
		28.348047, 31.999611, 30.719282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.782238, 31.577682, 30.204155>,  <27.813185, 31.601236, 30.931934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.782238, 31.577682, 30.204155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.143383, 31.738359, 30.265444>,  <28.360071, 31.834766, 30.302217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.143383, 31.738359, 30.265444>,  <27.782238, 31.577682, 30.204155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.143383, 31.738359, 30.265444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328953, -0.415987, -0.847788,
		-0.276812, 0.815841, -0.507719,
		0.902865, 0.401694, 0.153223,
		28.414242, 31.858868, 30.311411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.043259, 31.819344, 29.521708>,  <27.782238, 31.577682, 30.204155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.043259, 31.819344, 29.521708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.378338, 31.797798, 29.739098>,  <28.579386, 31.784870, 29.869532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.378338, 31.797798, 29.739098>,  <28.043259, 31.819344, 29.521708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.378338, 31.797798, 29.739098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444779, -0.510172, -0.736136,
		0.316916, 0.858384, -0.403412,
		0.837697, -0.053864, 0.543473,
		28.629646, 31.781639, 29.902140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.637089, 31.814362, 29.023483>,  <28.043259, 31.819344, 29.521708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.637089, 31.814362, 29.023483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.828297, 31.689552, 29.351908>,  <28.943022, 31.614666, 29.548962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.828297, 31.689552, 29.351908>,  <28.637089, 31.814362, 29.023483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.828297, 31.689552, 29.351908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761794, -0.318041, -0.564376,
		0.437229, 0.895261, 0.085668,
		0.478018, -0.312022, 0.821061,
		28.971703, 31.595945, 29.598227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.312105, 32.056271, 28.957787>,  <28.637089, 31.814362, 29.023483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.312105, 32.056271, 28.957787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.344820, 31.744753, 29.206558>,  <29.364449, 31.557842, 29.355822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.344820, 31.744753, 29.206558>,  <29.312105, 32.056271, 28.957787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.344820, 31.744753, 29.206558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644944, -0.434393, -0.628769,
		0.759841, 0.452535, 0.466748,
		0.081788, -0.778790, 0.621929,
		29.369356, 31.511116, 29.393137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.981466, 31.861839, 28.936775>,  <29.312105, 32.056271, 28.957787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.981466, 31.861839, 28.936775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.822500, 31.527679, 29.088652>,  <29.727119, 31.327183, 29.179777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.822500, 31.527679, 29.088652>,  <29.981466, 31.861839, 28.936775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.822500, 31.527679, 29.088652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621475, -0.549461, -0.558446,
		0.675152, 0.014032, 0.737546,
		-0.397417, -0.835401, 0.379691,
		29.703276, 31.277060, 29.202559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.546055, 31.512108, 29.074072>,  <29.981466, 31.861839, 28.936775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.546055, 31.512108, 29.074072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.259550, 31.235357, 29.037674>,  <30.087648, 31.069307, 29.015835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.259550, 31.235357, 29.037674>,  <30.546055, 31.512108, 29.074072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.259550, 31.235357, 29.037674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540553, -0.467623, -0.699379,
		0.441331, -0.550126, 0.708935,
		-0.716261, -0.691875, -0.090996,
		30.044672, 31.027796, 29.010376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.926180, 30.906330, 29.071268>,  <30.546055, 31.512108, 29.074072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.926180, 30.906330, 29.071268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.566135, 30.795860, 28.936493>,  <30.350109, 30.729578, 28.855627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.566135, 30.795860, 28.936493>,  <30.926180, 30.906330, 29.071268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.566135, 30.795860, 28.936493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435340, -0.540435, -0.720007,
		0.016756, -0.794768, 0.606682,
		-0.900110, -0.276177, -0.336939,
		30.296103, 30.713007, 28.835411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.948544, 30.166641, 28.941158>,  <30.926180, 30.906330, 29.071268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.948544, 30.166641, 28.941158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.660854, 30.331846, 28.717680>,  <30.488241, 30.430969, 28.583593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.660854, 30.331846, 28.717680>,  <30.948544, 30.166641, 28.941158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.660854, 30.331846, 28.717680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284812, -0.558200, -0.779291,
		-0.633721, -0.719606, 0.283838,
		-0.719221, 0.413013, -0.558696,
		30.445087, 30.455750, 28.550072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.699686, 29.729881, 28.522335>,  <30.948544, 30.166641, 28.941158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.699686, 29.729881, 28.522335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.585526, 30.056005, 28.320814>,  <30.517029, 30.251680, 28.199902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.585526, 30.056005, 28.320814>,  <30.699686, 29.729881, 28.522335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.585526, 30.056005, 28.320814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220741, -0.455613, -0.862375,
		-0.932642, -0.357331, -0.049941,
		-0.285399, 0.815311, -0.503801,
		30.499907, 30.300598, 28.169674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.579046, 29.502443, 27.861305>,  <30.699686, 29.729881, 28.522335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.579046, 29.502443, 27.861305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.605904, 29.900352, 27.830534>,  <30.622017, 30.139097, 27.812071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.605904, 29.900352, 27.830534>,  <30.579046, 29.502443, 27.861305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.605904, 29.900352, 27.830534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312089, -0.094171, -0.945374,
		-0.947677, 0.039467, -0.316781,
		0.067142, 0.994774, -0.076926,
		30.626047, 30.198784, 27.807457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.110750, 29.653675, 27.376171>,  <30.579046, 29.502443, 27.861305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.110750, 29.653675, 27.376171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.356665, 29.969057, 27.383890>,  <30.504213, 30.158287, 27.388521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.356665, 29.969057, 27.383890>,  <30.110750, 29.653675, 27.376171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.356665, 29.969057, 27.383890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101047, -0.054477, -0.993389,
		-0.782192, 0.612674, -0.113163,
		0.614788, 0.788456, 0.019297,
		30.541101, 30.205593, 27.389679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.901352, 30.133354, 26.917814>,  <30.110750, 29.653675, 27.376171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.901352, 30.133354, 26.917814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.287714, 30.222792, 26.970013>,  <30.519531, 30.276453, 27.001331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.287714, 30.222792, 26.970013>,  <29.901352, 30.133354, 26.917814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.287714, 30.222792, 26.970013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125374, 0.037017, -0.991419,
		-0.226504, 0.973980, 0.007722,
		0.965908, 0.223592, 0.130496,
		30.577486, 30.289869, 27.009161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.016481, 30.737764, 26.418226>,  <29.901352, 30.133354, 26.917814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.016481, 30.737764, 26.418226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.377531, 30.586304, 26.500095>,  <30.594162, 30.495428, 26.549217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.377531, 30.586304, 26.500095>,  <30.016481, 30.737764, 26.418226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.377531, 30.586304, 26.500095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150428, -0.168017, -0.974239,
		0.403284, 0.910162, -0.094697,
		0.902626, -0.378650, 0.204672,
		30.648319, 30.472710, 26.561497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.445606, 31.194845, 26.036903>,  <30.016481, 30.737764, 26.418226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.445606, 31.194845, 26.036903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.644772, 30.859924, 26.127243>,  <30.764271, 30.658972, 26.181446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.644772, 30.859924, 26.127243>,  <30.445606, 31.194845, 26.036903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.644772, 30.859924, 26.127243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218342, -0.131003, -0.967039,
		0.839291, 0.530814, 0.117590,
		0.497913, -0.837302, 0.225849,
		30.794146, 30.608734, 26.194998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.113794, 31.345455, 25.786297>,  <30.445606, 31.194845, 26.036903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.113794, 31.345455, 25.786297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.100611, 30.949907, 25.844326>,  <31.092701, 30.712578, 25.879143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.100611, 30.949907, 25.844326>,  <31.113794, 31.345455, 25.786297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.100611, 30.949907, 25.844326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320447, -0.147945, -0.935642,
		0.946693, 0.015651, 0.321757,
		-0.032959, -0.988872, 0.145073,
		31.090723, 30.653246, 25.887848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.848665, 31.014378, 25.677979>,  <31.113794, 31.345455, 25.786297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.848665, 31.014378, 25.677979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.572966, 30.736376, 25.596094>,  <31.407545, 30.569574, 25.546963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.572966, 30.736376, 25.596094>,  <31.848665, 31.014378, 25.677979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.572966, 30.736376, 25.596094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322348, -0.041119, -0.945728,
		0.648866, -0.717830, 0.252374,
		-0.689249, -0.695003, -0.204710,
		31.366190, 30.527874, 25.534681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.140209, 30.598694, 25.059633>,  <31.848665, 31.014378, 25.677979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.140209, 30.598694, 25.059633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.770329, 30.446415, 25.059885>,  <31.548401, 30.355047, 25.060036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.770329, 30.446415, 25.059885>,  <32.140209, 30.598694, 25.059633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.770329, 30.446415, 25.059885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100236, -0.245060, -0.964312,
		0.367266, -0.891636, 0.264767,
		-0.924699, -0.380698, 0.000628,
		31.492918, 30.332205, 25.060074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.144821, 29.951624, 24.546917>,  <32.140209, 30.598694, 25.059633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.144821, 29.951624, 24.546917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.759321, 30.052486, 24.581795>,  <31.528021, 30.113003, 24.602722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.759321, 30.052486, 24.581795>,  <32.144821, 29.951624, 24.546917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.759321, 30.052486, 24.581795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163429, -0.299595, -0.939965,
		-0.210891, -0.920142, 0.329944,
		-0.963751, 0.252153, 0.087196,
		31.470196, 30.128132, 24.607954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.802851, 29.361742, 24.296301>,  <32.144821, 29.951624, 24.546917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.802851, 29.361742, 24.296301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.559912, 29.676580, 24.253206>,  <31.414148, 29.865484, 24.227348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.559912, 29.676580, 24.253206>,  <31.802851, 29.361742, 24.296301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.559912, 29.676580, 24.253206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071340, -0.189104, -0.979362,
		-0.791226, -0.587127, 0.171004,
		-0.607348, 0.787097, -0.107739,
		31.377707, 29.912710, 24.220884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.419264, 29.204735, 23.701544>,  <31.802851, 29.361742, 24.296301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.419264, 29.204735, 23.701544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.359165, 29.596161, 23.757881>,  <31.323107, 29.831017, 23.791683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.359165, 29.596161, 23.757881>,  <31.419264, 29.204735, 23.701544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.359165, 29.596161, 23.757881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038964, 0.148210, -0.988188,
		-0.987881, -0.142982, -0.060396,
		-0.150244, 0.978565, 0.140842,
		31.314093, 29.889730, 23.800135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.010172, 29.438299, 23.159698>,  <31.419264, 29.204735, 23.701544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.010172, 29.438299, 23.159698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.142141, 29.785845, 23.307331>,  <31.221323, 29.994373, 23.395910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.142141, 29.785845, 23.307331>,  <31.010172, 29.438299, 23.159698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.142141, 29.785845, 23.307331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002782, 0.390079, -0.920777,
		-0.944003, 0.304814, 0.126280,
		0.329925, 0.868865, 0.369084,
		31.241119, 30.046505, 23.418056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.539303, 30.003010, 22.942455>,  <31.010172, 29.438299, 23.159698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.539303, 30.003010, 22.942455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.875673, 30.208460, 23.010616>,  <31.077496, 30.331730, 23.051514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.875673, 30.208460, 23.010616>,  <30.539303, 30.003010, 22.942455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.875673, 30.208460, 23.010616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016054, 0.291071, -0.956567,
		-0.540914, 0.807136, 0.236523,
		0.840924, 0.513623, 0.170403,
		31.127951, 30.362547, 23.061737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.514771, 30.577583, 22.540356>,  <30.539303, 30.003010, 22.942455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.514771, 30.577583, 22.540356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.902699, 30.517054, 22.616827>,  <31.135456, 30.480736, 22.662710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.902699, 30.517054, 22.616827>,  <30.514771, 30.577583, 22.540356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.902699, 30.517054, 22.616827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213044, 0.144590, -0.966285,
		0.118580, 0.977852, 0.172465,
		0.969820, -0.151324, 0.191180,
		31.193645, 30.471657, 22.674181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.847445, 31.046406, 22.086267>,  <30.514771, 30.577583, 22.540356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.847445, 31.046406, 22.086267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.152706, 30.805573, 22.180153>,  <31.335863, 30.661072, 22.236485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.152706, 30.805573, 22.180153>,  <30.847445, 31.046406, 22.086267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.152706, 30.805573, 22.180153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338418, 0.062940, -0.938888,
		0.550516, 0.795949, 0.251789,
		0.763155, -0.602083, 0.234714,
		31.381653, 30.624949, 22.250566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.412054, 31.401247, 21.802504>,  <30.847445, 31.046406, 22.086267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.412054, 31.401247, 21.802504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.542572, 31.028784, 21.867590>,  <31.620882, 30.805305, 21.906643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.542572, 31.028784, 21.867590>,  <31.412054, 31.401247, 21.802504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.542572, 31.028784, 21.867590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382276, -0.027448, -0.923641,
		0.864521, 0.363582, 0.347003,
		0.326295, -0.931158, 0.162718,
		31.640461, 30.749437, 21.916405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.093719, 31.372751, 21.523796>,  <31.412054, 31.401247, 21.802504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.093719, 31.372751, 21.523796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.981827, 30.988724, 21.525684>,  <31.914692, 30.758307, 21.526817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.981827, 30.988724, 21.525684>,  <32.093719, 31.372751, 21.523796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.981827, 30.988724, 21.525684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363078, -0.110337, -0.925203,
		0.888778, -0.257090, 0.379444,
		-0.279727, -0.960068, 0.004721,
		31.897909, 30.700703, 21.527102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.682266, 30.955511, 21.263552>,  <32.093719, 31.372751, 21.523796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.682266, 30.955511, 21.263552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.350845, 30.737900, 21.210590>,  <32.151993, 30.607334, 21.178814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.350845, 30.737900, 21.210590>,  <32.682266, 30.955511, 21.263552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.350845, 30.737900, 21.210590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202008, -0.069913, -0.976885,
		0.522195, -0.836150, 0.167825,
		-0.828556, -0.544027, -0.132401,
		32.102280, 30.574692, 21.170870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.965130, 30.364614, 20.824556>,  <32.682266, 30.955511, 21.263552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.965130, 30.364614, 20.824556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.568810, 30.369606, 20.770662>,  <32.331017, 30.372601, 20.738325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.568810, 30.369606, 20.770662>,  <32.965130, 30.364614, 20.824556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.568810, 30.369606, 20.770662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135295, 0.106971, -0.985014,
		0.002117, -0.994183, -0.107675,
		-0.990803, 0.012482, -0.134734,
		32.271568, 30.373350, 20.730242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.835003, 29.961138, 20.209190>,  <32.965130, 30.364614, 20.824556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.835003, 29.961138, 20.209190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.522907, 30.203453, 20.271469>,  <32.335648, 30.348843, 20.308836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.522907, 30.203453, 20.271469>,  <32.835003, 29.961138, 20.209190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.522907, 30.203453, 20.271469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139247, 0.074448, -0.987455,
		-0.609779, -0.792136, 0.026267,
		-0.780243, 0.605787, 0.155699,
		32.288834, 30.385189, 20.318178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.317150, 29.575808, 19.924839>,  <32.835003, 29.961138, 20.209190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.317150, 29.575808, 19.924839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.216370, 29.961994, 19.951355>,  <32.155903, 30.193707, 19.967264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.216370, 29.961994, 19.951355>,  <32.317150, 29.575808, 19.924839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.216370, 29.961994, 19.951355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054935, 0.054122, -0.997022,
		-0.966180, -0.254842, 0.039402,
		-0.251950, 0.965467, 0.066291,
		32.140785, 30.251635, 19.971243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.657927, 29.699186, 19.486517>,  <32.317150, 29.575808, 19.924839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.657927, 29.699186, 19.486517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.875154, 30.032892, 19.524632>,  <32.005489, 30.233116, 19.547501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.875154, 30.032892, 19.524632>,  <31.657927, 29.699186, 19.486517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.875154, 30.032892, 19.524632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077899, 0.163045, -0.983539,
		-0.836067, 0.526706, 0.153533,
		0.543068, 0.834265, 0.095287,
		32.038074, 30.283171, 19.553217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.427301, 30.098854, 18.929588>,  <31.657927, 29.699186, 19.486517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.427301, 30.098854, 18.929588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.757975, 30.302141, 19.026176>,  <31.956379, 30.424114, 19.084129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.757975, 30.302141, 19.026176>,  <31.427301, 30.098854, 18.929588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.757975, 30.302141, 19.026176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067787, 0.336071, -0.939394,
		-0.558568, 0.792951, 0.243373,
		0.826684, 0.508218, 0.241470,
		32.005981, 30.454607, 19.098618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.294197, 30.708481, 18.549086>,  <31.427301, 30.098854, 18.929588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.294197, 30.708481, 18.549086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.680012, 30.700195, 18.654337>,  <31.911501, 30.695225, 18.717487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.680012, 30.700195, 18.654337>,  <31.294197, 30.708481, 18.549086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.680012, 30.700195, 18.654337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261604, 0.207375, -0.942634,
		-0.035042, 0.978042, 0.205440,
		0.964539, -0.020712, 0.263127,
		31.969374, 30.693981, 18.733274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.661152, 31.222097, 18.283005>,  <31.294197, 30.708481, 18.549086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.661152, 31.222097, 18.283005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.999041, 31.021748, 18.358442>,  <32.201775, 30.901537, 18.403706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.999041, 31.021748, 18.358442>,  <31.661152, 31.222097, 18.283005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.999041, 31.021748, 18.358442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345826, 0.241877, -0.906587,
		0.408469, 0.831036, 0.377534,
		0.844723, -0.500875, 0.188595,
		32.252457, 30.871485, 18.415020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.304287, 31.658915, 18.239029>,  <31.661152, 31.222097, 18.283005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.304287, 31.658915, 18.239029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.422741, 31.284191, 18.164526>,  <32.493813, 31.059357, 18.119823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.422741, 31.284191, 18.164526>,  <32.304287, 31.658915, 18.239029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.422741, 31.284191, 18.164526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454830, 0.309787, -0.834962,
		0.839900, 0.162547, 0.517828,
		0.296137, -0.936809, -0.186259,
		32.511581, 31.003149, 18.108648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.847282, 31.815989, 17.964975>,  <32.304287, 31.658915, 18.239029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.847282, 31.815989, 17.964975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.781715, 31.439985, 17.845297>,  <32.742374, 31.214384, 17.773489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.781715, 31.439985, 17.845297>,  <32.847282, 31.815989, 17.964975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.781715, 31.439985, 17.845297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240439, 0.256082, -0.936275,
		0.956724, -0.225406, 0.184039,
		-0.163913, -0.940007, -0.299196,
		32.732540, 31.157984, 17.755539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.393867, 31.595467, 17.484411>,  <32.847282, 31.815989, 17.964975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.393867, 31.595467, 17.484411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.081211, 31.352890, 17.426079>,  <32.893616, 31.207344, 17.391079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.081211, 31.352890, 17.426079>,  <33.393867, 31.595467, 17.484411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.081211, 31.352890, 17.426079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028428, 0.268199, -0.962944,
		0.623080, -0.748531, -0.226875,
		-0.781641, -0.606441, -0.145830,
		32.846718, 31.170958, 17.382330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.639988, 31.235920, 16.950268>,  <33.393867, 31.595467, 17.484411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.639988, 31.235920, 16.950268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.256851, 31.121164, 16.944143>,  <33.026970, 31.052311, 16.940468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.256851, 31.121164, 16.944143>,  <33.639988, 31.235920, 16.950268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.256851, 31.121164, 16.944143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070853, 0.287538, -0.955145,
		0.278392, -0.913802, -0.295743,
		-0.957850, -0.286859, -0.015303,
		32.969498, 31.035099, 16.939550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.513062, 30.656981, 16.332478>,  <33.639988, 31.235920, 16.950268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.513062, 30.656981, 16.332478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.181805, 30.858927, 16.429874>,  <32.983051, 30.980095, 16.488312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.181805, 30.858927, 16.429874>,  <33.513062, 30.656981, 16.332478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.181805, 30.858927, 16.429874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182122, 0.168471, -0.968736,
		-0.530103, -0.846598, -0.047570,
		-0.828144, 0.504866, 0.243491,
		32.933361, 31.010387, 16.502922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.095440, 30.456057, 15.800714>,  <33.513062, 30.656981, 16.332478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.095440, 30.456057, 15.800714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.905922, 30.775126, 15.949969>,  <32.792210, 30.966568, 16.039522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.905922, 30.775126, 15.949969>,  <33.095440, 30.456057, 15.800714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.905922, 30.775126, 15.949969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304941, 0.248891, -0.919274,
		-0.826151, -0.549336, 0.125319,
		-0.473800, 0.797673, 0.373137,
		32.763783, 31.014427, 16.061911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.357197, 30.472624, 15.565393>,  <33.095440, 30.456057, 15.800714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.357197, 30.472624, 15.565393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.485867, 30.842913, 15.644953>,  <32.563068, 31.065086, 15.692688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.485867, 30.842913, 15.644953>,  <32.357197, 30.472624, 15.565393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.485867, 30.842913, 15.644953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136414, 0.253182, -0.957753,
		-0.936971, 0.280955, 0.207725,
		0.321678, 0.925723, 0.198898,
		32.582371, 31.120630, 15.704622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.858507, 31.057425, 15.226216>,  <32.357197, 30.472624, 15.565393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.858507, 31.057425, 15.226216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.232098, 31.194046, 15.268233>,  <32.456253, 31.276018, 15.293444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.232098, 31.194046, 15.268233>,  <31.858507, 31.057425, 15.226216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.232098, 31.194046, 15.268233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009572, 0.317766, -0.948121,
		-0.357212, 0.884515, 0.300055,
		0.933974, 0.341552, 0.105043,
		32.512291, 31.296513, 15.299747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.794115, 31.670950, 14.747388>,  <31.858507, 31.057425, 15.226216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.794115, 31.670950, 14.747388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.181999, 31.629095, 14.835673>,  <32.414730, 31.603983, 14.888645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.181999, 31.629095, 14.835673>,  <31.794115, 31.670950, 14.747388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.181999, 31.629095, 14.835673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243964, 0.370230, -0.896332,
		0.012075, 0.923028, 0.384543,
		0.969709, -0.104638, 0.220715,
		32.472912, 31.597704, 14.901888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.257126, 32.318707, 14.522725>,  <31.794115, 31.670950, 14.747388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.257126, 32.318707, 14.522725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.492077, 31.995260, 14.536187>,  <32.633049, 31.801193, 14.544265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.492077, 31.995260, 14.536187>,  <32.257126, 32.318707, 14.522725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.492077, 31.995260, 14.536187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423315, 0.271521, -0.864338,
		0.689776, 0.521940, 0.501784,
		0.587378, -0.808613, 0.033656,
		32.668289, 31.752676, 14.546284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.214218, 32.611713, 15.186880>,  <32.257126, 32.318707, 14.522725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.214218, 32.611713, 15.186880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.273521, 33.002579, 15.125993>,  <32.309105, 33.237099, 15.089460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.273521, 33.002579, 15.125993>,  <32.214218, 32.611713, 15.186880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.273521, 33.002579, 15.125993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381767, -0.085437, -0.920301,
		-0.912290, 0.194556, 0.360382,
		0.148260, 0.977164, -0.152219,
		32.318001, 33.295727, 15.080327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.732470, 32.799633, 14.611685>,  <32.214218, 32.611713, 15.186880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.732470, 32.799633, 14.611685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.973633, 33.117867, 14.587845>,  <32.118332, 33.308807, 14.573541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.973633, 33.117867, 14.587845>,  <31.732470, 32.799633, 14.611685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.973633, 33.117867, 14.587845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067049, -0.023912, -0.997463,
		-0.794987, 0.605376, 0.038926,
		0.602909, 0.795580, -0.059600,
		32.154507, 33.356541, 14.569964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.427258, 33.456036, 14.354219>,  <31.732470, 32.799633, 14.611685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.427258, 33.456036, 14.354219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.814159, 33.391273, 14.276035>,  <32.046299, 33.352417, 14.229125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.814159, 33.391273, 14.276035>,  <31.427258, 33.456036, 14.354219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.814159, 33.391273, 14.276035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176786, 0.122796, -0.976559,
		0.182110, 0.979137, 0.090153,
		0.967255, -0.161903, -0.195460,
		32.104336, 33.342701, 14.217398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.684011, 34.146534, 14.200827>,  <31.427258, 33.456036, 14.354219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.684011, 34.146534, 14.200827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.840544, 33.811798, 14.047690>,  <31.934464, 33.610958, 13.955809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.840544, 33.811798, 14.047690>,  <31.684011, 34.146534, 14.200827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.840544, 33.811798, 14.047690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388060, 0.227158, -0.893201,
		0.834428, 0.498102, -0.235849,
		0.391330, -0.836835, -0.382841,
		31.957943, 33.560749, 13.932838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.425255, 34.507408, 14.058226>,  <31.684011, 34.146534, 14.200827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.425255, 34.507408, 14.058226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.232071, 34.819073, 13.898397>,  <32.116161, 35.006073, 13.802501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.232071, 34.819073, 13.898397>,  <32.425255, 34.507408, 14.058226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.232071, 34.819073, 13.898397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684180, -0.050997, 0.727528,
		0.546484, 0.624747, 0.557715,
		-0.482962, 0.779160, -0.399570,
		32.087181, 35.052822, 13.778526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.032387, 34.260338, 14.510674>,  <32.425255, 34.507408, 14.058226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.032387, 34.260338, 14.510674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.746429, 33.981098, 14.526597>,  <32.574856, 33.813553, 14.536151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.746429, 33.981098, 14.526597>,  <33.032387, 34.260338, 14.510674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.746429, 33.981098, 14.526597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150809, 0.209530, 0.966102,
		-0.682775, 0.684658, -0.255072,
		-0.714895, -0.698098, 0.039810,
		32.531960, 33.771667, 14.538540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.505966, 34.591984, 14.877075>,  <33.032387, 34.260338, 14.510674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.505966, 34.591984, 14.877075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.448624, 34.199810, 14.931021>,  <32.414219, 33.964504, 14.963388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.448624, 34.199810, 14.931021>,  <32.505966, 34.591984, 14.877075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.448624, 34.199810, 14.931021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075707, 0.146737, 0.986274,
		-0.986771, 0.131182, -0.095262,
		-0.143360, -0.980439, 0.134864,
		32.405617, 33.905678, 14.971480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.870779, 34.441742, 15.213496>,  <32.505966, 34.591984, 14.877075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.870779, 34.441742, 15.213496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.103695, 34.126850, 15.294703>,  <32.243443, 33.937916, 15.343427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.103695, 34.126850, 15.294703>,  <31.870779, 34.441742, 15.213496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.103695, 34.126850, 15.294703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206608, 0.098227, 0.973481,
		-0.786290, -0.608792, -0.105450,
		0.582289, -0.787225, 0.203016,
		32.278381, 33.890682, 15.355607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.450869, 34.002640, 15.667440>,  <31.870779, 34.441742, 15.213496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.450869, 34.002640, 15.667440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.825796, 33.878658, 15.731142>,  <32.050755, 33.804272, 15.769363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.825796, 33.878658, 15.731142>,  <31.450869, 34.002640, 15.667440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.825796, 33.878658, 15.731142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192604, -0.079944, 0.978015,
		-0.290406, -0.947385, -0.134631,
		0.937320, -0.309951, 0.159254,
		32.106991, 33.785671, 15.778918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.444218, 33.447613, 16.101097>,  <31.450869, 34.002640, 15.667440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.444218, 33.447613, 16.101097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.800785, 33.620911, 16.154278>,  <32.014725, 33.724888, 16.186186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.800785, 33.620911, 16.154278>,  <31.444218, 33.447613, 16.101097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.800785, 33.620911, 16.154278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198732, 0.110048, 0.973856,
		0.407288, -0.894532, 0.184198,
		0.891416, 0.433246, 0.132951,
		32.068211, 33.750885, 16.194162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.639931, 33.229019, 16.746794>,  <31.444218, 33.447613, 16.101097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.639931, 33.229019, 16.746794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.932835, 33.495487, 16.690214>,  <32.108578, 33.655369, 16.656267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.932835, 33.495487, 16.690214>,  <31.639931, 33.229019, 16.746794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.932835, 33.495487, 16.690214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099178, 0.101169, 0.989913,
		0.673763, -0.738905, 0.008013,
		0.732262, 0.666172, -0.141447,
		32.152512, 33.695339, 16.647779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.174206, 33.038853, 17.176168>,  <31.639931, 33.229019, 16.746794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.174206, 33.038853, 17.176168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.198013, 33.431988, 17.106325>,  <32.212299, 33.667870, 17.064419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.198013, 33.431988, 17.106325>,  <32.174206, 33.038853, 17.176168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.198013, 33.431988, 17.106325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038504, 0.177048, 0.983449,
		0.997484, -0.051810, 0.048381,
		0.059518, 0.982838, -0.174608,
		32.215870, 33.726837, 17.053944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.531898, 33.247917, 17.697504>,  <32.174206, 33.038853, 17.176168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.531898, 33.247917, 17.697504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.414448, 33.594109, 17.535156>,  <32.343975, 33.801823, 17.437748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.414448, 33.594109, 17.535156>,  <32.531898, 33.247917, 17.697504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.414448, 33.594109, 17.535156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222113, 0.351196, 0.909575,
		0.929757, 0.357228, 0.089112,
		-0.293630, 0.865477, -0.405872,
		32.326359, 33.853752, 17.413395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.899349, 33.786140, 17.851589>,  <32.531898, 33.247917, 17.697504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.899349, 33.786140, 17.851589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.535618, 33.937901, 17.783268>,  <32.317379, 34.028957, 17.742275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.535618, 33.937901, 17.783268>,  <32.899349, 33.786140, 17.851589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.535618, 33.937901, 17.783268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079116, 0.245360, 0.966198,
		0.408481, 0.892108, -0.193097,
		-0.909332, 0.379396, -0.170804,
		32.262817, 34.051720, 17.732027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.994514, 34.456982, 18.155312>,  <32.899349, 33.786140, 17.851589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.994514, 34.456982, 18.155312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.607437, 34.362255, 18.120701>,  <32.375191, 34.305420, 18.099936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.607437, 34.362255, 18.120701>,  <32.994514, 34.456982, 18.155312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.607437, 34.362255, 18.120701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151779, 0.273144, 0.949924,
		-0.201319, 0.932369, -0.300264,
		-0.967695, -0.236812, -0.086525,
		32.317127, 34.291210, 18.094744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.608284, 35.040291, 18.509085>,  <32.994514, 34.456982, 18.155312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.608284, 35.040291, 18.509085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.353302, 34.732845, 18.530550>,  <32.200314, 34.548378, 18.543428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.353302, 34.732845, 18.530550>,  <32.608284, 35.040291, 18.509085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.353302, 34.732845, 18.530550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162573, 0.202256, 0.965744,
		-0.753142, 0.606893, -0.253885,
		-0.637453, -0.768618, 0.053663,
		32.162067, 34.502258, 18.546648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.347309, 35.275963, 19.123886>,  <32.608284, 35.040291, 18.509085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.347309, 35.275963, 19.123886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.198132, 34.917000, 19.029591>,  <32.108624, 34.701622, 18.973013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.198132, 34.917000, 19.029591>,  <32.347309, 35.275963, 19.123886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.198132, 34.917000, 19.029591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091840, -0.217118, 0.971816,
		-0.923297, 0.384084, -0.001445,
		-0.372945, -0.897407, -0.235739,
		32.086246, 34.647778, 18.958870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.685143, 35.132843, 19.577848>,  <32.347309, 35.275963, 19.123886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.685143, 35.132843, 19.577848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.823780, 34.778934, 19.453232>,  <31.906963, 34.566589, 19.378462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.823780, 34.778934, 19.453232>,  <31.685143, 35.132843, 19.577848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.823780, 34.778934, 19.453232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093871, -0.363178, 0.926979,
		-0.933307, -0.292039, -0.208929,
		0.346593, -0.884768, -0.311543,
		31.927757, 34.513504, 19.359770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.302715, 34.741760, 19.918436>,  <31.685143, 35.132843, 19.577848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.302715, 34.741760, 19.918436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.588215, 34.487541, 19.800697>,  <31.759514, 34.335011, 19.730055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.588215, 34.487541, 19.800697>,  <31.302715, 34.741760, 19.918436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.588215, 34.487541, 19.800697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026166, -0.395763, 0.917980,
		-0.699914, -0.662908, -0.265845,
		0.713748, -0.635550, -0.294346,
		31.802340, 34.296875, 19.712393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.075253, 34.078964, 20.191521>,  <31.302715, 34.741760, 19.918436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.075253, 34.078964, 20.191521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.474434, 34.072880, 20.166681>,  <31.713943, 34.069229, 20.151777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.474434, 34.072880, 20.166681>,  <31.075253, 34.078964, 20.191521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.474434, 34.072880, 20.166681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054118, -0.316231, 0.947137,
		-0.034046, -0.948560, -0.314761,
		0.997954, -0.015212, -0.062101,
		31.773821, 34.068317, 20.148050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.304728, 33.359283, 20.365170>,  <31.075253, 34.078964, 20.191521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.304728, 33.359283, 20.365170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.613888, 33.606773, 20.421461>,  <31.799385, 33.755268, 20.455236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.613888, 33.606773, 20.421461>,  <31.304728, 33.359283, 20.365170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.613888, 33.606773, 20.421461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130002, -0.371487, 0.919292,
		0.621065, -0.692227, -0.367558,
		0.772902, 0.618723, 0.140727,
		31.845758, 33.792389, 20.463678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.837776, 32.957428, 20.622435>,  <31.304728, 33.359283, 20.365170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.837776, 32.957428, 20.622435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.934164, 33.324921, 20.747568>,  <31.991997, 33.545418, 20.822647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.934164, 33.324921, 20.747568>,  <31.837776, 32.957428, 20.622435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.934164, 33.324921, 20.747568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254702, -0.370896, 0.893064,
		0.936515, -0.135524, -0.323378,
		0.240971, 0.918732, 0.312831,
		32.006454, 33.600540, 20.841417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.329494, 32.880226, 21.020737>,  <31.837776, 32.957428, 20.622435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.329494, 32.880226, 21.020737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.240765, 33.257191, 21.120853>,  <32.187527, 33.483372, 21.180923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.240765, 33.257191, 21.120853>,  <32.329494, 32.880226, 21.020737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.240765, 33.257191, 21.120853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128658, -0.226155, 0.965557,
		0.966561, 0.246388, -0.071082,
		-0.221827, 0.942415, 0.250293,
		32.174217, 33.539917, 21.195942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.905762, 33.139244, 21.333170>,  <32.329494, 32.880226, 21.020737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.905762, 33.139244, 21.333170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.582626, 33.332912, 21.467619>,  <32.388744, 33.449116, 21.548288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.582626, 33.332912, 21.467619>,  <32.905762, 33.139244, 21.333170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.582626, 33.332912, 21.467619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244822, -0.243109, 0.938595,
		0.536158, 0.840520, 0.077855,
		-0.807835, 0.484174, 0.336122,
		32.340275, 33.478165, 21.568455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.099499, 33.448883, 22.003696>,  <32.905762, 33.139244, 21.333170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.099499, 33.448883, 22.003696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.699615, 33.456032, 22.010294>,  <32.459686, 33.460320, 22.014254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.699615, 33.456032, 22.010294>,  <33.099499, 33.448883, 22.003696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.699615, 33.456032, 22.010294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015053, -0.078078, 0.996834,
		0.019101, 0.996787, 0.077786,
		-0.999704, 0.017870, 0.016496,
		32.399704, 33.461391, 22.015244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.895782, 33.851311, 22.525141>,  <33.099499, 33.448883, 22.003696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.895782, 33.851311, 22.525141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.541019, 33.667240, 22.508957>,  <32.328163, 33.556797, 22.499247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.541019, 33.667240, 22.508957>,  <32.895782, 33.851311, 22.525141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.541019, 33.667240, 22.508957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052201, -0.186857, 0.980999,
		-0.458993, 0.867941, 0.189746,
		-0.886905, -0.460177, -0.040458,
		32.274948, 33.529186, 22.496819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.585098, 34.200665, 23.119802>,  <32.895782, 33.851311, 22.525141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.585098, 34.200665, 23.119802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.357246, 33.881268, 23.041893>,  <32.220535, 33.689629, 22.995148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.357246, 33.881268, 23.041893>,  <32.585098, 34.200665, 23.119802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.357246, 33.881268, 23.041893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294720, -0.022778, 0.955312,
		-0.767243, 0.601578, -0.222356,
		-0.569630, -0.798489, -0.194773,
		32.186356, 33.641720, 22.983461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.889973, 34.288887, 23.427193>,  <32.585098, 34.200665, 23.119802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.889973, 34.288887, 23.427193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.931309, 33.891632, 23.405294>,  <31.956110, 33.653278, 23.392155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.931309, 33.891632, 23.405294>,  <31.889973, 34.288887, 23.427193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.931309, 33.891632, 23.405294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341505, -0.087122, 0.935833,
		-0.934182, -0.078011, -0.348165,
		0.103338, -0.993138, -0.054746,
		31.962311, 33.593689, 23.388870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.343378, 33.960621, 23.715004>,  <31.889973, 34.288887, 23.427193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.343378, 33.960621, 23.715004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.600500, 33.654278, 23.708557>,  <31.754772, 33.470470, 23.704689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.600500, 33.654278, 23.708557>,  <31.343378, 33.960621, 23.715004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.600500, 33.654278, 23.708557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303572, -0.274001, 0.912561,
		-0.703312, -0.581704, -0.408623,
		0.642803, -0.765862, -0.016119,
		31.793341, 33.424519, 23.703722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.936228, 33.361656, 23.975719>,  <31.343378, 33.960621, 23.715004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.936228, 33.361656, 23.975719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.319351, 33.260170, 24.029726>,  <31.549225, 33.199280, 24.062130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.319351, 33.260170, 24.029726>,  <30.936228, 33.361656, 23.975719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.319351, 33.260170, 24.029726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191731, -0.214100, 0.957810,
		-0.214100, -0.943288, -0.253712,
		-0.957810, 0.253712, -0.135018,
		31.606695, 33.184055, 24.070232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.942638, 32.688511, 24.371958>,  <30.936228, 33.361656, 23.975719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.942638, 32.688511, 24.371958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.290220, 32.877789, 24.429928>,  <31.498770, 32.991356, 24.464710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.290220, 32.877789, 24.429928>,  <30.942638, 32.688511, 24.371958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.290220, 32.877789, 24.429928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116837, -0.088415, 0.989208,
		0.480898, -0.876512, -0.021542,
		0.868957, 0.473191, 0.144927,
		31.550907, 33.019745, 24.473406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.263987, 32.305992, 24.974257>,  <30.942638, 32.688511, 24.371958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.263987, 32.305992, 24.974257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.435818, 32.666691, 24.954977>,  <31.538916, 32.883110, 24.943409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.435818, 32.666691, 24.954977>,  <31.263987, 32.305992, 24.974257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.435818, 32.666691, 24.954977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017593, 0.061723, 0.997938,
		0.902859, -0.427843, 0.042379,
		0.429576, 0.901743, -0.048200,
		31.564692, 32.937214, 24.940517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.481846, 32.311916, 25.648363>,  <31.263987, 32.305992, 24.974257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.481846, 32.311916, 25.648363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.487276, 32.691116, 25.521168>,  <31.490534, 32.918636, 25.444851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.487276, 32.691116, 25.521168>,  <31.481846, 32.311916, 25.648363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.487276, 32.691116, 25.521168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244068, 0.311542, 0.918353,
		0.969663, 0.065143, 0.235605,
		0.013576, 0.947997, -0.317990,
		31.491348, 32.975517, 25.425770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.960161, 32.648212, 26.114214>,  <31.481846, 32.311916, 25.648363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.960161, 32.648212, 26.114214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.711443, 32.908840, 25.940395>,  <31.562212, 33.065216, 25.836103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.711443, 32.908840, 25.940395>,  <31.960161, 32.648212, 26.114214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.711443, 32.908840, 25.940395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303514, 0.311014, 0.900638,
		0.721976, 0.691904, 0.004372,
		-0.621796, 0.651566, -0.434548,
		31.524904, 33.104309, 25.810032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.214249, 33.324062, 26.471342>,  <31.960161, 32.648212, 26.114214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.214249, 33.324062, 26.471342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.848822, 33.386177, 26.320990>,  <31.629566, 33.423447, 26.230778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.848822, 33.386177, 26.320990>,  <32.214249, 33.324062, 26.471342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.848822, 33.386177, 26.320990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362781, 0.106576, 0.925760,
		0.183821, 0.982103, -0.041028,
		-0.913565, 0.155289, -0.375879,
		31.574753, 33.432762, 26.208225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.006771, 33.935608, 26.745996>,  <32.214249, 33.324062, 26.471342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.006771, 33.935608, 26.745996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.662184, 33.752960, 26.657127>,  <31.455431, 33.643372, 26.603806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.662184, 33.752960, 26.657127>,  <32.006771, 33.935608, 26.745996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.662184, 33.752960, 26.657127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357810, 0.235382, 0.903641,
		-0.360329, 0.857957, -0.366159,
		-0.861473, -0.456624, -0.222170,
		31.403742, 33.615974, 26.590477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.479584, 34.457245, 26.860865>,  <32.006771, 33.935608, 26.745996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.479584, 34.457245, 26.860865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.293150, 34.103958, 26.881601>,  <31.181290, 33.891987, 26.894043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.293150, 34.103958, 26.881601>,  <31.479584, 34.457245, 26.860865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.293150, 34.103958, 26.881601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492693, 0.307773, 0.813959,
		-0.734861, 0.353831, -0.578605,
		-0.466083, -0.883221, 0.051840,
		31.153324, 33.838993, 26.897154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.718874, 34.589828, 26.816574>,  <31.479584, 34.457245, 26.860865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.718874, 34.589828, 26.816574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.757854, 34.228176, 26.982969>,  <30.781242, 34.011185, 27.082806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.757854, 34.228176, 26.982969>,  <30.718874, 34.589828, 26.816574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.757854, 34.228176, 26.982969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589653, 0.284268, 0.755977,
		-0.801756, -0.318958, -0.505423,
		0.097449, -0.904134, 0.415988,
		30.787088, 33.956936, 27.107765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.051905, 34.471478, 27.039915>,  <30.718874, 34.589828, 26.816574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.051905, 34.471478, 27.039915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.264149, 34.188206, 27.226221>,  <30.391495, 34.018242, 27.338005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.264149, 34.188206, 27.226221>,  <30.051905, 34.471478, 27.039915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.264149, 34.188206, 27.226221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681757, -0.030064, 0.730961,
		-0.503650, -0.705390, -0.498760,
		0.530608, -0.708181, 0.465763,
		30.423330, 33.975750, 27.365950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.573355, 33.818611, 27.233778>,  <30.051905, 34.471478, 27.039915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.573355, 33.818611, 27.233778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.889229, 33.832348, 27.478800>,  <30.078753, 33.840591, 27.625813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.889229, 33.832348, 27.478800>,  <29.573355, 33.818611, 27.233778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.889229, 33.832348, 27.478800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613487, 0.034736, 0.788941,
		0.005806, -0.998807, 0.048490,
		0.789684, 0.034328, 0.612553,
		30.126133, 33.842651, 27.662565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.350546, 33.420086, 27.716150>,  <29.573355, 33.818611, 27.233778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.350546, 33.420086, 27.716150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.644676, 33.617512, 27.901917>,  <29.821156, 33.735970, 28.013376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.644676, 33.617512, 27.901917>,  <29.350546, 33.420086, 27.716150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.644676, 33.617512, 27.901917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506188, -0.055664, 0.860625,
		0.450629, -0.867924, 0.208907,
		0.735328, 0.493569, 0.464417,
		29.865274, 33.765583, 28.041241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.353798, 33.122368, 28.416563>,  <29.350546, 33.420086, 27.716150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.353798, 33.122368, 28.416563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.531570, 33.480476, 28.429066>,  <29.638233, 33.695339, 28.436567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.531570, 33.480476, 28.429066>,  <29.353798, 33.122368, 28.416563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.531570, 33.480476, 28.429066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453590, 0.194812, 0.869658,
		0.772487, -0.400680, 0.492665,
		0.444432, 0.895268, 0.031255,
		29.664900, 33.749058, 28.438442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.663702, 33.205105, 29.026808>,  <29.353798, 33.122368, 28.416563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.663702, 33.205105, 29.026808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.608820, 33.578938, 28.895521>,  <29.575891, 33.803238, 28.816750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.608820, 33.578938, 28.895521>,  <29.663702, 33.205105, 29.026808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.608820, 33.578938, 28.895521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217095, 0.294921, 0.930533,
		0.966460, 0.198928, 0.162429,
		-0.137206, 0.934585, -0.328216,
		29.567657, 33.859314, 28.797056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.928883, 33.602028, 29.590832>,  <29.663702, 33.205105, 29.026808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.928883, 33.602028, 29.590832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.687515, 33.847832, 29.387554>,  <29.542694, 33.995316, 29.265587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.687515, 33.847832, 29.387554>,  <29.928883, 33.602028, 29.590832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.687515, 33.847832, 29.387554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372334, 0.346440, 0.861015,
		0.705162, 0.708771, 0.019754,
		-0.603419, 0.614510, -0.508196,
		29.506489, 34.032185, 29.235096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.940214, 34.243740, 29.931110>,  <29.928883, 33.602028, 29.590832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.940214, 34.243740, 29.931110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.599669, 34.265087, 29.722370>,  <29.395340, 34.277893, 29.597126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.599669, 34.265087, 29.722370>,  <29.940214, 34.243740, 29.931110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.599669, 34.265087, 29.722370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495010, 0.247510, 0.832889,
		0.173610, 0.967414, -0.184306,
		-0.851366, 0.053365, -0.521850,
		29.344259, 34.281097, 29.565815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.609648, 34.939236, 30.063681>,  <29.940214, 34.243740, 29.931110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.609648, 34.939236, 30.063681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.332403, 34.673134, 29.952663>,  <29.166056, 34.513474, 29.886053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.332403, 34.673134, 29.952663>,  <29.609648, 34.939236, 30.063681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.332403, 34.673134, 29.952663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623894, 0.360801, 0.693238,
		-0.361042, 0.653649, -0.665125,
		-0.693112, -0.665255, -0.277543,
		29.124470, 34.473557, 29.869400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.163540, 34.832905, 29.540745>,  <29.609648, 34.939236, 30.063681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.163540, 34.832905, 29.540745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.448051, 35.020767, 29.749937>,  <30.618757, 35.133484, 29.875452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.448051, 35.020767, 29.749937>,  <30.163540, 34.832905, 29.540745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.448051, 35.020767, 29.749937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522952, 0.143585, -0.840181,
		-0.469687, 0.871096, -0.143478,
		0.711278, 0.469654, 0.522981,
		30.661434, 35.161663, 29.906832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.416628, 35.412678, 29.145269>,  <30.163540, 34.832905, 29.540745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.416628, 35.412678, 29.145269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.712208, 35.325428, 29.400259>,  <30.889557, 35.273079, 29.553253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.712208, 35.325428, 29.400259>,  <30.416628, 35.412678, 29.145269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.712208, 35.325428, 29.400259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670898, 0.151119, -0.725989,
		0.062022, 0.964150, 0.258010,
		0.738952, -0.218125, 0.637473,
		30.933893, 35.259991, 29.591501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.942997, 35.929577, 29.159891>,  <30.416628, 35.412678, 29.145269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.942997, 35.929577, 29.159891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.119442, 35.596329, 29.293352>,  <31.225309, 35.396378, 29.373428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.119442, 35.596329, 29.293352>,  <30.942997, 35.929577, 29.159891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.119442, 35.596329, 29.293352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771335, 0.161903, -0.615492,
		0.458761, 0.528860, 0.714035,
		0.441113, -0.833124, 0.333653,
		31.251776, 35.346390, 29.393448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.663946, 36.127674, 29.169104>,  <30.942997, 35.929577, 29.159891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.663946, 36.127674, 29.169104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.669020, 35.727718, 29.166016>,  <31.672064, 35.487743, 29.164164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.669020, 35.727718, 29.166016>,  <31.663946, 36.127674, 29.169104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.669020, 35.727718, 29.166016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754168, 0.014635, -0.656518,
		0.656559, 0.002503, 0.754271,
		0.012682, -0.999890, -0.007720,
		31.672825, 35.427750, 29.163700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.375061, 35.969509, 29.331606>,  <31.663946, 36.127674, 29.169104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.375061, 35.969509, 29.331606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.223091, 35.649189, 29.146404>,  <32.131908, 35.456997, 29.035284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.223091, 35.649189, 29.146404>,  <32.375061, 35.969509, 29.331606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.223091, 35.649189, 29.146404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671016, 0.105934, -0.733836,
		0.636705, -0.589487, 0.497104,
		-0.379927, -0.800801, -0.463004,
		32.109112, 35.408947, 29.007504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.924076, 35.689613, 29.054504>,  <32.375061, 35.969509, 29.331606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.924076, 35.689613, 29.054504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.633102, 35.517067, 28.841049>,  <32.458519, 35.413540, 28.712976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.633102, 35.517067, 28.841049>,  <32.924076, 35.689613, 29.054504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.633102, 35.517067, 28.841049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585836, 0.014489, -0.810300,
		0.357268, -0.902060, 0.242171,
		-0.727430, -0.431367, -0.533636,
		32.414875, 35.387657, 28.680958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.144718, 35.069244, 28.676935>,  <32.924076, 35.689613, 29.054504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.144718, 35.069244, 28.676935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.804211, 35.171234, 28.493490>,  <32.599907, 35.232430, 28.383423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.804211, 35.171234, 28.493490>,  <33.144718, 35.069244, 28.676935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.804211, 35.171234, 28.493490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480844, 0.029171, -0.876321,
		-0.210064, -0.966507, -0.147437,
		-0.851271, 0.254977, -0.458611,
		32.548828, 35.247726, 28.355907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.138348, 34.648148, 28.075903>,  <33.144718, 35.069244, 28.676935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.138348, 34.648148, 28.075903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.892563, 34.953259, 27.995293>,  <32.745090, 35.136326, 27.946926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.892563, 34.953259, 27.995293>,  <33.138348, 34.648148, 28.075903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.892563, 34.953259, 27.995293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417336, 0.097481, -0.903509,
		-0.669527, -0.639277, -0.378232,
		-0.614463, 0.762773, -0.201527,
		32.708225, 35.182091, 27.934835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.782681, 34.413536, 27.478497>,  <33.138348, 34.648148, 28.075903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.782681, 34.413536, 27.478497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.763069, 34.812717, 27.494944>,  <32.751301, 35.052227, 27.504812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.763069, 34.812717, 27.494944>,  <32.782681, 34.413536, 27.478497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.763069, 34.812717, 27.494944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236614, 0.051599, -0.970233,
		-0.970366, -0.037843, -0.238659,
		-0.049031, 0.997951, 0.041116,
		32.748360, 35.112103, 27.507278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.544243, 34.646313, 26.836580>,  <32.782681, 34.413536, 27.478497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.544243, 34.646313, 26.836580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.648941, 35.012318, 26.959375>,  <32.711761, 35.231922, 27.033052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.648941, 35.012318, 26.959375>,  <32.544243, 34.646313, 26.836580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.648941, 35.012318, 26.959375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167349, 0.270229, -0.948141,
		-0.950517, 0.299548, -0.082395,
		0.261748, 0.915012, 0.306986,
		32.727467, 35.286819, 27.051472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.219849, 35.086945, 26.358707>,  <32.544243, 34.646313, 26.836580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.219849, 35.086945, 26.358707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.535240, 35.261604, 26.531977>,  <32.724476, 35.366402, 26.635939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.535240, 35.261604, 26.531977>,  <32.219849, 35.086945, 26.358707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.535240, 35.261604, 26.531977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285883, 0.363398, -0.886687,
		-0.544585, 0.822971, 0.161701,
		0.788479, 0.436648, 0.433174,
		32.771782, 35.392597, 26.661928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.293377, 35.693493, 26.068108>,  <32.219849, 35.086945, 26.358707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.293377, 35.693493, 26.068108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.660488, 35.634369, 26.215530>,  <32.880756, 35.598892, 26.303984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.660488, 35.634369, 26.215530>,  <32.293377, 35.693493, 26.068108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.660488, 35.634369, 26.215530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397005, 0.361321, -0.843703,
		-0.008458, 0.920651, 0.390295,
		0.917778, -0.147813, 0.368559,
		32.935822, 35.590023, 26.326097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.584797, 36.280083, 25.932219>,  <32.293377, 35.693493, 26.068108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.584797, 36.280083, 25.932219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.849556, 35.981815, 25.962856>,  <33.008411, 35.802856, 25.981239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.849556, 35.981815, 25.962856>,  <32.584797, 36.280083, 25.932219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.849556, 35.981815, 25.962856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309633, 0.178926, -0.933870,
		0.682652, 0.641845, 0.349315,
		0.661902, -0.745667, 0.076592,
		33.048126, 35.758114, 25.985834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.193417, 36.616756, 25.667524>,  <32.584797, 36.280083, 25.932219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.193417, 36.616756, 25.667524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.212971, 36.217812, 25.646091>,  <33.224701, 35.978443, 25.633232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.212971, 36.217812, 25.646091>,  <33.193417, 36.616756, 25.667524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.212971, 36.217812, 25.646091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171779, 0.061244, -0.983230,
		0.983922, 0.038858, 0.174320,
		0.048882, -0.997366, -0.053585,
		33.227634, 35.918602, 25.630016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.850376, 36.504868, 25.451273>,  <33.193417, 36.616756, 25.667524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.850376, 36.504868, 25.451273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.635223, 36.173908, 25.386650>,  <33.506130, 35.975334, 25.347876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.635223, 36.173908, 25.386650>,  <33.850376, 36.504868, 25.451273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.635223, 36.173908, 25.386650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417091, -0.094645, -0.903923,
		0.732612, -0.553587, 0.396007,
		-0.537880, -0.827396, -0.161558,
		33.473858, 35.925690, 25.338182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.298672, 36.142288, 24.982294>,  <33.850376, 36.504868, 25.451273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.298672, 36.142288, 24.982294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.967892, 35.922749, 24.933437>,  <33.769424, 35.791027, 24.904123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.967892, 35.922749, 24.933437>,  <34.298672, 36.142288, 24.982294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.967892, 35.922749, 24.933437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366818, -0.361968, -0.856985,
		0.426141, -0.753490, 0.500657,
		-0.826951, -0.548846, -0.122144,
		33.719807, 35.758095, 24.896793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.558849, 35.457584, 24.702072>,  <34.298672, 36.142288, 24.982294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.558849, 35.457584, 24.702072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.170414, 35.506439, 24.620037>,  <33.937351, 35.535751, 24.570816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.170414, 35.506439, 24.620037>,  <34.558849, 35.457584, 24.702072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.170414, 35.506439, 24.620037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158864, -0.310580, -0.937178,
		-0.178158, -0.942668, 0.282199,
		-0.971093, 0.122134, -0.205088,
		33.879086, 35.543079, 24.558510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.376965, 34.854183, 24.324568>,  <34.558849, 35.457584, 24.702072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.376965, 34.854183, 24.324568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.110607, 35.137440, 24.230661>,  <33.950794, 35.307396, 24.174318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.110607, 35.137440, 24.230661>,  <34.376965, 34.854183, 24.324568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.110607, 35.137440, 24.230661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084756, -0.240834, -0.966859,
		-0.741216, -0.663723, 0.100350,
		-0.665894, 0.708146, -0.234765,
		33.910839, 35.349884, 24.160233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.904240, 34.556488, 23.849586>,  <34.376965, 34.854183, 24.324568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.904240, 34.556488, 23.849586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.793751, 34.937931, 23.801691>,  <33.727455, 35.166798, 23.772953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.793751, 34.937931, 23.801691>,  <33.904240, 34.556488, 23.849586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.793751, 34.937931, 23.801691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030010, -0.133083, -0.990651,
		-0.960625, -0.270048, 0.065379,
		-0.276224, 0.953605, -0.119739,
		33.710884, 35.224014, 23.765770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.518490, 34.440952, 23.336199>,  <33.904240, 34.556488, 23.849586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.518490, 34.440952, 23.336199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.589169, 34.834583, 23.328568>,  <33.631577, 35.070763, 23.323990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.589169, 34.834583, 23.328568>,  <33.518490, 34.440952, 23.336199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.589169, 34.834583, 23.328568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000268, -0.019333, -0.999813,
		-0.984265, 0.176671, -0.003153,
		0.176699, 0.984080, -0.019076,
		33.642178, 35.129807, 23.322845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.982685, 34.773010, 22.749554>,  <33.518490, 34.440952, 23.336199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.982685, 34.773010, 22.749554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.304203, 35.001026, 22.817621>,  <33.497116, 35.137836, 22.858461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.304203, 35.001026, 22.817621>,  <32.982685, 34.773010, 22.749554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.304203, 35.001026, 22.817621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128521, 0.112900, -0.985259,
		-0.580852, 0.813822, 0.017486,
		0.803800, 0.570042, 0.170171,
		33.545341, 35.172039, 22.868673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.052704, 35.317581, 22.284920>,  <32.982685, 34.773010, 22.749554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.052704, 35.317581, 22.284920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.427349, 35.240135, 22.401722>,  <33.652138, 35.193668, 22.471804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.427349, 35.240135, 22.401722>,  <33.052704, 35.317581, 22.284920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.427349, 35.240135, 22.401722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258373, -0.181212, -0.948897,
		0.236639, 0.964196, -0.119700,
		0.936614, -0.193619, 0.292004,
		33.708332, 35.182049, 22.489323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.389946, 35.647842, 21.800699>,  <33.052704, 35.317581, 22.284920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.389946, 35.647842, 21.800699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.675804, 35.404648, 21.939056>,  <33.847317, 35.258732, 22.022070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.675804, 35.404648, 21.939056>,  <33.389946, 35.647842, 21.800699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.675804, 35.404648, 21.939056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344383, -0.124593, -0.930525,
		0.608839, 0.784113, 0.120339,
		0.714643, -0.607983, 0.345893,
		33.890198, 35.222252, 22.042824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.019821, 35.881622, 21.614536>,  <33.389946, 35.647842, 21.800699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.019821, 35.881622, 21.614536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.072662, 35.487938, 21.661648>,  <34.104366, 35.251728, 21.689915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.072662, 35.487938, 21.661648>,  <34.019821, 35.881622, 21.614536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.072662, 35.487938, 21.661648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544216, -0.027299, -0.838500,
		0.828480, 0.174862, 0.532020,
		0.132098, -0.984214, 0.117780,
		34.112293, 35.192673, 21.696981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.555908, 35.868793, 21.290464>,  <34.019821, 35.881622, 21.614536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.555908, 35.868793, 21.290464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.462791, 35.482880, 21.339458>,  <34.406921, 35.251331, 21.368855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.462791, 35.482880, 21.339458>,  <34.555908, 35.868793, 21.290464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.462791, 35.482880, 21.339458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437349, -0.216344, -0.872881,
		0.868639, -0.149631, 0.472310,
		-0.232792, -0.964783, 0.122484,
		34.392956, 35.193443, 21.376204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.148148, 35.479004, 21.243147>,  <34.555908, 35.868793, 21.290464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.148148, 35.479004, 21.243147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.855984, 35.223427, 21.146603>,  <34.680687, 35.070080, 21.088676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.855984, 35.223427, 21.146603>,  <35.148148, 35.479004, 21.243147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.855984, 35.223427, 21.146603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526310, -0.301293, -0.795123,
		0.435319, -0.707794, 0.556349,
		-0.730408, -0.638944, -0.241361,
		34.636860, 35.031742, 21.074194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.417126, 34.898472, 20.895702>,  <35.148148, 35.479004, 21.243147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.417126, 34.898472, 20.895702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.047867, 34.811794, 20.768677>,  <34.826313, 34.759789, 20.692461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.047867, 34.811794, 20.768677>,  <35.417126, 34.898472, 20.895702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.047867, 34.811794, 20.768677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384316, -0.498192, -0.777242,
		0.010213, -0.839553, 0.543182,
		-0.923145, -0.216691, -0.317566,
		34.770924, 34.746788, 20.673407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.425560, 34.138641, 20.705666>,  <35.417126, 34.898472, 20.895702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.425560, 34.138641, 20.705666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.113762, 34.311909, 20.524668>,  <34.926682, 34.415871, 20.416069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.113762, 34.311909, 20.524668>,  <35.425560, 34.138641, 20.705666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.113762, 34.311909, 20.524668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213339, -0.495597, -0.841944,
		-0.588961, -0.752826, 0.293903,
		-0.779494, 0.433171, -0.452494,
		34.879913, 34.441860, 20.388920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.159077, 33.623066, 20.314453>,  <35.425560, 34.138641, 20.705666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.159077, 33.623066, 20.314453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.999706, 33.955601, 20.159462>,  <34.904083, 34.155121, 20.066467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.999706, 33.955601, 20.159462>,  <35.159077, 33.623066, 20.314453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.999706, 33.955601, 20.159462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079910, -0.452315, -0.888271,
		-0.913711, -0.322951, 0.246648,
		-0.398430, 0.831333, -0.387478,
		34.880177, 34.205002, 20.043219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.646599, 33.378117, 19.988667>,  <35.159077, 33.623066, 20.314453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.646599, 33.378117, 19.988667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.731426, 33.732124, 19.822886>,  <34.782322, 33.944527, 19.723417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.731426, 33.732124, 19.822886>,  <34.646599, 33.378117, 19.988667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.731426, 33.732124, 19.822886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100544, -0.441609, -0.891556,
		-0.972068, 0.147402, -0.182635,
		0.212071, 0.885016, -0.414454,
		34.795048, 33.997631, 19.698549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.319027, 33.255104, 19.354033>,  <34.646599, 33.378117, 19.988667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.319027, 33.255104, 19.354033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.553368, 33.578308, 19.329060>,  <34.693974, 33.772228, 19.314075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.553368, 33.578308, 19.329060>,  <34.319027, 33.255104, 19.354033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.553368, 33.578308, 19.329060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260493, -0.260699, -0.929612,
		-0.767410, 0.528355, -0.363212,
		0.585854, 0.808008, -0.062430,
		34.729122, 33.820709, 19.310331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.156910, 33.579498, 18.800953>,  <34.319027, 33.255104, 19.354033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.156910, 33.579498, 18.800953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.526691, 33.717716, 18.865444>,  <34.748558, 33.800648, 18.904139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.526691, 33.717716, 18.865444>,  <34.156910, 33.579498, 18.800953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.526691, 33.717716, 18.865444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215363, -0.124233, -0.968599,
		-0.314662, 0.930143, -0.189264,
		0.924449, 0.345542, 0.161227,
		34.804028, 33.821381, 18.913813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.328194, 34.008030, 18.209045>,  <34.156910, 33.579498, 18.800953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.328194, 34.008030, 18.209045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.695644, 33.957966, 18.358957>,  <34.916115, 33.927929, 18.448904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.695644, 33.957966, 18.358957>,  <34.328194, 34.008030, 18.209045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.695644, 33.957966, 18.358957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366426, -0.085056, -0.926551,
		0.147845, 0.988484, -0.032272,
		0.918626, -0.125160, 0.374781,
		34.971233, 33.920418, 18.471392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.795837, 34.447758, 17.770115>,  <34.328194, 34.008030, 18.209045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.795837, 34.447758, 17.770115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.023376, 34.173843, 17.952314>,  <35.159901, 34.009495, 18.061634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.023376, 34.173843, 17.952314>,  <34.795837, 34.447758, 17.770115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.023376, 34.173843, 17.952314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464120, -0.189943, -0.865167,
		0.678976, 0.703552, 0.209776,
		0.568844, -0.684789, 0.455499,
		35.194031, 33.968407, 18.088964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.430607, 34.525600, 17.433451>,  <34.795837, 34.447758, 17.770115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.430607, 34.525600, 17.433451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.414593, 34.158596, 17.591730>,  <35.404984, 33.938393, 17.686697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.414593, 34.158596, 17.591730>,  <35.430607, 34.525600, 17.433451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.414593, 34.158596, 17.591730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582745, -0.343131, -0.736661,
		0.811668, 0.201100, 0.548410,
		-0.040034, -0.917508, 0.395698,
		35.402584, 33.883343, 17.710440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.138424, 34.238380, 17.554111>,  <35.430607, 34.525600, 17.433451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.138424, 34.238380, 17.554111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.899517, 33.919544, 17.518532>,  <35.756172, 33.728241, 17.497183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.899517, 33.919544, 17.518532>,  <36.138424, 34.238380, 17.554111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.899517, 33.919544, 17.518532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611906, -0.381170, -0.693023,
		0.518497, -0.468352, 0.715407,
		-0.597270, -0.797092, -0.088952,
		35.720337, 33.680416, 17.491846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.531616, 33.759987, 17.322590>,  <36.138424, 34.238380, 17.554111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.531616, 33.759987, 17.322590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.183544, 33.570415, 17.268648>,  <35.974701, 33.456673, 17.236282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.183544, 33.570415, 17.268648>,  <36.531616, 33.759987, 17.322590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.183544, 33.570415, 17.268648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445173, -0.638839, -0.627460,
		0.211220, -0.606035, 0.766882,
		-0.870177, -0.473927, -0.134855,
		35.922493, 33.428238, 17.228191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.725048, 33.024868, 17.210814>,  <36.531616, 33.759987, 17.322590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.725048, 33.024868, 17.210814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.361679, 33.049465, 17.045408>,  <36.143658, 33.064224, 16.946165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.361679, 33.049465, 17.045408>,  <36.725048, 33.024868, 17.210814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.361679, 33.049465, 17.045408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285223, -0.632010, -0.720564,
		-0.305652, -0.772517, 0.556591,
		-0.908419, 0.061489, -0.413514,
		36.089153, 33.067913, 16.921354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.275242, 33.489956, 17.490740>,  <36.725048, 33.024868, 17.210814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.275242, 33.489956, 17.490740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.561642, 33.211380, 17.509962>,  <37.733482, 33.044235, 17.521496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.561642, 33.211380, 17.509962>,  <37.275242, 33.489956, 17.490740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.561642, 33.211380, 17.509962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007163, 0.061504, 0.998081,
		-0.698062, -0.714972, 0.039048,
		0.716001, -0.696443, 0.048054,
		37.776443, 33.002449, 17.524378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.043831, 32.980663, 18.002689>,  <37.275242, 33.489956, 17.490740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.043831, 32.980663, 18.002689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.442497, 32.954659, 17.982952>,  <37.681698, 32.939056, 17.971109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.442497, 32.954659, 17.982952>,  <37.043831, 32.980663, 18.002689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.442497, 32.954659, 17.982952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058147, 0.141338, 0.988252,
		-0.057270, -0.987824, 0.144646,
		0.996664, -0.065008, -0.049344,
		37.741497, 32.935158, 17.968149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.214405, 32.423656, 18.447647>,  <37.043831, 32.980663, 18.002689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.214405, 32.423656, 18.447647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.526585, 32.672646, 18.424259>,  <37.713894, 32.822041, 18.410227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.526585, 32.672646, 18.424259>,  <37.214405, 32.423656, 18.447647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.526585, 32.672646, 18.424259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021707, 0.120441, 0.992483,
		0.624837, -0.773318, 0.107511,
		0.780454, 0.622474, -0.058470,
		37.760719, 32.859386, 18.406717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.697567, 32.164928, 19.031961>,  <37.214405, 32.423656, 18.447647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.697567, 32.164928, 19.031961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.807770, 32.541725, 18.955275>,  <37.873890, 32.767803, 18.909264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.807770, 32.541725, 18.955275>,  <37.697567, 32.164928, 19.031961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.807770, 32.541725, 18.955275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095105, 0.171746, 0.980540,
		0.956583, -0.288379, -0.042270,
		0.275508, 0.941987, -0.191715,
		37.890423, 32.824322, 18.897760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.202579, 32.280529, 19.383818>,  <37.697567, 32.164928, 19.031961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.202579, 32.280529, 19.383818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.071022, 32.656731, 19.349680>,  <37.992088, 32.882450, 19.329197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.071022, 32.656731, 19.349680>,  <38.202579, 32.280529, 19.383818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.071022, 32.656731, 19.349680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192647, 0.155289, 0.968903,
		0.924509, 0.302223, -0.232258,
		-0.328892, 0.940503, -0.085344,
		37.972355, 32.938881, 19.324078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.639866, 32.601051, 19.846617>,  <38.202579, 32.280529, 19.383818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.639866, 32.601051, 19.846617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.349186, 32.866821, 19.776812>,  <38.174778, 33.026283, 19.734928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.349186, 32.866821, 19.776812>,  <38.639866, 32.601051, 19.846617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.349186, 32.866821, 19.776812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143297, 0.395063, 0.907409,
		0.671846, 0.634405, -0.382301,
		-0.726698, 0.664421, -0.174513,
		38.131176, 33.066147, 19.724457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.927765, 33.257240, 20.057821>,  <38.639866, 32.601051, 19.846617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.927765, 33.257240, 20.057821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.528103, 33.273380, 20.054873>,  <38.288303, 33.283066, 20.053102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.528103, 33.273380, 20.054873>,  <38.927765, 33.257240, 20.057821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.528103, 33.273380, 20.054873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006384, 0.330499, 0.943785,
		0.040522, 0.942943, -0.330479,
		-0.999158, 0.040354, -0.007373,
		38.228355, 33.285488, 20.052660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.768070, 33.887615, 20.450291>,  <38.927765, 33.257240, 20.057821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.768070, 33.887615, 20.450291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.438515, 33.661728, 20.431112>,  <38.240780, 33.526196, 20.419605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.438515, 33.661728, 20.431112>,  <38.768070, 33.887615, 20.450291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.438515, 33.661728, 20.431112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236882, 0.266269, 0.934338,
		-0.514870, 0.781150, -0.353148,
		-0.823891, -0.564717, -0.047946,
		38.191349, 33.492313, 20.416729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.182125, 34.270172, 20.629116>,  <38.768070, 33.887615, 20.450291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.182125, 34.270172, 20.629116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.053471, 33.894264, 20.675381>,  <37.976276, 33.668720, 20.703138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.053471, 33.894264, 20.675381>,  <38.182125, 34.270172, 20.629116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.053471, 33.894264, 20.675381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434876, 0.255122, 0.863595,
		-0.841089, 0.227469, -0.490742,
		-0.321641, -0.939771, 0.115660,
		37.956978, 33.612331, 20.710079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.562454, 34.294392, 20.834148>,  <38.182125, 34.270172, 20.629116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.562454, 34.294392, 20.834148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.635544, 33.924774, 20.968468>,  <37.679398, 33.703003, 21.049059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.635544, 33.924774, 20.968468>,  <37.562454, 34.294392, 20.834148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.635544, 33.924774, 20.968468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608073, 0.162176, 0.777140,
		-0.772567, -0.346190, -0.532252,
		0.182720, -0.924041, 0.335800,
		37.690361, 33.647560, 21.069208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.913071, 34.023560, 21.172777>,  <37.562454, 34.294392, 20.834148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.913071, 34.023560, 21.172777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.192326, 33.777218, 21.318829>,  <37.359879, 33.629414, 21.406460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.192326, 33.777218, 21.318829>,  <36.913071, 34.023560, 21.172777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.192326, 33.777218, 21.318829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496922, -0.049662, 0.866373,
		-0.515428, -0.786292, -0.340703,
		0.698142, -0.615856, 0.365129,
		37.401768, 33.592461, 21.428368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.540199, 33.406597, 21.507380>,  <36.913071, 34.023560, 21.172777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.540199, 33.406597, 21.507380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.909897, 33.418728, 21.659622>,  <37.131714, 33.426006, 21.750967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.909897, 33.418728, 21.659622>,  <36.540199, 33.406597, 21.507380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.909897, 33.418728, 21.659622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375675, -0.105805, 0.920692,
		0.068188, -0.993925, -0.086397,
		0.924240, 0.030323, 0.380607,
		37.187168, 33.427826, 21.773804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.645645, 32.734577, 22.007404>,  <36.540199, 33.406597, 21.507380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.645645, 32.734577, 22.007404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.901684, 33.018253, 22.125607>,  <37.055305, 33.188461, 22.196527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.901684, 33.018253, 22.125607>,  <36.645645, 32.734577, 22.007404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.901684, 33.018253, 22.125607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159283, -0.253774, 0.954059,
		0.751604, -0.657757, -0.049477,
		0.640094, 0.709194, 0.295507,
		37.093712, 33.231010, 22.214258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.896477, 32.446217, 22.657343>,  <36.645645, 32.734577, 22.007404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.896477, 32.446217, 22.657343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.034576, 32.820503, 22.686287>,  <37.117435, 33.045074, 22.703653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.034576, 32.820503, 22.686287>,  <36.896477, 32.446217, 22.657343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.034576, 32.820503, 22.686287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339747, 0.052740, 0.939037,
		0.874857, -0.348784, 0.336116,
		0.345248, 0.935718, 0.072358,
		37.138149, 33.101219, 22.707994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.457047, 32.534222, 23.192949>,  <36.896477, 32.446217, 22.657343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.457047, 32.534222, 23.192949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.314087, 32.905807, 23.154406>,  <37.228310, 33.128761, 23.131279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.314087, 32.905807, 23.154406>,  <37.457047, 32.534222, 23.192949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.314087, 32.905807, 23.154406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207091, 0.021782, 0.978079,
		0.910702, 0.369520, 0.184596,
		-0.357399, 0.928967, -0.096361,
		37.206867, 33.184498, 23.125498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.644119, 32.903889, 23.821270>,  <37.457047, 32.534222, 23.192949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.644119, 32.903889, 23.821270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.346512, 33.130135, 23.678989>,  <37.167950, 33.265881, 23.593620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.346512, 33.130135, 23.678989>,  <37.644119, 32.903889, 23.821270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.346512, 33.130135, 23.678989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296288, 0.197869, 0.934377,
		0.598877, 0.800582, 0.020366,
		-0.744016, 0.565611, -0.355702,
		37.123306, 33.299820, 23.572279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.569557, 33.568653, 24.232775>,  <37.644119, 32.903889, 23.821270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.569557, 33.568653, 24.232775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.201050, 33.524052, 24.083735>,  <36.979946, 33.497292, 23.994310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.201050, 33.524052, 24.083735>,  <37.569557, 33.568653, 24.232775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.201050, 33.524052, 24.083735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385744, 0.384238, 0.838786,
		0.049643, 0.916476, -0.396997,
		-0.921269, -0.111500, -0.372600,
		36.924667, 33.490601, 23.971954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.301285, 34.122448, 24.458786>,  <37.569557, 33.568653, 24.232775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.301285, 34.122448, 24.458786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.004292, 33.864437, 24.386505>,  <36.826096, 33.709629, 24.343136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.004292, 33.864437, 24.386505>,  <37.301285, 34.122448, 24.458786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.004292, 33.864437, 24.386505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386488, 0.192176, 0.902051,
		-0.547119, 0.739601, -0.391983,
		-0.742487, -0.645026, -0.180704,
		36.781544, 33.670929, 24.332294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.749958, 34.392216, 24.767422>,  <37.301285, 34.122448, 24.458786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.749958, 34.392216, 24.767422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.613636, 34.023373, 24.694128>,  <36.531841, 33.802067, 24.650152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.613636, 34.023373, 24.694128>,  <36.749958, 34.392216, 24.767422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.613636, 34.023373, 24.694128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649330, 0.089928, 0.755171,
		-0.679869, 0.376346, -0.629399,
		-0.340806, -0.922105, -0.183233,
		36.511395, 33.746742, 24.639158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.958931, 34.430679, 24.632730>,  <36.749958, 34.392216, 24.767422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.958931, 34.430679, 24.632730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.047184, 34.053772, 24.733484>,  <36.100136, 33.827625, 24.793936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.047184, 34.053772, 24.733484>,  <35.958931, 34.430679, 24.632730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.047184, 34.053772, 24.733484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607682, 0.069199, 0.791160,
		-0.762917, -0.327623, -0.557334,
		0.220635, -0.942271, 0.251883,
		36.113373, 33.771091, 24.809050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.339962, 34.244450, 24.764177>,  <35.958931, 34.430679, 24.632730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.339962, 34.244450, 24.764177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.591381, 33.982048, 24.931311>,  <35.742233, 33.824608, 25.031591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.591381, 33.982048, 24.931311>,  <35.339962, 34.244450, 24.764177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.591381, 33.982048, 24.931311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570153, -0.023228, 0.821210,
		-0.529013, -0.754398, -0.388624,
		0.628546, -0.656006, 0.417834,
		35.779945, 33.785248, 25.056662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.890347, 33.789276, 25.101215>,  <35.339962, 34.244450, 24.764177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.890347, 33.789276, 25.101215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.245552, 33.747467, 25.280325>,  <35.458675, 33.722382, 25.387791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.245552, 33.747467, 25.280325>,  <34.890347, 33.789276, 25.101215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.245552, 33.747467, 25.280325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431573, 0.146550, 0.890094,
		-0.158653, -0.983666, 0.085031,
		0.888017, -0.104519, 0.447775,
		35.511955, 33.716110, 25.414658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.753807, 33.405857, 25.716745>,  <34.890347, 33.789276, 25.101215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.753807, 33.405857, 25.716745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.107975, 33.581852, 25.776678>,  <35.320477, 33.687450, 25.812637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.107975, 33.581852, 25.776678>,  <34.753807, 33.405857, 25.716745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.107975, 33.581852, 25.776678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320837, 0.345308, 0.881945,
		0.336280, -0.828973, 0.446901,
		0.885426, 0.439963, 0.149845,
		35.373600, 33.713848, 25.821629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.969631, 33.226219, 26.392189>,  <34.753807, 33.405857, 25.716745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.969631, 33.226219, 26.392189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.167202, 33.562447, 26.303213>,  <35.285744, 33.764183, 26.249826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.167202, 33.562447, 26.303213>,  <34.969631, 33.226219, 26.392189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.167202, 33.562447, 26.303213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263682, 0.388583, 0.882879,
		0.828556, -0.377426, 0.413576,
		0.493930, 0.840567, -0.222442,
		35.315380, 33.814617, 26.236481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.408123, 33.309517, 26.986814>,  <34.969631, 33.226219, 26.392189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.408123, 33.309517, 26.986814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.402771, 33.665886, 26.805229>,  <35.399559, 33.879707, 26.696278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.402771, 33.665886, 26.805229>,  <35.408123, 33.309517, 26.986814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.402771, 33.665886, 26.805229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015731, 0.453759, 0.890985,
		0.999787, 0.019065, 0.007943,
		-0.013382, 0.890920, -0.453962,
		35.398758, 33.933163, 26.669041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.811310, 33.758114, 27.398409>,  <35.408123, 33.309517, 26.986814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.811310, 33.758114, 27.398409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.588120, 34.022644, 27.197882>,  <35.454205, 34.181362, 27.077566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.588120, 34.022644, 27.197882>,  <35.811310, 33.758114, 27.398409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.588120, 34.022644, 27.197882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129685, 0.527190, 0.839793,
		0.819663, 0.533595, -0.208394,
		-0.557973, 0.661322, -0.501318,
		35.420727, 34.221039, 27.047485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.988293, 34.403206, 27.762018>,  <35.811310, 33.758114, 27.398409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.988293, 34.403206, 27.762018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.637199, 34.463223, 27.579996>,  <35.426544, 34.499233, 27.470783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.637199, 34.463223, 27.579996>,  <35.988293, 34.403206, 27.762018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.637199, 34.463223, 27.579996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335192, 0.486368, 0.806903,
		0.342397, 0.860775, -0.376606,
		-0.877730, 0.150046, -0.455055,
		35.373878, 34.508236, 27.443480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.943420, 35.123360, 27.739380>,  <35.988293, 34.403206, 27.762018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.943420, 35.123360, 27.739380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.581722, 34.955814, 27.706165>,  <35.364704, 34.855286, 27.686237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.581722, 34.955814, 27.706165>,  <35.943420, 35.123360, 27.739380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.581722, 34.955814, 27.706165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313955, 0.520332, 0.794158,
		-0.289438, 0.744182, -0.602012,
		-0.904244, -0.418864, -0.083036,
		35.310448, 34.830154, 27.681255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.485458, 35.661293, 27.841969>,  <35.943420, 35.123360, 27.739380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.485458, 35.661293, 27.841969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.252285, 35.345322, 27.918081>,  <35.112381, 35.155739, 27.963749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.252285, 35.345322, 27.918081>,  <35.485458, 35.661293, 27.841969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.252285, 35.345322, 27.918081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424018, 0.495512, 0.758074,
		-0.693111, 0.361221, -0.623792,
		-0.582929, -0.789929, 0.190280,
		35.077408, 35.108341, 27.975164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.801384, 36.026821, 27.954971>,  <35.485458, 35.661293, 27.841969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.801384, 36.026821, 27.954971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.786186, 35.667572, 28.130213>,  <34.777065, 35.452023, 28.235357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.786186, 35.667572, 28.130213>,  <34.801384, 36.026821, 27.954971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.786186, 35.667572, 28.130213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333882, 0.424634, 0.841551,
		-0.941849, -0.114299, -0.316002,
		-0.037997, -0.898121, 0.438104,
		34.774788, 35.398136, 28.261644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.315750, 36.201302, 28.477457>,  <34.801384, 36.026821, 27.954971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.315750, 36.201302, 28.477457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.455677, 35.842613, 28.585909>,  <34.539635, 35.627399, 28.650980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.455677, 35.842613, 28.585909>,  <34.315750, 36.201302, 28.477457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.455677, 35.842613, 28.585909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298373, 0.167694, 0.939602,
		-0.888031, -0.409590, -0.208895,
		0.349822, -0.896724, 0.271128,
		34.560623, 35.573597, 28.667248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.708664, 35.836891, 28.819118>,  <34.315750, 36.201302, 28.477457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.708664, 35.836891, 28.819118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.061012, 35.676720, 28.920086>,  <34.272423, 35.580616, 28.980665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.061012, 35.676720, 28.920086>,  <33.708664, 35.836891, 28.819118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.061012, 35.676720, 28.920086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273362, 0.005001, 0.961898,
		-0.386438, -0.916313, -0.105058,
		0.880874, -0.400433, 0.252418,
		34.325275, 35.556591, 28.995811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.535866, 35.265476, 29.263790>,  <33.708664, 35.836891, 28.819118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.535866, 35.265476, 29.263790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.906590, 35.387287, 29.351692>,  <34.129025, 35.460373, 29.404434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.906590, 35.387287, 29.351692>,  <33.535866, 35.265476, 29.263790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.906590, 35.387287, 29.351692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218921, -0.037337, 0.975028,
		0.305132, -0.951770, 0.032064,
		0.926805, 0.304532, 0.219755,
		34.184631, 35.478645, 29.417618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.704636, 34.897686, 29.892227>,  <33.535866, 35.265476, 29.263790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.704636, 34.897686, 29.892227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.996033, 35.171562, 29.901102>,  <34.170872, 35.335888, 29.906427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.996033, 35.171562, 29.901102>,  <33.704636, 34.897686, 29.892227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.996033, 35.171562, 29.901102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129405, -0.169344, 0.977025,
		0.672721, -0.708883, -0.211969,
		0.728492, 0.684695, 0.022188,
		34.214581, 35.376972, 29.907759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.335041, 34.665123, 30.253462>,  <33.704636, 34.897686, 29.892227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.335041, 34.665123, 30.253462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.330551, 35.065029, 30.260866>,  <34.327858, 35.304974, 30.265308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.330551, 35.065029, 30.260866>,  <34.335041, 34.665123, 30.253462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.330551, 35.065029, 30.260866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100572, -0.017292, 0.994780,
		0.994866, 0.013024, -0.100355,
		-0.011221, 0.999766, 0.018513,
		34.327187, 35.364960, 30.266420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.843781, 34.818867, 30.694952>,  <34.335041, 34.665123, 30.253462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.843781, 34.818867, 30.694952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.645023, 35.165916, 30.687708>,  <34.525768, 35.374146, 30.683361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.645023, 35.165916, 30.687708>,  <34.843781, 34.818867, 30.694952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.645023, 35.165916, 30.687708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094891, 0.075066, 0.992653,
		0.862610, 0.491521, -0.119629,
		-0.496890, 0.867625, -0.018112,
		34.495956, 35.426205, 30.682274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.285797, 35.272060, 30.984348>,  <34.843781, 34.818867, 30.694952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.285797, 35.272060, 30.984348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.921635, 35.433777, 31.019464>,  <34.703136, 35.530807, 31.040535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.921635, 35.433777, 31.019464>,  <35.285797, 35.272060, 30.984348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.921635, 35.433777, 31.019464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063525, -0.073077, 0.995301,
		0.408806, 0.911707, 0.040848,
		-0.910408, 0.404290, 0.087791,
		34.648514, 35.555065, 31.045801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.339432, 35.704018, 31.558619>,  <35.285797, 35.272060, 30.984348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.339432, 35.704018, 31.558619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.954086, 35.604187, 31.519346>,  <34.722878, 35.544289, 31.495783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.954086, 35.604187, 31.519346>,  <35.339432, 35.704018, 31.558619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.954086, 35.604187, 31.519346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079830, -0.082645, 0.993376,
		-0.256035, 0.964823, 0.059694,
		-0.963366, -0.249573, -0.098182,
		34.665077, 35.529316, 31.489891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.054089, 36.089424, 32.010937>,  <35.339432, 35.704018, 31.558619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.054089, 36.089424, 32.010937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.788017, 35.799934, 31.937445>,  <34.628376, 35.626240, 31.893351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.788017, 35.799934, 31.937445>,  <35.054089, 36.089424, 32.010937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.788017, 35.799934, 31.937445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045842, -0.206013, 0.977475,
		-0.745276, 0.658618, 0.103858,
		-0.665179, -0.723727, -0.183728,
		34.588463, 35.582817, 31.882326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.453144, 36.213566, 32.511795>,  <35.054089, 36.089424, 32.010937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.453144, 36.213566, 32.511795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.434944, 35.830688, 32.397453>,  <34.424023, 35.600964, 32.328850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.434944, 35.830688, 32.397453>,  <34.453144, 36.213566, 32.511795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.434944, 35.830688, 32.397453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015465, -0.285443, 0.958271,
		-0.998845, 0.048020, -0.001815,
		-0.045498, -0.957192, -0.285856,
		34.421295, 35.543530, 32.311695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.876633, 35.834106, 32.780983>,  <34.453144, 36.213566, 32.511795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.876633, 35.834106, 32.780983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.139481, 35.549744, 32.680744>,  <34.297192, 35.379128, 32.620602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.139481, 35.549744, 32.680744>,  <33.876633, 35.834106, 32.780983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.139481, 35.549744, 32.680744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051013, -0.289750, 0.955742,
		-0.752055, -0.640824, -0.154136,
		0.657124, -0.710907, -0.250598,
		34.336617, 35.336472, 32.605564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.667248, 35.264820, 33.164593>,  <33.876633, 35.834106, 32.780983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.667248, 35.264820, 33.164593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.057865, 35.229771, 33.085926>,  <34.292236, 35.208740, 33.038727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.057865, 35.229771, 33.085926>,  <33.667248, 35.264820, 33.164593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.057865, 35.229771, 33.085926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180313, -0.166350, 0.969441,
		-0.117656, -0.982166, -0.146650,
		0.976547, -0.087618, -0.196669,
		34.350830, 35.203484, 33.026924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.873264, 34.985176, 33.758385>,  <33.667248, 35.264820, 33.164593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.873264, 34.985176, 33.758385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.222378, 35.097977, 33.599026>,  <34.431847, 35.165657, 33.503410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.222378, 35.097977, 33.599026>,  <33.873264, 34.985176, 33.758385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.222378, 35.097977, 33.599026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449668, -0.147084, 0.881002,
		0.189846, -0.948073, -0.255180,
		0.872787, 0.282001, -0.398395,
		34.484215, 35.182575, 33.479507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.251595, 34.409740, 33.815765>,  <33.873264, 34.985176, 33.758385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.251595, 34.409740, 33.815765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.455379, 34.753914, 33.811741>,  <34.577652, 34.960419, 33.809326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.455379, 34.753914, 33.811741>,  <34.251595, 34.409740, 33.815765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.455379, 34.753914, 33.811741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282490, -0.156198, 0.946468,
		0.812802, -0.485031, -0.322642,
		0.509462, 0.860434, -0.010058,
		34.608219, 35.012043, 33.808723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.027897, 34.395958, 33.982590>,  <34.251595, 34.409740, 33.815765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.027897, 34.395958, 33.982590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.843147, 34.735538, 34.085316>,  <34.732296, 34.939285, 34.146950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.843147, 34.735538, 34.085316>,  <35.027897, 34.395958, 33.982590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.843147, 34.735538, 34.085316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295875, -0.125484, 0.946949,
		0.836139, 0.513357, -0.193225,
		-0.461876, 0.848951, 0.256811,
		34.704586, 34.990223, 34.162357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.452633, 34.637959, 34.515881>,  <35.027897, 34.395958, 33.982590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.452633, 34.637959, 34.515881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.089481, 34.803257, 34.544106>,  <34.871590, 34.902435, 34.561043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.089481, 34.803257, 34.544106>,  <35.452633, 34.637959, 34.515881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.089481, 34.803257, 34.544106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123837, 0.103547, 0.986885,
		0.400516, 0.904715, -0.145183,
		-0.907883, 0.413242, 0.070565,
		34.817116, 34.927231, 34.565273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.425022, 35.394482, 34.663383>,  <35.452633, 34.637959, 34.515881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.425022, 35.394482, 34.663383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.108025, 35.190456, 34.797119>,  <34.917824, 35.068039, 34.877361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.108025, 35.190456, 34.797119>,  <35.425022, 35.394482, 34.663383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.108025, 35.190456, 34.797119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343334, 0.079961, 0.935803,
		-0.504056, 0.856410, 0.111754,
		-0.792496, -0.510066, 0.334339,
		34.870277, 35.037437, 34.897423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.924236, 35.789997, 35.016075>,  <35.425022, 35.394482, 34.663383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.924236, 35.789997, 35.016075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.951015, 35.416008, 35.155411>,  <34.967083, 35.191612, 35.239010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.951015, 35.416008, 35.155411>,  <34.924236, 35.789997, 35.016075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.951015, 35.416008, 35.155411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325470, 0.350485, 0.878197,
		-0.943179, 0.054581, 0.327770,
		0.066946, -0.934977, 0.348335,
		34.971100, 35.135513, 35.259911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.555679, 35.783062, 35.567055>,  <34.924236, 35.789997, 35.016075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.555679, 35.783062, 35.567055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.852859, 35.515491, 35.576626>,  <35.031166, 35.354950, 35.582371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.852859, 35.515491, 35.576626>,  <34.555679, 35.783062, 35.567055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.852859, 35.515491, 35.576626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397209, 0.469378, 0.788612,
		-0.538755, -0.576390, 0.614425,
		0.742946, -0.668924, 0.023932,
		35.075745, 35.314816, 35.583805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.638615, 35.816231, 36.231991>,  <34.555679, 35.783062, 35.567055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.638615, 35.816231, 36.231991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.958725, 35.617519, 36.097668>,  <35.150791, 35.498291, 36.017075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.958725, 35.617519, 36.097668>,  <34.638615, 35.816231, 36.231991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.958725, 35.617519, 36.097668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462732, 0.155465, 0.872760,
		-0.381362, -0.853839, 0.354291,
		0.800276, -0.496779, -0.335810,
		35.198807, 35.468487, 35.996925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.892303, 35.260571, 36.658134>,  <34.638615, 35.816231, 36.231991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.892303, 35.260571, 36.658134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.210636, 35.387165, 36.451641>,  <35.401634, 35.463120, 36.327747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.210636, 35.387165, 36.451641>,  <34.892303, 35.260571, 36.658134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.210636, 35.387165, 36.451641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462662, 0.232180, 0.855591,
		0.390641, -0.919744, 0.038349,
		0.795829, 0.316487, -0.516230,
		35.449387, 35.482109, 36.296772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.357307, 35.487309, 37.190624>,  <34.892303, 35.260571, 36.658134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.357307, 35.487309, 37.190624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.556068, 35.607487, 36.864967>,  <35.675323, 35.679592, 36.669575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.556068, 35.607487, 36.864967>,  <35.357307, 35.487309, 37.190624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.556068, 35.607487, 36.864967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658416, 0.480618, 0.579219,
		0.565315, -0.823855, 0.040998,
		0.496897, 0.300448, -0.814140,
		35.705139, 35.697620, 36.620724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.998081, 35.136688, 37.222702>,  <35.357307, 35.487309, 37.190624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.998081, 35.136688, 37.222702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.990170, 35.488525, 37.032578>,  <35.985424, 35.699627, 36.918503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.990170, 35.488525, 37.032578>,  <35.998081, 35.136688, 37.222702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.990170, 35.488525, 37.032578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640140, 0.376324, 0.669777,
		0.768004, -0.291020, -0.570507,
		-0.019777, 0.879595, -0.475312,
		35.984238, 35.752403, 36.889984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.192028, 35.799408, 37.504448>,  <35.998081, 35.136688, 37.222702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.192028, 35.799408, 37.504448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.518627, 35.930717, 37.694427>,  <36.714584, 36.009502, 37.808414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.518627, 35.930717, 37.694427>,  <36.192028, 35.799408, 37.504448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.518627, 35.930717, 37.694427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544103, 0.162368, 0.823158,
		0.193110, -0.930521, 0.311190,
		0.816493, 0.328280, 0.474945,
		36.763577, 36.029202, 37.836910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.305393, 35.453236, 38.071915>,  <36.192028, 35.799408, 37.504448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.305393, 35.453236, 38.071915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.481220, 35.802715, 38.155277>,  <36.586716, 36.012402, 38.205296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.481220, 35.802715, 38.155277>,  <36.305393, 35.453236, 38.071915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.481220, 35.802715, 38.155277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589992, 0.105905, 0.800434,
		0.677267, -0.474800, 0.562027,
		0.439567, 0.873699, 0.208402,
		36.613091, 36.064823, 38.217796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.646595, 35.442474, 38.754421>,  <36.305393, 35.453236, 38.071915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.646595, 35.442474, 38.754421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.603371, 35.836594, 38.701481>,  <36.577435, 36.073063, 38.669716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.603371, 35.836594, 38.701481>,  <36.646595, 35.442474, 38.754421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.603371, 35.836594, 38.701481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519291, 0.057582, 0.852655,
		0.847738, 0.160868, 0.505433,
		-0.108061, 0.985295, -0.132352,
		36.570953, 36.132183, 38.661774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.901337, 35.841064, 39.330151>,  <36.646595, 35.442474, 38.754421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.901337, 35.841064, 39.330151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.652153, 36.104446, 39.161221>,  <36.502644, 36.262478, 39.059864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.652153, 36.104446, 39.161221>,  <36.901337, 35.841064, 39.330151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.652153, 36.104446, 39.161221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416877, 0.177386, 0.891486,
		0.661920, 0.731415, 0.163993,
		-0.622956, 0.658458, -0.422326,
		36.465267, 36.301983, 39.034523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.845398, 36.440033, 39.740814>,  <36.901337, 35.841064, 39.330151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.845398, 36.440033, 39.740814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.521576, 36.519447, 39.519829>,  <36.327282, 36.567097, 39.387238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.521576, 36.519447, 39.519829>,  <36.845398, 36.440033, 39.740814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.521576, 36.519447, 39.519829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507389, 0.236700, 0.828571,
		0.295269, 0.951082, -0.090885,
		-0.809551, 0.198538, -0.552459,
		36.278709, 36.579010, 39.354092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.595856, 37.118355, 39.856941>,  <36.845398, 36.440033, 39.740814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.595856, 37.118355, 39.856941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.275208, 36.931377, 39.707870>,  <36.082817, 36.819191, 39.618427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.275208, 36.931377, 39.707870>,  <36.595856, 37.118355, 39.856941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.275208, 36.931377, 39.707870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517369, 0.230087, 0.824251,
		-0.299546, 0.853553, -0.426286,
		-0.801625, -0.467448, -0.372680,
		36.034721, 36.791142, 39.596066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.063290, 37.597130, 39.807583>,  <36.595856, 37.118355, 39.856941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.063290, 37.597130, 39.807583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.938862, 37.221169, 39.863895>,  <35.864204, 36.995590, 39.897682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.938862, 37.221169, 39.863895>,  <36.063290, 37.597130, 39.807583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.938862, 37.221169, 39.863895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433634, 0.272179, 0.858999,
		-0.845695, 0.206157, -0.492240,
		-0.311066, -0.939903, 0.140783,
		35.845543, 36.939198, 39.906132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.389847, 37.636044, 39.981014>,  <36.063290, 37.597130, 39.807583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.389847, 37.636044, 39.981014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.526882, 37.285465, 40.116352>,  <35.609104, 37.075119, 40.197556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.526882, 37.285465, 40.116352>,  <35.389847, 37.636044, 39.981014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.526882, 37.285465, 40.116352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314277, 0.232474, 0.920427,
		-0.885360, -0.421661, -0.195804,
		0.342589, -0.876446, 0.338342,
		35.629658, 37.022530, 40.217854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.318321, 37.575535, 40.708946>,  <35.389847, 37.636044, 39.981014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.318321, 37.575535, 40.708946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.430347, 37.195210, 40.656006>,  <35.497562, 36.967014, 40.624241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.430347, 37.195210, 40.656006>,  <35.318321, 37.575535, 40.708946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.430347, 37.195210, 40.656006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087962, -0.162703, 0.982746,
		-0.955942, -0.263592, -0.129203,
		0.280066, -0.950814, -0.132348,
		35.514366, 36.909966, 40.616302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.488472, 37.479946, 40.621971>,  <35.318321, 37.575535, 40.708946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.488472, 37.479946, 40.621971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.513069, 37.566124, 41.011803>,  <34.527828, 37.617828, 41.245701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.513069, 37.566124, 41.011803>,  <34.488472, 37.479946, 40.621971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.513069, 37.566124, 41.011803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230501, -0.946967, 0.223881,
		0.971127, -0.238409, -0.008573,
		0.061494, 0.215441, 0.974579,
		34.531517, 37.630756, 41.304176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.959881, 36.871479, 40.723763>,  <34.488472, 37.479946, 40.621971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.959881, 36.871479, 40.723763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.588348, 36.816643, 40.861443>,  <34.365429, 36.783741, 40.944050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.588348, 36.816643, 40.861443>,  <34.959881, 36.871479, 40.723763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.588348, 36.816643, 40.861443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364262, 0.168149, -0.915991,
		0.067691, -0.976183, -0.206117,
		-0.928833, -0.137085, 0.344204,
		34.309700, 36.775517, 40.964703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.722507, 36.221554, 40.384636>,  <34.959881, 36.871479, 40.723763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.722507, 36.221554, 40.384636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.450855, 36.491432, 40.500271>,  <34.287865, 36.653358, 40.569653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.450855, 36.491432, 40.500271>,  <34.722507, 36.221554, 40.384636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.450855, 36.491432, 40.500271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380590, 0.013091, -0.924651,
		-0.627643, -0.737979, 0.247892,
		-0.679129, 0.674696, 0.289084,
		34.247116, 36.693840, 40.586994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.122078, 36.101772, 39.812675>,  <34.722507, 36.221554, 40.384636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.122078, 36.101772, 39.812675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.258442, 36.472862, 39.751881>,  <35.340260, 36.695518, 39.715405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.258442, 36.472862, 39.751881>,  <35.122078, 36.101772, 39.812675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.258442, 36.472862, 39.751881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464063, -0.306672, -0.831022,
		-0.817574, 0.212771, -0.535072,
		0.340909, 0.927729, -0.151988,
		35.360714, 36.751183, 39.706284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.956383, 36.289272, 39.133022>,  <35.122078, 36.101772, 39.812675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.956383, 36.289272, 39.133022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.280933, 36.488991, 39.254601>,  <35.475662, 36.608822, 39.327545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.280933, 36.488991, 39.254601>,  <34.956383, 36.289272, 39.133022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.280933, 36.488991, 39.254601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391824, -0.078716, -0.916667,
		-0.433761, 0.862850, -0.259503,
		0.811373, 0.499294, 0.303941,
		35.524345, 36.638779, 39.345783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.250740, 36.623440, 38.463783>,  <34.956383, 36.289272, 39.133022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.250740, 36.623440, 38.463783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.551655, 36.629040, 38.727257>,  <35.732204, 36.632401, 38.885342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.551655, 36.629040, 38.727257>,  <35.250740, 36.623440, 38.463783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.551655, 36.629040, 38.727257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655325, -0.118996, -0.745915,
		0.067941, 0.992796, -0.098691,
		0.752285, 0.013996, 0.658688,
		35.777340, 36.633240, 38.924862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.813931, 37.139320, 38.284569>,  <35.250740, 36.623440, 38.463783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.813931, 37.139320, 38.284569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.997040, 36.874962, 38.522442>,  <36.106907, 36.716347, 38.665165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.997040, 36.874962, 38.522442>,  <35.813931, 37.139320, 38.284569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.997040, 36.874962, 38.522442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738744, -0.089408, -0.668029,
		0.494670, 0.745129, 0.447307,
		0.457775, -0.660900, 0.594687,
		36.134373, 36.676693, 38.700848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.563225, 37.340034, 38.419720>,  <35.813931, 37.139320, 38.284569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.563225, 37.340034, 38.419720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.503178, 36.945984, 38.453182>,  <36.467148, 36.709553, 38.473259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.503178, 36.945984, 38.453182>,  <36.563225, 37.340034, 38.419720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.503178, 36.945984, 38.453182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795143, -0.170589, -0.581933,
		0.587547, -0.020839, 0.808922,
		-0.150120, -0.985122, 0.083659,
		36.458141, 36.650448, 38.478279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.282066, 37.125648, 38.540184>,  <36.563225, 37.340034, 38.419720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.282066, 37.125648, 38.540184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.075996, 36.800503, 38.431488>,  <36.952354, 36.605415, 38.366268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.075996, 36.800503, 38.431488>,  <37.282066, 37.125648, 38.540184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.075996, 36.800503, 38.431488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767813, -0.296814, -0.567772,
		0.380864, -0.501151, 0.777039,
		-0.515175, -0.812865, -0.271744,
		36.921444, 36.556644, 38.349964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.775787, 36.612076, 38.426807>,  <37.282066, 37.125648, 38.540184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.775787, 36.612076, 38.426807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.458103, 36.459419, 38.237667>,  <37.267494, 36.367825, 38.124184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.458103, 36.459419, 38.237667>,  <37.775787, 36.612076, 38.426807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.458103, 36.459419, 38.237667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604107, -0.412059, -0.682101,
		0.065475, -0.827381, 0.557811,
		-0.794209, -0.381638, -0.472847,
		37.219841, 36.344929, 38.095814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.905434, 36.002533, 38.154083>,  <37.775787, 36.612076, 38.426807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.905434, 36.002533, 38.154083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.597858, 36.096287, 37.916157>,  <37.413315, 36.152538, 37.773403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.597858, 36.096287, 37.916157>,  <37.905434, 36.002533, 38.154083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.597858, 36.096287, 37.916157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406301, -0.539178, -0.737703,
		-0.493617, -0.808919, 0.319362,
		-0.768935, 0.234386, -0.594812,
		37.367180, 36.166603, 37.737713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.714275, 35.433270, 37.756084>,  <37.905434, 36.002533, 38.154083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.714275, 35.433270, 37.756084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.573158, 35.749401, 37.555721>,  <37.488487, 35.939079, 37.435505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.573158, 35.749401, 37.555721>,  <37.714275, 35.433270, 37.756084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.573158, 35.749401, 37.555721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136644, -0.486072, -0.863170,
		-0.925669, -0.372969, 0.063490,
		-0.352797, 0.790334, -0.500906,
		37.467319, 35.986500, 37.405449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.349113, 35.118675, 37.313293>,  <37.714275, 35.433270, 37.756084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.349113, 35.118675, 37.313293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.495224, 35.476021, 37.208622>,  <37.582890, 35.690426, 37.145821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.495224, 35.476021, 37.208622>,  <37.349113, 35.118675, 37.313293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.495224, 35.476021, 37.208622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135599, -0.329170, -0.934484,
		-0.920968, 0.305866, -0.241378,
		0.365281, 0.893361, -0.261680,
		37.604809, 35.744030, 37.130119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.967812, 35.397789, 36.728813>,  <37.349113, 35.118675, 37.313293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.967812, 35.397789, 36.728813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.334232, 35.557613, 36.714897>,  <37.554085, 35.653507, 36.706547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.334232, 35.557613, 36.714897>,  <36.967812, 35.397789, 36.728813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.334232, 35.557613, 36.714897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088184, -0.285267, -0.954383,
		-0.391253, 0.871193, -0.296553,
		0.916048, 0.399557, -0.034786,
		37.609047, 35.677479, 36.704460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.917160, 36.081924, 36.365623>,  <36.967812, 35.397789, 36.728813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.917160, 36.081924, 36.365623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.267292, 35.889275, 36.348446>,  <37.477371, 35.773685, 36.338139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.267292, 35.889275, 36.348446>,  <36.917160, 36.081924, 36.365623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.267292, 35.889275, 36.348446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057527, -0.015544, -0.998223,
		0.480101, 0.876240, -0.041312,
		0.875325, -0.481624, -0.042945,
		37.529888, 35.744789, 36.335564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.275829, 36.442272, 35.916885>,  <36.917160, 36.081924, 36.365623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.275829, 36.442272, 35.916885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.455086, 36.085007, 35.932007>,  <37.562637, 35.870647, 35.941082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.455086, 36.085007, 35.932007>,  <37.275829, 36.442272, 35.916885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.455086, 36.085007, 35.932007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133783, 0.025190, -0.990690,
		0.883897, 0.449024, 0.130779,
		0.448138, -0.893165, 0.037806,
		37.589527, 35.817059, 35.943348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.726547, 36.592789, 35.456867>,  <37.275829, 36.442272, 35.916885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.726547, 36.592789, 35.456867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.704422, 36.195087, 35.493546>,  <37.691147, 35.956467, 35.515553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.704422, 36.195087, 35.493546>,  <37.726547, 36.592789, 35.456867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.704422, 36.195087, 35.493546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282897, -0.103678, -0.953530,
		0.957554, -0.026804, 0.287005,
		-0.055314, -0.994250, 0.091694,
		37.687828, 35.896812, 35.521053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.309299, 36.276772, 35.249058>,  <37.726547, 36.592789, 35.456867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.309299, 36.276772, 35.249058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.048840, 35.975269, 35.213589>,  <37.892563, 35.794369, 35.192307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.048840, 35.975269, 35.213589>,  <38.309299, 36.276772, 35.249058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.048840, 35.975269, 35.213589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317290, -0.164225, -0.934001,
		0.689444, -0.636307, 0.346094,
		-0.651148, -0.753754, -0.088670,
		37.853497, 35.749142, 35.186989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.586296, 36.883518, 34.932167>,  <38.309299, 36.276772, 35.249058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.586296, 36.883518, 34.932167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.676685, 37.264458, 35.014111>,  <38.730919, 37.493023, 35.063278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.676685, 37.264458, 35.014111>,  <38.586296, 36.883518, 34.932167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.676685, 37.264458, 35.014111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488401, -0.071193, 0.869710,
		0.842851, -0.296588, 0.449040,
		0.225978, 0.952348, 0.204859,
		38.744480, 37.550163, 35.075569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.239159, 36.536518, 35.285896>,  <38.586296, 36.883518, 34.932167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.239159, 36.536518, 35.285896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.444977, 36.232700, 35.445065>,  <39.568466, 36.050411, 35.540565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.444977, 36.232700, 35.445065>,  <39.239159, 36.536518, 35.285896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.444977, 36.232700, 35.445065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696945, 0.640800, 0.321937,
		-0.499511, 0.111678, 0.859079,
		0.514544, -0.759542, 0.397920,
		39.599339, 36.004837, 35.564442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.595253, 36.793507, 35.949566>,  <39.239159, 36.536518, 35.285896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.595253, 36.793507, 35.949566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.776096, 36.483929, 35.772205>,  <39.884602, 36.298183, 35.665787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.776096, 36.483929, 35.772205>,  <39.595253, 36.793507, 35.949566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.776096, 36.483929, 35.772205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878433, 0.472592, 0.070797,
		0.154757, -0.421510, 0.893521,
		0.452112, -0.773942, -0.443405,
		39.911732, 36.251747, 35.639183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.072304, 36.497181, 36.376682>,  <39.595253, 36.793507, 35.949566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.072304, 36.497181, 36.376682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.184570, 36.461678, 35.994404>,  <40.251930, 36.440376, 35.765038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.184570, 36.461678, 35.994404>,  <40.072304, 36.497181, 36.376682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.184570, 36.461678, 35.994404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806179, 0.562155, 0.184547,
		0.520867, -0.822255, 0.229334,
		0.280666, -0.088760, -0.955692,
		40.268768, 36.435051, 35.707695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.740841, 36.350788, 36.487614>,  <40.072304, 36.497181, 36.376682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.740841, 36.350788, 36.487614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.681580, 36.514282, 36.127396>,  <40.646023, 36.612377, 35.911263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.681580, 36.514282, 36.127396>,  <40.740841, 36.350788, 36.487614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.681580, 36.514282, 36.127396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825603, 0.552427, 0.114908,
		0.544454, -0.726470, -0.419298,
		-0.148154, 0.408736, -0.900547,
		40.637135, 36.636902, 35.857231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.274052, 36.768394, 36.668221>,  <40.740841, 36.350788, 36.487614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.274052, 36.768394, 36.668221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.243641, 36.493309, 36.379421>,  <41.225395, 36.328259, 36.206142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.243641, 36.493309, 36.379421>,  <41.274052, 36.768394, 36.668221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.243641, 36.493309, 36.379421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897172, 0.268781, -0.350486,
		0.435091, -0.674397, 0.596561,
		-0.076022, -0.687711, -0.721994,
		41.220833, 36.286995, 36.162823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.791836, 36.109997, 36.620941>,  <41.274052, 36.768394, 36.668221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.791836, 36.109997, 36.620941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.652710, 36.265156, 36.279518>,  <41.569233, 36.358253, 36.074665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.652710, 36.265156, 36.279518>,  <41.791836, 36.109997, 36.620941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.652710, 36.265156, 36.279518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932923, 0.233649, -0.273978,
		0.093156, -0.891595, -0.443149,
		-0.347818, 0.387901, -0.853555,
		41.548363, 36.381527, 36.023453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.051579, 35.714046, 35.963902>,  <41.791836, 36.109997, 36.620941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.051579, 35.714046, 35.963902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.989281, 36.087151, 35.833851>,  <41.951904, 36.311012, 35.755821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.989281, 36.087151, 35.833851>,  <42.051579, 35.714046, 35.963902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.989281, 36.087151, 35.833851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937426, 0.035801, -0.346339,
		-0.311411, -0.358717, -0.879969,
		-0.155742, 0.932759, -0.325122,
		41.942558, 36.366978, 35.736313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.515820, 36.036339, 35.399681>,  <42.051579, 35.714046, 35.963902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.515820, 36.036339, 35.399681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.398079, 36.376766, 35.573597>,  <42.327435, 36.581020, 35.677948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.398079, 36.376766, 35.573597>,  <42.515820, 36.036339, 35.399681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.398079, 36.376766, 35.573597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869420, 0.427361, -0.247934,
		-0.396822, 0.305040, -0.865727,
		-0.294348, 0.851066, 0.434794,
		42.309776, 36.632088, 35.704037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.652618, 36.592278, 35.015152>,  <42.515820, 36.036339, 35.399681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.652618, 36.592278, 35.015152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.620396, 36.792374, 35.360004>,  <42.601063, 36.912430, 35.566917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.620396, 36.792374, 35.360004>,  <42.652618, 36.592278, 35.015152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.620396, 36.792374, 35.360004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764692, 0.585812, -0.268458,
		-0.639341, 0.637639, -0.429722,
		-0.080557, 0.500241, 0.862131,
		42.596230, 36.942448, 35.618645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.848522, 37.405148, 34.926716>,  <42.652618, 36.592278, 35.015152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.848522, 37.405148, 34.926716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.907841, 37.292068, 35.305786>,  <42.943432, 37.224220, 35.533230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.907841, 37.292068, 35.305786>,  <42.848522, 37.405148, 34.926716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.907841, 37.292068, 35.305786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707990, 0.699411, 0.097850,
		-0.690476, 0.656433, 0.303873,
		0.148301, -0.282702, 0.947674,
		42.952332, 37.207256, 35.590088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.592987, 37.940178, 35.301376>,  <42.848522, 37.405148, 34.926716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.592987, 37.940178, 35.301376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.864395, 37.745171, 35.521172>,  <43.027241, 37.628166, 35.653049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.864395, 37.745171, 35.521172>,  <42.592987, 37.940178, 35.301376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.864395, 37.745171, 35.521172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497023, 0.855491, 0.145271,
		-0.540905, 0.174540, 0.822774,
		0.678520, -0.487515, 0.549490,
		43.067951, 37.598915, 35.686020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.798149, 38.417767, 35.787361>,  <42.592987, 37.940178, 35.301376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.798149, 38.417767, 35.787361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.093655, 38.149666, 35.815628>,  <43.270958, 37.988804, 35.832588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.093655, 38.149666, 35.815628>,  <42.798149, 38.417767, 35.787361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.093655, 38.149666, 35.815628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673965, 0.734374, -0.080412,
		0.002000, 0.107033, 0.994254,
		0.738761, -0.670253, 0.070668,
		43.315285, 37.948589, 35.836830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.218876, 38.748707, 36.295776>,  <42.798149, 38.417767, 35.787361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.218876, 38.748707, 36.295776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.400639, 38.474419, 36.068336>,  <43.509697, 38.309845, 35.931873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.400639, 38.474419, 36.068336>,  <43.218876, 38.748707, 36.295776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.400639, 38.474419, 36.068336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720504, 0.658273, -0.218063,
		0.523824, -0.310591, 0.793184,
		0.454403, -0.685719, -0.568601,
		43.536961, 38.268703, 35.897755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.904583, 38.623894, 36.548222>,  <43.218876, 38.748707, 36.295776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.904583, 38.623894, 36.548222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.897625, 38.535728, 36.158119>,  <43.893452, 38.482830, 35.924057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.897625, 38.535728, 36.158119>,  <43.904583, 38.623894, 36.548222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.897625, 38.535728, 36.158119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766877, 0.622929, -0.154465,
		0.641559, -0.750584, 0.158195,
		-0.017395, -0.220414, -0.975251,
		43.892406, 38.469604, 35.865543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.639805, 38.464550, 36.390411>,  <43.904583, 38.623894, 36.548222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.639805, 38.464550, 36.390411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.429573, 38.566120, 36.065624>,  <44.303432, 38.627064, 35.870754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.429573, 38.566120, 36.065624>,  <44.639805, 38.464550, 36.390411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.429573, 38.566120, 36.065624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758743, 0.571604, -0.312374,
		0.384801, -0.780250, -0.493090,
		-0.525582, 0.253927, -0.811963,
		44.271900, 38.642300, 35.822037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.176907, 38.557133, 35.958107>,  <44.639805, 38.464550, 36.390411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.176907, 38.557133, 35.958107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.838177, 38.732323, 35.837402>,  <44.634937, 38.837437, 35.764980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.838177, 38.732323, 35.837402>,  <45.176907, 38.557133, 35.958107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.838177, 38.732323, 35.837402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531750, 0.709259, -0.462810,
		0.011329, -0.552383, -0.833513,
		-0.846826, 0.437977, -0.301765,
		44.584129, 38.863716, 35.746872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.818363, 38.622425, 36.054676>,  <45.176907, 38.557133, 35.958107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.818363, 38.622425, 36.054676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.162743, 38.759518, 36.205040>,  <46.369370, 38.841774, 36.295258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.162743, 38.759518, 36.205040>,  <45.818363, 38.622425, 36.054676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.162743, 38.759518, 36.205040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439635, -0.873066, -0.210892,
		0.255916, 0.346831, -0.902339,
		0.860946, 0.342729, 0.375911,
		46.421028, 38.862335, 36.317814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.378178, 38.691360, 35.601173>,  <45.818363, 38.622425, 36.054676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.378178, 38.691360, 35.601173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.556438, 38.640144, 35.955574>,  <46.663395, 38.609413, 36.168213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.556438, 38.640144, 35.955574>,  <46.378178, 38.691360, 35.601173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.556438, 38.640144, 35.955574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491558, -0.792162, -0.361732,
		0.748173, 0.596728, -0.290092,
		0.445655, -0.128041, 0.886001,
		46.690136, 38.601730, 36.221375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.180740, 38.646202, 35.644623>,  <46.378178, 38.691360, 35.601173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.180740, 38.646202, 35.644623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.963829, 38.405579, 35.879246>,  <46.833683, 38.261204, 36.020020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.963829, 38.405579, 35.879246>,  <47.180740, 38.646202, 35.644623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.963829, 38.405579, 35.879246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343161, -0.795818, -0.498913,
		0.766923, -0.069267, 0.637990,
		-0.542282, -0.601561, 0.586561,
		46.801144, 38.225109, 36.055214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.536976, 38.097782, 35.956451>,  <47.180740, 38.646202, 35.644623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.536976, 38.097782, 35.956451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.195892, 37.916409, 36.060211>,  <46.991241, 37.807587, 36.122467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.195892, 37.916409, 36.060211>,  <47.536976, 38.097782, 35.956451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.195892, 37.916409, 36.060211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447825, -0.890174, -0.083921,
		0.268962, 0.044604, 0.962117,
		-0.852709, -0.453432, 0.259398,
		46.940079, 37.780380, 36.138031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.651585, 37.663673, 36.482597>,  <47.536976, 38.097782, 35.956451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.651585, 37.663673, 36.482597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.366707, 37.532982, 36.234070>,  <47.195782, 37.454567, 36.084953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.366707, 37.532982, 36.234070>,  <47.651585, 37.663673, 36.482597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.366707, 37.532982, 36.234070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582305, -0.769275, -0.262940,
		-0.392053, -0.549058, 0.738126,
		-0.712191, -0.326728, -0.621315,
		47.153049, 37.434963, 36.047676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.672337, 36.847385, 36.476833>,  <47.651585, 37.663673, 36.482597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.672337, 36.847385, 36.476833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.510380, 36.981331, 36.136497>,  <47.413204, 37.061699, 35.932297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.510380, 36.981331, 36.136497>,  <47.672337, 36.847385, 36.476833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.510380, 36.981331, 36.136497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515382, -0.685045, -0.514873,
		-0.755277, -0.646975, 0.104784,
		-0.404892, 0.334868, -0.850839,
		47.388912, 37.081791, 35.881245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.442806, 36.245899, 36.170914>,  <47.672337, 36.847385, 36.476833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.442806, 36.245899, 36.170914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.470295, 36.525578, 35.886265>,  <47.486786, 36.693382, 35.715473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.470295, 36.525578, 35.886265>,  <47.442806, 36.245899, 36.170914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.470295, 36.525578, 35.886265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185666, -0.709811, -0.679482,
		-0.980207, -0.085432, -0.178593,
		0.068718, 0.699192, -0.711624,
		47.490910, 36.735336, 35.672779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.002037, 36.210278, 35.512173>,  <47.442806, 36.245899, 36.170914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.002037, 36.210278, 35.512173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.337372, 36.373154, 35.367184>,  <47.538574, 36.470879, 35.280190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.337372, 36.373154, 35.367184>,  <47.002037, 36.210278, 35.512173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.337372, 36.373154, 35.367184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065734, -0.735559, -0.674265,
		-0.541173, 0.541435, -0.643413,
		0.838338, 0.407188, -0.362474,
		47.588875, 36.495312, 35.258442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.711525, 35.876476, 35.348595>,  <47.002037, 36.210278, 35.512173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.711525, 35.876476, 35.348595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.494751, 35.946606, 35.019821>,  <47.364689, 35.988686, 34.822559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.494751, 35.946606, 35.019821>,  <47.711525, 35.876476, 35.348595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.494751, 35.946606, 35.019821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647845, 0.710142, -0.275670,
		0.535355, -0.681879, -0.498434,
		-0.541933, 0.175327, -0.821931,
		47.332172, 35.999203, 34.773243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.823723, 35.696926, 34.611305>,  <47.711525, 35.876476, 35.348595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.823723, 35.696926, 34.611305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.850594, 35.402504, 34.880737>,  <47.866718, 35.225849, 35.042397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.850594, 35.402504, 34.880737>,  <47.823723, 35.696926, 34.611305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.850594, 35.402504, 34.880737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875829, -0.279871, -0.393186,
		0.477923, 0.616352, 0.625860,
		0.067181, -0.736059, 0.673575,
		47.870747, 35.181686, 35.082809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.656487, 28.656517, 23.996769> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.274277, 28.766510, 23.954145>,  <34.044949, 28.832506, 23.928572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.274277, 28.766510, 23.954145>,  <34.656487, 28.656517, 23.996769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.274277, 28.766510, 23.954145> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051616, 0.199808, 0.978475,
		0.290352, 0.940459, -0.176729,
		-0.955527, 0.274980, -0.106557,
		33.987617, 28.849005, 23.922178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.565712, 29.097122, 24.456350>,  <34.656487, 28.656517, 23.996769>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.565712, 29.097122, 24.456350> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.182480, 29.005272, 24.387812>,  <33.952541, 28.950161, 24.346687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.182480, 29.005272, 24.387812>,  <34.565712, 29.097122, 24.456350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.182480, 29.005272, 24.387812> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221740, 0.215541, 0.950986,
		-0.181440, 0.949112, -0.257422,
		-0.958077, -0.229628, -0.171348,
		33.895058, 28.936384, 24.336407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.064919, 29.680805, 24.619892>,  <34.565712, 29.097122, 24.456350>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.064919, 29.680805, 24.619892> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.823322, 29.362835, 24.642836>,  <33.678364, 29.172052, 24.656603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.823322, 29.362835, 24.642836>,  <34.064919, 29.680805, 24.619892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.823322, 29.362835, 24.642836> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272936, 0.273925, 0.922210,
		-0.748799, 0.541351, -0.382412,
		-0.603992, -0.794924, 0.057361,
		33.642124, 29.124357, 24.660044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.453487, 29.941526, 25.059267>,  <34.064919, 29.680805, 24.619892>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.453487, 29.941526, 25.059267> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.442772, 29.541756, 25.067562>,  <33.436344, 29.301893, 25.072540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.442772, 29.541756, 25.067562>,  <33.453487, 29.941526, 25.059267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.442772, 29.541756, 25.067562> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358270, 0.028967, 0.933169,
		-0.933234, 0.017565, -0.358840,
		-0.026786, -0.999426, 0.020740,
		33.434734, 29.241928, 25.073784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.803787, 29.763578, 25.248596>,  <33.453487, 29.941526, 25.059267>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.803787, 29.763578, 25.248596> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.016697, 29.440559, 25.350220>,  <33.144444, 29.246748, 25.411194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.016697, 29.440559, 25.350220>,  <32.803787, 29.763578, 25.248596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.016697, 29.440559, 25.350220> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477829, -0.038855, 0.877593,
		-0.698827, -0.588520, -0.406552,
		0.532278, -0.807548, 0.254059,
		33.176380, 29.198296, 25.426437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.317921, 29.235567, 25.651213>,  <32.803787, 29.763578, 25.248596>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.317921, 29.235567, 25.651213> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.679447, 29.098249, 25.753403>,  <32.896362, 29.015860, 25.814716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.679447, 29.098249, 25.753403>,  <32.317921, 29.235567, 25.651213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.679447, 29.098249, 25.753403> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271149, 0.002433, 0.962535,
		-0.331052, -0.939226, -0.090884,
		0.903816, -0.343292, 0.255475,
		32.950592, 28.995262, 25.830046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.154976, 28.924591, 26.251385>,  <32.317921, 29.235567, 25.651213>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.154976, 28.924591, 26.251385> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.551846, 28.957218, 26.289213>,  <32.789967, 28.976795, 26.311911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.551846, 28.957218, 26.289213>,  <32.154976, 28.924591, 26.251385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.551846, 28.957218, 26.289213> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106917, 0.163391, 0.980751,
		0.064543, -0.983184, 0.170833,
		0.992171, 0.081565, 0.094574,
		32.849495, 28.981689, 26.317585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.389671, 28.442444, 26.821766>,  <32.154976, 28.924591, 26.251385>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.389671, 28.442444, 26.821766> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.670547, 28.723856, 26.777985>,  <32.839073, 28.892702, 26.751717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.670547, 28.723856, 26.777985>,  <32.389671, 28.442444, 26.821766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.670547, 28.723856, 26.777985> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048593, 0.200723, 0.978442,
		0.710331, -0.681732, 0.175132,
		0.702188, 0.703528, -0.109453,
		32.881203, 28.934914, 26.745150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.884823, 28.438667, 27.436720>,  <32.389671, 28.442444, 26.821766>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.884823, 28.438667, 27.436720> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.952301, 28.792446, 27.262690>,  <32.992786, 29.004713, 27.158272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.952301, 28.792446, 27.262690>,  <32.884823, 28.438667, 27.436720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.952301, 28.792446, 27.262690> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150965, 0.413011, 0.898127,
		0.974039, -0.217192, -0.063848,
		0.168696, 0.884449, -0.435077,
		33.002911, 29.057781, 27.132166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.492054, 28.713997, 27.764456>,  <32.884823, 28.438667, 27.436720>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.492054, 28.713997, 27.764456> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.279942, 29.017199, 27.612547>,  <33.152672, 29.199120, 27.521402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.279942, 29.017199, 27.612547>,  <33.492054, 28.713997, 27.764456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.279942, 29.017199, 27.612547> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146254, 0.523011, 0.839684,
		0.835110, 0.389727, -0.388205,
		-0.530283, 0.758005, -0.379773,
		33.120857, 29.244600, 27.498615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.927818, 29.293524, 27.769159>,  <33.492054, 28.713997, 27.764456>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.927818, 29.293524, 27.769159> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.552876, 29.431049, 27.791620>,  <33.327911, 29.513565, 27.805096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.552876, 29.431049, 27.791620>,  <33.927818, 29.293524, 27.769159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.552876, 29.431049, 27.791620> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209217, 0.426700, 0.879861,
		0.278550, 0.836491, -0.471902,
		-0.937357, 0.343816, 0.056151,
		33.271667, 29.534195, 27.808466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.979771, 29.973419, 28.016035>,  <33.927818, 29.293524, 27.769159>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.979771, 29.973419, 28.016035> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.590733, 29.908991, 28.083096>,  <33.357307, 29.870333, 28.123333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.590733, 29.908991, 28.083096>,  <33.979771, 29.973419, 28.016035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.590733, 29.908991, 28.083096> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074718, 0.466307, 0.881462,
		-0.220157, 0.869835, -0.441494,
		-0.972599, -0.161073, 0.167653,
		33.298954, 29.860668, 28.133392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.770069, 30.678850, 28.179375>,  <33.979771, 29.973419, 28.016035>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.770069, 30.678850, 28.179375> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.458542, 30.454954, 28.292606>,  <33.271626, 30.320616, 28.360544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.458542, 30.454954, 28.292606>,  <33.770069, 30.678850, 28.179375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.458542, 30.454954, 28.292606> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032357, 0.414847, 0.909316,
		-0.626416, 0.717350, -0.304979,
		-0.778817, -0.559741, 0.283078,
		33.224895, 30.287031, 28.377529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.268276, 31.091288, 28.492935>,  <33.770069, 30.678850, 28.179375>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.268276, 31.091288, 28.492935> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.195732, 30.725569, 28.637804>,  <33.152206, 30.506138, 28.724726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.195732, 30.725569, 28.637804>,  <33.268276, 31.091288, 28.492935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.195732, 30.725569, 28.637804> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085910, 0.381600, 0.920327,
		-0.979657, 0.135798, -0.147755,
		-0.181361, -0.914298, 0.362170,
		33.141323, 30.451279, 28.746454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.803791, 31.217480, 28.953362>,  <33.268276, 31.091288, 28.492935>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.803791, 31.217480, 28.953362> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.954388, 30.859209, 29.048035>,  <33.044746, 30.644247, 29.104837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.954388, 30.859209, 29.048035>,  <32.803791, 31.217480, 28.953362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.954388, 30.859209, 29.048035> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002871, 0.256605, 0.966512,
		-0.926418, -0.363199, 0.099180,
		0.376487, -0.895678, 0.236681,
		33.067333, 30.590506, 29.119040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.416817, 31.114706, 29.516443>,  <32.803791, 31.217480, 28.953362>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.416817, 31.114706, 29.516443> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.745140, 30.889507, 29.555042>,  <32.942135, 30.754389, 29.578201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.745140, 30.889507, 29.555042>,  <32.416817, 31.114706, 29.516443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.745140, 30.889507, 29.555042> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071185, 0.268443, 0.960662,
		-0.566754, -0.781648, 0.260417,
		0.820806, -0.562997, 0.096500,
		32.991383, 30.720608, 29.583992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.276039, 30.811611, 30.170267>,  <32.416817, 31.114706, 29.516443>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.276039, 30.811611, 30.170267> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.664986, 30.791050, 30.079168>,  <32.898354, 30.778713, 30.024509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.664986, 30.791050, 30.079168>,  <32.276039, 30.811611, 30.170267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.664986, 30.791050, 30.079168> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228773, 0.404589, 0.885421,
		0.046632, -0.913053, 0.405167,
		0.972363, -0.051402, -0.227748,
		32.956696, 30.775629, 30.010843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.715378, 30.417933, 30.716780>,  <32.276039, 30.811611, 30.170267>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.715378, 30.417933, 30.716780> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.948547, 30.673376, 30.515831>,  <33.088448, 30.826643, 30.395262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.948547, 30.673376, 30.515831>,  <32.715378, 30.417933, 30.716780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.948547, 30.673376, 30.515831> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490854, 0.215941, 0.844057,
		0.647506, -0.738612, -0.187587,
		0.582923, 0.638609, -0.502373,
		33.123425, 30.864958, 30.365118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.330662, 30.294636, 31.034069>,  <32.715378, 30.417933, 30.716780>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.330662, 30.294636, 31.034069> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.358578, 30.646669, 30.846207>,  <33.375328, 30.857891, 30.733488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.358578, 30.646669, 30.846207>,  <33.330662, 30.294636, 31.034069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.358578, 30.646669, 30.846207> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403796, 0.405588, 0.820029,
		0.912183, -0.246873, -0.327070,
		0.069788, 0.880086, -0.469657,
		33.379513, 30.910696, 30.705309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.958908, 30.618732, 31.370337>,  <33.330662, 30.294636, 31.034069>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.958908, 30.618732, 31.370337> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.760006, 30.909462, 31.180826>,  <33.640663, 31.083900, 31.067120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.760006, 30.909462, 31.180826>,  <33.958908, 30.618732, 31.370337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.760006, 30.909462, 31.180826> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314059, 0.659834, 0.682632,
		0.808767, 0.190648, -0.556371,
		-0.497255, 0.726824, -0.473777,
		33.610828, 31.127508, 31.038692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.417229, 31.196775, 31.459349>,  <33.958908, 30.618732, 31.370337>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.417229, 31.196775, 31.459349> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.073452, 31.363195, 31.340517>,  <33.867184, 31.463047, 31.269218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.073452, 31.363195, 31.340517>,  <34.417229, 31.196775, 31.459349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.073452, 31.363195, 31.340517> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224039, 0.828855, 0.512646,
		0.459522, 0.374034, -0.805567,
		-0.859445, 0.416051, -0.297078,
		33.815617, 31.488010, 31.251394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.585396, 31.807472, 32.057598>,  <34.417229, 31.196775, 31.459349>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.585396, 31.807472, 32.057598> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.688343, 32.191856, 32.016960>,  <34.750111, 32.422485, 31.992577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.688343, 32.191856, 32.016960>,  <34.585396, 31.807472, 32.057598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.688343, 32.191856, 32.016960> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265552, -0.171426, -0.948733,
		-0.929110, 0.217190, -0.299303,
		0.257364, 0.960959, -0.101598,
		34.765553, 32.480145, 31.986481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.257385, 32.103970, 31.443485>,  <34.585396, 31.807472, 32.057598>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.257385, 32.103970, 31.443485> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.560623, 32.356911, 31.507257>,  <34.742565, 32.508675, 31.545521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.560623, 32.356911, 31.507257>,  <34.257385, 32.103970, 31.443485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.560623, 32.356911, 31.507257> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443954, -0.321346, -0.836446,
		-0.477698, 0.704886, -0.524348,
		0.758096, 0.632355, 0.159431,
		34.788052, 32.546616, 31.555086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.397064, 32.376427, 30.822033>,  <34.257385, 32.103970, 31.443485>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.397064, 32.376427, 30.822033> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.728405, 32.414322, 31.042889>,  <34.927208, 32.437057, 31.175402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.728405, 32.414322, 31.042889>,  <34.397064, 32.376427, 30.822033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.728405, 32.414322, 31.042889> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560208, -0.141751, -0.816133,
		0.000951, 0.985359, -0.170490,
		0.828351, 0.094734, 0.552141,
		34.976910, 32.442741, 31.208530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.820164, 32.906963, 30.410055>,  <34.397064, 32.376427, 30.822033>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.820164, 32.906963, 30.410055> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.088108, 32.719307, 30.640249>,  <35.248875, 32.606712, 30.778366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.088108, 32.719307, 30.640249>,  <34.820164, 32.906963, 30.410055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.088108, 32.719307, 30.640249> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567451, -0.176373, -0.804296,
		0.478832, 0.865329, 0.148071,
		0.669865, -0.469146, 0.575485,
		35.289066, 32.578564, 30.812895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.482948, 33.157722, 30.207880>,  <34.820164, 32.906963, 30.410055>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.482948, 33.157722, 30.207880> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.581287, 32.824226, 30.405645>,  <35.640289, 32.624130, 30.524305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.581287, 32.824226, 30.405645>,  <35.482948, 33.157722, 30.207880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.581287, 32.824226, 30.405645> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637304, -0.245290, -0.730531,
		0.730345, 0.494687, 0.471042,
		0.245843, -0.833737, 0.494413,
		35.655041, 32.574104, 30.553968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.216557, 33.068665, 30.205139>,  <35.482948, 33.157722, 30.207880>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.216557, 33.068665, 30.205139> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.090382, 32.697823, 30.286104>,  <36.014679, 32.475315, 30.334682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.090382, 32.697823, 30.286104>,  <36.216557, 33.068665, 30.205139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.090382, 32.697823, 30.286104> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544699, -0.351557, -0.761387,
		0.777048, -0.129913, 0.615888,
		-0.315434, -0.927108, 0.202413,
		35.995750, 32.419689, 30.346828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.837250, 32.593433, 30.227894>,  <36.216557, 33.068665, 30.205139>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.837250, 32.593433, 30.227894> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.513065, 32.369511, 30.158890>,  <36.318554, 32.235157, 30.117487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.513065, 32.369511, 30.158890>,  <36.837250, 32.593433, 30.227894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.513065, 32.369511, 30.158890> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454987, -0.416092, -0.787309,
		0.368963, -0.716576, 0.591934,
		-0.810465, -0.559809, -0.172510,
		36.269924, 32.201569, 30.107136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.128429, 31.926023, 30.026968>,  <36.837250, 32.593433, 30.227894>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.128429, 31.926023, 30.026968> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.744690, 31.914488, 29.914673>,  <36.514446, 31.907566, 29.847296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.744690, 31.914488, 29.914673>,  <37.128429, 31.926023, 30.026968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.744690, 31.914488, 29.914673> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263262, -0.449854, -0.853419,
		-0.101678, -0.892636, 0.439160,
		-0.959351, -0.028840, -0.280738,
		36.456886, 31.905836, 29.830452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.028118, 31.229342, 29.669960>,  <37.128429, 31.926023, 30.026968>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.028118, 31.229342, 29.669960> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.717430, 31.437061, 29.527391>,  <36.531017, 31.561693, 29.441851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.717430, 31.437061, 29.527391>,  <37.028118, 31.229342, 29.669960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.717430, 31.437061, 29.527391> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154107, -0.391995, -0.906968,
		-0.610706, -0.759384, 0.224441,
		-0.776717, 0.519303, -0.356420,
		36.484413, 31.592852, 29.420465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.724922, 30.739294, 29.289015>,  <37.028118, 31.229342, 29.669960>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.724922, 30.739294, 29.289015> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.611362, 31.103563, 29.168962>,  <36.543228, 31.322124, 29.096931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.611362, 31.103563, 29.168962>,  <36.724922, 30.739294, 29.289015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.611362, 31.103563, 29.168962> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082258, -0.288726, -0.953871,
		-0.955320, -0.295488, 0.007058,
		-0.283896, 0.910672, -0.300132,
		36.526196, 31.376764, 29.078922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.175648, 30.734259, 28.839577>,  <36.724922, 30.739294, 29.289015>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.175648, 30.734259, 28.839577> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.331535, 31.093569, 28.758364>,  <36.425068, 31.309155, 28.709637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.331535, 31.093569, 28.758364>,  <36.175648, 30.734259, 28.839577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.331535, 31.093569, 28.758364> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090550, -0.256772, -0.962221,
		-0.916470, 0.356614, -0.181409,
		0.389722, 0.898273, -0.203032,
		36.448452, 31.363050, 28.697454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.653381, 31.037798, 28.292055>,  <36.175648, 30.734259, 28.839577>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.653381, 31.037798, 28.292055> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.006065, 31.221573, 28.249136>,  <36.217674, 31.331839, 28.223385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.006065, 31.221573, 28.249136>,  <35.653381, 31.037798, 28.292055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.006065, 31.221573, 28.249136> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068109, -0.101088, -0.992543,
		-0.466858, 0.882439, -0.057838,
		0.881706, 0.459437, -0.107296,
		36.270576, 31.359404, 28.216948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.574257, 31.434683, 27.691269>,  <35.653381, 31.037798, 28.292055>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.574257, 31.434683, 27.691269> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.970833, 31.421778, 27.741882>,  <36.208778, 31.414036, 27.772251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.970833, 31.421778, 27.741882>,  <35.574257, 31.434683, 27.691269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.970833, 31.421778, 27.741882> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124475, -0.059395, -0.990443,
		0.039469, 0.997713, -0.054870,
		0.991437, -0.032262, 0.126535,
		36.268265, 31.412100, 27.779842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.739372, 31.715094, 27.141693>,  <35.574257, 31.434683, 27.691269>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.739372, 31.715094, 27.141693> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.091904, 31.570679, 27.263620>,  <36.303421, 31.484030, 27.336777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.091904, 31.570679, 27.263620>,  <35.739372, 31.715094, 27.141693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.091904, 31.570679, 27.263620> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279974, -0.120649, -0.952396,
		0.380626, 0.924714, -0.005250,
		0.881327, -0.361037, 0.304818,
		36.356300, 31.462368, 27.355066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.342175, 32.012356, 26.822660>,  <35.739372, 31.715094, 27.141693>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.342175, 32.012356, 26.822660> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.466831, 31.644485, 26.918222>,  <36.541626, 31.423763, 26.975559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.466831, 31.644485, 26.918222>,  <36.342175, 32.012356, 26.822660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.466831, 31.644485, 26.918222> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040504, -0.238339, -0.970337,
		0.949337, 0.312072, -0.037025,
		0.311640, -0.919677, 0.238904,
		36.560322, 31.368582, 26.989893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.952370, 31.835634, 26.338385>,  <36.342175, 32.012356, 26.822660>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.952370, 31.835634, 26.338385> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.805477, 31.493202, 26.483860>,  <36.717342, 31.287743, 26.571146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.805477, 31.493202, 26.483860>,  <36.952370, 31.835634, 26.338385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.805477, 31.493202, 26.483860> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049752, -0.408527, -0.911389,
		0.928799, -0.316594, 0.192614,
		-0.367228, -0.856081, 0.363688,
		36.695309, 31.236378, 26.592966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.323181, 31.295364, 26.046684>,  <36.952370, 31.835634, 26.338385>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.323181, 31.295364, 26.046684> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.993710, 31.104130, 26.168653>,  <36.796024, 30.989389, 26.241835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.993710, 31.104130, 26.168653>,  <37.323181, 31.295364, 26.046684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.993710, 31.104130, 26.168653> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037233, -0.582173, -0.812212,
		0.565826, -0.657653, 0.497327,
		-0.823684, -0.478088, 0.304922,
		36.746605, 30.960703, 26.260130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.426472, 30.627388, 25.878435>,  <37.323181, 31.295364, 26.046684>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.426472, 30.627388, 25.878435> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.028156, 30.613649, 25.912426>,  <36.789165, 30.605406, 25.932821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.028156, 30.613649, 25.912426>,  <37.426472, 30.627388, 25.878435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.028156, 30.613649, 25.912426> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058157, -0.479816, -0.875440,
		0.070843, -0.876697, 0.475798,
		-0.995791, -0.034348, 0.084978,
		36.729420, 30.603346, 25.937920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.176579, 29.937521, 25.681135>,  <37.426472, 30.627388, 25.878435>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.176579, 29.937521, 25.681135> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.848148, 30.165375, 25.666439>,  <36.651089, 30.302088, 25.657621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.848148, 30.165375, 25.666439>,  <37.176579, 29.937521, 25.681135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.848148, 30.165375, 25.666439> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200907, -0.348634, -0.915473,
		-0.534295, -0.744291, 0.400698,
		-0.821076, 0.569636, -0.036740,
		36.601826, 30.336266, 25.655416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.492905, 29.546150, 25.362192> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.402531, 29.933691, 25.321630>,  <36.348309, 30.166216, 25.297293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.402531, 29.933691, 25.321630>,  <36.492905, 29.546150, 25.362192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.402531, 29.933691, 25.321630> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310241, -0.170239, -0.935291,
		-0.923421, -0.179852, 0.339039,
		-0.225932, 0.968851, -0.101405,
		36.334751, 30.224346, 25.291208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.755379, 29.654860, 25.186235>,  <36.492905, 29.546150, 25.362192>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.755379, 29.654860, 25.186235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.893902, 30.012169, 25.071602>,  <35.977016, 30.226555, 25.002821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.893902, 30.012169, 25.071602>,  <35.755379, 29.654860, 25.186235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.893902, 30.012169, 25.071602> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308177, -0.180208, -0.934105,
		-0.886056, 0.411810, 0.212878,
		0.346311, 0.893273, -0.286585,
		35.997795, 30.280151, 24.985626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.286610, 29.863615, 24.724737>,  <35.755379, 29.654860, 25.186235>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.286610, 29.863615, 24.724737> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.604626, 30.091490, 24.641428>,  <35.795433, 30.228214, 24.591442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.604626, 30.091490, 24.641428>,  <35.286610, 29.863615, 24.724737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.604626, 30.091490, 24.641428> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195223, -0.084768, -0.977089,
		-0.574287, 0.817480, 0.043822,
		0.795036, 0.569685, -0.208272,
		35.843136, 30.262396, 24.578947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.035061, 30.312588, 24.228567>,  <35.286610, 29.863615, 24.724737>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.035061, 30.312588, 24.228567> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.430809, 30.264601, 24.195677>,  <35.668259, 30.235809, 24.175943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.430809, 30.264601, 24.195677>,  <35.035061, 30.312588, 24.228567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.430809, 30.264601, 24.195677> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071142, 0.093906, -0.993036,
		0.126852, 0.988327, 0.084373,
		0.989367, -0.119966, -0.082224,
		35.727619, 30.228611, 24.171009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.085609, 30.515633, 23.459780>,  <35.035061, 30.312588, 24.228567>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.085609, 30.515633, 23.459780> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.429260, 30.348671, 23.578220>,  <35.635448, 30.248493, 23.649284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.429260, 30.348671, 23.578220>,  <35.085609, 30.515633, 23.459780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.429260, 30.348671, 23.578220> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271700, -0.118298, -0.955084,
		0.433686, 0.900987, 0.011776,
		0.859125, -0.417406, 0.296102,
		35.686996, 30.223450, 23.667051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.683392, 30.757643, 23.131363>,  <35.085609, 30.515633, 23.459780>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.683392, 30.757643, 23.131363> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.830765, 30.409098, 23.260967>,  <35.919189, 30.199970, 23.338730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.830765, 30.409098, 23.260967>,  <35.683392, 30.757643, 23.131363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.830765, 30.409098, 23.260967> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471985, -0.124948, -0.872707,
		0.800930, 0.474462, 0.365236,
		0.368431, -0.871363, 0.324013,
		35.941296, 30.147688, 23.358171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.321064, 30.815001, 23.029373>,  <35.683392, 30.757643, 23.131363>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.321064, 30.815001, 23.029373> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.219730, 30.428406, 23.012747>,  <36.158932, 30.196449, 23.002771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.219730, 30.428406, 23.012747>,  <36.321064, 30.815001, 23.029373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.219730, 30.428406, 23.012747> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364019, -0.055429, -0.929741,
		0.896278, -0.250662, 0.365861,
		-0.253330, -0.966487, -0.041566,
		36.143730, 30.138460, 23.000277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.941048, 30.488747, 22.878986>,  <36.321064, 30.815001, 23.029373>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.941048, 30.488747, 22.878986> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.669159, 30.226183, 22.748079>,  <36.506027, 30.068645, 22.669535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.669159, 30.226183, 22.748079>,  <36.941048, 30.488747, 22.878986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.669159, 30.226183, 22.748079> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543424, -0.151024, -0.825761,
		0.492612, -0.739134, 0.459363,
		-0.679723, -0.656409, -0.327267,
		36.465240, 30.029261, 22.649899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.346775, 30.157166, 22.443369>,  <36.941048, 30.488747, 22.878986>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.346775, 30.157166, 22.443369> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.973358, 30.057972, 22.339825>,  <36.749310, 29.998457, 22.277699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.973358, 30.057972, 22.339825>,  <37.346775, 30.157166, 22.443369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.973358, 30.057972, 22.339825> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321738, -0.261188, -0.910091,
		0.158076, -0.932891, 0.323615,
		-0.933540, -0.247983, -0.258858,
		36.693295, 29.983578, 22.262167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.338272, 29.561701, 21.976913>,  <37.346775, 30.157166, 22.443369>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.338272, 29.561701, 21.976913> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.976311, 29.721123, 21.917168>,  <36.759136, 29.816776, 21.881321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.976311, 29.721123, 21.917168>,  <37.338272, 29.561701, 21.976913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.976311, 29.721123, 21.917168> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120968, -0.095633, -0.988039,
		-0.408072, -0.912145, 0.038326,
		-0.904900, 0.398555, -0.149365,
		36.704842, 29.840689, 21.872358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.120560, 29.265589, 21.364504>,  <37.338272, 29.561701, 21.976913>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.120560, 29.265589, 21.364504> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.879776, 29.583519, 21.395233>,  <36.735306, 29.774277, 21.413670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.879776, 29.583519, 21.395233>,  <37.120560, 29.265589, 21.364504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.879776, 29.583519, 21.395233> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024053, 0.078113, -0.996654,
		-0.798165, -0.601792, -0.027903,
		-0.601959, 0.794824, 0.076822,
		36.699188, 29.821966, 21.418280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.528538, 29.094124, 20.880798>,  <37.120560, 29.265589, 21.364504>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.528538, 29.094124, 20.880798> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.576733, 29.486658, 20.940750>,  <36.605648, 29.722179, 20.976721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.576733, 29.486658, 20.940750>,  <36.528538, 29.094124, 20.880798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.576733, 29.486658, 20.940750> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017721, 0.148830, -0.988704,
		-0.992557, 0.121780, 0.000542,
		0.120485, 0.981335, 0.149880,
		36.612877, 29.781059, 20.985714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.209946, 29.374605, 20.351759>,  <36.528538, 29.094124, 20.880798>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.209946, 29.374605, 20.351759> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.431042, 29.680471, 20.484283>,  <36.563698, 29.863991, 20.563799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.431042, 29.680471, 20.484283>,  <36.209946, 29.374605, 20.351759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.431042, 29.680471, 20.484283> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289255, 0.196808, -0.936802,
		-0.781545, 0.613640, -0.112400,
		0.552738, 0.764665, 0.331312,
		36.596863, 29.909870, 20.583677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.110382, 29.897940, 19.854679>,  <36.209946, 29.374605, 20.351759>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.110382, 29.897940, 19.854679> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.433529, 30.034767, 20.046654>,  <36.627419, 30.116863, 20.161839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.433529, 30.034767, 20.046654>,  <36.110382, 29.897940, 19.854679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.433529, 30.034767, 20.046654> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401818, 0.276050, -0.873120,
		-0.431155, 0.898212, 0.085561,
		0.807866, 0.342070, 0.479938,
		36.675888, 30.137388, 20.190636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.190723, 30.661402, 19.701715>,  <36.110382, 29.897940, 19.854679>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.190723, 30.661402, 19.701715> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.526722, 30.463455, 19.790728>,  <36.728321, 30.344687, 19.844135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.526722, 30.463455, 19.790728>,  <36.190723, 30.661402, 19.701715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.526722, 30.463455, 19.790728> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350060, 0.180905, -0.919093,
		0.414572, 0.849929, 0.325192,
		0.839993, -0.494867, 0.222528,
		36.778721, 30.314995, 19.857487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.703938, 31.034164, 19.316505>,  <36.190723, 30.661402, 19.701715>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.703938, 31.034164, 19.316505> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.865639, 30.680313, 19.409468>,  <36.962658, 30.468002, 19.465246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.865639, 30.680313, 19.409468>,  <36.703938, 31.034164, 19.316505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.865639, 30.680313, 19.409468> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501276, 0.001745, -0.865286,
		0.765050, 0.466294, 0.444148,
		0.404253, -0.884628, 0.232407,
		36.986916, 30.414925, 19.479191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.422211, 31.006029, 19.244564>,  <36.703938, 31.034164, 19.316505>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.422211, 31.006029, 19.244564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.344673, 30.613867, 19.230532>,  <37.298149, 30.378571, 19.222113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.344673, 30.613867, 19.230532>,  <37.422211, 31.006029, 19.244564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.344673, 30.613867, 19.230532> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472783, -0.062024, -0.878993,
		0.859593, -0.186975, 0.475541,
		-0.193845, -0.980405, -0.035083,
		37.286518, 30.319746, 19.220007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.991714, 30.771938, 18.998980>,  <37.422211, 31.006029, 19.244564>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.991714, 30.771938, 18.998980> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.729824, 30.473186, 18.952488>,  <37.572689, 30.293936, 18.924593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.729824, 30.473186, 18.952488>,  <37.991714, 30.771938, 18.998980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.729824, 30.473186, 18.952488> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342784, -0.156338, -0.926314,
		0.673675, -0.646319, 0.358377,
		-0.654722, -0.746880, -0.116227,
		37.533409, 30.249123, 18.917620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.403145, 30.177036, 18.713682>,  <37.991714, 30.771938, 18.998980>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.403145, 30.177036, 18.713682> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.029522, 30.079264, 18.609539>,  <37.805347, 30.020599, 18.547054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.029522, 30.079264, 18.609539>,  <38.403145, 30.177036, 18.713682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.029522, 30.079264, 18.609539> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295496, -0.119622, -0.947825,
		0.200534, -0.962260, 0.183963,
		-0.934060, -0.244431, -0.260356,
		37.749306, 30.005934, 18.531433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.470150, 29.580692, 18.266285>,  <38.403145, 30.177036, 18.713682>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.470150, 29.580692, 18.266285> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.096069, 29.698561, 18.187727>,  <37.871620, 29.769281, 18.140593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.096069, 29.698561, 18.187727>,  <38.470150, 29.580692, 18.266285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.096069, 29.698561, 18.187727> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157376, -0.150977, -0.975930,
		-0.317231, -0.943596, 0.094819,
		-0.935199, 0.294673, -0.196394,
		37.815510, 29.786963, 18.128809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.214382, 28.959196, 17.893064>,  <38.470150, 29.580692, 18.266285>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.214382, 28.959196, 17.893064> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.023315, 29.302868, 17.819700>,  <37.908676, 29.509071, 17.775681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.023315, 29.302868, 17.819700>,  <38.214382, 28.959196, 17.893064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.023315, 29.302868, 17.819700> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055772, -0.178693, -0.982323,
		-0.876768, -0.479454, 0.037437,
		-0.477668, 0.859182, -0.183412,
		37.880016, 29.560623, 17.764677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.599110, 28.751284, 17.550226>,  <38.214382, 28.959196, 17.893064>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.599110, 28.751284, 17.550226> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.707840, 29.126629, 17.464823>,  <37.773079, 29.351835, 17.413580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.707840, 29.126629, 17.464823>,  <37.599110, 28.751284, 17.550226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.707840, 29.126629, 17.464823> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121328, -0.253510, -0.959694,
		-0.954668, 0.234965, -0.182760,
		0.271825, 0.938363, -0.213510,
		37.789387, 29.408138, 17.400770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.379787, 28.944836, 16.890314>,  <37.599110, 28.751284, 17.550226>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.379787, 28.944836, 16.890314> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.666592, 29.217545, 16.948391>,  <37.838673, 29.381170, 16.983238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.666592, 29.217545, 16.948391>,  <37.379787, 28.944836, 16.890314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.666592, 29.217545, 16.948391> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263632, -0.072408, -0.961902,
		-0.645286, 0.727972, -0.231654,
		0.717011, 0.681773, 0.145193,
		37.881695, 29.422077, 16.991949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.605034, 29.008892, 16.559935>,  <37.379787, 28.944836, 16.890314>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.605034, 29.008892, 16.559935> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.536720, 29.104248, 16.177521>,  <36.495731, 29.161461, 15.948072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.536720, 29.104248, 16.177521>,  <36.605034, 29.008892, 16.559935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.536720, 29.104248, 16.177521> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492632, -0.860968, -0.126680,
		-0.853314, 0.449338, 0.264481,
		-0.170787, 0.238390, -0.956035,
		36.485485, 29.175764, 15.890710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.967342, 28.529476, 16.661146>,  <36.605034, 29.008892, 16.559935>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.967342, 28.529476, 16.661146> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.620255, 28.615402, 16.481848>,  <35.412003, 28.666958, 16.374269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.620255, 28.615402, 16.481848>,  <35.967342, 28.529476, 16.661146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.620255, 28.615402, 16.481848> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325623, 0.435683, 0.839137,
		0.375552, 0.874091, -0.308100,
		-0.867716, 0.214815, -0.448245,
		35.359940, 28.679846, 16.347374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.816708, 29.164206, 16.916578>,  <35.967342, 28.529476, 16.661146>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.816708, 29.164206, 16.916578> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.492519, 28.963692, 16.795353>,  <35.298004, 28.843384, 16.722618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.492519, 28.963692, 16.795353>,  <35.816708, 29.164206, 16.916578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.492519, 28.963692, 16.795353> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485788, 0.286084, 0.825933,
		-0.327324, 0.816622, -0.475381,
		-0.810474, -0.501282, -0.303063,
		35.249378, 28.813307, 16.704433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.323662, 29.673443, 16.964157>,  <35.816708, 29.164206, 16.916578>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.323662, 29.673443, 16.964157> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.130405, 29.323265, 16.958954>,  <35.014450, 29.113157, 16.955832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.130405, 29.323265, 16.958954>,  <35.323662, 29.673443, 16.964157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.130405, 29.323265, 16.958954> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522924, 0.276609, 0.806249,
		-0.702229, 0.396336, -0.591433,
		-0.483142, -0.875446, -0.013010,
		34.985462, 29.060631, 16.955051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.603977, 29.814816, 16.995480>,  <35.323662, 29.673443, 16.964157>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.603977, 29.814816, 16.995480> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.652775, 29.436911, 17.117161>,  <34.682053, 29.210167, 17.190170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.652775, 29.436911, 17.117161>,  <34.603977, 29.814816, 16.995480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.652775, 29.436911, 17.117161> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518365, 0.200724, 0.831268,
		-0.846412, -0.259101, -0.465245,
		0.121997, -0.944762, 0.304204,
		34.689373, 29.153482, 17.208422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.994984, 29.632792, 17.184525>,  <34.603977, 29.814816, 16.995480>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.994984, 29.632792, 17.184525> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.221794, 29.360401, 17.369890>,  <34.357880, 29.196966, 17.481110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.221794, 29.360401, 17.369890>,  <33.994984, 29.632792, 17.184525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.221794, 29.360401, 17.369890> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542487, 0.114622, 0.832207,
		-0.619833, -0.723277, -0.304429,
		0.567023, -0.680979, 0.463415,
		34.391903, 29.156107, 17.508915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.499466, 29.163233, 17.710255>,  <33.994984, 29.632792, 17.184525>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.499466, 29.163233, 17.710255> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.882729, 29.141790, 17.822725>,  <34.112686, 29.128925, 17.890207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.882729, 29.141790, 17.822725>,  <33.499466, 29.163233, 17.710255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.882729, 29.141790, 17.822725> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282921, -0.028174, 0.958729,
		-0.043488, -0.998164, -0.042166,
		0.958157, -0.053622, 0.281177,
		34.170177, 29.125710, 17.907078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.516861, 28.710283, 18.275822>,  <33.499466, 29.163233, 17.710255>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.516861, 28.710283, 18.275822> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.861645, 28.911993, 18.296774>,  <34.068516, 29.033018, 18.309345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.861645, 28.911993, 18.296774>,  <33.516861, 28.710283, 18.275822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.861645, 28.911993, 18.296774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044341, -0.027937, 0.998626,
		0.505043, -0.863093, -0.001720,
		0.861955, 0.504272, 0.052380,
		34.120232, 29.063274, 18.312489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.952900, 28.408913, 18.841331>,  <33.516861, 28.710283, 18.275822>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.952900, 28.408913, 18.841331> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.125496, 28.766665, 18.794167>,  <34.229053, 28.981316, 18.765867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.125496, 28.766665, 18.794167>,  <33.952900, 28.408913, 18.841331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.125496, 28.766665, 18.794167> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236169, 0.014155, 0.971609,
		0.870654, -0.447089, -0.205117,
		0.431492, 0.894378, -0.117913,
		34.254944, 29.034977, 18.758793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.501282, 28.348160, 19.311417>,  <33.952900, 28.408913, 18.841331>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.501282, 28.348160, 19.311417> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.456940, 28.737598, 19.231596>,  <34.430336, 28.971262, 19.183704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.456940, 28.737598, 19.231596>,  <34.501282, 28.348160, 19.311417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.456940, 28.737598, 19.231596> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014609, 0.199169, 0.979856,
		0.993729, 0.111534, -0.007855,
		-0.110852, 0.973597, -0.199550,
		34.423683, 29.029678, 19.171732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.029171, 28.747103, 19.731581>,  <34.501282, 28.348160, 19.311417>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.029171, 28.747103, 19.731581> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.740974, 29.008343, 19.638319>,  <34.568058, 29.165087, 19.582361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.740974, 29.008343, 19.638319>,  <35.029171, 28.747103, 19.731581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.740974, 29.008343, 19.638319> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071595, 0.264363, 0.961762,
		0.689762, 0.709630, -0.143711,
		-0.720488, 0.653098, -0.233154,
		34.524830, 29.204271, 19.568373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.203148, 29.357306, 20.040461>,  <35.029171, 28.747103, 19.731581>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.203148, 29.357306, 20.040461> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.809608, 29.390610, 19.977072>,  <34.573486, 29.410593, 19.939039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.809608, 29.390610, 19.977072>,  <35.203148, 29.357306, 20.040461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.809608, 29.390610, 19.977072> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146304, 0.136146, 0.979826,
		0.103156, 0.987184, -0.121766,
		-0.983847, 0.083260, -0.158473,
		34.514454, 29.415588, 19.929529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.002686, 29.794445, 20.508101>,  <35.203148, 29.357306, 20.040461>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.002686, 29.794445, 20.508101> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.659184, 29.607794, 20.423439>,  <34.453083, 29.495804, 20.372643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.659184, 29.607794, 20.423439>,  <35.002686, 29.794445, 20.508101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.659184, 29.607794, 20.423439> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282763, 0.087103, 0.955227,
		-0.427298, 0.880155, -0.206745,
		-0.858756, -0.466627, -0.211656,
		34.401558, 29.467806, 20.359941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.363132, 30.206900, 20.722178>,  <35.002686, 29.794445, 20.508101>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.363132, 30.206900, 20.722178> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.307140, 29.811510, 20.745230>,  <34.273544, 29.574276, 20.759062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.307140, 29.811510, 20.745230>,  <34.363132, 30.206900, 20.722178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.307140, 29.811510, 20.745230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314195, 0.099542, 0.944125,
		-0.938981, 0.114054, -0.324508,
		-0.139984, -0.988475, 0.057633,
		34.265144, 29.514967, 20.762520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.023918, 30.296719, 21.268908>,  <34.363132, 30.206900, 20.722178>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.023918, 30.296719, 21.268908> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.063126, 29.901388, 21.222254>,  <34.086651, 29.664190, 21.194262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.063126, 29.901388, 21.222254>,  <34.023918, 30.296719, 21.268908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.063126, 29.901388, 21.222254> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285235, -0.140180, 0.948151,
		-0.953432, -0.059670, -0.295646,
		0.098020, -0.988326, -0.116633,
		34.092533, 29.604891, 21.187263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.464035, 30.037066, 21.619835>,  <34.023918, 30.296719, 21.268908>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.464035, 30.037066, 21.619835> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.706310, 29.718796, 21.617105>,  <33.851677, 29.527834, 21.615467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.706310, 29.718796, 21.617105>,  <33.464035, 30.037066, 21.619835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.706310, 29.718796, 21.617105> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355387, -0.278182, 0.892365,
		-0.711930, -0.538068, -0.451264,
		0.605686, -0.795674, -0.006824,
		33.888016, 29.480093, 21.615059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.073589, 29.405363, 21.811415>,  <33.464035, 30.037066, 21.619835>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.073589, 29.405363, 21.811415> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.460396, 29.318840, 21.865211>,  <33.692478, 29.266926, 21.897490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.460396, 29.318840, 21.865211>,  <33.073589, 29.405363, 21.811415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.460396, 29.318840, 21.865211> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173765, -0.174172, 0.969262,
		-0.186263, -0.960657, -0.206019,
		0.967012, -0.216337, 0.134486,
		33.750500, 29.253948, 21.905560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.094765, 28.766905, 22.193129>,  <33.073589, 29.405363, 21.811415>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.094765, 28.766905, 22.193129> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.455273, 28.935768, 22.232096>,  <33.671577, 29.037086, 22.255476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.455273, 28.935768, 22.232096>,  <33.094765, 28.766905, 22.193129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.455273, 28.935768, 22.232096> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002571, -0.219633, 0.975579,
		0.433243, -0.879514, -0.196864,
		0.901273, 0.422157, 0.097416,
		33.725655, 29.062416, 22.261320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.372818, 28.334007, 22.524008>,  <33.094765, 28.766905, 22.193129>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.372818, 28.334007, 22.524008> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.593964, 28.659946, 22.593714>,  <33.726650, 28.855509, 22.635536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.593964, 28.659946, 22.593714>,  <33.372818, 28.334007, 22.524008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.593964, 28.659946, 22.593714> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038534, -0.233909, 0.971494,
		0.832381, -0.530388, -0.160719,
		0.552863, 0.814847, 0.174264,
		33.759823, 28.904400, 22.645992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.835266, 28.117252, 23.013847>,  <33.372818, 28.334007, 22.524008>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.835266, 28.117252, 23.013847> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.882530, 28.511244, 23.064217>,  <33.910889, 28.747639, 23.094439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.882530, 28.511244, 23.064217>,  <33.835266, 28.117252, 23.013847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.882530, 28.511244, 23.064217> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060601, -0.133727, 0.989164,
		0.991143, -0.109252, -0.075493,
		0.118164, 0.984978, 0.125922,
		33.917980, 28.806738, 23.101994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.404541, 28.174063, 23.430038>,  <33.835266, 28.117252, 23.013847>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.404541, 28.174063, 23.430038> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.170815, 28.495127, 23.477892>,  <34.030579, 28.687765, 23.506605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.170815, 28.495127, 23.477892>,  <34.404541, 28.174063, 23.430038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.170815, 28.495127, 23.477892> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011285, -0.155442, 0.987780,
		0.811448, 0.575825, 0.099886,
		-0.584316, 0.802660, 0.119635,
		33.995522, 28.735924, 23.513783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<37.521385, 31.320877, 27.817167> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.127010, 31.386406, 27.803915>,  <36.890385, 31.425722, 27.795963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.127010, 31.386406, 27.803915>,  <37.521385, 31.320877, 27.817167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.127010, 31.386406, 27.803915> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042826, 0.439207, 0.897365,
		0.161557, 0.883323, -0.440045,
		-0.985934, 0.163821, -0.033128,
		36.831230, 31.435553, 27.793976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.402966, 32.042503, 28.086500>,  <37.521385, 31.320877, 27.817167>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.402966, 32.042503, 28.086500> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.053055, 31.856377, 28.140520>,  <36.843109, 31.744701, 28.172932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.053055, 31.856377, 28.140520>,  <37.402966, 32.042503, 28.086500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.053055, 31.856377, 28.140520> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111572, 0.464693, 0.878415,
		-0.471496, 0.753354, -0.458421,
		-0.874781, -0.465316, 0.135048,
		36.790619, 31.716782, 28.181034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.884460, 32.555405, 28.413328>,  <37.402966, 32.042503, 28.086500>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.884460, 32.555405, 28.413328> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.727036, 32.195229, 28.487429>,  <36.632580, 31.979124, 28.531889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.727036, 32.195229, 28.487429>,  <36.884460, 32.555405, 28.413328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.727036, 32.195229, 28.487429> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101251, 0.242748, 0.964791,
		-0.913704, 0.360952, -0.186708,
		-0.393566, -0.900437, 0.185253,
		36.608967, 31.925097, 28.543005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.308216, 32.642921, 28.726730>,  <36.884460, 32.555405, 28.413328>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.308216, 32.642921, 28.726730> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.367290, 32.256966, 28.813612>,  <36.402733, 32.025391, 28.865742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.367290, 32.256966, 28.813612>,  <36.308216, 32.642921, 28.726730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.367290, 32.256966, 28.813612> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315142, 0.162258, 0.935071,
		-0.937483, -0.206545, -0.280114,
		0.147684, -0.964889, 0.217205,
		36.411594, 31.967499, 28.878773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.642387, 32.413963, 28.915665>,  <36.308216, 32.642921, 28.726730>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.642387, 32.413963, 28.915665> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.903877, 32.161556, 29.082737>,  <36.060772, 32.010113, 29.182980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.903877, 32.161556, 29.082737>,  <35.642387, 32.413963, 28.915665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.903877, 32.161556, 29.082737> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391589, 0.190217, 0.900264,
		-0.647535, -0.752084, -0.122751,
		0.653725, -0.631020, 0.417680,
		36.099995, 31.972250, 29.208040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.290070, 31.823000, 29.271343>,  <35.642387, 32.413963, 28.915665>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.290070, 31.823000, 29.271343> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.637894, 31.849262, 29.467119>,  <35.846588, 31.865019, 29.584585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.637894, 31.849262, 29.467119>,  <35.290070, 31.823000, 29.271343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.637894, 31.849262, 29.467119> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493826, 0.115506, 0.861855,
		0.000052, -0.991135, 0.132862,
		0.869560, 0.065656, 0.489442,
		35.898762, 31.868959, 29.613953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.340427, 31.289810, 29.906271>,  <35.290070, 31.823000, 29.271343>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.340427, 31.289810, 29.906271> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.603260, 31.581348, 29.983238>,  <35.760960, 31.756271, 30.029419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.603260, 31.581348, 29.983238>,  <35.340427, 31.289810, 29.906271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.603260, 31.581348, 29.983238> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430122, 0.152880, 0.889732,
		0.619058, -0.667394, 0.413947,
		0.657086, 0.728844, 0.192419,
		35.800385, 31.800001, 30.040964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.634445, 31.224819, 30.627323>,  <35.340427, 31.289810, 29.906271>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.634445, 31.224819, 30.627323> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.733997, 31.601419, 30.536430>,  <35.793728, 31.827379, 30.481895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.733997, 31.601419, 30.536430>,  <35.634445, 31.224819, 30.627323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.733997, 31.601419, 30.536430> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354502, 0.306884, 0.883261,
		0.901326, -0.139270, 0.410141,
		0.248878, 0.941502, -0.227231,
		35.808662, 31.883869, 30.468262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.832378, 31.520710, 31.263695>,  <35.634445, 31.224819, 30.627323>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.832378, 31.520710, 31.263695> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.812622, 31.859344, 31.051712>,  <35.800770, 32.062527, 30.924522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.812622, 31.859344, 31.051712>,  <35.832378, 31.520710, 31.263695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.812622, 31.859344, 31.051712> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518899, 0.431625, 0.737864,
		0.853407, 0.311439, 0.417973,
		-0.049392, 0.846585, -0.529957,
		35.797806, 32.113319, 30.892725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.032166, 32.074463, 31.734509>,  <35.832378, 31.520710, 31.263695>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.032166, 32.074463, 31.734509> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.822083, 32.241554, 31.437952>,  <35.696033, 32.341808, 31.260017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.822083, 32.241554, 31.437952>,  <36.032166, 32.074463, 31.734509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.822083, 32.241554, 31.437952> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558059, 0.488655, 0.670661,
		0.642438, 0.765976, -0.023529,
		-0.525208, 0.417728, -0.741391,
		35.664520, 32.366871, 31.215534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.063992, 32.808083, 31.840826>,  <36.032166, 32.074463, 31.734509>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.063992, 32.808083, 31.840826> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.738338, 32.699486, 31.635502>,  <35.542946, 32.634327, 31.512308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.738338, 32.699486, 31.635502>,  <36.063992, 32.808083, 31.840826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.738338, 32.699486, 31.635502> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579569, 0.325143, 0.747250,
		-0.035974, 0.905855, -0.422058,
		-0.814129, -0.271493, -0.513308,
		35.494099, 32.618038, 31.481510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.790497, 33.374588, 31.822104>,  <36.063992, 32.808083, 31.840826>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.790497, 33.374588, 31.822104> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.509270, 33.098568, 31.753378>,  <35.340534, 32.932957, 31.712143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.509270, 33.098568, 31.753378>,  <35.790497, 33.374588, 31.822104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.509270, 33.098568, 31.753378> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545485, 0.368328, 0.752848,
		-0.456222, 0.623026, -0.635374,
		-0.703070, -0.690053, -0.171812,
		35.298347, 32.891552, 31.701834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.157253, 33.736481, 31.811810>,  <35.790497, 33.374588, 31.822104>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.157253, 33.736481, 31.811810> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.028233, 33.362862, 31.873133>,  <34.950821, 33.138691, 31.909927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.028233, 33.362862, 31.873133>,  <35.157253, 33.736481, 31.811810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.028233, 33.362862, 31.873133> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671017, 0.339879, 0.658953,
		-0.667603, 0.109676, -0.736394,
		-0.322556, -0.934052, 0.153309,
		34.931465, 33.082645, 31.919125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.776382, 34.239697, 32.241650>,  <35.157253, 33.736481, 31.811810>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.776382, 34.239697, 32.241650> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.596432, 34.579288, 32.352535>,  <34.488461, 34.783043, 32.419067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.596432, 34.579288, 32.352535>,  <34.776382, 34.239697, 32.241650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.596432, 34.579288, 32.352535> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089168, 0.266147, -0.959799,
		-0.888630, -0.456506, -0.044031,
		-0.449873, 0.848980, 0.277212,
		34.461472, 34.833984, 32.435699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.161842, 34.349712, 31.855658>,  <34.776382, 34.239697, 32.241650>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.161842, 34.349712, 31.855658> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.257431, 34.711777, 31.996271>,  <34.314785, 34.929016, 32.080639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.257431, 34.711777, 31.996271>,  <34.161842, 34.349712, 31.855658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.257431, 34.711777, 31.996271> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067074, 0.376546, -0.923966,
		-0.968708, 0.197221, 0.150696,
		0.238970, 0.905161, 0.351535,
		34.329121, 34.983326, 32.101730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.650723, 34.758984, 31.562706>,  <34.161842, 34.349712, 31.855658>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.650723, 34.758984, 31.562706> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.936150, 35.010666, 31.685944>,  <34.107407, 35.161674, 31.759886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.936150, 35.010666, 31.685944>,  <33.650723, 34.758984, 31.562706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.936150, 35.010666, 31.685944> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112669, 0.330980, -0.936887,
		-0.691465, 0.703247, 0.165286,
		0.713570, 0.629202, 0.308095,
		34.150219, 35.199425, 31.778372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.354561, 35.334114, 31.337614>,  <33.650723, 34.758984, 31.562706>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.354561, 35.334114, 31.337614> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.745552, 35.411610, 31.371094>,  <33.980148, 35.458107, 31.391182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.745552, 35.411610, 31.371094>,  <33.354561, 35.334114, 31.337614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.745552, 35.411610, 31.371094> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047982, 0.182208, -0.982088,
		-0.205516, 0.963985, 0.168809,
		0.977477, 0.193735, 0.083701,
		34.038795, 35.469730, 31.396204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.459034, 36.072918, 31.111551>,  <33.354561, 35.334114, 31.337614>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.459034, 36.072918, 31.111551> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.822990, 35.908562, 31.088676>,  <34.041363, 35.809948, 31.074951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.822990, 35.908562, 31.088676>,  <33.459034, 36.072918, 31.111551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.822990, 35.908562, 31.088676> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044849, 0.234474, -0.971087,
		0.412416, 0.881018, 0.231774,
		0.909891, -0.410887, -0.057188,
		34.095959, 35.785297, 31.071520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.844784, 36.544930, 30.733564>,  <33.459034, 36.072918, 31.111551>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.844784, 36.544930, 30.733564> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.035755, 36.194069, 30.712908>,  <34.150337, 35.983551, 30.700514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.035755, 36.194069, 30.712908>,  <33.844784, 36.544930, 30.733564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.035755, 36.194069, 30.712908> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101501, 0.113434, -0.988347,
		0.872787, 0.466625, 0.143188,
		0.477430, -0.877151, -0.051641,
		34.178986, 35.930923, 30.697416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.459110, 36.617722, 30.227238>,  <33.844784, 36.544930, 30.733564>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.459110, 36.617722, 30.227238> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.440517, 36.218548, 30.244967>,  <34.429363, 35.979042, 30.255604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.440517, 36.218548, 30.244967>,  <34.459110, 36.617722, 30.227238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.440517, 36.218548, 30.244967> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172510, -0.051723, -0.983649,
		0.983911, -0.038073, 0.174558,
		-0.046479, -0.997936, 0.044323,
		34.426575, 35.919167, 30.258263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.098873, 36.326359, 29.859339>,  <34.459110, 36.617722, 30.227238>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.098873, 36.326359, 29.859339> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.809174, 36.051231, 29.878828>,  <34.635353, 35.886154, 29.890522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.809174, 36.051231, 29.878828>,  <35.098873, 36.326359, 29.859339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.809174, 36.051231, 29.878828> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137104, -0.212891, -0.967409,
		0.675774, -0.693962, 0.248488,
		-0.724245, -0.687819, 0.048721,
		34.591900, 35.844887, 29.893444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.457020, 35.629082, 29.711744>,  <35.098873, 36.326359, 29.859339>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.457020, 35.629082, 29.711744> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.067307, 35.587162, 29.631947>,  <34.833481, 35.562012, 29.584068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.067307, 35.587162, 29.631947>,  <35.457020, 35.629082, 29.711744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.067307, 35.587162, 29.631947> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218029, -0.214609, -0.952054,
		0.056959, -0.971062, 0.231938,
		-0.974279, -0.104798, -0.199496,
		34.775024, 35.555721, 29.572098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.433624, 35.059368, 29.480362>,  <35.457020, 35.629082, 29.711744>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.433624, 35.059368, 29.480362> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.098717, 35.223682, 29.336010>,  <34.897774, 35.322273, 29.249399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.098717, 35.223682, 29.336010>,  <35.433624, 35.059368, 29.480362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.098717, 35.223682, 29.336010> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249298, -0.300618, -0.920586,
		-0.486653, -0.860745, 0.149289,
		-0.837269, 0.410788, -0.360878,
		34.847534, 35.346920, 29.227747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.980968, 34.506638, 29.279339>,  <35.433624, 35.059368, 29.480362>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.980968, 34.506638, 29.279339> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.863777, 34.822243, 29.063330>,  <34.793461, 35.011604, 28.933723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.863777, 34.822243, 29.063330>,  <34.980968, 34.506638, 29.279339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.863777, 34.822243, 29.063330> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050184, -0.551341, -0.832770,
		-0.954800, -0.271087, 0.121937,
		-0.292981, 0.789009, -0.540024,
		34.775883, 35.058945, 28.901321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.758549, 34.220745, 28.698301>,  <34.980968, 34.506638, 29.279339>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.758549, 34.220745, 28.698301> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.756790, 34.587307, 28.538212>,  <34.755737, 34.807243, 28.442158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.756790, 34.587307, 28.538212>,  <34.758549, 34.220745, 28.698301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.756790, 34.587307, 28.538212> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061383, -0.399227, -0.914795,
		-0.998105, -0.028585, -0.054498,
		-0.004392, 0.916406, -0.400225,
		34.755474, 34.862228, 28.418144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.282745, 34.143585, 28.169819>,  <34.758549, 34.220745, 28.698301>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.282745, 34.143585, 28.169819> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.522373, 34.458843, 28.113329>,  <34.666149, 34.647999, 28.079435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.522373, 34.458843, 28.113329>,  <34.282745, 34.143585, 28.169819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.522373, 34.458843, 28.113329> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070973, -0.227952, -0.971082,
		-0.797548, 0.571719, -0.192495,
		0.599066, 0.788147, -0.141226,
		34.702091, 34.695286, 28.070961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.104591, 34.341675, 27.570776>,  <34.282745, 34.143585, 28.169819>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.104591, 34.341675, 27.570776> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.463638, 34.516239, 27.595505>,  <34.679066, 34.620979, 27.610342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.463638, 34.516239, 27.595505>,  <34.104591, 34.341675, 27.570776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.463638, 34.516239, 27.595505> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106658, -0.078975, -0.991154,
		-0.427667, 0.896275, -0.117436,
		0.897622, 0.436410, 0.061820,
		34.732925, 34.647163, 27.614050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.231041, 34.728195, 26.921894>,  <34.104591, 34.341675, 27.570776>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.231041, 34.728195, 26.921894> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.587330, 34.655685, 27.088631>,  <34.801102, 34.612179, 27.188673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.587330, 34.655685, 27.088631>,  <34.231041, 34.728195, 26.921894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.587330, 34.655685, 27.088631> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409253, -0.079256, -0.908972,
		0.197810, 0.980234, 0.003592,
		0.890721, -0.181274, 0.416841,
		34.854546, 34.601303, 27.213682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.170231, 35.514187, 26.699965>,  <34.231041, 34.728195, 26.921894>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.170231, 35.514187, 26.699965> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.781631, 35.540241, 26.608795>,  <33.548473, 35.555874, 26.554094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.781631, 35.540241, 26.608795>,  <34.170231, 35.514187, 26.699965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.781631, 35.540241, 26.608795> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223382, 0.070186, 0.972201,
		0.079320, 0.995405, -0.053636,
		-0.971498, 0.065133, -0.227923,
		33.490181, 35.559780, 26.540419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.888508, 36.041687, 27.095999>,  <34.170231, 35.514187, 26.699965>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.888508, 36.041687, 27.095999> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.550869, 35.848888, 27.002037>,  <33.348286, 35.733212, 26.945660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.550869, 35.848888, 27.002037>,  <33.888508, 36.041687, 27.095999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.550869, 35.848888, 27.002037> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360088, 0.184966, 0.914398,
		-0.397285, 0.856428, -0.329690,
		-0.844098, -0.481994, -0.234905,
		33.297638, 35.704288, 26.931566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.250042, 36.365818, 27.496441>,  <33.888508, 36.041687, 27.095999>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.250042, 36.365818, 27.496441> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.093334, 36.025475, 27.356405>,  <32.999310, 35.821270, 27.272385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.093334, 36.025475, 27.356405>,  <33.250042, 36.365818, 27.496441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.093334, 36.025475, 27.356405> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611897, -0.043204, 0.789756,
		-0.687093, 0.523621, -0.503710,
		-0.391771, -0.850855, -0.350087,
		32.975803, 35.770218, 27.251379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.517700, 36.456982, 27.545853>,  <33.250042, 36.365818, 27.496441>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.517700, 36.456982, 27.545853> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.602600, 36.066093, 27.546007>,  <32.653538, 35.831562, 27.546101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.602600, 36.066093, 27.546007>,  <32.517700, 36.456982, 27.545853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.602600, 36.066093, 27.546007> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648822, -0.140624, 0.747834,
		-0.730741, -0.158975, -0.663886,
		0.212245, -0.977216, 0.000386,
		32.666275, 35.772930, 27.546124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.892664, 36.194553, 27.817686>,  <32.517700, 36.456982, 27.545853>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.892664, 36.194553, 27.817686> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.154621, 35.894794, 27.856699>,  <32.311794, 35.714939, 27.880106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.154621, 35.894794, 27.856699>,  <31.892664, 36.194553, 27.817686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.154621, 35.894794, 27.856699> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500112, -0.333010, 0.799370,
		-0.566569, -0.572280, -0.592870,
		0.654895, -0.749400, 0.097531,
		32.351089, 35.669975, 27.885958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.513487, 35.502563, 27.601776>,  <31.892664, 36.194553, 27.817686>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.513487, 35.502563, 27.601776> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.830997, 35.433773, 27.835131>,  <32.021503, 35.392498, 27.975143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.830997, 35.433773, 27.835131>,  <31.513487, 35.502563, 27.601776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.830997, 35.433773, 27.835131> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604625, -0.327078, 0.726256,
		0.065917, -0.929218, -0.363607,
		0.793778, -0.171973, 0.583388,
		32.069130, 35.382179, 28.010147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.482786, 34.821831, 28.018627>,  <31.513487, 35.502563, 27.601776>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.482786, 34.821831, 28.018627> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.784927, 34.969311, 28.235331>,  <31.966211, 35.057800, 28.365353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.784927, 34.969311, 28.235331>,  <31.482786, 34.821831, 28.018627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.784927, 34.969311, 28.235331> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465165, -0.280648, 0.839558,
		0.461587, -0.886170, -0.040483,
		0.755353, 0.368699, 0.541759,
		32.011532, 35.079922, 28.397858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.519413, 34.340557, 28.526869>,  <31.482786, 34.821831, 28.018627>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.519413, 34.340557, 28.526869> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.703491, 34.671509, 28.655657>,  <31.813938, 34.870079, 28.732929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.703491, 34.671509, 28.655657>,  <31.519413, 34.340557, 28.526869>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.703491, 34.671509, 28.655657> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420724, -0.116116, 0.899727,
		0.781800, -0.549512, 0.294662,
		0.460196, 0.827378, 0.321972,
		31.841551, 34.919724, 28.752249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.702423, 34.151642, 29.148275>,  <31.519413, 34.340557, 28.526869>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.702423, 34.151642, 29.148275> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.710501, 34.551559, 29.149151>,  <31.715347, 34.791512, 29.149675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.710501, 34.551559, 29.149151>,  <31.702423, 34.151642, 29.148275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.710501, 34.551559, 29.149151> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471883, 0.007601, 0.881628,
		0.881430, -0.018837, 0.471939,
		0.020195, 0.999794, 0.002189,
		31.716558, 34.851498, 29.149807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.955219, 34.405487, 29.896845>,  <31.702423, 34.151642, 29.148275>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.955219, 34.405487, 29.896845> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.738035, 34.698772, 29.733089>,  <31.607725, 34.874744, 29.634836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.738035, 34.698772, 29.733089>,  <31.955219, 34.405487, 29.896845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.738035, 34.698772, 29.733089> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505427, 0.103990, 0.856580,
		0.670626, 0.672003, 0.314122,
		-0.542959, 0.733210, -0.409387,
		31.575148, 34.918736, 29.610273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.864431, 34.853020, 30.418346>,  <31.955219, 34.405487, 29.896845>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.864431, 34.853020, 30.418346> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.595467, 34.994507, 30.158272>,  <31.434088, 35.079399, 30.002226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.595467, 34.994507, 30.158272>,  <31.864431, 34.853020, 30.418346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.595467, 34.994507, 30.158272> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595873, 0.262410, 0.758997,
		0.439087, 0.897789, 0.034324,
		-0.672412, 0.353719, -0.650188,
		31.393744, 35.100624, 29.963215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.714321, 35.561913, 30.702387>,  <31.864431, 34.853020, 30.418346>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.714321, 35.561913, 30.702387> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.412813, 35.429375, 30.475391>,  <31.231909, 35.349850, 30.339193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.412813, 35.429375, 30.475391>,  <31.714321, 35.561913, 30.702387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.412813, 35.429375, 30.475391> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644194, 0.202014, 0.737702,
		-0.129795, 0.921629, -0.365723,
		-0.753769, -0.331346, -0.567488,
		31.186682, 35.329971, 30.305145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<34.682343, 35.792164, 23.012901> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.333607, 35.597992, 22.986792>,  <34.124367, 35.481491, 22.971125>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.333607, 35.597992, 22.986792>,  <34.682343, 35.792164, 23.012901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.333607, 35.597992, 22.986792> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333756, 0.491247, 0.804539,
		-0.358479, 0.723213, -0.590301,
		-0.871837, -0.485427, -0.065275,
		34.072056, 35.452362, 22.967209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.203888, 36.315838, 23.206432>,  <34.682343, 35.792164, 23.012901>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.203888, 36.315838, 23.206432> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.025303, 35.961475, 23.256773>,  <33.918152, 35.748856, 23.286978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.025303, 35.961475, 23.256773>,  <34.203888, 36.315838, 23.206432>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.025303, 35.961475, 23.256773> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273599, 0.269066, 0.923443,
		-0.851949, 0.377848, -0.362511,
		-0.446461, -0.885909, 0.125852,
		33.891365, 35.695702, 23.294529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.512203, 36.458916, 23.454920>,  <34.203888, 36.315838, 23.206432>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.512203, 36.458916, 23.454920> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.589691, 36.078545, 23.551430>,  <33.636185, 35.850323, 23.609337>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.589691, 36.078545, 23.551430>,  <33.512203, 36.458916, 23.454920>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.589691, 36.078545, 23.551430> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407288, 0.145787, 0.901589,
		-0.892518, -0.272925, -0.359059,
		0.193720, -0.950925, 0.241276,
		33.647808, 35.793266, 23.623812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.973274, 36.196049, 23.779045>,  <33.512203, 36.458916, 23.454920>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.973274, 36.196049, 23.779045> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.254917, 35.945015, 23.911928>,  <33.423904, 35.794395, 23.991657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.254917, 35.945015, 23.911928>,  <32.973274, 36.196049, 23.779045>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.254917, 35.945015, 23.911928> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310481, 0.148649, 0.938885,
		-0.638615, -0.764223, -0.090189,
		0.704111, -0.627588, 0.332206,
		33.466152, 35.756741, 24.011591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.640656, 35.680183, 24.268581>,  <32.973274, 36.196049, 23.779045>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.640656, 35.680183, 24.268581> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.025269, 35.628151, 24.365353>,  <33.256039, 35.596931, 24.423414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.025269, 35.628151, 24.365353>,  <32.640656, 35.680183, 24.268581>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.025269, 35.628151, 24.365353> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256066, -0.105805, 0.960851,
		-0.099336, -0.985850, -0.135031,
		0.961542, -0.130024, 0.241933,
		33.313728, 35.589127, 24.437931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.584663, 35.137840, 24.678968>,  <32.640656, 35.680183, 24.268581>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.584663, 35.137840, 24.678968> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.924740, 35.335064, 24.752800>,  <33.128784, 35.453400, 24.797098>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.924740, 35.335064, 24.752800>,  <32.584663, 35.137840, 24.678968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.924740, 35.335064, 24.752800> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268585, 0.104665, 0.957553,
		0.452813, -0.863676, 0.221414,
		0.850189, 0.493060, 0.184577,
		33.179798, 35.482983, 24.808172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.849571, 34.791065, 25.104603>,  <32.584663, 35.137840, 24.678968>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.849571, 34.791065, 25.104603> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.004959, 35.152210, 25.178276>,  <33.098194, 35.368896, 25.222479>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.004959, 35.152210, 25.178276>,  <32.849571, 34.791065, 25.104603>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.004959, 35.152210, 25.178276> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098690, -0.157964, 0.982501,
		0.916160, -0.399851, 0.027739,
		0.388472, 0.902866, 0.184181,
		33.121502, 35.423069, 25.233530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.349255, 34.616920, 25.610249>,  <32.849571, 34.791065, 25.104603>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.349255, 34.616920, 25.610249> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.319607, 35.015503, 25.626116>,  <33.301819, 35.254654, 25.635635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.319607, 35.015503, 25.626116>,  <33.349255, 34.616920, 25.610249>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.319607, 35.015503, 25.626116> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086899, -0.033171, 0.995665,
		0.993456, 0.077245, -0.084133,
		-0.074120, 0.996460, 0.039667,
		33.297371, 35.314442, 25.638016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.898762, 34.767090, 26.092735>,  <33.349255, 34.616920, 25.610249>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.898762, 34.767090, 26.092735> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.628201, 35.060425, 26.065332>,  <33.465862, 35.236427, 26.048891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.628201, 35.060425, 26.065332>,  <33.898762, 34.767090, 26.092735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.628201, 35.060425, 26.065332> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144279, -0.040715, 0.988699,
		0.722263, 0.678643, 0.133345,
		-0.676402, 0.733339, -0.068507,
		33.425282, 35.280426, 26.044781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.664299, 35.050667, 26.351068>,  <33.898762, 34.767090, 26.092735>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.664299, 35.050667, 26.351068> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.902672, 34.798103, 26.549540>,  <35.045692, 34.646564, 26.668623>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.902672, 34.798103, 26.549540>,  <34.664299, 35.050667, 26.351068>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.902672, 34.798103, 26.549540> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361486, -0.340814, -0.867856,
		0.717076, 0.696541, 0.025144,
		0.595927, -0.631408, 0.496179,
		35.081451, 34.608681, 26.698393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.293442, 35.047031, 25.993431>,  <34.664299, 35.050667, 26.351068>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.293442, 35.047031, 25.993431> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.327301, 34.706890, 26.201176>,  <35.347614, 34.502808, 26.325823>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.327301, 34.706890, 26.201176>,  <35.293442, 35.047031, 25.993431>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.327301, 34.706890, 26.201176> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381753, -0.453785, -0.805198,
		0.920380, 0.266423, 0.286214,
		0.084644, -0.850352, 0.519363,
		35.352695, 34.451786, 26.356985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.102489, 34.831512, 25.990990>,  <35.293442, 35.047031, 25.993431>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.102489, 34.831512, 25.990990> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.843178, 34.535049, 26.060760>,  <35.687592, 34.357174, 26.102623>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.843178, 34.535049, 26.060760>,  <36.102489, 34.831512, 25.990990>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.843178, 34.535049, 26.060760> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340511, -0.487110, -0.804224,
		0.681019, -0.461968, 0.568155,
		-0.648279, -0.741154, 0.174426,
		35.648693, 34.312702, 26.113089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.538540, 34.281063, 26.043783>,  <36.102489, 34.831512, 25.990990>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.538540, 34.281063, 26.043783> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.184216, 34.114719, 25.961416>,  <35.971622, 34.014915, 25.911995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.184216, 34.114719, 25.961416>,  <36.538540, 34.281063, 26.043783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.184216, 34.114719, 25.961416> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390663, -0.428804, -0.814561,
		0.250440, -0.801992, 0.542299,
		-0.885811, -0.415855, -0.205919,
		35.918472, 33.989964, 25.899641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.594421, 33.504025, 26.075775>,  <36.538540, 34.281063, 26.043783>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.594421, 33.504025, 26.075775> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.262497, 33.554234, 25.858278>,  <36.063343, 33.584358, 25.727779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.262497, 33.554234, 25.858278>,  <36.594421, 33.504025, 26.075775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.262497, 33.554234, 25.858278> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472580, -0.360133, -0.804346,
		-0.296787, -0.924417, 0.239521,
		-0.829811, 0.125527, -0.543744,
		36.013554, 33.591892, 25.695156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.544724, 32.871510, 25.641506>,  <36.594421, 33.504025, 26.075775>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.544724, 32.871510, 25.641506> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.311031, 33.150047, 25.474760>,  <36.170818, 33.317169, 25.374712>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.311031, 33.150047, 25.474760>,  <36.544724, 32.871510, 25.641506>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.311031, 33.150047, 25.474760> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383030, -0.216266, -0.898063,
		-0.715519, -0.684345, -0.140374,
		-0.584227, 0.696349, -0.416867,
		36.135765, 33.358952, 25.349699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.469353, 32.579811, 25.033289>,  <36.544724, 32.871510, 25.641506>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.469353, 32.579811, 25.033289> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.347858, 32.957939, 24.985767>,  <36.274963, 33.184814, 24.957254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.347858, 32.957939, 24.985767>,  <36.469353, 32.579811, 25.033289>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.347858, 32.957939, 24.985767> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252101, -0.040510, -0.966853,
		-0.918798, -0.323618, -0.226011,
		-0.303735, 0.945320, -0.118805,
		36.256737, 33.241535, 24.950127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.101856, 32.543518, 24.410305>,  <36.469353, 32.579811, 25.033289>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.101856, 32.543518, 24.410305> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.219387, 32.920444, 24.474436>,  <36.289906, 33.146599, 24.512915>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.219387, 32.920444, 24.474436>,  <36.101856, 32.543518, 24.410305>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.219387, 32.920444, 24.474436> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352105, 0.049233, -0.934665,
		-0.888644, 0.331082, -0.317328,
		0.293828, 0.942317, 0.160327,
		36.307537, 33.203140, 24.522533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.747452, 32.927666, 23.947493>,  <36.101856, 32.543518, 24.410305>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.747452, 32.927666, 23.947493> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.051502, 33.167831, 24.046869>,  <36.233932, 33.311932, 24.106495>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.051502, 33.167831, 24.046869>,  <35.747452, 32.927666, 23.947493>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.051502, 33.167831, 24.046869> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246419, 0.087422, -0.965212,
		-0.601242, 0.794899, -0.081501,
		0.760122, 0.600410, 0.248440,
		36.279537, 33.347954, 24.121401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.730755, 33.566555, 23.567511>,  <35.747452, 32.927666, 23.947493>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.730755, 33.566555, 23.567511> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.111187, 33.495312, 23.668480>,  <36.339447, 33.452568, 23.729061>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.111187, 33.495312, 23.668480>,  <35.730755, 33.566555, 23.567511>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.111187, 33.495312, 23.668480> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284150, 0.183666, -0.941024,
		0.121238, 0.966719, 0.225290,
		0.951084, -0.178104, 0.252426,
		36.396511, 33.441879, 23.744207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.111900, 34.020309, 23.133934>,  <35.730755, 33.566555, 23.567511>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.111900, 34.020309, 23.133934> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.417427, 33.798599, 23.266216>,  <36.600742, 33.665573, 23.345585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.417427, 33.798599, 23.266216>,  <36.111900, 34.020309, 23.133934>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.417427, 33.798599, 23.266216> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390119, -0.011722, -0.920690,
		0.514194, 0.832250, 0.207280,
		0.763814, -0.554277, 0.330704,
		36.646572, 33.632317, 23.365427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.647194, 34.392406, 22.996113>,  <36.111900, 34.020309, 23.133934>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.647194, 34.392406, 22.996113> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.791046, 34.023228, 23.051012>,  <36.877357, 33.801720, 23.083952>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.791046, 34.023228, 23.051012>,  <36.647194, 34.392406, 22.996113>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.791046, 34.023228, 23.051012> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635617, 0.134632, -0.760175,
		0.683122, 0.360620, 0.635057,
		0.359633, -0.922945, 0.137247,
		36.898937, 33.746346, 23.092186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.410442, 34.323784, 22.889906>,  <36.647194, 34.392406, 22.996113>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.410442, 34.323784, 22.889906> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.314053, 33.948009, 22.792423>,  <37.256218, 33.722546, 22.733934>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.314053, 33.948009, 22.792423>,  <37.410442, 34.323784, 22.889906>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.314053, 33.948009, 22.792423> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591765, 0.056806, -0.804106,
		0.769250, -0.337987, 0.542236,
		-0.240975, -0.939435, -0.243706,
		37.241760, 33.666180, 22.719311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.057514, 34.007809, 22.540987>,  <37.410442, 34.323784, 22.889906>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.057514, 34.007809, 22.540987> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.749752, 33.772171, 22.442209>,  <37.565094, 33.630791, 22.382942>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.749752, 33.772171, 22.442209>,  <38.057514, 34.007809, 22.540987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.749752, 33.772171, 22.442209> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351580, -0.067798, -0.933699,
		0.533293, -0.805217, 0.259278,
		-0.769409, -0.589092, -0.246942,
		37.518929, 33.595444, 22.368126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<31.469133, 29.433582, 21.574091> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.615431, 29.804491, 21.542093>,  <31.703209, 30.027037, 21.522894>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.615431, 29.804491, 21.542093>,  <31.469133, 29.433582, 21.574091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.615431, 29.804491, 21.542093> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021334, 0.077574, 0.996758,
		0.930471, -0.366266, 0.008590,
		0.365745, 0.927271, -0.079994,
		31.725155, 30.082672, 21.518095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.090553, 29.522343, 21.972242>,  <31.469133, 29.433582, 21.574091>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.090553, 29.522343, 21.972242> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.926752, 29.886152, 21.943743>,  <31.828472, 30.104439, 21.926643>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.926752, 29.886152, 21.943743>,  <32.090553, 29.522343, 21.972242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.926752, 29.886152, 21.943743> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005788, 0.075506, 0.997129,
		0.912291, 0.408738, -0.025656,
		-0.409501, 0.909523, -0.071249,
		31.803902, 30.159010, 21.922367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.416279, 29.869486, 22.467915>,  <32.090553, 29.522343, 21.972242>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.416279, 29.869486, 22.467915> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.076637, 30.071640, 22.406445>,  <31.872854, 30.192932, 22.369562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.076637, 30.071640, 22.406445>,  <32.416279, 29.869486, 22.467915>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.076637, 30.071640, 22.406445> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109166, 0.116756, 0.987143,
		0.516830, 0.854959, -0.043967,
		-0.849100, 0.505385, -0.153675,
		31.821907, 30.223255, 22.360342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.465191, 30.418570, 22.897158>,  <32.416279, 29.869486, 22.467915>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.465191, 30.418570, 22.897158> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.073143, 30.415833, 22.817846>,  <31.837914, 30.414190, 22.770260>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.073143, 30.415833, 22.817846>,  <32.465191, 30.418570, 22.897158>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.073143, 30.415833, 22.817846> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194261, 0.236126, 0.952107,
		0.040304, 0.971698, -0.232761,
		-0.980122, -0.006842, -0.198280,
		31.779106, 30.413780, 22.758362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.191208, 30.958111, 23.242344>,  <32.465191, 30.418570, 22.897158>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.191208, 30.958111, 23.242344> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.877558, 30.714743, 23.193398>,  <31.689367, 30.568722, 23.164030>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.877558, 30.714743, 23.193398>,  <32.191208, 30.958111, 23.242344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.877558, 30.714743, 23.193398> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103003, -0.066849, 0.992432,
		-0.611997, 0.790793, -0.010251,
		-0.784123, -0.608422, -0.122365,
		31.642321, 30.532215, 23.156689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.838753, 31.102142, 23.921852>,  <32.191208, 30.958111, 23.242344>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.838753, 31.102142, 23.921852> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.645290, 30.791307, 23.760750>,  <31.529213, 30.604807, 23.664089>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.645290, 30.791307, 23.760750>,  <31.838753, 31.102142, 23.921852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.645290, 30.791307, 23.760750> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327404, -0.266124, 0.906634,
		-0.811717, 0.570362, -0.125710,
		-0.483655, -0.777088, -0.402756,
		31.500195, 30.558182, 23.639923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.143320, 31.177288, 24.085905>,  <31.838753, 31.102142, 23.921852>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.143320, 31.177288, 24.085905> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.204287, 30.791050, 24.001625>,  <31.240868, 30.559307, 23.951057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.204287, 30.791050, 24.001625>,  <31.143320, 31.177288, 24.085905>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.204287, 30.791050, 24.001625> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347108, -0.251910, 0.903359,
		-0.925357, -0.064553, -0.373561,
		0.152418, -0.965595, -0.210700,
		31.250011, 30.501371, 23.938416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.575443, 30.941263, 24.187250>,  <31.143320, 31.177288, 24.085905>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.575443, 30.941263, 24.187250> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.809395, 30.616982, 24.197639>,  <30.949766, 30.422413, 24.203873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.809395, 30.616982, 24.197639>,  <30.575443, 30.941263, 24.187250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.809395, 30.616982, 24.197639> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311492, -0.194928, 0.930041,
		-0.748927, -0.552049, -0.366537,
		0.584877, -0.810706, 0.025972,
		30.984858, 30.373770, 24.205431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.205193, 30.403637, 24.501780>,  <30.575443, 30.941263, 24.187250>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.205193, 30.403637, 24.501780> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.591810, 30.314487, 24.552572>,  <30.823780, 30.260998, 24.583048>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.591810, 30.314487, 24.552572>,  <30.205193, 30.403637, 24.501780>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.591810, 30.314487, 24.552572> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148282, -0.081536, 0.985578,
		-0.209305, -0.971432, -0.111856,
		0.966542, -0.222873, 0.126980,
		30.881773, 30.247625, 24.590666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.275152, 29.897600, 24.945362>,  <30.205193, 30.403637, 24.501780>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.275152, 29.897600, 24.945362> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.657026, 30.010078, 24.984367>,  <30.886150, 30.077564, 25.007771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.657026, 30.010078, 24.984367>,  <30.275152, 29.897600, 24.945362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.657026, 30.010078, 24.984367> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070607, -0.104302, 0.992036,
		0.289126, -0.953966, -0.079721,
		0.954684, 0.281195, 0.097513,
		30.943432, 30.094437, 25.013622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.586275, 29.475454, 25.463732>,  <30.275152, 29.897600, 24.945362>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.586275, 29.475454, 25.463732> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.815092, 29.803535, 25.466122>,  <30.952383, 30.000383, 25.467556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.815092, 29.803535, 25.466122>,  <30.586275, 29.475454, 25.463732>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.815092, 29.803535, 25.466122> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009402, -0.000728, 0.999956,
		0.820169, -0.572075, 0.007295,
		0.572044, 0.820201, 0.005975,
		30.986706, 30.049595, 25.467915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.093584, 29.344652, 25.939402>,  <30.586275, 29.475454, 25.463732>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.093584, 29.344652, 25.939402> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.073324, 29.743746, 25.921671>,  <31.061169, 29.983202, 25.911032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.073324, 29.743746, 25.921671>,  <31.093584, 29.344652, 25.939402>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.073324, 29.743746, 25.921671> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080332, 0.040172, 0.995958,
		0.995480, 0.054004, 0.078115,
		-0.050648, 0.997732, -0.044329,
		31.058130, 30.043066, 25.908373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.564501, 29.500065, 26.417894>,  <31.093584, 29.344652, 25.939402>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.564501, 29.500065, 26.417894> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.334023, 29.823013, 26.367058>,  <31.195736, 30.016783, 26.336555>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.334023, 29.823013, 26.367058>,  <31.564501, 29.500065, 26.417894>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.334023, 29.823013, 26.367058> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087821, 0.093438, 0.991744,
		0.812579, 0.582602, 0.017065,
		-0.576198, 0.807369, -0.127091,
		31.161163, 30.065224, 26.328930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.856339, 29.971390, 26.861664>,  <31.564501, 29.500065, 26.417894>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.856339, 29.971390, 26.861664> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.491211, 30.113419, 26.780985>,  <31.272133, 30.198635, 26.732578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.491211, 30.113419, 26.780985>,  <31.856339, 29.971390, 26.861664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.491211, 30.113419, 26.780985> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152241, 0.162406, 0.974909,
		0.378919, 0.920623, -0.094191,
		-0.912821, 0.355072, -0.201695,
		31.217365, 30.219940, 26.720476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.463589, 30.293133, 27.117994>,  <31.856339, 29.971390, 26.861664>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.463589, 30.293133, 27.117994> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.672699, 29.971315, 27.230719>,  <32.798164, 29.778225, 27.298353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.672699, 29.971315, 27.230719>,  <32.463589, 30.293133, 27.117994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.672699, 29.971315, 27.230719> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159977, -0.232118, -0.959442,
		0.837327, 0.546653, 0.007364,
		0.522772, -0.804545, 0.281810,
		32.829529, 29.729952, 27.315262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.009495, 30.279736, 26.611521>,  <32.463589, 30.293133, 27.117994>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.009495, 30.279736, 26.611521> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.049194, 29.915337, 26.771639>,  <33.073013, 29.696697, 26.867710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.049194, 29.915337, 26.771639>,  <33.009495, 30.279736, 26.611521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.049194, 29.915337, 26.771639> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382971, -0.336322, -0.860361,
		0.918413, 0.238691, 0.315506,
		0.099248, -0.910996, 0.400294,
		33.078968, 29.642038, 26.891727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.746635, 29.883884, 26.528158>,  <33.009495, 30.279736, 26.611521>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.746635, 29.883884, 26.528158> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.489868, 29.588514, 26.610785>,  <33.335808, 29.411293, 26.660360>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.489868, 29.588514, 26.610785>,  <33.746635, 29.883884, 26.528158>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.489868, 29.588514, 26.610785> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284996, -0.479868, -0.829761,
		0.711839, -0.473770, 0.518484,
		-0.641920, -0.738423, 0.206566,
		33.297291, 29.366987, 26.672754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.094784, 29.143030, 26.490835>,  <33.746635, 29.883884, 26.528158>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.094784, 29.143030, 26.490835> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.703300, 29.087048, 26.430780>,  <33.468410, 29.053457, 26.394747>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.703300, 29.087048, 26.430780>,  <34.094784, 29.143030, 26.490835>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.703300, 29.087048, 26.430780> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188452, -0.322857, -0.927496,
		0.081337, -0.936042, 0.342358,
		-0.978708, -0.139958, -0.150139,
		33.409687, 29.045061, 26.385738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.085423, 28.543392, 26.107880>,  <34.094784, 29.143030, 26.490835>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.085423, 28.543392, 26.107880> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.737751, 28.722784, 26.024553>,  <33.529148, 28.830420, 25.974558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.737751, 28.722784, 26.024553>,  <34.085423, 28.543392, 26.107880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.737751, 28.722784, 26.024553> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148168, -0.165710, -0.974980,
		-0.471782, -0.878296, 0.077580,
		-0.869177, 0.448483, -0.208314,
		33.476997, 28.857328, 25.962059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.742008, 28.046268, 25.683554>,  <34.085423, 28.543392, 26.107880>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.742008, 28.046268, 25.683554> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.565979, 28.394232, 25.594471>,  <33.460361, 28.603010, 25.541021>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.565979, 28.394232, 25.594471>,  <33.742008, 28.046268, 25.683554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.565979, 28.394232, 25.594471> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078810, -0.209640, -0.974597,
		-0.894497, -0.446444, 0.023699,
		-0.440072, 0.869907, -0.222706,
		33.433956, 28.655205, 25.527658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.306549, 27.897280, 25.087301>,  <33.742008, 28.046268, 25.683554>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.306549, 27.897280, 25.087301> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.363045, 28.293270, 25.087429>,  <33.396942, 28.530865, 25.087505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.363045, 28.293270, 25.087429>,  <33.306549, 27.897280, 25.087301>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.363045, 28.293270, 25.087429> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020824, -0.002649, -0.999780,
		-0.989756, 0.141216, -0.020990,
		0.141240, 0.989975, 0.000319,
		33.405418, 28.590263, 25.087524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.818321, 28.184639, 24.618792>,  <33.306549, 27.897280, 25.087301>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.818321, 28.184639, 24.618792> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.104267, 28.462519, 24.650696>,  <33.275833, 28.629246, 24.669838>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.104267, 28.462519, 24.650696>,  <32.818321, 28.184639, 24.618792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.104267, 28.462519, 24.650696> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075419, 0.189997, -0.978884,
		-0.695184, 0.693753, 0.188216,
		0.714864, 0.694699, 0.079760,
		33.318726, 28.670929, 24.674623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.656994, 28.807674, 24.174002>,  <32.818321, 28.184639, 24.618792>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.656994, 28.807674, 24.174002> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.051212, 28.850426, 24.226570>,  <33.287743, 28.876078, 24.258112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.051212, 28.850426, 24.226570>,  <32.656994, 28.807674, 24.174002>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.051212, 28.850426, 24.226570> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074405, 0.423853, -0.902669,
		-0.152182, 0.899402, 0.409775,
		0.985548, 0.106881, 0.131423,
		33.346878, 28.882490, 24.265997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.803417, 29.360079, 23.844122>,  <32.656994, 28.807674, 24.174002>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.803417, 29.360079, 23.844122> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.172256, 29.207691, 23.871265>,  <33.393559, 29.116259, 23.887550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.172256, 29.207691, 23.871265>,  <32.803417, 29.360079, 23.844122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.172256, 29.207691, 23.871265> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195403, 0.307051, -0.931417,
		0.334004, 0.872114, 0.357573,
		0.922095, -0.380968, 0.067857,
		33.448883, 29.093401, 23.891623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.257736, 29.841433, 23.568329>,  <32.803417, 29.360079, 23.844122>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.257736, 29.841433, 23.568329> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.497162, 29.521566, 23.549305>,  <33.640816, 29.329647, 23.537891>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.497162, 29.521566, 23.549305>,  <33.257736, 29.841433, 23.568329>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.497162, 29.521566, 23.549305> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313945, 0.288783, -0.904458,
		0.736996, 0.526443, 0.423904,
		0.598561, -0.799664, -0.047558,
		33.676731, 29.281668, 23.535038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.834686, 30.063259, 23.221153>,  <33.257736, 29.841433, 23.568329>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.834686, 30.063259, 23.221153> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.870930, 29.666702, 23.183350>,  <33.892673, 29.428768, 23.160667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.870930, 29.666702, 23.183350>,  <33.834686, 30.063259, 23.221153>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.870930, 29.666702, 23.183350> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270728, 0.115845, -0.955660,
		0.958383, 0.061001, 0.278894,
		0.090605, -0.991392, -0.094509,
		33.898109, 29.369284, 23.154997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.480854, 29.974295, 22.803944>,  <33.834686, 30.063259, 23.221153>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.480854, 29.974295, 22.803944> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.300323, 29.621178, 22.751816>,  <34.192005, 29.409307, 22.720539>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.300323, 29.621178, 22.751816>,  <34.480854, 29.974295, 22.803944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.300323, 29.621178, 22.751816> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307617, -0.016827, -0.951361,
		0.837660, -0.469464, 0.279156,
		-0.451328, -0.882791, -0.130320,
		34.164925, 29.356340, 22.712719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.929783, 29.540384, 22.450502>,  <34.480854, 29.974295, 22.803944>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.929783, 29.540384, 22.450502> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.566700, 29.378403, 22.406544>,  <34.348850, 29.281214, 22.380169>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.566700, 29.378403, 22.406544>,  <34.929783, 29.540384, 22.450502>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.566700, 29.378403, 22.406544> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141817, -0.049584, -0.988650,
		0.394911, -0.912991, 0.102437,
		-0.907708, -0.404956, -0.109896,
		34.294388, 29.256916, 22.373575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.557583, 29.092333, 22.583517>,  <34.929783, 29.540384, 22.450502>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.557583, 29.092333, 22.583517> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.834446, 29.380959, 22.576988>,  <36.000565, 29.554134, 22.573071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.834446, 29.380959, 22.576988>,  <35.557583, 29.092333, 22.583517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.834446, 29.380959, 22.576988> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073819, -0.048279, 0.996102,
		0.717965, -0.690660, -0.086681,
		0.692153, 0.721566, -0.016321,
		36.042091, 29.597427, 22.572092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.898682, 28.862621, 23.154789>,  <35.557583, 29.092333, 22.583517>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.898682, 28.862621, 23.154789> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.004494, 29.242390, 23.087122>,  <36.067982, 29.470251, 23.046522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.004494, 29.242390, 23.087122>,  <35.898682, 28.862621, 23.154789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.004494, 29.242390, 23.087122> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026222, 0.182432, 0.982869,
		0.964020, -0.255566, 0.073156,
		0.264534, 0.949423, -0.169167,
		36.083855, 29.527216, 23.036371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.273075, 28.969086, 23.662533>,  <35.898682, 28.862621, 23.154789>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.273075, 28.969086, 23.662533> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.163536, 29.343426, 23.573812>,  <36.097813, 29.568029, 23.520580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.163536, 29.343426, 23.573812>,  <36.273075, 28.969086, 23.662533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.163536, 29.343426, 23.573812> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063934, 0.247817, 0.966695,
		0.959647, 0.250543, -0.127695,
		-0.273843, 0.935850, -0.221799,
		36.081383, 29.624180, 23.507273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.768578, 29.490019, 23.950245>,  <36.273075, 28.969086, 23.662533>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.768578, 29.490019, 23.950245> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.448288, 29.718678, 23.878614>,  <36.256115, 29.855873, 23.835636>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.448288, 29.718678, 23.878614>,  <36.768578, 29.490019, 23.950245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.448288, 29.718678, 23.878614> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053222, 0.365646, 0.929231,
		0.596670, 0.734523, -0.323204,
		-0.800720, 0.571646, -0.179077,
		36.208073, 29.890171, 23.824892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.004189, 30.283514, 23.955042>,  <36.768578, 29.490019, 23.950245>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.004189, 30.283514, 23.955042> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.614613, 30.231613, 24.029444>,  <36.380867, 30.200474, 24.074085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.614613, 30.231613, 24.029444>,  <37.004189, 30.283514, 23.955042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.614613, 30.231613, 24.029444> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079425, 0.573084, 0.815639,
		-0.212427, 0.809160, -0.547846,
		-0.973944, -0.129751, 0.186006,
		36.322430, 30.192688, 24.085245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.953094, 30.834482, 24.393539>,  <37.004189, 30.283514, 23.955042>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.953094, 30.834482, 24.393539> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.601479, 30.655825, 24.460226>,  <36.390507, 30.548630, 24.500238>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.601479, 30.655825, 24.460226>,  <36.953094, 30.834482, 24.393539>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.601479, 30.655825, 24.460226> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039971, 0.417517, 0.907790,
		-0.475067, 0.791321, -0.384867,
		-0.879041, -0.446644, 0.166719,
		36.337765, 30.521832, 24.510242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.580563, 31.379700, 24.572264>,  <36.953094, 30.834482, 24.393539>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.580563, 31.379700, 24.572264> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.404659, 31.045692, 24.704538>,  <36.299118, 30.845287, 24.783903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.404659, 31.045692, 24.704538>,  <36.580563, 31.379700, 24.572264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.404659, 31.045692, 24.704538> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061327, 0.339425, 0.938632,
		-0.896018, 0.433055, -0.098057,
		-0.439762, -0.835018, 0.330689,
		36.272732, 30.795187, 24.803745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.110523, 31.555592, 25.085960>,  <36.580563, 31.379700, 24.572264>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.110523, 31.555592, 25.085960> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.190342, 31.167704, 25.142284>,  <36.238232, 30.934971, 25.176079>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.190342, 31.167704, 25.142284>,  <36.110523, 31.555592, 25.085960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.190342, 31.167704, 25.142284> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167299, 0.175303, 0.970196,
		-0.965502, -0.170038, 0.197213,
		0.199542, -0.969720, 0.140808,
		36.250206, 30.876787, 25.184526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.660080, 31.255886, 25.493113>,  <36.110523, 31.555592, 25.085960>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.660080, 31.255886, 25.493113> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.943874, 30.981150, 25.556198>,  <36.114151, 30.816307, 25.594049>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.943874, 30.981150, 25.556198>,  <35.660080, 31.255886, 25.493113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.943874, 30.981150, 25.556198> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021125, 0.202967, 0.978958,
		-0.704399, -0.697893, 0.129493,
		0.709490, -0.686841, 0.157712,
		36.156723, 30.775097, 25.603512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.432896, 30.907383, 26.091736>,  <35.660080, 31.255886, 25.493113>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.432896, 30.907383, 26.091736> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.817619, 30.800611, 26.067497>,  <36.048454, 30.736549, 26.052954>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.817619, 30.800611, 26.067497>,  <35.432896, 30.907383, 26.091736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.817619, 30.800611, 26.067497> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089369, 0.096990, 0.991265,
		-0.258720, -0.958823, 0.117141,
		0.961809, -0.266929, -0.060596,
		36.106163, 30.720533, 26.049318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.639595, 30.438656, 26.681879>,  <35.432896, 30.907383, 26.091736>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.639595, 30.438656, 26.681879> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.979156, 30.574665, 26.520020>,  <36.182896, 30.656271, 26.422903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.979156, 30.574665, 26.520020>,  <35.639595, 30.438656, 26.681879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.979156, 30.574665, 26.520020> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318086, 0.282763, 0.904912,
		0.422109, -0.896901, 0.131883,
		0.848908, 0.340022, -0.404649,
		36.233829, 30.676672, 26.398624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.137154, 30.149149, 27.143675>,  <35.639595, 30.438656, 26.681879>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.137154, 30.149149, 27.143675> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.314896, 30.461292, 26.967680>,  <36.421539, 30.648579, 26.862083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.314896, 30.461292, 26.967680>,  <36.137154, 30.149149, 27.143675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.314896, 30.461292, 26.967680> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511694, 0.182051, 0.839659,
		0.735336, -0.598243, -0.318410,
		0.444353, 0.780360, -0.439986,
		36.448200, 30.695400, 26.835684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.959515, 30.211220, 27.210279>,  <36.137154, 30.149149, 27.143675>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.959515, 30.211220, 27.210279> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.788498, 30.569441, 27.160965>,  <36.685890, 30.784372, 27.131376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.788498, 30.569441, 27.160965>,  <36.959515, 30.211220, 27.210279>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.788498, 30.569441, 27.160965> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275850, 0.259117, 0.925616,
		0.860883, 0.361727, -0.357820,
		-0.427537, 0.895551, -0.123287,
		36.660236, 30.838106, 27.123980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.390594, 30.580111, 27.612055>,  <36.959515, 30.211220, 27.210279>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.390594, 30.580111, 27.612055> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.079857, 30.822628, 27.544022>,  <36.893414, 30.968138, 27.503202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.079857, 30.822628, 27.544022>,  <37.390594, 30.580111, 27.612055>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.079857, 30.822628, 27.544022> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010261, 0.257880, 0.966123,
		0.629615, 0.752267, -0.194110,
		-0.776840, 0.606293, -0.170084,
		36.846806, 31.004517, 27.492996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<38.393536, 33.398163, 22.265463> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.022579, 33.402721, 22.115891>,  <37.800007, 33.405457, 22.026148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.022579, 33.402721, 22.115891>,  <38.393536, 33.398163, 22.265463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.022579, 33.402721, 22.115891> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373683, 0.075560, -0.924474,
		0.017720, -0.997076, -0.074332,
		-0.927387, 0.011395, -0.373929,
		37.744362, 33.406139, 22.003712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.310978, 32.772373, 21.899288>,  <38.393536, 33.398163, 22.265463>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.310978, 32.772373, 21.899288> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.021614, 33.006493, 21.752802>,  <37.847996, 33.146965, 21.664909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.021614, 33.006493, 21.752802>,  <38.310978, 32.772373, 21.899288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.021614, 33.006493, 21.752802> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309658, -0.199033, -0.929784,
		-0.617086, -0.786013, -0.037260,
		-0.723407, 0.585294, -0.366216,
		37.804592, 33.182079, 21.642937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.052708, 32.449841, 21.382713>,  <38.310978, 32.772373, 21.899288>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.052708, 32.449841, 21.382713> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.929218, 32.821674, 21.302153>,  <37.855125, 33.044773, 21.253817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.929218, 32.821674, 21.302153>,  <38.052708, 32.449841, 21.382713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.929218, 32.821674, 21.302153> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234951, -0.130654, -0.963186,
		-0.921677, -0.344678, -0.178071,
		-0.308723, 0.929584, -0.201403,
		37.836601, 33.100548, 21.241732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.426205, 32.418968, 20.908934>,  <38.052708, 32.449841, 21.382713>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.426205, 32.418968, 20.908934> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.629288, 32.762444, 20.880951>,  <37.751137, 32.968529, 20.864161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.629288, 32.762444, 20.880951>,  <37.426205, 32.418968, 20.908934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.629288, 32.762444, 20.880951> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002472, -0.082651, -0.996576,
		-0.861527, 0.505795, -0.044085,
		0.507706, 0.858685, -0.069956,
		37.781601, 33.020050, 20.859964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.011833, 32.972366, 20.469521>,  <37.426205, 32.418968, 20.908934>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.011833, 32.972366, 20.469521> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.391567, 33.094913, 20.441521>,  <37.619408, 33.168442, 20.424721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.391567, 33.094913, 20.441521>,  <37.011833, 32.972366, 20.469521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.391567, 33.094913, 20.441521> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102599, 0.091605, -0.990496,
		-0.297043, 0.947495, 0.118397,
		0.949336, 0.306368, -0.070002,
		37.676369, 33.186825, 20.420521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.991238, 33.626133, 20.074251>,  <37.011833, 32.972366, 20.469521>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.991238, 33.626133, 20.074251> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.373241, 33.507504, 20.073811>,  <37.602444, 33.436325, 20.073545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.373241, 33.507504, 20.073811>,  <36.991238, 33.626133, 20.074251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.373241, 33.507504, 20.073811> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075495, 0.246692, -0.966149,
		0.286810, 0.922597, 0.257983,
		0.955008, -0.296577, -0.001102,
		37.659744, 33.418530, 20.073481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.319981, 34.063267, 19.525864>,  <36.991238, 33.626133, 20.074251>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.319981, 34.063267, 19.525864> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.551979, 33.742340, 19.582268>,  <37.691177, 33.549782, 19.616110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.551979, 33.742340, 19.582268>,  <37.319981, 34.063267, 19.525864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.551979, 33.742340, 19.582268> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233031, -0.002454, -0.972466,
		0.780576, 0.596887, 0.185542,
		0.579998, -0.802321, 0.141009,
		37.725979, 33.501644, 19.624571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.683048, 34.149323, 18.993830>,  <37.319981, 34.063267, 19.525864>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.683048, 34.149323, 18.993830> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.773232, 33.773483, 19.096838>,  <37.827343, 33.547977, 19.158644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.773232, 33.773483, 19.096838>,  <37.683048, 34.149323, 18.993830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.773232, 33.773483, 19.096838> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151470, -0.227308, -0.961971,
		0.962407, 0.255890, 0.091073,
		0.225457, -0.939602, 0.257522,
		37.840870, 33.491604, 19.174095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.247200, 34.002098, 18.577284>,  <37.683048, 34.149323, 18.993830>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.247200, 34.002098, 18.577284> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.133953, 33.635910, 18.691664>,  <38.066006, 33.416199, 18.760292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.133953, 33.635910, 18.691664>,  <38.247200, 34.002098, 18.577284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.133953, 33.635910, 18.691664> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177941, -0.343110, -0.922286,
		0.942435, -0.210230, 0.260038,
		-0.283114, -0.915466, 0.285951,
		38.049019, 33.361271, 18.777449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.853611, 33.493473, 18.422377>,  <38.247200, 34.002098, 18.577284>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.853611, 33.493473, 18.422377> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.496822, 33.313133, 18.408964>,  <38.282749, 33.204929, 18.400917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.496822, 33.313133, 18.408964>,  <38.853611, 33.493473, 18.422377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.496822, 33.313133, 18.408964> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217661, -0.363243, -0.905913,
		0.396253, -0.815345, 0.422134,
		-0.891968, -0.450852, -0.033533,
		38.229233, 33.177879, 18.398905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.020576, 32.861076, 18.113075>,  <38.853611, 33.493473, 18.422377>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.020576, 32.861076, 18.113075> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.627598, 32.914085, 18.060553>,  <38.391811, 32.945892, 18.029039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.627598, 32.914085, 18.060553>,  <39.020576, 32.861076, 18.113075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.627598, 32.914085, 18.060553> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077235, -0.351750, -0.932902,
		-0.169821, -0.926665, 0.335339,
		-0.982443, 0.132527, -0.131306,
		38.332863, 32.953842, 18.021160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.844044, 32.277348, 17.649883>,  <39.020576, 32.861076, 18.113075>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.844044, 32.277348, 17.649883> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.527351, 32.518127, 17.608267>,  <38.337337, 32.662594, 17.583298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.527351, 32.518127, 17.608267>,  <38.844044, 32.277348, 17.649883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.527351, 32.518127, 17.608267> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091736, -0.285544, -0.953965,
		-0.603943, -0.745739, 0.281294,
		-0.791731, 0.601945, -0.104041,
		38.289833, 32.698711, 17.577055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.380043, 32.043388, 17.060055>,  <38.844044, 32.277348, 17.649883>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.380043, 32.043388, 17.060055> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.239620, 32.416245, 17.095543>,  <38.155369, 32.639957, 17.116835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.239620, 32.416245, 17.095543>,  <38.380043, 32.043388, 17.060055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.239620, 32.416245, 17.095543> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141168, 0.040978, -0.989137,
		-0.925652, -0.359766, 0.117203,
		-0.351055, 0.932142, 0.088719,
		38.134304, 32.695889, 17.122158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.533211, 31.272614, 17.188055>,  <38.380043, 32.043388, 17.060055>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.533211, 31.272614, 17.188055> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.304348, 31.253857, 17.515577>,  <38.167030, 31.242603, 17.712090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.304348, 31.253857, 17.515577>,  <38.533211, 31.272614, 17.188055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.304348, 31.253857, 17.515577> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631972, -0.661531, 0.403717,
		0.522733, 0.748450, 0.408133,
		-0.572155, -0.046893, 0.818804,
		38.132702, 31.239788, 17.761219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.948757, 30.706266, 17.089262>,  <38.533211, 31.272614, 17.188055>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.948757, 30.706266, 17.089262> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.880669, 30.319979, 17.167662>,  <37.839817, 30.088207, 17.214703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.880669, 30.319979, 17.167662>,  <37.948757, 30.706266, 17.089262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.880669, 30.319979, 17.167662> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294515, 0.239669, 0.925105,
		-0.940365, 0.099743, -0.325214,
		-0.170217, -0.965717, 0.196000,
		37.829605, 30.030264, 17.226461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.225037, 30.669155, 17.489071>,  <37.948757, 30.706266, 17.089262>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.225037, 30.669155, 17.489071> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.408146, 30.320772, 17.560484>,  <37.518013, 30.111742, 17.603333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.408146, 30.320772, 17.560484>,  <37.225037, 30.669155, 17.489071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.408146, 30.320772, 17.560484> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262329, 0.059549, 0.963139,
		-0.849486, -0.487735, -0.201218,
		0.457775, -0.870958, 0.178533,
		37.545479, 30.059484, 17.614044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.720238, 30.374424, 17.774033>,  <37.225037, 30.669155, 17.489071>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.720238, 30.374424, 17.774033> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.055008, 30.191282, 17.893990>,  <37.255871, 30.081398, 17.965963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.055008, 30.191282, 17.893990>,  <36.720238, 30.374424, 17.774033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.055008, 30.191282, 17.893990> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377294, -0.085681, 0.922121,
		-0.396502, -0.884889, -0.244453,
		0.836920, -0.457853, 0.299891,
		37.306084, 30.053926, 17.983957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.534180, 29.840082, 18.201056>,  <36.720238, 30.374424, 17.774033>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.534180, 29.840082, 18.201056> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.916553, 29.889896, 18.307402>,  <37.145977, 29.919785, 18.371210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.916553, 29.889896, 18.307402>,  <36.534180, 29.840082, 18.201056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.916553, 29.889896, 18.307402> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257498, -0.079363, 0.963014,
		0.141029, -0.989036, -0.043798,
		0.955932, 0.124535, 0.265868,
		37.203335, 29.927256, 18.387161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.663013, 29.337492, 18.636337>,  <36.534180, 29.840082, 18.201056>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.663013, 29.337492, 18.636337> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.935875, 29.617508, 18.720827>,  <37.099590, 29.785517, 18.771521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.935875, 29.617508, 18.720827>,  <36.663013, 29.337492, 18.636337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.935875, 29.617508, 18.720827> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124529, -0.173429, 0.976941,
		0.720530, -0.692724, -0.031129,
		0.682150, 0.700039, 0.211225,
		37.140518, 29.827520, 18.784195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.002300, 29.082384, 19.259310>,  <36.663013, 29.337492, 18.636337>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.002300, 29.082384, 19.259310> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.102402, 29.469440, 19.246395>,  <37.162464, 29.701675, 19.238646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.102402, 29.469440, 19.246395>,  <37.002300, 29.082384, 19.259310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.102402, 29.469440, 19.246395> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095717, 0.057911, 0.993722,
		0.963437, -0.245592, 0.107112,
		0.250253, 0.967642, -0.032286,
		37.177479, 29.759733, 19.236710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.570023, 29.300360, 19.725618>,  <37.002300, 29.082384, 19.259310>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.570023, 29.300360, 19.725618> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.427795, 29.665070, 19.643414>,  <37.342457, 29.883896, 19.594090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.427795, 29.665070, 19.643414>,  <37.570023, 29.300360, 19.725618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.427795, 29.665070, 19.643414> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306924, 0.093784, 0.947102,
		0.882818, 0.399838, 0.246499,
		-0.355570, 0.911775, -0.205514,
		37.321125, 29.938602, 19.581758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.896107, 29.856243, 20.243664>,  <37.570023, 29.300360, 19.725618>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.896107, 29.856243, 20.243664> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.540649, 29.975708, 20.104462>,  <37.327374, 30.047386, 20.020941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.540649, 29.975708, 20.104462>,  <37.896107, 29.856243, 20.243664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.540649, 29.975708, 20.104462> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343865, 0.068130, 0.936544,
		0.303418, 0.951925, 0.042156,
		-0.888648, 0.298660, -0.348005,
		37.274055, 30.065306, 20.000061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.779827, 30.436857, 20.780083>,  <37.896107, 29.856243, 20.243664>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.779827, 30.436857, 20.780083> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.437248, 30.335394, 20.600235>,  <37.231701, 30.274515, 20.492327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.437248, 30.335394, 20.600235>,  <37.779827, 30.436857, 20.780083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.437248, 30.335394, 20.600235> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504476, 0.226372, 0.833223,
		-0.109573, 0.940432, -0.321840,
		-0.856445, -0.253659, -0.449621,
		37.180313, 30.259296, 20.465349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.255981, 30.991201, 20.802164>,  <37.779827, 30.436857, 20.780083>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.255981, 30.991201, 20.802164> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.062733, 30.643303, 20.761892>,  <36.946785, 30.434565, 20.737730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.062733, 30.643303, 20.761892>,  <37.255981, 30.991201, 20.802164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.062733, 30.643303, 20.761892> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411120, 0.123826, 0.903132,
		-0.773028, 0.477714, -0.417392,
		-0.483123, -0.869745, -0.100677,
		36.917797, 30.382380, 20.731689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.625168, 31.082611, 21.159735>,  <37.255981, 30.991201, 20.802164>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.625168, 31.082611, 21.159735> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.630058, 30.686609, 21.103539>,  <36.632992, 30.449007, 21.069820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.630058, 30.686609, 21.103539>,  <36.625168, 31.082611, 21.159735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.630058, 30.686609, 21.103539> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375260, -0.134772, 0.917070,
		-0.926839, 0.041510, -0.373157,
		0.012224, -0.990007, -0.140489,
		36.633724, 30.389606, 21.061392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.910236, 30.840117, 21.373184>,  <36.625168, 31.082611, 21.159735>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.910236, 30.840117, 21.373184> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.165150, 30.532967, 21.399225>,  <36.318096, 30.348677, 21.414850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.165150, 30.532967, 21.399225>,  <35.910236, 30.840117, 21.373184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.165150, 30.532967, 21.399225> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310907, -0.178892, 0.933453,
		-0.705129, -0.615114, -0.352743,
		0.637283, -0.767875, 0.065101,
		36.356335, 30.302605, 21.418756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.500404, 30.211027, 21.637863>,  <35.910236, 30.840117, 21.373184>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.500404, 30.211027, 21.637863> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.879265, 30.108429, 21.714928>,  <36.106583, 30.046871, 21.761168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.879265, 30.108429, 21.714928>,  <35.500404, 30.211027, 21.637863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.879265, 30.108429, 21.714928> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269693, -0.311464, 0.911184,
		-0.173702, -0.914988, -0.364177,
		0.947150, -0.256491, 0.192663,
		36.163410, 30.031481, 21.772726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.504112, 29.506578, 21.994791>,  <35.500404, 30.211027, 21.637863>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.504112, 29.506578, 21.994791> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.872234, 29.636911, 22.081396>,  <36.093105, 29.715111, 22.133358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.872234, 29.636911, 22.081396>,  <35.504112, 29.506578, 21.994791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.872234, 29.636911, 22.081396> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105533, -0.326149, 0.939409,
		0.376706, -0.887389, -0.265770,
		0.920302, 0.325833, 0.216511,
		36.148327, 29.734661, 22.146349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.054890, 28.943506, 22.039627>,  <35.504112, 29.506578, 21.994791>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.054890, 28.943506, 22.039627> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.664825, 29.022610, 21.999735>,  <34.430786, 29.070072, 21.975800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.664825, 29.022610, 21.999735>,  <35.054890, 28.943506, 22.039627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.664825, 29.022610, 21.999735> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087041, -0.071873, -0.993609,
		-0.203666, -0.977612, 0.052874,
		-0.975164, 0.197762, -0.099730,
		34.372276, 29.081938, 21.969816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.805046, 28.563509, 21.498785>,  <35.054890, 28.943506, 22.039627>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.805046, 28.563509, 21.498785> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.505665, 28.826767, 21.531439>,  <34.326035, 28.984722, 21.551031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.505665, 28.826767, 21.531439>,  <34.805046, 28.563509, 21.498785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.505665, 28.826767, 21.531439> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005482, 0.116951, -0.993123,
		-0.663165, -0.743753, -0.083924,
		-0.748453, 0.658144, 0.081636,
		34.281128, 29.024210, 21.555929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.299053, 28.281868, 21.065376>,  <34.805046, 28.563509, 21.498785>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.299053, 28.281868, 21.065376> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.208401, 28.669441, 21.104988>,  <34.154011, 28.901985, 21.128756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.208401, 28.669441, 21.104988>,  <34.299053, 28.281868, 21.065376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.208401, 28.669441, 21.104988> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019700, 0.097094, -0.995080,
		-0.973781, -0.227468, -0.002917,
		-0.226632, 0.968933, 0.099030,
		34.140411, 28.960121, 21.134697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.704449, 28.393459, 20.611469>,  <34.299053, 28.281868, 21.065376>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.704449, 28.393459, 20.611469> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.873154, 28.754103, 20.649870>,  <33.974377, 28.970490, 20.672911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.873154, 28.754103, 20.649870>,  <33.704449, 28.393459, 20.611469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.873154, 28.754103, 20.649870> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095016, 0.149247, -0.984224,
		-0.901715, 0.405985, 0.148614,
		0.421760, 0.901610, 0.096003,
		33.999683, 29.024586, 20.678671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.244438, 28.890177, 20.268753>,  <33.704449, 28.393459, 20.611469>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.244438, 28.890177, 20.268753> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.611721, 29.046762, 20.292927>,  <33.832092, 29.140715, 20.307432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.611721, 29.046762, 20.292927>,  <33.244438, 28.890177, 20.268753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.611721, 29.046762, 20.292927> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009456, 0.174194, -0.984666,
		-0.395990, 0.903555, 0.163648,
		0.918206, 0.391465, 0.060435,
		33.887184, 29.164202, 20.311058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.253826, 29.342531, 19.779930>,  <33.244438, 28.890177, 20.268753>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.253826, 29.342531, 19.779930> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.651054, 29.369801, 19.818213>,  <33.889393, 29.386162, 19.841183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.651054, 29.369801, 19.818213>,  <33.253826, 29.342531, 19.779930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.651054, 29.369801, 19.818213> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068723, 0.323712, -0.943656,
		-0.095315, 0.943696, 0.316785,
		0.993072, 0.068175, 0.095708,
		33.948975, 29.390253, 19.846926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.480934, 29.986485, 19.389208>,  <33.253826, 29.342531, 19.779930>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.480934, 29.986485, 19.389208> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.810532, 29.765146, 19.437937>,  <34.008289, 29.632343, 19.467175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.810532, 29.765146, 19.437937>,  <33.480934, 29.986485, 19.389208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.810532, 29.765146, 19.437937> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144696, -0.002367, -0.989473,
		0.547808, 0.832949, 0.078117,
		0.823996, -0.553345, 0.121821,
		34.057732, 29.599142, 19.474483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.215542, 30.610926, 19.057514>,  <33.480934, 29.986485, 19.389208>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.215542, 30.610926, 19.057514> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.830818, 30.635475, 18.950815>,  <32.599983, 30.650204, 18.886795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.830818, 30.635475, 18.950815>,  <33.215542, 30.610926, 19.057514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.830818, 30.635475, 18.950815> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264478, 0.042675, 0.963447,
		0.070512, 0.997202, -0.024813,
		-0.961811, 0.061372, -0.266747,
		32.542274, 30.653887, 18.870790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.005188, 31.151670, 19.427757>,  <33.215542, 30.610926, 19.057514>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.005188, 31.151670, 19.427757> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.674267, 30.951147, 19.326355>,  <32.475716, 30.830833, 19.265514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.674267, 30.951147, 19.326355>,  <33.005188, 31.151670, 19.427757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.674267, 30.951147, 19.326355> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298060, 0.009207, 0.954503,
		-0.476164, 0.865221, -0.157037,
		-0.827302, -0.501306, -0.253504,
		32.426075, 30.800755, 19.250303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.467167, 31.535542, 19.748064>,  <33.005188, 31.151670, 19.427757>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.467167, 31.535542, 19.748064> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.318958, 31.171200, 19.675335>,  <32.230034, 30.952595, 19.631697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.318958, 31.171200, 19.675335>,  <32.467167, 31.535542, 19.748064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.318958, 31.171200, 19.675335> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348002, -0.045362, 0.936396,
		-0.861167, 0.410230, -0.300171,
		-0.370522, -0.910853, -0.181825,
		32.207802, 30.897943, 19.620787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.798004, 31.496767, 20.140041>,  <32.467167, 31.535542, 19.748064>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.798004, 31.496767, 20.140041> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.882734, 31.114817, 20.056768>,  <31.933573, 30.885647, 20.006805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.882734, 31.114817, 20.056768>,  <31.798004, 31.496767, 20.140041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.882734, 31.114817, 20.056768> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167835, -0.245393, 0.954785,
		-0.962788, -0.167308, -0.212243,
		0.211826, -0.954877, -0.208181,
		31.946281, 30.828354, 19.994314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.323256, 31.178722, 20.501801>,  <31.798004, 31.496767, 20.140041>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.323256, 31.178722, 20.501801> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.613188, 30.909357, 20.443644>,  <31.787148, 30.747738, 20.408749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.613188, 30.909357, 20.443644>,  <31.323256, 31.178722, 20.501801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.613188, 30.909357, 20.443644> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022930, -0.234506, 0.971844,
		-0.688547, -0.701087, -0.185418,
		0.724829, -0.673412, -0.145392,
		31.830637, 30.707333, 20.400026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.943138, 30.478897, 20.538345>,  <31.323256, 31.178722, 20.501801>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.943138, 30.478897, 20.538345> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.331903, 30.425589, 20.615932>,  <31.565163, 30.393604, 20.662485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.331903, 30.425589, 20.615932>,  <30.943138, 30.478897, 20.538345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.331903, 30.425589, 20.615932> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217249, -0.191181, 0.957211,
		-0.090483, -0.972466, -0.214764,
		0.971914, -0.133269, 0.193968,
		31.623478, 30.385607, 20.674122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.108744, 29.812410, 20.917940>,  <30.943138, 30.478897, 20.538345>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.108744, 29.812410, 20.917940> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.407242, 30.063143, 21.007561>,  <31.586340, 30.213583, 21.061333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.407242, 30.063143, 21.007561>,  <31.108744, 29.812410, 20.917940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.407242, 30.063143, 21.007561> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159666, -0.158206, 0.974411,
		0.646239, -0.762923, -0.017976,
		0.746245, 0.626832, 0.224052,
		31.631115, 30.251192, 21.074776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<34.933617, 33.125324, 16.326717> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.286640, 33.149998, 16.513172>,  <35.498455, 33.164803, 16.625046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.286640, 33.149998, 16.513172>,  <34.933617, 33.125324, 16.326717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.286640, 33.149998, 16.513172> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466308, -0.012510, 0.884534,
		0.060399, -0.998017, 0.017726,
		0.882558, 0.061691, 0.466139,
		35.551407, 33.168503, 16.653013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.720222, 32.944305, 16.981617>,  <34.933617, 33.125324, 16.326717>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.720222, 32.944305, 16.981617> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.086163, 33.086735, 17.057787>,  <35.305725, 33.172192, 17.103489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.086163, 33.086735, 17.057787>,  <34.720222, 32.944305, 16.981617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.086163, 33.086735, 17.057787> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217115, 0.036157, 0.975476,
		0.340452, -0.933760, 0.110386,
		0.914852, 0.356069, 0.190423,
		35.360619, 33.193554, 17.114914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.953602, 32.635799, 17.545605>,  <34.720222, 32.944305, 16.981617>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.953602, 32.635799, 17.545605> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.170605, 32.970795, 17.519365>,  <35.300804, 33.171791, 17.503622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.170605, 32.970795, 17.519365>,  <34.953602, 32.635799, 17.545605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.170605, 32.970795, 17.519365> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238563, 0.228468, 0.943870,
		0.805466, -0.496404, 0.323738,
		0.542505, 0.837487, -0.065599,
		35.333355, 33.222042, 17.499685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.230541, 32.680531, 18.236013>,  <34.953602, 32.635799, 17.545605>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.230541, 32.680531, 18.236013> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.302181, 33.039108, 18.073870>,  <35.345165, 33.254253, 17.976583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.302181, 33.039108, 18.073870>,  <35.230541, 32.680531, 18.236013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.302181, 33.039108, 18.073870> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159906, 0.433069, 0.887063,
		0.970748, -0.094057, 0.220910,
		0.179104, 0.896440, -0.405361,
		35.355911, 33.308041, 17.952261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.859734, 32.978176, 18.499580>,  <35.230541, 32.680531, 18.236013>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.859734, 32.978176, 18.499580> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.641510, 33.293018, 18.384462>,  <35.510574, 33.481926, 18.315392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.641510, 33.293018, 18.384462>,  <35.859734, 32.978176, 18.499580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.641510, 33.293018, 18.384462> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027605, 0.326337, 0.944850,
		0.837616, 0.523418, -0.156309,
		-0.545561, 0.787107, -0.287794,
		35.477840, 33.529152, 18.298124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.136147, 33.560825, 18.802183>,  <35.859734, 32.978176, 18.499580>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.136147, 33.560825, 18.802183> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.764496, 33.681396, 18.716513>,  <35.541508, 33.753738, 18.665112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.764496, 33.681396, 18.716513>,  <36.136147, 33.560825, 18.802183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.764496, 33.681396, 18.716513> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068689, 0.428438, 0.900957,
		0.363330, 0.851813, -0.377368,
		-0.929125, 0.301424, -0.214174,
		35.485760, 33.771824, 18.652260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.007881, 34.134510, 19.215820>,  <36.136147, 33.560825, 18.802183>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.007881, 34.134510, 19.215820> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.630169, 34.053783, 19.111818>,  <35.403542, 34.005348, 19.049417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.630169, 34.053783, 19.111818>,  <36.007881, 34.134510, 19.215820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.630169, 34.053783, 19.111818> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322246, 0.406037, 0.855156,
		-0.067013, 0.891293, -0.448449,
		-0.944281, -0.201818, -0.260006,
		35.346886, 33.993237, 19.033817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.635422, 34.813465, 19.220825>,  <36.007881, 34.134510, 19.215820>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.635422, 34.813465, 19.220825> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.362610, 34.521179, 19.232838>,  <35.198925, 34.345810, 19.240046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.362610, 34.521179, 19.232838>,  <35.635422, 34.813465, 19.220825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.362610, 34.521179, 19.232838> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399007, 0.406208, 0.822064,
		-0.612889, 0.548687, -0.568603,
		-0.682027, -0.730710, 0.030030,
		35.158001, 34.301968, 19.241846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.107224, 35.265884, 19.367653>,  <35.635422, 34.813465, 19.220825>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.107224, 35.265884, 19.367653> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.015980, 34.883236, 19.440145>,  <34.961235, 34.653648, 19.483641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.015980, 34.883236, 19.440145>,  <35.107224, 35.265884, 19.367653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.015980, 34.883236, 19.440145> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687529, 0.290058, 0.665710,
		-0.689399, 0.027252, -0.723869,
		-0.228106, -0.956621, 0.181229,
		34.947548, 34.596249, 19.494514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.349163, 35.143108, 19.313629>,  <35.107224, 35.265884, 19.367653>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.349163, 35.143108, 19.313629> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.545059, 34.899059, 19.562756>,  <34.662598, 34.752628, 19.712231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.545059, 34.899059, 19.562756>,  <34.349163, 35.143108, 19.313629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.545059, 34.899059, 19.562756> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529203, 0.359681, 0.768488,
		-0.692888, -0.705958, -0.146728,
		0.489745, -0.610125, 0.622814,
		34.691982, 34.716022, 19.749599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.810081, 34.914597, 19.712318>,  <34.349163, 35.143108, 19.313629>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.810081, 34.914597, 19.712318> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.130817, 34.811092, 19.927757>,  <34.323261, 34.748989, 20.057020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.130817, 34.811092, 19.927757>,  <33.810081, 34.914597, 19.712318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.130817, 34.811092, 19.927757> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484767, 0.245287, 0.839545,
		-0.349352, -0.934279, 0.071244,
		0.801845, -0.258760, 0.538599,
		34.371372, 34.733463, 20.089336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.572529, 34.499264, 20.230688>,  <33.810081, 34.914597, 19.712318>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.572529, 34.499264, 20.230688> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.936577, 34.598541, 20.363401>,  <34.155006, 34.658108, 20.443029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.936577, 34.598541, 20.363401>,  <33.572529, 34.499264, 20.230688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.936577, 34.598541, 20.363401> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336397, -0.024883, 0.941391,
		0.241904, -0.968391, 0.060845,
		0.910120, 0.248194, 0.331783,
		34.209614, 34.673000, 20.462936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.057888, 33.990242, 20.162180>,  <33.572529, 34.499264, 20.230688>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.057888, 33.990242, 20.162180> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.659981, 34.023163, 20.137999>,  <32.421234, 34.042915, 20.123489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.659981, 34.023163, 20.137999>,  <33.057888, 33.990242, 20.162180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.659981, 34.023163, 20.137999> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060184, -0.005774, -0.998171,
		-0.082500, -0.996591, 0.000790,
		-0.994772, 0.082302, -0.060455,
		32.361549, 34.047852, 20.119862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.894165, 33.588062, 19.494535>,  <33.057888, 33.990242, 20.162180>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.894165, 33.588062, 19.494535> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.580654, 33.824348, 19.571203>,  <32.392548, 33.966122, 19.617205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.580654, 33.824348, 19.571203>,  <32.894165, 33.588062, 19.494535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.580654, 33.824348, 19.571203> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113352, 0.167373, -0.979356,
		-0.610604, -0.789327, -0.064224,
		-0.783781, 0.590719, 0.191670,
		32.345520, 34.001564, 19.628704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.404690, 33.374363, 19.005362>,  <32.894165, 33.588062, 19.494535>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.404690, 33.374363, 19.005362> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.262306, 33.731747, 19.114925>,  <32.176876, 33.946178, 19.180664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.262306, 33.731747, 19.114925>,  <32.404690, 33.374363, 19.005362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.262306, 33.731747, 19.114925> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054693, 0.272689, -0.960546,
		-0.932900, -0.356895, -0.048200,
		-0.355957, 0.893458, 0.273911,
		32.155518, 33.999783, 19.197100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.690069, 33.458138, 18.669214>,  <32.404690, 33.374363, 19.005362>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.690069, 33.458138, 18.669214> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.834440, 33.822475, 18.749300>,  <31.921062, 34.041080, 18.797352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.834440, 33.822475, 18.749300>,  <31.690069, 33.458138, 18.669214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.834440, 33.822475, 18.749300> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248709, 0.300923, -0.920646,
		-0.898818, 0.282493, 0.335148,
		0.360929, 0.910848, 0.200216,
		31.942719, 34.095730, 18.809364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.099100, 33.842991, 18.483339>,  <31.690069, 33.458138, 18.669214>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.099100, 33.842991, 18.483339> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.463112, 34.008709, 18.477663>,  <31.681519, 34.108139, 18.474257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.463112, 34.008709, 18.477663>,  <31.099100, 33.842991, 18.483339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.463112, 34.008709, 18.477663> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183140, 0.371094, -0.910356,
		-0.371891, 0.831052, 0.413582,
		0.910031, 0.414297, -0.014193,
		31.736122, 34.132999, 18.473406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.037971, 34.382496, 18.024502>,  <31.099100, 33.842991, 18.483339>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.037971, 34.382496, 18.024502> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.434959, 34.334499, 18.034317>,  <31.673153, 34.305702, 18.040207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.434959, 34.334499, 18.034317>,  <31.037971, 34.382496, 18.024502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.434959, 34.334499, 18.034317> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059748, 0.299459, -0.952236,
		0.106910, 0.946534, 0.304374,
		0.992472, -0.119989, 0.024538,
		31.732700, 34.298504, 18.041679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.293653, 34.863777, 17.581568>,  <31.037971, 34.382496, 18.024502>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.293653, 34.863777, 17.581568> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.593904, 34.600307, 17.602362>,  <31.774055, 34.442226, 17.614838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.593904, 34.600307, 17.602362>,  <31.293653, 34.863777, 17.581568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.593904, 34.600307, 17.602362> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214042, 0.167975, -0.962274,
		0.625094, 0.733437, 0.267071,
		0.750628, -0.658676, 0.051986,
		31.819094, 34.402706, 17.617958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.587292, 34.841301, 16.947327>,  <31.293653, 34.863777, 17.581568>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.587292, 34.841301, 16.947327> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.841030, 34.562244, 17.080534>,  <31.993273, 34.394810, 17.160458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.841030, 34.562244, 17.080534>,  <31.587292, 34.841301, 16.947327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.841030, 34.562244, 17.080534> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415231, -0.055875, -0.907998,
		0.652067, 0.714262, 0.254240,
		0.634344, -0.697644, 0.333018,
		32.031334, 34.352951, 17.180439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.299904, 34.973137, 16.671333>,  <31.587292, 34.841301, 16.947327>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.299904, 34.973137, 16.671333> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.287651, 34.589737, 16.784710>,  <32.280300, 34.359695, 16.852736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.287651, 34.589737, 16.784710>,  <32.299904, 34.973137, 16.671333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.287651, 34.589737, 16.784710> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441365, -0.267401, -0.856559,
		0.896805, 0.098868, 0.431238,
		-0.030628, -0.958500, 0.283444,
		32.278461, 34.302189, 16.869743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.958054, 34.686466, 16.607504>,  <32.299904, 34.973137, 16.671333>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.958054, 34.686466, 16.607504> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.688671, 34.390938, 16.597704>,  <32.527042, 34.213619, 16.591824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.688671, 34.390938, 16.597704>,  <32.958054, 34.686466, 16.607504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.688671, 34.390938, 16.597704> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380588, -0.318121, -0.868304,
		0.633729, -0.594087, 0.495427,
		-0.673454, -0.738823, -0.024500,
		32.486633, 34.169292, 16.590353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.257973, 34.152466, 16.204973>,  <32.958054, 34.686466, 16.607504>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.257973, 34.152466, 16.204973> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.879910, 34.021862, 16.201635>,  <32.653072, 33.943501, 16.199633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.879910, 34.021862, 16.201635>,  <33.257973, 34.152466, 16.204973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.879910, 34.021862, 16.201635> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185563, -0.515787, -0.836379,
		0.268777, -0.792060, 0.548088,
		-0.945159, -0.326505, -0.008345,
		32.596363, 33.923912, 16.199131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.304874, 33.349045, 16.035259>,  <33.257973, 34.152466, 16.204973>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.304874, 33.349045, 16.035259> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.949841, 33.506535, 15.939606>,  <32.736820, 33.601028, 15.882214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.949841, 33.506535, 15.939606>,  <33.304874, 33.349045, 16.035259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.949841, 33.506535, 15.939606> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003389, -0.513526, -0.858067,
		-0.460638, -0.762415, 0.454462,
		-0.887581, 0.393719, -0.239133,
		32.683567, 33.624649, 15.867866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.052452, 32.796623, 15.579220>,  <33.304874, 33.349045, 16.035259>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.052452, 32.796623, 15.579220> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.830517, 33.122093, 15.509826>,  <32.697357, 33.317375, 15.468189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.830517, 33.122093, 15.509826>,  <33.052452, 32.796623, 15.579220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.830517, 33.122093, 15.509826> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213187, -0.340613, -0.915715,
		-0.804183, -0.471086, 0.362448,
		-0.554835, 0.813672, -0.173486,
		32.664066, 33.366196, 15.457780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.856518, 32.366158, 16.184229>,  <33.052452, 32.796623, 15.579220>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.856518, 32.366158, 16.184229> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.753456, 32.002754, 16.052639>,  <32.691620, 31.784712, 15.973684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.753456, 32.002754, 16.052639>,  <32.856518, 32.366158, 16.184229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.753456, 32.002754, 16.052639> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067333, -0.322762, 0.944082,
		-0.963889, 0.265396, 0.021988,
		-0.257653, -0.908510, -0.328976,
		32.676159, 31.730202, 15.953946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.216179, 32.155010, 16.458294>,  <32.856518, 32.366158, 16.184229>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.216179, 32.155010, 16.458294> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.367245, 31.801186, 16.348803>,  <32.457882, 31.588892, 16.283108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.367245, 31.801186, 16.348803>,  <32.216179, 32.155010, 16.458294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.367245, 31.801186, 16.348803> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104548, -0.334465, 0.936591,
		-0.920023, -0.325097, -0.218793,
		0.377662, -0.884559, -0.273727,
		32.480545, 31.535818, 16.266684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.821562, 31.644308, 16.888885>,  <32.216179, 32.155010, 16.458294>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.821562, 31.644308, 16.888885> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.165157, 31.476461, 16.771540>,  <32.371315, 31.375753, 16.701132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.165157, 31.476461, 16.771540>,  <31.821562, 31.644308, 16.888885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.165157, 31.476461, 16.771540> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029359, -0.531672, 0.846441,
		-0.511145, -0.735700, -0.444384,
		0.858993, -0.419607, -0.293360,
		32.422855, 31.350576, 16.683531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.696367, 30.886728, 16.873806>,  <31.821562, 31.644308, 16.888885>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.696367, 30.886728, 16.873806> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.094135, 30.925344, 16.890835>,  <32.332794, 30.948513, 16.901052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.094135, 30.925344, 16.890835>,  <31.696367, 30.886728, 16.873806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.094135, 30.925344, 16.890835> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003896, -0.436803, 0.899549,
		0.105437, -0.894362, -0.434741,
		0.994418, 0.096539, 0.042571,
		32.392460, 30.954306, 16.903606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.967768, 30.284292, 17.072294>,  <31.696367, 30.886728, 16.873806>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.967768, 30.284292, 17.072294> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.241581, 30.558086, 17.172609>,  <32.405869, 30.722363, 17.232800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.241581, 30.558086, 17.172609>,  <31.967768, 30.284292, 17.072294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.241581, 30.558086, 17.172609> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079185, -0.411810, 0.907823,
		0.724670, -0.601575, -0.336098,
		0.684531, 0.684486, 0.250790,
		32.446941, 30.763432, 17.247847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.449562, 29.955936, 17.369659>,  <31.967768, 30.284292, 17.072294>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.449562, 29.955936, 17.369659> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.515953, 30.328476, 17.499302>,  <32.555786, 30.552000, 17.577087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.515953, 30.328476, 17.499302>,  <32.449562, 29.955936, 17.369659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.515953, 30.328476, 17.499302> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214652, -0.354907, 0.909926,
		0.962485, -0.081453, -0.258820,
		0.165973, 0.931347, 0.324108,
		32.565746, 30.607880, 17.596535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.963631, 29.810827, 17.896107>,  <32.449562, 29.955936, 17.369659>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.963631, 29.810827, 17.896107> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.796219, 30.166672, 17.969240>,  <32.695774, 30.380178, 18.013121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.796219, 30.166672, 17.969240>,  <32.963631, 29.810827, 17.896107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.796219, 30.166672, 17.969240> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082903, -0.237897, 0.967746,
		0.904413, 0.389870, 0.173318,
		-0.418526, 0.889611, 0.182835,
		32.670662, 30.433556, 18.024092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.297695, 30.075331, 18.556833>,  <32.963631, 29.810827, 17.896107>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.297695, 30.075331, 18.556833> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.972107, 30.305065, 18.521980>,  <32.776756, 30.442905, 18.501068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.972107, 30.305065, 18.521980>,  <33.297695, 30.075331, 18.556833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.972107, 30.305065, 18.521980> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233043, -0.185452, 0.954619,
		0.532114, 0.797336, 0.284797,
		-0.813969, 0.574337, -0.087132,
		32.727917, 30.477365, 18.495840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.050129, 30.248789, 18.840168>,  <33.297695, 30.075331, 18.556833>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.050129, 30.248789, 18.840168> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.191078, 29.893389, 18.957743>,  <34.275650, 29.680149, 19.028288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.191078, 29.893389, 18.957743>,  <34.050129, 30.248789, 18.840168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.191078, 29.893389, 18.957743> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384387, -0.148959, -0.911075,
		0.853274, 0.434028, 0.289038,
		0.352377, -0.888499, 0.293937,
		34.296791, 29.626839, 19.045923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.734341, 30.230295, 18.558830>,  <34.050129, 30.248789, 18.840168>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.734341, 30.230295, 18.558830> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.607388, 29.856964, 18.625959>,  <34.531216, 29.632965, 18.666237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.607388, 29.856964, 18.625959>,  <34.734341, 30.230295, 18.558830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.607388, 29.856964, 18.625959> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310688, -0.269548, -0.911491,
		0.895958, -0.237150, 0.375524,
		-0.317382, -0.933329, 0.167824,
		34.512173, 29.576965, 18.676306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.277641, 29.645418, 18.392052>,  <34.734341, 30.230295, 18.558830>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.277641, 29.645418, 18.392052> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.914902, 29.480030, 18.359402>,  <34.697258, 29.380796, 18.339811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.914902, 29.480030, 18.359402>,  <35.277641, 29.645418, 18.392052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.914902, 29.480030, 18.359402> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276031, -0.436347, -0.856392,
		0.318477, -0.799151, 0.509833,
		-0.906851, -0.413471, -0.081625,
		34.642845, 29.355989, 18.334915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.385445, 28.969276, 18.235476>,  <35.277641, 29.645418, 18.392052>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.385445, 28.969276, 18.235476> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.997063, 29.012260, 18.149965>,  <34.764034, 29.038052, 18.098660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.997063, 29.012260, 18.149965>,  <35.385445, 28.969276, 18.235476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.997063, 29.012260, 18.149965> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128259, -0.520485, -0.844183,
		-0.201983, -0.847082, 0.491584,
		-0.970954, 0.107461, -0.213775,
		34.705776, 29.044498, 18.085833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.218143, 28.307600, 18.051714>,  <35.385445, 28.969276, 18.235476>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.218143, 28.307600, 18.051714> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.948421, 28.560732, 17.899485>,  <34.786587, 28.712610, 17.808147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.948421, 28.560732, 17.899485>,  <35.218143, 28.307600, 18.051714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.948421, 28.560732, 17.899485> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218088, -0.321716, -0.921377,
		-0.705512, -0.704290, 0.078923,
		-0.674308, 0.632830, -0.380572,
		34.746128, 28.750580, 17.785313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.775166, 27.889475, 17.524664>,  <35.218143, 28.307600, 18.051714>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.775166, 27.889475, 17.524664> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.736603, 28.273832, 17.420824>,  <34.713467, 28.504446, 17.358521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.736603, 28.273832, 17.420824>,  <34.775166, 27.889475, 17.524664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.736603, 28.273832, 17.420824> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250370, -0.229019, -0.940673,
		-0.963338, -0.155683, -0.218500,
		-0.096406, 0.960892, -0.259601,
		34.707680, 28.562099, 17.342943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.278374, 27.870253, 16.887659>,  <34.775166, 27.889475, 17.524664>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.278374, 27.870253, 16.887659> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.483852, 28.212973, 16.905569>,  <34.607140, 28.418604, 16.916315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.483852, 28.212973, 16.905569>,  <34.278374, 27.870253, 16.887659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.483852, 28.212973, 16.905569> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248834, -0.098838, -0.963490,
		-0.821092, 0.506088, -0.263975,
		0.513701, 0.856800, 0.044777,
		34.637962, 28.470013, 16.919003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.094215, 28.282070, 16.350313>,  <34.278374, 27.870253, 16.887659>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.094215, 28.282070, 16.350313> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.437630, 28.442682, 16.477867>,  <34.643677, 28.539049, 16.554399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.437630, 28.442682, 16.477867>,  <34.094215, 28.282070, 16.350313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.437630, 28.442682, 16.477867> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339746, 0.020330, -0.940298,
		-0.384040, 0.915621, -0.118964,
		0.858537, 0.401529, 0.318886,
		34.695190, 28.563141, 16.573532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.085449, 28.860851, 15.956800>,  <34.094215, 28.282070, 16.350313>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.085449, 28.860851, 15.956800> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.469570, 28.782635, 16.036385>,  <34.700043, 28.735704, 16.084135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.469570, 28.782635, 16.036385>,  <34.085449, 28.860851, 15.956800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.469570, 28.782635, 16.036385> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229213, 0.146553, -0.962280,
		0.159007, 0.969683, 0.185556,
		0.960301, -0.195541, 0.198962,
		34.757660, 28.723972, 16.096073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<32.678810, 31.842352, 31.818251> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.044697, 31.886150, 31.662657>,  <33.264229, 31.912430, 31.569302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.044697, 31.886150, 31.662657>,  <32.678810, 31.842352, 31.818251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.044697, 31.886150, 31.662657> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187847, -0.737051, -0.649206,
		-0.357786, 0.666908, -0.653624,
		0.914715, 0.109495, -0.388983,
		33.319111, 31.918999, 31.545961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.641308, 32.002403, 31.080477>,  <32.678810, 31.842352, 31.818251>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.641308, 32.002403, 31.080477> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.016476, 31.866478, 31.108271>,  <33.241577, 31.784924, 31.124947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.016476, 31.866478, 31.108271>,  <32.641308, 32.002403, 31.080477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.016476, 31.866478, 31.108271> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084819, -0.418968, -0.904031,
		0.336314, 0.842017, -0.421783,
		0.937923, -0.339813, 0.069486,
		33.297852, 31.764534, 31.129116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.025192, 32.160175, 30.445877>,  <32.641308, 32.002403, 31.080477>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.025192, 32.160175, 30.445877> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.200111, 31.849092, 30.626516>,  <33.305061, 31.662443, 30.734900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.200111, 31.849092, 30.626516>,  <33.025192, 32.160175, 30.445877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.200111, 31.849092, 30.626516> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054847, -0.478159, -0.876559,
		0.897643, 0.408085, -0.166443,
		0.437297, -0.777708, 0.451598,
		33.331299, 31.615780, 30.761995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.588097, 32.012547, 30.010921>,  <33.025192, 32.160175, 30.445877>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.588097, 32.012547, 30.010921> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.508118, 31.689007, 30.232109>,  <33.460129, 31.494883, 30.364822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.508118, 31.689007, 30.232109>,  <33.588097, 32.012547, 30.010921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.508118, 31.689007, 30.232109> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134353, -0.581670, -0.802253,
		0.970552, -0.086115, 0.224975,
		-0.199948, -0.808854, 0.552971,
		33.448132, 31.446350, 30.398001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.107925, 31.486553, 29.909794>,  <33.588097, 32.012547, 30.010921>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.107925, 31.486553, 29.909794> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.767574, 31.305386, 30.016279>,  <33.563362, 31.196686, 30.080170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.767574, 31.305386, 30.016279>,  <34.107925, 31.486553, 29.909794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.767574, 31.305386, 30.016279> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091565, -0.626819, -0.773766,
		0.517320, -0.634006, 0.574818,
		-0.850879, -0.452918, 0.266213,
		33.512310, 31.169510, 30.096144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.199520, 30.710953, 29.759678>,  <34.107925, 31.486553, 29.909794>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.199520, 30.710953, 29.759678> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.815426, 30.713627, 29.871328>,  <33.584969, 30.715231, 29.938318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.815426, 30.713627, 29.871328>,  <34.199520, 30.710953, 29.759678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.815426, 30.713627, 29.871328> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175105, -0.793088, -0.583395,
		0.217474, -0.609070, 0.762718,
		-0.960231, 0.006683, 0.279127,
		33.527355, 30.715631, 29.955067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.063354, 30.009464, 29.657673>,  <34.199520, 30.710953, 29.759678>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.063354, 30.009464, 29.657673> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.729225, 30.228554, 29.638788>,  <33.528748, 30.360008, 29.627459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.729225, 30.228554, 29.638788>,  <34.063354, 30.009464, 29.657673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.729225, 30.228554, 29.638788> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261584, -0.471525, -0.842163,
		-0.483545, -0.691124, 0.537152,
		-0.835320, 0.547734, -0.047217,
		33.478626, 30.392872, 29.624626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.548046, 29.430611, 29.541443>,  <34.063354, 30.009464, 29.657673>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.548046, 29.430611, 29.541443> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.386837, 29.778124, 29.426352>,  <33.290112, 29.986631, 29.357296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.386837, 29.778124, 29.426352>,  <33.548046, 29.430611, 29.541443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.386837, 29.778124, 29.426352> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393277, -0.448292, -0.802725,
		-0.826381, -0.210358, 0.522344,
		-0.403022, 0.868783, -0.287731,
		33.265930, 30.038759, 29.340033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.931023, 29.259850, 29.156715>,  <33.548046, 29.430611, 29.541443>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.931023, 29.259850, 29.156715> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.985229, 29.637327, 29.036001>,  <33.017754, 29.863813, 28.963572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.985229, 29.637327, 29.036001>,  <32.931023, 29.259850, 29.156715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.985229, 29.637327, 29.036001> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247855, -0.262621, -0.932522,
		-0.959272, 0.201172, 0.198310,
		0.135517, 0.943695, -0.301787,
		33.025887, 29.920435, 28.945465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.332176, 29.436804, 28.830721>,  <32.931023, 29.259850, 29.156715>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.332176, 29.436804, 28.830721> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.605194, 29.693277, 28.690428>,  <32.769005, 29.847162, 28.606253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.605194, 29.693277, 28.690428>,  <32.332176, 29.436804, 28.830721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.605194, 29.693277, 28.690428> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240398, -0.256227, -0.936246,
		-0.690174, 0.723346, -0.020747,
		0.682546, 0.641185, -0.350732,
		32.809959, 29.885633, 28.585209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.026478, 29.741776, 28.303154>,  <32.332176, 29.436804, 28.830721>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.026478, 29.741776, 28.303154> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.416058, 29.796923, 28.231146>,  <32.649807, 29.830011, 28.187941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.416058, 29.796923, 28.231146>,  <32.026478, 29.741776, 28.303154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.416058, 29.796923, 28.231146> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118197, -0.368848, -0.921944,
		-0.193508, 0.919208, -0.342945,
		0.973953, 0.137868, -0.180023,
		32.708244, 29.838284, 28.177139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.081726, 30.021622, 27.695524>,  <32.026478, 29.741776, 28.303154>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.081726, 30.021622, 27.695524> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.443558, 29.859505, 27.748388>,  <32.660656, 29.762234, 27.780106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.443558, 29.859505, 27.748388>,  <32.081726, 30.021622, 27.695524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.443558, 29.859505, 27.748388> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090774, -0.119778, -0.988642,
		0.416520, 0.906306, -0.071558,
		0.904583, -0.405294, 0.132159,
		32.714931, 29.737917, 27.788036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.767660, 30.603188, 27.317682>,  <32.081726, 30.021622, 27.695524>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.767660, 30.603188, 27.317682> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.400164, 30.511080, 27.189375>,  <31.179667, 30.455816, 27.112391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.400164, 30.511080, 27.189375>,  <31.767660, 30.603188, 27.317682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.400164, 30.511080, 27.189375> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374898, 0.253646, 0.891692,
		-0.123966, 0.939490, -0.319362,
		-0.918740, -0.230267, -0.320770,
		31.124542, 30.441999, 27.093143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.242502, 31.311972, 27.409973>,  <31.767660, 30.603188, 27.317682>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.242502, 31.311972, 27.409973> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.019533, 30.979887, 27.407871>,  <30.885752, 30.780636, 27.406610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.019533, 30.979887, 27.407871>,  <31.242502, 31.311972, 27.409973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.019533, 30.979887, 27.407871> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393486, 0.258613, 0.882206,
		-0.731058, 0.493831, -0.470834,
		-0.557424, -0.830211, -0.005255,
		30.852306, 30.730824, 27.406296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.439728, 31.467958, 27.420565>,  <31.242502, 31.311972, 27.409973>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.439728, 31.467958, 27.420565> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.499945, 31.094339, 27.550114>,  <30.536076, 30.870169, 27.627842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.499945, 31.094339, 27.550114>,  <30.439728, 31.467958, 27.420565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.499945, 31.094339, 27.550114> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586266, 0.179432, 0.789998,
		-0.796008, -0.308803, -0.520588,
		0.150543, -0.934048, 0.323870,
		30.545107, 30.814125, 27.647274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.827812, 31.301821, 27.611034>,  <30.439728, 31.467958, 27.420565>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.827812, 31.301821, 27.611034> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.038074, 31.004059, 27.775740>,  <30.164232, 30.825401, 27.874563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.038074, 31.004059, 27.775740>,  <29.827812, 31.301821, 27.611034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.038074, 31.004059, 27.775740> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571715, 0.049296, 0.818970,
		-0.629943, -0.665906, -0.399675,
		0.525655, -0.744405, 0.411762,
		30.195770, 30.780737, 27.899269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.384968, 31.003038, 28.049505>,  <29.827812, 31.301821, 27.611034>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.384968, 31.003038, 28.049505> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.717258, 30.823729, 28.181534>,  <29.916632, 30.716143, 28.260752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.717258, 30.823729, 28.181534>,  <29.384968, 31.003038, 28.049505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.717258, 30.823729, 28.181534> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446845, -0.183340, 0.875623,
		-0.332006, -0.874892, -0.352614,
		0.830724, -0.448276, 0.330071,
		29.966476, 30.689247, 28.280556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.115318, 30.408035, 28.316235>,  <29.384968, 31.003038, 28.049505>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.115318, 30.408035, 28.316235> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.478859, 30.492901, 28.459885>,  <29.696983, 30.543821, 28.546076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.478859, 30.492901, 28.459885>,  <29.115318, 30.408035, 28.316235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.478859, 30.492901, 28.459885> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374852, 0.037803, 0.926314,
		0.182958, -0.976502, 0.113889,
		0.908852, 0.212168, 0.359127,
		29.751514, 30.556551, 28.567623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.117050, 30.148657, 29.003496>,  <29.115318, 30.408035, 28.316235>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.117050, 30.148657, 29.003496> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.408054, 30.423006, 28.996460>,  <29.582657, 30.587616, 28.992239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.408054, 30.423006, 28.996460>,  <29.117050, 30.148657, 29.003496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.408054, 30.423006, 28.996460> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372105, 0.415977, 0.829760,
		0.576427, -0.597112, 0.557844,
		0.727509, 0.685872, -0.017592,
		29.626307, 30.628767, 28.991182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.192160, 30.227989, 29.778912>,  <29.117050, 30.148657, 29.003496>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.192160, 30.227989, 29.778912> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.346445, 30.539223, 29.580595>,  <29.439016, 30.725964, 29.461605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.346445, 30.539223, 29.580595>,  <29.192160, 30.227989, 29.778912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.346445, 30.539223, 29.580595> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480310, 0.628155, 0.612147,
		0.787736, 0.002021, 0.616009,
		0.385712, 0.778086, -0.495791,
		29.462158, 30.772648, 29.431858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.669252, 30.608107, 30.203859>,  <29.192160, 30.227989, 29.778912>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.669252, 30.608107, 30.203859> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.529036, 30.867203, 29.933289>,  <29.444906, 31.022661, 29.770947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.529036, 30.867203, 29.933289>,  <29.669252, 30.608107, 30.203859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.529036, 30.867203, 29.933289> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274382, 0.619533, 0.735454,
		0.895453, 0.443405, -0.039442,
		-0.350540, 0.647743, -0.676425,
		29.423874, 31.061525, 29.730360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.386763, 31.052189, 30.665646>,  <29.669252, 30.608107, 30.203859>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.386763, 31.052189, 30.665646> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.303635, 31.237730, 30.321169>,  <29.253757, 31.349054, 30.114483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.303635, 31.237730, 30.321169>,  <29.386763, 31.052189, 30.665646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.303635, 31.237730, 30.321169> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323058, 0.798464, 0.508024,
		0.923279, 0.383792, -0.016086,
		-0.207819, 0.463851, -0.861193,
		29.241289, 31.376886, 30.062811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.646610, 31.720945, 30.647423>,  <29.386763, 31.052189, 30.665646>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.646610, 31.720945, 30.647423> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.329025, 31.728237, 30.404346>,  <29.138474, 31.732613, 30.258501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.329025, 31.728237, 30.404346>,  <29.646610, 31.720945, 30.647423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.329025, 31.728237, 30.404346> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462297, 0.631060, 0.622933,
		0.394845, 0.775520, -0.492611,
		-0.793964, 0.018229, -0.607692,
		29.090836, 31.733706, 30.222038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.584892, 32.386505, 30.454504>,  <29.646610, 31.720945, 30.647423>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.584892, 32.386505, 30.454504> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.218147, 32.228008, 30.435089>,  <28.998100, 32.132912, 30.423441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.218147, 32.228008, 30.435089>,  <29.584892, 32.386505, 30.454504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.218147, 32.228008, 30.435089> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343593, 0.721382, 0.601292,
		-0.203245, 0.567979, -0.797554,
		-0.916862, -0.396243, -0.048536,
		28.943089, 32.109135, 30.420528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.195154, 32.898361, 30.268404>,  <29.584892, 32.386505, 30.454504>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.195154, 32.898361, 30.268404> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.953699, 32.625473, 30.433424>,  <28.808826, 32.461739, 30.532436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.953699, 32.625473, 30.433424>,  <29.195154, 32.898361, 30.268404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.953699, 32.625473, 30.433424> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417074, 0.711224, 0.565871,
		-0.679464, 0.169516, -0.713857,
		-0.603637, -0.682220, 0.412551,
		28.772608, 32.420807, 30.557190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.549110, 33.128502, 30.326969>,  <29.195154, 32.898361, 30.268404>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.549110, 33.128502, 30.326969> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.518085, 32.845371, 30.607817>,  <28.499472, 32.675491, 30.776325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.518085, 32.845371, 30.607817>,  <28.549110, 33.128502, 30.326969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.518085, 32.845371, 30.607817> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438848, 0.656582, 0.613443,
		-0.895207, -0.260544, -0.361553,
		-0.077561, -0.707825, 0.702117,
		28.494818, 32.633022, 30.818451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.266258, 33.684288, 30.587330>,  <28.549110, 33.128502, 30.326969>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.266258, 33.684288, 30.587330> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.261084, 34.063381, 30.459806>,  <28.257978, 34.290836, 30.383291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.261084, 34.063381, 30.459806>,  <28.266258, 33.684288, 30.587330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.261084, 34.063381, 30.459806> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459043, -0.277625, -0.843921,
		-0.888320, -0.157264, -0.431458,
		-0.012935, 0.947730, -0.318811,
		28.257202, 34.347702, 30.364162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.043425, 33.673023, 29.818874>,  <28.266258, 33.684288, 30.587330>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.043425, 33.673023, 29.818874> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.252899, 34.007668, 29.883167>,  <28.378584, 34.208454, 29.921743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.252899, 34.007668, 29.883167>,  <28.043425, 33.673023, 29.818874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.252899, 34.007668, 29.883167> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511849, -0.158171, -0.844389,
		-0.681003, 0.524464, -0.511050,
		0.523685, 0.836612, 0.160732,
		28.410004, 34.258652, 29.931387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.157084, 33.862022, 29.260588>,  <28.043425, 33.673023, 29.818874>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.157084, 33.862022, 29.260588> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.445675, 34.058380, 29.455931>,  <28.618830, 34.176193, 29.573135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.445675, 34.058380, 29.455931>,  <28.157084, 33.862022, 29.260588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.445675, 34.058380, 29.455931> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543781, 0.034956, -0.838499,
		-0.428684, 0.870518, -0.241718,
		0.721479, 0.490893, 0.488356,
		28.662119, 34.205647, 29.602438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.258465, 34.516460, 28.822680>,  <28.157084, 33.862022, 29.260588>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.258465, 34.516460, 28.822680> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.589586, 34.442291, 29.034475>,  <28.788260, 34.397789, 29.161552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.589586, 34.442291, 29.034475>,  <28.258465, 34.516460, 28.822680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.589586, 34.442291, 29.034475> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539250, 0.002631, -0.842141,
		0.154757, 0.982656, 0.102165,
		0.827804, -0.185420, 0.529490,
		28.837927, 34.386665, 29.193323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.791044, 34.914917, 28.476086>,  <28.258465, 34.516460, 28.822680>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.791044, 34.914917, 28.476086> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.013474, 34.666180, 28.696663>,  <29.146931, 34.516937, 28.829010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.013474, 34.666180, 28.696663>,  <28.791044, 34.914917, 28.476086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.013474, 34.666180, 28.696663> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634562, -0.110841, -0.764883,
		0.536761, 0.775257, 0.332963,
		0.556075, -0.621845, 0.551444,
		29.180296, 34.479626, 28.862097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.429131, 35.004581, 28.238880>,  <28.791044, 34.914917, 28.476086>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.429131, 35.004581, 28.238880> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.474566, 34.651764, 28.421789>,  <29.501827, 34.440075, 28.531534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.474566, 34.651764, 28.421789>,  <29.429131, 35.004581, 28.238880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.474566, 34.651764, 28.421789> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657746, -0.278188, -0.699987,
		0.744626, 0.380282, 0.548560,
		0.113590, -0.882042, 0.457274,
		29.508642, 34.387150, 28.558971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.156343, 34.921036, 28.420370>,  <29.429131, 35.004581, 28.238880>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.156343, 34.921036, 28.420370> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.004936, 34.551693, 28.446093>,  <29.914091, 34.330086, 28.461527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.004936, 34.551693, 28.446093>,  <30.156343, 34.921036, 28.420370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.004936, 34.551693, 28.446093> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773291, -0.353654, -0.526261,
		0.508670, -0.149472, 0.847888,
		-0.378520, -0.923357, 0.064308,
		29.891380, 34.274685, 28.465385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.764313, 34.434109, 28.642752>,  <30.156343, 34.921036, 28.420370>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.764313, 34.434109, 28.642752> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.470736, 34.242882, 28.449762>,  <30.294590, 34.128147, 28.333969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.470736, 34.242882, 28.449762>,  <30.764313, 34.434109, 28.642752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.470736, 34.242882, 28.449762> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650882, -0.292018, -0.700770,
		0.194123, -0.828358, 0.525489,
		-0.733941, -0.478067, -0.482476,
		30.250553, 34.099461, 28.305019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.078550, 33.749748, 28.477417>,  <30.764313, 34.434109, 28.642752>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.078550, 33.749748, 28.477417> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.774490, 33.786861, 28.220181>,  <30.592054, 33.809128, 28.065840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.774490, 33.786861, 28.220181>,  <31.078550, 33.749748, 28.477417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.774490, 33.786861, 28.220181> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541563, -0.456390, -0.705987,
		-0.359000, -0.884930, 0.296680,
		-0.760150, 0.092778, -0.643090,
		30.546446, 33.814693, 28.027254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.092241, 33.106651, 28.131432>,  <31.078550, 33.749748, 28.477417>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.092241, 33.106651, 28.131432> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.900087, 33.363461, 27.892424>,  <30.784796, 33.517548, 27.749018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.900087, 33.363461, 27.892424>,  <31.092241, 33.106651, 28.131432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.900087, 33.363461, 27.892424> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403678, -0.442975, -0.800511,
		-0.778637, -0.625759, -0.046374,
		-0.480384, 0.642028, -0.597521,
		30.755972, 33.556068, 27.713167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.828091, 32.734787, 27.532305>,  <31.092241, 33.106651, 28.131432>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.828091, 32.734787, 27.532305> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.797937, 33.116100, 27.415291>,  <30.779844, 33.344887, 27.345083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.797937, 33.116100, 27.415291>,  <30.828091, 32.734787, 27.532305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.797937, 33.116100, 27.415291> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228986, -0.268978, -0.935530,
		-0.970506, -0.137511, -0.198011,
		-0.075385, 0.953279, -0.292533,
		30.775322, 33.402084, 27.327530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.522583, 32.699612, 26.903414>,  <30.828091, 32.734787, 27.532305>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.522583, 32.699612, 26.903414> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.709089, 33.053139, 26.888153>,  <30.820993, 33.265255, 26.878996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.709089, 33.053139, 26.888153>,  <30.522583, 32.699612, 26.903414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.709089, 33.053139, 26.888153> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268175, -0.182314, -0.945962,
		-0.843017, 0.430838, -0.322025,
		0.466266, 0.883821, -0.038154,
		30.848969, 33.318287, 26.876707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.314976, 32.986210, 26.174463>,  <30.522583, 32.699612, 26.903414>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.314976, 32.986210, 26.174463> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.631872, 33.190289, 26.308363>,  <30.822010, 33.312737, 26.388702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.631872, 33.190289, 26.308363>,  <30.314976, 32.986210, 26.174463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.631872, 33.190289, 26.308363> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401487, -0.022709, -0.915583,
		-0.459523, 0.859760, -0.222827,
		0.792242, 0.510193, 0.334747,
		30.869545, 33.343346, 26.408787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.423241, 33.480133, 25.639889>,  <30.314976, 32.986210, 26.174463>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.423241, 33.480133, 25.639889> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.780062, 33.481865, 25.820652>,  <30.994154, 33.482903, 25.929110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.780062, 33.481865, 25.820652>,  <30.423241, 33.480133, 25.639889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.780062, 33.481865, 25.820652> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449028, 0.104601, -0.887374,
		-0.051110, 0.994505, 0.091366,
		0.892054, 0.004328, 0.451907,
		31.047678, 33.483162, 25.956224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.825624, 34.043846, 25.400444>,  <30.423241, 33.480133, 25.639889>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.825624, 34.043846, 25.400444> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.091467, 33.772697, 25.526163>,  <31.250973, 33.610008, 25.601595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.091467, 33.772697, 25.526163>,  <30.825624, 34.043846, 25.400444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.091467, 33.772697, 25.526163> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410547, -0.020163, -0.911617,
		0.624300, 0.734900, 0.264900,
		0.664606, -0.677876, 0.314298,
		31.290848, 33.569336, 25.620453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.562710, 34.177307, 25.028061>,  <30.825624, 34.043846, 25.400444>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.562710, 34.177307, 25.028061> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.561159, 33.797958, 25.154915>,  <31.560228, 33.570351, 25.231028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.561159, 33.797958, 25.154915>,  <31.562710, 34.177307, 25.028061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.561159, 33.797958, 25.154915> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616659, -0.251925, -0.745832,
		0.787220, 0.192672, 0.585800,
		-0.003877, -0.948373, 0.317133,
		31.559996, 33.513447, 25.250055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.329750, 33.974808, 25.032356>,  <31.562710, 34.177307, 25.028061>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.329750, 33.974808, 25.032356> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.122944, 33.632710, 25.018242>,  <31.998859, 33.427448, 25.009773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.122944, 33.632710, 25.018242>,  <32.329750, 33.974808, 25.032356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.122944, 33.632710, 25.018242> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296242, -0.140106, -0.944781,
		0.803078, -0.498921, 0.325797,
		-0.517017, -0.855247, -0.035286,
		31.967838, 33.376137, 25.007656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.761600, 33.487362, 24.664326>,  <32.329750, 33.974808, 25.032356>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.761600, 33.487362, 24.664326> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.395065, 33.339417, 24.602968>,  <32.175144, 33.250648, 24.566153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.395065, 33.339417, 24.602968>,  <32.761600, 33.487362, 24.664326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.395065, 33.339417, 24.602968> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173656, -0.021901, -0.984563,
		0.360797, -0.928827, 0.084298,
		-0.916335, -0.369866, -0.153395,
		32.120167, 33.228458, 24.556950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.822311, 32.917236, 24.228695>,  <32.761600, 33.487362, 24.664326>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.822311, 32.917236, 24.228695> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.435741, 33.003002, 24.172045>,  <32.203800, 33.054462, 24.138054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.435741, 33.003002, 24.172045>,  <32.822311, 32.917236, 24.228695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.435741, 33.003002, 24.172045> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115483, -0.129958, -0.984771,
		-0.229554, -0.968059, 0.100833,
		-0.966421, 0.214414, -0.141626,
		32.145817, 33.067326, 24.129557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.609787, 32.469990, 23.672607>,  <32.822311, 32.917236, 24.228695>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.609787, 32.469990, 23.672607> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.342899, 32.767658, 23.685438>,  <32.182766, 32.946259, 23.693136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.342899, 32.767658, 23.685438>,  <32.609787, 32.469990, 23.672607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.342899, 32.767658, 23.685438> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037982, 0.076998, -0.996307,
		-0.743894, -0.663536, -0.079639,
		-0.667217, 0.744172, 0.032076,
		32.142735, 32.990910, 23.695061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.036987, 32.320339, 23.197500>,  <32.609787, 32.469990, 23.672607>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.036987, 32.320339, 23.197500> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.970343, 32.708851, 23.265451>,  <31.930355, 32.941959, 23.306221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.970343, 32.708851, 23.265451>,  <32.036987, 32.320339, 23.197500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.970343, 32.708851, 23.265451> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152384, 0.144852, -0.977649,
		-0.974176, -0.188775, 0.123873,
		-0.166613, 0.971278, 0.169877,
		31.920359, 33.000233, 23.316414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.494429, 32.550343, 22.740660>,  <32.036987, 32.320339, 23.197500>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.494429, 32.550343, 22.740660> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.673923, 32.895348, 22.834211>,  <31.781620, 33.102352, 22.890343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.673923, 32.895348, 22.834211>,  <31.494429, 32.550343, 22.740660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.673923, 32.895348, 22.834211> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094284, 0.305939, -0.947371,
		-0.888676, 0.403071, 0.218608,
		0.448738, 0.862517, 0.233878,
		31.808544, 33.154102, 22.904375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.054798, 33.171780, 22.656324>,  <31.494429, 32.550343, 22.740660>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.054798, 33.171780, 22.656324> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.437775, 33.265907, 22.589476>,  <31.667561, 33.322384, 22.549366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.437775, 33.265907, 22.589476>,  <31.054798, 33.171780, 22.656324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.437775, 33.265907, 22.589476> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205993, 0.151544, -0.966748,
		-0.202167, 0.960031, 0.193568,
		0.957442, 0.235318, -0.167123,
		31.725008, 33.336502, 22.539339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.107080, 33.623199, 22.151722>,  <31.054798, 33.171780, 22.656324>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.107080, 33.623199, 22.151722> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.501266, 33.569405, 22.110210>,  <31.737778, 33.537128, 22.085304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.501266, 33.569405, 22.110210>,  <31.107080, 33.623199, 22.151722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.501266, 33.569405, 22.110210> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066740, 0.255261, -0.964566,
		0.156216, 0.957473, 0.242575,
		0.985466, -0.134491, -0.103777,
		31.796906, 33.529057, 22.079077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.287163, 34.216736, 21.800068>,  <31.107080, 33.623199, 22.151722>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.287163, 34.216736, 21.800068> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.604250, 33.979156, 21.745193>,  <31.794502, 33.836609, 21.712269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.604250, 33.979156, 21.745193>,  <31.287163, 34.216736, 21.800068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.604250, 33.979156, 21.745193> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147460, 0.405205, -0.902255,
		0.591484, 0.695004, 0.408798,
		0.792718, -0.593951, -0.137187,
		31.842066, 33.800972, 21.704037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.767748, 34.689880, 21.611309>,  <31.287163, 34.216736, 21.800068>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.767748, 34.689880, 21.611309> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.879328, 34.333397, 21.468235>,  <31.946276, 34.119507, 21.382391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.879328, 34.333397, 21.468235>,  <31.767748, 34.689880, 21.611309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.879328, 34.333397, 21.468235> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103099, 0.398108, -0.911527,
		0.954756, 0.217392, 0.202934,
		0.278948, -0.891207, -0.357683,
		31.963013, 34.066036, 21.360929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.395935, 34.800011, 21.032614>,  <31.767748, 34.689880, 21.611309>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.395935, 34.800011, 21.032614> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.263924, 34.424324, 20.994753>,  <32.184715, 34.198914, 20.972036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.263924, 34.424324, 20.994753>,  <32.395935, 34.800011, 21.032614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.263924, 34.424324, 20.994753> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113247, 0.060153, -0.991744,
		0.937152, -0.338027, 0.086511,
		-0.330033, -0.939212, -0.094653,
		32.164913, 34.142559, 20.966356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.960831, 34.397572, 20.800016>,  <32.395935, 34.800011, 21.032614>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.960831, 34.397572, 20.800016> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.616676, 34.235867, 20.675882>,  <32.410183, 34.138844, 20.601402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.616676, 34.235867, 20.675882>,  <32.960831, 34.397572, 20.800016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.616676, 34.235867, 20.675882> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216497, 0.261334, -0.940656,
		0.461370, -0.876515, -0.137328,
		-0.860387, -0.404259, -0.310334,
		32.358559, 34.114590, 20.582783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.700230, 34.185638, 20.851906>,  <32.960831, 34.397572, 20.800016>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.700230, 34.185638, 20.851906> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.993935, 34.452888, 20.900003>,  <34.170158, 34.613239, 20.928862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.993935, 34.452888, 20.900003>,  <33.700230, 34.185638, 20.851906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.993935, 34.452888, 20.900003> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291510, 0.150350, 0.944678,
		0.613089, -0.728696, 0.305163,
		0.734264, 0.668129, 0.120244,
		34.214214, 34.653328, 20.936077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.890873, 33.996342, 21.440805>,  <33.700230, 34.185638, 20.851906>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.890873, 33.996342, 21.440805> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.059402, 34.358807, 21.426119>,  <34.160522, 34.576286, 21.417307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.059402, 34.358807, 21.426119>,  <33.890873, 33.996342, 21.440805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.059402, 34.358807, 21.426119> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140538, 0.105231, 0.984467,
		0.895953, -0.409623, 0.171687,
		0.421327, 0.906166, -0.036714,
		34.185802, 34.630657, 21.415104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.322586, 34.014435, 21.987499>,  <33.890873, 33.996342, 21.440805>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.322586, 34.014435, 21.987499> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.261402, 34.397770, 21.891012>,  <34.224693, 34.627773, 21.833120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.261402, 34.397770, 21.891012>,  <34.322586, 34.014435, 21.987499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.261402, 34.397770, 21.891012> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085640, 0.256028, 0.962868,
		0.984515, 0.126622, -0.121234,
		-0.152960, 0.958340, -0.241220,
		34.215515, 34.685272, 21.818645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.614159, 34.283867, 22.535261>,  <34.322586, 34.014435, 21.987499>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.614159, 34.283867, 22.535261> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.394840, 34.580742, 22.381100>,  <34.263248, 34.758865, 22.288603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.394840, 34.580742, 22.381100>,  <34.614159, 34.283867, 22.535261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.394840, 34.580742, 22.381100> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175656, 0.348362, 0.920755,
		0.817630, 0.572543, -0.060636,
		-0.548294, 0.742185, -0.385402,
		34.230350, 34.803398, 22.265480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.946461, 34.916039, 22.789242>,  <34.614159, 34.283867, 22.535261>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.946461, 34.916039, 22.789242> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.567009, 35.007225, 22.701487>,  <34.339336, 35.061935, 22.648832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.567009, 35.007225, 22.701487>,  <34.946461, 34.916039, 22.789242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.567009, 35.007225, 22.701487> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159578, 0.254011, 0.953946,
		0.273192, 0.939952, -0.204584,
		-0.948631, 0.227964, -0.219390,
		34.282421, 35.075615, 22.635670>
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
