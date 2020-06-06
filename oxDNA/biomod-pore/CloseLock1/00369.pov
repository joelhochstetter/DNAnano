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
	<24.517923, 34.985435, 34.385990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.493465, 35.093922, 34.770222>,  <24.478790, 35.159012, 35.000759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.493465, 35.093922, 34.770222>,  <24.517923, 34.985435, 34.385990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.493465, 35.093922, 34.770222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899528, 0.402097, -0.170786,
		-0.432564, -0.874507, 0.219377,
		-0.061143, 0.271212, 0.960576,
		24.475122, 35.175285, 35.058395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.616009, 34.666882, 35.110577>,  <24.517923, 34.985435, 34.385990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.616009, 34.666882, 35.110577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.958359, 34.747456, 34.920040>,  <25.163769, 34.795799, 34.805717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.958359, 34.747456, 34.920040>,  <24.616009, 34.666882, 35.110577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.958359, 34.747456, 34.920040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405684, -0.832745, 0.376770,
		-0.320776, -0.515712, -0.794446,
		0.855876, 0.201435, -0.476341,
		25.215122, 34.807884, 34.777138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.975956, 34.078495, 34.613873>,  <24.616009, 34.666882, 35.110577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.975956, 34.078495, 34.613873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.240341, 34.326988, 34.782253>,  <25.398972, 34.476082, 34.883282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.240341, 34.326988, 34.782253>,  <24.975956, 34.078495, 34.613873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.240341, 34.326988, 34.782253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365932, -0.756564, 0.541946,
		0.655151, -0.204165, -0.727388,
		0.660962, 0.621231, 0.420953,
		25.438629, 34.513359, 34.908539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.391760, 33.441868, 34.411957>,  <24.975956, 34.078495, 34.613873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.391760, 33.441868, 34.411957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.777138, 33.431969, 34.305256>,  <26.008366, 33.426029, 34.241234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.777138, 33.431969, 34.305256>,  <25.391760, 33.441868, 34.411957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.777138, 33.431969, 34.305256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187681, 0.648192, -0.737986,
		0.191174, 0.761075, 0.619853,
		0.963446, -0.024749, -0.266756,
		26.066172, 33.424545, 34.225227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.680954, 34.184982, 34.293648>,  <25.391760, 33.441868, 34.411957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.680954, 34.184982, 34.293648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.912861, 33.928635, 34.092388>,  <26.052004, 33.774826, 33.971634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.912861, 33.928635, 34.092388>,  <25.680954, 34.184982, 34.293648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.912861, 33.928635, 34.092388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070057, 0.576029, -0.814422,
		0.811766, 0.507423, 0.289064,
		0.579765, -0.640869, -0.503149,
		26.086790, 33.736374, 33.941444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.977200, 34.560471, 33.766090>,  <25.680954, 34.184982, 34.293648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.977200, 34.560471, 33.766090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.080984, 34.201569, 33.623196>,  <26.143255, 33.986229, 33.537460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.080984, 34.201569, 33.623196>,  <25.977200, 34.560471, 33.766090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.080984, 34.201569, 33.623196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029137, 0.362462, -0.931543,
		0.965313, 0.252110, 0.067902,
		0.259463, -0.897253, -0.357235,
		26.158823, 33.932392, 33.516026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.584700, 34.655453, 33.324173>,  <25.977200, 34.560471, 33.766090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.584700, 34.655453, 33.324173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.378326, 34.335369, 33.201881>,  <26.254501, 34.143318, 33.128506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.378326, 34.335369, 33.201881>,  <26.584700, 34.655453, 33.324173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.378326, 34.335369, 33.201881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096948, 0.300064, -0.948980,
		0.851125, -0.519252, -0.077234,
		-0.515934, -0.800212, -0.305732,
		26.223545, 34.095306, 33.110161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.970108, 34.456970, 32.709072>,  <26.584700, 34.655453, 33.324173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.970108, 34.456970, 32.709072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.609728, 34.287468, 32.671719>,  <26.393499, 34.185768, 32.649307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.609728, 34.287468, 32.671719>,  <26.970108, 34.456970, 32.709072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.609728, 34.287468, 32.671719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062547, 0.086137, -0.994318,
		0.429392, -0.901672, -0.051100,
		-0.900950, -0.423756, -0.093383,
		26.339443, 34.160343, 32.643703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.048731, 33.952946, 32.188915>,  <26.970108, 34.456970, 32.709072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.048731, 33.952946, 32.188915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.659544, 34.039429, 32.221397>,  <26.426033, 34.091316, 32.240887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.659544, 34.039429, 32.221397>,  <27.048731, 33.952946, 32.188915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.659544, 34.039429, 32.221397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082882, 0.001302, -0.996558,
		-0.215565, -0.976347, 0.016653,
		-0.972966, 0.216204, 0.081202,
		26.367655, 34.104290, 32.245758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.755569, 33.286373, 31.926258>,  <27.048731, 33.952946, 32.188915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.755569, 33.286373, 31.926258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.500690, 33.590336, 31.874840>,  <26.347763, 33.772713, 31.843988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.500690, 33.590336, 31.874840>,  <26.755569, 33.286373, 31.926258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.500690, 33.590336, 31.874840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019563, -0.150789, -0.988372,
		-0.770452, -0.632303, 0.081217,
		-0.637197, 0.759905, -0.128546,
		26.309532, 33.818306, 31.836277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.377983, 33.115379, 31.409462>,  <26.755569, 33.286373, 31.926258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.377983, 33.115379, 31.409462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.290825, 33.505753, 31.412973>,  <26.238529, 33.739975, 31.415081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.290825, 33.505753, 31.412973>,  <26.377983, 33.115379, 31.409462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.290825, 33.505753, 31.412973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034446, 0.016682, -0.999268,
		-0.975364, -0.217434, -0.037252,
		-0.217896, 0.975933, 0.008781,
		26.225456, 33.798531, 31.415607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.886530, 33.223499, 30.802528>,  <26.377983, 33.115379, 31.409462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.886530, 33.223499, 30.802528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.995819, 33.591927, 30.913511>,  <26.061394, 33.812984, 30.980101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.995819, 33.591927, 30.913511>,  <25.886530, 33.223499, 30.802528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.995819, 33.591927, 30.913511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190479, 0.230919, -0.954146,
		-0.942903, 0.313546, -0.112351,
		0.273225, 0.921068, 0.277458,
		26.077787, 33.868248, 30.996748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.589565, 33.577160, 30.362919>,  <25.886530, 33.223499, 30.802528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.589565, 33.577160, 30.362919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.879629, 33.812923, 30.505322>,  <26.053667, 33.954380, 30.590763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.879629, 33.812923, 30.505322>,  <25.589565, 33.577160, 30.362919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.879629, 33.812923, 30.505322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174419, 0.342926, -0.923027,
		-0.666125, 0.731436, 0.145872,
		0.725159, 0.589409, 0.356008,
		26.097178, 33.989746, 30.612123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.523294, 34.131481, 29.831387>,  <25.589565, 33.577160, 30.362919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.523294, 34.131481, 29.831387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.872269, 34.174622, 30.022060>,  <26.081654, 34.200504, 30.136465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.872269, 34.174622, 30.022060>,  <25.523294, 34.131481, 29.831387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.872269, 34.174622, 30.022060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425416, 0.312553, -0.849313,
		-0.240585, 0.943758, 0.226802,
		0.872433, 0.107846, 0.476685,
		26.133999, 34.206974, 30.165066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.776327, 34.788582, 29.767809>,  <25.523294, 34.131481, 29.831387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.776327, 34.788582, 29.767809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.100592, 34.562187, 29.827797>,  <26.295151, 34.426350, 29.863789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.100592, 34.562187, 29.827797>,  <25.776327, 34.788582, 29.767809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.100592, 34.562187, 29.827797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441228, 0.422142, -0.791905,
		0.384897, 0.708138, 0.591942,
		0.810662, -0.565983, 0.149969,
		26.343790, 34.392391, 29.872787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.378220, 35.250648, 29.667240>,  <25.776327, 34.788582, 29.767809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.378220, 35.250648, 29.667240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.510077, 34.875061, 29.627901>,  <26.589191, 34.649708, 29.604298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.510077, 34.875061, 29.627901>,  <26.378220, 35.250648, 29.667240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.510077, 34.875061, 29.627901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512532, 0.265467, -0.816601,
		0.792872, 0.218780, 0.568762,
		0.329644, -0.938969, -0.098349,
		26.608969, 34.593369, 29.598396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.072119, 35.268761, 29.329916>,  <26.378220, 35.250648, 29.667240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.072119, 35.268761, 29.329916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.959152, 34.886475, 29.296818>,  <26.891373, 34.657104, 29.276958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.959152, 34.886475, 29.296818>,  <27.072119, 35.268761, 29.329916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.959152, 34.886475, 29.296818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487162, -0.068581, -0.870615,
		0.826386, -0.286186, 0.484957,
		-0.282416, -0.955717, -0.082744,
		26.874428, 34.599758, 29.271994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.709099, 34.855759, 29.221642>,  <27.072119, 35.268761, 29.329916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.709099, 34.855759, 29.221642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.373871, 34.689133, 29.080721>,  <27.172735, 34.589157, 28.996168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.373871, 34.689133, 29.080721>,  <27.709099, 34.855759, 29.221642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.373871, 34.689133, 29.080721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360290, 0.062316, -0.930756,
		0.409673, -0.906968, 0.097859,
		-0.838069, -0.416563, -0.352301,
		27.122450, 34.564163, 28.975031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.940271, 34.348793, 28.812466>,  <27.709099, 34.855759, 29.221642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.940271, 34.348793, 28.812466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.563898, 34.395748, 28.685427>,  <27.338074, 34.423920, 28.609203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.563898, 34.395748, 28.685427>,  <27.940271, 34.348793, 28.812466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.563898, 34.395748, 28.685427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322196, 0.022010, -0.946417,
		-0.104107, -0.992842, -0.058532,
		-0.940931, 0.117388, -0.317599,
		27.281618, 34.430965, 28.590147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.929028, 33.837555, 28.339600>,  <27.940271, 34.348793, 28.812466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.929028, 33.837555, 28.339600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.626822, 34.087837, 28.261950>,  <27.445498, 34.238007, 28.215359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.626822, 34.087837, 28.261950>,  <27.929028, 33.837555, 28.339600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.626822, 34.087837, 28.261950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261763, 0.016679, -0.964988,
		-0.600564, -0.779878, -0.176388,
		-0.755515, 0.625709, -0.194127,
		27.400167, 34.275551, 28.203711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.466148, 33.542660, 27.776390>,  <27.929028, 33.837555, 28.339600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.466148, 33.542660, 27.776390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.409027, 33.938545, 27.779766>,  <27.374754, 34.176075, 27.781792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.409027, 33.938545, 27.779766>,  <27.466148, 33.542660, 27.776390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.409027, 33.938545, 27.779766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084797, 0.020730, -0.996183,
		-0.986112, -0.141542, -0.086885,
		-0.142803, 0.989715, 0.008440,
		27.366186, 34.235458, 27.782297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.221930, 33.659214, 27.186939>,  <27.466148, 33.542660, 27.776390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.221930, 33.659214, 27.186939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.337536, 34.030334, 27.281301>,  <27.406900, 34.253006, 27.337919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.337536, 34.030334, 27.281301>,  <27.221930, 33.659214, 27.186939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.337536, 34.030334, 27.281301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403247, 0.105506, -0.908989,
		-0.868252, 0.357842, -0.343640,
		0.289018, 0.927803, 0.235904,
		27.424242, 34.308674, 27.352074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.040714, 34.050125, 26.582348>,  <27.221930, 33.659214, 27.186939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.040714, 34.050125, 26.582348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.322336, 34.256981, 26.777025>,  <27.491310, 34.381096, 26.893831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.322336, 34.256981, 26.777025>,  <27.040714, 34.050125, 26.582348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.322336, 34.256981, 26.777025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453233, 0.200388, -0.868576,
		-0.546706, 0.832110, -0.093302,
		0.704054, 0.517143, 0.486693,
		27.533552, 34.412125, 26.923033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.160196, 34.646557, 26.112576>,  <27.040714, 34.050125, 26.582348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.160196, 34.646557, 26.112576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.478443, 34.614353, 26.352747>,  <27.669392, 34.595032, 26.496849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.478443, 34.614353, 26.352747>,  <27.160196, 34.646557, 26.112576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.478443, 34.614353, 26.352747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605389, 0.142243, -0.783116,
		-0.022361, 0.986552, 0.161908,
		0.795616, -0.080506, 0.600429,
		27.717129, 34.590202, 26.532875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.733950, 35.117020, 25.975470>,  <27.160196, 34.646557, 26.112576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.733950, 35.117020, 25.975470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.906538, 34.805740, 26.158005>,  <28.010090, 34.618973, 26.267527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.906538, 34.805740, 26.158005>,  <27.733950, 35.117020, 25.975470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.906538, 34.805740, 26.158005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644232, -0.088309, -0.759715,
		0.631505, 0.621782, 0.463236,
		0.431469, -0.778196, 0.456340,
		28.035978, 34.572281, 26.294907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.454626, 35.272770, 26.068802>,  <27.733950, 35.117020, 25.975470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.454626, 35.272770, 26.068802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.369493, 34.885075, 26.019356>,  <28.318413, 34.652458, 25.989687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.369493, 34.885075, 26.019356>,  <28.454626, 35.272770, 26.068802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.369493, 34.885075, 26.019356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714739, -0.068172, -0.696061,
		0.666221, -0.236499, 0.707261,
		-0.212833, -0.969237, -0.123617,
		28.305643, 34.594303, 25.982271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.101505, 34.993877, 25.943281>,  <28.454626, 35.272770, 26.068802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.101505, 34.993877, 25.943281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.834558, 34.714031, 25.841175>,  <28.674391, 34.546124, 25.779911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.834558, 34.714031, 25.841175>,  <29.101505, 34.993877, 25.943281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.834558, 34.714031, 25.841175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621443, -0.334270, -0.708570,
		0.410398, -0.631510, 0.657851,
		-0.667369, -0.699614, -0.255264,
		28.634348, 34.504147, 25.764595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.279158, 34.178558, 25.911638>,  <29.101505, 34.993877, 25.943281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.279158, 34.178558, 25.911638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.011429, 34.281521, 25.632854>,  <28.850792, 34.343296, 25.465584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.011429, 34.281521, 25.632854>,  <29.279158, 34.178558, 25.911638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.011429, 34.281521, 25.632854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601299, -0.363325, -0.711642,
		-0.436402, -0.895398, 0.088404,
		-0.669322, 0.257405, -0.696958,
		28.810633, 34.358742, 25.423767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.154514, 33.634220, 25.404551>,  <29.279158, 34.178558, 25.911638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.154514, 33.634220, 25.404551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.113716, 33.997810, 25.242882>,  <29.089237, 34.215965, 25.145880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.113716, 33.997810, 25.242882>,  <29.154514, 33.634220, 25.404551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.113716, 33.997810, 25.242882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823259, -0.150947, -0.547230,
		-0.558429, -0.388554, -0.732928,
		-0.101995, 0.908978, -0.404174,
		29.083118, 34.270504, 25.121630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.695427, 33.273785, 25.826366>,  <29.154514, 33.634220, 25.404551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.695427, 33.273785, 25.826366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.810259, 33.015995, 25.542892>,  <28.879158, 32.861320, 25.372808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.810259, 33.015995, 25.542892>,  <28.695427, 33.273785, 25.826366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.810259, 33.015995, 25.542892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392816, -0.753964, 0.526530,
		-0.873659, 0.127227, -0.469609,
		0.287080, -0.644478, -0.708685,
		28.896383, 32.822651, 25.330286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.060127, 32.921272, 25.552149>,  <28.695427, 33.273785, 25.826366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.060127, 32.921272, 25.552149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.406656, 32.721966, 25.538176>,  <28.614573, 32.602383, 25.529791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.406656, 32.721966, 25.538176>,  <28.060127, 32.921272, 25.552149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.406656, 32.721966, 25.538176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423402, -0.769662, 0.477862,
		-0.264988, -0.399191, -0.877740,
		0.866321, -0.498265, -0.034933,
		28.666553, 32.572487, 25.527695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.775030, 32.286354, 25.134081>,  <28.060127, 32.921272, 25.552149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.775030, 32.286354, 25.134081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.060827, 32.054764, 24.976961>,  <28.232306, 31.915810, 24.882690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.060827, 32.054764, 24.976961>,  <27.775030, 32.286354, 25.134081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.060827, 32.054764, 24.976961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447014, -0.054122, 0.892888,
		-0.538217, -0.813549, 0.220139,
		0.714494, -0.578973, -0.392797,
		28.275175, 31.881073, 24.859121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.746506, 31.510599, 25.249878>,  <27.775030, 32.286354, 25.134081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.746506, 31.510599, 25.249878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.047472, 31.774029, 25.244967>,  <28.228052, 31.932087, 25.242020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.047472, 31.774029, 25.244967>,  <27.746506, 31.510599, 25.249878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.047472, 31.774029, 25.244967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032791, -0.018832, 0.999285,
		0.657874, -0.752278, -0.035765,
		0.752414, 0.658576, -0.012279,
		28.273195, 31.971601, 25.241283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.296062, 31.161879, 25.573193>,  <27.746506, 31.510599, 25.249878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.296062, 31.161879, 25.573193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.284628, 31.560902, 25.598675>,  <28.277767, 31.800316, 25.613964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.284628, 31.560902, 25.598675>,  <28.296062, 31.161879, 25.573193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.284628, 31.560902, 25.598675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160781, -0.067490, 0.984680,
		0.986576, 0.017906, 0.162318,
		-0.028587, 0.997559, 0.063705,
		28.276052, 31.860170, 25.617786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.890291, 31.560431, 25.997992>,  <28.296062, 31.161879, 25.573193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.890291, 31.560431, 25.997992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.546207, 31.764353, 25.993294>,  <28.339758, 31.886707, 25.990475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.546207, 31.764353, 25.993294>,  <28.890291, 31.560431, 25.997992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.546207, 31.764353, 25.993294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083894, -0.118761, 0.989372,
		0.502994, 0.852052, 0.144929,
		-0.860209, 0.509807, -0.011746,
		28.288145, 31.917295, 25.989771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.944576, 32.105843, 26.465818>,  <28.890291, 31.560431, 25.997992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.944576, 32.105843, 26.465818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.583275, 31.942545, 26.412952>,  <28.366495, 31.844564, 26.381233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.583275, 31.942545, 26.412952>,  <28.944576, 32.105843, 26.465818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.583275, 31.942545, 26.412952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001404, -0.310812, 0.950470,
		-0.429107, 0.858329, 0.281315,
		-0.903253, -0.408248, -0.132167,
		28.312300, 31.820070, 26.373302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.325237, 32.391762, 26.903685>,  <28.944576, 32.105843, 26.465818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.325237, 32.391762, 26.903685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.311584, 32.005074, 26.802269>,  <28.303392, 31.773060, 26.741421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.311584, 32.005074, 26.802269>,  <28.325237, 32.391762, 26.903685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.311584, 32.005074, 26.802269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121798, -0.255819, 0.959022,
		-0.991968, 0.001853, 0.126476,
		-0.034132, -0.966723, -0.253538,
		28.301344, 31.715057, 26.726208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.781101, 32.143761, 27.264862>,  <28.325237, 32.391762, 26.903685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.781101, 32.143761, 27.264862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.057793, 31.860449, 27.208498>,  <28.223808, 31.690462, 27.174681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.057793, 31.860449, 27.208498>,  <27.781101, 32.143761, 27.264862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.057793, 31.860449, 27.208498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123819, -0.075910, 0.989397,
		-0.711461, -0.701843, 0.035188,
		0.691731, -0.708275, -0.140908,
		28.265312, 31.647966, 27.166225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.758965, 31.769932, 27.898954>,  <27.781101, 32.143761, 27.264862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.758965, 31.769932, 27.898954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.100727, 31.631254, 27.744143>,  <28.305784, 31.548048, 27.651255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.100727, 31.631254, 27.744143>,  <27.758965, 31.769932, 27.898954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.100727, 31.631254, 27.744143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387173, -0.071974, 0.919194,
		-0.346534, -0.935213, 0.072735,
		0.854407, -0.346693, -0.387031,
		28.357050, 31.527246, 27.628033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.807199, 31.125319, 28.180483>,  <27.758965, 31.769932, 27.898954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.807199, 31.125319, 28.180483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.177317, 31.227766, 28.068598>,  <28.399387, 31.289234, 28.001467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.177317, 31.227766, 28.068598>,  <27.807199, 31.125319, 28.180483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.177317, 31.227766, 28.068598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308253, -0.078215, 0.948083,
		0.220944, -0.963476, -0.151321,
		0.925291, 0.256119, -0.279714,
		28.454905, 31.304602, 27.984684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.248484, 30.588215, 28.491217>,  <27.807199, 31.125319, 28.180483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.248484, 30.588215, 28.491217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.472668, 30.912611, 28.424068>,  <28.607178, 31.107248, 28.383780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.472668, 30.912611, 28.424068>,  <28.248484, 30.588215, 28.491217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.472668, 30.912611, 28.424068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343454, -0.043156, 0.938177,
		0.753607, -0.583468, -0.302725,
		0.560461, 0.810989, -0.167872,
		28.640806, 31.155907, 28.373707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.779959, 30.447598, 28.834167>,  <28.248484, 30.588215, 28.491217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.779959, 30.447598, 28.834167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.782551, 30.843216, 28.775185>,  <28.784105, 31.080587, 28.739796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.782551, 30.843216, 28.775185>,  <28.779959, 30.447598, 28.834167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.782551, 30.843216, 28.775185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236377, 0.141765, 0.961264,
		0.971640, -0.041082, -0.232870,
		0.006478, 0.989047, -0.147455,
		28.784494, 31.139931, 28.730947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.317139, 30.618280, 29.233419>,  <28.779959, 30.447598, 28.834167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.317139, 30.618280, 29.233419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.115961, 30.947195, 29.126915>,  <28.995255, 31.144543, 29.063011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.115961, 30.947195, 29.126915>,  <29.317139, 30.618280, 29.233419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.115961, 30.947195, 29.126915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005808, 0.304839, 0.952386,
		0.864300, 0.480543, -0.148541,
		-0.502944, 0.822284, -0.266263,
		28.965078, 31.193880, 29.047035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.589724, 31.147976, 29.580391>,  <29.317139, 30.618280, 29.233419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.589724, 31.147976, 29.580391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.212137, 31.251600, 29.498596>,  <28.985584, 31.313774, 29.449520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.212137, 31.251600, 29.498596>,  <29.589724, 31.147976, 29.580391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.212137, 31.251600, 29.498596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094288, 0.382075, 0.919308,
		0.316285, 0.887077, -0.336240,
		-0.943967, 0.259060, -0.204486,
		28.928947, 31.329319, 29.437250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.684219, 31.778816, 29.699665>,  <29.589724, 31.147976, 29.580391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.684219, 31.778816, 29.699665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.292347, 31.704416, 29.729679>,  <29.057224, 31.659777, 29.747686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.292347, 31.704416, 29.729679>,  <29.684219, 31.778816, 29.699665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.292347, 31.704416, 29.729679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017455, 0.451762, 0.891968,
		-0.199804, 0.872534, -0.445829,
		-0.979680, -0.186001, 0.075033,
		28.998444, 31.648617, 29.752190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.470905, 32.450146, 29.939514>,  <29.684219, 31.778816, 29.699665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.470905, 32.450146, 29.939514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.191935, 32.170166, 30.001055>,  <29.024553, 32.002178, 30.037979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.191935, 32.170166, 30.001055>,  <29.470905, 32.450146, 29.939514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.191935, 32.170166, 30.001055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058422, 0.158439, 0.985639,
		-0.714273, 0.696398, -0.069607,
		-0.697425, -0.699948, 0.153853,
		28.982708, 31.960182, 30.047211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.979670, 32.781788, 30.246490>,  <29.470905, 32.450146, 29.939514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.979670, 32.781788, 30.246490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.932146, 32.400421, 30.357403>,  <28.903633, 32.171600, 30.423950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.932146, 32.400421, 30.357403>,  <28.979670, 32.781788, 30.246490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.932146, 32.400421, 30.357403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179340, 0.295271, 0.938431,
		-0.976587, 0.061764, -0.206066,
		-0.118807, -0.953415, 0.277281,
		28.896503, 32.114395, 30.440588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.377874, 32.770077, 30.664165>,  <28.979670, 32.781788, 30.246490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.377874, 32.770077, 30.664165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.560261, 32.434177, 30.782089>,  <28.669693, 32.232635, 30.852844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.560261, 32.434177, 30.782089>,  <28.377874, 32.770077, 30.664165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.560261, 32.434177, 30.782089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054398, 0.304332, 0.951012,
		-0.888333, -0.449667, 0.093084,
		0.455967, -0.839751, 0.294809,
		28.697050, 32.182251, 30.870531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.988499, 32.597504, 31.186123>,  <28.377874, 32.770077, 30.664165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.988499, 32.597504, 31.186123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.343037, 32.420929, 31.242025>,  <28.555759, 32.314983, 31.275566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.343037, 32.420929, 31.242025>,  <27.988499, 32.597504, 31.186123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.343037, 32.420929, 31.242025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066388, 0.177554, 0.981869,
		-0.458246, -0.879550, 0.128068,
		0.886342, -0.441436, 0.139755,
		28.608940, 32.288498, 31.283953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.857368, 32.065414, 31.693090>,  <27.988499, 32.597504, 31.186123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.857368, 32.065414, 31.693090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.246046, 32.159065, 31.680471>,  <28.479252, 32.215256, 31.672899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.246046, 32.159065, 31.680471>,  <27.857368, 32.065414, 31.693090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.246046, 32.159065, 31.680471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008164, 0.166736, 0.985968,
		0.236108, -0.957800, 0.163927,
		0.971693, 0.234133, -0.031548,
		28.537554, 32.229305, 31.671007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.051716, 31.740000, 32.266472>,  <27.857368, 32.065414, 31.693090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.051716, 31.740000, 32.266472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.356823, 31.992559, 32.210587>,  <28.539886, 32.144096, 32.177055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.356823, 31.992559, 32.210587>,  <28.051716, 31.740000, 32.266472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.356823, 31.992559, 32.210587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066992, 0.137728, 0.988202,
		0.643193, -0.763128, 0.062756,
		0.762768, 0.631400, -0.139709,
		28.585653, 32.181980, 32.168674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.520081, 31.493410, 32.695446>,  <28.051716, 31.740000, 32.266472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.520081, 31.493410, 32.695446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.635597, 31.869780, 32.624722>,  <28.704906, 32.095600, 32.582287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.635597, 31.869780, 32.624722>,  <28.520081, 31.493410, 32.695446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.635597, 31.869780, 32.624722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091082, 0.156844, 0.983414,
		0.953050, -0.300104, -0.040407,
		0.288789, 0.940924, -0.176815,
		28.722235, 32.152058, 32.571678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.159822, 31.582344, 33.155830>,  <28.520081, 31.493410, 32.695446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.159822, 31.582344, 33.155830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.055622, 31.958382, 33.067867>,  <28.993103, 32.184006, 33.015087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.055622, 31.958382, 33.067867>,  <29.159822, 31.582344, 33.155830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.055622, 31.958382, 33.067867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042751, 0.238783, 0.970131,
		0.964527, 0.243317, -0.102393,
		-0.260500, 0.940095, -0.219910,
		28.977472, 32.240410, 33.001896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.629446, 31.972151, 33.562717>,  <29.159822, 31.582344, 33.155830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.629446, 31.972151, 33.562717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.344397, 32.233799, 33.461292>,  <29.173367, 32.390789, 33.400436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.344397, 32.233799, 33.461292>,  <29.629446, 31.972151, 33.562717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.344397, 32.233799, 33.461292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023208, 0.339256, 0.940408,
		0.701163, 0.676041, -0.226581,
		-0.712623, 0.654121, -0.253563,
		29.130610, 32.430035, 33.385223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.766788, 32.588676, 33.894344>,  <29.629446, 31.972151, 33.562717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.766788, 32.588676, 33.894344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.376368, 32.611217, 33.810295>,  <29.142115, 32.624741, 33.759865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.376368, 32.611217, 33.810295>,  <29.766788, 32.588676, 33.894344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.376368, 32.611217, 33.810295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164691, 0.439664, 0.882934,
		0.142139, 0.896393, -0.419853,
		-0.976050, 0.056354, -0.210121,
		29.083553, 32.628124, 33.747257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.432930, 32.715176, 34.111748>,  <29.766788, 32.588676, 33.894344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.432930, 32.715176, 34.111748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.768948, 32.508362, 34.177475>,  <30.970558, 32.384274, 34.216911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.768948, 32.508362, 34.177475>,  <30.432930, 32.715176, 34.111748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.768948, 32.508362, 34.177475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142012, 0.082761, 0.986399,
		-0.523599, -0.851956, -0.003902,
		0.840045, -0.517032, 0.164322,
		31.020962, 32.353252, 34.226772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.270370, 32.289391, 34.678020>,  <30.432930, 32.715176, 34.111748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.270370, 32.289391, 34.678020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.668804, 32.318806, 34.658409>,  <30.907866, 32.336456, 34.646641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.668804, 32.318806, 34.658409>,  <30.270370, 32.289391, 34.678020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.668804, 32.318806, 34.658409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031797, 0.219462, 0.975103,
		0.082468, -0.972845, 0.216265,
		0.996086, 0.073538, -0.049033,
		30.967630, 32.340866, 34.643700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.734932, 31.673988, 35.111717>,  <30.270370, 32.289391, 34.678020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.734932, 31.673988, 35.111717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.871283, 32.047031, 35.064304>,  <30.953093, 32.270855, 35.035854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.871283, 32.047031, 35.064304>,  <30.734932, 31.673988, 35.111717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.871283, 32.047031, 35.064304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141616, 0.073709, 0.987174,
		0.929381, -0.353289, -0.106946,
		0.340875, 0.932606, -0.118535,
		30.973545, 32.326813, 35.028744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.482798, 31.830921, 35.244167>,  <30.734932, 31.673988, 35.111717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.482798, 31.830921, 35.244167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.282017, 32.165615, 35.331730>,  <31.161549, 32.366432, 35.384266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.282017, 32.165615, 35.331730>,  <31.482798, 31.830921, 35.244167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.282017, 32.165615, 35.331730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425209, 0.018341, 0.904909,
		0.753153, 0.547303, -0.364993,
		-0.501954, 0.836734, 0.218904,
		31.131432, 32.416634, 35.397400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.905874, 32.200455, 35.468208>,  <31.482798, 31.830921, 35.244167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.905874, 32.200455, 35.468208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.581902, 32.345211, 35.652836>,  <31.387518, 32.432064, 35.763611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.581902, 32.345211, 35.652836>,  <31.905874, 32.200455, 35.468208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.581902, 32.345211, 35.652836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523034, 0.089534, 0.847596,
		0.265414, 0.927910, -0.261799,
		-0.809933, 0.361893, 0.461565,
		31.338923, 32.453777, 35.791306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.147503, 32.783497, 35.844715>,  <31.905874, 32.200455, 35.468208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.147503, 32.783497, 35.844715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.809872, 32.639893, 36.004032>,  <31.607292, 32.553730, 36.099621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.809872, 32.639893, 36.004032>,  <32.147503, 32.783497, 35.844715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.809872, 32.639893, 36.004032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446738, -0.060018, 0.892649,
		-0.296568, 0.931401, 0.211045,
		-0.844081, -0.359013, 0.398293,
		31.556648, 32.532188, 36.123520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.067539, 33.200710, 36.342728>,  <32.147503, 32.783497, 35.844715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.067539, 33.200710, 36.342728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.912825, 32.838615, 36.413082>,  <31.819994, 32.621357, 36.455296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.912825, 32.838615, 36.413082>,  <32.067539, 33.200710, 36.342728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.912825, 32.838615, 36.413082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503439, -0.047485, 0.862725,
		-0.772621, 0.422241, 0.474099,
		-0.386791, -0.905239, 0.175885,
		31.796787, 32.567043, 36.465847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.783852, 33.291782, 37.019295>,  <32.067539, 33.200710, 36.342728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.783852, 33.291782, 37.019295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.916769, 32.931236, 36.908207>,  <31.996519, 32.714909, 36.841553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.916769, 32.931236, 36.908207>,  <31.783852, 33.291782, 37.019295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.916769, 32.931236, 36.908207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634395, -0.004294, 0.772997,
		-0.697943, -0.433045, 0.570393,
		0.332293, -0.901362, -0.277719,
		32.016457, 32.660828, 36.824890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.591999, 32.854523, 37.490089>,  <31.783852, 33.291782, 37.019295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.591999, 32.854523, 37.490089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.931896, 32.745296, 37.309704>,  <32.135834, 32.679760, 37.201473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.931896, 32.745296, 37.309704>,  <31.591999, 32.854523, 37.490089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.931896, 32.745296, 37.309704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510215, 0.210612, 0.833861,
		-0.132717, -0.938658, 0.318287,
		0.849745, -0.273062, -0.450965,
		32.186821, 32.663376, 37.174416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.924685, 32.470234, 37.991299>,  <31.591999, 32.854523, 37.490089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.924685, 32.470234, 37.991299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.198521, 32.602669, 37.731537>,  <32.362823, 32.682129, 37.575680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.198521, 32.602669, 37.731537>,  <31.924685, 32.470234, 37.991299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.198521, 32.602669, 37.731537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510173, 0.418691, 0.751280,
		0.520635, -0.845625, 0.117721,
		0.684589, 0.331085, -0.649400,
		32.403896, 32.701996, 37.536716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.455921, 32.361656, 38.383087>,  <31.924685, 32.470234, 37.991299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.455921, 32.361656, 38.383087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.577198, 32.613186, 38.096687>,  <32.649963, 32.764103, 37.924847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.577198, 32.613186, 38.096687>,  <32.455921, 32.361656, 38.383087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.577198, 32.613186, 38.096687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346597, 0.627135, 0.697547,
		0.887663, -0.459653, -0.027808,
		0.303190, 0.628825, -0.715999,
		32.668156, 32.801834, 37.881889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.108986, 32.529263, 38.430626>,  <32.455921, 32.361656, 38.383087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.108986, 32.529263, 38.430626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.993641, 32.846107, 38.215439>,  <32.924435, 33.036213, 38.086327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.993641, 32.846107, 38.215439>,  <33.108986, 32.529263, 38.430626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.993641, 32.846107, 38.215439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355464, 0.610242, 0.707990,
		0.889097, 0.012929, -0.457537,
		-0.288362, 0.792110, -0.537968,
		32.907131, 33.083740, 38.054047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.723473, 33.054550, 38.316914>,  <33.108986, 32.529263, 38.430626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.723473, 33.054550, 38.316914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.388546, 33.262234, 38.248428>,  <33.187588, 33.386845, 38.207336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.388546, 33.262234, 38.248428>,  <33.723473, 33.054550, 38.316914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.388546, 33.262234, 38.248428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371580, 0.770184, 0.518406,
		0.401026, 0.370454, -0.837820,
		-0.837321, 0.519211, -0.171210,
		33.137348, 33.417995, 38.197063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.887959, 33.748398, 38.098385>,  <33.723473, 33.054550, 38.316914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.887959, 33.748398, 38.098385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.509476, 33.793270, 38.219788>,  <33.282387, 33.820194, 38.292629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.509476, 33.793270, 38.219788>,  <33.887959, 33.748398, 38.098385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.509476, 33.793270, 38.219788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287792, 0.720518, 0.630896,
		-0.147903, 0.684301, -0.714042,
		-0.946203, 0.112184, 0.303504,
		33.225616, 33.826927, 38.310837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.746716, 34.525917, 38.070145>,  <33.887959, 33.748398, 38.098385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.746716, 34.525917, 38.070145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.471695, 34.376343, 38.319126>,  <33.306683, 34.286598, 38.468513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.471695, 34.376343, 38.319126>,  <33.746716, 34.525917, 38.070145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.471695, 34.376343, 38.319126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158158, 0.759516, 0.630968,
		-0.708702, 0.532269, -0.463067,
		-0.687551, -0.373931, 0.622454,
		33.265430, 34.264164, 38.505863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.394516, 35.097378, 38.171749>,  <33.746716, 34.525917, 38.070145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.394516, 35.097378, 38.171749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.320850, 34.848892, 38.476425>,  <33.276653, 34.699799, 38.659229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.320850, 34.848892, 38.476425>,  <33.394516, 35.097378, 38.171749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.320850, 34.848892, 38.476425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075122, 0.763783, 0.641086,
		-0.980021, 0.175283, -0.093992,
		-0.184161, -0.621217, 0.761692,
		33.265602, 34.662529, 38.704933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.893703, 35.457603, 38.554718>,  <33.394516, 35.097378, 38.171749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.893703, 35.457603, 38.554718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.026855, 35.183292, 38.813606>,  <33.106747, 35.018703, 38.968941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.026855, 35.183292, 38.813606>,  <32.893703, 35.457603, 38.554718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.026855, 35.183292, 38.813606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007621, 0.684385, 0.729081,
		-0.942938, -0.247629, 0.222592,
		0.332880, -0.685781, 0.647220,
		33.126720, 34.977558, 39.007771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.474285, 35.431335, 39.160614>,  <32.893703, 35.457603, 38.554718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.474285, 35.431335, 39.160614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.810799, 35.260460, 39.293129>,  <33.012707, 35.157932, 39.372639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.810799, 35.260460, 39.293129>,  <32.474285, 35.431335, 39.160614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.810799, 35.260460, 39.293129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026818, 0.579088, 0.814824,
		-0.539931, -0.694381, 0.475720,
		0.841282, -0.427191, 0.331289,
		33.063183, 35.132301, 39.392517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.291828, 35.278030, 39.843132>,  <32.474285, 35.431335, 39.160614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.291828, 35.278030, 39.843132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.689117, 35.231682, 39.839561>,  <32.927490, 35.203873, 39.837418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.689117, 35.231682, 39.839561>,  <32.291828, 35.278030, 39.843132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.689117, 35.231682, 39.839561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060545, 0.450341, 0.890802,
		-0.099194, -0.885307, 0.454305,
		0.993225, -0.115868, -0.008929,
		32.987083, 35.196922, 39.836884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.425575, 34.950211, 40.439976>,  <32.291828, 35.278030, 39.843132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.425575, 34.950211, 40.439976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.772156, 35.120499, 40.335648>,  <32.980103, 35.222672, 40.273052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.772156, 35.120499, 40.335648>,  <32.425575, 34.950211, 40.439976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.772156, 35.120499, 40.335648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118820, 0.331568, 0.935919,
		0.484924, -0.841915, 0.236701,
		0.866447, 0.425725, -0.260822,
		33.032089, 35.248215, 40.257401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.059406, 34.665947, 40.821613>,  <32.425575, 34.950211, 40.439976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.059406, 34.665947, 40.821613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.149643, 35.037785, 40.705013>,  <33.203785, 35.260887, 40.635052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.149643, 35.037785, 40.705013>,  <33.059406, 34.665947, 40.821613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.149643, 35.037785, 40.705013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073079, 0.282225, 0.956561,
		0.971478, -0.237092, -0.004267,
		0.225589, 0.929589, -0.291502,
		33.217319, 35.316662, 40.617561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.350559, 34.754395, 40.069016>,  <33.059406, 34.665947, 40.821613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.350559, 34.754395, 40.069016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.686565, 34.886925, 40.240871>,  <33.888168, 34.966442, 40.343987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.686565, 34.886925, 40.240871>,  <33.350559, 34.754395, 40.069016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.686565, 34.886925, 40.240871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353352, -0.266833, 0.896629,
		0.411717, -0.905000, -0.107071,
		0.840019, 0.331324, 0.429643,
		33.938572, 34.986320, 40.369762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.595154, 34.209957, 40.550304>,  <33.350559, 34.754395, 40.069016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.595154, 34.209957, 40.550304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.739193, 34.570225, 40.647572>,  <33.825615, 34.786385, 40.705933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.739193, 34.570225, 40.647572>,  <33.595154, 34.209957, 40.550304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.739193, 34.570225, 40.647572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200695, -0.179764, 0.963019,
		0.911073, -0.395580, 0.116028,
		0.360094, 0.900667, 0.243169,
		33.847221, 34.840424, 40.720524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.043564, 34.088665, 41.137367>,  <33.595154, 34.209957, 40.550304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.043564, 34.088665, 41.137367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.967224, 34.478886, 41.180943>,  <33.921421, 34.713020, 41.207088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.967224, 34.478886, 41.180943>,  <34.043564, 34.088665, 41.137367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.967224, 34.478886, 41.180943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231858, -0.152638, 0.960699,
		0.953843, 0.158094, 0.255322,
		-0.190852, 0.975555, 0.108937,
		33.909969, 34.771553, 41.213623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.531750, 34.424732, 41.684006>,  <34.043564, 34.088665, 41.137367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.531750, 34.424732, 41.684006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.204071, 34.652927, 41.660473>,  <34.007465, 34.789845, 41.646351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.204071, 34.652927, 41.660473>,  <34.531750, 34.424732, 41.684006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.204071, 34.652927, 41.660473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258698, -0.276008, 0.925686,
		0.511856, 0.773537, 0.373689,
		-0.819194, 0.570490, -0.058836,
		33.958313, 34.824074, 41.642822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.552048, 34.856770, 42.283386>,  <34.531750, 34.424732, 41.684006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.552048, 34.856770, 42.283386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.166340, 34.859219, 42.177441>,  <33.934917, 34.860687, 42.113873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.166340, 34.859219, 42.177441>,  <34.552048, 34.856770, 42.283386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.166340, 34.859219, 42.177441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256616, -0.270112, 0.928002,
		-0.065862, 0.962809, 0.262031,
		-0.964267, 0.006121, -0.264863,
		33.877060, 34.861053, 42.097980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.124653, 35.162590, 42.773670>,  <34.552048, 34.856770, 42.283386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.124653, 35.162590, 42.773670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.836880, 34.980087, 42.564198>,  <33.664215, 34.870586, 42.438515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.836880, 34.980087, 42.564198>,  <34.124653, 35.162590, 42.773670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.836880, 34.980087, 42.564198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519835, -0.146329, 0.841641,
		-0.460635, 0.877734, -0.131904,
		-0.719436, -0.456258, -0.523680,
		33.621048, 34.843208, 42.407093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.477638, 35.456295, 42.886673>,  <34.124653, 35.162590, 42.773670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.477638, 35.456295, 42.886673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.403660, 35.083378, 42.762337>,  <33.359272, 34.859627, 42.687733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.403660, 35.083378, 42.762337>,  <33.477638, 35.456295, 42.886673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.403660, 35.083378, 42.762337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462007, -0.196687, 0.864791,
		-0.867379, 0.303549, -0.394350,
		-0.184943, -0.932294, -0.310844,
		33.348179, 34.803688, 42.669083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.776054, 35.255184, 43.112492>,  <33.477638, 35.456295, 42.886673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.776054, 35.255184, 43.112492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.917564, 34.894520, 43.013016>,  <33.002468, 34.678120, 42.953331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.917564, 34.894520, 43.013016>,  <32.776054, 35.255184, 43.112492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.917564, 34.894520, 43.013016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368741, -0.378803, 0.848845,
		-0.859578, -0.208595, -0.466490,
		0.353773, -0.901663, -0.248693,
		33.023697, 34.624020, 42.938408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.283974, 34.761517, 43.218060>,  <32.776054, 35.255184, 43.112492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.283974, 34.761517, 43.218060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.614758, 34.539051, 43.251087>,  <32.813229, 34.405571, 43.270905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.614758, 34.539051, 43.251087>,  <32.283974, 34.761517, 43.218060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.614758, 34.539051, 43.251087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325494, -0.353787, 0.876863,
		-0.458471, -0.752004, -0.473596,
		0.826957, -0.556169, 0.082571,
		32.862846, 34.372200, 43.275860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.053730, 34.208595, 43.525940>,  <32.283974, 34.761517, 43.218060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.053730, 34.208595, 43.525940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.449699, 34.169395, 43.566833>,  <32.687279, 34.145878, 43.591370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.449699, 34.169395, 43.566833>,  <32.053730, 34.208595, 43.525940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.449699, 34.169395, 43.566833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141544, -0.661546, 0.736426,
		-0.004532, -0.743475, -0.668749,
		0.989922, -0.097995, 0.102236,
		32.746677, 34.139996, 43.597504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.187057, 33.360157, 43.758114>,  <32.053730, 34.208595, 43.525940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.187057, 33.360157, 43.758114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.515968, 33.569237, 43.848137>,  <32.713314, 33.694683, 43.902149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.515968, 33.569237, 43.848137>,  <32.187057, 33.360157, 43.758114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.515968, 33.569237, 43.848137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146783, -0.576880, 0.803532,
		0.549834, -0.627691, -0.551077,
		0.822275, 0.522698, 0.225054,
		32.762650, 33.726048, 43.915653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.643505, 32.854851, 44.103287>,  <32.187057, 33.360157, 43.758114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.643505, 32.854851, 44.103287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.771378, 33.220970, 44.201290>,  <32.848099, 33.440643, 44.260090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.771378, 33.220970, 44.201290>,  <32.643505, 32.854851, 44.103287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.771378, 33.220970, 44.201290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130184, -0.298550, 0.945473,
		0.938540, -0.270351, -0.214598,
		0.319678, 0.915302, 0.245006,
		32.867283, 33.495560, 44.274792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.129368, 32.784248, 44.582104>,  <32.643505, 32.854851, 44.103287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.129368, 32.784248, 44.582104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.057568, 33.170845, 44.655502>,  <33.014488, 33.402805, 44.699539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.057568, 33.170845, 44.655502>,  <33.129368, 32.784248, 44.582104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.057568, 33.170845, 44.655502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153176, -0.156789, 0.975681,
		0.971760, 0.203239, -0.119900,
		-0.179497, 0.966494, 0.183493,
		33.003719, 33.460793, 44.710548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.517574, 32.936081, 45.116058>,  <33.129368, 32.784248, 44.582104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.517574, 32.936081, 45.116058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.213474, 33.195934, 45.116188>,  <33.031013, 33.351845, 45.116268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.213474, 33.195934, 45.116188>,  <33.517574, 32.936081, 45.116058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.213474, 33.195934, 45.116188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101529, -0.119314, 0.987652,
		0.641652, 0.750826, 0.156665,
		-0.760247, 0.649634, 0.000327,
		32.985401, 33.390823, 45.116287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.695122, 33.438690, 45.543545>,  <33.517574, 32.936081, 45.116058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.695122, 33.438690, 45.543545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.297737, 33.400532, 45.518459>,  <33.059307, 33.377636, 45.503407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.297737, 33.400532, 45.518459>,  <33.695122, 33.438690, 45.543545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.297737, 33.400532, 45.518459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075160, 0.133062, 0.988254,
		-0.085927, 0.986507, -0.139362,
		-0.993462, -0.095392, -0.062713,
		32.999699, 33.371914, 45.499645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.467510, 34.034336, 45.953838>,  <33.695122, 33.438690, 45.543545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.467510, 34.034336, 45.953838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.131149, 33.821888, 45.912262>,  <32.929333, 33.694420, 45.887314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.131149, 33.821888, 45.912262>,  <33.467510, 34.034336, 45.953838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.131149, 33.821888, 45.912262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213840, 0.149640, 0.965339,
		-0.497153, 0.833981, -0.239406,
		-0.840899, -0.531116, -0.103944,
		32.878880, 33.662552, 45.881077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.071007, 34.442623, 46.329422>,  <33.467510, 34.034336, 45.953838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.071007, 34.442623, 46.329422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.904652, 34.080238, 46.297752>,  <32.804836, 33.862808, 46.278751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.904652, 34.080238, 46.297752>,  <33.071007, 34.442623, 46.329422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.904652, 34.080238, 46.297752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134128, -0.025000, 0.990649,
		-0.899469, 0.422621, -0.111118,
		-0.415891, -0.905961, -0.079172,
		32.779884, 33.808449, 46.274002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.434105, 34.483948, 46.705978>,  <33.071007, 34.442623, 46.329422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.434105, 34.483948, 46.705978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.540493, 34.098358, 46.707172>,  <32.604324, 33.867004, 46.707890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.540493, 34.098358, 46.707172>,  <32.434105, 34.483948, 46.705978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.540493, 34.098358, 46.707172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120243, -0.030104, 0.992288,
		-0.956453, -0.264277, -0.123918,
		0.265970, -0.963977, 0.002985,
		32.620285, 33.809166, 46.708069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.010002, 34.157230, 47.215492>,  <32.434105, 34.483948, 46.705978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.010002, 34.157230, 47.215492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.324726, 33.915291, 47.166355>,  <32.513561, 33.770126, 47.136871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.324726, 33.915291, 47.166355>,  <32.010002, 34.157230, 47.215492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.324726, 33.915291, 47.166355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018374, -0.221904, 0.974895,
		-0.616926, -0.764797, -0.185709,
		0.786807, -0.604850, -0.122846,
		32.560768, 33.733837, 47.129501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.814354, 33.648510, 47.671013>,  <32.010002, 34.157230, 47.215492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.814354, 33.648510, 47.671013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.205170, 33.604992, 47.597736>,  <32.439659, 33.578880, 47.553772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.205170, 33.604992, 47.597736>,  <31.814354, 33.648510, 47.671013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.205170, 33.604992, 47.597736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119038, -0.434349, 0.892844,
		-0.176705, -0.894150, -0.411425,
		0.977039, -0.108795, -0.183189,
		32.498280, 33.572353, 47.542778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.994535, 32.993111, 47.807438>,  <31.814354, 33.648510, 47.671013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.994535, 32.993111, 47.807438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.342785, 33.185791, 47.847397>,  <32.551735, 33.301399, 47.871372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.342785, 33.185791, 47.847397>,  <31.994535, 32.993111, 47.807438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.342785, 33.185791, 47.847397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095233, -0.364245, 0.926421,
		0.482644, -0.797050, -0.362994,
		0.870623, 0.481701, 0.099895,
		32.603973, 33.330299, 47.877365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.470322, 32.488335, 48.040554>,  <31.994535, 32.993111, 47.807438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.470322, 32.488335, 48.040554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.637802, 32.834820, 48.149632>,  <32.738289, 33.042713, 48.215076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.637802, 32.834820, 48.149632>,  <32.470322, 32.488335, 48.040554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.637802, 32.834820, 48.149632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060966, -0.326416, 0.943258,
		0.906076, -0.378316, -0.189480,
		0.418699, 0.866216, 0.272694,
		32.763412, 33.094685, 48.231438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.009232, 32.211018, 48.493057>,  <32.470322, 32.488335, 48.040554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.009232, 32.211018, 48.493057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.958370, 32.603065, 48.553974>,  <32.927853, 32.838295, 48.590523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.958370, 32.603065, 48.553974>,  <33.009232, 32.211018, 48.493057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.958370, 32.603065, 48.553974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155492, -0.131940, 0.978986,
		0.979620, 0.148161, -0.135624,
		-0.127154, 0.980122, 0.152289,
		32.920223, 32.897102, 48.599663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.589294, 32.465355, 48.836761>,  <33.009232, 32.211018, 48.493057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.589294, 32.465355, 48.836761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.291176, 32.719761, 48.916782>,  <33.112305, 32.872406, 48.964794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.291176, 32.719761, 48.916782>,  <33.589294, 32.465355, 48.836761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.291176, 32.719761, 48.916782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147489, -0.135349, 0.979759,
		0.650218, 0.759714, 0.007070,
		-0.745294, 0.636015, 0.200055,
		33.067589, 32.910564, 48.976799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.793110, 32.880592, 49.423290>,  <33.589294, 32.465355, 48.836761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.793110, 32.880592, 49.423290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.394405, 32.882469, 49.391178>,  <33.155182, 32.883595, 49.371910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.394405, 32.882469, 49.391178>,  <33.793110, 32.880592, 49.423290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.394405, 32.882469, 49.391178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076400, -0.366938, 0.927103,
		-0.025105, 0.930233, 0.366108,
		-0.996761, 0.004695, -0.080282,
		33.095379, 32.883877, 49.367092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.532761, 33.065441, 49.974987>,  <33.793110, 32.880592, 49.423290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.532761, 33.065441, 49.974987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.207142, 32.884270, 49.829556>,  <33.011772, 32.775566, 49.742294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.207142, 32.884270, 49.829556>,  <33.532761, 33.065441, 49.974987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.207142, 32.884270, 49.829556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207271, -0.358235, 0.910333,
		-0.542561, 0.816411, 0.197740,
		-0.814043, -0.452925, -0.363582,
		32.962929, 32.748394, 49.720482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.152370, 33.087360, 50.558270>,  <33.532761, 33.065441, 49.974987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.152370, 33.087360, 50.558270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.918201, 32.847519, 50.340004>,  <32.777699, 32.703613, 50.209045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.918201, 32.847519, 50.340004>,  <33.152370, 33.087360, 50.558270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.918201, 32.847519, 50.340004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386261, -0.385471, 0.837983,
		-0.712797, 0.701345, -0.005940,
		-0.585425, -0.599606, -0.545664,
		32.742573, 32.667637, 50.176304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.501671, 33.211590, 50.692028>,  <33.152370, 33.087360, 50.558270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.501671, 33.211590, 50.692028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.503242, 32.835678, 50.555325>,  <32.504185, 32.610130, 50.473301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.503242, 32.835678, 50.555325>,  <32.501671, 33.211590, 50.692028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.503242, 32.835678, 50.555325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518291, -0.294193, 0.803010,
		-0.855195, 0.173975, -0.488236,
		0.003932, -0.939779, -0.341762,
		32.504421, 32.553745, 50.452797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.745266, 33.046024, 50.781776>,  <32.501671, 33.211590, 50.692028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.745266, 33.046024, 50.781776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.963539, 32.712708, 50.746334>,  <32.094501, 32.512718, 50.725071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.963539, 32.712708, 50.746334>,  <31.745266, 33.046024, 50.781776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.963539, 32.712708, 50.746334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574569, -0.449016, 0.684291,
		-0.610002, -0.322495, -0.723806,
		0.545681, -0.833296, -0.088605,
		32.127243, 32.462719, 50.719753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.406225, 32.470440, 50.667297>,  <31.745266, 33.046024, 50.781776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.406225, 32.470440, 50.667297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.734756, 32.342724, 50.856392>,  <31.931875, 32.266094, 50.969849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.734756, 32.342724, 50.856392>,  <31.406225, 32.470440, 50.667297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.734756, 32.342724, 50.856392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558215, -0.279090, 0.781348,
		-0.117539, -0.905630, -0.407455,
		0.821329, -0.319286, 0.472732,
		31.981155, 32.246937, 50.998211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.164309, 31.858786, 51.040466>,  <31.406225, 32.470440, 50.667297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.164309, 31.858786, 51.040466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.497458, 32.000343, 51.210682>,  <31.697346, 32.085278, 51.312813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.497458, 32.000343, 51.210682>,  <31.164309, 31.858786, 51.040466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.497458, 32.000343, 51.210682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222582, -0.489774, 0.842958,
		0.506738, -0.796793, -0.329148,
		0.832871, 0.353896, 0.425539,
		31.747318, 32.106514, 51.338345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.211020, 31.462488, 51.531883>,  <31.164309, 31.858786, 51.040466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.211020, 31.462488, 51.531883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.505144, 31.717346, 51.624283>,  <31.681620, 31.870262, 51.679722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.505144, 31.717346, 51.624283>,  <31.211020, 31.462488, 51.531883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.505144, 31.717346, 51.624283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086147, -0.425953, 0.900635,
		0.672233, -0.642346, -0.368096,
		0.735311, 0.637147, 0.231003,
		31.725737, 31.908489, 51.693584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.831932, 31.101618, 51.717747>,  <31.211020, 31.462488, 51.531883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.831932, 31.101618, 51.717747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.730068, 31.444420, 51.896938>,  <31.668949, 31.650101, 52.004452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.730068, 31.444420, 51.896938>,  <31.831932, 31.101618, 51.717747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.730068, 31.444420, 51.896938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019844, -0.467787, 0.883618,
		0.966827, 0.216133, 0.136134,
		-0.254660, 0.857008, 0.447980,
		31.653669, 31.701523, 52.031334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.300426, 31.412672, 52.290390>,  <31.831932, 31.101618, 51.717747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.300426, 31.412672, 52.290390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.919277, 31.516228, 52.353645>,  <31.690588, 31.578362, 52.391598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.919277, 31.516228, 52.353645>,  <32.300426, 31.412672, 52.290390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.919277, 31.516228, 52.353645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019885, -0.466867, 0.884104,
		0.302714, 0.845584, 0.439717,
		-0.952874, 0.258887, 0.158142,
		31.633415, 31.593893, 52.401089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.092152, 31.815622, 52.827118>,  <32.300426, 31.412672, 52.290390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.092152, 31.815622, 52.827118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.750032, 31.608809, 52.813580>,  <31.544762, 31.484720, 52.805454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.750032, 31.608809, 52.813580>,  <32.092152, 31.815622, 52.827118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.750032, 31.608809, 52.813580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169924, -0.341608, 0.924354,
		-0.489484, 0.784845, 0.380032,
		-0.855296, -0.517033, -0.033848,
		31.493444, 31.453699, 52.803425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.803192, 32.155109, 52.975468>,  <32.092152, 31.815622, 52.827118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.803192, 32.155109, 52.975468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.079014, 31.920034, 53.144768>,  <33.244507, 31.778988, 53.246349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.079014, 31.920034, 53.144768>,  <32.803192, 32.155109, 52.975468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.079014, 31.920034, 53.144768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268957, -0.334818, -0.903083,
		0.672446, 0.736557, -0.072810,
		0.689550, -0.587692, 0.423249,
		33.285877, 31.743727, 53.271744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.377518, 32.063583, 52.496758>,  <32.803192, 32.155109, 52.975468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.377518, 32.063583, 52.496758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.403923, 31.716028, 52.692993>,  <33.419765, 31.507496, 52.810734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.403923, 31.716028, 52.692993>,  <33.377518, 32.063583, 52.496758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.403923, 31.716028, 52.692993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255354, -0.460581, -0.850094,
		0.964591, 0.181393, 0.191469,
		0.066014, -0.868885, 0.490592,
		33.423729, 31.455362, 52.840172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.052338, 31.620211, 52.614120>,  <33.377518, 32.063583, 52.496758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.052338, 31.620211, 52.614120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.729637, 31.398373, 52.532562>,  <33.536015, 31.265270, 52.483627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.729637, 31.398373, 52.532562>,  <34.052338, 31.620211, 52.614120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.729637, 31.398373, 52.532562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377705, -0.218657, -0.899738,
		0.454406, -0.802880, 0.385875,
		-0.806756, -0.554593, -0.203892,
		33.487610, 31.231995, 52.471394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.175175, 31.109493, 52.335266>,  <34.052338, 31.620211, 52.614120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.175175, 31.109493, 52.335266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.795448, 31.073576, 52.214779>,  <33.567612, 31.052027, 52.142487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.795448, 31.073576, 52.214779>,  <34.175175, 31.109493, 52.335266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.795448, 31.073576, 52.214779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312132, -0.382158, -0.869787,
		-0.037014, -0.919724, 0.390816,
		-0.949317, -0.089792, -0.301221,
		33.510654, 31.046638, 52.124413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.293625, 30.419464, 52.161308>,  <34.175175, 31.109493, 52.335266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.293625, 30.419464, 52.161308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.032173, 30.669411, 51.990513>,  <33.875301, 30.819378, 51.888035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.032173, 30.669411, 51.990513>,  <34.293625, 30.419464, 52.161308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.032173, 30.669411, 51.990513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375045, -0.222603, -0.899883,
		-0.657355, -0.748324, -0.088855,
		-0.653625, 0.624867, -0.426985,
		33.836086, 30.856871, 51.862419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.001808, 30.020298, 51.609463>,  <34.293625, 30.419464, 52.161308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.001808, 30.020298, 51.609463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.961220, 30.411243, 51.535206>,  <33.936867, 30.645811, 51.490654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.961220, 30.411243, 51.535206>,  <34.001808, 30.020298, 51.609463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.961220, 30.411243, 51.535206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470135, -0.117340, -0.874759,
		-0.876741, -0.176042, -0.447586,
		-0.101475, 0.977364, -0.185641,
		33.930779, 30.704453, 51.479515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.757923, 30.056976, 50.856945>,  <34.001808, 30.020298, 51.609463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.757923, 30.056976, 50.856945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.905739, 30.407997, 50.979153>,  <33.994427, 30.618610, 51.052479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.905739, 30.407997, 50.979153>,  <33.757923, 30.056976, 50.856945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.905739, 30.407997, 50.979153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564404, 0.049220, -0.824030,
		-0.738167, 0.476948, -0.477106,
		0.369536, 0.877552, 0.305524,
		34.016602, 30.671263, 51.070808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.791267, 30.351852, 50.209789>,  <33.757923, 30.056976, 50.856945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.791267, 30.351852, 50.209789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.049259, 30.565084, 50.428814>,  <34.204056, 30.693024, 50.560230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.049259, 30.565084, 50.428814>,  <33.791267, 30.351852, 50.209789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.049259, 30.565084, 50.428814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516507, 0.223989, -0.826468,
		-0.563221, 0.815877, -0.130871,
		0.644983, 0.533079, 0.547562,
		34.242756, 30.725008, 50.593082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.936069, 30.999483, 49.811520>,  <33.791267, 30.351852, 50.209789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.936069, 30.999483, 49.811520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.240368, 30.951830, 50.066727>,  <34.422947, 30.923237, 50.219852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.240368, 30.951830, 50.066727>,  <33.936069, 30.999483, 49.811520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.240368, 30.951830, 50.066727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648523, 0.178968, -0.739857,
		-0.026043, 0.976615, 0.213411,
		0.760749, -0.119134, 0.638018,
		34.468594, 30.916090, 50.258133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.367535, 31.556034, 49.641678>,  <33.936069, 30.999483, 49.811520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.367535, 31.556034, 49.641678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.590206, 31.279118, 49.825348>,  <34.723808, 31.112967, 49.935551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.590206, 31.279118, 49.825348>,  <34.367535, 31.556034, 49.641678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.590206, 31.279118, 49.825348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692979, 0.082153, -0.716262,
		0.458140, 0.716925, 0.525477,
		0.556676, -0.692293, 0.459177,
		34.757210, 31.071430, 49.963100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.058865, 31.741007, 49.596718>,  <34.367535, 31.556034, 49.641678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.058865, 31.741007, 49.596718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.098534, 31.351698, 49.679573>,  <35.122337, 31.118113, 49.729286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.098534, 31.351698, 49.679573>,  <35.058865, 31.741007, 49.596718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.098534, 31.351698, 49.679573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777231, -0.054214, -0.626875,
		0.621350, 0.223163, 0.751081,
		0.099176, -0.973272, 0.207135,
		35.128288, 31.059715, 49.741714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.791893, 31.700861, 49.464279>,  <35.058865, 31.741007, 49.596718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.791893, 31.700861, 49.464279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.621964, 31.338871, 49.473606>,  <35.520004, 31.121677, 49.479202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.621964, 31.338871, 49.473606>,  <35.791893, 31.700861, 49.464279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.621964, 31.338871, 49.473606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494593, -0.253601, -0.831302,
		0.758221, -0.341626, 0.555331,
		-0.424827, -0.904974, 0.023320,
		35.494514, 31.067379, 49.480602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.304085, 31.218613, 49.707447>,  <35.791893, 31.700861, 49.464279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.304085, 31.218613, 49.707447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.029072, 31.024794, 49.491108>,  <35.864063, 30.908503, 49.361305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.029072, 31.024794, 49.491108>,  <36.304085, 31.218613, 49.707447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.029072, 31.024794, 49.491108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662550, -0.113746, -0.740330,
		0.297205, -0.867339, 0.399240,
		-0.687529, -0.484546, -0.540850,
		35.822811, 30.879431, 49.328854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.771194, 30.963316, 49.309200>,  <36.304085, 31.218613, 49.707447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.771194, 30.963316, 49.309200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.408844, 30.935814, 49.142029>,  <36.191433, 30.919312, 49.041725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.408844, 30.935814, 49.142029>,  <36.771194, 30.963316, 49.309200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.408844, 30.935814, 49.142029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403650, 0.158704, -0.901044,
		0.128272, -0.984930, -0.116016,
		-0.905877, -0.068748, -0.417924,
		36.137081, 30.915186, 49.016651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.845554, 30.426464, 48.878956>,  <36.771194, 30.963316, 49.309200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.845554, 30.426464, 48.878956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.546230, 30.666849, 48.766613>,  <36.366638, 30.811079, 48.699207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.546230, 30.666849, 48.766613>,  <36.845554, 30.426464, 48.878956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.546230, 30.666849, 48.766613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414001, 0.092284, -0.905587,
		-0.518304, -0.793933, -0.317855,
		-0.748308, 0.600961, -0.280858,
		36.321739, 30.847137, 48.682354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.743622, 30.350077, 48.173107>,  <36.845554, 30.426464, 48.878956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.743622, 30.350077, 48.173107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.553734, 30.696568, 48.235447>,  <36.439800, 30.904463, 48.272850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.553734, 30.696568, 48.235447>,  <36.743622, 30.350077, 48.173107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.553734, 30.696568, 48.235447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253992, 0.304369, -0.918067,
		-0.842691, -0.396242, -0.364506,
		-0.474721, 0.866228, 0.155847,
		36.411316, 30.956436, 48.282200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.287601, 30.385698, 47.676315>,  <36.743622, 30.350077, 48.173107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.287601, 30.385698, 47.676315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.328697, 30.761023, 47.808384>,  <36.353355, 30.986217, 47.887627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.328697, 30.761023, 47.808384>,  <36.287601, 30.385698, 47.676315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.328697, 30.761023, 47.808384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021113, 0.333913, -0.942367,
		-0.994484, 0.089851, 0.054118,
		0.102743, 0.938312, 0.330174,
		36.359520, 31.042517, 47.907436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.681831, 30.819256, 47.513626>,  <36.287601, 30.385698, 47.676315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.681831, 30.819256, 47.513626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.996704, 31.063826, 47.545872>,  <36.185627, 31.210567, 47.565220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.996704, 31.063826, 47.545872>,  <35.681831, 30.819256, 47.513626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.996704, 31.063826, 47.545872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197875, 0.374211, -0.905987,
		-0.584112, 0.697226, 0.415559,
		0.787184, 0.611426, 0.080617,
		36.232861, 31.247253, 47.570057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.506496, 31.615593, 47.454124>,  <35.681831, 30.819256, 47.513626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.506496, 31.615593, 47.454124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.879490, 31.558992, 47.321190>,  <36.103287, 31.525032, 47.241428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.879490, 31.558992, 47.321190>,  <35.506496, 31.615593, 47.454124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.879490, 31.558992, 47.321190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219508, 0.508700, -0.832491,
		0.286859, 0.849236, 0.443294,
		0.932485, -0.141501, -0.332339,
		36.159237, 31.516542, 47.221489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.607750, 32.183445, 47.024780>,  <35.506496, 31.615593, 47.454124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.607750, 32.183445, 47.024780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.887215, 31.926121, 46.899548>,  <36.054893, 31.771727, 46.824409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.887215, 31.926121, 46.899548>,  <35.607750, 32.183445, 47.024780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.887215, 31.926121, 46.899548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271582, 0.166374, -0.947926,
		0.661897, 0.747311, -0.058471,
		0.698667, -0.643309, -0.313079,
		36.096813, 31.733128, 46.805622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.816536, 32.426174, 46.420189>,  <35.607750, 32.183445, 47.024780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.816536, 32.426174, 46.420189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.981964, 32.065365, 46.370686>,  <36.081223, 31.848879, 46.340984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.981964, 32.065365, 46.370686>,  <35.816536, 32.426174, 46.420189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.981964, 32.065365, 46.370686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182708, 0.050935, -0.981847,
		0.891950, 0.428676, -0.143741,
		0.413573, -0.902021, -0.123754,
		36.106037, 31.794758, 46.333561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.275730, 32.426327, 45.838879>,  <35.816536, 32.426174, 46.420189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.275730, 32.426327, 45.838879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.188812, 32.040344, 45.897728>,  <36.136662, 31.808756, 45.933037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.188812, 32.040344, 45.897728>,  <36.275730, 32.426327, 45.838879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.188812, 32.040344, 45.897728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089509, -0.130391, -0.987414,
		0.971994, -0.227727, -0.058039,
		-0.217293, -0.964955, 0.147123,
		36.123623, 31.750858, 45.941864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.514423, 32.204800, 45.287586>,  <36.275730, 32.426327, 45.838879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.514423, 32.204800, 45.287586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.323608, 31.878929, 45.419483>,  <36.209118, 31.683407, 45.498623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.323608, 31.878929, 45.419483>,  <36.514423, 32.204800, 45.287586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.323608, 31.878929, 45.419483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234214, -0.243777, -0.941125,
		0.847099, -0.526184, -0.074518,
		-0.477039, -0.814680, 0.329743,
		36.180496, 31.634525, 45.518406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.881676, 31.580250, 45.035713>,  <36.514423, 32.204800, 45.287586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.881676, 31.580250, 45.035713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.491543, 31.528330, 45.107140>,  <36.257465, 31.497177, 45.149994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.491543, 31.528330, 45.107140>,  <36.881676, 31.580250, 45.035713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.491543, 31.528330, 45.107140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149125, -0.209030, -0.966472,
		0.162774, -0.969256, 0.184517,
		-0.975329, -0.129800, 0.178565,
		36.198944, 31.489389, 45.160709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.664188, 30.929121, 44.718906>,  <36.881676, 31.580250, 45.035713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.664188, 30.929121, 44.718906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.336918, 31.151932, 44.775917>,  <36.140556, 31.285618, 44.810123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.336918, 31.151932, 44.775917>,  <36.664188, 30.929121, 44.718906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.336918, 31.151932, 44.775917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249125, -0.120026, -0.961005,
		-0.518199, -0.821775, 0.236971,
		-0.818172, 0.557028, 0.142527,
		36.091465, 31.319040, 44.818676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.139297, 30.564251, 44.331974>,  <36.664188, 30.929121, 44.718906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.139297, 30.564251, 44.331974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.959312, 30.913305, 44.407909>,  <35.851322, 31.122738, 44.453472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.959312, 30.913305, 44.407909>,  <36.139297, 30.564251, 44.331974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.959312, 30.913305, 44.407909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589573, -0.130600, -0.797087,
		-0.670772, -0.470587, 0.573247,
		-0.449965, 0.872635, 0.189842,
		35.824322, 31.175097, 44.464863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.385952, 30.411417, 44.418591>,  <36.139297, 30.564251, 44.331974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.385952, 30.411417, 44.418591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.425571, 30.787603, 44.288536>,  <35.449341, 31.013315, 44.210503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.425571, 30.787603, 44.288536>,  <35.385952, 30.411417, 44.418591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.425571, 30.787603, 44.288536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534140, -0.225433, -0.814785,
		-0.839574, 0.254368, 0.480013,
		0.099044, 0.940466, -0.325136,
		35.455284, 31.069744, 44.190994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.891136, 30.457857, 43.916512>,  <35.385952, 30.411417, 44.418591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.891136, 30.457857, 43.916512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.086582, 30.799534, 43.845394>,  <35.203850, 31.004539, 43.802723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.086582, 30.799534, 43.845394>,  <34.891136, 30.457857, 43.916512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.086582, 30.799534, 43.845394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494502, 0.103238, -0.863024,
		-0.718834, 0.509604, 0.472844,
		0.488616, 0.854193, -0.177789,
		35.233166, 31.055792, 43.792057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.442856, 30.829788, 43.453320>,  <34.891136, 30.457857, 43.916512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.442856, 30.829788, 43.453320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.797825, 31.007002, 43.402393>,  <35.010807, 31.113331, 43.371838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.797825, 31.007002, 43.402393>,  <34.442856, 30.829788, 43.453320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.797825, 31.007002, 43.402393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234066, 0.195136, -0.952436,
		-0.397118, 0.875010, 0.276867,
		0.887418, 0.443035, -0.127318,
		35.064049, 31.139912, 43.364197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.314842, 31.606535, 43.234959>,  <34.442856, 30.829788, 43.453320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.314842, 31.606535, 43.234959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.641392, 31.424919, 43.092194>,  <34.837322, 31.315950, 43.006535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.641392, 31.424919, 43.092194>,  <34.314842, 31.606535, 43.234959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.641392, 31.424919, 43.092194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333212, 0.134473, -0.933213,
		0.471709, 0.880777, -0.041511,
		0.816370, -0.454037, -0.356917,
		34.886303, 31.288708, 42.985119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.340965, 31.938456, 42.667606>,  <34.314842, 31.606535, 43.234959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.340965, 31.938456, 42.667606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.632469, 31.673933, 42.596512>,  <34.807369, 31.515219, 42.553856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.632469, 31.673933, 42.596512>,  <34.340965, 31.938456, 42.667606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.632469, 31.673933, 42.596512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019740, 0.279734, -0.959875,
		0.684490, 0.696005, 0.216912,
		0.728755, -0.661306, -0.177736,
		34.851097, 31.475542, 42.543190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.803619, 32.274811, 42.106632>,  <34.340965, 31.938456, 42.667606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.803619, 32.274811, 42.106632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.875019, 31.881397, 42.117966>,  <34.917858, 31.645350, 42.124767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.875019, 31.881397, 42.117966>,  <34.803619, 32.274811, 42.106632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.875019, 31.881397, 42.117966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264306, -0.075671, -0.961466,
		0.947777, 0.164131, -0.273461,
		0.178499, -0.983532, 0.028338,
		34.928570, 31.586338, 42.126469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.342785, 32.014542, 41.694393>,  <34.803619, 32.274811, 42.106632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.342785, 32.014542, 41.694393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.149651, 31.664604, 41.709972>,  <35.033772, 31.454641, 41.719322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.149651, 31.664604, 41.709972>,  <35.342785, 32.014542, 41.694393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.149651, 31.664604, 41.709972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114756, 0.019112, -0.993210,
		0.868160, -0.484026, -0.109621,
		-0.482834, -0.874845, 0.038953,
		35.004799, 31.402151, 41.721657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.537037, 31.754950, 41.068150>,  <35.342785, 32.014542, 41.694393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.537037, 31.754950, 41.068150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.220440, 31.530691, 41.165485>,  <35.030483, 31.396135, 41.223888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.220440, 31.530691, 41.165485>,  <35.537037, 31.754950, 41.068150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.220440, 31.530691, 41.165485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102382, -0.270904, -0.957146,
		0.602543, -0.782488, 0.157018,
		-0.791492, -0.560646, 0.243344,
		34.982994, 31.362497, 41.238487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.613445, 31.132410, 40.694366>,  <35.537037, 31.754950, 41.068150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.613445, 31.132410, 40.694366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.227882, 31.170540, 40.793808>,  <34.996544, 31.193417, 40.853474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.227882, 31.170540, 40.793808>,  <35.613445, 31.132410, 40.694366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.227882, 31.170540, 40.793808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265299, -0.265109, -0.927002,
		-0.022457, -0.959495, 0.280829,
		-0.963904, 0.095322, 0.248600,
		34.938709, 31.199137, 40.868389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.252743, 30.513107, 40.313015>,  <35.613445, 31.132410, 40.694366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.252743, 30.513107, 40.313015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.986210, 30.795900, 40.407825>,  <34.826290, 30.965576, 40.464710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.986210, 30.795900, 40.407825>,  <35.252743, 30.513107, 40.313015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.986210, 30.795900, 40.407825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235198, 0.102374, -0.966541,
		-0.707593, -0.699782, 0.098066,
		-0.666328, 0.706983, 0.237027,
		34.786312, 31.007996, 40.478935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.668602, 30.360081, 39.886112>,  <35.252743, 30.513107, 40.313015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.668602, 30.360081, 39.886112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.600712, 30.736488, 40.003189>,  <34.559978, 30.962334, 40.073437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.600712, 30.736488, 40.003189>,  <34.668602, 30.360081, 39.886112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.600712, 30.736488, 40.003189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268621, 0.241583, -0.932459,
		-0.948175, -0.236889, 0.211775,
		-0.169729, 0.941021, 0.292696,
		34.549793, 31.018795, 40.091000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.014507, 30.566660, 39.459618>,  <34.668602, 30.360081, 39.886112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.014507, 30.566660, 39.459618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.212841, 30.900459, 39.555752>,  <34.331841, 31.100739, 39.613430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.212841, 30.900459, 39.555752>,  <34.014507, 30.566660, 39.459618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.212841, 30.900459, 39.555752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421187, 0.473109, -0.773802,
		-0.759440, 0.282453, 0.586064,
		0.495835, 0.834499, 0.240332,
		34.361591, 31.150808, 39.627853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.573059, 31.115244, 39.281059>,  <34.014507, 30.566660, 39.459618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.573059, 31.115244, 39.281059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.940006, 31.270821, 39.314892>,  <34.160175, 31.364166, 39.335194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.940006, 31.270821, 39.314892>,  <33.573059, 31.115244, 39.281059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.940006, 31.270821, 39.314892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102027, 0.435178, -0.894545,
		-0.384736, 0.811999, 0.438902,
		0.917370, 0.388944, 0.084583,
		34.215218, 31.387505, 39.340267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.541668, 31.663290, 38.877644>,  <33.573059, 31.115244, 39.281059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.541668, 31.663290, 38.877644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.940952, 31.642336, 38.889114>,  <34.180523, 31.629763, 38.895996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.940952, 31.642336, 38.889114>,  <33.541668, 31.663290, 38.877644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.940952, 31.642336, 38.889114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048072, 0.419918, -0.906288,
		0.035434, 0.906049, 0.421686,
		0.998215, -0.052385, 0.028676,
		34.240417, 31.626621, 38.897717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.981186, 32.387650, 38.719589>,  <33.541668, 31.663290, 38.877644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.981186, 32.387650, 38.719589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.200783, 32.067341, 38.623779>,  <34.332542, 31.875156, 38.566296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.200783, 32.067341, 38.623779>,  <33.981186, 32.387650, 38.719589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.200783, 32.067341, 38.623779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305096, 0.458786, -0.834525,
		0.778154, 0.385070, 0.496183,
		0.548992, -0.800772, -0.239523,
		34.365482, 31.827108, 38.551922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.504791, 32.711803, 38.406971>,  <33.981186, 32.387650, 38.719589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.504791, 32.711803, 38.406971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.527599, 32.326771, 38.300995>,  <34.541283, 32.095753, 38.237408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.527599, 32.326771, 38.300995>,  <34.504791, 32.711803, 38.406971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.527599, 32.326771, 38.300995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192305, 0.270992, -0.943177,
		0.979677, 0.002830, 0.200560,
		0.057020, -0.962577, -0.264940,
		34.544704, 32.037998, 38.221512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.170467, 32.572567, 38.019070>,  <34.504791, 32.711803, 38.406971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.170467, 32.572567, 38.019070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.919724, 32.279655, 37.912621>,  <34.769276, 32.103909, 37.848751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.919724, 32.279655, 37.912621>,  <35.170467, 32.572567, 38.019070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.919724, 32.279655, 37.912621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237827, 0.145426, -0.960359,
		0.741948, -0.665301, 0.082994,
		-0.626858, -0.732275, -0.266125,
		34.731667, 32.059975, 37.832783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.687771, 31.982742, 38.080029>,  <35.170467, 32.572567, 38.019070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.687771, 31.982742, 38.080029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.969028, 31.996088, 37.795921>,  <36.137783, 32.004097, 37.625458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.969028, 31.996088, 37.795921>,  <35.687771, 31.982742, 38.080029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.969028, 31.996088, 37.795921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677171, -0.336070, 0.654597,
		-0.216858, -0.941246, -0.258899,
		0.703144, 0.033364, -0.710264,
		36.179974, 32.006096, 37.582844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.255890, 31.426817, 38.127342>,  <35.687771, 31.982742, 38.080029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.255890, 31.426817, 38.127342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.411816, 31.728676, 37.916229>,  <36.505371, 31.909792, 37.789562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.411816, 31.728676, 37.916229>,  <36.255890, 31.426817, 38.127342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.411816, 31.728676, 37.916229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830330, -0.040182, 0.555821,
		0.398242, -0.654898, -0.642271,
		0.389814, 0.754648, -0.527779,
		36.528759, 31.955070, 37.757896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.000294, 31.338169, 38.120495>,  <36.255890, 31.426817, 38.127342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.000294, 31.338169, 38.120495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.917416, 31.723675, 38.053295>,  <36.867687, 31.954979, 38.012974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.917416, 31.723675, 38.053295>,  <37.000294, 31.338169, 38.120495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.917416, 31.723675, 38.053295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784912, 0.266274, 0.559475,
		0.583937, -0.015944, -0.811643,
		-0.207199, 0.963766, -0.168002,
		36.855255, 32.012806, 38.002895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.579762, 31.748898, 37.947128>,  <37.000294, 31.338169, 38.120495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.579762, 31.748898, 37.947128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.313339, 31.990562, 38.122105>,  <37.153484, 32.135563, 38.227089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.313339, 31.990562, 38.122105>,  <37.579762, 31.748898, 37.947128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.313339, 31.990562, 38.122105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638378, 0.158392, 0.753250,
		0.385799, 0.780960, -0.491183,
		-0.666057, 0.604164, 0.437440,
		37.113522, 32.171810, 38.253338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.945938, 32.445606, 38.074123>,  <37.579762, 31.748898, 37.947128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.945938, 32.445606, 38.074123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.617371, 32.425453, 38.301361>,  <37.420231, 32.413361, 38.437702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.617371, 32.425453, 38.301361>,  <37.945938, 32.445606, 38.074123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.617371, 32.425453, 38.301361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507941, 0.388349, 0.768883,
		-0.259358, 0.920134, -0.293405,
		-0.821419, -0.050384, 0.568095,
		37.370945, 32.410339, 38.471790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.005901, 32.950333, 38.527290>,  <37.945938, 32.445606, 38.074123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.005901, 32.950333, 38.527290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.728840, 32.731010, 38.714733>,  <37.562603, 32.599419, 38.827198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.728840, 32.731010, 38.714733>,  <38.005901, 32.950333, 38.527290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.728840, 32.731010, 38.714733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407720, 0.238286, 0.881467,
		-0.594974, 0.801613, 0.058505,
		-0.692654, -0.548304, 0.468608,
		37.521042, 32.566521, 38.855316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.910797, 33.305386, 39.170105>,  <38.005901, 32.950333, 38.527290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.910797, 33.305386, 39.170105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.715446, 32.965702, 39.250443>,  <37.598236, 32.761894, 39.298645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.715446, 32.965702, 39.250443>,  <37.910797, 33.305386, 39.170105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.715446, 32.965702, 39.250443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157747, 0.140453, 0.977440,
		-0.858257, 0.509040, 0.065366,
		-0.488375, -0.849206, 0.200844,
		37.568935, 32.710941, 39.310696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.329140, 33.418633, 39.600014>,  <37.910797, 33.305386, 39.170105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.329140, 33.418633, 39.600014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.436874, 33.036278, 39.646889>,  <37.501514, 32.806866, 39.675014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.436874, 33.036278, 39.646889>,  <37.329140, 33.418633, 39.600014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.436874, 33.036278, 39.646889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154851, 0.163086, 0.974384,
		-0.950515, -0.244292, 0.191946,
		0.269338, -0.955889, 0.117187,
		37.517677, 32.749512, 39.682045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.061443, 33.281670, 40.241066>,  <37.329140, 33.418633, 39.600014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.061443, 33.281670, 40.241066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.319252, 32.981922, 40.180344>,  <37.473938, 32.802074, 40.143909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.319252, 32.981922, 40.180344>,  <37.061443, 33.281670, 40.241066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.319252, 32.981922, 40.180344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184672, -0.040097, 0.981982,
		-0.741950, -0.660942, 0.112543,
		0.644520, -0.749365, -0.151807,
		37.512608, 32.757114, 40.134800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.880726, 32.635479, 40.718300>,  <37.061443, 33.281670, 40.241066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.880726, 32.635479, 40.718300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.267460, 32.658455, 40.618755>,  <37.499500, 32.672241, 40.559029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.267460, 32.658455, 40.618755>,  <36.880726, 32.635479, 40.718300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.267460, 32.658455, 40.618755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255399, -0.225428, 0.940188,
		-0.002094, -0.972565, -0.232622,
		0.966833, 0.057443, -0.248864,
		37.557510, 32.675686, 40.544094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.161182, 32.215572, 41.262783>,  <36.880726, 32.635479, 40.718300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.161182, 32.215572, 41.262783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.489876, 32.390656, 41.116817>,  <37.687092, 32.495705, 41.029236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.489876, 32.390656, 41.116817>,  <37.161182, 32.215572, 41.262783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.489876, 32.390656, 41.116817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405437, 0.000958, 0.914122,
		0.400471, -0.899115, -0.176677,
		0.821732, 0.437711, -0.364918,
		37.736397, 32.521969, 41.007343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.663425, 31.913660, 41.545914>,  <37.161182, 32.215572, 41.262783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.663425, 31.913660, 41.545914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.868317, 32.233585, 41.420742>,  <37.991249, 32.425541, 41.345638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.868317, 32.233585, 41.420742>,  <37.663425, 31.913660, 41.545914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.868317, 32.233585, 41.420742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514978, 0.005564, 0.857186,
		0.687330, -0.600222, -0.409037,
		0.512226, 0.799815, -0.312925,
		38.021984, 32.473530, 41.326866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.396194, 31.772230, 41.615231>,  <37.663425, 31.913660, 41.545914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.396194, 31.772230, 41.615231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.353004, 32.168381, 41.649857>,  <38.327091, 32.406071, 41.670631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.353004, 32.168381, 41.649857>,  <38.396194, 31.772230, 41.615231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.353004, 32.168381, 41.649857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680167, 0.010086, 0.732988,
		0.725062, 0.138021, -0.674712,
		-0.107973, 0.990378, 0.086565,
		38.320614, 32.465492, 41.675827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.115849, 32.060970, 41.712147>,  <38.396194, 31.772230, 41.615231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.115849, 32.060970, 41.712147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.837612, 32.323380, 41.829308>,  <38.670670, 32.480824, 41.899605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.837612, 32.323380, 41.829308>,  <39.115849, 32.060970, 41.712147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.837612, 32.323380, 41.829308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521946, 0.181290, 0.833490,
		0.493687, 0.732646, -0.468511,
		-0.695590, 0.656021, 0.292901,
		38.628937, 32.520187, 41.917179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.534882, 32.652878, 41.999470>,  <39.115849, 32.060970, 41.712147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.534882, 32.652878, 41.999470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.156940, 32.655479, 42.130444>,  <38.930176, 32.657040, 42.209026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.156940, 32.655479, 42.130444>,  <39.534882, 32.652878, 41.999470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.156940, 32.655479, 42.130444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323673, 0.170881, 0.930610,
		-0.049903, 0.985270, -0.163561,
		-0.944852, 0.006500, 0.327433,
		38.873486, 32.657429, 42.228672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.522243, 32.988461, 42.589462>,  <39.534882, 32.652878, 41.999470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.522243, 32.988461, 42.589462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.156956, 32.837978, 42.652084>,  <38.937782, 32.747688, 42.689659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.156956, 32.837978, 42.652084>,  <39.522243, 32.988461, 42.589462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.156956, 32.837978, 42.652084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174505, -0.013876, 0.984559,
		-0.368221, 0.926433, 0.078321,
		-0.913215, -0.376203, 0.156558,
		38.882992, 32.725117, 42.699051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.330307, 33.262623, 43.170506>,  <39.522243, 32.988461, 42.589462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.330307, 33.262623, 43.170506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.071220, 32.958473, 43.151371>,  <38.915768, 32.775982, 43.139893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.071220, 32.958473, 43.151371>,  <39.330307, 33.262623, 43.170506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.071220, 32.958473, 43.151371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122224, 0.041737, 0.991624,
		-0.752011, 0.648140, -0.119971,
		-0.647719, -0.760376, -0.047832,
		38.876904, 32.730362, 43.137020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.771503, 33.471672, 43.557137>,  <39.330307, 33.262623, 43.170506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.771503, 33.471672, 43.557137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.737617, 33.073112, 43.557880>,  <38.717285, 32.833977, 43.558327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.737617, 33.073112, 43.557880>,  <38.771503, 33.471672, 43.557137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.737617, 33.073112, 43.557880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259929, 0.023905, 0.965332,
		-0.961904, 0.081295, -0.261019,
		-0.084716, -0.996403, 0.001863,
		38.712204, 32.774193, 43.558441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.089993, 33.246449, 43.917149>,  <38.771503, 33.471672, 43.557137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.089993, 33.246449, 43.917149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.320919, 32.920231, 43.933147>,  <38.459476, 32.724503, 43.942749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.320919, 32.920231, 43.933147>,  <38.089993, 33.246449, 43.917149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.320919, 32.920231, 43.933147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272638, -0.146359, 0.950919,
		-0.769659, -0.559886, -0.306843,
		0.577316, -0.815541, 0.040000,
		38.494114, 32.675568, 43.945148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.728336, 32.656082, 44.240353>,  <38.089993, 33.246449, 43.917149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.728336, 32.656082, 44.240353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.110058, 32.555752, 44.305332>,  <38.339092, 32.495552, 44.344322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.110058, 32.555752, 44.305332>,  <37.728336, 32.656082, 44.240353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.110058, 32.555752, 44.305332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215538, -0.201167, 0.955550,
		-0.207016, -0.946894, -0.246040,
		0.954300, -0.250845, 0.162447,
		38.396347, 32.480503, 44.354069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.642277, 32.185883, 44.756752>,  <37.728336, 32.656082, 44.240353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.642277, 32.185883, 44.756752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.031525, 32.277664, 44.764538>,  <38.265076, 32.332733, 44.769211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.031525, 32.277664, 44.764538>,  <37.642277, 32.185883, 44.756752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.031525, 32.277664, 44.764538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011743, -0.034972, 0.999319,
		0.229982, -0.972690, -0.031337,
		0.973124, 0.229458, 0.019465,
		38.323463, 32.346500, 44.770378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.116634, 31.655859, 45.192017>,  <37.642277, 32.185883, 44.756752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.116634, 31.655859, 45.192017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.302574, 32.010006, 45.189625>,  <38.414139, 32.222496, 45.188190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.302574, 32.010006, 45.189625>,  <38.116634, 31.655859, 45.192017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.302574, 32.010006, 45.189625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099289, 0.058841, 0.993317,
		0.879804, -0.461150, 0.115260,
		0.464851, 0.885369, -0.005981,
		38.442028, 32.275616, 45.187832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.423546, 31.617512, 45.779312>,  <38.116634, 31.655859, 45.192017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.423546, 31.617512, 45.779312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.450378, 32.004101, 45.680172>,  <38.466476, 32.236053, 45.620689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.450378, 32.004101, 45.680172>,  <38.423546, 31.617512, 45.779312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.450378, 32.004101, 45.680172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126574, 0.238157, 0.962944,
		0.989686, -0.095967, -0.106354,
		0.067082, 0.966474, -0.247848,
		38.470505, 32.294044, 45.605816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.895851, 31.882710, 46.255619>,  <38.423546, 31.617512, 45.779312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.895851, 31.882710, 46.255619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.671616, 32.194843, 46.144756>,  <38.537075, 32.382122, 46.078239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.671616, 32.194843, 46.144756>,  <38.895851, 31.882710, 46.255619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.671616, 32.194843, 46.144756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108902, 0.401257, 0.909469,
		0.820901, 0.479657, -0.309921,
		-0.560591, 0.780334, -0.277157,
		38.503437, 32.428944, 46.061607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.214611, 32.428375, 46.655460>,  <38.895851, 31.882710, 46.255619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.214611, 32.428375, 46.655460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.851498, 32.560452, 46.551998>,  <38.633629, 32.639698, 46.489922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.851498, 32.560452, 46.551998>,  <39.214611, 32.428375, 46.655460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.851498, 32.560452, 46.551998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091156, 0.446615, 0.890071,
		0.409409, 0.831571, -0.375332,
		-0.907786, 0.330189, -0.258651,
		38.579163, 32.659508, 46.474403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.245346, 33.127060, 46.794304>,  <39.214611, 32.428375, 46.655460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.245346, 33.127060, 46.794304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.858463, 33.029701, 46.823345>,  <38.626335, 32.971287, 46.840771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.858463, 33.029701, 46.823345>,  <39.245346, 33.127060, 46.794304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.858463, 33.029701, 46.823345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025525, 0.377541, 0.925641,
		-0.252705, 0.893433, -0.371373,
		-0.967207, -0.243393, 0.072602,
		38.568302, 32.956684, 46.845127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.023762, 33.449055, 47.315056>,  <39.245346, 33.127060, 46.794304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.023762, 33.449055, 47.315056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.686516, 33.238091, 47.273121>,  <38.484169, 33.111511, 47.247959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.686516, 33.238091, 47.273121>,  <39.023762, 33.449055, 47.315056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.686516, 33.238091, 47.273121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303776, 0.306290, 0.902168,
		-0.443706, 0.792478, -0.418454,
		-0.843116, -0.527413, -0.104834,
		38.433582, 33.079868, 47.241673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.492332, 33.831135, 47.544411>,  <39.023762, 33.449055, 47.315056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.492332, 33.831135, 47.544411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.332157, 33.465794, 47.573879>,  <38.236050, 33.246590, 47.591560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.332157, 33.465794, 47.573879>,  <38.492332, 33.831135, 47.544411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.332157, 33.465794, 47.573879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435610, 0.260482, 0.861622,
		-0.806158, 0.312937, -0.502175,
		-0.400441, -0.913356, 0.073671,
		38.212025, 33.191788, 47.595982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.825451, 33.950462, 47.654507>,  <38.492332, 33.831135, 47.544411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.825451, 33.950462, 47.654507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.924904, 33.585957, 47.785824>,  <37.984573, 33.367252, 47.864616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.924904, 33.585957, 47.785824>,  <37.825451, 33.950462, 47.654507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.924904, 33.585957, 47.785824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377050, 0.221147, 0.899404,
		-0.892197, -0.347403, -0.288609,
		0.248630, -0.911266, 0.328295,
		37.999493, 33.312576, 47.884312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.264587, 33.823380, 48.128551>,  <37.825451, 33.950462, 47.654507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.264587, 33.823380, 48.128551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.521305, 33.531578, 48.223145>,  <37.675335, 33.356495, 48.279900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.521305, 33.531578, 48.223145>,  <37.264587, 33.823380, 48.128551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.521305, 33.531578, 48.223145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335105, 0.010596, 0.942121,
		-0.689789, -0.683892, -0.237660,
		0.641791, -0.729506, 0.236485,
		37.713844, 33.312725, 48.294090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.849243, 33.297752, 48.362888>,  <37.264587, 33.823380, 48.128551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.849243, 33.297752, 48.362888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.222797, 33.267487, 48.502674>,  <37.446930, 33.249329, 48.586548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.222797, 33.267487, 48.502674>,  <36.849243, 33.297752, 48.362888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.222797, 33.267487, 48.502674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353711, -0.052362, 0.933888,
		-0.052362, -0.995758, -0.075663,
		-0.933888, 0.075663, -0.349468,
		37.502964, 33.244789, 48.607513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.848869, 32.696781, 48.825317>,  <36.849243, 33.297752, 48.362888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.848869, 32.696781, 48.825317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.179657, 32.896896, 48.927956>,  <37.378128, 33.016964, 48.989540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.179657, 32.896896, 48.927956>,  <36.848869, 32.696781, 48.825317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.179657, 32.896896, 48.927956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221196, -0.130089, 0.966514,
		0.516912, -0.856033, 0.003082,
		0.826967, 0.500284, 0.256596,
		37.427746, 33.046982, 49.004932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.045551, 32.331028, 49.481968>,  <36.848869, 32.696781, 48.825317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.045551, 32.331028, 49.481968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.269661, 32.662331, 49.485481>,  <37.404129, 32.861115, 49.487591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.269661, 32.662331, 49.485481>,  <37.045551, 32.331028, 49.481968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.269661, 32.662331, 49.485481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221317, 0.139473, 0.965177,
		0.798192, -0.542709, 0.261451,
		0.560275, 0.828260, 0.008785,
		37.437744, 32.910809, 49.488117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.469582, 32.324196, 50.085342>,  <37.045551, 32.331028, 49.481968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.469582, 32.324196, 50.085342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.444927, 32.710815, 49.985752>,  <37.430134, 32.942787, 49.925999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.444927, 32.710815, 49.985752>,  <37.469582, 32.324196, 50.085342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.444927, 32.710815, 49.985752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097705, 0.242409, 0.965242,
		0.993305, 0.083817, 0.079496,
		-0.061633, 0.966547, -0.248975,
		37.426437, 33.000778, 49.911060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.010223, 32.753407, 50.469303>,  <37.469582, 32.324196, 50.085342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.010223, 32.753407, 50.469303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.705200, 32.997536, 50.383499>,  <37.522186, 33.144012, 50.332016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.705200, 32.997536, 50.383499>,  <38.010223, 32.753407, 50.469303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.705200, 32.997536, 50.383499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021876, 0.307073, 0.951434,
		0.646551, 0.730215, -0.220809,
		-0.762557, 0.610321, -0.214513,
		37.476433, 33.180634, 50.319145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.088825, 33.371490, 50.887932>,  <38.010223, 32.753407, 50.469303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.088825, 33.371490, 50.887932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.712078, 33.416847, 50.761421>,  <37.486031, 33.444061, 50.685516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.712078, 33.416847, 50.761421>,  <38.088825, 33.371490, 50.887932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.712078, 33.416847, 50.761421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264861, 0.328611, 0.906567,
		0.206731, 0.937634, -0.279474,
		-0.941865, 0.113394, -0.316277,
		37.429520, 33.450867, 50.666538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.943241, 34.049110, 51.139538>,  <38.088825, 33.371490, 50.887932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.943241, 34.049110, 51.139538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.602940, 33.848038, 51.078182>,  <37.398758, 33.727394, 51.041370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.602940, 33.848038, 51.078182>,  <37.943241, 34.049110, 51.139538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.602940, 33.848038, 51.078182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333891, 0.291560, 0.896387,
		-0.405877, 0.813819, -0.415887,
		-0.850753, -0.502684, -0.153390,
		37.347713, 33.697231, 51.032166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.486919, 34.397266, 51.441998>,  <37.943241, 34.049110, 51.139538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.486919, 34.397266, 51.441998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.265125, 34.065891, 51.410412>,  <37.132050, 33.867065, 51.391460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.265125, 34.065891, 51.410412>,  <37.486919, 34.397266, 51.441998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.265125, 34.065891, 51.410412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308693, 0.116637, 0.943983,
		-0.772824, 0.547798, -0.320408,
		-0.554483, -0.828440, -0.078961,
		37.098782, 33.817360, 51.386723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.763248, 34.429672, 51.853340>,  <37.486919, 34.397266, 51.441998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.763248, 34.429672, 51.853340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.879749, 34.048546, 51.819134>,  <36.949650, 33.819870, 51.798611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.879749, 34.048546, 51.819134>,  <36.763248, 34.429672, 51.853340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.879749, 34.048546, 51.819134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058436, -0.071503, 0.995727,
		-0.954861, -0.295002, 0.034853,
		0.291249, -0.952817, -0.085514,
		36.967125, 33.762699, 51.793480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.123348, 34.584591, 52.060955>,  <36.763248, 34.429672, 51.853340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.123348, 34.584591, 52.060955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.123795, 34.976166, 52.142624>,  <36.124062, 35.211109, 52.191624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.123795, 34.976166, 52.142624>,  <36.123348, 34.584591, 52.060955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.123795, 34.976166, 52.142624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162111, 0.201649, -0.965949,
		-0.986772, -0.032024, 0.158920,
		0.001113, 0.978934, 0.204173,
		36.124130, 35.269848, 52.203876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.482254, 34.955414, 51.768089>,  <36.123348, 34.584591, 52.060955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.482254, 34.955414, 51.768089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.787983, 35.213253, 51.774994>,  <35.971420, 35.367958, 51.779137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.787983, 35.213253, 51.774994>,  <35.482254, 34.955414, 51.768089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.787983, 35.213253, 51.774994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122569, 0.171512, -0.977528,
		-0.633076, 0.745032, 0.210099,
		0.764324, 0.644601, 0.017262,
		36.017281, 35.406635, 51.780174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.233788, 35.579422, 51.485703>,  <35.482254, 34.955414, 51.768089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.233788, 35.579422, 51.485703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.630806, 35.591160, 51.438377>,  <35.869015, 35.598202, 51.409985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.630806, 35.591160, 51.438377>,  <35.233788, 35.579422, 51.485703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.630806, 35.591160, 51.438377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120634, 0.097189, -0.987928,
		-0.017495, 0.994833, 0.100005,
		0.992543, 0.029347, -0.118310,
		35.928570, 35.599964, 51.402885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.120701, 35.947517, 50.916904>,  <35.233788, 35.579422, 51.485703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.120701, 35.947517, 50.916904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.510628, 35.859028, 50.905663>,  <35.744583, 35.805935, 50.898918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.510628, 35.859028, 50.905663>,  <35.120701, 35.947517, 50.916904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.510628, 35.859028, 50.905663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016678, 0.053358, -0.998436,
		0.222376, 0.973762, 0.048325,
		0.974818, -0.221222, -0.028106,
		35.803074, 35.792660, 50.897232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.431713, 36.390224, 50.526058>,  <35.120701, 35.947517, 50.916904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.431713, 36.390224, 50.526058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.695923, 36.090282, 50.510960>,  <35.854450, 35.910316, 50.501900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.695923, 36.090282, 50.510960>,  <35.431713, 36.390224, 50.526058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.695923, 36.090282, 50.510960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066928, 0.108878, -0.991800,
		0.747812, 0.652586, 0.122103,
		0.660529, -0.749851, -0.037744,
		35.894081, 35.865326, 50.499638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.859844, 36.687195, 50.038391>,  <35.431713, 36.390224, 50.526058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.859844, 36.687195, 50.038391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.906204, 36.290470, 50.059845>,  <35.934021, 36.052437, 50.072716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.906204, 36.290470, 50.059845>,  <35.859844, 36.687195, 50.038391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.906204, 36.290470, 50.059845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140066, -0.037139, -0.989445,
		0.983335, 0.122192, 0.134615,
		0.115903, -0.991811, 0.053635,
		35.940975, 35.992928, 50.075935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.382355, 36.493969, 49.527210>,  <35.859844, 36.687195, 50.038391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.382355, 36.493969, 49.527210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.223816, 36.131618, 49.586941>,  <36.128693, 35.914207, 49.622780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.223816, 36.131618, 49.586941>,  <36.382355, 36.493969, 49.527210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.223816, 36.131618, 49.586941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151257, -0.224856, -0.962580,
		0.905555, -0.358930, 0.226141,
		-0.396348, -0.905875, 0.149329,
		36.104912, 35.859856, 49.631741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.842392, 36.108410, 49.224236>,  <36.382355, 36.493969, 49.527210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.842392, 36.108410, 49.224236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.495182, 35.909950, 49.231911>,  <36.286858, 35.790874, 49.236515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.495182, 35.909950, 49.231911>,  <36.842392, 36.108410, 49.224236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.495182, 35.909950, 49.231911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062592, -0.147690, -0.987051,
		0.492557, -0.855585, 0.159254,
		-0.868026, -0.496148, 0.019192,
		36.234776, 35.761105, 49.237667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.856770, 35.274437, 49.060944>,  <36.842392, 36.108410, 49.224236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.856770, 35.274437, 49.060944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.484177, 35.391869, 48.975018>,  <36.260620, 35.462330, 48.923462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.484177, 35.391869, 48.975018>,  <36.856770, 35.274437, 49.060944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.484177, 35.391869, 48.975018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035396, -0.514555, -0.856726,
		-0.362050, -0.805632, 0.468910,
		-0.931486, 0.293581, -0.214811,
		36.204731, 35.479942, 48.910576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.451675, 34.648643, 48.821484>,  <36.856770, 35.274437, 49.060944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.451675, 34.648643, 48.821484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.212376, 34.949741, 48.711597>,  <36.068794, 35.130402, 48.645668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.212376, 34.949741, 48.711597>,  <36.451675, 34.648643, 48.821484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.212376, 34.949741, 48.711597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088958, -0.403101, -0.910821,
		-0.796354, -0.520464, 0.308119,
		-0.598253, 0.752746, -0.274712,
		36.032898, 35.175564, 48.629185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.895496, 34.307102, 48.515797>,  <36.451675, 34.648643, 48.821484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.895496, 34.307102, 48.515797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.856663, 34.672497, 48.357746>,  <35.833363, 34.891731, 48.262917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.856663, 34.672497, 48.357746>,  <35.895496, 34.307102, 48.515797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.856663, 34.672497, 48.357746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092338, -0.403557, -0.910283,
		-0.990983, -0.051891, 0.123529,
		-0.097086, 0.913482, -0.395127,
		35.827538, 34.946541, 48.239208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.608570, 34.141094, 47.863674>,  <35.895496, 34.307102, 48.515797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.608570, 34.141094, 47.863674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.713531, 34.525368, 47.827389>,  <35.776508, 34.755932, 47.805618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.713531, 34.525368, 47.827389>,  <35.608570, 34.141094, 47.863674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.713531, 34.525368, 47.827389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025349, -0.087112, -0.995876,
		-0.964624, 0.263625, 0.001494,
		0.262408, 0.960684, -0.090713,
		35.792255, 34.813572, 47.800175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.105839, 34.503059, 47.470436>,  <35.608570, 34.141094, 47.863674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.105839, 34.503059, 47.470436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.448662, 34.706554, 47.437832>,  <35.654354, 34.828651, 47.418270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.448662, 34.706554, 47.437832>,  <35.105839, 34.503059, 47.470436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.448662, 34.706554, 47.437832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036147, -0.098444, -0.994486,
		-0.513955, 0.855276, -0.065983,
		0.857056, 0.508735, -0.081511,
		35.705780, 34.859177, 47.413380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.028183, 34.952721, 46.899727>,  <35.105839, 34.503059, 47.470436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.028183, 34.952721, 46.899727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.424389, 34.923290, 46.946156>,  <35.662113, 34.905632, 46.974010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.424389, 34.923290, 46.946156>,  <35.028183, 34.952721, 46.899727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.424389, 34.923290, 46.946156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112433, -0.051783, -0.992309,
		0.079020, 0.995944, -0.043019,
		0.990512, -0.073575, 0.116069,
		35.721542, 34.901218, 46.980976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.388229, 35.530781, 46.606335>,  <35.028183, 34.952721, 46.899727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.388229, 35.530781, 46.606335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.655754, 35.233593, 46.616852>,  <35.816269, 35.055283, 46.623161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.655754, 35.233593, 46.616852>,  <35.388229, 35.530781, 46.606335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.655754, 35.233593, 46.616852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141219, 0.092242, -0.985672,
		0.729894, 0.662944, 0.166613,
		0.668814, -0.742965, 0.026293,
		35.856400, 35.010704, 46.624741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.878880, 35.835827, 46.214275>,  <35.388229, 35.530781, 46.606335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.878880, 35.835827, 46.214275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.991932, 35.452564, 46.232368>,  <36.059765, 35.222607, 46.243225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.991932, 35.452564, 46.232368>,  <35.878880, 35.835827, 46.214275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.991932, 35.452564, 46.232368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471278, 0.097639, -0.876563,
		0.835472, 0.269062, 0.479157,
		0.282635, -0.958161, 0.045228,
		36.076721, 35.165115, 46.245937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.704800, 35.746929, 46.133007>,  <35.878880, 35.835827, 46.214275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.704800, 35.746929, 46.133007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.517334, 35.417610, 46.004921>,  <36.404854, 35.220016, 45.928070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.517334, 35.417610, 46.004921>,  <36.704800, 35.746929, 46.133007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.517334, 35.417610, 46.004921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454594, 0.086030, -0.886534,
		0.757431, -0.561049, 0.333948,
		-0.468660, -0.823300, -0.320212,
		36.376736, 35.170620, 45.908859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.271244, 35.289062, 45.895920>,  <36.704800, 35.746929, 46.133007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.271244, 35.289062, 45.895920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.918480, 35.177574, 45.743839>,  <36.706821, 35.110680, 45.652592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.918480, 35.177574, 45.743839>,  <37.271244, 35.289062, 45.895920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.918480, 35.177574, 45.743839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376604, 0.068572, -0.923833,
		0.283565, -0.957920, 0.044494,
		-0.881907, -0.278723, -0.380201,
		36.653908, 35.093956, 45.629780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.479053, 34.694653, 45.592319>,  <37.271244, 35.289062, 45.895920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.479053, 34.694653, 45.592319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.151497, 34.836113, 45.411503>,  <36.954964, 34.920990, 45.303013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.151497, 34.836113, 45.411503>,  <37.479053, 34.694653, 45.592319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.151497, 34.836113, 45.411503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475338, -0.023515, -0.879489,
		-0.321661, -0.935082, -0.148847,
		-0.818894, 0.353650, -0.452043,
		36.905827, 34.942207, 45.275890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.452785, 34.218285, 45.095222>,  <37.479053, 34.694653, 45.592319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.452785, 34.218285, 45.095222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.233936, 34.537247, 44.993401>,  <37.102627, 34.728622, 44.932308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.233936, 34.537247, 44.993401>,  <37.452785, 34.218285, 45.095222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.233936, 34.537247, 44.993401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324598, -0.078192, -0.942615,
		-0.771550, -0.598357, -0.216055,
		-0.547126, 0.797405, -0.254554,
		37.069798, 34.776466, 44.917034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.218464, 33.998032, 44.414810>,  <37.452785, 34.218285, 45.095222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.218464, 33.998032, 44.414810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.144825, 34.390911, 44.399914>,  <37.100639, 34.626640, 44.390976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.144825, 34.390911, 44.399914>,  <37.218464, 33.998032, 44.414810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.144825, 34.390911, 44.399914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311427, 0.022355, -0.950007,
		-0.932266, -0.186494, -0.310000,
		-0.184101, 0.982202, -0.037239,
		37.089596, 34.685570, 44.388741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.962543, 34.003407, 43.770622>,  <37.218464, 33.998032, 44.414810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.962543, 34.003407, 43.770622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.055984, 34.378410, 43.873772>,  <37.112049, 34.603413, 43.935661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.055984, 34.378410, 43.873772>,  <36.962543, 34.003407, 43.770622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.055984, 34.378410, 43.873772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441340, 0.134084, -0.887266,
		-0.866400, 0.321078, -0.382439,
		0.233603, 0.937513, 0.257875,
		37.126064, 34.659664, 43.951134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.780102, 34.394428, 43.159695>,  <36.962543, 34.003407, 43.770622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.780102, 34.394428, 43.159695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.036873, 34.601406, 43.386032>,  <37.190933, 34.725594, 43.521835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.036873, 34.601406, 43.386032>,  <36.780102, 34.394428, 43.159695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.036873, 34.601406, 43.386032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467099, 0.321331, -0.823751,
		-0.608071, 0.793092, -0.035428,
		0.641926, 0.517447, 0.565844,
		37.229450, 34.756641, 43.555786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.746281, 34.979580, 42.894482>,  <36.780102, 34.394428, 43.159695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.746281, 34.979580, 42.894482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.098652, 34.963345, 43.083084>,  <37.310074, 34.953602, 43.196243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.098652, 34.963345, 43.083084>,  <36.746281, 34.979580, 42.894482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.098652, 34.963345, 43.083084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452250, 0.365680, -0.813479,
		-0.139401, 0.929855, 0.340494,
		0.880930, -0.040588, 0.471503,
		37.362930, 34.951168, 43.224537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.130348, 35.605995, 42.663982>,  <36.746281, 34.979580, 42.894482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.130348, 35.605995, 42.663982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.388653, 35.338211, 42.810852>,  <37.543636, 35.177540, 42.898975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.388653, 35.338211, 42.810852>,  <37.130348, 35.605995, 42.663982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.388653, 35.338211, 42.810852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644607, 0.220260, -0.732098,
		0.409234, 0.709446, 0.573772,
		0.645763, -0.669457, 0.367175,
		37.582382, 35.137375, 42.921005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.663239, 35.940449, 42.881432>,  <37.130348, 35.605995, 42.663982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.663239, 35.940449, 42.881432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.802940, 35.567753, 42.841686>,  <37.886761, 35.344135, 42.817841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.802940, 35.567753, 42.841686>,  <37.663239, 35.940449, 42.881432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.802940, 35.567753, 42.841686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683044, 0.325746, -0.653713,
		0.641459, 0.160446, 0.750191,
		0.349257, -0.931744, -0.099361,
		37.907719, 35.288231, 42.811878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.362785, 36.079113, 42.725372>,  <37.663239, 35.940449, 42.881432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.362785, 36.079113, 42.725372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.331501, 35.689720, 42.639385>,  <38.312729, 35.456085, 42.587795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.331501, 35.689720, 42.639385>,  <38.362785, 36.079113, 42.725372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.331501, 35.689720, 42.639385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722044, 0.093363, -0.685518,
		0.687411, -0.208832, 0.695597,
		-0.078215, -0.973485, -0.214965,
		38.308037, 35.397675, 42.574894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.038788, 35.722542, 42.926758>,  <38.362785, 36.079113, 42.725372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.038788, 35.722542, 42.926758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.834053, 35.509842, 42.656868>,  <38.711212, 35.382221, 42.494934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.834053, 35.509842, 42.656868>,  <39.038788, 35.722542, 42.926758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.834053, 35.509842, 42.656868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741808, 0.122564, -0.659317,
		0.433291, -0.837984, 0.331726,
		-0.511840, -0.531753, -0.674729,
		38.680500, 35.350315, 42.454449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.482849, 35.278988, 42.694656>,  <39.038788, 35.722542, 42.926758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.482849, 35.278988, 42.694656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.216003, 35.293095, 42.397007>,  <39.055897, 35.301559, 42.218418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.216003, 35.293095, 42.397007>,  <39.482849, 35.278988, 42.694656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.216003, 35.293095, 42.397007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743767, 0.087901, -0.662634,
		0.042041, -0.995505, -0.084868,
		-0.667115, 0.035265, -0.744119,
		39.015869, 35.303673, 42.173771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.708294, 34.818439, 42.243622>,  <39.482849, 35.278988, 42.694656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.708294, 34.818439, 42.243622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.457966, 35.035988, 42.019997>,  <39.307770, 35.166519, 41.885822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.457966, 35.035988, 42.019997>,  <39.708294, 34.818439, 42.243622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.457966, 35.035988, 42.019997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567506, -0.174188, -0.804733,
		-0.535054, -0.820890, -0.199641,
		-0.625823, 0.543873, -0.559060,
		39.270218, 35.199150, 41.852280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.743896, 34.582436, 41.544296>,  <39.708294, 34.818439, 42.243622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.743896, 34.582436, 41.544296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.553062, 34.928246, 41.481064>,  <39.438560, 35.135731, 41.443123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.553062, 34.928246, 41.481064>,  <39.743896, 34.582436, 41.544296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.553062, 34.928246, 41.481064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325978, 0.007030, -0.945351,
		-0.816167, -0.502543, -0.285170,
		-0.477084, 0.864524, -0.158080,
		39.409939, 35.187603, 41.433640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.253143, 34.525219, 40.853336>,  <39.743896, 34.582436, 41.544296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.253143, 34.525219, 40.853336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.377842, 34.898357, 40.925579>,  <39.452660, 35.122238, 40.968925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.377842, 34.898357, 40.925579>,  <39.253143, 34.525219, 40.853336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.377842, 34.898357, 40.925579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356199, 0.061484, -0.932385,
		-0.880874, 0.354998, -0.313110,
		0.311743, 0.932843, 0.180610,
		39.471367, 35.178211, 40.979763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.217861, 34.795811, 40.202446>,  <39.253143, 34.525219, 40.853336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.217861, 34.795811, 40.202446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.412357, 35.081200, 40.404247>,  <39.529053, 35.252434, 40.525330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.412357, 35.081200, 40.404247>,  <39.217861, 34.795811, 40.202446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.412357, 35.081200, 40.404247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387650, 0.341309, -0.856292,
		-0.783136, 0.611933, -0.110622,
		0.486237, 0.713475, 0.504507,
		39.558228, 35.295242, 40.555599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.114574, 35.367805, 39.833591>,  <39.217861, 34.795811, 40.202446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.114574, 35.367805, 39.833591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.450596, 35.437180, 40.039204>,  <39.652210, 35.478802, 40.162571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.450596, 35.437180, 40.039204>,  <39.114574, 35.367805, 39.833591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.450596, 35.437180, 40.039204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436825, 0.345641, -0.830491,
		-0.321705, 0.922201, 0.214597,
		0.840053, 0.173432, 0.514035,
		39.702610, 35.489208, 40.193413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.330292, 36.136234, 39.680733>,  <39.114574, 35.367805, 39.833591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.330292, 36.136234, 39.680733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.641315, 35.920387, 39.809864>,  <39.827930, 35.790878, 39.887344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.641315, 35.920387, 39.809864>,  <39.330292, 36.136234, 39.680733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.641315, 35.920387, 39.809864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557137, 0.353157, -0.751584,
		0.291558, 0.764259, 0.575241,
		0.777555, -0.539618, 0.322832,
		39.874580, 35.758503, 39.906715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.932739, 36.595619, 39.659031>,  <39.330292, 36.136234, 39.680733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.932739, 36.595619, 39.659031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.065289, 36.218250, 39.654125>,  <40.144817, 35.991829, 39.651180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.065289, 36.218250, 39.654125>,  <39.932739, 36.595619, 39.659031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.065289, 36.218250, 39.654125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484245, 0.181215, -0.855960,
		0.809753, 0.277703, 0.516896,
		0.331372, -0.943420, -0.012263,
		40.164700, 35.935223, 39.650448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.724899, 36.653389, 39.550926>,  <39.932739, 36.595619, 39.659031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.724899, 36.653389, 39.550926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.603752, 36.282787, 39.461613>,  <40.531063, 36.060425, 39.408024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.603752, 36.282787, 39.461613>,  <40.724899, 36.653389, 39.550926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.603752, 36.282787, 39.461613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523520, 0.034030, -0.851334,
		0.796364, -0.374738, 0.474738,
		-0.302872, -0.926506, -0.223283,
		40.512890, 36.004837, 39.394627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.314819, 36.330307, 39.359043>,  <40.724899, 36.653389, 39.550926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.314819, 36.330307, 39.359043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.033207, 36.103172, 39.188442>,  <40.864239, 35.966892, 39.086082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.033207, 36.103172, 39.188442>,  <41.314819, 36.330307, 39.359043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.033207, 36.103172, 39.188442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467690, 0.081224, -0.880153,
		0.534425, -0.819124, 0.208387,
		-0.704028, -0.567837, -0.426504,
		40.821999, 35.932823, 39.060490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.735126, 35.901917, 38.855907>,  <41.314819, 36.330307, 39.359043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.735126, 35.901917, 38.855907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.353378, 35.895123, 38.736649>,  <41.124329, 35.891045, 38.665092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.353378, 35.895123, 38.736649>,  <41.735126, 35.901917, 38.855907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.353378, 35.895123, 38.736649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282480, 0.272501, -0.919755,
		0.096865, -0.962005, -0.255269,
		-0.954370, -0.016984, -0.298143,
		41.067066, 35.890026, 38.647205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.688343, 35.319683, 38.423840>,  <41.735126, 35.901917, 38.855907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.688343, 35.319683, 38.423840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.444588, 35.627388, 38.347027>,  <41.298336, 35.812012, 38.300938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.444588, 35.627388, 38.347027>,  <41.688343, 35.319683, 38.423840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.444588, 35.627388, 38.347027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456676, 0.142553, -0.878137,
		-0.648145, -0.622825, -0.438175,
		-0.609389, 0.769264, -0.192034,
		41.261772, 35.858166, 38.289417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.092487, 35.258617, 37.818031>,  <41.688343, 35.319683, 38.423840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.092487, 35.258617, 37.818031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.261696, 35.617924, 37.865658>,  <41.363220, 35.833508, 37.894234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.261696, 35.617924, 37.865658>,  <41.092487, 35.258617, 37.818031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.261696, 35.617924, 37.865658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586930, -0.171518, -0.791261,
		-0.690339, 0.404604, -0.599774,
		0.423019, 0.898263, 0.119069,
		41.388603, 35.887402, 37.901379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.069656, 35.634815, 37.151398>,  <41.092487, 35.258617, 37.818031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.069656, 35.634815, 37.151398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.371593, 35.740444, 37.391556>,  <41.552757, 35.803822, 37.535652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.371593, 35.740444, 37.391556>,  <41.069656, 35.634815, 37.151398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.371593, 35.740444, 37.391556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655696, -0.280807, -0.700864,
		-0.016484, 0.922720, -0.385117,
		0.754845, 0.264073, 0.600396,
		41.598045, 35.819668, 37.571674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.620537, 36.202854, 36.919067>,  <41.069656, 35.634815, 37.151398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.620537, 36.202854, 36.919067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.773979, 35.910950, 37.145443>,  <41.866043, 35.735806, 37.281269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.773979, 35.910950, 37.145443>,  <41.620537, 36.202854, 36.919067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.773979, 35.910950, 37.145443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727049, -0.139217, -0.672323,
		0.569427, 0.669374, 0.477171,
		0.383606, -0.729765, 0.565941,
		41.889061, 35.692020, 37.315224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.387409, 36.263710, 37.090126>,  <41.620537, 36.202854, 36.919067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.387409, 36.263710, 37.090126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.256321, 35.887115, 37.058609>,  <42.177670, 35.661160, 37.039700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.256321, 35.887115, 37.058609>,  <42.387409, 36.263710, 37.090126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.256321, 35.887115, 37.058609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646122, -0.162501, -0.745734,
		0.689294, -0.295298, 0.661569,
		-0.327719, -0.941484, -0.078788,
		42.158005, 35.604671, 37.034973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.981949, 35.768986, 37.139900>,  <42.387409, 36.263710, 37.090126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.981949, 35.768986, 37.139900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.667500, 35.675072, 36.911201>,  <42.478832, 35.618725, 36.773983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.667500, 35.675072, 36.911201>,  <42.981949, 35.768986, 37.139900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.667500, 35.675072, 36.911201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556106, 0.135040, -0.820068,
		0.269746, -0.962622, 0.024406,
		-0.786119, -0.234782, -0.571746,
		42.431664, 35.604637, 36.739677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.566021, 36.116070, 37.679188>,  <42.981949, 35.768986, 37.139900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.566021, 36.116070, 37.679188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.596470, 35.752728, 37.843674>,  <43.614738, 35.534721, 37.942364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.596470, 35.752728, 37.843674>,  <43.566021, 36.116070, 37.679188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.596470, 35.752728, 37.843674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082532, 0.416733, 0.905275,
		-0.993676, -0.034977, 0.106693,
		0.076127, -0.908356, 0.411211,
		43.619308, 35.480221, 37.967037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.107929, 36.074875, 38.264019>,  <43.566021, 36.116070, 37.679188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.107929, 36.074875, 38.264019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.427284, 35.837730, 38.306137>,  <43.618896, 35.695442, 38.331409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.427284, 35.837730, 38.306137>,  <43.107929, 36.074875, 38.264019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.427284, 35.837730, 38.306137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206021, 0.433274, 0.877399,
		-0.565801, -0.678812, 0.468063,
		0.798389, -0.592864, 0.105297,
		43.666801, 35.659870, 38.337727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.069683, 35.826370, 38.962452>,  <43.107929, 36.074875, 38.264019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.069683, 35.826370, 38.962452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.431778, 35.849026, 38.794006>,  <43.649036, 35.862617, 38.692940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.431778, 35.849026, 38.794006>,  <43.069683, 35.826370, 38.962452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.431778, 35.849026, 38.794006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248289, 0.733755, 0.632421,
		0.344814, -0.677049, 0.650160,
		0.905238, 0.056640, -0.421113,
		43.703350, 35.866016, 38.667671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.539040, 35.918404, 39.500568>,  <43.069683, 35.826370, 38.962452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.539040, 35.918404, 39.500568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.767200, 36.022610, 39.188988>,  <43.904099, 36.085133, 39.002037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.767200, 36.022610, 39.188988>,  <43.539040, 35.918404, 39.500568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.767200, 36.022610, 39.188988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246766, 0.850200, 0.465044,
		0.783418, -0.457483, 0.420672,
		0.570406, 0.260516, -0.778954,
		43.938320, 36.100765, 38.955303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.157890, 36.136276, 39.785439>,  <43.539040, 35.918404, 39.500568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.157890, 36.136276, 39.785439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.117172, 36.306931, 39.425968>,  <44.092743, 36.409325, 39.210285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.117172, 36.306931, 39.425968>,  <44.157890, 36.136276, 39.785439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.117172, 36.306931, 39.425968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212700, 0.891811, 0.399289,
		0.971801, -0.150503, -0.181527,
		-0.101794, 0.426640, -0.898675,
		44.086636, 36.434921, 39.156364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.786755, 36.578667, 39.701962>,  <44.157890, 36.136276, 39.785439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.786755, 36.578667, 39.701962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.497993, 36.725529, 39.467339>,  <44.324738, 36.813644, 39.326565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.497993, 36.725529, 39.467339>,  <44.786755, 36.578667, 39.701962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.497993, 36.725529, 39.467339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198595, 0.921905, 0.332644,
		0.662882, 0.123650, -0.738443,
		-0.721905, 0.367155, -0.586558,
		44.281422, 36.835674, 39.291370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.021629, 37.246902, 39.536137>,  <44.786755, 36.578667, 39.701962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.021629, 37.246902, 39.536137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.631477, 37.262074, 39.449234>,  <44.397388, 37.271175, 39.397091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.631477, 37.262074, 39.449234>,  <45.021629, 37.246902, 39.536137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.631477, 37.262074, 39.449234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025201, 0.959478, 0.280653,
		0.219100, 0.279218, -0.934897,
		-0.975377, 0.037931, -0.217259,
		44.338863, 37.273453, 39.384056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.955677, 37.753067, 39.035679>,  <45.021629, 37.246902, 39.536137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.955677, 37.753067, 39.035679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.605202, 37.721256, 39.225826>,  <44.394917, 37.702171, 39.339912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.605202, 37.721256, 39.225826>,  <44.955677, 37.753067, 39.035679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.605202, 37.721256, 39.225826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068191, 0.955917, 0.285608,
		-0.477123, 0.282662, -0.832139,
		-0.876187, -0.079526, 0.475365,
		44.342346, 37.697399, 39.368435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.652077, 38.451103, 38.815857>,  <44.955677, 37.753067, 39.035679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.652077, 38.451103, 38.815857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.433998, 38.279800, 39.104122>,  <44.303150, 38.177017, 39.277081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.433998, 38.279800, 39.104122>,  <44.652077, 38.451103, 38.815857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.433998, 38.279800, 39.104122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308195, 0.901854, 0.302780,
		-0.779602, -0.057031, -0.623673,
		-0.545194, -0.428261, 0.720664,
		44.270439, 38.151321, 39.320320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.930367, 38.745110, 38.676086>,  <44.652077, 38.451103, 38.815857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.930367, 38.745110, 38.676086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.025021, 38.627487, 39.046501>,  <44.081814, 38.556915, 39.268749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.025021, 38.627487, 39.046501>,  <43.930367, 38.745110, 38.676086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.025021, 38.627487, 39.046501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432633, 0.821509, 0.371417,
		-0.869960, -0.488524, 0.067183,
		0.236638, -0.294053, 0.926032,
		44.096012, 38.539272, 39.324310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.405704, 38.878147, 38.922108>,  <43.930367, 38.745110, 38.676086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.405704, 38.878147, 38.922108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.641941, 38.837891, 39.242374>,  <43.783684, 38.813736, 39.434536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.641941, 38.837891, 39.242374>,  <43.405704, 38.878147, 38.922108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.641941, 38.837891, 39.242374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368776, 0.848867, 0.378720,
		-0.717778, -0.518937, 0.464219,
		0.590592, -0.100644, 0.800670,
		43.819118, 38.807697, 39.482574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.941742, 39.049206, 39.463032>,  <43.405704, 38.878147, 38.922108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.941742, 39.049206, 39.463032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.314049, 39.080448, 39.605904>,  <43.537434, 39.099194, 39.691628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.314049, 39.080448, 39.605904>,  <42.941742, 39.049206, 39.463032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.314049, 39.080448, 39.605904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245095, 0.858202, 0.451018,
		-0.271302, -0.507334, 0.817929,
		0.930765, 0.078108, 0.357177,
		43.593277, 39.103882, 39.713058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.907337, 39.097652, 40.139168>,  <42.941742, 39.049206, 39.463032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.907337, 39.097652, 40.139168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.269669, 39.254147, 40.074169>,  <43.487068, 39.348042, 40.035168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.269669, 39.254147, 40.074169>,  <42.907337, 39.097652, 40.139168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.269669, 39.254147, 40.074169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320872, 0.884064, 0.339813,
		0.276608, -0.255671, 0.926348,
		0.905831, 0.391234, -0.162501,
		43.541416, 39.371517, 40.025417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.064697, 39.488789, 40.773159>,  <42.907337, 39.097652, 40.139168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.064697, 39.488789, 40.773159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.286129, 39.636677, 40.474667>,  <43.418987, 39.725410, 40.295570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.286129, 39.636677, 40.474667>,  <43.064697, 39.488789, 40.773159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.286129, 39.636677, 40.474667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319845, 0.921718, 0.219398,
		0.768927, 0.117223, 0.628497,
		0.553579, 0.369723, -0.746228,
		43.452202, 39.747593, 40.250797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.510002, 40.006500, 41.118965>,  <43.064697, 39.488789, 40.773159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.510002, 40.006500, 41.118965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.474129, 40.092682, 40.730011>,  <43.452606, 40.144390, 40.496639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.474129, 40.092682, 40.730011>,  <43.510002, 40.006500, 41.118965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.474129, 40.092682, 40.730011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323027, 0.917252, 0.233029,
		0.942131, 0.335005, -0.012661,
		-0.089680, 0.215454, -0.972387,
		43.447224, 40.157318, 40.438293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.865078, 40.681080, 41.036900>,  <43.510002, 40.006500, 41.118965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.865078, 40.681080, 41.036900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.661205, 40.667984, 40.693005>,  <43.538883, 40.660126, 40.486668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.661205, 40.667984, 40.693005>,  <43.865078, 40.681080, 41.036900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.661205, 40.667984, 40.693005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456513, 0.857295, 0.237993,
		0.729259, 0.513783, -0.451894,
		-0.509683, -0.032737, -0.859739,
		43.508301, 40.658161, 40.435081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.061817, 41.262722, 40.573929>,  <43.865078, 40.681080, 41.036900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.061817, 41.262722, 40.573929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.701878, 41.185749, 40.417339>,  <43.485916, 41.139565, 40.323387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.701878, 41.185749, 40.417339>,  <44.061817, 41.262722, 40.573929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.701878, 41.185749, 40.417339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266264, 0.953157, 0.143508,
		0.345519, 0.233370, -0.908931,
		-0.899845, -0.192431, -0.391472,
		43.431923, 41.128021, 40.299896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.924408, 41.855106, 40.155193>,  <44.061817, 41.262722, 40.573929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.924408, 41.855106, 40.155193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.570236, 41.669250, 40.159473>,  <43.357731, 41.557735, 40.162041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.570236, 41.669250, 40.159473>,  <43.924408, 41.855106, 40.155193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.570236, 41.669250, 40.159473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459877, 0.879216, 0.124469,
		-0.067243, 0.105287, -0.992166,
		-0.885433, -0.464644, 0.010702,
		43.304607, 41.529858, 40.162685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.534573, 42.101662, 39.616852>,  <43.924408, 41.855106, 40.155193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.534573, 42.101662, 39.616852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.264984, 41.963181, 39.877895>,  <43.103230, 41.880093, 40.034523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.264984, 41.963181, 39.877895>,  <43.534573, 42.101662, 39.616852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.264984, 41.963181, 39.877895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573433, 0.802116, -0.166684,
		-0.465763, -0.486570, -0.739130,
		-0.673972, -0.346207, 0.652612,
		43.062794, 41.859318, 40.073677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.918720, 42.315159, 39.386066>,  <43.534573, 42.101662, 39.616852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.918720, 42.315159, 39.386066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.810616, 42.229187, 39.761463>,  <42.745750, 42.177605, 39.986702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.810616, 42.229187, 39.761463>,  <42.918720, 42.315159, 39.386066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.810616, 42.229187, 39.761463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605963, 0.795456, 0.007668,
		-0.748175, -0.566618, -0.345222,
		-0.270265, -0.214929, 0.938489,
		42.729538, 42.164707, 40.043011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.244831, 42.449970, 39.478001>,  <42.918720, 42.315159, 39.386066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.244831, 42.449970, 39.478001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.365612, 42.465942, 39.858994>,  <42.438080, 42.475525, 40.087589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.365612, 42.465942, 39.858994>,  <42.244831, 42.449970, 39.478001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.365612, 42.465942, 39.858994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621749, 0.765638, 0.165004,
		-0.722671, -0.642031, 0.256013,
		0.301951, 0.039932, 0.952487,
		42.456196, 42.477921, 40.144741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.657211, 42.505852, 39.926979>,  <42.244831, 42.449970, 39.478001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.657211, 42.505852, 39.926979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.965794, 42.639706, 40.143448>,  <42.150944, 42.720016, 40.273331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.965794, 42.639706, 40.143448>,  <41.657211, 42.505852, 39.926979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.965794, 42.639706, 40.143448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534438, 0.802351, 0.265723,
		-0.345290, -0.494218, 0.797824,
		0.771460, 0.334636, 0.541173,
		42.197231, 42.740097, 40.305801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.481026, 42.602654, 40.619724>,  <41.657211, 42.505852, 39.926979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.481026, 42.602654, 40.619724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.784508, 42.852524, 40.545811>,  <41.966599, 43.002445, 40.501461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.784508, 42.852524, 40.545811>,  <41.481026, 42.602654, 40.619724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.784508, 42.852524, 40.545811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585698, 0.778300, 0.226291,
		0.285175, -0.063461, 0.956372,
		0.758705, 0.624678, -0.184783,
		42.012119, 43.039928, 40.490376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.029331, 43.041637, 40.190659>,  <41.481026, 42.602654, 40.619724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.029331, 43.041637, 40.190659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.998550, 43.377731, 40.405354>,  <40.980083, 43.579388, 40.534172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.998550, 43.377731, 40.405354>,  <41.029331, 43.041637, 40.190659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.998550, 43.377731, 40.405354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.944962, 0.110236, -0.308049,
		-0.318000, -0.530903, 0.785505,
		-0.076953, 0.840232, 0.536738,
		40.975464, 43.629803, 40.566376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.420433, 43.500969, 40.301643>,  <41.029331, 43.041637, 40.190659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.420433, 43.500969, 40.301643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.631298, 43.730312, 40.050770>,  <40.757816, 43.867920, 39.900246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.631298, 43.730312, 40.050770>,  <40.420433, 43.500969, 40.301643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.631298, 43.730312, 40.050770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225275, -0.617364, -0.753733,
		-0.819358, 0.538631, -0.196291,
		0.527166, 0.573357, -0.627182,
		40.789448, 43.902321, 39.862614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.980640, 43.864658, 39.806793>,  <40.420433, 43.500969, 40.301643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.980640, 43.864658, 39.806793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.349941, 43.806454, 39.664558>,  <40.571522, 43.771530, 39.579220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.349941, 43.806454, 39.664558>,  <39.980640, 43.864658, 39.806793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.349941, 43.806454, 39.664558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368195, -0.599469, -0.710682,
		-0.109749, 0.787060, -0.607035,
		0.923249, -0.145511, -0.355582,
		40.626915, 43.762802, 39.557884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.716812, 43.149860, 39.898006>,  <39.980640, 43.864658, 39.806793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.716812, 43.149860, 39.898006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.753410, 42.756313, 39.836521>,  <39.775368, 42.520184, 39.799629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.753410, 42.756313, 39.836521>,  <39.716812, 43.149860, 39.898006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.753410, 42.756313, 39.836521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249603, 0.126774, -0.960014,
		0.964016, 0.126206, -0.233978,
		0.091497, -0.983870, -0.153713,
		39.780861, 42.461151, 39.790409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.118526, 42.998940, 39.387039>,  <39.716812, 43.149860, 39.898006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.118526, 42.998940, 39.387039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.900776, 42.663403, 39.386955>,  <39.770126, 42.462082, 39.386906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.900776, 42.663403, 39.386955>,  <40.118526, 42.998940, 39.387039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.900776, 42.663403, 39.386955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234578, 0.152470, -0.960065,
		0.805372, -0.522592, -0.279775,
		-0.544380, -0.838839, -0.000207,
		39.737461, 42.411751, 39.386894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.281639, 42.709290, 38.854515>,  <40.118526, 42.998940, 39.387039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.281639, 42.709290, 38.854515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.907513, 42.583370, 38.919132>,  <39.683037, 42.507820, 38.957901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.907513, 42.583370, 38.919132>,  <40.281639, 42.709290, 38.854515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.907513, 42.583370, 38.919132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250767, 0.267683, -0.930302,
		0.249613, -0.910632, -0.329308,
		-0.935313, -0.314795, 0.161539,
		39.626919, 42.488930, 38.967594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.882927, 42.300568, 38.229553>,  <40.281639, 42.709290, 38.854515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.882927, 42.300568, 38.229553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.625538, 42.507294, 38.455421>,  <39.471104, 42.631329, 38.590942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.625538, 42.507294, 38.455421>,  <39.882927, 42.300568, 38.229553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.625538, 42.507294, 38.455421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383336, 0.420946, -0.822106,
		-0.662570, -0.745458, -0.072752,
		-0.643470, 0.516814, 0.564667,
		39.432495, 42.662338, 38.624821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.291431, 42.862621, 38.047352>,  <39.882927, 42.300568, 38.229553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.291431, 42.862621, 38.047352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.665405, 42.999729, 38.084019>,  <40.889790, 43.081993, 38.106018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.665405, 42.999729, 38.084019>,  <40.291431, 42.862621, 38.047352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.665405, 42.999729, 38.084019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354500, -0.891478, -0.282129,
		-0.014991, 0.296267, -0.954988,
		0.934936, 0.342772, 0.091663,
		40.945885, 43.102562, 38.111519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.595573, 42.625675, 37.464161>,  <40.291431, 42.862621, 38.047352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.595573, 42.625675, 37.464161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.881748, 42.701660, 37.733105>,  <41.053452, 42.747250, 37.894470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.881748, 42.701660, 37.733105>,  <40.595573, 42.625675, 37.464161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.881748, 42.701660, 37.733105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471581, -0.841349, -0.264088,
		0.515521, 0.506009, -0.691515,
		0.715437, 0.189963, 0.672357,
		41.096378, 42.758648, 37.934811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.181046, 42.578827, 37.139938>,  <40.595573, 42.625675, 37.464161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.181046, 42.578827, 37.139938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.260002, 42.522228, 37.527962>,  <41.307377, 42.488270, 37.760777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.260002, 42.522228, 37.527962>,  <41.181046, 42.578827, 37.139938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.260002, 42.522228, 37.527962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551261, -0.802237, -0.229187,
		0.810647, 0.579996, -0.080354,
		0.197390, -0.141494, 0.970060,
		41.319218, 42.479778, 37.818981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.868839, 42.524822, 37.284794>,  <41.181046, 42.578827, 37.139938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.868839, 42.524822, 37.284794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.666176, 42.318806, 37.561352>,  <41.544579, 42.195198, 37.727287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.666176, 42.318806, 37.561352>,  <41.868839, 42.524822, 37.284794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.666176, 42.318806, 37.561352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548532, -0.811271, -0.202369,
		0.665140, 0.276722, 0.693552,
		-0.506658, -0.515039, 0.691399,
		41.514179, 42.164295, 37.768772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.371483, 42.108837, 37.653942>,  <41.868839, 42.524822, 37.284794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.371483, 42.108837, 37.653942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.022312, 41.930130, 37.732323>,  <41.812809, 41.822906, 37.779350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.022312, 41.930130, 37.732323>,  <42.371483, 42.108837, 37.653942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.022312, 41.930130, 37.732323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459826, -0.887670, 0.024556,
		0.162969, 0.111539, 0.980306,
		-0.872927, -0.446768, 0.195951,
		41.760433, 41.796101, 37.791107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.535358, 41.673309, 38.093292>,  <42.371483, 42.108837, 37.653942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.535358, 41.673309, 38.093292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.175068, 41.551487, 37.969402>,  <41.958893, 41.478394, 37.895069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.175068, 41.551487, 37.969402>,  <42.535358, 41.673309, 38.093292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.175068, 41.551487, 37.969402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326851, -0.944832, -0.021462,
		-0.286101, -0.120565, 0.950584,
		-0.900730, -0.304559, -0.309725,
		41.904850, 41.460121, 37.876484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.406006, 41.074024, 38.498379>,  <42.535358, 41.673309, 38.093292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.406006, 41.074024, 38.498379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.184101, 41.054432, 38.166153>,  <42.050957, 41.042679, 37.966816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.184101, 41.054432, 38.166153>,  <42.406006, 41.074024, 38.498379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.184101, 41.054432, 38.166153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427855, -0.872951, -0.234300,
		-0.713569, -0.485343, 0.505234,
		-0.554761, -0.048977, -0.830567,
		42.017673, 41.039738, 37.916985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.200806, 40.402206, 38.441257>,  <42.406006, 41.074024, 38.498379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.200806, 40.402206, 38.441257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.126877, 40.494057, 38.059029>,  <42.082520, 40.549168, 37.829693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.126877, 40.494057, 38.059029>,  <42.200806, 40.402206, 38.441257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.126877, 40.494057, 38.059029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507242, -0.810512, -0.292876,
		-0.841752, -0.538835, 0.033324,
		-0.184821, 0.229626, -0.955569,
		42.071430, 40.562946, 37.772358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.835503, 39.874611, 38.106171>,  <42.200806, 40.402206, 38.441257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.835503, 39.874611, 38.106171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.022007, 40.062962, 37.806606>,  <42.133911, 40.175972, 37.626865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.022007, 40.062962, 37.806606>,  <41.835503, 39.874611, 38.106171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.022007, 40.062962, 37.806606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385775, -0.870061, -0.306874,
		-0.796101, -0.145827, -0.587331,
		0.466263, 0.470881, -0.748912,
		42.161884, 40.204227, 37.581932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.849255, 39.402374, 37.567062>,  <41.835503, 39.874611, 38.106171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.849255, 39.402374, 37.567062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.097275, 39.662895, 37.392094>,  <42.246086, 39.819210, 37.287113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.097275, 39.662895, 37.392094>,  <41.849255, 39.402374, 37.567062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.097275, 39.662895, 37.392094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559581, -0.757920, -0.335300,
		-0.549915, -0.036872, -0.834406,
		0.620050, 0.651305, -0.437424,
		42.283291, 39.858288, 37.260868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.801754, 39.306416, 36.888119>,  <41.849255, 39.402374, 37.567062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.801754, 39.306416, 36.888119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.158607, 39.482513, 36.928677>,  <42.372719, 39.588173, 36.953011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.158607, 39.482513, 36.928677>,  <41.801754, 39.306416, 36.888119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.158607, 39.482513, 36.928677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428551, -0.753661, -0.498337,
		-0.142973, 0.488037, -0.861034,
		0.892134, 0.440245, 0.101396,
		42.426247, 39.614586, 36.959095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.109379, 39.118446, 36.333412>,  <41.801754, 39.306416, 36.888119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.109379, 39.118446, 36.333412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.426174, 39.246662, 36.541260>,  <42.616253, 39.323593, 36.665966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.426174, 39.246662, 36.541260>,  <42.109379, 39.118446, 36.333412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.426174, 39.246662, 36.541260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568436, -0.697695, -0.436007,
		0.222773, 0.640682, -0.734778,
		0.791993, 0.320544, 0.519614,
		42.663773, 39.342827, 36.697144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.624874, 39.285072, 35.885368>,  <42.109379, 39.118446, 36.333412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.624874, 39.285072, 35.885368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.810287, 39.200066, 36.229454>,  <42.921535, 39.149059, 36.435905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.810287, 39.200066, 36.229454>,  <42.624874, 39.285072, 35.885368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.810287, 39.200066, 36.229454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535162, -0.706601, -0.462944,
		0.706215, 0.674945, -0.213800,
		0.463533, -0.212520, 0.860216,
		42.949348, 39.136311, 36.487518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.349178, 39.212784, 35.662502>,  <42.624874, 39.285072, 35.885368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.349178, 39.212784, 35.662502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.309704, 39.035381, 36.018829>,  <43.286018, 38.928940, 36.232628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.309704, 39.035381, 36.018829>,  <43.349178, 39.212784, 35.662502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.309704, 39.035381, 36.018829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733598, -0.637285, -0.236010,
		0.672379, 0.630213, 0.388249,
		-0.098689, -0.443507, 0.890821,
		43.280098, 38.902328, 36.286076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.056904, 39.147671, 35.941002>,  <43.349178, 39.212784, 35.662502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.056904, 39.147671, 35.941002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.832569, 38.882301, 36.139126>,  <43.697968, 38.723080, 36.257999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.832569, 38.882301, 36.139126>,  <44.056904, 39.147671, 35.941002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.832569, 38.882301, 36.139126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742427, -0.667767, -0.053756,
		0.366415, 0.337584, 0.867051,
		-0.560840, -0.663419, 0.495311,
		43.664318, 38.683277, 36.287720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.477028, 38.808014, 36.350559>,  <44.056904, 39.147671, 35.941002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.477028, 38.808014, 36.350559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.162678, 38.562325, 36.379189>,  <43.974068, 38.414909, 36.396366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.162678, 38.562325, 36.379189>,  <44.477028, 38.808014, 36.350559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.162678, 38.562325, 36.379189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606518, -0.788181, -0.104431,
		0.120560, -0.038657, 0.991953,
		-0.785876, -0.614228, 0.071576,
		43.926914, 38.378056, 36.400661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.775593, 38.255486, 36.609406>,  <44.477028, 38.808014, 36.350559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.775593, 38.255486, 36.609406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.414799, 38.111450, 36.514103>,  <44.198322, 38.025028, 36.456921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.414799, 38.111450, 36.514103>,  <44.775593, 38.255486, 36.609406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.414799, 38.111450, 36.514103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382140, -0.922624, -0.052286,
		-0.200990, -0.138207, 0.969795,
		-0.901982, -0.360089, -0.238253,
		44.144203, 38.003422, 36.442627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.488358, 37.806194, 37.166656>,  <44.775593, 38.255486, 36.609406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.488358, 37.806194, 37.166656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.331127, 37.729000, 36.807045>,  <44.236790, 37.682682, 36.591278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.331127, 37.729000, 36.807045>,  <44.488358, 37.806194, 37.166656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.331127, 37.729000, 36.807045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286682, -0.954714, 0.079594,
		-0.873671, -0.226447, 0.430604,
		-0.393080, -0.192985, -0.899024,
		44.213203, 37.671104, 36.537338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.356575, 37.156303, 37.191360>,  <44.488358, 37.806194, 37.166656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.356575, 37.156303, 37.191360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.332745, 37.194706, 36.793922>,  <44.318447, 37.217747, 36.555458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.332745, 37.194706, 36.793922>,  <44.356575, 37.156303, 37.191360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.332745, 37.194706, 36.793922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466688, -0.877206, -0.112746,
		-0.882413, -0.470417, 0.007454,
		-0.059576, 0.096010, -0.993596,
		44.314873, 37.223511, 36.495842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.956532, 36.604691, 37.004112>,  <44.356575, 37.156303, 37.191360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.956532, 36.604691, 37.004112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.186420, 36.718712, 36.697273>,  <44.324356, 36.787125, 36.513168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.186420, 36.718712, 36.697273>,  <43.956532, 36.604691, 37.004112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.186420, 36.718712, 36.697273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374967, -0.924912, -0.062759,
		-0.727386, -0.251566, -0.638455,
		0.574726, 0.285049, -0.767096,
		44.358837, 36.804226, 36.467144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.937027, 36.048412, 36.477974>,  <43.956532, 36.604691, 37.004112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.937027, 36.048412, 36.477974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.259678, 36.272728, 36.403290>,  <44.453270, 36.407318, 36.358479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.259678, 36.272728, 36.403290>,  <43.937027, 36.048412, 36.477974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.259678, 36.272728, 36.403290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532646, -0.826620, -0.181622,
		-0.256194, 0.047049, -0.965480,
		0.806630, 0.560790, -0.186715,
		44.501667, 36.440964, 36.347275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.345207, 35.626312, 35.983192>,  <43.937027, 36.048412, 36.477974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.345207, 35.626312, 35.983192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.595673, 35.896008, 36.139820>,  <44.745953, 36.057823, 36.233795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.595673, 35.896008, 36.139820>,  <44.345207, 35.626312, 35.983192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.595673, 35.896008, 36.139820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756505, -0.646934, -0.095795,
		0.188729, 0.356206, -0.915150,
		0.626165, 0.674236, 0.391566,
		44.783524, 36.098278, 36.257290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.971264, 35.449116, 35.607677>,  <44.345207, 35.626312, 35.983192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.971264, 35.449116, 35.607677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.090359, 35.650085, 35.932373>,  <45.161816, 35.770668, 36.127190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.090359, 35.650085, 35.932373>,  <44.971264, 35.449116, 35.607677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.090359, 35.650085, 35.932373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818265, -0.572291, 0.054086,
		0.491725, 0.648114, -0.581511,
		0.297739, 0.502426, 0.811738,
		45.179680, 35.800812, 36.175896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.715504, 35.674706, 35.455208>,  <44.971264, 35.449116, 35.607677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.715504, 35.674706, 35.455208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.629711, 35.635033, 35.843880>,  <45.578236, 35.611229, 36.077084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.629711, 35.635033, 35.843880>,  <45.715504, 35.674706, 35.455208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.629711, 35.635033, 35.843880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717094, -0.691436, 0.087713,
		0.663155, 0.715598, 0.219420,
		-0.214483, -0.099177, 0.971680,
		45.565365, 35.605278, 36.135384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.304745, 35.669144, 35.736015>,  <45.715504, 35.674706, 35.455208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.304745, 35.669144, 35.736015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.066803, 35.497364, 36.007820>,  <45.924038, 35.394299, 36.170902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.066803, 35.497364, 36.007820>,  <46.304745, 35.669144, 35.736015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.066803, 35.497364, 36.007820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659928, -0.743557, 0.107786,
		0.458965, 0.512542, 0.725707,
		-0.594850, -0.429445, 0.679508,
		45.888348, 35.368530, 36.211674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.779991, 35.341721, 35.223171>,  <46.304745, 35.669144, 35.736015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.779991, 35.341721, 35.223171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.981419, 35.135578, 34.945805>,  <47.102276, 35.011894, 34.779385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.981419, 35.135578, 34.945805>,  <46.779991, 35.341721, 35.223171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.981419, 35.135578, 34.945805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470185, -0.836815, 0.280477,
		-0.724804, 0.184792, -0.663710,
		0.503572, -0.515357, -0.693413,
		47.132488, 34.980972, 34.737782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.506477, 35.435745, 35.485626>,  <46.779991, 35.341721, 35.223171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.506477, 35.435745, 35.485626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.860752, 35.250439, 35.497856>,  <48.073318, 35.139256, 35.505192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.860752, 35.250439, 35.497856>,  <47.506477, 35.435745, 35.485626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.860752, 35.250439, 35.497856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423732, -0.833502, -0.354578,
		0.189745, 0.301093, -0.934526,
		0.885691, -0.463268, 0.030570,
		48.126461, 35.111458, 35.507027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.678585, 35.166832, 34.728767>,  <47.506477, 35.435745, 35.485626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.678585, 35.166832, 34.728767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.815491, 34.941914, 35.029881>,  <47.897636, 34.806961, 35.210548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.815491, 34.941914, 35.029881>,  <47.678585, 35.166832, 34.728767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.815491, 34.941914, 35.029881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388469, -0.814171, -0.431528,
		0.855538, -0.144733, -0.497099,
		0.342267, -0.562296, 0.752779,
		47.918171, 34.773224, 35.255714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.284428, 37.855732, 44.871349> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.001556, 37.589714, 44.775337>,  <32.831833, 37.430103, 44.717731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.001556, 37.589714, 44.775337>,  <33.284428, 37.855732, 44.871349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.001556, 37.589714, 44.775337> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319248, 0.002558, -0.947668,
		0.630855, -0.746799, 0.210505,
		-0.707179, -0.665045, -0.240028,
		32.789402, 37.390202, 44.703327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.677197, 37.366848, 44.478184>,  <33.284428, 37.855732, 44.871349>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.677197, 37.366848, 44.478184> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.291256, 37.311703, 44.388691>,  <33.059692, 37.278614, 44.334995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.291256, 37.311703, 44.388691>,  <33.677197, 37.366848, 44.478184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.291256, 37.311703, 44.388691> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226533, -0.004780, -0.973992,
		0.133213, -0.990439, 0.035844,
		-0.964851, -0.137868, -0.223731,
		33.001801, 37.270344, 44.321571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.630955, 36.669041, 44.090584>,  <33.677197, 37.366848, 44.478184>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.630955, 36.669041, 44.090584> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.316093, 36.900352, 44.004807>,  <33.127178, 37.039139, 43.953339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.316093, 36.900352, 44.004807>,  <33.630955, 36.669041, 44.090584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.316093, 36.900352, 44.004807> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312067, 0.073527, -0.947211,
		-0.531981, -0.812521, -0.238338,
		-0.787153, 0.578275, -0.214446,
		33.079948, 37.073833, 43.940472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.517574, 36.406586, 43.454845>,  <33.630955, 36.669041, 44.090584>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.517574, 36.406586, 43.454845> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.311852, 36.749538, 43.462734>,  <33.188416, 36.955311, 43.467468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.311852, 36.749538, 43.462734>,  <33.517574, 36.406586, 43.454845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.311852, 36.749538, 43.462734> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212783, 0.149850, -0.965541,
		-0.830788, -0.492391, -0.259504,
		-0.514310, 0.857378, 0.019721,
		33.157558, 37.006752, 43.468651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.144192, 36.466431, 42.804111>,  <33.517574, 36.406586, 43.454845>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.144192, 36.466431, 42.804111> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.146275, 36.841824, 42.942226>,  <33.147526, 37.067059, 43.025093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.146275, 36.841824, 42.942226>,  <33.144192, 36.466431, 42.804111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.146275, 36.841824, 42.942226> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004277, 0.345265, -0.938496,
		-0.999977, 0.006366, -0.002215,
		0.005210, 0.938484, 0.345285,
		33.147839, 37.123367, 43.045811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.930595, 36.792717, 42.192387>,  <33.144192, 36.466431, 42.804111>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.930595, 36.792717, 42.192387> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.072388, 37.078808, 42.433315>,  <33.157463, 37.250462, 42.577873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.072388, 37.078808, 42.433315>,  <32.930595, 36.792717, 42.192387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.072388, 37.078808, 42.433315> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305469, 0.520233, -0.797525,
		-0.883762, 0.466694, -0.034070,
		0.354476, 0.715230, 0.602323,
		33.178730, 37.293377, 42.614014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.744045, 37.373440, 41.912727>,  <32.930595, 36.792717, 42.192387>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.744045, 37.373440, 41.912727> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.076267, 37.472179, 42.112427>,  <33.275600, 37.531422, 42.232246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.076267, 37.472179, 42.112427>,  <32.744045, 37.373440, 41.912727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.076267, 37.472179, 42.112427> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386247, 0.390518, -0.835649,
		-0.401243, 0.886883, 0.229002,
		0.830552, 0.246847, 0.499249,
		33.325432, 37.546234, 42.262203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.971916, 38.036175, 41.642883>,  <32.744045, 37.373440, 41.912727>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.971916, 38.036175, 41.642883> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.300877, 37.918877, 41.837891>,  <33.498253, 37.848499, 41.954895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.300877, 37.918877, 41.837891>,  <32.971916, 38.036175, 41.642883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.300877, 37.918877, 41.837891> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568147, 0.378870, -0.730525,
		0.029517, 0.877762, 0.478187,
		0.822397, -0.293244, 0.487515,
		33.547596, 37.830902, 41.984146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.361210, 38.572998, 41.586517>,  <32.971916, 38.036175, 41.642883>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.361210, 38.572998, 41.586517> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.586243, 38.252552, 41.668205>,  <33.721264, 38.060284, 41.717216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.586243, 38.252552, 41.668205>,  <33.361210, 38.572998, 41.586517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.586243, 38.252552, 41.668205> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598885, 0.224615, -0.768690,
		0.569942, 0.554758, 0.606144,
		0.562586, -0.801119, 0.204219,
		33.755020, 38.012215, 41.729469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.115139, 38.800640, 41.390297>,  <33.361210, 38.572998, 41.586517>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.115139, 38.800640, 41.390297> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.093834, 38.401543, 41.373989>,  <34.081051, 38.162083, 41.364204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.093834, 38.401543, 41.373989>,  <34.115139, 38.800640, 41.390297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.093834, 38.401543, 41.373989> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664187, -0.004907, -0.747550,
		0.745667, -0.066895, 0.662952,
		-0.053260, -0.997748, -0.040772,
		34.077854, 38.102219, 41.361759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.839172, 38.533783, 41.228481>,  <34.115139, 38.800640, 41.390297>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.839172, 38.533783, 41.228481> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.596897, 38.235950, 41.116238>,  <34.451534, 38.057251, 41.048889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.596897, 38.235950, 41.116238>,  <34.839172, 38.533783, 41.228481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.596897, 38.235950, 41.116238> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629548, -0.232741, -0.741284,
		0.486637, -0.625643, 0.609717,
		-0.605686, -0.744582, -0.280612,
		34.415192, 38.012577, 41.032055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.327023, 38.005741, 41.081810>,  <34.839172, 38.533783, 41.228481>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.327023, 38.005741, 41.081810> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.987797, 37.888897, 40.904972>,  <34.784260, 37.818790, 40.798870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.987797, 37.888897, 40.904972>,  <35.327023, 38.005741, 41.081810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.987797, 37.888897, 40.904972> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524176, -0.340328, -0.780651,
		0.077578, -0.893783, 0.441740,
		-0.848069, -0.292111, -0.442098,
		34.733376, 37.801262, 40.772343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.446590, 37.270504, 40.850155>,  <35.327023, 38.005741, 41.081810>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.446590, 37.270504, 40.850155> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.151218, 37.404308, 40.615952>,  <34.973995, 37.484592, 40.475430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.151218, 37.404308, 40.615952>,  <35.446590, 37.270504, 40.850155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.151218, 37.404308, 40.615952> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484957, -0.339866, -0.805796,
		-0.468545, -0.878971, 0.088742,
		-0.738432, 0.334516, -0.585506,
		34.929688, 37.504662, 40.440300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.287838, 36.670242, 40.430466>,  <35.446590, 37.270504, 40.850155>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.287838, 36.670242, 40.430466> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.130886, 36.974705, 40.223904>,  <35.036716, 37.157383, 40.099964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.130886, 36.974705, 40.223904>,  <35.287838, 36.670242, 40.430466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.130886, 36.974705, 40.223904> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435321, -0.340903, -0.833235,
		-0.810270, -0.551744, -0.197587,
		-0.392375, 0.761159, -0.516409,
		35.013172, 37.203053, 40.068981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.185116, 36.353954, 39.932953>,  <35.287838, 36.670242, 40.430466>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.185116, 36.353954, 39.932953> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.173771, 36.737080, 39.818562>,  <35.166965, 36.966957, 39.749928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.173771, 36.737080, 39.818562>,  <35.185116, 36.353954, 39.932953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.173771, 36.737080, 39.818562> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272434, -0.267854, -0.924140,
		-0.961756, -0.104119, -0.253345,
		-0.028361, 0.957817, -0.285976,
		35.165264, 37.024426, 39.732769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.763058, 36.322315, 39.329693>,  <35.185116, 36.353954, 39.932953>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.763058, 36.322315, 39.329693> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.003529, 36.640736, 39.357674>,  <35.147812, 36.831787, 39.374462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.003529, 36.640736, 39.357674>,  <34.763058, 36.322315, 39.329693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.003529, 36.640736, 39.357674> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365501, -0.196069, -0.909927,
		-0.710634, 0.572590, -0.408829,
		0.601173, 0.796052, 0.069949,
		35.183880, 36.879551, 39.378658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.774006, 36.577007, 38.666252>,  <34.763058, 36.322315, 39.329693>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.774006, 36.577007, 38.666252> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.077354, 36.776623, 38.833984>,  <35.259365, 36.896393, 38.934624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.077354, 36.776623, 38.833984>,  <34.774006, 36.577007, 38.666252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.077354, 36.776623, 38.833984> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453696, 0.057773, -0.889282,
		-0.468010, 0.864653, -0.182598,
		0.758371, 0.499036, 0.419328,
		35.304867, 36.926334, 38.959782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.962860, 37.166904, 38.228619>,  <34.774006, 36.577007, 38.666252>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.962860, 37.166904, 38.228619> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.284302, 37.112373, 38.460354>,  <35.477169, 37.079655, 38.599396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.284302, 37.112373, 38.460354>,  <34.962860, 37.166904, 38.228619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.284302, 37.112373, 38.460354> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593850, 0.119090, -0.795714,
		0.039482, 0.983480, 0.176659,
		0.803607, -0.136325, 0.579337,
		35.525383, 37.071476, 38.634155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.463295, 37.754772, 38.115421>,  <34.962860, 37.166904, 38.228619>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.463295, 37.754772, 38.115421> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.649937, 37.419724, 38.229034>,  <35.761921, 37.218697, 38.297203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.649937, 37.419724, 38.229034>,  <35.463295, 37.754772, 38.115421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.649937, 37.419724, 38.229034> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518119, -0.001413, -0.855308,
		0.716823, 0.546253, 0.433327,
		0.466602, -0.837619, 0.284037,
		35.789917, 37.168438, 38.314247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.134697, 37.920296, 38.086296>,  <35.463295, 37.754772, 38.115421>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.134697, 37.920296, 38.086296> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.145626, 37.520447, 38.086475>,  <36.152184, 37.280537, 38.086582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.145626, 37.520447, 38.086475>,  <36.134697, 37.920296, 38.086296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.145626, 37.520447, 38.086475> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540585, 0.014403, -0.841166,
		0.840845, 0.023228, 0.540777,
		0.027327, -0.999627, 0.000446,
		36.153824, 37.220558, 38.086609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.774059, 37.808384, 37.850746>,  <36.134697, 37.920296, 38.086296>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.774059, 37.808384, 37.850746> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.625565, 37.439323, 37.808998>,  <36.536469, 37.217888, 37.783951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.625565, 37.439323, 37.808998>,  <36.774059, 37.808384, 37.850746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.625565, 37.439323, 37.808998> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595018, -0.150098, -0.789573,
		0.712836, -0.355223, 0.604717,
		-0.371241, -0.922653, -0.104369,
		36.514191, 37.162529, 37.777687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.313488, 37.431667, 37.831932>,  <36.774059, 37.808384, 37.850746>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.313488, 37.431667, 37.831932> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.014973, 37.246952, 37.640179>,  <36.835865, 37.136124, 37.525127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.014973, 37.246952, 37.640179>,  <37.313488, 37.431667, 37.831932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.014973, 37.246952, 37.640179> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539515, 0.002143, -0.841973,
		0.389840, -0.886988, 0.247542,
		-0.746289, -0.461787, -0.479379,
		36.791084, 37.108418, 37.496365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.104942, 37.566238, 38.000858>,  <37.313488, 37.431667, 37.831932>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.104942, 37.566238, 38.000858> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.493050, 37.632515, 38.071423>,  <38.725914, 37.672279, 38.113762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.493050, 37.632515, 38.071423>,  <38.104942, 37.566238, 38.000858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.493050, 37.632515, 38.071423> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213509, 0.242785, 0.946292,
		0.113960, -0.955826, 0.270943,
		0.970272, 0.165688, 0.176410,
		38.784130, 37.682220, 38.124344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.319355, 37.172352, 38.616074>,  <38.104942, 37.566238, 38.000858>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.319355, 37.172352, 38.616074> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.561653, 37.486214, 38.563328>,  <38.707031, 37.674530, 38.531681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.561653, 37.486214, 38.563328>,  <38.319355, 37.172352, 38.616074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.561653, 37.486214, 38.563328> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110638, 0.247185, 0.962631,
		0.787926, -0.568524, 0.236544,
		0.605749, 0.784653, -0.131863,
		38.743378, 37.721611, 38.523769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.853584, 37.050964, 39.053135>,  <38.319355, 37.172352, 38.616074>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.853584, 37.050964, 39.053135> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.828926, 37.445168, 38.989925>,  <38.814129, 37.681690, 38.952000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.828926, 37.445168, 38.989925>,  <38.853584, 37.050964, 39.053135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.828926, 37.445168, 38.989925> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058371, 0.161610, 0.985127,
		0.996390, 0.051509, -0.067488,
		-0.061650, 0.985510, -0.158020,
		38.810432, 37.740822, 38.942520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.255608, 37.345783, 39.507481>,  <38.853584, 37.050964, 39.053135>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.255608, 37.345783, 39.507481> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.029396, 37.658047, 39.401085>,  <38.893669, 37.845406, 39.337246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.029396, 37.658047, 39.401085>,  <39.255608, 37.345783, 39.507481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.029396, 37.658047, 39.401085> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040696, 0.295712, 0.954410,
		0.823727, 0.550567, -0.135463,
		-0.565525, 0.780660, -0.265992,
		38.859737, 37.892246, 39.321289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.609764, 38.026093, 39.839962>,  <39.255608, 37.345783, 39.507481>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.609764, 38.026093, 39.839962> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.218838, 38.077908, 39.772945>,  <38.984280, 38.108997, 39.732735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.218838, 38.077908, 39.772945>,  <39.609764, 38.026093, 39.839962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.218838, 38.077908, 39.772945> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101994, 0.405427, 0.908420,
		0.185598, 0.904903, -0.383019,
		-0.977318, 0.129535, -0.167541,
		38.925644, 38.116768, 39.722683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.339767, 38.571495, 40.367062>,  <39.609764, 38.026093, 39.839962>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.339767, 38.571495, 40.367062> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.980030, 38.456501, 40.235287>,  <38.764187, 38.387505, 40.156223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.980030, 38.456501, 40.235287>,  <39.339767, 38.571495, 40.367062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.980030, 38.456501, 40.235287> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413763, 0.316008, 0.853779,
		-0.141345, 0.904152, -0.403152,
		-0.899345, -0.287486, -0.329439,
		38.710228, 38.370255, 40.136456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.851585, 39.015804, 40.593925>,  <39.339767, 38.571495, 40.367062>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.851585, 39.015804, 40.593925> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.573883, 38.738403, 40.516926>,  <38.407261, 38.571960, 40.470726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.573883, 38.738403, 40.516926>,  <38.851585, 39.015804, 40.593925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.573883, 38.738403, 40.516926> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529310, 0.310747, 0.789472,
		-0.487686, 0.649988, -0.582819,
		-0.694257, -0.693507, -0.192498,
		38.365604, 38.530350, 40.459175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.215607, 39.301796, 40.574280>,  <38.851585, 39.015804, 40.593925>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.215607, 39.301796, 40.574280> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.130238, 38.918945, 40.652626>,  <38.079014, 38.689236, 40.699635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.130238, 38.918945, 40.652626>,  <38.215607, 39.301796, 40.574280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.130238, 38.918945, 40.652626> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594337, 0.286323, 0.751520,
		-0.775379, 0.043982, -0.629962,
		-0.213426, -0.957123, 0.195869,
		38.066212, 38.631809, 40.711388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.492073, 39.286781, 40.718861>,  <38.215607, 39.301796, 40.574280>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.492073, 39.286781, 40.718861> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.629406, 38.938042, 40.858582>,  <37.711803, 38.728798, 40.942413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.629406, 38.938042, 40.858582>,  <37.492073, 39.286781, 40.718861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.629406, 38.938042, 40.858582> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614549, 0.072710, 0.785521,
		-0.710251, -0.484353, -0.510828,
		0.343327, -0.871846, 0.349301,
		37.732403, 38.676487, 40.963371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.909069, 38.875759, 40.883091>,  <37.492073, 39.286781, 40.718861>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.909069, 38.875759, 40.883091> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.203621, 38.716881, 41.102177>,  <37.380352, 38.621555, 41.233627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.203621, 38.716881, 41.102177>,  <36.909069, 38.875759, 40.883091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.203621, 38.716881, 41.102177> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585590, 0.031299, 0.810003,
		-0.338872, -0.917201, -0.209545,
		0.736377, -0.397195, 0.547709,
		37.424534, 38.597721, 41.266491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.539112, 38.539692, 41.366844>,  <36.909069, 38.875759, 40.883091>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.539112, 38.539692, 41.366844> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.905144, 38.529167, 41.527809>,  <37.124763, 38.522854, 41.624390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.905144, 38.529167, 41.527809>,  <36.539112, 38.539692, 41.366844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.905144, 38.529167, 41.527809> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400479, 0.057990, 0.914469,
		-0.047398, -0.997970, 0.042527,
		0.915079, -0.026312, 0.402415,
		37.179668, 38.521275, 41.648533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.506687, 37.956940, 41.812637>,  <36.539112, 38.539692, 41.366844>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.506687, 37.956940, 41.812637> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.738495, 38.273659, 41.889809>,  <36.877579, 38.463688, 41.936111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.738495, 38.273659, 41.889809>,  <36.506687, 37.956940, 41.812637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.738495, 38.273659, 41.889809> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475879, 0.136602, 0.868838,
		0.661587, -0.595316, 0.455962,
		0.579518, 0.791795, 0.192925,
		36.912350, 38.511196, 41.947685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.867481, 37.773643, 42.493450>,  <36.506687, 37.956940, 41.812637>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.867481, 37.773643, 42.493450> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.843967, 38.165997, 42.419254>,  <36.829861, 38.401409, 42.374737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.843967, 38.165997, 42.419254>,  <36.867481, 37.773643, 42.493450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.843967, 38.165997, 42.419254> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322528, 0.157182, 0.933418,
		0.944733, 0.114694, 0.307124,
		-0.058783, 0.980887, -0.185486,
		36.826332, 38.460262, 42.363609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.222050, 37.979683, 43.077560>,  <36.867481, 37.773643, 42.493450>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.222050, 37.979683, 43.077560> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.991825, 38.268368, 42.923752>,  <36.853691, 38.441578, 42.831467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.991825, 38.268368, 42.923752>,  <37.222050, 37.979683, 43.077560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.991825, 38.268368, 42.923752> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400213, 0.161453, 0.902088,
		0.713131, 0.673099, 0.195913,
		-0.575564, 0.721714, -0.384520,
		36.819157, 38.484882, 42.808395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.428661, 38.589207, 43.392544>,  <37.222050, 37.979683, 43.077560>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.428661, 38.589207, 43.392544> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.063156, 38.686348, 43.262276>,  <36.843853, 38.744633, 43.184116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.063156, 38.686348, 43.262276>,  <37.428661, 38.589207, 43.392544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.063156, 38.686348, 43.262276> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268652, 0.240096, 0.932834,
		0.304729, 0.939882, -0.154150,
		-0.913765, 0.242848, -0.325666,
		36.789028, 38.759201, 43.164577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.196995, 39.326832, 43.695965>,  <37.428661, 38.589207, 43.392544>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.196995, 39.326832, 43.695965> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.850117, 39.151295, 43.601826>,  <36.641991, 39.045975, 43.545341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.850117, 39.151295, 43.601826>,  <37.196995, 39.326832, 43.695965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.850117, 39.151295, 43.601826> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380678, 0.279561, 0.881436,
		-0.321017, 0.853970, -0.409491,
		-0.867198, -0.438840, -0.235344,
		36.589958, 39.019642, 43.531223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.683853, 39.772236, 43.947105>,  <37.196995, 39.326832, 43.695965>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.683853, 39.772236, 43.947105> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.518764, 39.412460, 43.889599>,  <36.419712, 39.196594, 43.855095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.518764, 39.412460, 43.889599>,  <36.683853, 39.772236, 43.947105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.518764, 39.412460, 43.889599> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448305, 0.063191, 0.891644,
		-0.792894, 0.432456, -0.429303,
		-0.412725, -0.899438, -0.143768,
		36.394947, 39.142628, 43.846470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.036217, 39.895988, 44.251850>,  <36.683853, 39.772236, 43.947105>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.036217, 39.895988, 44.251850> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.083389, 39.498814, 44.246677>,  <36.111694, 39.260509, 44.243572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.083389, 39.498814, 44.246677>,  <36.036217, 39.895988, 44.251850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.083389, 39.498814, 44.246677> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527819, -0.073714, 0.846152,
		-0.841129, -0.092965, -0.532784,
		0.117936, -0.992937, -0.012934,
		36.118771, 39.200932, 44.242798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.355808, 39.589195, 44.296783> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.610210, 39.303066, 44.412582>,  <35.762852, 39.131390, 44.482059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.610210, 39.303066, 44.412582>,  <35.355808, 39.589195, 44.296783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.610210, 39.303066, 44.412582> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599998, -0.222470, 0.768446,
		-0.485287, -0.662430, -0.570686,
		0.636002, -0.715327, 0.289496,
		35.801010, 39.088467, 44.499432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.970154, 39.075638, 44.618732>,  <35.355808, 39.589195, 44.296783>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.970154, 39.075638, 44.618732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.330151, 38.933495, 44.719719>,  <35.546150, 38.848209, 44.780312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.330151, 38.933495, 44.719719>,  <34.970154, 39.075638, 44.618732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.330151, 38.933495, 44.719719> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391744, -0.405332, 0.825980,
		-0.191184, -0.842276, -0.504004,
		0.899992, -0.355354, 0.252464,
		35.600147, 38.826889, 44.795460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.056942, 38.257660, 44.700336>,  <34.970154, 39.075638, 44.618732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.056942, 38.257660, 44.700336> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.318287, 38.397663, 44.968845>,  <35.475094, 38.481667, 45.129951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.318287, 38.397663, 44.968845>,  <35.056942, 38.257660, 44.700336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.318287, 38.397663, 44.968845> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587617, -0.324585, 0.741182,
		0.477307, -0.878713, -0.006400,
		0.653363, 0.350011, 0.671274,
		35.514297, 38.502666, 45.170227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.930489, 37.793396, 45.237499>,  <35.056942, 38.257660, 44.700336>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.930489, 37.793396, 45.237499> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.166420, 38.060234, 45.419525>,  <35.307980, 38.220337, 45.528740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.166420, 38.060234, 45.419525>,  <34.930489, 37.793396, 45.237499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.166420, 38.060234, 45.419525> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381608, -0.266377, 0.885109,
		0.711670, -0.695722, 0.097451,
		0.589832, 0.667093, 0.455066,
		35.343369, 38.260361, 45.556046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.225567, 37.478058, 45.817612>,  <34.930489, 37.793396, 45.237499>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.225567, 37.478058, 45.817612> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.224323, 37.869621, 45.899315>,  <35.223576, 38.104561, 45.948338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.224323, 37.869621, 45.899315>,  <35.225567, 37.478058, 45.817612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.224323, 37.869621, 45.899315> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369518, -0.190924, 0.909398,
		0.929218, -0.072648, 0.362319,
		-0.003110, 0.978913, 0.204255,
		35.223389, 38.163296, 45.960590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.632599, 37.500824, 46.460155>,  <35.225567, 37.478058, 45.817612>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.632599, 37.500824, 46.460155> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.398872, 37.819569, 46.398712>,  <35.258636, 38.010815, 46.361847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.398872, 37.819569, 46.398712>,  <35.632599, 37.500824, 46.460155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.398872, 37.819569, 46.398712> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448509, -0.159343, 0.879460,
		0.676327, 0.582775, 0.450504,
		-0.584312, 0.796858, -0.153612,
		35.223579, 38.058624, 46.352627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.627640, 37.758781, 47.088112>,  <35.632599, 37.500824, 46.460155>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.627640, 37.758781, 47.088112> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.294552, 37.926815, 46.943832>,  <35.094700, 38.027634, 46.857265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.294552, 37.926815, 46.943832>,  <35.627640, 37.758781, 47.088112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.294552, 37.926815, 46.943832> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421452, -0.058385, 0.904970,
		0.359104, 0.905605, 0.225663,
		-0.832720, 0.420084, -0.360702,
		35.044735, 38.052841, 46.835621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.460995, 38.388584, 47.444195>,  <35.627640, 37.758781, 47.088112>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.460995, 38.388584, 47.444195> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.110382, 38.319302, 47.264557>,  <34.900013, 38.277733, 47.156773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.110382, 38.319302, 47.264557>,  <35.460995, 38.388584, 47.444195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.110382, 38.319302, 47.264557> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464300, 0.058222, 0.883762,
		-0.126922, 0.983164, -0.131452,
		-0.876536, -0.173202, -0.449094,
		34.847420, 38.267342, 47.129829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.029861, 38.818367, 47.827492>,  <35.460995, 38.388584, 47.444195>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.029861, 38.818367, 47.827492> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.803761, 38.559357, 47.623062>,  <34.668098, 38.403950, 47.500404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.803761, 38.559357, 47.623062>,  <35.029861, 38.818367, 47.827492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.803761, 38.559357, 47.623062> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541413, -0.176225, 0.822080,
		-0.622381, 0.741390, -0.250965,
		-0.565256, -0.647523, -0.511078,
		34.634182, 38.365101, 47.469738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.347443, 39.097935, 47.945240>,  <35.029861, 38.818367, 47.827492>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.347443, 39.097935, 47.945240> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.283710, 38.719551, 47.832260>,  <34.245472, 38.492519, 47.764473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.283710, 38.719551, 47.832260>,  <34.347443, 39.097935, 47.945240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.283710, 38.719551, 47.832260> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444379, -0.186759, 0.876155,
		-0.881556, 0.265113, -0.390607,
		-0.159330, -0.945958, -0.282450,
		34.235912, 38.435764, 47.747524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.695862, 39.082806, 48.108471>,  <34.347443, 39.097935, 47.945240>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.695862, 39.082806, 48.108471> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.848083, 38.713127, 48.095543>,  <33.939419, 38.491322, 48.087784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.848083, 38.713127, 48.095543>,  <33.695862, 39.082806, 48.108471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.848083, 38.713127, 48.095543> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268645, -0.143932, 0.952425,
		-0.884875, -0.353770, -0.303055,
		0.380559, -0.924192, -0.032323,
		33.962250, 38.435871, 48.085846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.225014, 38.750088, 48.588295>,  <33.695862, 39.082806, 48.108471>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.225014, 38.750088, 48.588295> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.523121, 38.487579, 48.541161>,  <33.701984, 38.330074, 48.512882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.523121, 38.487579, 48.541161>,  <33.225014, 38.750088, 48.588295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.523121, 38.487579, 48.541161> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100273, -0.285030, 0.953259,
		-0.659178, -0.698621, -0.278231,
		0.745271, -0.656267, -0.117833,
		33.746704, 38.290699, 48.505810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.022278, 38.028957, 48.857197>,  <33.225014, 38.750088, 48.588295>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.022278, 38.028957, 48.857197> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.421841, 38.011627, 48.864193>,  <33.661579, 38.001228, 48.868389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.421841, 38.011627, 48.864193>,  <33.022278, 38.028957, 48.857197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.421841, 38.011627, 48.864193> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029136, -0.285010, 0.958082,
		-0.036524, -0.957545, -0.285961,
		0.998908, -0.043325, 0.017490,
		33.721512, 37.998631, 48.869438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.242012, 37.368809, 49.056831>,  <33.022278, 38.028957, 48.857197>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.242012, 37.368809, 49.056831> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.541424, 37.612690, 49.161110>,  <33.721069, 37.759018, 49.223679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.541424, 37.612690, 49.161110>,  <33.242012, 37.368809, 49.056831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.541424, 37.612690, 49.161110> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028208, -0.363517, 0.931160,
		0.662502, -0.704355, -0.254905,
		0.748529, 0.609705, 0.260699,
		33.765984, 37.795601, 49.239319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.810997, 37.002792, 49.348995>,  <33.242012, 37.368809, 49.056831>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.810997, 37.002792, 49.348995> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.871693, 37.379284, 49.469700>,  <33.908112, 37.605179, 49.542122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.871693, 37.379284, 49.469700>,  <33.810997, 37.002792, 49.348995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.871693, 37.379284, 49.469700> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196088, -0.327897, 0.924139,
		0.968775, -0.081057, -0.234319,
		0.151741, 0.941230, 0.301764,
		33.917213, 37.661652, 49.560230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.341423, 36.961708, 49.734730>,  <33.810997, 37.002792, 49.348995>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.341423, 36.961708, 49.734730> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.238537, 37.340748, 49.810509>,  <34.176804, 37.568172, 49.855976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.238537, 37.340748, 49.810509>,  <34.341423, 36.961708, 49.734730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.238537, 37.340748, 49.810509> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531050, -0.025183, 0.846966,
		0.807357, 0.318463, -0.496746,
		-0.257218, 0.947601, 0.189452,
		34.161373, 37.625027, 49.867344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.918110, 37.274773, 49.981792>,  <34.341423, 36.961708, 49.734730>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.918110, 37.274773, 49.981792> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.606663, 37.486366, 50.116810>,  <34.419796, 37.613323, 50.197819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.606663, 37.486366, 50.116810>,  <34.918110, 37.274773, 49.981792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.606663, 37.486366, 50.116810> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369673, -0.047977, 0.927923,
		0.507046, 0.847277, -0.158194,
		-0.778618, 0.528980, 0.337542,
		34.373077, 37.645061, 50.218071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.245251, 37.755047, 50.375076>,  <34.918110, 37.274773, 49.981792>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.245251, 37.755047, 50.375076> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.865036, 37.754910, 50.499325>,  <34.636909, 37.754826, 50.573875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.865036, 37.754910, 50.499325>,  <35.245251, 37.755047, 50.375076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.865036, 37.754910, 50.499325> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310596, -0.013658, 0.950444,
		0.003914, 0.999907, 0.013089,
		-0.950534, -0.000345, 0.310621,
		34.579876, 37.754807, 50.592510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.186695, 38.294704, 50.981590>,  <35.245251, 37.755047, 50.375076>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.186695, 38.294704, 50.981590> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.892330, 38.024975, 51.005981>,  <34.715710, 37.863136, 51.020615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.892330, 38.024975, 51.005981>,  <35.186695, 38.294704, 50.981590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.892330, 38.024975, 51.005981> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123511, -0.045152, 0.991315,
		-0.665715, 0.737054, 0.116515,
		-0.735914, -0.674324, 0.060976,
		34.671555, 37.822678, 51.024273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.787300, 38.445518, 51.654438>,  <35.186695, 38.294704, 50.981590>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.787300, 38.445518, 51.654438> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.692226, 38.070541, 51.552692>,  <34.635181, 37.845554, 51.491646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.692226, 38.070541, 51.552692>,  <34.787300, 38.445518, 51.654438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.692226, 38.070541, 51.552692> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227730, -0.308351, 0.923611,
		-0.944269, 0.161602, 0.286776,
		-0.237685, -0.937446, -0.254365,
		34.620922, 37.789307, 51.476383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.492496, 38.190556, 52.242813>,  <34.787300, 38.445518, 51.654438>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.492496, 38.190556, 52.242813> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.600342, 37.865459, 52.036217>,  <34.665047, 37.670403, 51.912258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.600342, 37.865459, 52.036217>,  <34.492496, 38.190556, 52.242813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.600342, 37.865459, 52.036217> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319421, -0.430507, 0.844176,
		-0.908449, -0.392577, 0.143537,
		0.269611, -0.812740, -0.516491,
		34.681225, 37.621639, 51.881268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.152889, 37.548222, 52.560463>,  <34.492496, 38.190556, 52.242813>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.152889, 37.548222, 52.560463> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.465786, 37.401321, 52.359180>,  <34.653526, 37.313179, 52.238411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.465786, 37.401321, 52.359180>,  <34.152889, 37.548222, 52.560463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.465786, 37.401321, 52.359180> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203116, -0.613262, 0.763318,
		-0.588921, -0.699314, -0.405131,
		0.782250, -0.367245, -0.503204,
		34.700459, 37.291145, 52.208218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.069588, 36.816544, 52.525421>,  <34.152889, 37.548222, 52.560463>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.069588, 36.816544, 52.525421> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.442173, 36.961864, 52.533257>,  <34.665726, 37.049057, 52.537956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.442173, 36.961864, 52.533257>,  <34.069588, 36.816544, 52.525421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.442173, 36.961864, 52.533257> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209141, -0.578702, 0.788267,
		0.297714, -0.730147, -0.615022,
		0.931465, 0.363304, 0.019584,
		34.721611, 37.070854, 52.539131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.440372, 36.303047, 52.658684>,  <34.069588, 36.816544, 52.525421>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.440372, 36.303047, 52.658684> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.666718, 36.601910, 52.798145>,  <34.802525, 36.781227, 52.881821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.666718, 36.601910, 52.798145>,  <34.440372, 36.303047, 52.658684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.666718, 36.601910, 52.798145> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085722, -0.473884, 0.876405,
		0.820031, -0.466038, -0.332201,
		0.565863, 0.747156, 0.348649,
		34.836475, 36.826057, 52.902740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.908173, 36.026917, 52.203011>,  <34.440372, 36.303047, 52.658684>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.908173, 36.026917, 52.203011> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.627438, 35.758690, 52.299145>,  <33.458996, 35.597752, 52.356823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.627438, 35.758690, 52.299145>,  <33.908173, 36.026917, 52.203011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.627438, 35.758690, 52.299145> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008037, -0.344818, -0.938635,
		0.712291, -0.656839, 0.247396,
		-0.701838, -0.670570, 0.240331,
		33.416885, 35.557518, 52.371243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.079311, 35.454700, 51.811779>,  <33.908173, 36.026917, 52.203011>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.079311, 35.454700, 51.811779> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.687855, 35.455734, 51.893997>,  <33.452980, 35.456356, 51.943329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.687855, 35.455734, 51.893997>,  <34.079311, 35.454700, 51.811779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.687855, 35.455734, 51.893997> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203785, -0.143490, -0.968443,
		0.026991, -0.989649, 0.140952,
		-0.978643, 0.002585, 0.205549,
		33.394260, 35.456512, 51.955662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.835411, 34.751595, 51.473228>,  <34.079311, 35.454700, 51.811779>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.835411, 34.751595, 51.473228> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.534607, 35.012993, 51.507687>,  <33.354122, 35.169830, 51.528362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.534607, 35.012993, 51.507687>,  <33.835411, 34.751595, 51.473228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.534607, 35.012993, 51.507687> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219322, -0.124831, -0.967634,
		-0.621588, -0.746569, 0.237201,
		-0.752015, 0.653493, 0.086145,
		33.309002, 35.209042, 51.533531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.249752, 34.456554, 51.095009>,  <33.835411, 34.751595, 51.473228>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.249752, 34.456554, 51.095009> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.144878, 34.840927, 51.130497>,  <33.081955, 35.071552, 51.151791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.144878, 34.840927, 51.130497>,  <33.249752, 34.456554, 51.095009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.144878, 34.840927, 51.130497> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083201, 0.069089, -0.994135,
		-0.961425, -0.268026, 0.061836,
		-0.262182, 0.960931, 0.088724,
		33.066223, 35.129208, 51.157116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.660732, 34.571011, 50.670925>,  <33.249752, 34.456554, 51.095009>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.660732, 34.571011, 50.670925> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.815838, 34.936825, 50.717003>,  <32.908901, 35.156311, 50.744652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.815838, 34.936825, 50.717003>,  <32.660732, 34.571011, 50.670925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.815838, 34.936825, 50.717003> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253064, 0.225797, -0.940731,
		-0.886340, 0.335629, 0.318991,
		0.387764, 0.914532, 0.115197,
		32.932167, 35.211185, 50.751560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.056759, 35.083691, 50.436127>,  <32.660732, 34.571011, 50.670925>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.056759, 35.083691, 50.436127> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.429718, 35.227066, 50.417545>,  <32.653492, 35.313091, 50.406399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.429718, 35.227066, 50.417545>,  <32.056759, 35.083691, 50.436127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.429718, 35.227066, 50.417545> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105133, 0.146006, -0.983681,
		-0.345806, 0.922066, 0.173819,
		0.932398, 0.358437, -0.046449,
		32.709438, 35.334599, 50.403610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.934696, 35.443039, 49.965103>,  <32.056759, 35.083691, 50.436127>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.934696, 35.443039, 49.965103> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.328979, 35.507652, 49.984238>,  <32.565548, 35.546421, 49.995720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.328979, 35.507652, 49.984238>,  <31.934696, 35.443039, 49.965103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.328979, 35.507652, 49.984238> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026814, 0.129913, -0.991163,
		-0.166316, 0.978280, 0.123726,
		0.985708, 0.161529, 0.047838,
		32.624691, 35.556110, 49.998589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.992060, 35.998764, 49.618557>,  <31.934696, 35.443039, 49.965103>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.992060, 35.998764, 49.618557> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.357071, 35.838234, 49.586983>,  <32.576077, 35.741917, 49.568039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.357071, 35.838234, 49.586983>,  <31.992060, 35.998764, 49.618557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.357071, 35.838234, 49.586983> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001834, 0.188985, -0.981978,
		0.409010, 0.896227, 0.171718,
		0.912528, -0.401324, -0.078940,
		32.630829, 35.717838, 49.563301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.407795, 36.498627, 49.266869>,  <31.992060, 35.998764, 49.618557>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.407795, 36.498627, 49.266869> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.586479, 36.143341, 49.223930>,  <32.693691, 35.930168, 49.198166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.586479, 36.143341, 49.223930>,  <32.407795, 36.498627, 49.266869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.586479, 36.143341, 49.223930> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143629, 0.189624, -0.971295,
		0.883073, 0.418473, 0.212281,
		0.446714, -0.888213, -0.107347,
		32.720493, 35.876877, 49.191727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.981461, 36.673355, 49.011948>,  <32.407795, 36.498627, 49.266869>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.981461, 36.673355, 49.011948> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.901680, 36.291676, 48.922745>,  <32.853813, 36.062668, 48.869225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.901680, 36.291676, 48.922745>,  <32.981461, 36.673355, 49.011948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.901680, 36.291676, 48.922745> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114538, 0.248717, -0.961780,
		0.973191, -0.166283, -0.158898,
		-0.199448, -0.954196, -0.223004,
		32.841846, 36.005417, 48.855843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.397015, 36.569038, 48.446861>,  <32.981461, 36.673355, 49.011948>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.397015, 36.569038, 48.446861> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.097439, 36.304054, 48.440605>,  <32.917694, 36.145065, 48.436852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.097439, 36.304054, 48.440605>,  <33.397015, 36.569038, 48.446861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.097439, 36.304054, 48.440605> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220709, 0.271632, -0.936752,
		0.624805, -0.698116, -0.349646,
		-0.748936, -0.662457, -0.015636,
		32.872757, 36.105316, 48.435913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.622211, 35.989830, 47.999416>,  <33.397015, 36.569038, 48.446861>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.622211, 35.989830, 47.999416> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.223049, 36.015034, 47.993523>,  <32.983551, 36.030155, 47.989986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.223049, 36.015034, 47.993523>,  <33.622211, 35.989830, 47.999416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.223049, 36.015034, 47.993523> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028372, 0.221398, -0.974771,
		-0.058155, -0.973146, -0.222721,
		-0.997904, 0.063007, -0.014734,
		32.923679, 36.033936, 47.989101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.490223, 35.767796, 47.370914>,  <33.622211, 35.989830, 47.999416>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.490223, 35.767796, 47.370914> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.143620, 35.934746, 47.480423>,  <32.935658, 36.034916, 47.546127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.143620, 35.934746, 47.480423>,  <33.490223, 35.767796, 47.370914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.143620, 35.934746, 47.480423> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151726, 0.302286, -0.941064,
		-0.475537, -0.856983, -0.198608,
		-0.866513, 0.417377, 0.273775,
		32.883667, 36.059959, 47.562557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.032486, 35.567844, 46.916359>,  <33.490223, 35.767796, 47.370914>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.032486, 35.567844, 46.916359> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.855274, 35.896740, 47.059269>,  <32.748947, 36.094078, 47.145016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.855274, 35.896740, 47.059269>,  <33.032486, 35.567844, 46.916359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.855274, 35.896740, 47.059269> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264192, 0.261081, -0.928461,
		-0.856696, -0.505724, 0.101563,
		-0.443029, 0.822241, 0.357275,
		32.722366, 36.143414, 47.166451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.521809, 35.648190, 46.429398>,  <33.032486, 35.567844, 46.916359>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.521809, 35.648190, 46.429398> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.552532, 35.999443, 46.618282>,  <32.570965, 36.210194, 46.731613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.552532, 35.999443, 46.618282>,  <32.521809, 35.648190, 46.429398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.552532, 35.999443, 46.618282> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162522, 0.478305, -0.863024,
		-0.983711, -0.010461, 0.179452,
		0.076805, 0.878131, 0.472215,
		32.575573, 36.262882, 46.759945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.871000, 35.998772, 46.309868>,  <32.521809, 35.648190, 46.429398>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.871000, 35.998772, 46.309868> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.143730, 36.281502, 46.385242>,  <32.307369, 36.451141, 46.430470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.143730, 36.281502, 46.385242>,  <31.871000, 35.998772, 46.309868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.143730, 36.281502, 46.385242> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271821, 0.483964, -0.831801,
		-0.679139, 0.515920, 0.522109,
		0.681824, 0.706828, 0.188441,
		32.348278, 36.493549, 46.441776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.528984, 36.652596, 46.145401>,  <31.871000, 35.998772, 46.309868>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.528984, 36.652596, 46.145401> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.920437, 36.734840, 46.144798>,  <32.155308, 36.784187, 46.144436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.920437, 36.734840, 46.144798>,  <31.528984, 36.652596, 46.145401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.920437, 36.734840, 46.144798> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105056, 0.493678, -0.863276,
		-0.176755, 0.844988, 0.504730,
		0.978632, 0.205614, -0.001511,
		32.214027, 36.796524, 46.144344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.506479, 37.351646, 45.959270>,  <31.528984, 36.652596, 46.145401>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.506479, 37.351646, 45.959270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.869715, 37.195717, 45.898060>,  <32.087654, 37.102161, 45.861332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.869715, 37.195717, 45.898060>,  <31.506479, 37.351646, 45.959270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.869715, 37.195717, 45.898060> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000123, 0.365667, -0.930746,
		0.418782, 0.845179, 0.332106,
		0.908087, -0.389821, -0.153031,
		32.142139, 37.078770, 45.852150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.938519, 37.912907, 45.602375>,  <31.506479, 37.351646, 45.959270>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.938519, 37.912907, 45.602375> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.141613, 37.573418, 45.543217>,  <32.263470, 37.369724, 45.507721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.141613, 37.573418, 45.543217>,  <31.938519, 37.912907, 45.602375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.141613, 37.573418, 45.543217> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135285, 0.248085, -0.959245,
		0.850825, 0.467035, 0.240781,
		0.507735, -0.848724, -0.147894,
		32.293934, 37.318802, 45.498848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.668442, 38.121483, 45.378658>,  <31.938519, 37.912907, 45.602375>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.668442, 38.121483, 45.378658> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.616425, 37.745480, 45.252499>,  <32.585213, 37.519878, 45.176804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.616425, 37.745480, 45.252499>,  <32.668442, 38.121483, 45.378658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.616425, 37.745480, 45.252499> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302402, 0.265343, -0.915503,
		0.944268, -0.214431, 0.249754,
		-0.130042, -0.940007, -0.315399,
		32.577412, 37.463478, 45.157879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.104980, 43.636147, 40.343388> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.767273, 43.449715, 40.449207>,  <42.564648, 43.337856, 40.512699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.767273, 43.449715, 40.449207>,  <43.104980, 43.636147, 40.343388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.767273, 43.449715, 40.449207> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452012, -0.884472, -0.115733,
		0.287924, 0.021868, 0.957404,
		-0.844266, -0.466080, 0.264545,
		42.513992, 43.309891, 40.528572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.264439, 43.107937, 40.911812>,  <43.104980, 43.636147, 40.343388>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.264439, 43.107937, 40.911812> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.931015, 42.998585, 40.719791>,  <42.730961, 42.932972, 40.604580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.931015, 42.998585, 40.719791>,  <43.264439, 43.107937, 40.911812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.931015, 42.998585, 40.719791> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320843, -0.946964, -0.017832,
		-0.449714, -0.168884, 0.877061,
		-0.833557, -0.273380, -0.480049,
		42.680946, 42.916573, 40.575775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.057961, 42.489754, 41.266827>,  <43.264439, 43.107937, 40.911812>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.057961, 42.489754, 41.266827> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.851555, 42.482132, 40.924278>,  <42.727711, 42.477558, 40.718750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.851555, 42.482132, 40.924278>,  <43.057961, 42.489754, 41.266827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.851555, 42.482132, 40.924278> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333710, -0.925235, -0.180493,
		-0.788904, -0.378916, 0.483791,
		-0.516012, -0.019054, -0.856370,
		42.696751, 42.476418, 40.667366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.646145, 41.862247, 41.298172>,  <43.057961, 42.489754, 41.266827>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.646145, 41.862247, 41.298172> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.684696, 41.953842, 40.910713>,  <42.707829, 42.008801, 40.678238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.684696, 41.953842, 40.910713>,  <42.646145, 41.862247, 41.298172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.684696, 41.953842, 40.910713> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319862, -0.928683, -0.187715,
		-0.942549, -0.291740, -0.162754,
		0.096383, 0.228990, -0.968646,
		42.713612, 42.022537, 40.620121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.352318, 41.347080, 40.987579>,  <42.646145, 41.862247, 41.298172>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.352318, 41.347080, 40.987579> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.600105, 41.526478, 40.729862>,  <42.748779, 41.634117, 40.575233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.600105, 41.526478, 40.729862>,  <42.352318, 41.347080, 40.987579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.600105, 41.526478, 40.729862> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243965, -0.890079, -0.385020,
		-0.746147, 0.081325, -0.660796,
		0.619473, 0.448492, -0.644289,
		42.785946, 41.661026, 40.536575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.205814, 40.948956, 40.455688>,  <42.352318, 41.347080, 40.987579>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.205814, 40.948956, 40.455688> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.544456, 41.121090, 40.330425>,  <42.747643, 41.224369, 40.255268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.544456, 41.121090, 40.330425>,  <42.205814, 40.948956, 40.455688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.544456, 41.121090, 40.330425> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351608, -0.893951, -0.277891,
		-0.399537, 0.125154, -0.908133,
		0.846606, 0.430335, -0.313162,
		42.798439, 41.250191, 40.236477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.332939, 40.675362, 39.771347>,  <42.205814, 40.948956, 40.455688>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.332939, 40.675362, 39.771347> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.674442, 40.819378, 39.921795>,  <42.879345, 40.905788, 40.012062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.674442, 40.819378, 39.921795>,  <42.332939, 40.675362, 39.771347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.674442, 40.819378, 39.921795> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486407, -0.809237, -0.329460,
		0.185752, 0.464227, -0.866019,
		0.853759, 0.360040, 0.376121,
		42.930569, 40.927391, 40.034630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.838383, 40.494251, 39.296726>,  <42.332939, 40.675362, 39.771347>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.838383, 40.494251, 39.296726> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.026909, 40.548729, 39.645279>,  <43.140026, 40.581417, 39.854412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.026909, 40.548729, 39.645279>,  <42.838383, 40.494251, 39.296726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.026909, 40.548729, 39.645279> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608187, -0.765709, -0.209281,
		0.638724, 0.628603, -0.443723,
		0.471317, 0.136194, 0.871385,
		43.168304, 40.589588, 39.906693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.555683, 40.487022, 39.158123>,  <42.838383, 40.494251, 39.296726>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.555683, 40.487022, 39.158123> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.510151, 40.387936, 39.542973>,  <43.482834, 40.328484, 39.773880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.510151, 40.387936, 39.542973>,  <43.555683, 40.487022, 39.158123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.510151, 40.387936, 39.542973> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463620, -0.869751, -0.169087,
		0.878693, 0.426812, 0.213848,
		-0.113826, -0.247719, 0.962122,
		43.476002, 40.313622, 39.831608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.182266, 40.214104, 39.266693>,  <43.555683, 40.487022, 39.158123>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.182266, 40.214104, 39.266693> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.967331, 40.071518, 39.572426>,  <43.838371, 39.985966, 39.755867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.967331, 40.071518, 39.572426>,  <44.182266, 40.214104, 39.266693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.967331, 40.071518, 39.572426> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390798, -0.908354, -0.148894,
		0.747360, 0.218694, 0.627396,
		-0.537336, -0.356462, 0.764333,
		43.806129, 39.964581, 39.801727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.654362, 39.924667, 39.698776>,  <44.182266, 40.214104, 39.266693>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.654362, 39.924667, 39.698776> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.316105, 39.746433, 39.816311>,  <44.113152, 39.639492, 39.886833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.316105, 39.746433, 39.816311>,  <44.654362, 39.924667, 39.698776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.316105, 39.746433, 39.816311> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411994, -0.894924, -0.171387,
		0.339331, -0.023872, 0.940364,
		-0.845645, -0.445581, 0.293840,
		44.062412, 39.612759, 39.904465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.853844, 39.308285, 40.071629>,  <44.654362, 39.924667, 39.698776>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.853844, 39.308285, 40.071629> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.468212, 39.251446, 39.981869>,  <44.236832, 39.217342, 39.928013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.468212, 39.251446, 39.981869>,  <44.853844, 39.308285, 40.071629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.468212, 39.251446, 39.981869> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134181, -0.989684, 0.050206,
		-0.229223, 0.018292, 0.973202,
		-0.964081, -0.142093, -0.224404,
		44.178989, 39.208817, 39.914547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.632874, 38.729271, 40.517235>,  <44.853844, 39.308285, 40.071629>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.632874, 38.729271, 40.517235> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.392738, 38.747433, 40.197853>,  <44.248657, 38.758331, 40.006226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.392738, 38.747433, 40.197853>,  <44.632874, 38.729271, 40.517235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.392738, 38.747433, 40.197853> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107959, -0.984647, -0.137166,
		-0.792425, -0.168547, 0.586221,
		-0.600340, 0.045406, -0.798455,
		44.212635, 38.761055, 39.958317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.198063, 38.175396, 40.554050>,  <44.632874, 38.729271, 40.517235>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.198063, 38.175396, 40.554050> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.162155, 38.298359, 40.175117>,  <44.140610, 38.372135, 39.947758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.162155, 38.298359, 40.175117>,  <44.198063, 38.175396, 40.554050>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.162155, 38.298359, 40.175117> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047468, -0.948774, -0.312370,
		-0.994831, -0.073010, 0.070581,
		-0.089771, 0.307405, -0.947335,
		44.135223, 38.390579, 39.890919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.533615, 37.855953, 40.344833>,  <44.198063, 38.175396, 40.554050>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.533615, 37.855953, 40.344833> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.773212, 37.920822, 40.031170>,  <43.916973, 37.959743, 39.842972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.773212, 37.920822, 40.031170>,  <43.533615, 37.855953, 40.344833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.773212, 37.920822, 40.031170> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199336, -0.918252, -0.342167,
		-0.775543, 0.361267, -0.517704,
		0.598997, 0.162168, -0.784158,
		43.952911, 37.969471, 39.795921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.121807, 37.614182, 39.759632>,  <43.533615, 37.855953, 40.344833>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.121807, 37.614182, 39.759632> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.501274, 37.641705, 39.636154>,  <43.728954, 37.658218, 39.562069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.501274, 37.641705, 39.636154>,  <43.121807, 37.614182, 39.759632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.501274, 37.641705, 39.636154> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121858, -0.821172, -0.557519,
		-0.291850, 0.566518, -0.770637,
		0.948670, 0.068804, -0.308694,
		43.785873, 37.662346, 39.543545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.069538, 37.418171, 39.092747>,  <43.121807, 37.614182, 39.759632>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.069538, 37.418171, 39.092747> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.461048, 37.392120, 39.170475>,  <43.695953, 37.376488, 39.217110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.461048, 37.392120, 39.170475>,  <43.069538, 37.418171, 39.092747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.461048, 37.392120, 39.170475> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036710, -0.877105, -0.478894,
		0.201627, 0.475863, -0.856096,
		0.978774, -0.065130, 0.194317,
		43.754681, 37.372581, 39.228771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.423439, 37.314442, 38.443428>,  <43.069538, 37.418171, 39.092747>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.423439, 37.314442, 38.443428> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.703953, 37.178909, 38.694313>,  <43.872261, 37.097591, 38.844845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.703953, 37.178909, 38.694313>,  <43.423439, 37.314442, 38.443428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.703953, 37.178909, 38.694313> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073981, -0.840484, -0.536763,
		0.709031, 0.422826, -0.564353,
		0.701286, -0.338830, 0.627210,
		43.914337, 37.077259, 38.882477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.953648, 37.053917, 38.018154>,  <43.423439, 37.314442, 38.443428>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.953648, 37.053917, 38.018154> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.990105, 36.851025, 38.360943>,  <44.011978, 36.729290, 38.566616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.990105, 36.851025, 38.360943>,  <43.953648, 37.053917, 38.018154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.990105, 36.851025, 38.360943> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053225, -0.856846, -0.512818,
		0.994414, 0.092354, -0.051099,
		0.091145, -0.507234, 0.856975,
		44.017448, 36.698853, 38.618034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.589748, 36.593525, 37.948463>,  <43.953648, 37.053917, 38.018154>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.589748, 36.593525, 37.948463> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.380848, 36.433865, 38.249908>,  <44.255508, 36.338070, 38.430775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.380848, 36.433865, 38.249908>,  <44.589748, 36.593525, 37.948463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.380848, 36.433865, 38.249908> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115868, -0.908719, -0.401005,
		0.844885, -0.122105, 0.520826,
		-0.522249, -0.399150, 0.753615,
		44.224174, 36.314121, 38.475994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.885349, 35.863720, 38.060978>,  <44.589748, 36.593525, 37.948463>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.885349, 35.863720, 38.060978> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.523422, 35.871628, 38.231113>,  <44.306267, 35.876373, 38.333195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.523422, 35.871628, 38.231113>,  <44.885349, 35.863720, 38.060978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.523422, 35.871628, 38.231113> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122471, -0.968795, -0.215495,
		0.407805, -0.247075, 0.879005,
		-0.904819, 0.019773, 0.425339,
		44.251976, 35.877560, 38.358715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.366631, 35.737385, 37.413548>,  <44.885349, 35.863720, 38.060978>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.366631, 35.737385, 37.413548> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.488480, 35.763149, 37.033428>,  <45.561588, 35.778606, 36.805359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.488480, 35.763149, 37.033428>,  <45.366631, 35.737385, 37.413548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.488480, 35.763149, 37.033428> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579415, 0.804402, -0.131211,
		0.755967, 0.590584, 0.282356,
		0.304619, 0.064410, -0.950294,
		45.579865, 35.782471, 36.748341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.351692, 36.464901, 37.243011>,  <45.366631, 35.737385, 37.413548>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.351692, 36.464901, 37.243011> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.318481, 36.261513, 36.900185>,  <45.298553, 36.139481, 36.694489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.318481, 36.261513, 36.900185>,  <45.351692, 36.464901, 37.243011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.318481, 36.261513, 36.900185> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560169, 0.735117, -0.381856,
		0.824207, 0.448398, -0.345864,
		-0.083027, -0.508471, -0.857067,
		45.293571, 36.108971, 36.643066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.700409, 36.826557, 36.743298>,  <45.351692, 36.464901, 37.243011>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.700409, 36.826557, 36.743298> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.397537, 36.610481, 36.596394>,  <45.215813, 36.480835, 36.508251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.397537, 36.610481, 36.596394>,  <45.700409, 36.826557, 36.743298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.397537, 36.610481, 36.596394> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477287, 0.841380, -0.253529,
		0.445957, -0.016679, -0.894899,
		-0.757178, -0.540187, -0.367259,
		45.170383, 36.448425, 36.486217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.508526, 37.114952, 36.063580>,  <45.700409, 36.826557, 36.743298>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.508526, 37.114952, 36.063580> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.190731, 36.893188, 36.162716>,  <45.000053, 36.760132, 36.222198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.190731, 36.893188, 36.162716>,  <45.508526, 37.114952, 36.063580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.190731, 36.893188, 36.162716> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606903, 0.710376, -0.356420,
		0.021541, -0.433586, -0.900855,
		-0.794484, -0.554409, 0.247842,
		44.952385, 36.726868, 36.237068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.132656, 37.236935, 35.470505>,  <45.508526, 37.114952, 36.063580>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.132656, 37.236935, 35.470505> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.888454, 37.102303, 35.757278>,  <44.741932, 37.021523, 35.929344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.888454, 37.102303, 35.757278>,  <45.132656, 37.236935, 35.470505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.888454, 37.102303, 35.757278> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625932, 0.759671, -0.176374,
		-0.485271, -0.556431, -0.674460,
		-0.610508, -0.336577, 0.716935,
		44.705303, 37.001328, 35.972359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.466595, 37.353195, 35.241982>,  <45.132656, 37.236935, 35.470505>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.466595, 37.353195, 35.241982> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.378090, 37.317963, 35.630474>,  <44.324989, 37.296825, 35.863567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.378090, 37.317963, 35.630474>,  <44.466595, 37.353195, 35.241982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.378090, 37.317963, 35.630474> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677422, 0.730301, -0.088095,
		-0.701530, -0.677424, -0.221252,
		-0.221258, -0.088079, 0.971229,
		44.311714, 37.291538, 35.921844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.793106, 37.452278, 35.353050>,  <44.466595, 37.353195, 35.241982>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.793106, 37.452278, 35.353050> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.899334, 37.510300, 35.734299>,  <43.963070, 37.545113, 35.963047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.899334, 37.510300, 35.734299>,  <43.793106, 37.452278, 35.353050>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.899334, 37.510300, 35.734299> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711280, 0.696844, 0.092135,
		-0.650811, -0.702402, 0.288230,
		0.265567, 0.145050, 0.953118,
		43.979004, 37.553814, 36.020233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.153812, 37.427994, 35.807877>,  <43.793106, 37.452278, 35.353050>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.153812, 37.427994, 35.807877> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.442032, 37.621094, 36.006977>,  <43.614964, 37.736954, 36.126438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.442032, 37.621094, 36.006977>,  <43.153812, 37.427994, 35.807877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.442032, 37.621094, 36.006977> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687256, 0.592591, 0.420137,
		-0.092143, -0.644815, 0.758765,
		0.720547, 0.482753, 0.497756,
		43.658195, 37.765919, 36.156303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.941700, 37.503700, 36.473141>,  <43.153812, 37.427994, 35.807877>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.941700, 37.503700, 36.473141> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.230789, 37.779144, 36.449497>,  <43.404243, 37.944408, 36.435310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.230789, 37.779144, 36.449497>,  <42.941700, 37.503700, 36.473141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.230789, 37.779144, 36.449497> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602232, 0.669403, 0.434991,
		0.339104, -0.278781, 0.898493,
		0.722721, 0.688608, -0.059106,
		43.447605, 37.985725, 36.431767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.036148, 37.879669, 37.127319>,  <42.941700, 37.503700, 36.473141>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.036148, 37.879669, 37.127319> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.211910, 38.117718, 36.858170>,  <43.317368, 38.260548, 36.696682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.211910, 38.117718, 36.858170>,  <43.036148, 37.879669, 37.127319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.211910, 38.117718, 36.858170> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359238, 0.802971, 0.475590,
		0.823329, 0.032744, 0.566619,
		0.439405, 0.595118, -0.672872,
		43.343731, 38.296253, 36.656307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.219391, 38.389423, 37.460728>,  <43.036148, 37.879669, 37.127319>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.219391, 38.389423, 37.460728> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.205654, 38.543934, 37.092030>,  <43.197411, 38.636639, 36.870811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.205654, 38.543934, 37.092030>,  <43.219391, 38.389423, 37.460728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.205654, 38.543934, 37.092030> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219584, 0.896834, 0.384020,
		0.974989, 0.215589, 0.054021,
		-0.034343, 0.386277, -0.921743,
		43.195351, 38.659817, 36.815506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.633884, 38.937431, 37.543468>,  <43.219391, 38.389423, 37.460728>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.633884, 38.937431, 37.543468> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.392235, 38.997581, 37.230438>,  <43.247246, 39.033672, 37.042622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.392235, 38.997581, 37.230438>,  <43.633884, 38.937431, 37.543468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.392235, 38.997581, 37.230438> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462453, 0.733601, 0.497963,
		0.648979, 0.662734, -0.373643,
		-0.604122, 0.150375, -0.782575,
		43.210999, 39.042694, 36.995667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.617912, 39.586662, 37.491920>,  <43.633884, 38.937431, 37.543468>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.617912, 39.586662, 37.491920> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.332104, 39.518074, 37.220612>,  <43.160618, 39.476921, 37.057827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.332104, 39.518074, 37.220612>,  <43.617912, 39.586662, 37.491920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.332104, 39.518074, 37.220612> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498371, 0.805163, 0.321464,
		0.490999, 0.567725, -0.660763,
		-0.714525, -0.171467, -0.678272,
		43.117744, 39.466633, 37.017132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.610550, 40.201946, 37.017239>,  <43.617912, 39.586662, 37.491920>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.610550, 40.201946, 37.017239> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.253067, 40.022602, 37.010708>,  <43.038578, 39.914993, 37.006790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.253067, 40.022602, 37.010708>,  <43.610550, 40.201946, 37.017239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.253067, 40.022602, 37.010708> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445155, 0.881595, 0.156926,
		-0.055968, 0.147513, -0.987475,
		-0.893702, -0.448363, -0.016325,
		42.984955, 39.888092, 37.005810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.253162, 40.671864, 36.889133>,  <43.610550, 40.201946, 37.017239>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.253162, 40.671864, 36.889133> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.964218, 40.427002, 37.017796>,  <42.790852, 40.280087, 37.094994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.964218, 40.427002, 37.017796>,  <43.253162, 40.671864, 36.889133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.964218, 40.427002, 37.017796> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610640, 0.782958, 0.118722,
		-0.324517, -0.110654, -0.939385,
		-0.722362, -0.612154, 0.321653,
		42.747509, 40.243355, 37.114292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.638874, 40.890923, 36.579292>,  <43.253162, 40.671864, 36.889133>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.638874, 40.890923, 36.579292> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.514706, 40.698425, 36.907207>,  <42.440205, 40.582928, 37.103954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.514706, 40.698425, 36.907207>,  <42.638874, 40.890923, 36.579292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.514706, 40.698425, 36.907207> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573852, 0.782389, 0.241995,
		-0.757848, -0.395315, -0.519030,
		-0.310419, -0.481242, 0.819784,
		42.421581, 40.554054, 37.153141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.944424, 40.978294, 36.554741>,  <42.638874, 40.890923, 36.579292>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.944424, 40.978294, 36.554741> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.996937, 40.862354, 36.933952>,  <42.028446, 40.792789, 37.161480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.996937, 40.862354, 36.933952>,  <41.944424, 40.978294, 36.554741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.996937, 40.862354, 36.933952> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609621, 0.730509, 0.307764,
		-0.781746, -0.618341, -0.080793,
		0.131283, -0.289846, 0.948026,
		42.036320, 40.775402, 37.218361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.215508, 41.012093, 36.853035>,  <41.944424, 40.978294, 36.554741>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.215508, 41.012093, 36.853035> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.480988, 41.009777, 37.152225>,  <41.640278, 41.008389, 37.331738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.480988, 41.009777, 37.152225>,  <41.215508, 41.012093, 36.853035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.480988, 41.009777, 37.152225> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503819, 0.735652, 0.452749,
		-0.552867, -0.677335, 0.485340,
		0.663704, -0.005787, 0.747972,
		41.680099, 41.008041, 37.376617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.744839, 41.043606, 37.460392>,  <41.215508, 41.012093, 36.853035>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.744839, 41.043606, 37.460392> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.104389, 41.157852, 37.593327>,  <41.320118, 41.226398, 37.673088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.104389, 41.157852, 37.593327>,  <40.744839, 41.043606, 37.460392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.104389, 41.157852, 37.593327> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419424, 0.780415, 0.463721,
		-0.126912, -0.556216, 0.821290,
		0.898876, 0.285617, 0.332334,
		41.374050, 41.243538, 37.693027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.576660, 41.368080, 38.113609>,  <40.744839, 41.043606, 37.460392>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.576660, 41.368080, 38.113609> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.949959, 41.484055, 38.028767>,  <41.173939, 41.553638, 37.977859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.949959, 41.484055, 38.028767>,  <40.576660, 41.368080, 38.113609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.949959, 41.484055, 38.028767> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214901, 0.923718, 0.317117,
		0.287873, -0.250365, 0.924363,
		0.933245, 0.289936, -0.212109,
		41.229931, 41.571037, 37.965134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.821308, 41.639812, 38.706749>,  <40.576660, 41.368080, 38.113609>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.821308, 41.639812, 38.706749> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.057808, 41.786594, 38.419479>,  <41.199707, 41.874664, 38.247120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.057808, 41.786594, 38.419479>,  <40.821308, 41.639812, 38.706749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.057808, 41.786594, 38.419479> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220737, 0.930116, 0.293528,
		0.775695, -0.015021, 0.630929,
		0.591246, 0.366958, -0.718171,
		41.235180, 41.896683, 38.204029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.937218, 39.336334, 42.276440> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.716351, 39.003891, 42.249996>,  <37.583832, 38.804424, 42.234131>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.716351, 39.003891, 42.249996>,  <37.937218, 39.336334, 42.276440>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.716351, 39.003891, 42.249996> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337125, -0.150049, -0.929426,
		0.762533, -0.535487, 0.363039,
		-0.552169, -0.831108, -0.066109,
		37.550701, 38.754559, 42.230164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.299297, 38.623390, 42.254715>,  <37.937218, 39.336334, 42.276440>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.299297, 38.623390, 42.254715> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.951420, 38.578297, 42.062496>,  <37.742695, 38.551239, 41.947166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.951420, 38.578297, 42.062496>,  <38.299297, 38.623390, 42.254715>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.951420, 38.578297, 42.062496> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490633, -0.303889, -0.816658,
		-0.053969, -0.946014, 0.319601,
		-0.869694, -0.112733, -0.480546,
		37.690514, 38.544476, 41.918331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.417374, 38.012215, 41.914242>,  <38.299297, 38.623390, 42.254715>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.417374, 38.012215, 41.914242> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.095127, 38.163933, 41.732201>,  <37.901779, 38.254963, 41.622978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.095127, 38.163933, 41.732201>,  <38.417374, 38.012215, 41.914242>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.095127, 38.163933, 41.732201> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393574, -0.231525, -0.889661,
		-0.442810, -0.895842, 0.037240,
		-0.805618, 0.379293, -0.455101,
		37.853443, 38.277721, 41.595669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.296085, 37.553112, 41.417645>,  <38.417374, 38.012215, 41.914242>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.296085, 37.553112, 41.417645> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.120800, 37.887733, 41.286102>,  <38.015629, 38.088509, 41.207176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.120800, 37.887733, 41.286102>,  <38.296085, 37.553112, 41.417645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.120800, 37.887733, 41.286102> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300015, -0.208756, -0.930812,
		-0.847327, -0.506553, -0.159500,
		-0.438209, 0.836555, -0.328858,
		37.989338, 38.138699, 41.187447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.941738, 37.348843, 40.792637>,  <38.296085, 37.553112, 41.417645>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.941738, 37.348843, 40.792637> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.958260, 37.748413, 40.784184>,  <37.968170, 37.988155, 40.779110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.958260, 37.748413, 40.784184>,  <37.941738, 37.348843, 40.792637>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.958260, 37.748413, 40.784184> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192657, -0.028718, -0.980846,
		-0.980397, 0.036437, -0.193635,
		0.041300, 0.998923, -0.021135,
		37.970650, 38.048092, 40.777843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.611034, 37.507740, 40.199703>,  <37.941738, 37.348843, 40.792637>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.611034, 37.507740, 40.199703> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.846012, 37.822327, 40.276001>,  <37.987000, 38.011078, 40.321777>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.846012, 37.822327, 40.276001>,  <37.611034, 37.507740, 40.199703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.846012, 37.822327, 40.276001> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292831, 0.013150, -0.956074,
		-0.754429, 0.617492, -0.222577,
		0.587441, 0.786467, 0.190742,
		38.022243, 38.058266, 40.333225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.687714, 37.928078, 39.593224>,  <37.611034, 37.507740, 40.199703>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.687714, 37.928078, 39.593224> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.008205, 38.095516, 39.764248>,  <38.200500, 38.195980, 39.866863>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.008205, 38.095516, 39.764248>,  <37.687714, 37.928078, 39.593224>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.008205, 38.095516, 39.764248> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423547, 0.107978, -0.899416,
		-0.422655, 0.901733, -0.090778,
		0.801230, 0.418592, 0.427564,
		38.248573, 38.221092, 39.892517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.819920, 38.488575, 39.240227>,  <37.687714, 37.928078, 39.593224>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.819920, 38.488575, 39.240227> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.177254, 38.420166, 39.406460>,  <38.391655, 38.379120, 39.506199>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.177254, 38.420166, 39.406460>,  <37.819920, 38.488575, 39.240227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.177254, 38.420166, 39.406460> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418887, -0.018044, -0.907859,
		0.162761, 0.985102, 0.055519,
		0.893332, -0.171020, 0.415583,
		38.445255, 38.368858, 39.531136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.312519, 39.022934, 38.958309>,  <37.819920, 38.488575, 39.240227>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.312519, 39.022934, 38.958309> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.494759, 38.689281, 39.082664>,  <38.604103, 38.489090, 39.157280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.494759, 38.689281, 39.082664>,  <38.312519, 39.022934, 38.958309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.494759, 38.689281, 39.082664> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401822, -0.118934, -0.907961,
		0.794333, 0.538593, 0.280985,
		0.455603, -0.834130, 0.310892,
		38.631439, 38.439041, 39.175934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.949333, 39.053501, 38.660488>,  <38.312519, 39.022934, 38.958309>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.949333, 39.053501, 38.660488> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.901608, 38.660233, 38.715828>,  <38.872971, 38.424271, 38.749031>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.901608, 38.660233, 38.715828>,  <38.949333, 39.053501, 38.660488>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.901608, 38.660233, 38.715828> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310109, -0.169277, -0.935509,
		0.943184, -0.068715, 0.325087,
		-0.119313, -0.983170, 0.138351,
		38.865814, 38.365280, 38.757332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.569061, 38.690147, 38.458252>,  <38.949333, 39.053501, 38.660488>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.569061, 38.690147, 38.458252> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.295506, 38.398315, 38.457336>,  <39.131371, 38.223217, 38.456787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.295506, 38.398315, 38.457336>,  <39.569061, 38.690147, 38.458252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.295506, 38.398315, 38.457336> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402744, -0.374906, -0.835011,
		0.608351, -0.571976, 0.550229,
		-0.683891, -0.729581, -0.002286,
		39.090340, 38.179440, 38.456650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.924767, 38.137619, 38.194897>,  <39.569061, 38.690147, 38.458252>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.924767, 38.137619, 38.194897> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.540203, 38.030006, 38.171848>,  <39.309467, 37.965439, 38.158020>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.540203, 38.030006, 38.171848>,  <39.924767, 38.137619, 38.194897>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.540203, 38.030006, 38.171848> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210731, -0.585377, -0.782896,
		0.176896, -0.764823, 0.619478,
		-0.961405, -0.269034, -0.057622,
		39.251781, 37.949295, 38.154560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.954399, 37.511105, 37.914780>,  <39.924767, 38.137619, 38.194897>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.954399, 37.511105, 37.914780> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.566807, 37.587631, 37.852211>,  <39.334251, 37.633545, 37.814671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.566807, 37.587631, 37.852211>,  <39.954399, 37.511105, 37.914780>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.566807, 37.587631, 37.852211> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033167, -0.526576, -0.849481,
		-0.244886, -0.828322, 0.503898,
		-0.968984, 0.191313, -0.156424,
		39.276112, 37.645027, 37.805283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.416801, 36.853909, 37.843567>,  <39.954399, 37.511105, 37.914780>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.416801, 36.853909, 37.843567> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.365990, 37.175400, 37.611057>,  <39.335503, 37.368294, 37.471550>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.365990, 37.175400, 37.611057>,  <39.416801, 36.853909, 37.843567>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.365990, 37.175400, 37.611057> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188292, -0.555825, -0.809694,
		-0.973863, -0.212304, -0.080730,
		-0.127029, 0.803732, -0.581273,
		39.327881, 37.416519, 37.436676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.015690, 36.435806, 38.193241>,  <39.416801, 36.853909, 37.843567>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.015690, 36.435806, 38.193241> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.293930, 36.157219, 38.122734>,  <40.460873, 35.990067, 38.080429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.293930, 36.157219, 38.122734>,  <40.015690, 36.435806, 38.193241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.293930, 36.157219, 38.122734> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006850, -0.238916, 0.971016,
		-0.718399, -0.676644, -0.161418,
		0.695598, -0.696471, -0.176272,
		40.502609, 35.948277, 38.069851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.732670, 35.779476, 38.385979>,  <40.015690, 36.435806, 38.193241>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.732670, 35.779476, 38.385979> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.128609, 35.792324, 38.441357>,  <40.366173, 35.800034, 38.474583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.128609, 35.792324, 38.441357>,  <39.732670, 35.779476, 38.385979>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.128609, 35.792324, 38.441357> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123774, -0.283883, 0.950837,
		0.069839, -0.958321, -0.277027,
		0.989850, 0.032117, 0.138441,
		40.425564, 35.801960, 38.482887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.852688, 35.158772, 38.754082>,  <39.732670, 35.779476, 38.385979>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.852688, 35.158772, 38.754082> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.159428, 35.404606, 38.828083>,  <40.343472, 35.552105, 38.872482>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.159428, 35.404606, 38.828083>,  <39.852688, 35.158772, 38.754082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.159428, 35.404606, 38.828083> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051959, -0.227853, 0.972308,
		0.639717, -0.755229, -0.142797,
		0.766852, 0.614583, 0.185002,
		40.389484, 35.588982, 38.883583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.316383, 34.761662, 38.959141>,  <39.852688, 35.158772, 38.754082>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.316383, 34.761662, 38.959141> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.360661, 35.132328, 39.102825>,  <40.387226, 35.354729, 39.189037>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.360661, 35.132328, 39.102825>,  <40.316383, 34.761662, 38.959141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.360661, 35.132328, 39.102825> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138939, -0.343456, 0.928835,
		0.984095, -0.152725, 0.090731,
		0.110694, 0.926668, 0.359213,
		40.393867, 35.410328, 39.210590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.553146, 34.729229, 39.691128>,  <40.316383, 34.761662, 38.959141>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.553146, 34.729229, 39.691128> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.434650, 35.111183, 39.682819>,  <40.363552, 35.340355, 39.677834>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.434650, 35.111183, 39.682819>,  <40.553146, 34.729229, 39.691128>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.434650, 35.111183, 39.682819> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099630, -0.009269, 0.994982,
		0.949903, 0.296824, 0.097881,
		-0.296242, 0.954887, -0.020768,
		40.345779, 35.397648, 39.676590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.924656, 35.078518, 40.337738>,  <40.553146, 34.729229, 39.691128>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.924656, 35.078518, 40.337738> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.614208, 35.295811, 40.209648>,  <40.427940, 35.426186, 40.132793>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.614208, 35.295811, 40.209648>,  <40.924656, 35.078518, 40.337738>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.614208, 35.295811, 40.209648> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368524, 0.021330, 0.929374,
		0.511697, 0.839311, 0.183640,
		-0.776116, 0.543233, -0.320221,
		40.381374, 35.458782, 40.113583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.780579, 35.627563, 40.855927>,  <40.924656, 35.078518, 40.337738>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.780579, 35.627563, 40.855927> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.448116, 35.571598, 40.640667>,  <40.248638, 35.538017, 40.511513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.448116, 35.571598, 40.640667>,  <40.780579, 35.627563, 40.855927>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.448116, 35.571598, 40.640667> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550838, 0.075146, 0.831223,
		-0.075860, 0.987308, -0.139528,
		-0.831158, -0.139914, -0.538146,
		40.198769, 35.529625, 40.479221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.451618, 36.086220, 41.127205>,  <40.780579, 35.627563, 40.855927>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.451618, 36.086220, 41.127205> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.178974, 35.859707, 40.941845>,  <40.015388, 35.723801, 40.830627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.178974, 35.859707, 40.941845>,  <40.451618, 36.086220, 41.127205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.178974, 35.859707, 40.941845> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637446, 0.148588, 0.756032,
		-0.359271, 0.810707, -0.462253,
		-0.681606, -0.566282, -0.463399,
		39.974491, 35.689823, 40.802826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.768173, 36.382786, 41.293392>,  <40.451618, 36.086220, 41.127205>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.768173, 36.382786, 41.293392> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.671444, 36.012978, 41.175556>,  <39.613407, 35.791092, 41.104855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.671444, 36.012978, 41.175556>,  <39.768173, 36.382786, 41.293392>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.671444, 36.012978, 41.175556> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615758, -0.088423, 0.782958,
		-0.749909, 0.370736, -0.547897,
		-0.241824, -0.924519, -0.294593,
		39.598896, 35.735622, 41.087177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.999458, 36.413418, 41.188259>,  <39.768173, 36.382786, 41.293392>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.999458, 36.413418, 41.188259> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.119350, 36.038006, 41.256763>,  <39.191288, 35.812759, 41.297867>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.119350, 36.038006, 41.256763>,  <38.999458, 36.413418, 41.188259>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.119350, 36.038006, 41.256763> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700353, -0.094566, 0.707504,
		-0.647816, -0.332004, -0.685644,
		0.299733, -0.938525, 0.171259,
		39.209270, 35.756447, 41.308140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.455460, 36.084053, 41.340317>,  <38.999458, 36.413418, 41.188259>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.455460, 36.084053, 41.340317> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.704655, 35.797676, 41.466373>,  <38.854172, 35.625851, 41.542007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.704655, 35.797676, 41.466373>,  <38.455460, 36.084053, 41.340317>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.704655, 35.797676, 41.466373> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689183, -0.311794, 0.654073,
		-0.370019, -0.624670, -0.687658,
		0.622987, -0.715941, 0.315142,
		38.891552, 35.582893, 41.560917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.143902, 35.436108, 41.274139>,  <38.455460, 36.084053, 41.340317>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.143902, 35.436108, 41.274139> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.414749, 35.356991, 41.557655>,  <38.577259, 35.309521, 41.727764>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.414749, 35.356991, 41.557655>,  <38.143902, 35.436108, 41.274139>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.414749, 35.356991, 41.557655> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731606, -0.284522, 0.619516,
		0.079133, -0.938044, -0.337359,
		0.677119, -0.197790, 0.708793,
		38.617886, 35.297653, 41.770294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.070385, 34.691051, 41.523300>,  <38.143902, 35.436108, 41.274139>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.070385, 34.691051, 41.523300> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.249866, 34.891239, 41.819462>,  <38.357555, 35.011353, 41.997158>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.249866, 34.891239, 41.819462>,  <38.070385, 34.691051, 41.523300>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.249866, 34.891239, 41.819462> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727784, -0.276183, 0.627737,
		0.518652, -0.820519, 0.240312,
		0.448699, 0.500472, 0.740403,
		38.384476, 35.041382, 42.041584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.876663, 34.250877, 42.111320>,  <38.070385, 34.691051, 41.523300>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.876663, 34.250877, 42.111320> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.042496, 34.577976, 42.271030>,  <38.141994, 34.774235, 42.366856>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.042496, 34.577976, 42.271030>,  <37.876663, 34.250877, 42.111320>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.042496, 34.577976, 42.271030> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517888, -0.148765, 0.842414,
		0.748277, -0.556025, 0.361825,
		0.414577, 0.817744, 0.399276,
		38.166870, 34.823299, 42.390812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.133171, 33.775276, 41.555981>,  <37.876663, 34.250877, 42.111320>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.133171, 33.775276, 41.555981> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.180786, 33.379162, 41.584709>,  <38.209354, 33.141491, 41.601944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.180786, 33.379162, 41.584709>,  <38.133171, 33.775276, 41.555981>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.180786, 33.379162, 41.584709> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085310, -0.082267, -0.992952,
		0.989218, 0.112069, -0.094274,
		0.119034, -0.990289, 0.071819,
		38.216496, 33.082073, 41.606255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.599731, 33.581043, 41.055290>,  <38.133171, 33.775276, 41.555981>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.599731, 33.581043, 41.055290> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.411377, 33.240105, 41.146305>,  <38.298367, 33.035542, 41.200912>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.411377, 33.240105, 41.146305>,  <38.599731, 33.581043, 41.055290>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.411377, 33.240105, 41.146305> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049123, -0.232190, -0.971429,
		0.880826, -0.468608, 0.067465,
		-0.470884, -0.852346, 0.227539,
		38.270111, 32.984402, 41.214565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.748241, 33.161667, 40.527832>,  <38.599731, 33.581043, 41.055290>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.748241, 33.161667, 40.527832> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.448586, 32.955303, 40.694027>,  <38.268791, 32.831486, 40.793743>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.448586, 32.955303, 40.694027>,  <38.748241, 33.161667, 40.527832>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.448586, 32.955303, 40.694027> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382891, -0.174587, -0.907146,
		0.540543, -0.838665, -0.066747,
		-0.749138, -0.515908, 0.415489,
		38.223843, 32.800529, 40.818672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.794582, 32.555756, 40.095272>,  <38.748241, 33.161667, 40.527832>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.794582, 32.555756, 40.095272> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429455, 32.579468, 40.256886>,  <38.210377, 32.593697, 40.353851>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429455, 32.579468, 40.256886>,  <38.794582, 32.555756, 40.095272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.429455, 32.579468, 40.256886> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405577, -0.246851, -0.880098,
		0.047562, -0.967238, 0.249375,
		-0.912822, 0.059282, 0.404031,
		38.155609, 32.597252, 40.378094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.493622, 31.928614, 39.930214>,  <38.794582, 32.555756, 40.095272>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.493622, 31.928614, 39.930214> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.190662, 32.180096, 40.000725>,  <38.008888, 32.330986, 40.043034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.190662, 32.180096, 40.000725>,  <38.493622, 31.928614, 39.930214>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.190662, 32.180096, 40.000725> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391765, -0.221574, -0.892987,
		-0.522367, -0.745408, 0.414125,
		-0.757399, 0.628707, 0.176281,
		37.963444, 32.368706, 40.053608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960445, 31.533169, 39.660881>,  <38.493622, 31.928614, 39.930214>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.960445, 31.533169, 39.660881> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.815659, 31.905643, 39.678204>,  <37.728786, 32.129128, 39.688599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.815659, 31.905643, 39.678204>,  <37.960445, 31.533169, 39.660881>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.815659, 31.905643, 39.678204> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354971, -0.094728, -0.930066,
		-0.861962, -0.352021, 0.364832,
		-0.361962, 0.931186, 0.043306,
		37.707069, 32.184998, 39.691196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.228992, 31.508081, 39.557732>,  <37.960445, 31.533169, 39.660881>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.228992, 31.508081, 39.557732> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.326965, 31.889650, 39.488407>,  <37.385750, 32.118591, 39.446812>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.326965, 31.889650, 39.488407>,  <37.228992, 31.508081, 39.557732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.326965, 31.889650, 39.488407> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515830, -0.023143, -0.856378,
		-0.820931, 0.299153, 0.486394,
		0.244932, 0.953924, -0.173311,
		37.400444, 32.175827, 39.436413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.490711, 31.868422, 39.383198>,  <37.228992, 31.508081, 39.557732>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.490711, 31.868422, 39.383198> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.799156, 32.082619, 39.245430>,  <36.984222, 32.211136, 39.162769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.799156, 32.082619, 39.245430>,  <36.490711, 31.868422, 39.383198>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.799156, 32.082619, 39.245430> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438725, 0.054865, -0.896945,
		-0.461413, 0.842755, 0.277243,
		0.771115, 0.535495, -0.344422,
		37.030491, 32.243267, 39.142105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.150017, 32.488132, 39.046658>,  <36.490711, 31.868422, 39.383198>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.150017, 32.488132, 39.046658> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.521156, 32.430614, 38.909008>,  <36.743839, 32.396103, 38.826420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.521156, 32.430614, 38.909008>,  <36.150017, 32.488132, 39.046658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.521156, 32.430614, 38.909008> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327730, 0.126066, -0.936323,
		0.178017, 0.981546, 0.069845,
		0.927849, -0.143791, -0.344124,
		36.799511, 32.387478, 38.805771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.246822, 33.031017, 38.641682>,  <36.150017, 32.488132, 39.046658>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.246822, 33.031017, 38.641682> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.507114, 32.749130, 38.528599>,  <36.663288, 32.579998, 38.460751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.507114, 32.749130, 38.528599>,  <36.246822, 33.031017, 38.641682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.507114, 32.749130, 38.528599> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522704, -0.145694, -0.839973,
		0.550758, 0.694364, -0.463167,
		0.650728, -0.704721, -0.282705,
		36.702332, 32.537712, 38.443787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.536686, 33.257835, 37.990150>,  <36.246822, 33.031017, 38.641682>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.536686, 33.257835, 37.990150> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.602314, 32.863503, 38.004143>,  <36.641693, 32.626904, 38.012539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.602314, 32.863503, 38.004143>,  <36.536686, 33.257835, 37.990150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.602314, 32.863503, 38.004143> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623313, -0.131094, -0.770906,
		0.764566, 0.104680, -0.635988,
		0.164073, -0.985828, 0.034982,
		36.651535, 32.567753, 38.014637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.736317, 32.862553, 37.291451>,  <36.536686, 33.257835, 37.990150>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.736317, 32.862553, 37.291451> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.515270, 32.633179, 37.533375>,  <36.382641, 32.495556, 37.678528>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.515270, 32.633179, 37.533375>,  <36.736317, 32.862553, 37.291451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.515270, 32.633179, 37.533375> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414455, -0.440512, -0.796352,
		0.723079, -0.690741, 0.005772,
		-0.552615, -0.573433, 0.604806,
		36.349487, 32.461147, 37.714817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.101994, 33.367706, 45.140602> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.891865, 33.030296, 45.185349>,  <38.765789, 32.827850, 45.212196>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.891865, 33.030296, 45.185349>,  <39.101994, 33.367706, 45.140602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.891865, 33.030296, 45.185349> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327491, -0.321764, -0.888379,
		0.785359, -0.430048, 0.445274,
		-0.525319, -0.843520, 0.111864,
		38.734268, 32.777241, 45.218906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.537010, 32.838692, 44.890137>,  <39.101994, 33.367706, 45.140602>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.537010, 32.838692, 44.890137> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.167511, 32.691570, 44.847408>,  <38.945812, 32.603298, 44.821770>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.167511, 32.691570, 44.847408>,  <39.537010, 32.838692, 44.890137>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.167511, 32.691570, 44.847408> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163673, -0.126934, -0.978314,
		0.346265, -0.921200, 0.177454,
		-0.923749, -0.367801, -0.106823,
		38.890385, 32.581230, 44.815361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.616310, 32.180492, 44.475746>,  <39.537010, 32.838692, 44.890137>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.616310, 32.180492, 44.475746> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.234772, 32.289791, 44.425938>,  <39.005848, 32.355370, 44.396053>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.234772, 32.289791, 44.425938>,  <39.616310, 32.180492, 44.475746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.234772, 32.289791, 44.425938> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073604, -0.189291, -0.979158,
		-0.291128, -0.943134, 0.160443,
		-0.953848, 0.273251, -0.124526,
		38.948616, 32.371765, 44.388580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.303719, 31.688782, 43.964809>,  <39.616310, 32.180492, 44.475746>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.303719, 31.688782, 43.964809> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.033787, 31.983742, 43.976456>,  <38.871830, 32.160717, 43.983444>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.033787, 31.983742, 43.976456>,  <39.303719, 31.688782, 43.964809>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.033787, 31.983742, 43.976456> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324340, -0.260921, -0.909244,
		-0.662882, -0.623024, 0.415245,
		-0.674827, 0.737402, 0.029111,
		38.831337, 32.204964, 43.985188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.729309, 31.455223, 43.469925>,  <39.303719, 31.688782, 43.964809>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.729309, 31.455223, 43.469925> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.716866, 31.853428, 43.505672>,  <38.709400, 32.092350, 43.527122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.716866, 31.853428, 43.505672>,  <38.729309, 31.455223, 43.469925>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.716866, 31.853428, 43.505672> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168358, 0.082915, -0.982232,
		-0.985235, -0.045601, 0.165023,
		-0.031108, 0.995513, 0.089368,
		38.707535, 32.152081, 43.532482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.104370, 31.663710, 43.073521>,  <38.729309, 31.455223, 43.469925>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.104370, 31.663710, 43.073521> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.347023, 31.981049, 43.093914>,  <38.492615, 32.171452, 43.106152>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.347023, 31.981049, 43.093914>,  <38.104370, 31.663710, 43.073521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.347023, 31.981049, 43.093914> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102712, 0.141813, -0.984550,
		-0.788323, 0.592018, 0.167514,
		0.606628, 0.793349, 0.050988,
		38.529011, 32.219055, 43.109211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.822750, 32.053570, 42.639839>,  <38.104370, 31.663710, 43.073521>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.822750, 32.053570, 42.639839> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.147556, 32.281273, 42.691345>,  <38.342438, 32.417896, 42.722248>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.147556, 32.281273, 42.691345>,  <37.822750, 32.053570, 42.639839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.147556, 32.281273, 42.691345> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088243, 0.337841, -0.937057,
		-0.576929, 0.749540, 0.324564,
		0.812013, 0.569257, 0.128768,
		38.391159, 32.452049, 42.729977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.594921, 32.772015, 42.571857>,  <37.822750, 32.053570, 42.639839>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.594921, 32.772015, 42.571857> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.982662, 32.760365, 42.474277>,  <38.215305, 32.753376, 42.415730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.982662, 32.760365, 42.474277>,  <37.594921, 32.772015, 42.571857>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.982662, 32.760365, 42.474277> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217268, 0.361949, -0.906525,
		0.114700, 0.931743, 0.344528,
		0.969350, -0.029123, -0.243953,
		38.273468, 32.751629, 42.401093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.837025, 33.487804, 42.324963>,  <37.594921, 32.772015, 42.571857>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.837025, 33.487804, 42.324963> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.066288, 33.199196, 42.169582>,  <38.203846, 33.026031, 42.076355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.066288, 33.199196, 42.169582>,  <37.837025, 33.487804, 42.324963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.066288, 33.199196, 42.169582> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196734, 0.339015, -0.919981,
		0.795479, 0.603715, 0.052361,
		0.573157, -0.721524, -0.388451,
		38.238235, 32.982738, 42.053047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.294170, 34.026756, 42.750061>,  <37.837025, 33.487804, 42.324963>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.294170, 34.026756, 42.750061> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.190678, 34.413136, 42.750374>,  <38.128582, 34.644962, 42.750561>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.190678, 34.413136, 42.750374>,  <38.294170, 34.026756, 42.750061>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.190678, 34.413136, 42.750374> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411163, -0.110863, 0.904795,
		0.874073, 0.233775, 0.425847,
		-0.258729, 0.965950, 0.000783,
		38.113060, 34.702919, 42.750610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.628242, 34.392757, 43.370628>,  <38.294170, 34.026756, 42.750061>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.628242, 34.392757, 43.370628> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.304279, 34.593689, 43.249496>,  <38.109901, 34.714249, 43.176819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.304279, 34.593689, 43.249496>,  <38.628242, 34.392757, 43.370628>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.304279, 34.593689, 43.249496> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251168, 0.169540, 0.952980,
		0.530055, 0.847890, -0.011142,
		-0.809911, 0.502333, -0.302829,
		38.061306, 34.744389, 43.158649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.455399, 34.798000, 43.894421>,  <38.628242, 34.392757, 43.370628>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.455399, 34.798000, 43.894421> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.126396, 34.851593, 43.673317>,  <37.928997, 34.883747, 43.540657>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.126396, 34.851593, 43.673317>,  <38.455399, 34.798000, 43.894421>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.126396, 34.851593, 43.673317> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493120, 0.316289, 0.810428,
		0.283411, 0.939154, -0.194081,
		-0.822502, 0.133980, -0.552756,
		37.879646, 34.891788, 43.507492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.152988, 35.441322, 44.064373>,  <38.455399, 34.798000, 43.894421>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.152988, 35.441322, 44.064373> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.853546, 35.222912, 43.913933>,  <37.673882, 35.091866, 43.823669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.853546, 35.222912, 43.913933>,  <38.152988, 35.441322, 44.064373>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.853546, 35.222912, 43.913933> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551747, 0.198491, 0.810047,
		-0.367655, 0.813914, -0.449859,
		-0.748602, -0.546026, -0.376099,
		37.628967, 35.059105, 43.801102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.676044, 35.831539, 44.407452>,  <38.152988, 35.441322, 44.064373>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.676044, 35.831539, 44.407452> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.503380, 35.498638, 44.268299>,  <37.399780, 35.298897, 44.184807>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.503380, 35.498638, 44.268299>,  <37.676044, 35.831539, 44.407452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.503380, 35.498638, 44.268299> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633346, 0.005020, 0.773852,
		-0.642295, 0.554373, -0.529271,
		-0.431660, -0.832253, -0.347886,
		37.373882, 35.248962, 44.163933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.006611, 35.961517, 44.373867>,  <37.676044, 35.831539, 44.407452>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.006611, 35.961517, 44.373867> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.014618, 35.561844, 44.387894>,  <37.019421, 35.322041, 44.396309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.014618, 35.561844, 44.387894>,  <37.006611, 35.961517, 44.373867>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.014618, 35.561844, 44.387894> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777332, 0.006504, 0.629057,
		-0.628772, -0.039852, -0.776568,
		0.020018, -0.999185, 0.035068,
		37.020622, 35.262089, 44.398415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.318420, 35.775253, 44.442379>,  <37.006611, 35.961517, 44.373867>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.318420, 35.775253, 44.442379> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.549034, 35.482544, 44.587769>,  <36.687401, 35.306919, 44.675003>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.549034, 35.482544, 44.587769>,  <36.318420, 35.775253, 44.442379>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.549034, 35.482544, 44.587769> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642302, -0.130934, 0.755185,
		-0.505036, -0.668849, -0.545509,
		0.576530, -0.731777, 0.363476,
		36.721992, 35.263012, 44.696812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.823563, 35.392952, 44.794724>,  <36.318420, 35.775253, 44.442379>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.823563, 35.392952, 44.794724> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.166885, 35.264050, 44.954456>,  <36.372879, 35.186707, 45.050297>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.166885, 35.264050, 44.954456>,  <35.823563, 35.392952, 44.794724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.166885, 35.264050, 44.954456> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479233, -0.225198, 0.848306,
		-0.183440, -0.919478, -0.347722,
		0.858305, -0.322253, 0.399333,
		36.424377, 35.167374, 45.074257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.579735, 34.661633, 45.084965>,  <35.823563, 35.392952, 44.794724>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.579735, 34.661633, 45.084965> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.913086, 34.807938, 45.250710>,  <36.113098, 34.895721, 45.350155>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.913086, 34.807938, 45.250710>,  <35.579735, 34.661633, 45.084965>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.913086, 34.807938, 45.250710> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367865, -0.192450, 0.909746,
		0.412491, -0.910595, -0.025835,
		0.833383, 0.365759, 0.414360,
		36.163101, 34.917664, 45.375019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.706749, 34.138123, 45.649021>,  <35.579735, 34.661633, 45.084965>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.706749, 34.138123, 45.649021> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.934448, 34.461109, 45.710922>,  <36.071068, 34.654903, 45.748062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.934448, 34.461109, 45.710922>,  <35.706749, 34.138123, 45.649021>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.934448, 34.461109, 45.710922> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021929, -0.173249, 0.984634,
		0.821874, -0.563893, -0.080914,
		0.569246, 0.807471, 0.154754,
		36.105221, 34.703350, 45.757347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.216255, 33.890469, 46.192474>,  <35.706749, 34.138123, 45.649021>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.216255, 33.890469, 46.192474> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.188267, 34.289452, 46.198009>,  <36.171474, 34.528839, 46.201332>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.188267, 34.289452, 46.198009>,  <36.216255, 33.890469, 46.192474>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.188267, 34.289452, 46.198009> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184428, -0.000698, 0.982846,
		0.980352, 0.071324, -0.183910,
		-0.069973, 0.997453, 0.013838,
		36.167274, 34.588688, 46.202160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.873516, 34.239201, 46.574646>,  <36.216255, 33.890469, 46.192474>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.873516, 34.239201, 46.574646> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.530159, 34.443298, 46.595852>,  <36.324146, 34.565758, 46.608574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.530159, 34.443298, 46.595852>,  <36.873516, 34.239201, 46.574646>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.530159, 34.443298, 46.595852> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085526, 0.040447, 0.995515,
		0.505815, 0.859076, -0.078359,
		-0.858392, 0.510248, 0.053015,
		36.272640, 34.596375, 46.611755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.995480, 34.584930, 47.086712>,  <36.873516, 34.239201, 46.574646>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.995480, 34.584930, 47.086712> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.608990, 34.682358, 47.053028>,  <36.377098, 34.740814, 47.032818>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.608990, 34.682358, 47.053028>,  <36.995480, 34.584930, 47.086712>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.608990, 34.682358, 47.053028> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009351, 0.293388, 0.955948,
		0.257547, 0.924444, -0.281200,
		-0.966220, 0.243572, -0.084206,
		36.319122, 34.755428, 47.027767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.938583, 35.263222, 47.470078>,  <36.995480, 34.584930, 47.086712>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.938583, 35.263222, 47.470078> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.561787, 35.131836, 47.442474>,  <36.335709, 35.053005, 47.425915>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.561787, 35.131836, 47.442474>,  <36.938583, 35.263222, 47.470078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.561787, 35.131836, 47.442474> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182108, 0.327487, 0.927140,
		-0.281938, 0.885924, -0.368306,
		-0.941991, -0.328468, -0.069003,
		36.279190, 35.033295, 47.421772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.665888, 33.604408, 45.321484> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.058674, 33.563755, 45.385246>,  <32.294346, 33.539364, 45.423504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.058674, 33.563755, 45.385246>,  <31.665888, 33.604408, 45.321484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.058674, 33.563755, 45.385246> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176290, 0.187697, -0.966277,
		0.068281, 0.976955, 0.202228,
		0.981967, -0.101630, 0.159411,
		32.353264, 33.533268, 45.433071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.028942, 34.241993, 45.188404>,  <31.665888, 33.604408, 45.321484>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.028942, 34.241993, 45.188404> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.316193, 33.966110, 45.151314>,  <32.488544, 33.800579, 45.129059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.316193, 33.966110, 45.151314>,  <32.028942, 34.241993, 45.188404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.316193, 33.966110, 45.151314> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205466, 0.337438, -0.918651,
		0.664887, 0.640657, 0.384035,
		0.718128, -0.689706, -0.092725,
		32.531631, 33.759197, 45.123497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.504620, 34.648727, 44.886494>,  <32.028942, 34.241993, 45.188404>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.504620, 34.648727, 44.886494> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.657112, 34.282558, 44.834854>,  <32.748608, 34.062859, 44.803871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.657112, 34.282558, 44.834854>,  <32.504620, 34.648727, 44.886494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.657112, 34.282558, 44.834854> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179997, 0.210469, -0.960887,
		0.906786, 0.343087, 0.245011,
		0.381235, -0.915420, -0.129096,
		32.771484, 34.007931, 44.796124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.186386, 34.720844, 44.617165>,  <32.504620, 34.648727, 44.886494>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.186386, 34.720844, 44.617165> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.077526, 34.355267, 44.496735>,  <33.012211, 34.135921, 44.424477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.077526, 34.355267, 44.496735>,  <33.186386, 34.720844, 44.617165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.077526, 34.355267, 44.496735> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413581, 0.171408, -0.894187,
		0.868840, -0.367873, 0.331340,
		-0.272153, -0.913941, -0.301072,
		32.995880, 34.081085, 44.406414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.756588, 34.563900, 44.187214>,  <33.186386, 34.720844, 44.617165>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.756588, 34.563900, 44.187214> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.467514, 34.300808, 44.102257>,  <33.294071, 34.142952, 44.051281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.467514, 34.300808, 44.102257>,  <33.756588, 34.563900, 44.187214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.467514, 34.300808, 44.102257> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419921, -0.173742, -0.890775,
		0.548992, -0.732938, 0.401758,
		-0.722685, -0.657735, -0.212393,
		33.250710, 34.103489, 44.038540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.008041, 33.981457, 43.772350>,  <33.756588, 34.563900, 44.187214>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.008041, 33.981457, 43.772350> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.619633, 34.061691, 43.720383>,  <33.386585, 34.109833, 43.689201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.619633, 34.061691, 43.720383>,  <34.008041, 33.981457, 43.772350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.619633, 34.061691, 43.720383> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137973, 0.026646, -0.990077,
		-0.195132, -0.979314, -0.053549,
		-0.971024, 0.200584, -0.129920,
		33.328327, 34.121868, 43.681408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.925755, 33.626892, 43.201756>,  <34.008041, 33.981457, 43.772350>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.925755, 33.626892, 43.201756> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.602993, 33.862049, 43.224712>,  <33.409336, 34.003143, 43.238487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.602993, 33.862049, 43.224712>,  <33.925755, 33.626892, 43.201756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.602993, 33.862049, 43.224712> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090750, 0.219386, -0.971408,
		-0.583670, -0.778625, -0.230375,
		-0.806904, 0.587889, 0.057389,
		33.360924, 34.038414, 43.241928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.451851, 33.438686, 42.683220>,  <33.925755, 33.626892, 43.201756>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.451851, 33.438686, 42.683220> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.328197, 33.807941, 42.774654>,  <33.254005, 34.029495, 42.829517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.328197, 33.807941, 42.774654>,  <33.451851, 33.438686, 42.683220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.328197, 33.807941, 42.774654> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004669, 0.238886, -0.971037,
		-0.951006, -0.301251, -0.069538,
		-0.309138, 0.923137, 0.228588,
		33.235455, 34.084881, 42.843231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.069218, 33.716194, 42.042095>,  <33.451851, 33.438686, 42.683220>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.069218, 33.716194, 42.042095> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.126835, 34.054497, 42.247597>,  <33.161407, 34.257477, 42.370899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.126835, 34.054497, 42.247597>,  <33.069218, 33.716194, 42.042095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.126835, 34.054497, 42.247597> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052866, 0.511854, -0.857444,
		-0.988158, 0.150673, 0.029019,
		0.144048, 0.845756, 0.513758,
		33.170048, 34.308224, 42.401726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.697903, 34.274696, 41.738476>,  <33.069218, 33.716194, 42.042095>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.697903, 34.274696, 41.738476> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.961864, 34.472950, 41.964352>,  <33.120243, 34.591900, 42.099876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.961864, 34.472950, 41.964352>,  <32.697903, 34.274696, 41.738476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.961864, 34.472950, 41.964352> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119030, 0.673114, -0.729897,
		-0.741860, 0.548879, 0.385196,
		0.659906, 0.495631, 0.564689,
		33.159836, 34.621639, 42.133759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.540276, 34.916782, 41.656376>,  <32.697903, 34.274696, 41.738476>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.540276, 34.916782, 41.656376> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.928612, 34.904442, 41.751472>,  <33.161613, 34.897038, 41.808529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.928612, 34.904442, 41.751472>,  <32.540276, 34.916782, 41.656376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.928612, 34.904442, 41.751472> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207579, 0.604270, -0.769265,
		-0.119924, 0.796183, 0.593053,
		0.970839, -0.030852, 0.237737,
		33.219864, 34.895187, 41.822792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.858994, 35.549088, 41.492313>,  <32.540276, 34.916782, 41.656376>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.858994, 35.549088, 41.492313> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.186424, 35.320278, 41.513176>,  <33.382881, 35.182991, 41.525692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.186424, 35.320278, 41.513176>,  <32.858994, 35.549088, 41.492313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.186424, 35.320278, 41.513176> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365713, 0.449008, -0.815258,
		0.442930, 0.686425, 0.576745,
		0.818577, -0.572025, 0.052155,
		33.431995, 35.148670, 41.528824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.454319, 35.988800, 41.312595>,  <32.858994, 35.549088, 41.492313>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.454319, 35.988800, 41.312595> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.612583, 35.623447, 41.274258>,  <33.707542, 35.404236, 41.251255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.612583, 35.623447, 41.274258>,  <33.454319, 35.988800, 41.312595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.612583, 35.623447, 41.274258> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369717, 0.253939, -0.893769,
		0.840692, 0.318192, 0.438167,
		0.395658, -0.913383, -0.095843,
		33.731281, 35.349434, 41.245506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.199615, 36.020779, 41.126003>,  <33.454319, 35.988800, 41.312595>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.199615, 36.020779, 41.126003> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.080273, 35.659603, 41.002270>,  <34.008667, 35.442898, 40.928028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.080273, 35.659603, 41.002270>,  <34.199615, 36.020779, 41.126003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.080273, 35.659603, 41.002270> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443417, 0.155872, -0.882658,
		0.845202, -0.400510, 0.353872,
		-0.298355, -0.902937, -0.309336,
		33.990765, 35.388721, 40.909470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.143990, 36.774620, 41.401936>,  <34.199615, 36.020779, 41.126003>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.143990, 36.774620, 41.401936> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.100117, 37.171474, 41.377785>,  <34.073795, 37.409588, 41.363293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.100117, 37.171474, 41.377785>,  <34.143990, 36.774620, 41.401936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.100117, 37.171474, 41.377785> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304672, 0.024267, 0.952148,
		0.946121, 0.122826, 0.299613,
		-0.109677, 0.992132, -0.060381,
		34.067215, 37.469112, 41.359669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.479721, 37.032696, 42.007557>,  <34.143990, 36.774620, 41.401936>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.479721, 37.032696, 42.007557> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.273575, 37.365429, 41.925140>,  <34.149887, 37.565067, 41.875690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.273575, 37.365429, 41.925140>,  <34.479721, 37.032696, 42.007557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.273575, 37.365429, 41.925140> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341352, 0.021267, 0.939695,
		0.786051, 0.554618, 0.272987,
		-0.515366, 0.831833, -0.206037,
		34.118965, 37.614979, 41.863331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.676384, 37.567348, 42.586548>,  <34.479721, 37.032696, 42.007557>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.676384, 37.567348, 42.586548> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.330296, 37.675842, 42.417870>,  <34.122643, 37.740936, 42.316662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.330296, 37.675842, 42.417870>,  <34.676384, 37.567348, 42.586548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.330296, 37.675842, 42.417870> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490398, -0.282644, 0.824392,
		0.104412, 0.920079, 0.377561,
		-0.865221, 0.271232, -0.421694,
		34.070728, 37.757214, 42.291363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.349110, 38.059254, 43.058620>,  <34.676384, 37.567348, 42.586548>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.349110, 38.059254, 43.058620> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.065907, 37.907982, 42.820057>,  <33.895985, 37.817219, 42.676918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.065907, 37.907982, 42.820057>,  <34.349110, 38.059254, 43.058620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.065907, 37.907982, 42.820057> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665025, 0.072884, 0.743256,
		-0.237613, 0.922860, -0.303099,
		-0.708012, -0.378176, -0.596407,
		33.853504, 37.794529, 42.641136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.756718, 38.328842, 43.252407>,  <34.349110, 38.059254, 43.058620>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.756718, 38.328842, 43.252407> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.591930, 38.009529, 43.076664>,  <33.493057, 37.817944, 42.971218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.591930, 38.009529, 43.076664>,  <33.756718, 38.328842, 43.252407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.591930, 38.009529, 43.076664> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576493, -0.145062, 0.804122,
		-0.705648, 0.584558, -0.400441,
		-0.411967, -0.798279, -0.439357,
		33.468342, 37.770046, 42.944859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.174740, 38.357933, 43.459206>,  <33.756718, 38.328842, 43.252407>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.174740, 38.357933, 43.459206> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.179466, 37.982422, 43.321480>,  <33.182301, 37.757114, 43.238842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.179466, 37.982422, 43.321480>,  <33.174740, 38.357933, 43.459206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.179466, 37.982422, 43.321480> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508378, -0.302157, 0.806383,
		-0.861053, 0.165517, -0.480824,
		0.011815, -0.938779, -0.344318,
		33.183010, 37.700787, 43.218185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.489571, 38.109734, 43.467854>,  <33.174740, 38.357933, 43.459206>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.489571, 38.109734, 43.467854> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.704346, 37.772522, 43.455212>,  <32.833210, 37.570194, 43.447624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.704346, 37.772522, 43.455212>,  <32.489571, 38.109734, 43.467854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.704346, 37.772522, 43.455212> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474367, -0.332689, 0.815042,
		-0.697620, -0.422634, -0.578538,
		0.536938, -0.843029, -0.031607,
		32.865429, 37.519611, 43.445728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.983614, 37.667114, 43.632458>,  <32.489571, 38.109734, 43.467854>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.983614, 37.667114, 43.632458> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.325039, 37.484184, 43.732288>,  <32.529892, 37.374428, 43.792187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.325039, 37.484184, 43.732288>,  <31.983614, 37.667114, 43.632458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.325039, 37.484184, 43.732288> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412238, -0.299920, 0.860295,
		-0.318603, -0.837188, -0.444532,
		0.853553, -0.457346, 0.249565,
		32.581108, 37.346989, 43.807159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.778400, 36.987244, 43.927048>,  <31.983614, 37.667114, 43.632458>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.778400, 36.987244, 43.927048> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.146248, 37.084797, 44.050220>,  <32.366955, 37.143330, 44.124123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.146248, 37.084797, 44.050220>,  <31.778400, 36.987244, 43.927048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.146248, 37.084797, 44.050220> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221112, -0.326535, 0.918958,
		0.324670, -0.913178, -0.246362,
		0.919619, 0.243885, 0.307930,
		32.422134, 37.157963, 44.142601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.921083, 36.445530, 44.452991>,  <31.778400, 36.987244, 43.927048>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.921083, 36.445530, 44.452991> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.197350, 36.722610, 44.536083>,  <32.363110, 36.888859, 44.585938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.197350, 36.722610, 44.536083>,  <31.921083, 36.445530, 44.452991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.197350, 36.722610, 44.536083> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118956, -0.174516, 0.977442,
		0.713324, -0.699796, -0.038132,
		0.690664, 0.692697, 0.207732,
		32.404549, 36.930420, 44.598404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.248260, 36.149925, 45.081371>,  <31.921083, 36.445530, 44.452991>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.248260, 36.149925, 45.081371> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.343243, 36.538193, 45.066296>,  <32.400230, 36.771152, 45.057251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.343243, 36.538193, 45.066296>,  <32.248260, 36.149925, 45.081371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.343243, 36.538193, 45.066296> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074794, 0.056954, 0.995571,
		0.968515, -0.233584, 0.086124,
		0.237455, 0.970667, -0.037690,
		32.414478, 36.829391, 45.054989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.925835, 36.162395, 45.474678>,  <32.248260, 36.149925, 45.081371>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.925835, 36.162395, 45.474678> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.721252, 36.505833, 45.460663>,  <32.598503, 36.711895, 45.452251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.721252, 36.505833, 45.460663>,  <32.925835, 36.162395, 45.474678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.721252, 36.505833, 45.460663> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176861, 0.145082, 0.973484,
		0.840914, 0.491694, -0.226055,
		-0.511453, 0.858596, -0.035040,
		32.567818, 36.763412, 45.450150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.371857, 36.632397, 45.762985>,  <32.925835, 36.162395, 45.474678>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.371857, 36.632397, 45.762985> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.997990, 36.770565, 45.796631>,  <32.773670, 36.853466, 45.816818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.997990, 36.770565, 45.796631>,  <33.371857, 36.632397, 45.762985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.997990, 36.770565, 45.796631> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103586, 0.038261, 0.993884,
		0.340089, 0.937668, -0.071542,
		-0.934671, 0.345420, 0.084117,
		32.717587, 36.874191, 45.821865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.433327, 37.218380, 46.290279>,  <33.371857, 36.632397, 45.762985>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.433327, 37.218380, 46.290279> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.045315, 37.124557, 46.264912>,  <32.812508, 37.068264, 46.249691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.045315, 37.124557, 46.264912>,  <33.433327, 37.218380, 46.290279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.045315, 37.124557, 46.264912> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048756, -0.067786, 0.996508,
		-0.238037, 0.969736, 0.054318,
		-0.970031, -0.234558, -0.063416,
		32.754307, 37.054192, 46.245888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.787075, 37.927429, 46.437531>,  <33.433327, 37.218380, 46.290279>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.787075, 37.927429, 46.437531> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.101238, 38.013737, 46.669590>,  <34.289738, 38.065521, 46.808826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.101238, 38.013737, 46.669590>,  <33.787075, 37.927429, 46.437531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.101238, 38.013737, 46.669590> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548100, 0.193070, -0.813824,
		-0.287609, 0.957166, 0.033376,
		0.785409, 0.215770, 0.580152,
		34.336861, 38.078468, 46.843636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.061932, 38.641022, 46.255051>,  <33.787075, 37.927429, 46.437531>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.061932, 38.641022, 46.255051> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.361271, 38.447605, 46.436672>,  <34.540874, 38.331554, 46.545647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.361271, 38.447605, 46.436672>,  <34.061932, 38.641022, 46.255051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.361271, 38.447605, 46.436672> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655299, 0.432914, -0.619006,
		0.102748, 0.760773, 0.640833,
		0.748349, -0.483539, 0.454053,
		34.585777, 38.302544, 46.572887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.621517, 39.194851, 46.509727>,  <34.061932, 38.641022, 46.255051>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.621517, 39.194851, 46.509727> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.823086, 38.850239, 46.484982>,  <34.944027, 38.643471, 46.470135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.823086, 38.850239, 46.484982>,  <34.621517, 39.194851, 46.509727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.823086, 38.850239, 46.484982> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551058, 0.375820, -0.745047,
		0.665133, 0.341350, 0.664137,
		0.503918, -0.861533, -0.061867,
		34.974262, 38.591778, 46.466423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.264584, 39.411999, 46.257145>,  <34.621517, 39.194851, 46.509727>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.264584, 39.411999, 46.257145> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.238220, 39.022839, 46.168495>,  <35.222401, 38.789341, 46.115307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.238220, 39.022839, 46.168495>,  <35.264584, 39.411999, 46.257145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.238220, 39.022839, 46.168495> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541370, 0.151704, -0.826985,
		0.838197, -0.174487, 0.516702,
		-0.065912, -0.972903, -0.221620,
		35.218445, 38.730968, 46.102009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.012321, 39.230534, 46.082020>,  <35.264584, 39.411999, 46.257145>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.012321, 39.230534, 46.082020> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.802341, 38.925907, 45.930000>,  <35.676353, 38.743130, 45.838787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.802341, 38.925907, 45.930000>,  <36.012321, 39.230534, 46.082020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.802341, 38.925907, 45.930000> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583657, 0.002898, -0.811995,
		0.619492, -0.648078, 0.442973,
		-0.524952, -0.761569, -0.380051,
		35.644855, 38.697437, 45.815987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.479446, 38.744244, 45.892883>,  <36.012321, 39.230534, 46.082020>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.479446, 38.744244, 45.892883> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.162727, 38.716656, 45.650135>,  <35.972694, 38.700104, 45.504486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.162727, 38.716656, 45.650135>,  <36.479446, 38.744244, 45.892883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.162727, 38.716656, 45.650135> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609555, -0.026338, -0.792306,
		0.038666, -0.997271, 0.062899,
		-0.791800, -0.068976, -0.606873,
		35.925186, 38.695965, 45.468075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.759869, 38.631142, 45.274403>,  <36.479446, 38.744244, 45.892883>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.759869, 38.631142, 45.274403> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.385612, 38.656147, 45.135452>,  <36.161060, 38.671150, 45.052082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.385612, 38.656147, 45.135452>,  <36.759869, 38.631142, 45.274403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.385612, 38.656147, 45.135452> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347843, -0.003571, -0.937546,
		-0.059849, -0.998038, -0.018403,
		-0.935640, 0.062512, -0.347375,
		36.104919, 38.674900, 45.031239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.595112, 38.093178, 44.759892>,  <36.759869, 38.631142, 45.274403>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.595112, 38.093178, 44.759892> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.327415, 38.380096, 44.682323>,  <36.166798, 38.552250, 44.635784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.327415, 38.380096, 44.682323>,  <36.595112, 38.093178, 44.759892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.327415, 38.380096, 44.682323> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341923, 0.065579, -0.937437,
		-0.659706, -0.693672, -0.289149,
		-0.669236, 0.717300, -0.193920,
		36.126644, 38.595287, 44.624149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.266933, 37.872753, 44.173920>,  <36.595112, 38.093178, 44.759892>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.266933, 37.872753, 44.173920> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.208538, 38.267548, 44.200897>,  <36.173500, 38.504425, 44.217083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.208538, 38.267548, 44.200897>,  <36.266933, 37.872753, 44.173920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.208538, 38.267548, 44.200897> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157326, 0.090469, -0.983394,
		-0.976697, -0.132950, -0.168486,
		-0.145985, 0.986985, 0.067444,
		36.164742, 38.563644, 44.221130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.812653, 38.018402, 43.712219>,  <36.266933, 37.872753, 44.173920>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.812653, 38.018402, 43.712219> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.994911, 38.369854, 43.769363>,  <36.104267, 38.580723, 43.803650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.994911, 38.369854, 43.769363>,  <35.812653, 38.018402, 43.712219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.994911, 38.369854, 43.769363> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154700, 0.079883, -0.984727,
		-0.876617, 0.470783, -0.099525,
		0.455643, 0.878625, 0.142857,
		36.131603, 38.633442, 43.812222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.596046, 38.338276, 43.110123>,  <35.812653, 38.018402, 43.712219>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.596046, 38.338276, 43.110123> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.909451, 38.548206, 43.243187>,  <36.097492, 38.674164, 43.323025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.909451, 38.548206, 43.243187>,  <35.596046, 38.338276, 43.110123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.909451, 38.548206, 43.243187> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251296, 0.222003, -0.942107,
		-0.568293, 0.821751, 0.042056,
		0.783513, 0.524824, 0.332665,
		36.144505, 38.705654, 43.342987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.591984, 38.997513, 42.712124>,  <35.596046, 38.338276, 43.110123>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.591984, 38.997513, 42.712124> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.960339, 38.925106, 42.850224>,  <36.181351, 38.881660, 42.933083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.960339, 38.925106, 42.850224>,  <35.591984, 38.997513, 42.712124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.960339, 38.925106, 42.850224> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363766, 0.080628, -0.927994,
		0.140149, 0.980169, 0.140099,
		0.920887, -0.181021, 0.345252,
		36.236603, 38.870800, 42.953800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.036213, 39.508595, 42.414349>,  <35.591984, 38.997513, 42.712124>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.036213, 39.508595, 42.414349> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.284325, 39.220322, 42.538200>,  <36.433189, 39.047356, 42.612511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.284325, 39.220322, 42.538200>,  <36.036213, 39.508595, 42.414349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.284325, 39.220322, 42.538200> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541320, 0.107630, -0.833900,
		0.567654, 0.684857, 0.456881,
		0.620276, -0.720685, 0.309630,
		36.470409, 39.004116, 42.631088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.719719, 39.734856, 42.304031>,  <36.036213, 39.508595, 42.414349>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.719719, 39.734856, 42.304031> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.751976, 39.336212, 42.310562>,  <36.771332, 39.097027, 42.314480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.751976, 39.336212, 42.310562>,  <36.719719, 39.734856, 42.304031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.751976, 39.336212, 42.310562> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537686, 0.029707, -0.842622,
		0.839280, 0.076727, 0.538259,
		0.080642, -0.996610, 0.016323,
		36.776169, 39.037228, 42.315460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.796635, 33.796638, 26.952759> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.557831, 34.052811, 26.759502>,  <28.414549, 34.206516, 26.643549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.557831, 34.052811, 26.759502>,  <28.796635, 33.796638, 26.952759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.557831, 34.052811, 26.759502> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514672, 0.156207, 0.843038,
		0.615380, 0.751959, 0.236357,
		-0.597009, 0.640435, -0.483139,
		28.378729, 34.244942, 26.614561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.698606, 34.419285, 27.439901>,  <28.796635, 33.796638, 26.952759>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.698606, 34.419285, 27.439901> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.416609, 34.507622, 27.170321>,  <28.247410, 34.560623, 27.008572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.416609, 34.507622, 27.170321>,  <28.698606, 34.419285, 27.439901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.416609, 34.507622, 27.170321> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653117, 0.168236, 0.738332,
		0.276441, 0.960689, 0.025633,
		-0.704995, 0.220846, -0.673950,
		28.205111, 34.573875, 26.968136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.450891, 35.082985, 27.506062>,  <28.698606, 34.419285, 27.439901>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.450891, 35.082985, 27.506062> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.156538, 34.873875, 27.333931>,  <27.979925, 34.748409, 27.230652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.156538, 34.873875, 27.333931>,  <28.450891, 35.082985, 27.506062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.156538, 34.873875, 27.333931> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590518, 0.184531, 0.785644,
		-0.331305, 0.832260, -0.444500,
		-0.735884, -0.522773, -0.430328,
		27.935772, 34.717041, 27.204832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.801548, 35.557240, 27.686680>,  <28.450891, 35.082985, 27.506062>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.801548, 35.557240, 27.686680> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.698658, 35.183376, 27.588493>,  <27.636925, 34.959061, 27.529581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.698658, 35.183376, 27.588493>,  <27.801548, 35.557240, 27.686680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.698658, 35.183376, 27.588493> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661005, -0.015117, 0.750229,
		-0.704917, 0.355231, -0.613924,
		-0.257224, -0.934656, -0.245466,
		27.621490, 34.902981, 27.514854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.100250, 35.491642, 27.836918>,  <27.801548, 35.557240, 27.686680>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.100250, 35.491642, 27.836918> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.150249, 35.096378, 27.801313>,  <27.180250, 34.859222, 27.779951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.150249, 35.096378, 27.801313>,  <27.100250, 35.491642, 27.836918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.150249, 35.096378, 27.801313> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551041, -0.143751, 0.822003,
		-0.825063, -0.053700, -0.562483,
		0.124999, -0.988156, -0.089012,
		27.187750, 34.799931, 27.774611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.424139, 35.158047, 27.959730>,  <27.100250, 35.491642, 27.836918>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.424139, 35.158047, 27.959730> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.707201, 34.882351, 28.021923>,  <26.877037, 34.716934, 28.059238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.707201, 34.882351, 28.021923>,  <26.424139, 35.158047, 27.959730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.707201, 34.882351, 28.021923> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460588, -0.283119, 0.841250,
		-0.535804, -0.666927, -0.517806,
		0.707653, -0.689240, 0.155482,
		26.919497, 34.675579, 28.068567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.053112, 34.612579, 28.232647>,  <26.424139, 35.158047, 27.959730>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.053112, 34.612579, 28.232647> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.436253, 34.532066, 28.314632>,  <26.666136, 34.483757, 28.363825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.436253, 34.532066, 28.314632>,  <26.053112, 34.612579, 28.232647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.436253, 34.532066, 28.314632> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241851, -0.179981, 0.953475,
		-0.155017, -0.962859, -0.221073,
		0.957851, -0.201271, 0.204968,
		26.723608, 34.471684, 28.376122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.113264, 33.844173, 28.470249>,  <26.053112, 34.612579, 28.232647>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.113264, 33.844173, 28.470249> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.413242, 34.068581, 28.610443>,  <26.593229, 34.203224, 28.694559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.413242, 34.068581, 28.610443>,  <26.113264, 33.844173, 28.470249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.413242, 34.068581, 28.610443> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276853, -0.215008, 0.936549,
		0.600779, -0.799393, -0.005925,
		0.749945, 0.561018, 0.350487,
		26.638226, 34.236885, 28.715590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.468498, 33.392708, 29.063368>,  <26.113264, 33.844173, 28.470249>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.468498, 33.392708, 29.063368> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.605495, 33.761105, 29.137644>,  <26.687693, 33.982143, 29.182209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.605495, 33.761105, 29.137644>,  <26.468498, 33.392708, 29.063368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.605495, 33.761105, 29.137644> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222845, -0.112368, 0.968356,
		0.912711, -0.373033, 0.166752,
		0.342491, 0.920989, 0.185688,
		26.708242, 34.037399, 29.193350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.014427, 33.330780, 29.571623>,  <26.468498, 33.392708, 29.063368>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.014427, 33.330780, 29.571623> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.864208, 33.701405, 29.563183>,  <26.774076, 33.923779, 29.558119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.864208, 33.701405, 29.563183>,  <27.014427, 33.330780, 29.571623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.864208, 33.701405, 29.563183> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328508, -0.111789, 0.937862,
		0.866630, 0.359142, 0.346365,
		-0.375545, 0.926564, -0.021101,
		26.751545, 33.979374, 29.556852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.246574, 33.537640, 30.215641>,  <27.014427, 33.330780, 29.571623>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.246574, 33.537640, 30.215641> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.992809, 33.831802, 30.120399>,  <26.840551, 34.008301, 30.063253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.992809, 33.831802, 30.120399>,  <27.246574, 33.537640, 30.215641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.992809, 33.831802, 30.120399> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316603, 0.033799, 0.947956,
		0.705184, 0.676778, 0.211390,
		-0.634411, 0.735410, -0.238105,
		26.802486, 34.052425, 30.048967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.330927, 34.143433, 30.797686>,  <27.246574, 33.537640, 30.215641>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.330927, 34.143433, 30.797686> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.976740, 34.154541, 30.612137>,  <26.764229, 34.161205, 30.500807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.976740, 34.154541, 30.612137>,  <27.330927, 34.143433, 30.797686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.976740, 34.154541, 30.612137> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460098, 0.087795, 0.883517,
		0.065266, 0.995751, -0.064960,
		-0.885466, 0.027776, -0.463873,
		26.711100, 34.162872, 30.472975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.113226, 34.733059, 30.968630>,  <27.330927, 34.143433, 30.797686>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.113226, 34.733059, 30.968630> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.808914, 34.489330, 30.879234>,  <26.626328, 34.343094, 30.825598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.808914, 34.489330, 30.879234>,  <27.113226, 34.733059, 30.968630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.808914, 34.489330, 30.879234> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367571, 0.120716, 0.922127,
		-0.534892, 0.783681, -0.315807,
		-0.760777, -0.609320, -0.223489,
		26.580681, 34.306534, 30.812187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.483871, 35.080292, 31.294695>,  <27.113226, 34.733059, 30.968630>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.483871, 35.080292, 31.294695> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.357611, 34.713490, 31.197149>,  <26.281855, 34.493408, 31.138622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.357611, 34.713490, 31.197149>,  <26.483871, 35.080292, 31.294695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.357611, 34.713490, 31.197149> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438534, -0.086928, 0.894501,
		-0.841459, 0.389292, -0.374699,
		-0.315650, -0.917004, -0.243865,
		26.262917, 34.438389, 31.123989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.869581, 35.029411, 31.508827>,  <26.483871, 35.080292, 31.294695>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.869581, 35.029411, 31.508827> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.968307, 34.643402, 31.473469>,  <26.027544, 34.411797, 31.452253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.968307, 34.643402, 31.473469>,  <25.869581, 35.029411, 31.508827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.968307, 34.643402, 31.473469> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422779, -0.189308, 0.886240,
		-0.871975, -0.181367, -0.454715,
		0.246816, -0.965022, -0.088394,
		26.042353, 34.353897, 31.446951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.339121, 34.709415, 31.815451>,  <25.869581, 35.029411, 31.508827>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.339121, 34.709415, 31.815451> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.639032, 34.444740, 31.815544>,  <25.818979, 34.285934, 31.815599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.639032, 34.444740, 31.815544>,  <25.339121, 34.709415, 31.815451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.639032, 34.444740, 31.815544> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234519, -0.265410, 0.935179,
		-0.618738, -0.701229, -0.354177,
		0.749776, -0.661691, 0.000232,
		25.863966, 34.246235, 31.815615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.113295, 34.166534, 32.259441>,  <25.339121, 34.709415, 31.815451>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.113295, 34.166534, 32.259441> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.510031, 34.116333, 32.250488>,  <25.748072, 34.086212, 32.245117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.510031, 34.116333, 32.250488>,  <25.113295, 34.166534, 32.259441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.510031, 34.116333, 32.250488> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002954, -0.198173, 0.980163,
		-0.127453, -0.972099, -0.196927,
		0.991840, -0.125506, -0.022387,
		25.807583, 34.078682, 32.243771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.155256, 33.540237, 32.670448>,  <25.113295, 34.166534, 32.259441>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.155256, 33.540237, 32.670448> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.506609, 33.731194, 32.661121>,  <25.717421, 33.845768, 32.655525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.506609, 33.731194, 32.661121>,  <25.155256, 33.540237, 32.670448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.506609, 33.731194, 32.661121> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160736, -0.249097, 0.955047,
		0.450119, -0.842646, -0.295536,
		0.878383, 0.477388, -0.023321,
		25.770124, 33.874409, 32.654125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.625612, 32.983589, 32.802193>,  <25.155256, 33.540237, 32.670448>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.625612, 32.983589, 32.802193> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.789246, 33.338146, 32.888878>,  <25.887424, 33.550880, 32.940887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.789246, 33.338146, 32.888878>,  <25.625612, 32.983589, 32.802193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.789246, 33.338146, 32.888878> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265548, -0.342857, 0.901074,
		0.873004, -0.311065, -0.375636,
		0.409081, 0.886390, 0.216713,
		25.911970, 33.604065, 32.953892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.210567, 32.723312, 33.024715>,  <25.625612, 32.983589, 32.802193>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.210567, 32.723312, 33.024715> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.179890, 33.092419, 33.175774>,  <26.161484, 33.313885, 33.266407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.179890, 33.092419, 33.175774>,  <26.210567, 32.723312, 33.024715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.179890, 33.092419, 33.175774> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276542, -0.344216, 0.897240,
		0.957937, 0.173247, -0.228786,
		-0.076693, 0.922768, 0.377647,
		26.156881, 33.369247, 33.289066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.809565, 32.838463, 33.368610>,  <26.210567, 32.723312, 33.024715>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.809565, 32.838463, 33.368610> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.581205, 33.116154, 33.543938>,  <26.444189, 33.282768, 33.649136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.581205, 33.116154, 33.543938>,  <26.809565, 32.838463, 33.368610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.581205, 33.116154, 33.543938> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342952, -0.283422, 0.895576,
		0.745962, 0.661606, -0.076281,
		-0.570898, 0.694226, 0.438320,
		26.409935, 33.324421, 33.675434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.257944, 33.000439, 33.858833>,  <26.809565, 32.838463, 33.368610>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.257944, 33.000439, 33.858833> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.904053, 33.151146, 33.968601>,  <26.691717, 33.241570, 34.034462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.904053, 33.151146, 33.968601>,  <27.257944, 33.000439, 33.858833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.904053, 33.151146, 33.968601> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123852, -0.377554, 0.917667,
		0.449352, 0.845873, 0.287370,
		-0.884728, 0.376765, 0.274418,
		26.638634, 33.264175, 34.050926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.822872, 32.616856, 33.474464>,  <27.257944, 33.000439, 33.858833>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.822872, 32.616856, 33.474464> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.211180, 32.650387, 33.564426>,  <28.444164, 32.670506, 33.618404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.211180, 32.650387, 33.564426>,  <27.822872, 32.616856, 33.474464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.211180, 32.650387, 33.564426> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214810, 0.114634, -0.969905,
		-0.107091, 0.989864, 0.093275,
		0.970767, 0.083832, 0.224909,
		28.502409, 32.675537, 33.631901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.062859, 33.195976, 33.193592>,  <27.822872, 32.616856, 33.474464>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.062859, 33.195976, 33.193592> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.374210, 32.947094, 33.227009>,  <28.561022, 32.797764, 33.247059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.374210, 32.947094, 33.227009>,  <28.062859, 33.195976, 33.193592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.374210, 32.947094, 33.227009> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094345, -0.015634, -0.995417,
		0.620664, 0.782694, 0.046533,
		0.778380, -0.622210, 0.083546,
		28.607725, 32.760429, 33.252071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.622641, 33.447636, 32.782547>,  <28.062859, 33.195976, 33.193592>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.622641, 33.447636, 32.782547> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.699350, 33.059696, 32.842693>,  <28.745377, 32.826931, 32.878780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.699350, 33.059696, 32.842693>,  <28.622641, 33.447636, 32.782547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.699350, 33.059696, 32.842693> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238375, -0.102594, -0.965739,
		0.952050, 0.221050, 0.211513,
		0.191777, -0.969851, 0.150367,
		28.756884, 32.768742, 32.887802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.124439, 33.346851, 32.270367>,  <28.622641, 33.447636, 32.782547>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.124439, 33.346851, 32.270367> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.995707, 32.979740, 32.363415>,  <28.918467, 32.759476, 32.419243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.995707, 32.979740, 32.363415>,  <29.124439, 33.346851, 32.270367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.995707, 32.979740, 32.363415> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134410, -0.287489, -0.948306,
		0.937208, -0.273928, 0.215881,
		-0.321831, -0.917776, 0.232618,
		28.899157, 32.704407, 32.433201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.600590, 32.918262, 31.859570>,  <29.124439, 33.346851, 32.270367>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.600590, 32.918262, 31.859570> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.296835, 32.679588, 31.963339>,  <29.114582, 32.536385, 32.025600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.296835, 32.679588, 31.963339>,  <29.600590, 32.918262, 31.859570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.296835, 32.679588, 31.963339> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004252, -0.403265, -0.915074,
		0.650624, -0.693793, 0.308772,
		-0.759388, -0.596682, 0.259424,
		29.069019, 32.500584, 32.041164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.842756, 32.247185, 31.776455>,  <29.600590, 32.918262, 31.859570>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.842756, 32.247185, 31.776455> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.445314, 32.210644, 31.749899>,  <29.206850, 32.188721, 31.733965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.445314, 32.210644, 31.749899>,  <29.842756, 32.247185, 31.776455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.445314, 32.210644, 31.749899> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103299, -0.497642, -0.861209,
		0.045636, -0.862558, 0.503896,
		-0.993603, -0.091354, -0.066391,
		29.147234, 32.183239, 31.729982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.604210, 31.470425, 31.613319>,  <29.842756, 32.247185, 31.776455>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.604210, 31.470425, 31.613319> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.301683, 31.701555, 31.490616>,  <29.120167, 31.840233, 31.416994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.301683, 31.701555, 31.490616>,  <29.604210, 31.470425, 31.613319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.301683, 31.701555, 31.490616> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132733, -0.594686, -0.792925,
		-0.640600, -0.558984, 0.526467,
		-0.756315, 0.577828, -0.306761,
		29.074789, 31.874903, 31.398588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.115124, 31.026413, 31.278364>,  <29.604210, 31.470425, 31.613319>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.115124, 31.026413, 31.278364> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.023554, 31.391376, 31.142653>,  <28.968613, 31.610353, 31.061226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.023554, 31.391376, 31.142653>,  <29.115124, 31.026413, 31.278364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.023554, 31.391376, 31.142653> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157862, -0.378715, -0.911951,
		-0.960559, -0.155207, 0.230731,
		-0.228922, 0.912406, -0.339277,
		28.954878, 31.665098, 31.040869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.667583, 30.876240, 30.726591>,  <29.115124, 31.026413, 31.278364>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.667583, 30.876240, 30.726591> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.731638, 31.263182, 30.648018>,  <28.770071, 31.495346, 30.600874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.731638, 31.263182, 30.648018>,  <28.667583, 30.876240, 30.726591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.731638, 31.263182, 30.648018> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059571, -0.189166, -0.980136,
		-0.985296, 0.168655, 0.027334,
		0.160134, 0.967353, -0.196432,
		28.779678, 31.553387, 30.589088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.136377, 30.982462, 30.195515>,  <28.667583, 30.876240, 30.726591>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.136377, 30.982462, 30.195515> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.371967, 31.303862, 30.160879>,  <28.513321, 31.496700, 30.140097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.371967, 31.303862, 30.160879>,  <28.136377, 30.982462, 30.195515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.371967, 31.303862, 30.160879> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201064, 0.041914, -0.978681,
		-0.782739, 0.593830, 0.186241,
		0.588976, 0.803498, -0.086590,
		28.548660, 31.544910, 30.134903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.756680, 31.430199, 29.884455>,  <28.136377, 30.982462, 30.195515>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.756680, 31.430199, 29.884455> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.147291, 31.502527, 29.837643>,  <28.381659, 31.545923, 29.809555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.147291, 31.502527, 29.837643>,  <27.756680, 31.430199, 29.884455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.147291, 31.502527, 29.837643> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105485, -0.072233, -0.991794,
		-0.187790, 0.980860, -0.051464,
		0.976528, 0.180820, -0.117031,
		28.440250, 31.556774, 29.802534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.804848, 32.018353, 29.408241>,  <27.756680, 31.430199, 29.884455>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.804848, 32.018353, 29.408241> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.140368, 31.801147, 29.392471>,  <28.341681, 31.670826, 29.383009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.140368, 31.801147, 29.392471>,  <27.804848, 32.018353, 29.408241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.140368, 31.801147, 29.392471> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013894, 0.051041, -0.998600,
		0.544262, 0.838174, 0.035268,
		0.838801, -0.543009, -0.039425,
		28.392008, 31.638245, 29.380644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.336740, 32.396851, 29.021732>,  <27.804848, 32.018353, 29.408241>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.336740, 32.396851, 29.021732> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.485548, 32.025795, 29.008595>,  <28.574833, 31.803160, 29.000711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.485548, 32.025795, 29.008595>,  <28.336740, 32.396851, 29.021732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.485548, 32.025795, 29.008595> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196898, 0.113445, -0.973839,
		0.907101, 0.355821, 0.224855,
		0.372021, -0.927643, -0.032846,
		28.597155, 31.747501, 28.998741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.791498, 32.404839, 28.454754>,  <28.336740, 32.396851, 29.021732>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.791498, 32.404839, 28.454754> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.808628, 32.016926, 28.550829>,  <28.818907, 31.784178, 28.608473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.808628, 32.016926, 28.550829>,  <28.791498, 32.404839, 28.454754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.808628, 32.016926, 28.550829> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220349, -0.225318, -0.949041,
		0.974481, 0.093567, 0.204041,
		0.042824, -0.969782, 0.240185,
		28.821476, 31.725990, 28.622885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.418766, 32.189587, 28.155199>,  <28.791498, 32.404839, 28.454754>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.418766, 32.189587, 28.155199> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.165333, 31.882591, 28.194260>,  <29.013273, 31.698395, 28.217695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.165333, 31.882591, 28.194260>,  <29.418766, 32.189587, 28.155199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.165333, 31.882591, 28.194260> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001827, -0.127699, -0.991811,
		0.773672, -0.628217, 0.082310,
		-0.633583, -0.767487, 0.097649,
		28.975258, 31.652346, 28.223555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.651556, 31.642616, 27.691826>,  <29.418766, 32.189587, 28.155199>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.651556, 31.642616, 27.691826> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.274210, 31.540907, 27.777060>,  <29.047802, 31.479881, 27.828199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.274210, 31.540907, 27.777060>,  <29.651556, 31.642616, 27.691826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.274210, 31.540907, 27.777060> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202707, -0.066661, -0.976968,
		0.262622, -0.964832, 0.011343,
		-0.943366, -0.254274, 0.213085,
		28.991199, 31.464624, 27.840984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.504189, 31.175200, 27.166424>,  <29.651556, 31.642616, 27.691826>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.504189, 31.175200, 27.166424> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.143343, 31.278591, 27.304630>,  <28.926836, 31.340626, 27.387554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.143343, 31.278591, 27.304630>,  <29.504189, 31.175200, 27.166424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.143343, 31.278591, 27.304630> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403692, -0.222763, -0.887361,
		-0.152392, -0.939983, 0.305302,
		-0.902114, 0.258474, 0.345516,
		28.872709, 31.356134, 27.408285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.058558, 30.579229, 26.999594>,  <29.504189, 31.175200, 27.166424>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.058558, 30.579229, 26.999594> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.859722, 30.926115, 27.011200>,  <28.740421, 31.134247, 27.018164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.859722, 30.926115, 27.011200>,  <29.058558, 30.579229, 26.999594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.859722, 30.926115, 27.011200> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448050, -0.227899, -0.864473,
		-0.743070, -0.442721, 0.501842,
		-0.497089, 0.867214, 0.029017,
		28.710596, 31.186279, 27.019905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.629314, 30.529047, 26.430029>,  <29.058558, 30.579229, 26.999594>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.629314, 30.529047, 26.430029> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.576067, 30.916578, 26.513603>,  <28.544119, 31.149097, 26.563747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.576067, 30.916578, 26.513603>,  <28.629314, 30.529047, 26.430029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.576067, 30.916578, 26.513603> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285193, 0.164449, -0.944257,
		-0.949181, -0.185286, 0.254411,
		-0.133120, 0.968827, 0.208934,
		28.536131, 31.207226, 26.576283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.855816, 30.727976, 26.315742>,  <28.629314, 30.529047, 26.430029>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.855816, 30.727976, 26.315742> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.155384, 30.981997, 26.240030>,  <28.335125, 31.134409, 26.194603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.155384, 30.981997, 26.240030>,  <27.855816, 30.727976, 26.315742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.155384, 30.981997, 26.240030> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366114, 0.158451, -0.916981,
		-0.552339, 0.756043, 0.351169,
		0.748920, 0.635053, -0.189279,
		28.380060, 31.172512, 26.183247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.381451, 35.927143, 47.555927> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.207966, 35.580605, 47.654999>,  <36.103874, 35.372681, 47.714443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.207966, 35.580605, 47.654999>,  <36.381451, 35.927143, 47.555927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.207966, 35.580605, 47.654999> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359481, 0.418424, 0.834083,
		-0.826239, 0.272712, -0.492908,
		-0.433709, -0.866343, 0.247683,
		36.077854, 35.320702, 47.729305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.749573, 36.192654, 47.869968>,  <36.381451, 35.927143, 47.555927>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.749573, 36.192654, 47.869968> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.807411, 35.814251, 47.986012>,  <35.842113, 35.587208, 48.055637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.807411, 35.814251, 47.986012>,  <35.749573, 36.192654, 47.869968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.807411, 35.814251, 47.986012> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273822, 0.243480, 0.930451,
		-0.950849, -0.213975, -0.223832,
		0.144594, -0.946009, 0.290104,
		35.850788, 35.530449, 48.073044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.240490, 36.192806, 48.308407>,  <35.749573, 36.192654, 47.869968>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.240490, 36.192806, 48.308407> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.490185, 35.895416, 48.404381>,  <35.640003, 35.716980, 48.461967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.490185, 35.895416, 48.404381>,  <35.240490, 36.192806, 48.308407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.490185, 35.895416, 48.404381> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063587, 0.257753, 0.964116,
		-0.778644, -0.617093, 0.113623,
		0.624236, -0.743478, 0.239937,
		35.677456, 35.672375, 48.476360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.936779, 35.802227, 48.882938>,  <35.240490, 36.192806, 48.308407>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.936779, 35.802227, 48.882938> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.318409, 35.683998, 48.902409>,  <35.547386, 35.613060, 48.914089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.318409, 35.683998, 48.902409>,  <34.936779, 35.802227, 48.882938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.318409, 35.683998, 48.902409> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058686, -0.025090, 0.997961,
		-0.293753, -0.954989, -0.041284,
		0.954078, -0.295577, 0.048674,
		35.604633, 35.595325, 48.917011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.999931, 35.256142, 49.320591>,  <34.936779, 35.802227, 48.882938>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.999931, 35.256142, 49.320591> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.382851, 35.368744, 49.294258>,  <35.612602, 35.436306, 49.278458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.382851, 35.368744, 49.294258>,  <34.999931, 35.256142, 49.320591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.382851, 35.368744, 49.294258> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109078, -0.140828, 0.984007,
		0.267731, -0.949170, -0.165521,
		0.957299, 0.281504, -0.065829,
		35.670040, 35.453194, 49.274509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.339989, 34.852249, 49.819221>,  <34.999931, 35.256142, 49.320591>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.339989, 34.852249, 49.819221> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.610420, 35.141357, 49.761929>,  <35.772678, 35.314823, 49.727551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.610420, 35.141357, 49.761929>,  <35.339989, 34.852249, 49.819221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.610420, 35.141357, 49.761929> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173292, 0.032973, 0.984318,
		0.716162, -0.690298, -0.102959,
		0.676079, 0.722773, -0.143237,
		35.813244, 35.358189, 49.718956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.996643, 34.667927, 50.075108>,  <35.339989, 34.852249, 49.819221>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.996643, 34.667927, 50.075108> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.962505, 35.066357, 50.084492>,  <35.942024, 35.305416, 50.090122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.962505, 35.066357, 50.084492>,  <35.996643, 34.667927, 50.075108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.962505, 35.066357, 50.084492> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191836, -0.006682, 0.981404,
		0.977709, 0.088257, -0.190513,
		-0.085343, 0.996075, 0.023464,
		35.936901, 35.365181, 50.091530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.621857, 34.837574, 50.499294>,  <35.996643, 34.667927, 50.075108>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.621857, 34.837574, 50.499294> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.386314, 35.160694, 50.488621>,  <36.244987, 35.354565, 50.482216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.386314, 35.160694, 50.488621>,  <36.621857, 34.837574, 50.499294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.386314, 35.160694, 50.488621> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111723, 0.114047, 0.987173,
		0.800480, 0.578321, -0.157407,
		-0.588855, 0.807799, -0.026680,
		36.209660, 35.403034, 50.480618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.972168, 35.280151, 51.021313>,  <36.621857, 34.837574, 50.499294>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.972168, 35.280151, 51.021313> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.618309, 35.461708, 50.978645>,  <36.405994, 35.570641, 50.953045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.618309, 35.461708, 50.978645>,  <36.972168, 35.280151, 51.021313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.618309, 35.461708, 50.978645> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041963, 0.150341, 0.987743,
		0.464364, 0.878283, -0.113952,
		-0.884650, 0.453891, -0.106668,
		36.352913, 35.597874, 50.946644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.153053, 35.783272, 51.456596>,  <36.972168, 35.280151, 51.021313>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.153053, 35.783272, 51.456596> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.756290, 35.752888, 51.415897>,  <36.518234, 35.734657, 51.391476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.756290, 35.752888, 51.415897>,  <37.153053, 35.783272, 51.456596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.756290, 35.752888, 51.415897> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103811, 0.023694, 0.994315,
		-0.073119, 0.996829, -0.031388,
		-0.991906, -0.075962, -0.101750,
		36.458717, 35.730099, 51.385372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.984314, 36.183437, 52.144566>,  <37.153053, 35.783272, 51.456596>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.984314, 36.183437, 52.144566> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.662800, 35.986263, 52.011333>,  <36.469891, 35.867958, 51.931393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.662800, 35.986263, 52.011333>,  <36.984314, 36.183437, 52.144566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.662800, 35.986263, 52.011333> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276965, -0.185452, 0.942814,
		-0.526518, 0.850072, 0.012537,
		-0.803784, -0.492936, -0.333084,
		36.421665, 35.838383, 51.911407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.424450, 36.489731, 52.493298>,  <36.984314, 36.183437, 52.144566>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.424450, 36.489731, 52.493298> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.347904, 36.105824, 52.411110>,  <36.301975, 35.875477, 52.361797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.347904, 36.105824, 52.411110>,  <36.424450, 36.489731, 52.493298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.347904, 36.105824, 52.411110> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200728, -0.166650, 0.965368,
		-0.960775, 0.225980, -0.160762,
		-0.191363, -0.959771, -0.205474,
		36.290497, 35.817894, 52.349468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.081917, 37.110489, 52.593845>,  <36.424450, 36.489731, 52.493298>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.081917, 37.110489, 52.593845> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.797646, 36.834641, 52.538181>,  <35.627083, 36.669132, 52.504784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.797646, 36.834641, 52.538181>,  <36.081917, 37.110489, 52.593845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.797646, 36.834641, 52.538181> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582887, 0.687944, -0.432407,
		0.393928, -0.226189, -0.890876,
		-0.710679, -0.689617, -0.139158,
		35.584442, 36.627754, 52.496433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.894733, 37.123749, 51.947613>,  <36.081917, 37.110489, 52.593845>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.894733, 37.123749, 51.947613> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.552704, 36.985909, 52.102581>,  <35.347485, 36.903202, 52.195564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.552704, 36.985909, 52.102581>,  <35.894733, 37.123749, 51.947613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.552704, 36.985909, 52.102581> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514083, 0.660831, -0.546828,
		-0.067584, -0.666747, -0.742213,
		-0.855073, -0.344602, 0.387425,
		35.296181, 36.882526, 52.218807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.505951, 36.639843, 51.442471>,  <35.894733, 37.123749, 51.947613>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.505951, 36.639843, 51.442471> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.260124, 36.843342, 51.683628>,  <35.112629, 36.965443, 51.828323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.260124, 36.843342, 51.683628>,  <35.505951, 36.639843, 51.442471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.260124, 36.843342, 51.683628> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467822, 0.380311, -0.797813,
		-0.635174, -0.772357, 0.004277,
		-0.614570, 0.508751, 0.602889,
		35.075752, 36.995968, 51.864494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.865250, 36.490204, 51.326740>,  <35.505951, 36.639843, 51.442471>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.865250, 36.490204, 51.326740> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.804024, 36.835602, 51.518970>,  <34.767288, 37.042839, 51.634308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.804024, 36.835602, 51.518970>,  <34.865250, 36.490204, 51.326740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.804024, 36.835602, 51.518970> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477381, 0.361189, -0.801030,
		-0.865263, -0.352024, 0.356931,
		-0.153062, 0.863494, 0.480573,
		34.758106, 37.094650, 51.663143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.107651, 36.574543, 51.364471>,  <34.865250, 36.490204, 51.326740>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.107651, 36.574543, 51.364471> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.275528, 36.937515, 51.372688>,  <34.376255, 37.155300, 51.377617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.275528, 36.937515, 51.372688>,  <34.107651, 36.574543, 51.364471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.275528, 36.937515, 51.372688> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630520, 0.307749, -0.712556,
		-0.652917, 0.286106, 0.701315,
		0.419695, 0.907433, 0.020539,
		34.401436, 37.209743, 51.378849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.666893, 37.080032, 51.138313>,  <34.107651, 36.574543, 51.364471>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.666893, 37.080032, 51.138313> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.982330, 37.320267, 51.085529>,  <34.171593, 37.464405, 51.053860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.982330, 37.320267, 51.085529>,  <33.666893, 37.080032, 51.138313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.982330, 37.320267, 51.085529> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508652, 0.516544, -0.688807,
		-0.345523, 0.610313, 0.712834,
		0.788598, 0.600583, -0.131959,
		34.218910, 37.500443, 51.045940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.258480, 37.666756, 50.989990>,  <33.666893, 37.080032, 51.138313>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.258480, 37.666756, 50.989990> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.645638, 37.695259, 50.893574>,  <33.877934, 37.712360, 50.835724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.645638, 37.695259, 50.893574>,  <33.258480, 37.666756, 50.989990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.645638, 37.695259, 50.893574> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245377, 0.475761, -0.844655,
		0.054492, 0.876684, 0.477971,
		0.967895, 0.071256, -0.241043,
		33.936005, 37.716637, 50.821262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.356487, 38.325760, 50.675419>,  <33.258480, 37.666756, 50.989990>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.356487, 38.325760, 50.675419> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.659412, 38.105408, 50.535126>,  <33.841167, 37.973194, 50.450951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.659412, 38.105408, 50.535126>,  <33.356487, 38.325760, 50.675419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.659412, 38.105408, 50.535126> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102022, 0.430665, -0.896727,
		0.645038, 0.714882, 0.269944,
		0.757309, -0.550883, -0.350729,
		33.886604, 37.940144, 50.429909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.614338, 38.751011, 50.219700>,  <33.356487, 38.325760, 50.675419>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.614338, 38.751011, 50.219700> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.771397, 38.397762, 50.117001>,  <33.865631, 38.185814, 50.055382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.771397, 38.397762, 50.117001>,  <33.614338, 38.751011, 50.219700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.771397, 38.397762, 50.117001> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172470, 0.344923, -0.922650,
		0.903373, 0.317992, 0.287745,
		0.392645, -0.883125, -0.256750,
		33.889191, 38.132824, 50.039974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.267960, 38.848804, 49.841457>,  <33.614338, 38.751011, 50.219700>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.267960, 38.848804, 49.841457> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.147865, 38.476082, 49.759876>,  <34.075809, 38.252449, 49.710926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.147865, 38.476082, 49.759876>,  <34.267960, 38.848804, 49.841457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.147865, 38.476082, 49.759876> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213894, 0.142607, -0.966392,
		0.929573, -0.333774, 0.156490,
		-0.300240, -0.931804, -0.203956,
		34.057793, 38.196541, 49.698689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.786648, 38.578098, 49.437584>,  <34.267960, 38.848804, 49.841457>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.786648, 38.578098, 49.437584> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.461536, 38.350563, 49.387291>,  <34.266468, 38.214043, 49.357113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.461536, 38.350563, 49.387291>,  <34.786648, 38.578098, 49.437584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.461536, 38.350563, 49.387291> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148648, 0.006185, -0.988871,
		0.563289, -0.822423, 0.079530,
		-0.812778, -0.568842, -0.125736,
		34.217701, 38.179909, 49.349571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.002548, 38.168995, 48.889061>,  <34.786648, 38.578098, 49.437584>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.002548, 38.168995, 48.889061> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.608894, 38.098282, 48.895119>,  <34.372704, 38.055855, 48.898754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.608894, 38.098282, 48.895119>,  <35.002548, 38.168995, 48.889061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.608894, 38.098282, 48.895119> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006375, -0.050089, -0.998724,
		0.177313, -0.982975, 0.048168,
		-0.984134, -0.176779, 0.015148,
		34.313656, 38.045250, 48.899662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.771942, 37.608860, 48.464859>,  <35.002548, 38.168995, 48.889061>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.771942, 37.608860, 48.464859> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.421402, 37.799633, 48.491821>,  <34.211079, 37.914097, 48.507999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.421402, 37.799633, 48.491821>,  <34.771942, 37.608860, 48.464859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.421402, 37.799633, 48.491821> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150692, -0.138556, -0.978823,
		-0.457489, -0.867952, 0.193293,
		-0.876354, 0.476928, 0.067406,
		34.158497, 37.942711, 48.512043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.168247, 37.133148, 48.255074>,  <34.771942, 37.608860, 48.464859>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.168247, 37.133148, 48.255074> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.122890, 37.524883, 48.188099>,  <34.095676, 37.759926, 48.147915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.122890, 37.524883, 48.188099>,  <34.168247, 37.133148, 48.255074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.122890, 37.524883, 48.188099> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080216, -0.176993, -0.980938,
		-0.990307, -0.097798, 0.098628,
		-0.113390, 0.979341, -0.167432,
		34.088875, 37.818687, 48.137871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.195690, 37.144466, 47.536236>,  <34.168247, 37.133148, 48.255074>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.195690, 37.144466, 47.536236> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.195576, 37.535339, 47.621197>,  <34.195507, 37.769863, 47.672173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.195576, 37.535339, 47.621197>,  <34.195690, 37.144466, 47.536236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.195576, 37.535339, 47.621197> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074019, 0.211838, -0.974498,
		-0.997257, 0.015440, -0.072391,
		-0.000289, 0.977183, 0.212399,
		34.195488, 37.828495, 47.684917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.799740, 37.365757, 46.984879>,  <34.195690, 37.144466, 47.536236>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.799740, 37.365757, 46.984879> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.034866, 37.657574, 47.124729>,  <34.175941, 37.832664, 47.208641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.034866, 37.657574, 47.124729>,  <33.799740, 37.365757, 46.984879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.034866, 37.657574, 47.124729> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157972, 0.320344, -0.934037,
		-0.793419, 0.604275, 0.073057,
		0.587819, 0.729542, 0.349625,
		34.211212, 37.876438, 47.229618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.071449, 37.479641, 46.838799>,  <33.799740, 37.365757, 46.984879>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.071449, 37.479641, 46.838799> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.829945, 37.182510, 46.723091>,  <32.685043, 37.004230, 46.653667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.829945, 37.182510, 46.723091>,  <33.071449, 37.479641, 46.838799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.829945, 37.182510, 46.723091> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052843, -0.324781, 0.944312,
		-0.795412, 0.585425, 0.156837,
		-0.603761, -0.742829, -0.289270,
		32.648815, 36.959663, 46.636311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.470848, 37.445759, 47.313824>,  <33.071449, 37.479641, 46.838799>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.470848, 37.445759, 47.313824> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.496159, 37.089008, 47.134693>,  <32.511345, 36.874958, 47.027214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.496159, 37.089008, 47.134693>,  <32.470848, 37.445759, 47.313824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.496159, 37.089008, 47.134693> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048333, -0.450937, 0.891246,
		-0.996825, -0.034746, -0.071638,
		0.063271, -0.891879, -0.447826,
		32.515141, 36.821445, 47.000347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.950449, 37.048729, 47.677204>,  <32.470848, 37.445759, 47.313824>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.950449, 37.048729, 47.677204> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.181427, 36.771961, 47.503860>,  <32.320015, 36.605900, 47.399853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.181427, 36.771961, 47.503860>,  <31.950449, 37.048729, 47.677204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.181427, 36.771961, 47.503860> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087086, -0.579975, 0.809966,
		-0.811772, -0.429971, -0.395160,
		0.577445, -0.691920, -0.433363,
		32.354660, 36.564384, 47.373852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.717606, 36.500443, 48.004013>,  <31.950449, 37.048729, 47.677204>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.717606, 36.500443, 48.004013> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.068272, 36.371521, 47.861141>,  <32.278671, 36.294170, 47.775417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.068272, 36.371521, 47.861141>,  <31.717606, 36.500443, 48.004013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.068272, 36.371521, 47.861141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143557, -0.533355, 0.833621,
		-0.459179, -0.782084, -0.421307,
		0.876668, -0.322300, -0.357179,
		32.331272, 36.274830, 47.753986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.614483, 35.789299, 48.004944>,  <31.717606, 36.500443, 48.004013>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.614483, 35.789299, 48.004944> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.004852, 35.876358, 48.010658>,  <32.239075, 35.928593, 48.014088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.004852, 35.876358, 48.010658>,  <31.614483, 35.789299, 48.004944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.004852, 35.876358, 48.010658> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111748, -0.555176, 0.824192,
		0.187310, -0.802752, -0.566131,
		0.975924, 0.217644, 0.014284,
		32.297630, 35.941650, 48.014942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.005207, 35.152630, 48.192970>,  <31.614483, 35.789299, 48.004944>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.005207, 35.152630, 48.192970> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.281723, 35.431740, 48.268036>,  <32.447632, 35.599205, 48.313076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.281723, 35.431740, 48.268036>,  <32.005207, 35.152630, 48.192970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.281723, 35.431740, 48.268036> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227282, -0.456513, 0.860197,
		0.685898, -0.551996, -0.474177,
		0.691293, 0.697779, 0.187662,
		32.489113, 35.641075, 48.324333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.687706, 34.787445, 48.328060>,  <32.005207, 35.152630, 48.192970>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.687706, 34.787445, 48.328060> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.689774, 35.154724, 48.486496>,  <32.691013, 35.375092, 48.581558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.689774, 35.154724, 48.486496>,  <32.687706, 34.787445, 48.328060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.689774, 35.154724, 48.486496> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180596, -0.390440, 0.902741,
		0.983544, 0.066863, -0.167842,
		0.005172, 0.918197, 0.396090,
		32.691326, 35.430183, 48.605324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.261433, 34.240120, 48.472103>,  <32.687706, 34.787445, 48.328060>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.261433, 34.240120, 48.472103> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.100193, 33.880783, 48.402260>,  <33.003448, 33.665180, 48.360355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.100193, 33.880783, 48.402260>,  <33.261433, 34.240120, 48.472103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.100193, 33.880783, 48.402260> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154604, 0.121208, -0.980513,
		0.902003, -0.422239, 0.090028,
		-0.403098, -0.898345, -0.174610,
		32.979263, 33.611279, 48.349876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.744999, 33.847878, 48.048698>,  <33.261433, 34.240120, 48.472103>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.744999, 33.847878, 48.048698> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.387939, 33.681141, 47.980091>,  <33.173702, 33.581097, 47.938927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.387939, 33.681141, 47.980091>,  <33.744999, 33.847878, 48.048698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.387939, 33.681141, 47.980091> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215124, -0.059579, -0.974768,
		0.396108, -0.907023, 0.142857,
		-0.892648, -0.416846, -0.171523,
		33.120144, 33.556087, 47.928635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.757282, 33.450256, 47.422951>,  <33.744999, 33.847878, 48.048698>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.757282, 33.450256, 47.422951> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.359161, 33.480579, 47.447018>,  <33.120289, 33.498772, 47.461456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.359161, 33.480579, 47.447018>,  <33.757282, 33.450256, 47.422951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.359161, 33.480579, 47.447018> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061398, -0.014038, -0.998015,
		-0.074811, -0.997024, 0.018626,
		-0.995306, 0.075806, 0.060165,
		33.060570, 33.503319, 47.465069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.491573, 32.883343, 46.964508>,  <33.757282, 33.450256, 47.422951>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.491573, 32.883343, 46.964508> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.202999, 33.154312, 47.021965>,  <33.029854, 33.316895, 47.056438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.202999, 33.154312, 47.021965>,  <33.491573, 32.883343, 46.964508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.202999, 33.154312, 47.021965> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233181, -0.042324, -0.971512,
		-0.652044, -0.734375, 0.188496,
		-0.721432, 0.677423, 0.143645,
		32.986568, 33.357540, 47.065060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.818573, 32.536350, 46.735840>,  <33.491573, 32.883343, 46.964508>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.818573, 32.536350, 46.735840> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.766956, 32.932590, 46.717690>,  <32.735985, 33.170334, 46.706799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.766956, 32.932590, 46.717690>,  <32.818573, 32.536350, 46.735840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.766956, 32.932590, 46.717690> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318950, -0.084787, -0.943972,
		-0.938945, -0.107343, 0.326893,
		-0.129045, 0.990600, -0.045373,
		32.728245, 33.229771, 46.704079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.228123, 32.565258, 46.252964>,  <32.818573, 32.536350, 46.735840>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.228123, 32.565258, 46.252964> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.383736, 32.933701, 46.258896>,  <32.477104, 33.154766, 46.262455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.383736, 32.933701, 46.258896>,  <32.228123, 32.565258, 46.252964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.383736, 32.933701, 46.258896> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083750, 0.051392, -0.995161,
		-0.917409, 0.385908, 0.097136,
		0.389033, 0.921105, 0.014827,
		32.500446, 33.210033, 46.263344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.763264, 33.074974, 45.850029>,  <32.228123, 32.565258, 46.252964>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.763264, 33.074974, 45.850029> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.123875, 33.247959, 45.844036>,  <32.340240, 33.351749, 45.840439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.123875, 33.247959, 45.844036>,  <31.763264, 33.074974, 45.850029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.123875, 33.247959, 45.844036> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110521, 0.196645, -0.974226,
		-0.418371, 0.879947, 0.225077,
		0.901527, 0.432463, -0.014982,
		32.394333, 33.377697, 45.839542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<37.070736, 32.464001, 51.699619> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.038876, 32.860695, 51.739849>,  <37.019760, 33.098713, 51.763988>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.038876, 32.860695, 51.739849>,  <37.070736, 32.464001, 51.699619>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.038876, 32.860695, 51.739849> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608943, 0.031472, -0.792590,
		-0.789205, -0.124379, 0.601403,
		-0.079654, 0.991735, 0.100578,
		37.014980, 33.158215, 51.770023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.423008, 32.733681, 51.515881>,  <37.070736, 32.464001, 51.699619>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.423008, 32.733681, 51.515881> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.644276, 33.059853, 51.447666>,  <36.777039, 33.255554, 51.406738>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.644276, 33.059853, 51.447666>,  <36.423008, 32.733681, 51.515881>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.644276, 33.059853, 51.447666> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254521, -0.029487, -0.966617,
		-0.793233, 0.578110, 0.191232,
		0.553173, 0.815426, -0.170532,
		36.810226, 33.304482, 51.396507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.187222, 33.022232, 50.895702>,  <36.423008, 32.733681, 51.515881>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.187222, 33.022232, 50.895702> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.526234, 33.232998, 50.921188>,  <36.729641, 33.359455, 50.936478>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.526234, 33.232998, 50.921188>,  <36.187222, 33.022232, 50.895702>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.526234, 33.232998, 50.921188> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043590, 0.050533, -0.997771,
		-0.528957, 0.848417, 0.019860,
		0.847529, 0.526912, 0.063712,
		36.780491, 33.391071, 50.940304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.226585, 33.596874, 50.334599>,  <36.187222, 33.022232, 50.895702>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.226585, 33.596874, 50.334599> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.612339, 33.581863, 50.439335>,  <36.843792, 33.572857, 50.502178>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.612339, 33.581863, 50.439335>,  <36.226585, 33.596874, 50.334599>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.612339, 33.581863, 50.439335> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262960, 0.028680, -0.964380,
		0.028680, 0.998884, 0.037527,
		0.964380, -0.037527, 0.261844,
		36.901653, 33.570606, 50.517887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.648338, 34.112427, 49.889523>,  <36.226585, 33.596874, 50.334599>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.648338, 34.112427, 49.889523> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.906902, 33.833652, 50.013737>,  <37.062038, 33.666386, 50.088264>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.906902, 33.833652, 50.013737>,  <36.648338, 34.112427, 49.889523>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.906902, 33.833652, 50.013737> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359312, -0.080990, -0.929697,
		0.673093, 0.712541, 0.198066,
		0.646406, -0.696940, 0.310538,
		37.100822, 33.624569, 50.106899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.295620, 34.182076, 49.579720>,  <36.648338, 34.112427, 49.889523>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.295620, 34.182076, 49.579720> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.311676, 33.797207, 49.687515>,  <37.321308, 33.566288, 49.752193>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.311676, 33.797207, 49.687515>,  <37.295620, 34.182076, 49.579720>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.311676, 33.797207, 49.687515> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507354, -0.212723, -0.835069,
		0.860802, 0.170246, 0.479620,
		0.040140, -0.962167, 0.269488,
		37.323719, 33.508556, 49.768360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.041328, 34.045654, 49.479080>,  <37.295620, 34.182076, 49.579720>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.041328, 34.045654, 49.479080> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.866402, 33.686440, 49.459965>,  <37.761444, 33.470909, 49.448494>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.866402, 33.686440, 49.459965>,  <38.041328, 34.045654, 49.479080>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.866402, 33.686440, 49.459965> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226239, -0.058432, -0.972318,
		0.870383, -0.436026, 0.228724,
		-0.437320, -0.898035, -0.047788,
		37.735207, 33.417030, 49.445629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.530022, 33.647110, 49.319317>,  <38.041328, 34.045654, 49.479080>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.530022, 33.647110, 49.319317> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.196262, 33.451077, 49.218433>,  <37.996006, 33.333458, 49.157906>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.196262, 33.451077, 49.218433>,  <38.530022, 33.647110, 49.319317>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.196262, 33.451077, 49.218433> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358280, -0.134553, -0.923867,
		0.418834, -0.861230, 0.287856,
		-0.834394, -0.490080, -0.252207,
		37.945946, 33.304054, 49.142773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.726280, 33.035046, 49.092602>,  <38.530022, 33.647110, 49.319317>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.726280, 33.035046, 49.092602> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.363388, 33.111515, 48.942734>,  <38.145653, 33.157398, 48.852814>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.363388, 33.111515, 48.942734>,  <38.726280, 33.035046, 49.092602>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.363388, 33.111515, 48.942734> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323827, -0.251025, -0.912208,
		-0.268450, -0.948913, 0.165828,
		-0.907232, 0.191182, -0.374672,
		38.091217, 33.168865, 48.830334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.606647, 32.451099, 48.703716>,  <38.726280, 33.035046, 49.092602>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.606647, 32.451099, 48.703716> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.325169, 32.707829, 48.581814>,  <38.156281, 32.861866, 48.508671>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.325169, 32.707829, 48.581814>,  <38.606647, 32.451099, 48.703716>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.325169, 32.707829, 48.581814> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127943, -0.307450, -0.942924,
		-0.698890, -0.702520, 0.134233,
		-0.703693, 0.641825, -0.304756,
		38.114059, 32.900375, 48.490387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.197556, 31.990761, 48.322186>,  <38.606647, 32.451099, 48.703716>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.197556, 31.990761, 48.322186> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.139534, 32.372219, 48.216721>,  <38.104721, 32.601093, 48.153442>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.139534, 32.372219, 48.216721>,  <38.197556, 31.990761, 48.322186>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.139534, 32.372219, 48.216721> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015826, -0.264212, -0.964335,
		-0.989297, -0.144053, 0.023233,
		-0.145054, 0.953646, -0.263664,
		38.096020, 32.658314, 48.137623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.831860, 31.957983, 47.760311>,  <38.197556, 31.990761, 48.322186>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.831860, 31.957983, 47.760311> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.967884, 32.329338, 47.700371>,  <38.049500, 32.552151, 47.664406>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.967884, 32.329338, 47.700371>,  <37.831860, 31.957983, 47.760311>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.967884, 32.329338, 47.700371> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098578, -0.193665, -0.976102,
		-0.935223, 0.317161, -0.157377,
		0.340060, 0.928387, -0.149855,
		38.069901, 32.607853, 47.655415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.115292, 32.153538, 48.046989>,  <37.831860, 31.957983, 47.760311>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.115292, 32.153538, 48.046989> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.842308, 31.903822, 47.894932>,  <36.678516, 31.753992, 47.803699>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.842308, 31.903822, 47.894932>,  <37.115292, 32.153538, 48.046989>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.842308, 31.903822, 47.894932> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259043, -0.279742, 0.924468,
		-0.683478, 0.729387, 0.029196,
		-0.682463, -0.624290, -0.380140,
		36.637569, 31.716536, 47.780891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.470634, 32.288498, 48.313953>,  <37.115292, 32.153538, 48.046989>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.470634, 32.288498, 48.313953> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.423111, 31.917398, 48.172432>,  <36.394596, 31.694740, 48.087521>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.423111, 31.917398, 48.172432>,  <36.470634, 32.288498, 48.313953>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.423111, 31.917398, 48.172432> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568345, -0.228635, 0.790386,
		-0.814168, 0.294986, -0.500114,
		-0.118809, -0.927744, -0.353801,
		36.387466, 31.639074, 48.066292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.716156, 32.142246, 48.406918>,  <36.470634, 32.288498, 48.313953>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.716156, 32.142246, 48.406918> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.927368, 31.803200, 48.386021>,  <36.054096, 31.599771, 48.373482>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.927368, 31.803200, 48.386021>,  <35.716156, 32.142246, 48.406918>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.927368, 31.803200, 48.386021> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494831, -0.357088, 0.792231,
		-0.690165, -0.392470, -0.607981,
		0.528029, -0.847618, -0.052243,
		36.085777, 31.548914, 48.370346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.308899, 31.516598, 48.284672>,  <35.716156, 32.142246, 48.406918>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.308899, 31.516598, 48.284672> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.635864, 31.331860, 48.422382>,  <35.832043, 31.221016, 48.505009>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.635864, 31.331860, 48.422382>,  <35.308899, 31.516598, 48.284672>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.635864, 31.331860, 48.422382> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530610, -0.371021, 0.762100,
		-0.224238, -0.805632, -0.548338,
		0.817417, -0.461846, 0.344279,
		35.881088, 31.193306, 48.525665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.022671, 30.800135, 48.393394>,  <35.308899, 31.516598, 48.284672>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.022671, 30.800135, 48.393394> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.358292, 30.843122, 48.606728>,  <35.559666, 30.868916, 48.734726>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.358292, 30.843122, 48.606728>,  <35.022671, 30.800135, 48.393394>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.358292, 30.843122, 48.606728> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435103, -0.455948, 0.776400,
		0.326610, -0.883494, -0.335804,
		0.839054, 0.107471, 0.533328,
		35.610008, 30.875364, 48.766727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.106087, 30.145872, 48.625916>,  <35.022671, 30.800135, 48.393394>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.106087, 30.145872, 48.625916> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.326122, 30.382820, 48.861374>,  <35.458141, 30.524988, 49.002647>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.326122, 30.382820, 48.861374>,  <35.106087, 30.145872, 48.625916>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.326122, 30.382820, 48.861374> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588454, -0.225203, 0.776534,
		0.592561, -0.773551, 0.224701,
		0.550085, 0.592370, 0.588646,
		35.491146, 30.560532, 49.037968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.056332, 29.826519, 49.295647>,  <35.106087, 30.145872, 48.625916>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.056332, 29.826519, 49.295647> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.180992, 30.202675, 49.350109>,  <35.255787, 30.428370, 49.382786>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.180992, 30.202675, 49.350109>,  <35.056332, 29.826519, 49.295647>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.180992, 30.202675, 49.350109> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557643, 0.064987, 0.827533,
		0.769356, -0.333828, 0.544655,
		0.311649, 0.940391, 0.136159,
		35.274487, 30.484793, 49.390957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.273079, 29.827927, 50.033688>,  <35.056332, 29.826519, 49.295647>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.273079, 29.827927, 50.033688> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.229454, 30.214090, 49.938953>,  <35.203281, 30.445789, 49.882114>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.229454, 30.214090, 49.938953>,  <35.273079, 29.827927, 50.033688>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.229454, 30.214090, 49.938953> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516320, 0.148579, 0.843409,
		0.849424, 0.214264, 0.482256,
		-0.109059, 0.965409, -0.236836,
		35.196735, 30.503714, 49.867905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.450626, 30.244093, 50.668762>,  <35.273079, 29.827927, 50.033688>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.450626, 30.244093, 50.668762> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.247547, 30.487398, 50.424709>,  <35.125698, 30.633381, 50.278278>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.247547, 30.487398, 50.424709>,  <35.450626, 30.244093, 50.668762>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.247547, 30.487398, 50.424709> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587687, 0.273336, 0.761519,
		0.629974, 0.745188, 0.218696,
		-0.507697, 0.608262, -0.610132,
		35.095238, 30.669876, 50.241669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.434193, 30.744122, 51.141705>,  <35.450626, 30.244093, 50.668762>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.434193, 30.744122, 51.141705> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.153454, 30.833527, 50.871166>,  <34.985008, 30.887169, 50.708843>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.153454, 30.833527, 50.871166>,  <35.434193, 30.744122, 51.141705>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.153454, 30.833527, 50.871166> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641195, 0.215356, 0.736540,
		0.310282, 0.950612, -0.007832,
		-0.701850, 0.223513, -0.676349,
		34.942898, 30.900581, 50.668262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.157940, 31.414173, 51.267265>,  <35.434193, 30.744122, 51.141705>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.157940, 31.414173, 51.267265> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.873669, 31.199282, 51.085575>,  <34.703106, 31.070347, 50.976562>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.873669, 31.199282, 51.085575>,  <35.157940, 31.414173, 51.267265>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.873669, 31.199282, 51.085575> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667558, 0.311187, 0.676409,
		-0.222037, 0.783931, -0.579785,
		-0.710680, -0.537228, -0.454224,
		34.660465, 31.038113, 50.949306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.550476, 31.807728, 51.362263>,  <35.157940, 31.414173, 51.267265>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.550476, 31.807728, 51.362263> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.379429, 31.462795, 51.253799>,  <34.276802, 31.255835, 51.188721>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.379429, 31.462795, 51.253799>,  <34.550476, 31.807728, 51.362263>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.379429, 31.462795, 51.253799> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748386, 0.169472, 0.641247,
		-0.507015, 0.477138, -0.717827,
		-0.427615, -0.862333, -0.271159,
		34.251144, 31.204096, 51.172451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.922432, 31.954855, 51.078762>,  <34.550476, 31.807728, 51.362263>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.922432, 31.954855, 51.078762> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.933384, 31.586145, 51.233467>,  <33.939957, 31.364920, 51.326290>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.933384, 31.586145, 51.233467>,  <33.922432, 31.954855, 51.078762>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.933384, 31.586145, 51.233467> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834936, 0.191660, 0.515895,
		-0.549665, -0.337047, -0.764374,
		0.027381, -0.921773, 0.386761,
		33.941597, 31.309614, 51.349495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.223164, 31.818165, 51.201912>,  <33.922432, 31.954855, 51.078762>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.223164, 31.818165, 51.201912> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.404194, 31.534914, 51.418701>,  <33.512810, 31.364964, 51.548775>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.404194, 31.534914, 51.418701>,  <33.223164, 31.818165, 51.201912>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.404194, 31.534914, 51.418701> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749247, 0.027599, 0.661715,
		-0.483536, -0.705546, -0.518071,
		0.452572, -0.708127, 0.541973,
		33.539967, 31.322475, 51.581295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.826851, 31.379646, 50.720863>,  <33.223164, 31.818165, 51.201912>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.826851, 31.379646, 50.720863> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.608288, 31.714514, 50.711170>,  <32.477150, 31.915434, 50.705357>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.608288, 31.714514, 50.711170>,  <32.826851, 31.379646, 50.720863>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.608288, 31.714514, 50.711170> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284462, 0.158298, -0.945528,
		-0.787730, -0.523537, -0.324638,
		-0.546408, 0.837168, -0.024230,
		32.444366, 31.965664, 50.703899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.564671, 31.408861, 49.917625>,  <32.826851, 31.379646, 50.720863>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.564671, 31.408861, 49.917625> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.510643, 31.762245, 50.097069>,  <32.478226, 31.974276, 50.204735>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.510643, 31.762245, 50.097069>,  <32.564671, 31.408861, 49.917625>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.510643, 31.762245, 50.097069> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036876, 0.456928, -0.888739,
		-0.990150, -0.103497, -0.094295,
		-0.135068, 0.883462, 0.448611,
		32.470123, 32.027283, 50.231651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.091991, 31.775490, 49.469311>,  <32.564671, 31.408861, 49.917625>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.091991, 31.775490, 49.469311> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.262020, 32.067902, 49.682819>,  <32.364037, 32.243347, 49.810925>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.262020, 32.067902, 49.682819>,  <32.091991, 31.775490, 49.469311>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.262020, 32.067902, 49.682819> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263612, 0.464158, -0.845615,
		-0.865924, 0.500154, 0.004591,
		0.425069, 0.731029, 0.533773,
		32.389542, 32.287209, 49.842953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.833576, 32.444332, 49.239899>,  <32.091991, 31.775490, 49.469311>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.833576, 32.444332, 49.239899> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.161762, 32.570118, 49.430874>,  <32.358673, 32.645592, 49.545460>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.161762, 32.570118, 49.430874>,  <31.833576, 32.444332, 49.239899>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.161762, 32.570118, 49.430874> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247085, 0.558042, -0.792173,
		-0.515541, 0.767919, 0.380154,
		0.820467, 0.314468, 0.477435,
		32.407902, 32.664459, 49.574104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.782612, 33.104801, 49.261784>,  <31.833576, 32.444332, 49.239899>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.782612, 33.104801, 49.261784> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.173565, 33.029427, 49.300175>,  <32.408138, 32.984203, 49.323208>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.173565, 33.029427, 49.300175>,  <31.782612, 33.104801, 49.261784>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.173565, 33.029427, 49.300175> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167161, 0.410471, -0.896421,
		0.129523, 0.892191, 0.432688,
		0.977385, -0.188435, 0.095974,
		32.466782, 32.972897, 49.328968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.049000, 33.746174, 49.141911>,  <31.782612, 33.104801, 49.261784>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.049000, 33.746174, 49.141911> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.350609, 33.486511, 49.101803>,  <32.531574, 33.330715, 49.077740>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.350609, 33.486511, 49.101803>,  <32.049000, 33.746174, 49.141911>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.350609, 33.486511, 49.101803> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227859, 0.401669, -0.886985,
		0.616066, 0.645956, 0.450781,
		0.754018, -0.649156, -0.100268,
		32.576813, 33.291763, 49.071724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.570213, 34.206264, 48.825985>,  <32.049000, 33.746174, 49.141911>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.570213, 34.206264, 48.825985> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.682865, 33.826511, 48.770329>,  <32.750458, 33.598660, 48.736935>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.682865, 33.826511, 48.770329>,  <32.570213, 34.206264, 48.825985>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.682865, 33.826511, 48.770329> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367396, 0.240655, -0.898391,
		0.886400, 0.201893, 0.416574,
		0.281629, -0.949381, -0.139142,
		32.767353, 33.541698, 48.728584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.249668, 34.698860, 49.020832>,  <32.570213, 34.206264, 48.825985>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.249668, 34.698860, 49.020832> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.084332, 35.059380, 49.072685>,  <32.985130, 35.275692, 49.103798>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.084332, 35.059380, 49.072685>,  <33.249668, 34.698860, 49.020832>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.084332, 35.059380, 49.072685> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265337, -0.016965, 0.964006,
		0.871059, 0.432860, -0.232136,
		-0.413342, 0.901301, 0.129632,
		32.960327, 35.329769, 49.111576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.745331, 35.082558, 49.430725>,  <33.249668, 34.698860, 49.020832>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.745331, 35.082558, 49.430725> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.398014, 35.275661, 49.476341>,  <33.189625, 35.391525, 49.503712>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.398014, 35.275661, 49.476341>,  <33.745331, 35.082558, 49.430725>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.398014, 35.275661, 49.476341> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190309, 0.111895, 0.975327,
		0.458087, 0.868576, -0.189031,
		-0.868296, 0.482759, 0.114040,
		33.137524, 35.420490, 49.510555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.904858, 35.654636, 49.789570>,  <33.745331, 35.082558, 49.430725>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.904858, 35.654636, 49.789570> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.517345, 35.606052, 49.876019>,  <33.284836, 35.576900, 49.927887>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.517345, 35.606052, 49.876019>,  <33.904858, 35.654636, 49.789570>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.517345, 35.606052, 49.876019> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194535, 0.167929, 0.966414,
		-0.153674, 0.978288, -0.139059,
		-0.968783, -0.121461, 0.216118,
		33.226711, 35.569614, 49.940853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.760113, 36.077045, 50.327843>,  <33.904858, 35.654636, 49.789570>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.760113, 36.077045, 50.327843> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.451679, 35.823418, 50.351112>,  <33.266621, 35.671242, 50.365074>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.451679, 35.823418, 50.351112>,  <33.760113, 36.077045, 50.327843>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.451679, 35.823418, 50.351112> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093570, -0.022474, 0.995359,
		-0.629820, 0.772949, 0.076659,
		-0.771085, -0.634070, 0.058170,
		33.220352, 35.633198, 50.368565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.334064, 36.420830, 50.791431>,  <33.760113, 36.077045, 50.327843>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.334064, 36.420830, 50.791431> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.222919, 36.036690, 50.782265>,  <33.156231, 35.806206, 50.776764>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.222919, 36.036690, 50.782265>,  <33.334064, 36.420830, 50.791431>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.222919, 36.036690, 50.782265> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028563, -0.032104, 0.999077,
		-0.960196, 0.276952, 0.036351,
		-0.277863, -0.960347, -0.022915,
		33.139561, 35.748585, 50.775391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.842926, 36.404423, 51.311924>,  <33.334064, 36.420830, 50.791431>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.842926, 36.404423, 51.311924> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.908539, 36.012539, 51.265854>,  <32.947906, 35.777409, 51.238213>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.908539, 36.012539, 51.265854>,  <32.842926, 36.404423, 51.311924>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.908539, 36.012539, 51.265854> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141769, -0.138956, 0.980098,
		-0.976214, -0.144440, -0.161686,
		0.164032, -0.979708, -0.115174,
		32.957748, 35.718628, 51.231300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.322643, 36.103970, 51.784542>,  <32.842926, 36.404423, 51.311924>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.322643, 36.103970, 51.784542> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.610775, 35.838226, 51.704781>,  <32.783653, 35.678780, 51.656925>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.610775, 35.838226, 51.704781>,  <32.322643, 36.103970, 51.784542>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.610775, 35.838226, 51.704781> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078998, -0.207029, 0.975140,
		-0.689120, -0.718173, -0.096646,
		0.720328, -0.664354, -0.199402,
		32.826874, 35.638920, 51.644958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.153915, 35.418259, 52.084949>,  <32.322643, 36.103970, 51.784542>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.153915, 35.418259, 52.084949> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.553410, 35.427628, 52.067169>,  <32.793106, 35.433250, 52.056503>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.553410, 35.427628, 52.067169>,  <32.153915, 35.418259, 52.084949>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.553410, 35.427628, 52.067169> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048341, -0.207043, 0.977137,
		0.013687, -0.978051, -0.207914,
		0.998737, 0.023425, -0.044446,
		32.853031, 35.434654, 52.053837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.298691, 34.898415, 52.439091>,  <32.153915, 35.418259, 52.084949>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.298691, 34.898415, 52.439091> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.652145, 35.085644, 52.435001>,  <32.864216, 35.197979, 52.432549>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.652145, 35.085644, 52.435001>,  <32.298691, 34.898415, 52.439091>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.652145, 35.085644, 52.435001> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065732, -0.102409, 0.992568,
		0.463544, -0.877738, -0.121259,
		0.883633, 0.468070, -0.010224,
		32.917236, 35.226063, 52.431934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.774529, 36.330967, 37.101315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.087872, 36.553616, 37.211964>,  <36.275879, 36.687206, 37.278355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.087872, 36.553616, 37.211964>,  <35.774529, 36.330967, 37.101315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.087872, 36.553616, 37.211964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226170, -0.159279, 0.960977,
		0.578960, -0.815355, 0.001118,
		0.783359, 0.556620, 0.276625,
		36.322880, 36.720600, 37.294952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.093880, 35.942654, 37.620430>,  <35.774529, 36.330967, 37.101315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.093880, 35.942654, 37.620430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.209553, 36.319584, 37.687843>,  <36.278957, 36.545742, 37.728291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.209553, 36.319584, 37.687843>,  <36.093880, 35.942654, 37.620430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.209553, 36.319584, 37.687843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269996, -0.088623, 0.958774,
		0.918410, -0.322764, 0.228796,
		0.289181, 0.942322, 0.168537,
		36.296307, 36.602280, 37.738403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.347126, 35.944839, 38.301880>,  <36.093880, 35.942654, 37.620430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.347126, 35.944839, 38.301880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.284050, 36.331146, 38.219490>,  <36.246204, 36.562931, 38.170055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.284050, 36.331146, 38.219490>,  <36.347126, 35.944839, 38.301880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.284050, 36.331146, 38.219490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345104, 0.141536, 0.927831,
		0.925223, 0.217391, 0.310972,
		-0.157688, 0.965768, -0.205975,
		36.236744, 36.620876, 38.157696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.624096, 36.304699, 38.834682>,  <36.347126, 35.944839, 38.301880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.624096, 36.304699, 38.834682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.362808, 36.562416, 38.675591>,  <36.206036, 36.717049, 38.580135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.362808, 36.562416, 38.675591>,  <36.624096, 36.304699, 38.834682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.362808, 36.562416, 38.675591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420084, 0.128639, 0.898322,
		0.629948, 0.753880, 0.186628,
		-0.653219, 0.644295, -0.397729,
		36.166843, 36.755703, 38.556271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.647682, 36.808453, 39.225067>,  <36.624096, 36.304699, 38.834682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.647682, 36.808453, 39.225067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.299076, 36.889053, 39.046246>,  <36.089912, 36.937412, 38.938953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.299076, 36.889053, 39.046246>,  <36.647682, 36.808453, 39.225067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.299076, 36.889053, 39.046246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361608, 0.351688, 0.863456,
		0.331212, 0.914173, -0.233636,
		-0.871515, 0.201503, -0.447056,
		36.037621, 36.949505, 38.912128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.430740, 37.347046, 39.535358>,  <36.647682, 36.808453, 39.225067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.430740, 37.347046, 39.535358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.085476, 37.228539, 39.371811>,  <35.878315, 37.157433, 39.273682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.085476, 37.228539, 39.371811>,  <36.430740, 37.347046, 39.535358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.085476, 37.228539, 39.371811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504038, 0.457609, 0.732488,
		-0.029910, 0.838343, -0.544322,
		-0.863163, -0.296268, -0.408870,
		35.826527, 37.139660, 39.249149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.877007, 37.935703, 39.413979>,  <36.430740, 37.347046, 39.535358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.877007, 37.935703, 39.413979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.663525, 37.597462, 39.409782>,  <35.535435, 37.394516, 39.407265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.663525, 37.597462, 39.409782>,  <35.877007, 37.935703, 39.413979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.663525, 37.597462, 39.409782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595861, 0.367222, 0.714211,
		-0.600088, 0.387430, -0.699852,
		-0.533708, -0.845604, -0.010489,
		35.503410, 37.343781, 39.406635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.295437, 38.227596, 39.253983>,  <35.877007, 37.935703, 39.413979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.295437, 38.227596, 39.253983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.247841, 37.860737, 39.406128>,  <35.219284, 37.640621, 39.497417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.247841, 37.860737, 39.406128>,  <35.295437, 38.227596, 39.253983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.247841, 37.860737, 39.406128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687362, 0.352541, 0.635019,
		-0.716502, -0.185887, -0.672363,
		-0.118994, -0.917148, 0.380368,
		35.212143, 37.585594, 39.520237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.672226, 38.334499, 39.548580>,  <35.295437, 38.227596, 39.253983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.672226, 38.334499, 39.548580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.764030, 37.972866, 39.692783>,  <34.819115, 37.755886, 39.779305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.764030, 37.972866, 39.692783>,  <34.672226, 38.334499, 39.548580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.764030, 37.972866, 39.692783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531122, 0.194049, 0.824775,
		-0.815618, -0.380771, -0.435639,
		0.229515, -0.904079, 0.360505,
		34.832886, 37.701641, 39.800934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.003830, 37.968311, 39.744137>,  <34.672226, 38.334499, 39.548580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.003830, 37.968311, 39.744137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.279419, 37.799614, 39.979912>,  <34.444775, 37.698395, 40.121376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.279419, 37.799614, 39.979912>,  <34.003830, 37.968311, 39.744137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.279419, 37.799614, 39.979912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582724, 0.161266, 0.796509,
		-0.430982, -0.892257, -0.134653,
		0.688976, -0.421747, 0.589442,
		34.486111, 37.673092, 40.156746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.657871, 37.429535, 40.123932>,  <34.003830, 37.968311, 39.744137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.657871, 37.429535, 40.123932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.987919, 37.517654, 40.332027>,  <34.185947, 37.570526, 40.456886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.987919, 37.517654, 40.332027>,  <33.657871, 37.429535, 40.123932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.987919, 37.517654, 40.332027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554907, 0.143084, 0.819515,
		0.106094, -0.964883, 0.240303,
		0.825119, 0.220292, 0.520240,
		34.235455, 37.583744, 40.488098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.757401, 36.940628, 40.734394>,  <33.657871, 37.429535, 40.123932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.757401, 36.940628, 40.734394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.952591, 37.278793, 40.821259>,  <34.069706, 37.481693, 40.873379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.952591, 37.278793, 40.821259>,  <33.757401, 36.940628, 40.734394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.952591, 37.278793, 40.821259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402128, -0.003078, 0.915578,
		0.774708, -0.534107, 0.338462,
		0.487975, 0.845411, 0.217164,
		34.098984, 37.532417, 40.886406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.157703, 36.592930, 40.424614>,  <33.757401, 36.940628, 40.734394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.157703, 36.592930, 40.424614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.355312, 36.298077, 40.609039>,  <33.473877, 36.121166, 40.719696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.355312, 36.298077, 40.609039>,  <33.157703, 36.592930, 40.424614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.355312, 36.298077, 40.609039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071124, -0.494252, -0.866404,
		0.866535, 0.460816, -0.191745,
		0.494023, -0.737132, 0.461062,
		33.503521, 36.076939, 40.747356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.799500, 36.408123, 40.108353>,  <33.157703, 36.592930, 40.424614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.799500, 36.408123, 40.108353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.628815, 36.082142, 40.265205>,  <33.526402, 35.886555, 40.359318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.628815, 36.082142, 40.265205>,  <33.799500, 36.408123, 40.108353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.628815, 36.082142, 40.265205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085772, -0.468102, -0.879502,
		0.900310, -0.341662, 0.269646,
		-0.426715, -0.814952, 0.392132,
		33.500801, 35.837658, 40.382847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.218098, 35.758457, 39.945328>,  <33.799500, 36.408123, 40.108353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.218098, 35.758457, 39.945328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.849274, 35.621326, 40.017181>,  <33.627979, 35.539047, 40.060295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.849274, 35.621326, 40.017181>,  <34.218098, 35.758457, 39.945328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.849274, 35.621326, 40.017181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042797, -0.551601, -0.833009,
		0.384664, -0.760400, 0.523283,
		-0.922064, -0.342824, 0.179639,
		33.572655, 35.518478, 40.071072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.252895, 35.211590, 39.645226>,  <34.218098, 35.758457, 39.945328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.252895, 35.211590, 39.645226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.862125, 35.226028, 39.729439>,  <33.627663, 35.234692, 39.779964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.862125, 35.226028, 39.729439>,  <34.252895, 35.211590, 39.645226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.862125, 35.226028, 39.729439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195500, -0.548211, -0.813169,
		0.086059, -0.835560, 0.542616,
		-0.976920, 0.036101, 0.210530,
		33.569050, 35.236858, 39.792599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.067856, 34.529438, 39.837513>,  <34.252895, 35.211590, 39.645226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.067856, 34.529438, 39.837513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.752308, 34.724312, 39.687668>,  <33.562977, 34.841236, 39.597763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.752308, 34.724312, 39.687668>,  <34.067856, 34.529438, 39.837513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.752308, 34.724312, 39.687668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138622, -0.734915, -0.663840,
		-0.598716, -0.471757, 0.647290,
		-0.788875, 0.487180, -0.374609,
		33.515644, 34.870464, 39.575283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.595055, 34.015438, 39.760792>,  <34.067856, 34.529438, 39.837513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.595055, 34.015438, 39.760792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.437706, 34.311234, 39.542282>,  <33.343296, 34.488712, 39.411175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.437706, 34.311234, 39.542282>,  <33.595055, 34.015438, 39.760792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.437706, 34.311234, 39.542282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411726, -0.672960, -0.614496,
		-0.822036, -0.016807, 0.569188,
		-0.393369, 0.739488, -0.546277,
		33.319695, 34.533081, 39.378399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.908638, 33.714279, 39.619102>,  <33.595055, 34.015438, 39.760792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.908638, 33.714279, 39.619102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.989605, 34.009209, 39.361301>,  <33.038185, 34.186165, 39.206619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.989605, 34.009209, 39.361301>,  <32.908638, 33.714279, 39.619102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.989605, 34.009209, 39.361301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406476, -0.535500, -0.740282,
		-0.890956, 0.411824, 0.191306,
		0.202422, 0.737320, -0.644503,
		33.050331, 34.230404, 39.167950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.323410, 33.917431, 39.294147>,  <32.908638, 33.714279, 39.619102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.323410, 33.917431, 39.294147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.623177, 34.001041, 39.042850>,  <32.803036, 34.051208, 38.892071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.623177, 34.001041, 39.042850>,  <32.323410, 33.917431, 39.294147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.623177, 34.001041, 39.042850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475504, -0.490366, -0.730368,
		-0.460734, 0.846079, -0.268095,
		0.749413, 0.209025, -0.628242,
		32.848000, 34.063747, 38.854378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.027454, 34.160141, 38.630810>,  <32.323410, 33.917431, 39.294147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.027454, 34.160141, 38.630810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.395947, 34.049549, 38.521339>,  <32.617043, 33.983196, 38.455658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.395947, 34.049549, 38.521339>,  <32.027454, 34.160141, 38.630810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.395947, 34.049549, 38.521339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382877, -0.519862, -0.763642,
		0.068855, 0.808273, -0.584768,
		0.921230, -0.276475, -0.273674,
		32.672314, 33.966606, 38.439236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.040890, 34.029644, 37.905853>,  <32.027454, 34.160141, 38.630810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.040890, 34.029644, 37.905853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.381603, 33.847496, 38.009472>,  <32.586033, 33.738209, 38.071644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.381603, 33.847496, 38.009472>,  <32.040890, 34.029644, 37.905853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.381603, 33.847496, 38.009472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036451, -0.544781, -0.837786,
		0.522622, 0.704171, -0.480635,
		0.851785, -0.455365, 0.259047,
		32.637138, 33.710888, 38.087185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.524353, 34.058479, 37.278332>,  <32.040890, 34.029644, 37.905853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.524353, 34.058479, 37.278332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.640682, 33.768845, 37.528492>,  <32.710480, 33.595062, 37.678589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.640682, 33.768845, 37.528492>,  <32.524353, 34.058479, 37.278332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.640682, 33.768845, 37.528492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141523, -0.613905, -0.776590,
		0.946253, 0.314357, -0.076062,
		0.290821, -0.724086, 0.625398,
		32.727928, 33.551620, 37.716110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.024853, 33.651695, 36.911839>,  <32.524353, 34.058479, 37.278332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.024853, 33.651695, 36.911839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.940247, 33.395435, 37.207088>,  <32.889481, 33.241680, 37.384239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.940247, 33.395435, 37.207088>,  <33.024853, 33.651695, 36.911839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.940247, 33.395435, 37.207088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029981, -0.759108, -0.650274,
		0.976914, -0.115414, 0.179772,
		-0.211517, -0.640652, 0.738123,
		32.876793, 33.203239, 37.428524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.466908, 33.022266, 36.870689>,  <33.024853, 33.651695, 36.911839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.466908, 33.022266, 36.870689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.132774, 32.916885, 37.063690>,  <32.932293, 32.853657, 37.179489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.132774, 32.916885, 37.063690>,  <33.466908, 33.022266, 36.870689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.132774, 32.916885, 37.063690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115307, -0.774201, -0.622348,
		0.537512, -0.575505, 0.616340,
		-0.835335, -0.263451, 0.482502,
		32.882175, 32.837849, 37.208443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.411999, 32.344707, 36.665096>,  <33.466908, 33.022266, 36.870689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.411999, 32.344707, 36.665096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.040577, 32.433739, 36.783924>,  <32.817722, 32.487156, 36.855221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.040577, 32.433739, 36.783924>,  <33.411999, 32.344707, 36.665096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.040577, 32.433739, 36.783924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362916, -0.712471, -0.600565,
		0.077979, -0.665466, 0.742344,
		-0.928553, 0.222577, 0.297066,
		32.762012, 32.500511, 36.873043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.018265, 31.733398, 36.813354>,  <33.411999, 32.344707, 36.665096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.018265, 31.733398, 36.813354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.757969, 32.022293, 36.719616>,  <32.601791, 32.195629, 36.663372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.757969, 32.022293, 36.719616>,  <33.018265, 31.733398, 36.813354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.757969, 32.022293, 36.719616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397781, -0.587154, -0.704997,
		-0.646773, -0.365546, 0.669373,
		-0.650734, 0.722237, -0.234348,
		32.562748, 32.238964, 36.649311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.768436, 31.250376, 37.363125>,  <33.018265, 31.733398, 36.813354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.768436, 31.250376, 37.363125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.884041, 30.891190, 37.495865>,  <32.953403, 30.675678, 37.575508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.884041, 30.891190, 37.495865>,  <32.768436, 31.250376, 37.363125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.884041, 30.891190, 37.495865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533017, -0.137007, -0.834938,
		0.795212, 0.418194, 0.439034,
		0.289016, -0.897966, 0.331854,
		32.970745, 30.621799, 37.595421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.461418, 31.178749, 37.104584>,  <32.768436, 31.250376, 37.363125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.461418, 31.178749, 37.104584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.334465, 30.814579, 37.210709>,  <33.258293, 30.596077, 37.274384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.334465, 30.814579, 37.210709>,  <33.461418, 31.178749, 37.104584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.334465, 30.814579, 37.210709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495701, -0.397793, -0.772037,
		0.808423, -0.113515, 0.577552,
		-0.317384, -0.910426, 0.265316,
		33.239250, 30.541451, 37.290302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.054451, 30.983999, 37.604366>,  <33.461418, 31.178749, 37.104584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.054451, 30.983999, 37.604366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.255787, 31.324863, 37.661602>,  <34.376587, 31.529383, 37.695942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.255787, 31.324863, 37.661602>,  <34.054451, 30.983999, 37.604366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.255787, 31.324863, 37.661602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053625, -0.134467, 0.989466,
		0.862424, -0.505709, -0.021986,
		0.503338, 0.852160, 0.143086,
		34.406788, 31.580511, 37.704529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.618484, 30.777355, 37.967133>,  <34.054451, 30.983999, 37.604366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.618484, 30.777355, 37.967133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.579132, 31.169436, 38.035870>,  <34.555523, 31.404684, 38.077114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.579132, 31.169436, 38.035870>,  <34.618484, 30.777355, 37.967133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.579132, 31.169436, 38.035870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188095, -0.151257, 0.970434,
		0.977211, 0.127792, -0.169491,
		-0.098377, 0.980199, 0.171847,
		34.549618, 31.463495, 38.087425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.211391, 30.918877, 38.340149>,  <34.618484, 30.777355, 37.967133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.211391, 30.918877, 38.340149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.927547, 31.190451, 38.415524>,  <34.757240, 31.353395, 38.460747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.927547, 31.190451, 38.415524>,  <35.211391, 30.918877, 38.340149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.927547, 31.190451, 38.415524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132469, -0.134112, 0.982072,
		0.692033, 0.721846, 0.005229,
		-0.709607, 0.678934, 0.188432,
		34.714664, 31.394131, 38.472054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.520325, 31.403730, 38.876694>,  <35.211391, 30.918877, 38.340149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.520325, 31.403730, 38.876694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.124283, 31.459227, 38.885124>,  <34.886658, 31.492525, 38.890182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.124283, 31.459227, 38.885124>,  <35.520325, 31.403730, 38.876694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.124283, 31.459227, 38.885124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013016, -0.058744, 0.998188,
		0.139729, 0.988585, 0.056357,
		-0.990104, 0.138742, 0.021076,
		34.827251, 31.500849, 38.891445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.446568, 31.805307, 39.439835>,  <35.520325, 31.403730, 38.876694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.446568, 31.805307, 39.439835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.070438, 31.675144, 39.400036>,  <34.844761, 31.597046, 39.376156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.070438, 31.675144, 39.400036>,  <35.446568, 31.805307, 39.439835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.070438, 31.675144, 39.400036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105292, 0.000199, 0.994441,
		-0.323580, 0.945573, -0.034450,
		-0.940324, -0.325409, -0.099497,
		34.788342, 31.577522, 39.370186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.031471, 32.148827, 39.999111>,  <35.446568, 31.805307, 39.439835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.031471, 32.148827, 39.999111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.791782, 31.851990, 39.878956>,  <34.647968, 31.673887, 39.806862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.791782, 31.851990, 39.878956>,  <35.031471, 32.148827, 39.999111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.791782, 31.851990, 39.878956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206786, -0.219008, 0.953559,
		-0.773417, 0.633508, -0.022220,
		-0.599221, -0.742094, -0.300385,
		34.612015, 31.629362, 39.788841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.311569, 32.180653, 40.456951>,  <35.031471, 32.148827, 39.999111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.311569, 32.180653, 40.456951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.362228, 31.802294, 40.337460>,  <34.392624, 31.575279, 40.265762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.362228, 31.802294, 40.337460>,  <34.311569, 32.180653, 40.456951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.362228, 31.802294, 40.337460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108496, -0.312561, 0.943681,
		-0.985996, -0.087103, -0.142211,
		0.126647, -0.945896, -0.298733,
		34.400223, 31.518524, 40.247841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.811729, 31.796118, 40.763290>,  <34.311569, 32.180653, 40.456951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.811729, 31.796118, 40.763290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.103477, 31.539173, 40.669155>,  <34.278526, 31.385006, 40.612675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.103477, 31.539173, 40.669155>,  <33.811729, 31.796118, 40.763290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.103477, 31.539173, 40.669155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087927, -0.253123, 0.963430,
		-0.678440, -0.723394, -0.128140,
		0.729375, -0.642363, -0.235335,
		34.322289, 31.346464, 40.598557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.694572, 31.083469, 41.140907>,  <33.811729, 31.796118, 40.763290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.694572, 31.083469, 41.140907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.081703, 31.137026, 41.055691>,  <34.313980, 31.169161, 41.004562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.081703, 31.137026, 41.055691>,  <33.694572, 31.083469, 41.140907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.081703, 31.137026, 41.055691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230038, -0.127741, 0.964762,
		0.101962, -0.982728, -0.154432,
		0.967826, 0.133894, -0.213040,
		34.372051, 31.177195, 40.991779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.029652, 30.565453, 41.493568>,  <33.694572, 31.083469, 41.140907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.029652, 30.565453, 41.493568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.298714, 30.853703, 41.426346>,  <34.460152, 31.026651, 41.386013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.298714, 30.853703, 41.426346>,  <34.029652, 30.565453, 41.493568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.298714, 30.853703, 41.426346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350112, -0.109868, 0.930242,
		0.651890, -0.684566, -0.326201,
		0.672652, 0.720623, -0.168053,
		34.500511, 31.069889, 41.375931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.421413, 30.214745, 41.860218>,  <34.029652, 30.565453, 41.493568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.421413, 30.214745, 41.860218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.610729, 30.565470, 41.826279>,  <34.724319, 30.775906, 41.805916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.610729, 30.565470, 41.826279>,  <34.421413, 30.214745, 41.860218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.610729, 30.565470, 41.826279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495598, -0.185405, 0.848533,
		0.728274, -0.443649, -0.522296,
		0.473287, 0.876813, -0.084846,
		34.752716, 30.828514, 41.800823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.018883, 30.278376, 42.230377>,  <34.421413, 30.214745, 41.860218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.018883, 30.278376, 42.230377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.982224, 30.674990, 42.193581>,  <34.960228, 30.912958, 42.171505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.982224, 30.674990, 42.193581>,  <35.018883, 30.278376, 42.230377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.982224, 30.674990, 42.193581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513990, 0.126222, 0.848458,
		0.852886, 0.030479, -0.521207,
		-0.091648, 0.991534, -0.091988,
		34.954731, 30.972450, 42.165985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.730297, 30.455721, 42.452595>,  <35.018883, 30.278376, 42.230377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.730297, 30.455721, 42.452595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.484489, 30.770330, 42.477085>,  <35.337006, 30.959095, 42.491779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.484489, 30.770330, 42.477085>,  <35.730297, 30.455721, 42.452595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.484489, 30.770330, 42.477085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251490, 0.121754, 0.960171,
		0.747741, 0.605442, -0.272623,
		-0.614521, 0.786522, 0.061222,
		35.300133, 31.006287, 42.495453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.154308, 30.990570, 42.682587>,  <35.730297, 30.455721, 42.452595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.154308, 30.990570, 42.682587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.773743, 31.079556, 42.767735>,  <35.545403, 31.132948, 42.818821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.773743, 31.079556, 42.767735>,  <36.154308, 30.990570, 42.682587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.773743, 31.079556, 42.767735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244398, 0.125141, 0.961566,
		0.187277, 0.966876, -0.173431,
		-0.951418, 0.222465, 0.212866,
		35.488316, 31.146296, 42.831593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.280518, 31.539116, 43.152767>,  <36.154308, 30.990570, 42.682587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.280518, 31.539116, 43.152767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.897125, 31.439272, 43.207928>,  <35.667091, 31.379366, 43.241024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.897125, 31.439272, 43.207928>,  <36.280518, 31.539116, 43.152767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.897125, 31.439272, 43.207928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095209, 0.175730, 0.979824,
		-0.268808, 0.952267, -0.144668,
		-0.958477, -0.249611, 0.137902,
		35.609581, 31.364389, 43.249298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.949196, 32.084076, 43.470627>,  <36.280518, 31.539116, 43.152767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.949196, 32.084076, 43.470627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.708008, 31.783085, 43.576618>,  <35.563297, 31.602491, 43.640213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.708008, 31.783085, 43.576618>,  <35.949196, 32.084076, 43.470627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.708008, 31.783085, 43.576618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024269, 0.314697, 0.948882,
		-0.797397, 0.578575, -0.171489,
		-0.602966, -0.752474, 0.264980,
		35.527119, 31.557343, 43.656113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.516323, 32.346531, 43.931839>,  <35.949196, 32.084076, 43.470627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.516323, 32.346531, 43.931839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.515991, 31.955828, 44.017586>,  <35.515793, 31.721407, 44.069035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.515991, 31.955828, 44.017586>,  <35.516323, 32.346531, 43.931839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.515991, 31.955828, 44.017586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030250, 0.214243, 0.976312,
		-0.999542, 0.007291, 0.029370,
		-0.000826, -0.976753, 0.214365,
		35.515743, 31.662802, 44.081894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.172775, 32.301838, 44.536854>,  <35.516323, 32.346531, 43.931839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.172775, 32.301838, 44.536854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.372601, 31.955338, 44.539658>,  <35.492496, 31.747437, 44.541340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.372601, 31.955338, 44.539658>,  <35.172775, 32.301838, 44.536854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.372601, 31.955338, 44.539658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131661, 0.083919, 0.987736,
		-0.856215, -0.492511, 0.155974,
		0.499560, -0.866250, 0.007008,
		35.522469, 31.695463, 44.541759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.959740, 31.945232, 45.057968>,  <35.172775, 32.301838, 44.536854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.959740, 31.945232, 45.057968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.303017, 31.753683, 44.984001>,  <35.508984, 31.638754, 44.939621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.303017, 31.753683, 44.984001>,  <34.959740, 31.945232, 45.057968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.303017, 31.753683, 44.984001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101880, -0.194167, 0.975664,
		-0.503124, -0.856142, -0.117845,
		0.858188, -0.478873, -0.184914,
		35.560474, 31.610022, 44.928528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.945286, 31.343931, 45.453117>,  <34.959740, 31.945232, 45.057968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.945286, 31.343931, 45.453117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.334778, 31.353107, 45.362499>,  <35.568474, 31.358614, 45.308128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.334778, 31.353107, 45.362499>,  <34.945286, 31.343931, 45.453117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.334778, 31.353107, 45.362499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227695, -0.106125, 0.967932,
		-0.001836, -0.994088, -0.108561,
		0.973731, 0.022941, -0.226544,
		35.626896, 31.359989, 45.294537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.212852, 30.784575, 45.856873>,  <34.945286, 31.343931, 45.453117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.212852, 30.784575, 45.856873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.512543, 31.029062, 45.754829>,  <35.692356, 31.175755, 45.693604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.512543, 31.029062, 45.754829>,  <35.212852, 30.784575, 45.856873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.512543, 31.029062, 45.754829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274905, 0.063442, 0.959376,
		0.602572, -0.788916, -0.120495,
		0.749222, 0.611218, -0.255105,
		35.737309, 31.212427, 45.678299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.780926, 30.546806, 46.234966>,  <35.212852, 30.784575, 45.856873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.780926, 30.546806, 46.234966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.903145, 30.913866, 46.133331>,  <35.976475, 31.134102, 46.072350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.903145, 30.913866, 46.133331>,  <35.780926, 30.546806, 46.234966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.903145, 30.913866, 46.133331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427007, 0.106460, 0.897960,
		0.851061, -0.382868, -0.359313,
		0.305548, 0.917648, -0.254091,
		35.994808, 31.189161, 46.057102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.437370, 30.572411, 46.264835>,  <35.780926, 30.546806, 46.234966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.437370, 30.572411, 46.264835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.350090, 30.961407, 46.297447>,  <36.297722, 31.194805, 46.317017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.350090, 30.961407, 46.297447>,  <36.437370, 30.572411, 46.264835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.350090, 30.961407, 46.297447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599616, 0.067681, 0.797421,
		0.769967, 0.222887, -0.597890,
		-0.218201, 0.972492, 0.081534,
		36.284630, 31.253155, 46.321907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.132381, 30.918823, 46.474178>,  <36.437370, 30.572411, 46.264835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.132381, 30.918823, 46.474178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.819221, 31.154625, 46.553726>,  <36.631325, 31.296106, 46.601456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.819221, 31.154625, 46.553726>,  <37.132381, 30.918823, 46.474178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.819221, 31.154625, 46.553726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244438, -0.002478, 0.969662,
		0.572111, 0.807762, -0.142157,
		-0.782904, 0.589503, 0.198865,
		36.584351, 31.331476, 46.613384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.456848, 31.464476, 46.966423>,  <37.132381, 30.918823, 46.474178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.456848, 31.464476, 46.966423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.063541, 31.471096, 47.038998>,  <36.827557, 31.475069, 47.082542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.063541, 31.471096, 47.038998>,  <37.456848, 31.464476, 46.966423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.063541, 31.471096, 47.038998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181586, 0.170204, 0.968534,
		-0.014849, 0.985270, -0.170361,
		-0.983263, 0.016553, 0.181438,
		36.768562, 31.476063, 47.093430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.454918, 32.248180, 47.235600>,  <37.456848, 31.464476, 46.966423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.454918, 32.248180, 47.235600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.754128, 32.513641, 47.237534>,  <37.933651, 32.672920, 47.238693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.754128, 32.513641, 47.237534>,  <37.454918, 32.248180, 47.235600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.754128, 32.513641, 47.237534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006740, 0.014882, -0.999867,
		-0.663640, 0.747889, 0.015605,
		0.748022, 0.663657, 0.004835,
		37.978535, 32.712738, 47.238983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.266903, 32.787083, 46.702457>,  <37.454918, 32.248180, 47.235600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.266903, 32.787083, 46.702457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.661304, 32.839676, 46.743469>,  <37.897945, 32.871231, 46.768078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.661304, 32.839676, 46.743469>,  <37.266903, 32.787083, 46.702457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.661304, 32.839676, 46.743469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111729, -0.064592, -0.991637,
		-0.123760, 0.989212, -0.078378,
		0.986002, 0.131482, 0.102529,
		37.957104, 32.879120, 46.774227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.402081, 33.155487, 46.198772>,  <37.266903, 32.787083, 46.702457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.402081, 33.155487, 46.198772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.765770, 33.012028, 46.283325>,  <37.983982, 32.925953, 46.334057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.765770, 33.012028, 46.283325>,  <37.402081, 33.155487, 46.198772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.765770, 33.012028, 46.283325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129193, -0.239608, -0.962236,
		0.395751, 0.902198, -0.171523,
		0.909225, -0.358646, 0.211383,
		38.038536, 32.904434, 46.346741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.795296, 33.442501, 45.663292>,  <37.402081, 33.155487, 46.198772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.795296, 33.442501, 45.663292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.014511, 33.128849, 45.779766>,  <38.146042, 32.940659, 45.849651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.014511, 33.128849, 45.779766>,  <37.795296, 33.442501, 45.663292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.014511, 33.128849, 45.779766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195857, -0.218149, -0.956060,
		0.813201, 0.580988, 0.034024,
		0.548037, -0.784132, 0.291190,
		38.178921, 32.893608, 45.867123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.400768, 33.554947, 45.379845>,  <37.795296, 33.442501, 45.663292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.400768, 33.554947, 45.379845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.435936, 33.165119, 45.462299>,  <38.457035, 32.931225, 45.511772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.435936, 33.165119, 45.462299>,  <38.400768, 33.554947, 45.379845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.435936, 33.165119, 45.462299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322905, -0.167879, -0.931423,
		0.942339, 0.148448, 0.299933,
		0.087916, -0.974567, 0.206133,
		38.462311, 32.872749, 45.524139>
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
